@interface NSKeyedUnarchiver(FRAdditions)
+ (id)nf_securelyUnarchiveObjectOfClass:()FRAdditions withData:;
+ (id)nf_securelyUnarchiveObjectOfClass:()FRAdditions withFile:;
+ (id)nf_securelyUnarchiveObjectOfClasses:()FRAdditions withData:;
+ (id)nf_securelyUnarchiveObjectOfClasses:()FRAdditions withFile:;
@end

@implementation NSKeyedUnarchiver(FRAdditions)

+ (id)nf_securelyUnarchiveObjectOfClass:()FRAdditions withData:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a4;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:0];

  v8 = [v7 nf_securelyUnarchiveObjectOfClass:a3];

  return v8;
}

+ (id)nf_securelyUnarchiveObjectOfClass:()FRAdditions withFile:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a4];
  v7 = [v5 nf_securelyUnarchiveObjectOfClass:a3 withData:v6];

  return v7;
}

+ (id)nf_securelyUnarchiveObjectOfClasses:()FRAdditions withData:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initForReadingFromData:v6 error:0];

  v9 = [v8 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];

  return v9;
}

+ (id)nf_securelyUnarchiveObjectOfClasses:()FRAdditions withFile:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEA90];
  v7 = a3;
  v8 = [v6 dataWithContentsOfFile:a4];
  v9 = [v5 nf_securelyUnarchiveObjectOfClasses:v7 withData:v8];

  return v9;
}

@end