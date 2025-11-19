@interface PRAstNode
- (PRAstNode)initWithSourceToken:(id)a3 isLastToken:(BOOL)a4;
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

- (PRAstNode)initWithSourceToken:(id)a3 isLastToken:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = PRAstNode;
  v6 = [(PRAstNode *)&v8 init];
  if (v6)
  {
    v6->_sourceToken = a3;
    v6->_isLastToken = a4;
  }

  return v6;
}

@end