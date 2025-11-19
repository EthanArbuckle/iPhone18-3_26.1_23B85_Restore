@interface CRKASMHasher
+ (unint64_t)asmHashForString:(id)a3 maximumExclusive:(unint64_t)a4;
@end

@implementation CRKASMHasher

+ (unint64_t)asmHashForString:(id)a3 maximumExclusive:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v13 = 0;
    v6 = malloc_type_malloc(2 * [v5 length], 0x100004077774924uLL);
    v7 = 0;
    if ([v5 getBytes:v6 maxLength:2 * objc_msgSend(v5 usedLength:"length") encoding:&v13 options:4 range:1 remainingRange:{0, objc_msgSend(v5, "length"), 0}])
    {
      v8 = v13;
      if (v13)
      {
        LODWORD(v9) = 0;
        v10 = v6;
        do
        {
          v11 = *v10++;
          v9 = (v11 - v9 + 32 * v9);
          --v8;
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      v7 = v9 % a4;
    }

    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end