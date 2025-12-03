@interface _UIKeyboardArbiterSceneFocusRequest
- (BOOL)isEqual:(id)equal;
- (_UIKeyboardArbiterSceneFocusRequest)initWithShouldStealKeyboardOnSuccess:(BOOL)success;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation _UIKeyboardArbiterSceneFocusRequest

- (_UIKeyboardArbiterSceneFocusRequest)initWithShouldStealKeyboardOnSuccess:(BOOL)success
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterSceneFocusRequest;
  result = [(_UIKeyboardArbiterSceneFocusRequest *)&v5 init];
  if (result)
  {
    result->_shouldStealKeyboardOnSuccess = success;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65___UIKeyboardArbiterSceneFocusRequest_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2797F45E0;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:0 block:v6];
}

@end