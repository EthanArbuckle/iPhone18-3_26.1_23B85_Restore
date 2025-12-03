@interface MusicKit_SoftLinking_MPModelLibraryPin
+ (int64_t)_underlyingPinActionForAction:(int64_t)action;
+ (int64_t)actionForRawValue:(int64_t)value;
+ (int64_t)rawValueForType:(int64_t)type;
+ (int64_t)typeForRawValue:(int64_t)value;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPin

+ (int64_t)actionForRawValue:(int64_t)value
{
  if (value == 3)
  {
    return 2;
  }

  else
  {
    return value == 2;
  }
}

+ (int64_t)_underlyingPinActionForAction:(int64_t)action
{
  v3 = 1;
  if (action == 1)
  {
    v3 = 2;
  }

  if (action == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)typeForRawValue:(int64_t)value
{
  if (value > 4)
  {
    return 4;
  }

  else
  {
    return qword_1D5619C38[value];
  }
}

+ (int64_t)rawValueForType:(int64_t)type
{
  if ((type - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 5 - type;
  }
}

@end