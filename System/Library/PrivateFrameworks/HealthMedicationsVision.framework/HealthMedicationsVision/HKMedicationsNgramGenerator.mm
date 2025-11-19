@interface HKMedicationsNgramGenerator
+ (id)tokensFrom:(id)a3 minimumLength:(int64_t)a4 maximumLength:(int64_t)a5;
@end

@implementation HKMedicationsNgramGenerator

+ (id)tokensFrom:(id)a3 minimumLength:(int64_t)a4 maximumLength:(int64_t)a5
{
  v9 = a3;
  if (a5 < a4 || a4 < 1 || a5 <= 0)
  {
    [(HKMedicationsNgramGenerator *)a2 tokensFrom:a1 minimumLength:a5 maximumLength:a4];
  }

  v10 = [v9 normalizeForType:1];
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (a4 <= a5)
  {
    v12 = 1 - a4;
    do
    {
      v13 = [v10 length];
      if (v13 >= a4)
      {
        v14 = 0;
        v15 = v13 + v12;
        do
        {
          v16 = [v10 substringWithRange:{v14, a4}];
          [v11 addObject:v16];

          ++v14;
        }

        while (v15 != v14);
      }

      --v12;
    }

    while (a4++ != a5);
  }

  v18 = [v11 allObjects];

  return v18;
}

+ (void)tokensFrom:(uint64_t)a3 minimumLength:(uint64_t)a4 maximumLength:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsNgramGenerator.m" lineNumber:22 description:{@"invalid inputs: %ld < %ld", a3, a4}];
}

@end