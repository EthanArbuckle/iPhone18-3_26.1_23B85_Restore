@interface HMBCloudZoneRebuilderStatus
+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5;
+ (id)keyStatusString:(int64_t)a3;
+ (id)rebuilderStateString:(unint64_t)a3;
- (HMBCloudZoneRebuilderStatus)initWithState:(unint64_t)a3 message:(id)a4;
- (id)attributeDescriptions;
- (id)hmbEncodeForStorageLocation:(unint64_t)a3 error:(id *)a4;
@end

@implementation HMBCloudZoneRebuilderStatus

- (id)attributeDescriptions
{
  v3 = [HMBCloudZoneRebuilderStatus rebuilderStateString:[(HMBCloudZoneRebuilderStatus *)self rebuildState]];
  v4 = [HMBCloudZoneRebuilderStatus keyStatusString:[(HMBCloudZoneRebuilderStatus *)self keyStatus]];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Key Status" value:v4];
  [v5 addObject:v6];

  v7 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Rebuild State" value:v3];
  [v5 addObject:v7];

  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMBCloudZoneRebuilderStatus *)self message];
  v10 = [v8 initWithName:@"Message" value:v9];
  [v5 addObject:v10];

  return v5;
}

- (id)hmbEncodeForStorageLocation:(unint64_t)a3 error:(id *)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"ZCRS.m";
  v6 = [(HMBCloudZoneRebuilderStatus *)self message];
  v12[1] = @"ZCRS.se";
  v13[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBCloudZoneRebuilderStatus rebuildState](self, "rebuildState")}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [v8 hmbOPACKDataFromDictionaryWithError:a4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBCloudZoneRebuilderStatus)initWithState:(unint64_t)a3 message:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMBCloudZoneRebuilderStatus;
  v7 = [(HMBCloudZoneRebuilderStatus *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    message = v7->_message;
    v7->_message = v8;

    if (a3 <= 7)
    {
      v7->_keyStatus = qword_22ADB7078[a3];
    }

    v7->_rebuildState = a3;
  }

  return v7;
}

+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5
{
  v5 = [MEMORY[0x277CBEAC0] hmbDictionaryFromOPACKData:a3 error:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hmf_stringForKey:@"ZCRS.m"];
    v8 = [v6 hmf_numberForKey:@"ZCRS.se"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:v9 message:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keyStatusString:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a3];
  }

  else
  {
    v4 = off_2786E0820[a3];
  }

  return v4;
}

+ (id)rebuilderStateString:(unint64_t)a3
{
  if (a3 >= 8)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a3];
  }

  else
  {
    v4 = off_2786E07E0[a3];
  }

  return v4;
}

@end