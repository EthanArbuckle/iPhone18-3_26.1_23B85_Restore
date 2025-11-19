@interface NSFileHandle(Additions)
- (BOOL)hk_readValue:()Additions ofSize:error:;
- (BOOL)hk_writeValue:()Additions size:error:;
@end

@implementation NSFileHandle(Additions)

- (BOOL)hk_writeValue:()Additions size:error:
{
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  v9 = [a1 offsetInFile];
  [a1 writeData:v8];
  v10 = v9 + a4 == [a1 offsetInFile];

  v11 = 0;
  if (a5 && !v10)
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:102 description:@"hk_writeValue file size mismatch."];
    v12 = v11;
    *a5 = v11;
  }

  return v10;
}

- (BOOL)hk_readValue:()Additions ofSize:error:
{
  v9 = objc_autoreleasePoolPush();
  v10 = [a1 readDataOfLength:a4];
  v11 = [v10 length];
  v12 = v11 == a4;
  if (v11 == a4)
  {
    memcpy(a3, [v10 bytes], a4);
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:102 description:@"hk_readValue file size mismatch."];
  }

  objc_autoreleasePoolPop(v9);
  if (a5 && !v12)
  {
    v14 = v13;
    *a5 = v13;
  }

  return v12;
}

@end