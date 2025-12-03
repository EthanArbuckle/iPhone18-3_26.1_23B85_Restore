@interface PRAstNode
- (PRAstNode)initWithSourceToken:(id)token isLastToken:(BOOL)lastToken;
- (id)description;
- (void)dealloc;
@end

@implementation PRAstNode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: sourceToken='%@'>", NSStringFromClass(v4), -[PRAstNode sourceToken](self, "sourceToken")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstNode;
  [(PRAstNode *)&v3 dealloc];
}

- (PRAstNode)initWithSourceToken:(id)token isLastToken:(BOOL)lastToken
{
  v8.receiver = self;
  v8.super_class = PRAstNode;
  v6 = [(PRAstNode *)&v8 init];
  if (v6)
  {
    v6->_sourceToken = token;
    v6->_isLastToken = lastToken;
  }

  return v6;
}

@end