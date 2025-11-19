@interface PptMetaCharacterBlock
- (PptMetaCharacterBlock)initWithType:(int)a3 position:(int)a4 extraData:(int)a5;
@end

@implementation PptMetaCharacterBlock

- (PptMetaCharacterBlock)initWithType:(int)a3 position:(int)a4 extraData:(int)a5
{
  v11.receiver = self;
  v11.super_class = PptMetaCharacterBlock;
  result = [(PptMetaCharacterBlock *)&v11 init];
  if (result)
  {
    if (a3 <= 4087)
    {
      if (a3 == 4056)
      {
        v9 = 4;
        goto LABEL_13;
      }

      if (a3 == 4087)
      {
        v9 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      switch(a3)
      {
        case 4090:
          v9 = 0;
          goto LABEL_13;
        case 4089:
          v9 = 3;
          goto LABEL_13;
        case 4088:
          v9 = 1;
LABEL_13:
          result->mType = v9;
          result->mPosition = a4;
          result->mExtraData = a5;
          return result;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  return result;
}

@end