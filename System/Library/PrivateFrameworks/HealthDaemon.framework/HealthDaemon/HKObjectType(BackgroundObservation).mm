@interface HKObjectType(BackgroundObservation)
- (uint64_t)clampedBackgroundObservationFrequency:()BackgroundObservation isAppleWatch:;
@end

@implementation HKObjectType(BackgroundObservation)

- (uint64_t)clampedBackgroundObservationFrequency:()BackgroundObservation isAppleWatch:
{
  if (!a3)
  {
    return a3;
  }

  code = [self code];
  if (!a4)
  {
    if (code > 171)
    {
      if ((code - 172) <= 0x16 && ((1 << (code + 84)) & 0x41C403) != 0 || (code - 294) < 4)
      {
        goto LABEL_18;
      }
    }

    else if ((code - 83) <= 0x37 && ((1 << (code - 83)) & 0x80000858040001) != 0 || code <= 0xA && ((1 << code) & 0x7A0) != 0)
    {
      goto LABEL_18;
    }

    return a3;
  }

  if (code <= 235)
  {
    if (((code - 140) > 0x3B || ((1 << (code + 116)) & 0x802004000010081) == 0) && code != 57 && code != 124)
    {
      goto LABEL_18;
    }

    return a3;
  }

  if ((code - 236) <= 0x39 && ((1 << (code + 20)) & 0x200000000000003) != 0)
  {
    return a3;
  }

LABEL_18:
  if (a3 <= 2)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

@end