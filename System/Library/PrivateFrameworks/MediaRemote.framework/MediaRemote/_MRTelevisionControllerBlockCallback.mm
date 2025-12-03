@interface _MRTelevisionControllerBlockCallback
- (_MRTelevisionControllerBlockCallback)initWithCallbackBlock:(id)block queue:(id)queue;
@end

@implementation _MRTelevisionControllerBlockCallback

- (_MRTelevisionControllerBlockCallback)initWithCallbackBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = _MRTelevisionControllerBlockCallback;
  v8 = [(_MRTelevisionControllerBlockCallback *)&v12 init];
  if (v8)
  {
    if (blockCopy)
    {
      if (queueCopy)
      {
LABEL_4:
        v9 = [blockCopy copy];
        callbackBlock = v8->_callbackBlock;
        v8->_callbackBlock = v9;

        objc_storeStrong(&v8->_queue, queue);
        goto LABEL_5;
      }
    }

    else
    {
      [_MRTelevisionControllerBlockCallback initWithCallbackBlock:queue:];
      if (queueCopy)
      {
        goto LABEL_4;
      }
    }

    [_MRTelevisionControllerBlockCallback initWithCallbackBlock:queue:];
    goto LABEL_4;
  }

LABEL_5:

  return v8;
}

- (void)initWithCallbackBlock:queue:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"callback" object:? file:? lineNumber:? description:?];
}

- (void)initWithCallbackBlock:queue:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

@end