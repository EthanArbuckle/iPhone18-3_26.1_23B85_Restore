@interface HKMedicationsNgramGenerator
+ (id)tokensFrom:(id)from minimumLength:(int64_t)length maximumLength:(int64_t)maximumLength;
@end

@implementation HKMedicationsNgramGenerator

+ (id)tokensFrom:(id)from minimumLength:(int64_t)length maximumLength:(int64_t)maximumLength
{
  fromCopy = from;
  if (maximumLength < length || length < 1 || maximumLength <= 0)
  {
    [(HKMedicationsNgramGenerator *)a2 tokensFrom:self minimumLength:maximumLength maximumLength:length];
  }

  v10 = [fromCopy normalizeForType:1];
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (length <= maximumLength)
  {
    v12 = 1 - length;
    do
    {
      v13 = [v10 length];
      if (v13 >= length)
      {
        v14 = 0;
        v15 = v13 + v12;
        do
        {
          v16 = [v10 substringWithRange:{v14, length}];
          [v11 addObject:v16];

          ++v14;
        }

        while (v15 != v14);
      }

      --v12;
    }

    while (length++ != maximumLength);
  }

  allObjects = [v11 allObjects];

  return allObjects;
}

+ (void)tokensFrom:(uint64_t)a3 minimumLength:(uint64_t)a4 maximumLength:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsNgramGenerator.m" lineNumber:22 description:{@"invalid inputs: %ld < %ld", a3, a4}];
}

@end