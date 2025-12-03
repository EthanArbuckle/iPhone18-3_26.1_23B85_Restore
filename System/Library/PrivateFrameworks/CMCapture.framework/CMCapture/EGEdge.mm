@interface EGEdge
- (EGEdge)initWithSource:(id)source destination:(id)destination;
- (void)dealloc;
@end

@implementation EGEdge

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EGEdge;
  [(EGEdge *)&v2 dealloc];
}

- (EGEdge)initWithSource:(id)source destination:(id)destination
{
  if (!source || !destination)
  {
    destination = [MEMORY[0x1E696AEC0] stringWithFormat:@"Edge tried to init with source:%@ destination:%@! Forbidden", source, destination];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:destination userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = EGEdge;
  result = [(EGEdge *)&v8 init];
  if (result)
  {
    result->_sourcePort = source;
    result->_destinationPort = destination;
  }

  return result;
}

@end