@interface EGNode
- (EGNode)initWithName:(id)a3;
- (NSArray)egInputsFlat;
- (NSString)description;
- (id)inputInstalledWithName:(id)a3;
- (id)outputInstalledWithName:(id)a3;
- (void)dealloc;
- (void)installInput:(id)a3;
- (void)installInputGroup:(id)a3;
- (void)installOutput:(id)a3;
- (void)setParentGraph:(id)a3;
@end

@implementation EGNode

- (EGNode)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = EGNode;
  v4 = [(EGNode *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
    v4->_inputs = objc_opt_new();
    v4->_inputPorts = objc_opt_new();
    v4->_outputs = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGNode;
  [(EGNode *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, -[EGNode name](self, "name")];
  if (objc_loadWeak(&self->_parentGraph))
  {
    objc_loadWeak(&self->_parentGraph);
    v4 = objc_opt_class();
    Weak = objc_loadWeak(&self->_parentGraph);
    [v3 appendFormat:@" (parent: <%@ %p> %@)", v4, Weak, objc_msgSend(objc_loadWeak(&self->_parentGraph), "name")];
  }

  return v3;
}

- (id)inputInstalledWithName:(id)a3
{
  v4 = [[EGInput alloc] initWithName:a3];
  [(EGNode *)self installInput:v4];
  return v4;
}

- (id)outputInstalledWithName:(id)a3
{
  v4 = [[EGOutput alloc] initWithName:a3];
  [(EGNode *)self installOutput:v4];
  return v4;
}

- (void)installInput:(id)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node %@ tried to install a nil input! Forbidden", self, v8];
LABEL_11:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_inputs, "objectForKeyedSubscript:", [a3 name]) || -[NSMutableDictionary objectForKeyedSubscript:](self->_inputPorts, "objectForKeyedSubscript:", objc_msgSend(a3, "name")))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node %@ tried to install input %@ with a duplicate name! Forbidden", self, a3];
    goto LABEL_11;
  }

  if (!self->_egNodeInput)
  {
    self->_egNodeInput = a3;
    self->_egInputPort = a3;
  }

  [a3 setInputHandler:self];
  [a3 setPortInterface:self];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_inputs, "setObject:forKeyedSubscript:", a3, [a3 name]);
  inputPorts = self->_inputPorts;
  v6 = [a3 name];

  [(NSMutableDictionary *)inputPorts setObject:a3 forKeyedSubscript:v6];
}

- (void)installInputGroup:(id)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node %@ tried to install a nil input! Forbidden", self, v12];
    goto LABEL_15;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_inputs, "objectForKeyedSubscript:", [a3 name]))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node %@ tried to install inputGroup %@ with a duplicate name! Forbidden", self, a3];
LABEL_15:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  if (!self->_egNodeInput)
  {
    self->_egNodeInput = a3;
  }

  [a3 setInputGroupHandler:self];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_inputs, "setObject:forKeyedSubscript:", a3, [a3 name]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objc_msgSend(a3 "egInputsByName")];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_inputPorts, "setObject:forKeyedSubscript:", v10, [v10 name]);
        [v10 setPortInterface:self];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }
}

- (void)installOutput:(id)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install a nil output! Forbidden", self];
    goto LABEL_10;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_outputs, "objectForKeyedSubscript:", [a3 name]))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to install an output with a duplicate name! Forbidden", self];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  if (!self->_egOutput)
  {
    self->_egOutput = a3;
  }

  [a3 setParentNode:self];
  outputs = self->_outputs;
  v6 = [a3 name];

  [(NSMutableDictionary *)outputs setObject:a3 forKeyedSubscript:v6];
}

- (NSArray)egInputsFlat
{
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_inputs allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) addInputsIntoArray:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
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