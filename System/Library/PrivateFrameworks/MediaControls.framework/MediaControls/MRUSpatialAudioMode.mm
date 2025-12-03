@interface MRUSpatialAudioMode
- (BOOL)isEqual:(id)equal;
- (MRUSpatialAudioMode)initWithType:(int64_t)type isEnabled:(BOOL)enabled;
@end

@implementation MRUSpatialAudioMode

- (MRUSpatialAudioMode)initWithType:(int64_t)type isEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = MRUSpatialAudioMode;
  result = [(MRUSpatialAudioMode *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_isEnabled = enabled;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(MRUSpatialAudioMode *)v5 type];
      [(MRUSpatialAudioMode *)v5 isEnabled];
    }
  }

  return self == equalCopy;
}

@end