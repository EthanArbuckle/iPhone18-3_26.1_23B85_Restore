@interface HMBCloudZoneRebuilderStatus
+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error;
+ (id)keyStatusString:(int64_t)string;
+ (id)rebuilderStateString:(unint64_t)string;
- (HMBCloudZoneRebuilderStatus)initWithState:(unint64_t)state message:(id)message;
- (id)attributeDescriptions;
- (id)hmbEncodeForStorageLocation:(unint64_t)location error:(id *)error;
@end

@implementation HMBCloudZoneRebuilderStatus

- (id)attributeDescriptions
{
  v3 = [HMBCloudZoneRebuilderStatus rebuilderStateString:[(HMBCloudZoneRebuilderStatus *)self rebuildState]];
  v4 = [HMBCloudZoneRebuilderStatus keyStatusString:[(HMBCloudZoneRebuilderStatus *)self keyStatus]];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Key Status" value:v4];
  [array addObject:v6];

  v7 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Rebuild State" value:v3];
  [array addObject:v7];

  v8 = objc_alloc(MEMORY[0x277D0F778]);
  message = [(HMBCloudZoneRebuilderStatus *)self message];
  v10 = [v8 initWithName:@"Message" value:message];
  [array addObject:v10];

  return array;
}

- (id)hmbEncodeForStorageLocation:(unint64_t)location error:(id *)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"ZCRS.m";
  message = [(HMBCloudZoneRebuilderStatus *)self message];
  v12[1] = @"ZCRS.se";
  v13[0] = message;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBCloudZoneRebuilderStatus rebuildState](self, "rebuildState")}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [v8 hmbOPACKDataFromDictionaryWithError:error];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBCloudZoneRebuilderStatus)initWithState:(unint64_t)state message:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = HMBCloudZoneRebuilderStatus;
  v7 = [(HMBCloudZoneRebuilderStatus *)&v11 init];
  if (v7)
  {
    v8 = [messageCopy copy];
    message = v7->_message;
    v7->_message = v8;

    if (state <= 7)
    {
      v7->_keyStatus = qword_22ADB7078[state];
    }

    v7->_rebuildState = state;
  }

  return v7;
}

+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error
{
  v5 = [MEMORY[0x277CBEAC0] hmbDictionaryFromOPACKData:data error:error];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hmf_stringForKey:@"ZCRS.m"];
    v8 = [v6 hmf_numberForKey:@"ZCRS.se"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    v10 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:unsignedIntegerValue message:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keyStatusString:(int64_t)string
{
  if (string >= 3)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", string];
  }

  else
  {
    string = off_2786E0820[string];
  }

  return string;
}

+ (id)rebuilderStateString:(unint64_t)string
{
  if (string >= 8)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", string];
  }

  else
  {
    string = off_2786E07E0[string];
  }

  return string;
}

@end