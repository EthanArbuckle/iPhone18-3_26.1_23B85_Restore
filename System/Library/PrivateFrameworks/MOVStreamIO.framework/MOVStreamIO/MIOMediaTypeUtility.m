@interface MIOMediaTypeUtility
+ (id)matchingAVMediaTypeFromCMType:(unsigned int)a3;
+ (id)matchingAVMediaTypeFromMIOMediaType:(int64_t)a3;
+ (int64_t)matchingMIOMediaTypeFromCMType:(unsigned int)a3;
@end

@implementation MIOMediaTypeUtility

+ (id)matchingAVMediaTypeFromMIOMediaType:(int64_t)a3
{
  if (a3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_2798483B8 + a3);
  }

  return v4;
}

+ (int64_t)matchingMIOMediaTypeFromCMType:(unsigned int)a3
{
  if (a3 <= 1936684397)
  {
    if (a3 == 1835365473)
    {
      return 2;
    }

    if (a3 == 1935893870)
    {
      return 3;
    }
  }

  else
  {
    switch(a3)
    {
      case 0x76696465u:
        return 0;
      case 0x746D6364u:
        return 4;
      case 0x736F756Eu:
        return 1;
    }
  }

  return -1;
}

+ (id)matchingAVMediaTypeFromCMType:(unsigned int)a3
{
  v3 = [MIOMediaTypeUtility matchingMIOMediaTypeFromCMType:*&a3];

  return [MIOMediaTypeUtility matchingAVMediaTypeFromMIOMediaType:v3];
}

@end