@interface LACDTOFeatureEnablementModeCoder
- (id)decode:(id)a3;
- (id)encode:(id)a3;
@end

@implementation LACDTOFeatureEnablementModeCoder

- (id)encode:(id)a3
{
  v7 = [a3 rawValue];
  v3 = [LACDTOKVStoreValue alloc];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:1];
  v5 = [(LACDTOKVStoreValue *)v3 initWithData:v4];

  return v5;
}

- (id)decode:(id)a3
{
  v3 = a3;
  v4 = [v3 integerValue];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 == LACDTOFeatureEnablementModeRawValueDisabled)
  {
    v5 = +[LACDTOFeatureEnablementMode disabled];
  }

  else if (v4 == LACDTOFeatureEnablementModeRawValueEnabled)
  {
    v5 = +[LACDTOFeatureEnablementMode enabled];
  }

  else if (v4 == LACDTOFeatureEnablementModeRawValueEnabledWithGracePeriod)
  {
    v5 = +[LACDTOFeatureEnablementMode enabledWithGracePeriod];
  }

  else
  {
    if (v4 != LACDTOFeatureEnablementModeRawValueEnabledWithGracePeriodUnlimited)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
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