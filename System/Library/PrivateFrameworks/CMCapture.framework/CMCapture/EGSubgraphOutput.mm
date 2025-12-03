@interface EGSubgraphOutput
- (void)dealloc;
- (void)registerDestination:(id)destination;
- (void)registerSource:(id)source;
@end

@implementation EGSubgraphOutput

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v2 dealloc];
}

- (void)registerSource:(id)source
{
  if ([(NSArray *)[(EGSubgraphPort *)self destinations] count])
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register source %@ after it already had a destination! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, source];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:source userInfo:0]);
  }

  self->_upstreamNodeOutput = [source upstreamNodeOutput];
  v6.receiver = self;
  v6.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v6 registerSource:source];
}

- (void)registerDestination:(id)destination
{
  if (![(EGSubgraphOutput *)self upstreamNodeOutput])
  {
    destination = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register destination %@ before it had a source! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, destination];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:destination userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v6 registerDestination:destination];
}

@end