@interface MusicKit_SoftLinking_MPModelLibraryPin
+ (int64_t)_underlyingPinActionForAction:(int64_t)a3;
+ (int64_t)actionForRawValue:(int64_t)a3;
+ (int64_t)rawValueForType:(int64_t)a3;
+ (int64_t)typeForRawValue:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPin

+ (int64_t)actionForRawValue:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (int64_t)_underlyingPinActionForAction:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)typeForRawValue:(int64_t)a3
{
  if (a3 > 4)
  {
    return 4;
  }

  else
  {
    return qword_1D5619C38[a3];
  }
}

+ (int64_t)rawValueForType:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 5 - a3;
  }
}

@end