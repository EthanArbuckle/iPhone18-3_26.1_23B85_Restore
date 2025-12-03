@interface EGGraph
- (BOOL)connectExternalSubgraphInput:(id)input toInternalInput:(id)internalInput;
- (BOOL)connectExternalSubgraphOutput:(id)output toInternalOutput:(id)internalOutput;
- (BOOL)connectOutput:(id)output toInput:(id)input;
- (EGGraph)initWithName:(id)name;
- (id)subgraphInputInstalledFromInternalInput:(id)input;
- (id)subgraphInputInstalledFromInternalInput:(id)input withName:(id)name;
- (id)subgraphInputInstalledWithName:(id)name;
- (id)subgraphOutputInstalledFromInternalOutput:(id)output;
- (id)subgraphOutputInstalledFromInternalOutput:(id)output withName:(id)name;
- (id)subgraphOutputInstalledWithName:(id)name;
- (void)dealloc;
- (void)installNode:(id)node;
- (void)installSubgraph:(id)subgraph;
- (void)setParentGraph:(id)graph;
@end

@implementation EGGraph

- (EGGraph)initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = EGGraph;
  v4 = [(EGGraph *)&v6 init];
  if (v4)
  {
    v4->_name = [name copy];
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

- (void)installNode:(id)node
{
  if (!node)
  {
    node = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a nil node! Forbidden", self, v6];
    goto LABEL_8;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_nodes, "objectForKeyedSubscript:", [node name]))
  {
    node = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install node %@ with a duplicate name! Forbidden", self, node];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:node userInfo:0]);
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nodes, "setObject:forKeyedSubscript:", node, [node name]);

  [node setParentGraph:self];
}

- (void)installSubgraph:(id)subgraph
{
  if (!subgraph)
  {
    subgraph = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a nil subgraph! Forbidden", self, v6];
    goto LABEL_8;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_subgraphs, "objectForKeyedSubscript:", [subgraph name]))
  {
    subgraph = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install subgraph %@ with a duplicate name! Forbidden", self, subgraph];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:subgraph userInfo:0]);
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_subgraphs, "setObject:forKeyedSubscript:", subgraph, [subgraph name]);

  [subgraph setParentGraph:self];
}

- (id)subgraphInputInstalledWithName:(id)name
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, name];
    goto LABEL_10;
  }

  if ([(NSMutableDictionary *)self->_subgraphInputs objectForKeyedSubscript:name])
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface input with duplicate name %@! Forbidden", self, name];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:name userInfo:0]);
  }

  v5 = [[EGSubgraphInput alloc] initWithName:name];
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

- (id)subgraphOutputInstalledWithName:(id)name
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, name];
    goto LABEL_10;
  }

  if ([(NSMutableDictionary *)self->_subgraphOutputs objectForKeyedSubscript:name])
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface output with duplicate name %@! Forbidden", self, name];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:name userInfo:0]);
  }

  v5 = [(EGSubgraphPort *)[EGSubgraphOutput alloc] initWithName:name];
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

- (id)subgraphInputInstalledFromInternalInput:(id)input
{
  name = [input name];

  return [(EGGraph *)self subgraphInputInstalledFromInternalInput:input withName:name];
}

- (id)subgraphOutputInstalledFromInternalOutput:(id)output
{
  name = [output name];

  return [(EGGraph *)self subgraphOutputInstalledFromInternalOutput:output withName:name];
}

- (id)subgraphInputInstalledFromInternalInput:(id)input withName:(id)name
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, name];
    goto LABEL_12;
  }

  if ([(NSMutableDictionary *)self->_subgraphInputs objectForKeyedSubscript:name])
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface input with duplicate name %@! Forbidden", self, name];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:name userInfo:0]);
  }

  v7 = [[EGSubgraphInput alloc] initWithName:name];
  v8 = v7;
  if (v7)
  {
    [(EGSubgraphPort *)v7 setParentGraph:self];
    if ([(EGGraph *)self connectExternalSubgraphInput:v8 toInternalInput:input])
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

- (id)subgraphOutputInstalledFromInternalOutput:(id)output withName:(id)name
{
  if (objc_loadWeak(&self->_parentGraph))
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a new port interface named %@ after having already been installed as a subgraph! Forbidden. Finish setting up a graph's interface and connections before installing it as a subgraph in another graph.", self, name];
    goto LABEL_12;
  }

  if ([(NSMutableDictionary *)self->_subgraphOutputs objectForKeyedSubscript:name])
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to create an interface output with duplicate name %@! Forbidden", self, name];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:name userInfo:0]);
  }

  v7 = [(EGSubgraphPort *)[EGSubgraphOutput alloc] initWithName:name];
  v8 = v7;
  if (v7)
  {
    [(EGSubgraphPort *)v7 setParentGraph:self];
    if ([(EGGraph *)self connectExternalSubgraphOutput:v8 toInternalOutput:output])
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

- (BOOL)connectOutput:(id)output toInput:(id)input
{
  if ([objc_msgSend(output "portInterface")] != self)
  {
    input = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect output %@ to input: %@, but the output's port interface isn't owned by this graph", self, output, input];
    goto LABEL_8;
  }

  if ([objc_msgSend(input "portInterface")] != self)
  {
    input = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect input %@ to output: %@, but the input's port interface isn't owned by this graph", self, input, output];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:input userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:output destination:input];
  if (v8)
  {
    [output registerDestination:input];
    [input registerSource:output];
    [(NSMutableArray *)edges addObject:v8];

    [objc_msgSend(output "upstreamNodeOutput")];
  }

  return v8 != 0;
}

- (BOOL)connectExternalSubgraphInput:(id)input toInternalInput:(id)internalInput
{
  if ([input portInterface] != self)
  {
    input = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect externalInput %@ that it wasn't the parent of! Forbidden", self, input];
    goto LABEL_8;
  }

  if ([objc_msgSend(internalInput "portInterface")] != self)
  {
    input = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect internalInput %@ that wasn't actually internal! Forbidden", self, internalInput];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:input userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:input destination:internalInput];
  if (v8)
  {
    [input registerDestination:internalInput];
    [internalInput registerSource:input];
    [(NSMutableArray *)edges addObject:v8];
  }

  return v8 != 0;
}

- (BOOL)connectExternalSubgraphOutput:(id)output toInternalOutput:(id)internalOutput
{
  if ([output portInterface] != self)
  {
    output = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect externalOutput %@ that it wasn't the parent of! Forbidden", self, output];
    goto LABEL_8;
  }

  if ([objc_msgSend(internalOutput "portInterface")] != self)
  {
    output = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to connect internalOutput %@ that wasn't actually internal! Forbidden", self, internalOutput];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:output userInfo:0]);
  }

  edges = self->_edges;
  v8 = [[EGEdge alloc] initWithSource:internalOutput destination:output];
  if (v8)
  {
    [internalOutput registerDestination:output];
    [output registerSource:internalOutput];
    [(NSMutableArray *)edges addObject:v8];
  }

  return v8 != 0;
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