@interface PptMetaCharacterBlock
- (PptMetaCharacterBlock)initWithType:(int)type position:(int)position extraData:(int)data;
@end

@implementation PptMetaCharacterBlock

- (PptMetaCharacterBlock)initWithType:(int)type position:(int)position extraData:(int)data
{
  v11.receiver = self;
  v11.super_class = PptMetaCharacterBlock;
  result = [(PptMetaCharacterBlock *)&v11 init];
  if (result)
  {
    if (type <= 4087)
    {
      if (type == 4056)
      {
        v9 = 4;
        goto LABEL_13;
      }

      if (type == 4087)
      {
        v9 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      switch(type)
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
          result->mPosition = position;
          result->mExtraData = data;
          return result;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  return result;
}

@end