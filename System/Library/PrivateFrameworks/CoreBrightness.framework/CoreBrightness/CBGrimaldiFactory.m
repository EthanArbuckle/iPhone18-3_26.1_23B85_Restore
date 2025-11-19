@interface CBGrimaldiFactory
- (BOOL)isReady;
- (id)newInstance;
- (void)dealloc;
@end

@implementation CBGrimaldiFactory

- (BOOL)isReady
{
  v3 = 0;
  if (self->_queue)
  {
    v3 = 0;
    if (self->_eventSource)
    {
      return self->_samplingStrategy != 0;
    }
  }

  return v3;
}

- (id)newInstance
{
  if ([(CBGrimaldiFactory *)self isReady])
  {
    return [[CBGrimaldiModule alloc] initWithQueue:self->_queue andEventSource:self->_eventSource andSamplingStrategy:self->_samplingStrategy];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_queue)
  {
    MEMORY[0x1E69E5920](v4->_queue);
  }

  if (v4->_eventSource)
  {
    MEMORY[0x1E69E5920](v4->_eventSource);
  }

  if (v4->_samplingStrategy)
  {
    MEMORY[0x1E69E5920](v4->_samplingStrategy);
  }

  v2.receiver = v4;
  v2.super_class = CBGrimaldiFactory;
  [(CBGrimaldiFactory *)&v2 dealloc];
}

@end