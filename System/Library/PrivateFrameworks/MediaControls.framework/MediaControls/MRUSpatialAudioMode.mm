@interface MRUSpatialAudioMode
- (BOOL)isEqual:(id)a3;
- (MRUSpatialAudioMode)initWithType:(int64_t)a3 isEnabled:(BOOL)a4;
@end

@implementation MRUSpatialAudioMode

- (MRUSpatialAudioMode)initWithType:(int64_t)a3 isEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MRUSpatialAudioMode;
  result = [(MRUSpatialAudioMode *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_isEnabled = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(MRUSpatialAudioMode *)v5 type];
      [(MRUSpatialAudioMode *)v5 isEnabled];
    }
  }

  return self == v4;
}

@end