@interface MRUSpatialAudioPreferences
- (MRUSpatialAudioPreferences)initWithMode:(int)a3 headTrackingEnabled:(BOOL)a4;
- (id)description;
- (id)descriptionForSpatialMode:(int)a3;
@end

@implementation MRUSpatialAudioPreferences

- (MRUSpatialAudioPreferences)initWithMode:(int)a3 headTrackingEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = MRUSpatialAudioPreferences;
  result = [(MRUSpatialAudioPreferences *)&v7 init];
  if (result)
  {
    result->_mode = a3;
    result->_isHeadTrackingEnabled = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRUSpatialAudioPreferences *)self descriptionForSpatialMode:self->_mode];
  v6 = v5;
  if (self->_isHeadTrackingEnabled)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"%@ mode: %@ | tracking: %@", v4, v5, v7];

  return v8;
}

- (id)descriptionForSpatialMode:(int)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E76663B8[a3];
  }
}

@end