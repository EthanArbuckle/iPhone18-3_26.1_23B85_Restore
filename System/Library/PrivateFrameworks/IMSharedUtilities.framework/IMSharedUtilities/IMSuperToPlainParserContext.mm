@interface IMSuperToPlainParserContext
- (IMSuperToPlainParserContext)initWithAttributedString:(id)string extractLinks:(BOOL)links;
- (void)dealloc;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters;
@end

@implementation IMSuperToPlainParserContext

- (IMSuperToPlainParserContext)initWithAttributedString:(id)string extractLinks:(BOOL)links
{
  v8.receiver = self;
  v8.super_class = IMSuperToPlainParserContext;
  v6 = [(IMFromSuperParserContext *)&v8 initWithAttributedString:?];
  if (v6)
  {
    v6->_mutablePlainString = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(string, "length")}];
    v6->_extractLinks = links;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMSuperToPlainParserContext;
  [(IMFromSuperParserContext *)&v3 dealloc];
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters
{
  v8 = [objc_msgSend(attributes objectForKey:{*MEMORY[0x1E69A5FB0]), "absoluteString"}];
  v9 = !self->_extractLinks || v8 == 0;
  if (v9 || (v10 = v8, ([v8 isEqualToString:characters] & 1) != 0))
  {
    mutablePlainString = self->_mutablePlainString;

    [(NSMutableString *)mutablePlainString appendString:characters];
  }

  else
  {
    [(NSMutableString *)self->_mutablePlainString appendFormat:@"%@ <%@>", characters, v10];
  }
}

@end