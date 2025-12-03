@interface EGSubgraphInput
- (EGSubgraphInput)initWithName:(id)name;
- (void)dealloc;
- (void)registerDestination:(id)destination;
- (void)registerSource:(id)source;
@end

@implementation EGSubgraphInput

- (EGSubgraphInput)initWithName:(id)name
{
  v5.receiver = self;
  v5.super_class = EGSubgraphInput;
  v3 = [(EGSubgraphPort *)&v5 initWithName:name];
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

- (void)registerSource:(id)source
{
  if (![(NSArray *)[(EGSubgraphPort *)self destinations] count])
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register source %@ before it had input destinations! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, source];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:source userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = EGSubgraphInput;
  [(EGSubgraphPort *)&v6 registerSource:source];
}

- (void)registerDestination:(id)destination
{
  if ([(EGSubgraphPort *)self source])
  {
    destination = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register destination %@ after it already had a source! Forbidden. Finish making internal connections in a subgraph before making external connections from its subgraph ports", self, destination];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:destination userInfo:0]);
  }

  [destination addDownstreamNodeInputPortsIntoArray:self->_downstreamNodeInputPorts];
  v6.receiver = self;
  v6.super_class = EGSubgraphInput;
  [(EGSubgraphPort *)&v6 registerDestination:destination];
}

@end