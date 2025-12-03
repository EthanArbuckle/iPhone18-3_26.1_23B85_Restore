@interface CSSafetyOneArgumentCompletionBlock
- (CSSafetyOneArgumentCompletionBlock)initWithDefaultValue:(id)value completionBlock:(id)block;
- (void)dealloc;
- (void)invokeWithValue:(id)value;
@end

@implementation CSSafetyOneArgumentCompletionBlock

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSSafetyOneArgumentCompletionBlock dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(CSSafetyOneArgumentCompletionBlock *)self invokeWithValue:self->_defaultValue];
  v5.receiver = self;
  v5.super_class = CSSafetyOneArgumentCompletionBlock;
  [(CSSafetyOneArgumentCompletionBlock *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)invokeWithValue:(id)value
{
  v11 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_isDirty)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315395;
      v8 = "[CSSafetyOneArgumentCompletionBlock invokeWithValue:]";
      v9 = 2113;
      v10 = valueCopy;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s invoking with value %{private}@", &v7, 0x16u);
    }

    self->_isDirty = 1;
    (*(self->_block + 2))();
  }

  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x1E69E9840];
}

- (CSSafetyOneArgumentCompletionBlock)initWithDefaultValue:(id)value completionBlock:(id)block
{
  valueCopy = value;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CSSafetyOneArgumentCompletionBlock;
  v9 = [(CSSafetyOneArgumentCompletionBlock *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = MEMORY[0x1E12BA300](blockCopy);
    block = v10->_block;
    v10->_block = v11;

    objc_storeStrong(&v10->_defaultValue, value);
  }

  return v10;
}

@end