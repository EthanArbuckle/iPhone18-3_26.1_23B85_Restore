@interface EGGraph
- (BOOL)connectExternalSubgraphInput:(id)a3 toInternalInput:(id)a4;
- (BOOL)connectExternalSubgraphOutput:(id)a3 toInternalOutput:(id)a4;
- (BOOL)connectOutput:(id)a3 toInput:(id)a4;
- (EGGraph)initWithName:(id)a3;
- (id)subgraphInputInstalledFromInternalInput:(id)a3;
- (id)subgraphInputInstalledFromInternalInput:(id)a3 withName:(id)a4;
- (id)subgraphInputInstalledWithName:(id)a3;
- (id)subgraphOutputInstalledFromInternalOutput:(id)a3;
- (id)subgraphOutputInstalledFromInternalOutput:(id)a3 withName:(id)a4;
- (id)subgraphOutputInstalledWithName:(id)a3;
- (void)dealloc;
- (void)installNode:(id)a3;
- (void)installSubgraph:(id)a3;
- (void)setParentGraph:(id)a3;
@end

@implementation EGGraph

- (EGGraph)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = EGGraph;
  v4 = [(EGGraph *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
    v4->_nodes = objc_opt_new();
    v4->_subgraphs = objc_opt_new();
    v4->_subgraphOutputs = objc_opt_new();
    v4->_subgraphInputs = objc_opt_new();
    v4->_edges = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGGraph;
  [(EGGraph *)&v3 dealloc];
}

- (void)installNode:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a nil node! Forbidden", self, v6];
    goto LABEL_8;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_nodes, "objectForKeyedSubscript:", [a3 name]))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install node %@ with a duplicate name! Forbidden", self, a3];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nodes, "setObject:forKeyedSubscript:", a3, [a3 name]);

  [a3 setParentGraph:self];
}

- (void)installSubgraph:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a nil subgraph! Forbidden", self, v6];
    goto LABEL_8;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_subgraphs, "objectForKeyedSubscript:", [a3 name]))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install subgraph %@ with a duplicate name! Forbidden", self, a3];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_subgraphs, "setObject:forKeyedSubscript:", a3, [a3 name]);

  [a3 setParentGraph:self];
}

- (id)subgraphInputInstalledWithName:(id)a3
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, a3];
    goto LABEL_10;
  }

  if ([(NSMutableDictionary *)self->_subgraphInputs objectForKeyedSubscript:a3])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface input with duplicate name %@! Forbidden", self, a3];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v5 = [[EGSubgraphInput alloc] initWithName:a3];
  v6 = v5;
  if (v5)
  {
    if (!self->_subgraphInput)
    {
      self->_subgraphInput = v5;
    }

    [(NSMutableDictionary *)self->_subgraphInputs setObject:v5 forKeyedSubscript:[(EGSubgraphPort *)v5 name]];
    [(EGSubgraphPort *)v6 setParentGraph:self];
  }

  return v6;
}

- (id)subgraphOutputInstalledWithName:(id)a3
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, a3];
    goto LABEL_10;
  }

  if ([(NSMutableDictionary *)self->_subgraphOutputs objectForKeyedSubscript:a3])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface output with duplicate name %@! Forbidden", self, a3];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v5 = [(EGSubgraphPort *)[EGSubgraphOutput alloc] initWithName:a3];
  v6 = v5;
  if (v5)
  {
    if (!self->_subgraphOutput)
    {
      self->_subgraphOutput = v5;
    }

    [(NSMutableDictionary *)self->_subgraphOutputs setObject:v5 forKeyedSubscript:[(EGSubgraphPort *)v5 name]];
    [(EGSubgraphPort *)v6 setParentGraph:self];
  }

  return v6;
}

- (id)subgraphInputInstalledFromInternalInput:(id)a3
{
  v5 = [a3 name];

  return [(EGGraph *)self subgraphInputInstalledFromInternalInput:a3 withName:v5];
}

- (id)subgraphOutputInstalledFromInternalOutput:(id)a3
{
  v5 = [a3 name];

  return [(EGGraph *)self subgraphOutputInstalledFromInternalOutput:a3 withName:v5];
}

- (id)subgraphInputInstalledFromInternalInput:(id)a3 withName:(id)a4
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, a4];
    goto LABEL_12;
  }

  if ([(NSMutableDictionary *)self->_subgraphInputs objectForKeyedSubscript:a4])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface input with duplicate name %@! Forbidden", self, a4];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v7 = [[EGSubgraphInput alloc] initWithName:a4];
  v8 = v7;
  if (v7)
  {
    [(EGSubgraphPort *)v7 setParentGraph:self];
    if ([(EGGraph *)self connectExternalSubgraphInput:v8 toInternalInput:a3])
    {
      if (!self->_subgraphInput)
      {
        self->_subgraphInput = v8;
      }

      [(NSMutableDictionary *)self->_subgraphInputs setObject:v8 forKeyedSubscript:[(EGSubgraphPort *)v8 name]];
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (id)subgraphOutputInstalledFromInternalOutput:(id)a3 withName:(id)a4
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, a4];
    goto LABEL_12;
  }

  if ([(NSMutableDictionary *)self->_subgraphOutputs objectForKeyedSubscript:a4])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface output with duplicate name %@! Forbidden", self, a4];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v7 = [(EGSubgraphPort *)[EGSubgraphOutput alloc] initWithName:a4];
  v8 = v7;
  if (v7)
  {
    [(EGSubgraphPort *)v7 setParentGraph:self];
    if ([(EGGraph *)self connectExternalSubgraphOutput:v8 toInternalOutput:a3])
    {
      if (!self->_subgraphOutput)
      {
        self->_subgraphOutput = v8;
      }

      [(NSMutableDictionary *)self->_subgraphOutputs setObject:v8 forKeyedSubscript:[(EGSubgraphPort *)v8 name]];
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (BOOL)connectOutput:(id)a3 toInput:(id)a4
{
  if ([objc_msgSend(a3 "portInterface")] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect output %@ to input: %@, but the output's port interface isn't owned by this graph", self, a3, a4];
    goto LABEL_8;
  }

  if ([objc_msgSend(a4 "portInterface")] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect input %@ to output: %@, but the input's port interface isn't owned by this graph", self, a4, a3];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:a3 destination:a4];
  if (v8)
  {
    [a3 registerDestination:a4];
    [a4 registerSource:a3];
    [(NSMutableArray *)edges addObject:v8];

    [objc_msgSend(a3 "upstreamNodeOutput")];
  }

  return v8 != 0;
}

- (BOOL)connectExternalSubgraphInput:(id)a3 toInternalInput:(id)a4
{
  if ([a3 portInterface] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect externalInput %@ that it wasn't the parent of! Forbidden", self, a3];
    goto LABEL_8;
  }

  if ([objc_msgSend(a4 "portInterface")] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect internalInput %@ that wasn't actually internal! Forbidden", self, a4];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:a3 destination:a4];
  if (v8)
  {
    [a3 registerDestination:a4];
    [a4 registerSource:a3];
    [(NSMutableArray *)edges addObject:v8];
  }

  return v8 != 0;
}

- (BOOL)connectExternalSubgraphOutput:(id)a3 toInternalOutput:(id)a4
{
  if ([a3 portInterface] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect externalOutput %@ that it wasn't the parent of! Forbidden", self, a3];
    goto LABEL_8;
  }

  if ([objc_msgSend(a4 "portInterface")] != self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect internalOutput %@ that wasn't actually internal! Forbidden", self, a4];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:a4 destination:a3];
  if (v8)
  {
    [a4 registerDestination:a3];
    [a3 registerSource:a4];
    [(NSMutableArray *)edges addObject:v8];
  }

  return v8 != 0;
}

- (void)setParentGraph:(id)a3
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ tried to install parent graph %@ when it was already had parent %@! Forbidden", self, a3, objc_loadWeak(&self->_parentGraph)), 0}];
    objc_exception_throw(v5);
  }

  objc_storeWeak(&self->_parentGraph, a3);
}

@end