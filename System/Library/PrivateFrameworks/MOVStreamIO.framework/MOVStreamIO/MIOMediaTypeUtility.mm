@interface MIOMediaTypeUtility
+ (id)matchingAVMediaTypeFromCMType:(unsigned int)type;
+ (id)matchingAVMediaTypeFromMIOMediaType:(int64_t)type;
+ (int64_t)matchingMIOMediaTypeFromCMType:(unsigned int)type;
@end

@implementation MIOMediaTypeUtility

+ (id)matchingAVMediaTypeFromMIOMediaType:(int64_t)type
{
  if (type > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_2798483B8 + type);
  }

  return v4;
}

+ (int64_t)matchingMIOMediaTypeFromCMType:(unsigned int)type
{
  if (type <= 1936684397)
  {
    if (type == 1835365473)
    {
      return 2;
    }

    if (type == 1935893870)
    {
      return 3;
    }
  }

  else
  {
    switch(type)
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

+ (id)matchingAVMediaTypeFromCMType:(unsigned int)type
{
  v3 = [MIOMediaTypeUtility matchingMIOMediaTypeFromCMType:*&type];

  return [MIOMediaTypeUtility matchingAVMediaTypeFromMIOMediaType:v3];
}

@end