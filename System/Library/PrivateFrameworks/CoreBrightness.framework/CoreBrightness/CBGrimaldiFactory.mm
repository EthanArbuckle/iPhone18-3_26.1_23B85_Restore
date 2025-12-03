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
  selfCopy = self;
  v3 = a2;
  if (self->_queue)
  {
    MEMORY[0x1E69E5920](selfCopy->_queue);
  }

  if (selfCopy->_eventSource)
  {
    MEMORY[0x1E69E5920](selfCopy->_eventSource);
  }

  if (selfCopy->_samplingStrategy)
  {
    MEMORY[0x1E69E5920](selfCopy->_samplingStrategy);
  }

  v2.receiver = selfCopy;
  v2.super_class = CBGrimaldiFactory;
  [(CBGrimaldiFactory *)&v2 dealloc];
}

@end