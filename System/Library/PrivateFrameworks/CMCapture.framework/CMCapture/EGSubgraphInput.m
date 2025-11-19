@interface EGSubgraphInput
- (EGSubgraphInput)initWithName:(id)a3;
- (void)dealloc;
- (void)registerDestination:(id)a3;
- (void)registerSource:(id)a3;
@end

@implementation EGSubgraphInput

- (EGSubgraphInput)initWithName:(id)a3
{
  v5.receiver = self;
  v5.super_class = EGSubgraphInput;
  v3 = [(EGSubgraphPort *)&v5 initWithName:a3];
  if (v3)
  {
    v3->_downstreamNodeInputPorts = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGSubgraphInput;
  [(EGSubgraphPort *)&v3 dealloc];
}

- (void)registerSource:(id)a3
{
  if (![(NSArray *)[(EGSubgraphPort *)self destinations] count])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register source %@ before it had input destinations! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = EGSubgraphInput;
  [(EGSubgraphPort *)&v6 registerSource:a3];
}

- (void)registerDestination:(id)a3
{
  if ([(EGSubgraphPort *)self source])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register destination %@ after it already had a source! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  [a3 addDownstreamNodeInputPortsIntoArray:self->_downstreamNodeInputPorts];
  v6.receiver = self;
  v6.super_class = EGSubgraphInput;
  [(EGSubgraphPort *)&v6 registerDestination:a3];
}

@end