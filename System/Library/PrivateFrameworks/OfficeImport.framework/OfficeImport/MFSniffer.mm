@interface MFSniffer
+ (int)fileType:(id)type;
@end

@implementation MFSniffer

+ (int)fileType:(id)type
{
  typeCopy = type;
  bytes = [typeCopy bytes];
  v5 = [typeCopy length];
  v6 = 2;
  if (bytes && v5 > 3)
  {
    v7 = *bytes;
    v8 = *(bytes + 2);
    v9 = *(bytes + 3);
    if (v7 <= 1 && (v8 | (v9 << 8)) == 9)
    {
      v6 = 0;
    }

    else
    {
      v11 = (v9 << 24) | (v8 << 16) | v7;
      v6 = 2 * (v11 != -1698247209);
      if (v5 >= 0x2C && v11 != -1698247209)
      {
        if (*(bytes + 10) == 1179469088)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }
      }
    }
  }

  return v6;
}

@end