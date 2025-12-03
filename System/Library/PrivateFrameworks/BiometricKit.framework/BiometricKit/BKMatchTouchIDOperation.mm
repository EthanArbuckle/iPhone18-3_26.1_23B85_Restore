@interface BKMatchTouchIDOperation
- (id)optionsDictionaryWithError:(id *)error;
@end

@implementation BKMatchTouchIDOperation

- (id)optionsDictionaryWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = BKMatchTouchIDOperation;
  v4 = [(BKMatchOperation *)&v9 optionsDictionaryWithError:error];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    v6 = v5;
    if (self->_requireFingerOff)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchRequireFingerOff"];
    }

    v7 = v6;
  }

  else
  {
    [BKMatchTouchIDOperation optionsDictionaryWithError:];
    v7 = v10;
  }

  return v7;
}

void __48__BKMatchTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fingerprintCaptureOperation:*(a1 + 32) encounteredCaptureError:*(a1 + 40)];
}

- (void)optionsDictionaryWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
  v5 = *MEMORY[0x1E69E9840];
}

@end