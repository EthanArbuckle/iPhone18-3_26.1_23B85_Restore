@interface NSError(MSDExtension)
+ (id)errorDomainMSDWithCode:()MSDExtension message:;
+ (id)errorDomainMSDWithCode:()MSDExtension message:reason:;
+ (id)masterServerErrorRetryAfter:()MSDExtension;
+ (id)masterServerErrorWithCode:()MSDExtension mesage:reason:;
- (uint64_t)initWithDomainMSDCode:()MSDExtension message:;
- (uint64_t)initWithDomainMSDCode:()MSDExtension message:reason:;
@end

@implementation NSError(MSDExtension)

+ (id)errorDomainMSDWithCode:()MSDExtension message:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [[v5 alloc] initWithDomainMSDCode:a3 message:v6];

  return v7;
}

+ (id)errorDomainMSDWithCode:()MSDExtension message:reason:
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithDomainMSDCode:a3 message:v9 reason:v8];

  return v10;
}

+ (id)masterServerErrorWithCode:()MSDExtension mesage:reason:
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x277CCA450]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:*MEMORY[0x277CCA470]];
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MSDMasterServerErrorDomain" code:a3 userInfo:v10];

  return v11;
}

+ (id)masterServerErrorRetryAfter:()MSDExtension
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:0];
  [v5 setObject:v4 forKey:@"RetryAfter"];

  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MSDMasterServerErrorDomain" code:202 userInfo:v5];

  return v6;
}

- (uint64_t)initWithDomainMSDCode:()MSDExtension message:
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a4 forKey:*MEMORY[0x277CCA450]];
  v7 = [self initWithDomain:@"MSDDemodErrorDomain" code:a3 userInfo:v6];

  return v7;
}

- (uint64_t)initWithDomainMSDCode:()MSDExtension message:reason:
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a4, *MEMORY[0x277CCA450], a5, *MEMORY[0x277CCA470], 0}];
  v8 = [self initWithDomain:@"MSDDemodErrorDomain" code:a3 userInfo:v7];

  return v8;
}

@end