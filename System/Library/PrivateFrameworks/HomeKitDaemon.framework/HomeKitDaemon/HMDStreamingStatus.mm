@interface HMDStreamingStatus
- (BOOL)_parseFromTLVData;
- (HMDStreamingStatus)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDStreamingStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[HMDStreamingStatus streamingStatus](self forKey:{"streamingStatus"), @"kStreamingStatus_Status"}];
}

- (HMDStreamingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMDStreamingStatus;
  v5 = [(HMDStreamingStatus *)&v7 init];
  if (v5)
  {
    v5->_streamingStatus = [coderCopy decodeInt32ForKey:@"kStreamingStatus_Status"];
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDStreamingStatusTypeAsString([(HMDStreamingStatus *)self streamingStatus]);
  [descriptionCopy appendFormat:@"\n %@ responseStatus = %@ ", indentCopy, v8];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDStreamingStatus streamingStatus](self, "streamingStatus")}];
  [creator addTLV:1 number:v4];

  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    self->_streamingStatus = [field unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end