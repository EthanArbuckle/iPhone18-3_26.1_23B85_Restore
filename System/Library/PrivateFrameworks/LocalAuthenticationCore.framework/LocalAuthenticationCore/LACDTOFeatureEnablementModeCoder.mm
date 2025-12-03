@interface LACDTOFeatureEnablementModeCoder
- (id)decode:(id)decode;
- (id)encode:(id)encode;
@end

@implementation LACDTOFeatureEnablementModeCoder

- (id)encode:(id)encode
{
  rawValue = [encode rawValue];
  v3 = [LACDTOKVStoreValue alloc];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&rawValue length:1];
  v5 = [(LACDTOKVStoreValue *)v3 initWithData:v4];

  return v5;
}

- (id)decode:(id)decode
{
  decodeCopy = decode;
  integerValue = [decodeCopy integerValue];
  if (integerValue == 0x7FFFFFFFFFFFFFFFLL || integerValue == LACDTOFeatureEnablementModeRawValueDisabled)
  {
    v5 = +[LACDTOFeatureEnablementMode disabled];
  }

  else if (integerValue == LACDTOFeatureEnablementModeRawValueEnabled)
  {
    v5 = +[LACDTOFeatureEnablementMode enabled];
  }

  else if (integerValue == LACDTOFeatureEnablementModeRawValueEnabledWithGracePeriod)
  {
    v5 = +[LACDTOFeatureEnablementMode enabledWithGracePeriod];
  }

  else
  {
    if (integerValue != LACDTOFeatureEnablementModeRawValueEnabledWithGracePeriodUnlimited)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      v12 = [v10 stringWithFormat:@"Unrecognized enablement flag: %@", v11];
      v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }

    v5 = +[LACDTOFeatureEnablementMode enabledWithGracePeriodUnlimited];
  }

  v6 = v5;

  return v6;
}

@end