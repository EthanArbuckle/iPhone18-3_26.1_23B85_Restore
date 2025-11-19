@interface BRLTPreprocessorHelper
+ (id)mergeLocationMap:(id)a3 withLocationMap:(id)a4;
+ (void)mergePreprocessorOutputLocationMap:(id)a3 outputToPreprocessedMap:(int *)a4 outputLen:(int64_t)a5 outputToTextMap:(id *)a6;
@end

@implementation BRLTPreprocessorHelper

+ (id)mergeLocationMap:(id)a3 withLocationMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 bytes];
    v9 = [v7 length];
    v10 = [v5 bytes];
    v11 = [v5 length];
    v12 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v7, "length")}];
    if (v9 >= 8)
    {
      v13 = v9 >> 3;
      v14 = v11 >> 3;
      do
      {
        if (*v8 >= v14)
        {
          v16 = v12;
          v15 = v8;
        }

        else
        {
          v18 = *(v10 + 8 * *v8);
          v15 = &v18;
          v16 = v12;
        }

        [v16 appendBytes:v15 length:8];
        ++v8;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

+ (void)mergePreprocessorOutputLocationMap:(id)a3 outputToPreprocessedMap:(int *)a4 outputLen:(int64_t)a5 outputToTextMap:(id *)a6
{
  v9 = a3;
  if (v9 && a4 && a6)
  {
    v10 = 8 * a5;
    v16 = v9;
    v11 = malloc_type_malloc(8 * a5, 0xE9777531uLL);
    v12 = v16;
    v13 = [v16 bytes];
    if (a5 >= 1)
    {
      v14 = v11;
      do
      {
        v15 = *a4++;
        *v14++ = *(v13 + 8 * v15);
        --a5;
      }

      while (a5);
    }

    *a6 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v10];
    free(v11);
    v9 = v16;
  }
}

@end