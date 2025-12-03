@interface _CDPrivacyPolicy
+ (id)sharedPrivacyPolicy;
- (_CDPrivacyPolicy)initWithTemporalPrecision:(double)precision canPersistOnStorage:(BOOL)storage;
- (id)description;
@end

@implementation _CDPrivacyPolicy

+ (id)sharedPrivacyPolicy
{
  if (sharedPrivacyPolicy_onceToken != -1)
  {
    +[_CDPrivacyPolicy sharedPrivacyPolicy];
  }

  v3 = sharedPrivacyPolicy__sharedPrivacyPolicy;

  return v3;
}

- (_CDPrivacyPolicy)initWithTemporalPrecision:(double)precision canPersistOnStorage:(BOOL)storage
{
  v7.receiver = self;
  v7.super_class = _CDPrivacyPolicy;
  result = [(_CDPrivacyPolicy *)&v7 init];
  if (result)
  {
    result->temporalPrecision = precision;
    result->canPersistOnStorage = storage;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { temporalPrecision=%f, canPersistOnStorage=%d }", v5, *&self->temporalPrecision, self->canPersistOnStorage];

  return v6;
}

@end