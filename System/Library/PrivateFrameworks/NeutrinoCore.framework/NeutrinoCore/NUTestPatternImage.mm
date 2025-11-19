@interface NUTestPatternImage
- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9;
@end

@implementation NUTestPatternImage

- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9
{
  v30 = a9;
  v15 = [v30 objectForKeyedSubscript:@"width"];
  v16 = [v15 intValue];

  v17 = [v30 objectForKeyedSubscript:@"height"];
  v18 = [v17 intValue];

  if (a8)
  {
    v19 = 0;
    v20 = v16 - 1;
    v21 = v18 - 1;
    v22 = a3 + 3;
    v23 = a6;
    do
    {
      if (a7)
      {
        v24 = v19 + a6;
        v25 = v22;
        v26 = a5;
        v27 = a7;
        do
        {
          *(v25 - 3) = -1;
          v28 = v26 == 0;
          if (v20 == v26)
          {
            v28 = 1;
          }

          if (v28 | (v24 == 0) | v26 & 1 | (v24 == v21))
          {
            v29 = 0;
          }

          else
          {
            v29 = ((v19 + a6) & 1) - 1;
          }

          *(v25 - 2) = v29;
          *(v25 - 1) = -((v23 + v26) & 1);
          *v25 = ((v26 & v24 & ~(v20 == v26) & (v24 != v21)) << 31) >> 31;
          v25 += 4;
          ++v26;
          --v27;
        }

        while (v27);
      }

      ++v19;
      v22 += a4;
      ++v23;
    }

    while (v19 != a8);
  }
}

@end