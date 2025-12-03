@interface CTCarrierSpaceError
+ (id)errorForCode:(int64_t)code;
+ (id)errorForCode:(int64_t)code subdomain:(int64_t)subdomain subdomainError:(int64_t)error;
+ (id)errorForCode:(int64_t)code withDescription:(id)description;
@end

@implementation CTCarrierSpaceError

+ (id)errorForCode:(int64_t)code
{
  v5 = errorDescription(code);
  v6 = [self errorForCode:code withDescription:v5];

  return v6;
}

+ (id)errorForCode:(int64_t)code withDescription:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = descriptionCopy;
  if (descriptionCopy)
  {
    v11 = *MEMORY[0x277CCA450];
    v12[0] = descriptionCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CTCarrierSpaceError" code:code userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)errorForCode:(int64_t)code subdomain:(int64_t)subdomain subdomainError:(int64_t)error
{
  v8 = errorDescription(code);
  if (subdomain == 1)
  {
    v9 = [CTCarrierSpaceDataPlanMetricsError errorDescriptionForCode:error];
  }

  else
  {
    v9 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v9)
  {
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CTCarrierSpaceError" code:code userInfo:dictionary];

  return v11;
}

@end