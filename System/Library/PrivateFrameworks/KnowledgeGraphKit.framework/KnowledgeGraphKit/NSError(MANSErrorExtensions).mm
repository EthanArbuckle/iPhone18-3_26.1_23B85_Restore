@interface NSError(MANSErrorExtensions)
+ (id)errorWithDescription:()MANSErrorExtensions;
+ (id)errorWithDomain:()MANSErrorExtensions code:localizedDescription:;
+ (id)errorWithDomain:()MANSErrorExtensions code:localizedDescription:userInfo:;
@end

@implementation NSError(MANSErrorExtensions)

+ (id)errorWithDescription:()MANSErrorExtensions
{
  v3 = a3;
  v4 = [objc_opt_class() errorWithDomain:@"MAErrorDomain" code:-1 localizedDescription:v3];

  return v4;
}

+ (id)errorWithDomain:()MANSErrorExtensions code:localizedDescription:
{
  v7 = MEMORY[0x277CBEAC0];
  v8 = *MEMORY[0x277CCA450];
  v9 = a3;
  v10 = [v7 dictionaryWithObject:a5 forKey:v8];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:a4 userInfo:v10];

  return v11;
}

+ (id)errorWithDomain:()MANSErrorExtensions code:localizedDescription:userInfo:
{
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x277CBEB38];
  v12 = a3;
  dictionary = [v11 dictionary];
  v14 = dictionary;
  if (v10)
  {
    [dictionary addEntriesFromDictionary:v10];
  }

  [v14 setObject:v9 forKey:*MEMORY[0x277CCA450]];
  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:a4 userInfo:v10];

  return v15;
}

@end