@interface EGEdge
- (EGEdge)initWithSource:(id)a3 destination:(id)a4;
- (void)dealloc;
@end

@implementation EGEdge

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EGEdge;
  [(EGEdge *)&v2 dealloc];
}

- (EGEdge)initWithSource:(id)a3 destination:(id)a4
{
  if (!a3 || !a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Edge tried to init with source:%@ destination:%@! Forbidden", a3, a4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = EGEdge;
  result = [(EGEdge *)&v8 init];
  if (result)
  {
    result->_sourcePort = a3;
    result->_destinationPort = a4;
  }

  return result;
}

@end