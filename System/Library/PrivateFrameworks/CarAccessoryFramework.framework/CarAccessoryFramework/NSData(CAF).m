@interface NSData(CAF)
+ (id)CAF_encodeBinaryPlistFrom:()CAF error:;
- (id)CAF_decodeBinaryPlist:()CAF;
@end

@implementation NSData(CAF)

+ (id)CAF_encodeBinaryPlistFrom:()CAF error:
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)CAF_decodeBinaryPlist:()CAF
{
  v10 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a1 options:0 format:&v10 error:a3];
  v5 = v4;
  if (v10 == 200)
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    *a3 = [v7 CAF_invalidDataForFormat:v8];

    v6 = 0;
  }

  return v6;
}

@end