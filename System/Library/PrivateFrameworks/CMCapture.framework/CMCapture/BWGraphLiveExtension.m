@interface BWGraphLiveExtension
- (void)addNode:(id)a3;
- (void)dealloc;
@end

@implementation BWGraphLiveExtension

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWGraphLiveExtension;
  [(BWGraphLiveExtension *)&v3 dealloc];
}

- (void)addNode:(id)a3
{
  if (!self->_nodes)
  {
    self->_nodes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  }

  [a3 setRequestedConfigurationID:self->_configurationID];
  nodes = self->_nodes;

  [(NSMutableArray *)nodes addObject:a3];
}

@end