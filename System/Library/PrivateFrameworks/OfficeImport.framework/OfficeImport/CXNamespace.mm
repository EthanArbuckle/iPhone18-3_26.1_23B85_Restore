@interface CXNamespace
+ (BOOL)isNamespaceSupported:(const char *)supported;
+ (BOOL)isPrefixSupportedFromNodeContext:(_xmlNode *)context prefix:(const char *)prefix;
+ (BOOL)isPrefixSupportedFromStream:(_xmlTextReader *)stream prefix:(const char *)prefix;
+ (void)clearRegisteredNamespaces;
+ (void)registerNamespace:(id)namespace;
- (BOOL)containsAttribute:(_xmlAttr *)attribute;
- (BOOL)containsNode:(_xmlNode *)node;
- (CXNamespace)init;
- (CXNamespace)initWithUri:(const char *)uri;
- (CXNamespace)initWithUri:(const char *)uri fallbackNamespace:(id)namespace;
- (id)initUnsupportedNsWithUri:(const char *)uri;
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

- (CXNamespace)initWithUri:(const char *)uri
{
  v3 = [(CXNamespace *)self initUnsupportedNsWithUri:uri];
  if (v3)
  {
    [CXNamespace registerNamespace:v3];
  }

  return v3;
}

- (CXNamespace)initWithUri:(const char *)uri fallbackNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v8 = [(CXNamespace *)self initWithUri:uri];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mFallbackNamespace, namespace);
  }

  return v9;
}

- (id)initUnsupportedNsWithUri:(const char *)uri
{
  v5.receiver = self;
  v5.super_class = CXNamespace;
  result = [(CXNamespace *)&v5 init];
  if (result)
  {
    *(result + 1) = uri;
  }

  return result;
}

- (BOOL)containsNode:(_xmlNode *)node
{
  doc = node->doc;
  if (doc != self->mDocument)
  {
    self->mDocument = doc;
    RootElement = xmlDocGetRootElement(doc);
    self->mDocumentNamespace = xmlSearchNsByHref(doc, RootElement, self->mUri);
  }

  ns = node->ns;
  if (ns && (ns == self->mDocumentNamespace || xmlStrEqual(ns->href, self->mUri)))
  {
    return 1;
  }

  mFallbackNamespace = self->mFallbackNamespace;

  return [(CXNamespace *)mFallbackNamespace containsNode:node];
}

- (BOOL)containsAttribute:(_xmlAttr *)attribute
{
  doc = attribute->doc;
  if (doc != self->mDocument)
  {
    self->mDocument = doc;
    RootElement = xmlDocGetRootElement(doc);
    self->mDocumentNamespace = xmlSearchNsByHref(doc, RootElement, self->mUri);
  }

  ns = attribute->ns;
  if (ns && (ns == self->mDocumentNamespace || xmlStrEqual(ns->href, self->mUri)))
  {
    return 1;
  }

  mFallbackNamespace = self->mFallbackNamespace;

  return [(CXNamespace *)mFallbackNamespace containsAttribute:attribute];
}

+ (BOOL)isNamespaceSupported:(const char *)supported
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithXmlString:supported];
  v4 = pSupportedNamespaces;
  objc_sync_enter(v4);
  v5 = [pSupportedNamespaces containsObject:v3];
  objc_sync_exit(v4);

  return v5;
}

+ (BOOL)isPrefixSupportedFromNodeContext:(_xmlNode *)context prefix:(const char *)prefix
{
  NsList = xmlGetNsList(context->doc, context);
  if (!NsList)
  {
    return 0;
  }

  v7 = NsList;
  v8 = *NsList;
  if (*NsList)
  {
    v9 = 1;
    while (!xmlStrEqual(v8->prefix, prefix))
    {
      v8 = v7[v9++];
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v10 = [self isNamespaceSupported:v8->href];
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  free(v7);
  return v10;
}

+ (BOOL)isPrefixSupportedFromStream:(_xmlTextReader *)stream prefix:(const char *)prefix
{
  v5 = xmlTextReaderLookupNamespace(stream, prefix);
  if (v5)
  {

    LOBYTE(v5) = [self isNamespaceSupported:v5];
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

+ (void)registerNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v3 = pSupportedNamespaces;
  objc_sync_enter(v3);
  if (!pSupportedNamespaces)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    v5 = pSupportedNamespaces;
    pSupportedNamespaces = v4;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithXmlString:{objc_msgSend(namespaceCopy, "uri")}];
  if (v6 && ([pSupportedNamespaces containsObject:v6] & 1) == 0)
  {
    [pSupportedNamespaces addObject:v6];
  }

  objc_sync_exit(v3);
}

@end