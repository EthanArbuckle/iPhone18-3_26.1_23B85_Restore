@interface IMSuperToPlainParserContext
- (IMSuperToPlainParserContext)initWithAttributedString:(id)a3 extractLinks:(BOOL)a4;
- (void)dealloc;
- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 characters:(id)a6;
@end

@implementation IMSuperToPlainParserContext

- (IMSuperToPlainParserContext)initWithAttributedString:(id)a3 extractLinks:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = IMSuperToPlainParserContext;
  v6 = [(IMFromSuperParserContext *)&v8 initWithAttributedString:?];
  if (v6)
  {
    v6->_mutablePlainString = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(a3, "length")}];
    v6->_extractLinks = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMSuperToPlainParserContext;
  [(IMFromSuperParserContext *)&v3 dealloc];
}

- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 characters:(id)a6
{
  v8 = [objc_msgSend(a4 objectForKey:{*MEMORY[0x1E69A5FB0]), "absoluteString"}];
  v9 = !self->_extractLinks || v8 == 0;
  if (v9 || (v10 = v8, ([v8 isEqualToString:a6] & 1) != 0))
  {
    mutablePlainString = self->_mutablePlainString;

    [(NSMutableString *)mutablePlainString appendString:a6];
  }

  else
  {
    [(NSMutableString *)self->_mutablePlainString appendFormat:@"%@ <%@>", a6, v10];
  }
}

@end