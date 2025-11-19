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

  v6 = [a1 code];
  if (!a4)
  {
    if (v6 > 171)
    {
      if ((v6 - 172) <= 0x16 && ((1 << (v6 + 84)) & 0x41C403) != 0 || (v6 - 294) < 4)
      {
        goto LABEL_18;
      }
    }

    else if ((v6 - 83) <= 0x37 && ((1 << (v6 - 83)) & 0x80000858040001) != 0 || v6 <= 0xA && ((1 << v6) & 0x7A0) != 0)
    {
      goto LABEL_18;
    }

    return a3;
  }

  if (v6 <= 235)
  {
    if (((v6 - 140) > 0x3B || ((1 << (v6 + 116)) & 0x802004000010081) == 0) && v6 != 57 && v6 != 124)
    {
      goto LABEL_18;
    }

    return a3;
  }

  if ((v6 - 236) <= 0x39 && ((1 << (v6 + 20)) & 0x200000000000003) != 0)
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