@interface MXAggregateEndpointCallback
- (MXAggregateEndpointCallback)initWithAggregate:(OpaqueFigEndpoint *)a3 features:(unint64_t)a4 options:(id)a5 callback:(void *)a6 callbackRefCon:(void *)a7 operationType:(unint64_t)a8;
- (id)_debugStringForOperationType:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MXAggregateEndpointCallback

- (MXAggregateEndpointCallback)initWithAggregate:(OpaqueFigEndpoint *)a3 features:(unint64_t)a4 options:(id)a5 callback:(void *)a6 callbackRefCon:(void *)a7 operationType:(unint64_t)a8
{
  v17.receiver = self;
  v17.super_class = MXAggregateEndpointCallback;
  v14 = [(MXAggregateEndpointCallback *)&v17 init];
  if (v14)
  {
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    v14->_endpoint = v15;
    v14->_features = a4;
    v14->_options = [a5 copy];
    v14->_callback = a6;
    v14->_callbackRefCon = a7;
    v14->_operationType = a8;
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

- (id)_debugStringForOperationType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7AED268[a3 - 1];
  }
}

@end