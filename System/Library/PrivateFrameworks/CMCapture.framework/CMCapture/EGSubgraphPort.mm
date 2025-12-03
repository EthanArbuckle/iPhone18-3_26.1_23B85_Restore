@interface EGSubgraphPort
- (EGSubgraphPort)initWithName:(id)name;
- (NSString)description;
- (void)dealloc;
- (void)registerDestination:(id)destination;
- (void)registerSource:(id)source;
- (void)setParentGraph:(id)graph;
@end

@implementation EGSubgraphPort

- (EGSubgraphPort)initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = EGSubgraphPort;
  v4 = [(EGSubgraphPort *)&v6 init];
  if (v4)
  {
    v4->_name = [name copy];
    v4->_destinations = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGSubgraphPort;
  [(EGSubgraphPort *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, -[EGSubgraphPort name](self, "name")];
  if (objc_loadWeak(&self->_parentGraph))
  {
    objc_loadWeak(&self->_parentGraph);
    v4 = objc_opt_class();
    Weak = objc_loadWeak(&self->_parentGraph);
    [v3 appendFormat:@" (parent: <%@ %p> %@)", v4, Weak, objc_msgSend(objc_loadWeak(&self->_parentGraph), "name")];
  }

  return v3;
}

- (void)registerSource:(id)source
{
  if (!source)
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register a nil source! Forbidden", self, v5, v6];
    goto LABEL_6;
  }

  source = self->_source;
  if (source)
  {
    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register %@ when it was already connected via %@! Forbidden", self, source, source];
LABEL_6:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:source userInfo:0]);
  }

  self->_source = source;
}

- (void)registerDestination:(id)destination
{
  if (!destination)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register a nil destination! Forbidden", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  destinations = self->_destinations;

  [(NSMutableArray *)destinations addObject:?];
}

- (void)setParentGraph:(id)graph
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ tried to install parent graph %@ when it was already had parent %@! Forbidden", self, graph, objc_loadWeak(&self->_parentGraph)), 0}];
    objc_exception_throw(v5);
  }

  objc_storeWeak(&self->_parentGraph, graph);
}

@end