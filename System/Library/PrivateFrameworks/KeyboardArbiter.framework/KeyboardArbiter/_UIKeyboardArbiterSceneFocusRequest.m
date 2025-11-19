@interface _UIKeyboardArbiterSceneFocusRequest
- (BOOL)isEqual:(id)a3;
- (_UIKeyboardArbiterSceneFocusRequest)initWithShouldStealKeyboardOnSuccess:(BOOL)a3;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIKeyboardArbiterSceneFocusRequest

- (_UIKeyboardArbiterSceneFocusRequest)initWithShouldStealKeyboardOnSuccess:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterSceneFocusRequest;
  result = [(_UIKeyboardArbiterSceneFocusRequest *)&v5 init];
  if (result)
  {
    result->_shouldStealKeyboardOnSuccess = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 == self || v8->_shouldStealKeyboardOnSuccess == self->_shouldStealKeyboardOnSuccess;
  return v9;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65___UIKeyboardArbiterSceneFocusRequest_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2797F45E0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

@end