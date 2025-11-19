@interface EGOutput
- (EGOutput)initWithName:(id)a3;
- (NSString)description;
- (void)dealloc;
- (void)emit:(id)a3;
- (void)registerDestination:(id)a3;
- (void)setParentNode:(id)a3;
@end

@implementation EGOutput

- (EGOutput)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = EGOutput;
  v4 = [(EGOutput *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
    v4->_destinations = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_downstreamNodeInputPorts = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGOutput;
  [(EGOutput *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, -[EGOutput name](self, "name")];
  if (objc_loadWeak(&self->_parentNode))
  {
    objc_loadWeak(&self->_parentNode);
    v4 = objc_opt_class();
    Weak = objc_loadWeak(&self->_parentNode);
    [v3 appendFormat:@" (parent: <%@ %p> %@)", v4, Weak, objc_msgSend(objc_loadWeak(&self->_parentNode), "name")];
  }

  return v3;
}

- (void)registerDestination:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ tried to register a nil destination! Forbidden", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  destinations = self->_destinations;

  [(NSMutableArray *)destinations addObject:?];
}

- (void)emit:(id)a3
{
  ++self->_emittedCount;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  downstreamNodeInputPorts = self->_downstreamNodeInputPorts;
  v5 = [(NSMutableArray *)downstreamNodeInputPorts countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(downstreamNodeInputPorts);
        }

        [*(*(&v10 + 1) + 8 * i) receiveData:a3];
      }

      v6 = [(NSMutableArray *)downstreamNodeInputPorts countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)setParentNode:(id)a3
{
  if (objc_loadWeak(&self->_parentNode))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ tried to install parent graph %@ when it was already had parent %@! Forbidden", self, a3, objc_loadWeak(&self->_parentNode)), 0}];
    objc_exception_throw(v5);
  }

  objc_storeWeak(&self->_parentNode, a3);
}

@end