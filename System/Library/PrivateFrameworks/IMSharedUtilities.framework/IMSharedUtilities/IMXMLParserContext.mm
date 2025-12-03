@interface IMXMLParserContext
- (IMXMLParserContext)initWithContent:(id)content;
- (IMXMLParserContext)initWithContentAsData:(id)data;
- (id)inContent;
- (void)dealloc;
@end

@implementation IMXMLParserContext

- (IMXMLParserContext)initWithContent:(id)content
{
  [content dataUsingEncoding:4];

  return MEMORY[0x1EEE66B58](self, sel_initWithContentAsData_);
}

- (IMXMLParserContext)initWithContentAsData:(id)data
{
  v6.receiver = self;
  v6.super_class = IMXMLParserContext;
  v4 = [(IMXMLParserContext *)&v6 init];
  if (v4)
  {
    v4->_inContentAsData = data;
    [(IMXMLParserContext *)v4 reset];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMXMLParserContext;
  [(IMXMLParserContext *)&v3 dealloc];
}

- (id)inContent
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_inContentAsData encoding:4];

  return v2;
}

@end