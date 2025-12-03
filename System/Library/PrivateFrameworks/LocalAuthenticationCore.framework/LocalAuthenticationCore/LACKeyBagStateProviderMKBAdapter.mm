@interface LACKeyBagStateProviderMKBAdapter
- (LACKeyBagStateProviderMKBAdapter)initWithUserId:(unsigned int)id;
- (int64_t)state;
@end

@implementation LACKeyBagStateProviderMKBAdapter

- (int64_t)state
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"DeviceHandle";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_userId];
  v7[0] = v2;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = MKBGetDeviceLockState();

  if ((v3 + 8) > 0xB)
  {
    result = 0;
  }

  else
  {
    result = qword_1B03407F0[v3 + 8];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (LACKeyBagStateProviderMKBAdapter)initWithUserId:(unsigned int)id
{
  v5.receiver = self;
  v5.super_class = LACKeyBagStateProviderMKBAdapter;
  result = [(LACKeyBagStateProviderMKBAdapter *)&v5 init];
  if (result)
  {
    result->_userId = id;
  }

  return result;
}

@end