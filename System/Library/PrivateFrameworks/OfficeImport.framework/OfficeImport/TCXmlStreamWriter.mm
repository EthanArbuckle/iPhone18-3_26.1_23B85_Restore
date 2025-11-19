@interface TCXmlStreamWriter
+ (BOOL)startElementInStream:(_xmlTextWriter *)a3 name:(id)a4 prefix:(id)a5 ns:(const char *)a6;
+ (BOOL)startPlainElementInStream:(_xmlTextWriter *)a3 name:(id)a4;
+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)a3 name:(id)a4;
+ (BOOL)writeAttributeToStream:(_xmlTextWriter *)a3 name:(id)a4 content:(id)a5 prefix:(id)a6 ns:(const char *)a7;
+ (BOOL)writeDtdToStream:(_xmlTextWriter *)a3 name:(id)a4 pubid:(id)a5 sysid:(id)a6 subset:(id)a7;
+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)a3 prefix:(id)a4 uri:(const char *)a5;
+ (BOOL)writePlainAttributeToStream:(_xmlTextWriter *)a3 name:(id)a4 content:(id)a5;
+ (BOOL)writeStringToStream:(_xmlTextWriter *)a3 text:(id)a4;
+ (id)newXmlStreamWriterWithZipEntryName:(id)a3 outputStream:(id)a4 isCompressed:(BOOL)a5;
- (BOOL)endElement;
- (BOOL)endElementsToDepth:(unsigned int)a3;
- (BOOL)setUp;
- (BOOL)startElement:(id)a3 prefix:(id)a4 ns:(const char *)a5;
- (BOOL)tearDown;
- (BOOL)writeAnchorTarget:(id)a3;
- (BOOL)writeAttribute:(id)a3 BOOLContent:(BOOL)a4 prefix:(id)a5 ns:(const char *)a6;
- (BOOL)writeAttribute:(id)a3 content:(id)a4 prefix:(id)a5 ns:(const char *)a6;
- (BOOL)writeAttribute:(id)a3 doubleContent:(double)a4 prefix:(id)a5 ns:(const char *)a6;
- (BOOL)writeAttribute:(id)a3 enumContent:(int)a4 map:(id)a5 prefix:(id)a6 ns:(const char *)a7;
- (BOOL)writeAttribute:(id)a3 intContent:(int64_t)a4 prefix:(id)a5 ns:(const char *)a6;
- (BOOL)writeDtd:(id)a3 pubid:(id)a4 sysid:(id)a5 subset:(id)a6;
- (BOOL)writeElementId:(id)a3;
- (BOOL)writeNamespace:(id)a3 uri:(const char *)a4;
- (BOOL)writeString:(id)a3;
- (TCXmlStreamWriter)initWithTextWriterProvider:(id)a3;
- (void)dealloc;
@end

@implementation TCXmlStreamWriter

- (TCXmlStreamWriter)initWithTextWriterProvider:(id)a3
{
  v5 = a3;
  v6 = [(TCXmlStreamWriter *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTextWriterProvider, a3);
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

  v4 = [(TCXmlStreamWriter *)self textWriterProvider];
  v5 = [v4 setUp];

  return v5 && xmlTextWriterStartDocument([(TCXmlStreamWriter *)self textWriter], 0, "UTF-8", 0) >= 0;
}

- (BOOL)tearDown
{
  v3 = [(TCXmlStreamWriter *)self isWriting];
  if (v3)
  {
    [(TCXmlStreamWriter *)self endElementsToDepth:0];
    xmlTextWriterEndDocument([(TCXmlStreamWriter *)self textWriter]);
    xmlTextWriterFlush([(TCXmlStreamWriter *)self textWriter]);
    v4 = [(TCXmlStreamWriter *)self textWriterProvider];
    [v4 tearDown];
  }

  return v3;
}

+ (id)newXmlStreamWriterWithZipEntryName:(id)a3 outputStream:(id)a4 isCompressed:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [[TCZipEntryTextWriterProvider alloc] initWithEntryName:v7 outputStream:v8 isCompressed:v5];
  v10 = [objc_alloc(objc_opt_class()) initWithTextWriterProvider:v9];

  return v10;
}

- (BOOL)startElement:(id)a3 prefix:(id)a4 ns:(const char *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() startElementInStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") prefix:v8 ns:{v9, a5}];
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

- (BOOL)writeString:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->mContentAddedToTopElement || [v4 length] != 0;
  self->mContentAddedToTopElement = v6;
  v7 = [objc_opt_class() writeStringToStream:-[TCXmlStreamWriter textWriter](self text:{"textWriter"), v5}];

  return v7;
}

- (BOOL)endElementsToDepth:(unsigned int)a3
{
  do
  {
    mCurrentDepth = self->mCurrentDepth;
  }

  while (mCurrentDepth > a3 && [(TCXmlStreamWriter *)self endElement]);
  return mCurrentDepth <= a3;
}

- (BOOL)writeAttribute:(id)a3 content:(id)a4 prefix:(id)a5 ns:(const char *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_286EE1130;
  }

  if (self->mCurrentDepth)
  {
    v14 = [objc_opt_class() writeAttributeToStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") content:v10 prefix:v13 ns:{v12, a6}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)writeAttribute:(id)a3 intContent:(int64_t)a4 prefix:(id)a5 ns:(const char *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = TCXmlStringForInt(a4);
  LOBYTE(a6) = [(TCXmlStreamWriter *)self writeAttribute:v10 content:v12 prefix:v11 ns:a6];

  return a6;
}

- (BOOL)writeAttribute:(id)a3 BOOLContent:(BOOL)a4 prefix:(id)a5 ns:(const char *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = TCXmlStringForBool(v8);
  LOBYTE(a6) = [(TCXmlStreamWriter *)self writeAttribute:v10 content:v12 prefix:v11 ns:a6];

  return a6;
}

- (BOOL)writeAttribute:(id)a3 enumContent:(int)a4 map:(id)a5 prefix:(id)a6 ns:(const char *)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a6;
  v14 = TCXmlStringForEnum(v10, a5);
  LOBYTE(a7) = [(TCXmlStreamWriter *)self writeAttribute:v12 content:v14 prefix:v13 ns:a7];

  return a7;
}

- (BOOL)writeAttribute:(id)a3 doubleContent:(double)a4 prefix:(id)a5 ns:(const char *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = TCXmlStringForDouble(a4);
  LOBYTE(a6) = [(TCXmlStreamWriter *)self writeAttribute:v10 content:v12 prefix:v11 ns:a6];

  return a6;
}

- (BOOL)writeElementId:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"b%d", ++elementIdCount];
  }

  v5 = [(TCXmlStreamWriter *)self writePlainAttribute:@"id" content:v4];

  return v5;
}

- (BOOL)writeNamespace:(id)a3 uri:(const char *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_opt_class() writeNamespaceToStream:-[TCXmlStreamWriter textWriter](self prefix:"textWriter") uri:{v6, a4}];

  return a4;
}

- (BOOL)writeDtd:(id)a3 pubid:(id)a4 sysid:(id)a5 subset:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  LOBYTE(self) = [objc_opt_class() writeDtdToStream:-[TCXmlStreamWriter textWriter](self name:"textWriter") pubid:v10 sysid:v11 subset:{v12, v13}];

  return self;
}

- (BOOL)writeAnchorTarget:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() writeAnchorTargetToStream:-[TCXmlStreamWriter textWriter](self name:{"textWriter"), v4}];

  return self;
}

+ (BOOL)startPlainElementInStream:(_xmlTextWriter *)a3 name:(id)a4
{
  v5 = a4;
  LOBYTE(a3) = [objc_opt_class() startElementInStream:a3 name:v5 prefix:0 ns:0];

  return a3;
}

+ (BOOL)startElementInStream:(_xmlTextWriter *)a3 name:(id)a4 prefix:(id)a5 ns:(const char *)a6
{
  v9 = a4;
  v10 = a5;
  LODWORD(a6) = xmlTextWriterStartElementNS(a3, [v10 UTF8String], objc_msgSend(v9, "UTF8String"), a6);

  return a6 >= 0;
}

+ (BOOL)writeStringToStream:(_xmlTextWriter *)a3 text:(id)a4
{
  v5 = a4;
  v6 = [v5 tc_stringByRemovingInvalidXmlChars];

  LODWORD(a3) = xmlTextWriterWriteString(a3, [v6 UTF8String]);
  return a3 >= 0;
}

+ (BOOL)writePlainAttributeToStream:(_xmlTextWriter *)a3 name:(id)a4 content:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 tc_stringByRemovingInvalidXmlChars];

  LODWORD(a3) = xmlTextWriterWriteAttribute(a3, [v7 UTF8String], objc_msgSend(v9, "UTF8String"));
  return a3 >= 0;
}

+ (BOOL)writeAttributeToStream:(_xmlTextWriter *)a3 name:(id)a4 content:(id)a5 prefix:(id)a6 ns:(const char *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 tc_stringByRemovingInvalidXmlChars];

  LODWORD(a7) = xmlTextWriterWriteAttributeNS(a3, [v13 UTF8String], objc_msgSend(v11, "UTF8String"), a7, objc_msgSend(v14, "UTF8String"));
  return a7 >= 0;
}

+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)a3 prefix:(id)a4 uri:(const char *)a5
{
  v7 = a4;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"xmlns:%@", v7];
  }

  else
  {
    v8 = @"xmlns";
  }

  v9 = xmlTextWriterWriteAttribute(a3, [(__CFString *)v8 UTF8String], a5);

  return v9 >= 0;
}

+ (BOOL)writeDtdToStream:(_xmlTextWriter *)a3 name:(id)a4 pubid:(id)a5 sysid:(id)a6 subset:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  xmlTextWriterSetIndent(a3, 1);
  v15 = xmlTextWriterWriteDTD(a3, [v11 UTF8String], objc_msgSend(v12, "UTF8String"), objc_msgSend(v13, "UTF8String"), objc_msgSend(v14, "UTF8String"));
  xmlTextWriterSetIndent(a3, 0);

  return v15 >= 0;
}

+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)a3 name:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() startPlainElementInStream:a3 name:@"span"] && objc_msgSend(objc_opt_class(), "writePlainAttributeToStream:name:content:", a3, @"id", v5) && (objc_msgSend(objc_opt_class(), "endElementInStream:", a3) & 1) != 0;

  return v6;
}

@end