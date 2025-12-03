@interface NUTestPatternImage
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation NUTestPatternImage

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  infoCopy = info;
  v15 = [infoCopy objectForKeyedSubscript:@"width"];
  intValue = [v15 intValue];

  v17 = [infoCopy objectForKeyedSubscript:@"height"];
  intValue2 = [v17 intValue];

  if (a8)
  {
    v19 = 0;
    v20 = intValue - 1;
    v21 = intValue2 - 1;
    v22 = data + 3;
    v23 = a6;
    do
    {
      if (size)
      {
        v24 = v19 + a6;
        v25 = v22;
        originCopy = origin;
        sizeCopy = size;
        do
        {
          *(v25 - 3) = -1;
          v28 = originCopy == 0;
          if (v20 == originCopy)
          {
            v28 = 1;
          }

          if (v28 | (v24 == 0) | originCopy & 1 | (v24 == v21))
          {
            v29 = 0;
          }

          else
          {
            v29 = ((v19 + a6) & 1) - 1;
          }

          *(v25 - 2) = v29;
          *(v25 - 1) = -((v23 + originCopy) & 1);
          *v25 = ((originCopy & v24 & ~(v20 == originCopy) & (v24 != v21)) << 31) >> 31;
          v25 += 4;
          ++originCopy;
          --sizeCopy;
        }

        while (sizeCopy);
      }

      ++v19;
      v22 += row;
      ++v23;
    }

    while (v19 != a8);
  }
}

@end