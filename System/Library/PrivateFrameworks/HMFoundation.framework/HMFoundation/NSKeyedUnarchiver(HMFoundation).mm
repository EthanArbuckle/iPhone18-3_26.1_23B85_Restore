@interface NSKeyedUnarchiver(HMFoundation)
+ (id)hmf_unarchivedObjectOfClass:()HMFoundation fromClassName:fromData:error:;
@end

@implementation NSKeyedUnarchiver(HMFoundation)

+ (id)hmf_unarchivedObjectOfClass:()HMFoundation fromClassName:fromData:error:
{
  v9 = a4;
  v10 = MEMORY[0x277CCAAC8];
  v11 = a5;
  v12 = [[v10 alloc] initForReadingFromData:v11 error:a6];

  if (v12)
  {
    [v12 setDecodingFailurePolicy:1];
    if (v9)
    {
      [v12 setClass:a3 forClassName:v9];
    }

    v13 = [v12 decodeTopLevelObjectOfClass:a3 forKey:*MEMORY[0x277CCA308] error:a6];
    [v12 finishDecoding];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end