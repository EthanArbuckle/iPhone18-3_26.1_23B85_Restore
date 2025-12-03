@interface NSUUID(HMB)
+ (id)hmbDecodeQueryableParameter:()HMB;
+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB;
+ (id)hmbUUIDFromData:()HMB;
- (id)data;
@end

@implementation NSUUID(HMB)

- (id)data
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)hmbUUIDFromData:()HMB
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if ([v3 length] == 16)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [NSUUID(HMB) hmbDescriptionForEncodedQueryableVariable:v7];
  }
}

+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    hmbDescription = [MEMORY[0x277CCAD78] hmbUUIDFromData:v3];

    [hmbDescription UUIDString];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    hmbDescription = [v3 hmbDescription];

    [v5 stringWithFormat:@"<MALFORMED UUID: %@>", hmbDescription];
  }
  v6 = ;

  return v6;
}

+ (id)hmbDecodeQueryableParameter:()HMB
{
  v0 = [MEMORY[0x277CCAD78] hmbUUIDFromData:?];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  return v1;
}

@end