@interface TCXmlStreamWriter
+ (BOOL)startElementInStream:(_xmlTextWriter *)stream name:(id)name prefix:(id)prefix ns:(const char *)ns;
+ (BOOL)startPlainElementInStream:(_xmlTextWriter *)stream name:(id)name;
+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)stream name:(id)name;
+ (BOOL)writeAttributeToStream:(_xmlTextWriter *)stream name:(id)name content:(id)content prefix:(id)prefix ns:(const char *)ns;
+ (BOOL)writeDtdToStream:(_xmlTextWriter *)stream name:(id)name pubid:(id)pubid sysid:(id)sysid subset:(id)subset;
+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)stream prefix:(id)prefix uri:(const char *)uri;
+ (BOOL)writePlainAttributeToStream:(_xmlTextWriter *)stream name:(id)name content:(id)content;
+ (BOOL)writeStringToStream:(_xmlTextWriter *)stream text:(id)text;
+ (id)newXmlStreamWriterWithZipEntryName:(id)name outputStream:(id)stream isCompressed:(BOOL)compressed;
- (BOOL)endElement;
- (BOOL)endElementsToDepth:(unsigned int)depth;
- (BOOL)setUp;
- (BOOL)startElement:(id)element prefix:(id)prefix ns:(const char *)ns;
- (BOOL)tearDown;
- (BOOL)writeAnchorTarget:(id)target;
- (BOOL)writeAttribute:(id)attribute BOOLContent:(BOOL)content prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeAttribute:(id)attribute content:(id)content prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeAttribute:(id)attribute doubleContent:(double)content prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeAttribute:(id)attribute enumContent:(int)content map:(id)map prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeAttribute:(id)attribute intContent:(int64_t)content prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeDtd:(id)dtd pubid:(id)pubid sysid:(id)sysid subset:(id)subset;
- (BOOL)writeElementId:(id)id;
- (BOOL)writeNamespace:(id)namespace uri:(const char *)uri;
- (BOOL)writeString:(id)string;
- (TCXmlStreamWriter)initWithTextWriterProvider:(id)provider;
- (void)dealloc;
@end

@implementation TCXmlStreamWriter

- (TCXmlStreamWriter)initWithTextWriterProvider:(id)provider
{
  providerCopy = provider;
  v6 = [(TCXmlStreamWriter *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTextWriterProvider, provider);
    v7->mCurrentDepth = 0;
    v7->mContentAddedToTopElement = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mAddedIds = v7->mAddedIds;
    v7->mAddedIds = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(TCXmlStreamWriter *)self tearDown];
  v3.receiver = self;
  v3.super_class = TCXmlStreamWriter;
  [(TCXmlStreamWriter *)&v3 dealloc];
}

- (BOOL)setUp
{
  if ([(TCXmlStreamWriter *)self isWriting])
  {
    return 1;
  }

  textWriterProvider = [(TCXmlStreamWriter *)self textWriterProvider];
  setUp = [textWriterProvider setUp];

  return setUp && xmlTextWriterStartDocument([(TCXmlStreamWriter *)self textWriter], 0, "UTF-8", 0) >= 0;
}

- (BOOL)tearDown
{
  isWriting = [(TCXmlStreamWriter *)self isWriting];
  if (isWriting)
  {
    [(TCXmlStreamWriter *)self endElementsToDepth:0];
    xmlTextWriterEndDocument([(TCXmlStreamWriter *)self textWriter]);
    xmlTextWriterFlush([(TCXmlStreamWriter *)self textWriter]);
    textWriterProvider = [(TCXmlStreamWriter *)self textWriterProvider];
    [textWriterProvider tearDown];
  }

  return isWriting;
}

+ (id)newXmlStreamWriterWithZipEntryName:(id)name outputStream:(id)stream isCompressed:(BOOL)compressed
{
  compressedCopy = compressed;
  nameCopy = name;
  streamCopy = stream;
  v9 = [[TCZipEntryTextWriterProvider alloc] initWithEntryName:nameCopy outputStream:streamCopy isCompressed:compressedCopy];
  v10 = [objc_alloc(objc_opt_class()) initWithTextWriterProvider:v9];

  return v10;
}

- (BOOL)startElement:(id)element prefix:(id)prefix ns:(const char *)ns
{
  elementCopy = element;
  prefixCopy = prefix;
  v10 = [objc_opt_class() startElementInStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") prefix:elementCopy ns:{prefixCopy, ns}];
  if (v10)
  {
    self->mContentAddedToTopElement = 0;
    ++self->mCurrentDepth;
  }

  return v10;
}

- (BOOL)endElement
{
  if (self->mCurrentDepth)
  {
    v3 = [objc_opt_class() endElementInStream:{-[TCXmlStreamWriter textWriter](self, "textWriter")}];
    if (v3)
    {
      --self->mCurrentDepth;
      LOBYTE(v3) = 1;
      self->mContentAddedToTopElement = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)writeString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  v6 = self->mContentAddedToTopElement || [stringCopy length] != 0;
  self->mContentAddedToTopElement = v6;
  v7 = [objc_opt_class() writeStringToStream:-[TCXmlStreamWriter textWriter](self text:{"textWriter"), v5}];

  return v7;
}

- (BOOL)endElementsToDepth:(unsigned int)depth
{
  do
  {
    mCurrentDepth = self->mCurrentDepth;
  }

  while (mCurrentDepth > depth && [(TCXmlStreamWriter *)self endElement]);
  return mCurrentDepth <= depth;
}

- (BOOL)writeAttribute:(id)attribute content:(id)content prefix:(id)prefix ns:(const char *)ns
{
  attributeCopy = attribute;
  contentCopy = content;
  prefixCopy = prefix;
  if (contentCopy)
  {
    v13 = contentCopy;
  }

  else
  {
    v13 = &stru_286EE1130;
  }

  if (self->mCurrentDepth)
  {
    v14 = [objc_opt_class() writeAttributeToStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") content:attributeCopy prefix:v13 ns:{prefixCopy, ns}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)writeAttribute:(id)attribute intContent:(int64_t)content prefix:(id)prefix ns:(const char *)ns
{
  attributeCopy = attribute;
  prefixCopy = prefix;
  v12 = TCXmlStringForInt(content);
  LOBYTE(ns) = [(TCXmlStreamWriter *)self writeAttribute:attributeCopy content:v12 prefix:prefixCopy ns:ns];

  return ns;
}

- (BOOL)writeAttribute:(id)attribute BOOLContent:(BOOL)content prefix:(id)prefix ns:(const char *)ns
{
  contentCopy = content;
  attributeCopy = attribute;
  prefixCopy = prefix;
  v12 = TCXmlStringForBool(contentCopy);
  LOBYTE(ns) = [(TCXmlStreamWriter *)self writeAttribute:attributeCopy content:v12 prefix:prefixCopy ns:ns];

  return ns;
}

- (BOOL)writeAttribute:(id)attribute enumContent:(int)content map:(id)map prefix:(id)prefix ns:(const char *)ns
{
  v10 = *&content;
  attributeCopy = attribute;
  prefixCopy = prefix;
  v14 = TCXmlStringForEnum(v10, map);
  LOBYTE(ns) = [(TCXmlStreamWriter *)self writeAttribute:attributeCopy content:v14 prefix:prefixCopy ns:ns];

  return ns;
}

- (BOOL)writeAttribute:(id)attribute doubleContent:(double)content prefix:(id)prefix ns:(const char *)ns
{
  attributeCopy = attribute;
  prefixCopy = prefix;
  v12 = TCXmlStringForDouble(content);
  LOBYTE(ns) = [(TCXmlStreamWriter *)self writeAttribute:attributeCopy content:v12 prefix:prefixCopy ns:ns];

  return ns;
}

- (BOOL)writeElementId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"b%d", ++elementIdCount];
  }

  v5 = [(TCXmlStreamWriter *)self writePlainAttribute:@"id" content:idCopy];

  return v5;
}

- (BOOL)writeNamespace:(id)namespace uri:(const char *)uri
{
  namespaceCopy = namespace;
  LOBYTE(uri) = [objc_opt_class() writeNamespaceToStream:-[TCXmlStreamWriter textWriter](self prefix:"textWriter") uri:{namespaceCopy, uri}];

  return uri;
}

- (BOOL)writeDtd:(id)dtd pubid:(id)pubid sysid:(id)sysid subset:(id)subset
{
  dtdCopy = dtd;
  pubidCopy = pubid;
  sysidCopy = sysid;
  subsetCopy = subset;
  LOBYTE(self) = [objc_opt_class() writeDtdToStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") pubid:dtdCopy sysid:pubidCopy subset:{sysidCopy, subsetCopy}];

  return self;
}

- (BOOL)writeAnchorTarget:(id)target
{
  targetCopy = target;
  LOBYTE(self) = [objc_opt_class() writeAnchorTargetToStream:-[TCXmlStreamWriter textWriter](self name:{"textWriter"), targetCopy}];

  return self;
}

+ (BOOL)startPlainElementInStream:(_xmlTextWriter *)stream name:(id)name
{
  nameCopy = name;
  LOBYTE(stream) = [objc_opt_class() startElementInStream:stream name:nameCopy prefix:0 ns:0];

  return stream;
}

+ (BOOL)startElementInStream:(_xmlTextWriter *)stream name:(id)name prefix:(id)prefix ns:(const char *)ns
{
  nameCopy = name;
  prefixCopy = prefix;
  LODWORD(ns) = xmlTextWriterStartElementNS(stream, [prefixCopy UTF8String], objc_msgSend(nameCopy, "UTF8String"), ns);

  return ns >= 0;
}

+ (BOOL)writeStringToStream:(_xmlTextWriter *)stream text:(id)text
{
  textCopy = text;
  tc_stringByRemovingInvalidXmlChars = [textCopy tc_stringByRemovingInvalidXmlChars];

  LODWORD(stream) = xmlTextWriterWriteString(stream, [tc_stringByRemovingInvalidXmlChars UTF8String]);
  return stream >= 0;
}

+ (BOOL)writePlainAttributeToStream:(_xmlTextWriter *)stream name:(id)name content:(id)content
{
  nameCopy = name;
  contentCopy = content;
  tc_stringByRemovingInvalidXmlChars = [contentCopy tc_stringByRemovingInvalidXmlChars];

  LODWORD(stream) = xmlTextWriterWriteAttribute(stream, [nameCopy UTF8String], objc_msgSend(tc_stringByRemovingInvalidXmlChars, "UTF8String"));
  return stream >= 0;
}

+ (BOOL)writeAttributeToStream:(_xmlTextWriter *)stream name:(id)name content:(id)content prefix:(id)prefix ns:(const char *)ns
{
  nameCopy = name;
  contentCopy = content;
  prefixCopy = prefix;
  tc_stringByRemovingInvalidXmlChars = [contentCopy tc_stringByRemovingInvalidXmlChars];

  LODWORD(ns) = xmlTextWriterWriteAttributeNS(stream, [prefixCopy UTF8String], objc_msgSend(nameCopy, "UTF8String"), ns, objc_msgSend(tc_stringByRemovingInvalidXmlChars, "UTF8String"));
  return ns >= 0;
}

+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)stream prefix:(id)prefix uri:(const char *)uri
{
  prefixCopy = prefix;
  if (prefixCopy)
  {
    prefixCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"xmlns:%@", prefixCopy];
  }

  else
  {
    prefixCopy = @"xmlns";
  }

  v9 = xmlTextWriterWriteAttribute(stream, [(__CFString *)prefixCopy UTF8String], uri);

  return v9 >= 0;
}

+ (BOOL)writeDtdToStream:(_xmlTextWriter *)stream name:(id)name pubid:(id)pubid sysid:(id)sysid subset:(id)subset
{
  nameCopy = name;
  pubidCopy = pubid;
  sysidCopy = sysid;
  subsetCopy = subset;
  xmlTextWriterSetIndent(stream, 1);
  v15 = xmlTextWriterWriteDTD(stream, [nameCopy UTF8String], objc_msgSend(pubidCopy, "UTF8String"), objc_msgSend(sysidCopy, "UTF8String"), objc_msgSend(subsetCopy, "UTF8String"));
  xmlTextWriterSetIndent(stream, 0);

  return v15 >= 0;
}

+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)stream name:(id)name
{
  nameCopy = name;
  v6 = [objc_opt_class() startPlainElementInStream:stream name:@"span"] && objc_msgSend(objc_opt_class(), "writePlainAttributeToStream:name:content:", stream, @"id", nameCopy) && (objc_msgSend(objc_opt_class(), "endElementInStream:", stream) & 1) != 0;

  return v6;
}

@end