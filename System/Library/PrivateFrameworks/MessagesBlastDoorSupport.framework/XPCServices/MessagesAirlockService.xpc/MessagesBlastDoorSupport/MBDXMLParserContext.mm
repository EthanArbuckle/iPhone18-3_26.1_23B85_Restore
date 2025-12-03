@interface MBDXMLParserContext
- (MBDXMLParserContext)initWithContent:(id)content;
- (MBDXMLParserContext)initWithContentAsData:(id)data;
- (id)inContent;
@end

@implementation MBDXMLParserContext

- (MBDXMLParserContext)initWithContent:(id)content
{
  v4 = [content dataUsingEncoding:4];
  v5 = [(MBDXMLParserContext *)self initWithContentAsData:v4];

  return v5;
}

- (MBDXMLParserContext)initWithContentAsData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = MBDXMLParserContext;
  v6 = [(MBDXMLParserContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inContentAsData, data);
    [(MBDXMLParserContext *)v7 reset];
  }

  return v7;
}

- (id)inContent
{
  v2 = [[NSString alloc] initWithData:self->_inContentAsData encoding:4];

  return v2;
}

@end