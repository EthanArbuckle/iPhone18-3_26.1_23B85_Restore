@interface IMAttributedStringParserContext
- (IMAttributedStringParserContext)initWithAttributedString:(id)a3;
- (void)dealloc;
@end

@implementation IMAttributedStringParserContext

- (IMAttributedStringParserContext)initWithAttributedString:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMAttributedStringParserContext;
  v4 = [(IMAttributedStringParserContext *)&v6 init];
  if (v4)
  {
    v4->_inString = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMAttributedStringParserContext;
  [(IMAttributedStringParserContext *)&v3 dealloc];
}

@end