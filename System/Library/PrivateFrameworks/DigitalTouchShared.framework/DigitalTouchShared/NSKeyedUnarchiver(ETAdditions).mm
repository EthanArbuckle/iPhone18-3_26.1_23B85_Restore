@interface NSKeyedUnarchiver(ETAdditions)
+ (id)_et_secureUnarchiveObjectOfClass:()ETAdditions withData:;
+ (id)_et_secureUnarchiveObjectOfClasses:()ETAdditions withData:;
@end

@implementation NSKeyedUnarchiver(ETAdditions)

+ (id)_et_secureUnarchiveObjectOfClasses:()ETAdditions withData:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initForReadingFromData:v6 error:0];

  v9 = [v8 decodeObjectOfClasses:v7 forKey:@"root"];

  return v9;
}

+ (id)_et_secureUnarchiveObjectOfClass:()ETAdditions withData:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [v5 _et_secureUnarchiveObjectOfClasses:v8 withData:v7];

  return v9;
}

@end