@interface NSData(ISImage)
- (uint64_t)__IS_copyCGImageBlockSetWithProvider:()ISImage;
- (uint64_t)__IS_imageHeader;
- (unint64_t)__IS_getImageBuffer:()ISImage size:;
@end

@implementation NSData(ISImage)

- (uint64_t)__IS_imageHeader
{
  v2 = [self length];
  result = [self bytes];
  if (v2 <= 0x30)
  {
    return 0;
  }

  return result;
}

- (unint64_t)__IS_getImageBuffer:()ISImage size:
{
  result = [self __IS_imageHeader];
  if (*(result + 4))
  {
    v6 = result;
    result = [self length];
    if (result >= *(v6 + 4) + 48)
    {
      result = [self bytes];
      if (a3)
      {
        if (result != -48)
        {
          *a3 = result + 48;
        }
      }
    }
  }

  return result;
}

- (uint64_t)__IS_copyCGImageBlockSetWithProvider:()ISImage
{
  v5 = xmmword_1F37DE5E0;
  [self __IS_imageHeader];
  v3 = 0;
  v4 = 0;
  [self __IS_getImageBuffer:&v3 size:&v4];
  result = v3;
  if (v3)
  {
    CGImageBlockCreate();
    return CGImageBlockSetCreate();
  }

  return result;
}

@end