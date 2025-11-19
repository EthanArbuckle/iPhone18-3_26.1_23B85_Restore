@interface HMDStreamingStatus
- (BOOL)_parseFromTLVData;
- (HMDStreamingStatus)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDStreamingStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[HMDStreamingStatus streamingStatus](self forKey:{"streamingStatus"), @"kStreamingStatus_Status"}];
}

- (HMDStreamingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMDStreamingStatus;
  v5 = [(HMDStreamingStatus *)&v7 init];
  if (v5)
  {
    v5->_streamingStatus = [v4 decodeInt32ForKey:@"kStreamingStatus_Status"];
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HMDStreamingStatusTypeAsString([(HMDStreamingStatus *)self streamingStatus]);
  [v7 appendFormat:@"\n %@ responseStatus = %@ ", v6, v8];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDStreamingStatus streamingStatus](self, "streamingStatus")}];
  [v3 addTLV:1 number:v4];

  v5 = [v3 serialize];

  return v5;
}

- (BOOL)_parseFromTLVData
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kStreamingStatus_Status"];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    v6 = [v3 field];
    self->_streamingStatus = [v6 unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end