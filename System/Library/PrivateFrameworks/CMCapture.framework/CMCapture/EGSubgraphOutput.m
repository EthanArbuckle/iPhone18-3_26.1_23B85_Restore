@interface EGSubgraphOutput
- (void)dealloc;
- (void)registerDestination:(id)a3;
- (void)registerSource:(id)a3;
@end

@implementation EGSubgraphOutput

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v2 dealloc];
}

- (void)registerSource:(id)a3
{
  if ([(NSArray *)[(EGSubgraphPort *)self destinations] count])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register source %@ after it already had a destination! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  self->_upstreamNodeOutput = [a3 upstreamNodeOutput];
  v6.receiver = self;
  v6.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v6 registerSource:a3];
}

- (void)registerDestination:(id)a3
{
  if (![(EGSubgraphOutput *)self upstreamNodeOutput])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register destination %@ before it had a source! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = EGSubgraphOutput;
  [(EGSubgraphPort *)&v6 registerDestination:a3];
}

@end