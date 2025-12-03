@interface _MPCQueueControllerRegistry
+ (_MPCQueueControllerRegistry)shared;
- (_MPCQueueControllerRegistry)init;
@end

@implementation _MPCQueueControllerRegistry

+ (_MPCQueueControllerRegistry)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_800);
  }

  v3 = shared___shared;

  return v3;
}

- (_MPCQueueControllerRegistry)init
{
  v14.receiver = self;
  v14.super_class = _MPCQueueControllerRegistry;
  v3 = [(_MPCQueueControllerRegistry *)&v14 init];
  if (v3)
  {
    v4 = [MEMORY[0x1E69708B8] proxyForObjects:MEMORY[0x1E695E0F0] protocol:&unk_1F45C03A8];
    publisherProxy = v3->_publisherProxy;
    v3->_publisherProxy = v4;

    v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:6];
    transportableExtensions = v3->_transportableExtensions;
    v3->_transportableExtensions = v6;

    for (i = 0; i != 6; ++i)
    {
      if (i > 4)
      {
        v9 = __testBehaviorClass;
      }

      else
      {
        v9 = objc_opt_class();
      }

      v10 = v9;
      if ([v9 conformsToProtocol:&unk_1F45A1DD8])
      {
        v11 = [v10 makeExtensionWithInvalidatable:v3->_publisherProxy];
        if (!v11)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:v3 file:@"MPCQueueController.m" lineNumber:2005 description:{@"Behavior conforms to MPCQueueControllerBehaviorTransportableImplementation, but failed to provide transportable extension"}];
        }

        NSMapInsert(v3->_transportableExtensions, i, v11);
      }
    }
  }

  return v3;
}

@end