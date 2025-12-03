@interface MusicKit_SoftLinking_MPModelTVEpisode
+ (int64_t)rawValueForType:(int64_t)type;
+ (int64_t)typeForRawValue:(int64_t)value;
@end

@implementation MusicKit_SoftLinking_MPModelTVEpisode

+ (int64_t)typeForRawValue:(int64_t)value
{
  if ((value - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForType:(int64_t)type
{
  if ((type - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

@end