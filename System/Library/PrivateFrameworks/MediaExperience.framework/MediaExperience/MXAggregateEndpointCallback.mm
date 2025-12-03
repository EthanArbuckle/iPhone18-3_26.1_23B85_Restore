@interface MXAggregateEndpointCallback
- (MXAggregateEndpointCallback)initWithAggregate:(OpaqueFigEndpoint *)aggregate features:(unint64_t)features options:(id)options callback:(void *)callback callbackRefCon:(void *)con operationType:(unint64_t)type;
- (id)_debugStringForOperationType:(unint64_t)type;
- (void)dealloc;
@end

@implementation MXAggregateEndpointCallback

- (MXAggregateEndpointCallback)initWithAggregate:(OpaqueFigEndpoint *)aggregate features:(unint64_t)features options:(id)options callback:(void *)callback callbackRefCon:(void *)con operationType:(unint64_t)type
{
  v17.receiver = self;
  v17.super_class = MXAggregateEndpointCallback;
  v14 = [(MXAggregateEndpointCallback *)&v17 init];
  if (v14)
  {
    if (aggregate)
    {
      v15 = CFRetain(aggregate);
    }

    else
    {
      v15 = 0;
    }

    v14->_endpoint = v15;
    v14->_features = features;
    v14->_options = [options copy];
    v14->_callback = callback;
    v14->_callbackRefCon = con;
    v14->_operationType = type;
    v14->_creationTime = objc_alloc_init(MEMORY[0x1E695DF00]);
  }

  return v14;
}

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
    self->_endpoint = 0;
  }

  options = self->_options;
  if (options)
  {
    CFRelease(options);
    self->_options = 0;
  }

  self->_callback = 0;
  self->_callbackRefCon = 0;

  self->_creationTime = 0;
  v5.receiver = self;
  v5.super_class = MXAggregateEndpointCallback;
  [(MXAggregateEndpointCallback *)&v5 dealloc];
}

- (id)_debugStringForOperationType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7AED268[type - 1];
  }
}

@end