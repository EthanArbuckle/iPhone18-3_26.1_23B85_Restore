@interface CXNamespace
+ (BOOL)isNamespaceSupported:(const char *)a3;
+ (BOOL)isPrefixSupportedFromNodeContext:(_xmlNode *)a3 prefix:(const char *)a4;
+ (BOOL)isPrefixSupportedFromStream:(_xmlTextReader *)a3 prefix:(const char *)a4;
+ (void)clearRegisteredNamespaces;
+ (void)registerNamespace:(id)a3;
- (BOOL)containsAttribute:(_xmlAttr *)a3;
- (BOOL)containsNode:(_xmlNode *)a3;
- (CXNamespace)init;
- (CXNamespace)initWithUri:(const char *)a3;
- (CXNamespace)initWithUri:(const char *)a3 fallbackNamespace:(id)a4;
- (id)initUnsupportedNsWithUri:(const char *)a3;
@end

@implementation CXNamespace

- (CXNamespace)init
{
  v6.receiver = self;
  v6.super_class = CXNamespace;
  v2 = [(CXNamespace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mFallbackNamespace = v2->mFallbackNamespace;
    v2->mFallbackNamespace = 0;
  }

  return v3;
}

- (CXNamespace)initWithUri:(const char *)a3
{
  v3 = [(CXNamespace *)self initUnsupportedNsWithUri:a3];
  if (v3)
  {
    [CXNamespace registerNamespace:v3];
  }

  return v3;
}

- (CXNamespace)initWithUri:(const char *)a3 fallbackNamespace:(id)a4
{
  v7 = a4;
  v8 = [(CXNamespace *)self initWithUri:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mFallbackNamespace, a4);
  }

  return v9;
}

- (id)initUnsupportedNsWithUri:(const char *)a3
{
  v5.receiver = self;
  v5.super_class = CXNamespace;
  result = [(CXNamespace *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (BOOL)containsNode:(_xmlNode *)a3
{
  doc = a3->doc;
  if (doc != self->mDocument)
  {
    self->mDocument = doc;
    RootElement = xmlDocGetRootElement(doc);
    self->mDocumentNamespace = xmlSearchNsByHref(doc, RootElement, self->mUri);
  }

  ns = a3->ns;
  if (ns && (ns == self->mDocumentNamespace || xmlStrEqual(ns->href, self->mUri)))
  {
    return 1;
  }

  mFallbackNamespace = self->mFallbackNamespace;

  return [(CXNamespace *)mFallbackNamespace containsNode:a3];
}

- (BOOL)containsAttribute:(_xmlAttr *)a3
{
  doc = a3->doc;
  if (doc != self->mDocument)
  {
    self->mDocument = doc;
    RootElement = xmlDocGetRootElement(doc);
    self->mDocumentNamespace = xmlSearchNsByHref(doc, RootElement, self->mUri);
  }

  ns = a3->ns;
  if (ns && (ns == self->mDocumentNamespace || xmlStrEqual(ns->href, self->mUri)))
  {
    return 1;
  }

  mFallbackNamespace = self->mFallbackNamespace;

  return [(CXNamespace *)mFallbackNamespace containsAttribute:a3];
}

+ (BOOL)isNamespaceSupported:(const char *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithXmlString:a3];
  v4 = pSupportedNamespaces;
  objc_sync_enter(v4);
  v5 = [pSupportedNamespaces containsObject:v3];
  objc_sync_exit(v4);

  return v5;
}

+ (BOOL)isPrefixSupportedFromNodeContext:(_xmlNode *)a3 prefix:(const char *)a4
{
  NsList = xmlGetNsList(a3->doc, a3);
  if (!NsList)
  {
    return 0;
  }

  v7 = NsList;
  v8 = *NsList;
  if (*NsList)
  {
    v9 = 1;
    while (!xmlStrEqual(v8->prefix, a4))
    {
      v8 = v7[v9++];
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v10 = [a1 isNamespaceSupported:v8->href];
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  free(v7);
  return v10;
}

+ (BOOL)isPrefixSupportedFromStream:(_xmlTextReader *)a3 prefix:(const char *)a4
{
  v5 = xmlTextReaderLookupNamespace(a3, a4);
  if (v5)
  {

    LOBYTE(v5) = [a1 isNamespaceSupported:v5];
  }

  return v5;
}

+ (void)clearRegisteredNamespaces
{
  obj = pSupportedNamespaces;
  objc_sync_enter(obj);
  v2 = pSupportedNamespaces;
  pSupportedNamespaces = 0;

  objc_sync_exit(obj);
}

+ (void)registerNamespace:(id)a3
{
  v7 = a3;
  v3 = pSupportedNamespaces;
  objc_sync_enter(v3);
  if (!pSupportedNamespaces)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    v5 = pSupportedNamespaces;
    pSupportedNamespaces = v4;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithXmlString:{objc_msgSend(v7, "uri")}];
  if (v6 && ([pSupportedNamespaces containsObject:v6] & 1) == 0)
  {
    [pSupportedNamespaces addObject:v6];
  }

  objc_sync_exit(v3);
}

@end