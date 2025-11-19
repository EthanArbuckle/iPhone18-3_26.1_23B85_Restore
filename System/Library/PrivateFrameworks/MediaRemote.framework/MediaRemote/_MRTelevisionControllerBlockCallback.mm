@interface _MRTelevisionControllerBlockCallback
- (_MRTelevisionControllerBlockCallback)initWithCallbackBlock:(id)a3 queue:(id)a4;
@end

@implementation _MRTelevisionControllerBlockCallback

- (_MRTelevisionControllerBlockCallback)initWithCallbackBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MRTelevisionControllerBlockCallback;
  v8 = [(_MRTelevisionControllerBlockCallback *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      if (v7)
      {
LABEL_4:
        v9 = [v6 copy];
        callbackBlock = v8->_callbackBlock;
        v8->_callbackBlock = v9;

        objc_storeStrong(&v8->_queue, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [_MRTelevisionControllerBlockCallback initWithCallbackBlock:queue:];
      if (v7)
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