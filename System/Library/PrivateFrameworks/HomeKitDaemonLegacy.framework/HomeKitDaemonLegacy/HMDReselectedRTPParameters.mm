@interface HMDReselectedRTPParameters
- (BOOL)_parseFromTLVData;
- (HMDReselectedRTPParameters)initWithCoder:(id)coder;
- (HMDReselectedRTPParameters)initWithMaximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDReselectedRTPParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minimumBitrate = [(HMDReselectedRTPParameters *)self minimumBitrate];
  [coderCopy encodeObject:minimumBitrate forKey:@"kRTPParameters_MinimumVideoBandwidth"];

  maximumBitrate = [(HMDReselectedRTPParameters *)self maximumBitrate];
  [coderCopy encodeObject:maximumBitrate forKey:@"kRTPParameters_MaximumVideoBandwidth"];

  rtcpInterval = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [coderCopy encodeObject:rtcpInterval forKey:@"kRTPParameters_RTCPInterval"];
}

- (HMDReselectedRTPParameters)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HMDReselectedRTPParameters;
  v5 = [(HMDReselectedRTPParameters *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kRTPParameters_MinimumVideoBandwidth"];
    minimumBitrate = v5->_minimumBitrate;
    v5->_minimumBitrate = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kRTPParameters_MaximumVideoBandwidth"];
    maximumBitrate = v5->_maximumBitrate;
    v5->_maximumBitrate = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kRTPParameters_RTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  minimumBitrate = [(HMDReselectedRTPParameters *)self minimumBitrate];
  [descriptionCopy appendFormat:@"\n %@ minimumBitrate = %@ ", indentCopy, minimumBitrate];

  maximumBitrate = [(HMDReselectedRTPParameters *)self maximumBitrate];
  [descriptionCopy appendFormat:@"\n %@ maximumBitrate = %@ ", indentCopy, maximumBitrate];

  rtcpInterval = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [descriptionCopy appendFormat:@"\n %@ rtcpInterval = %@ ", indentCopy, rtcpInterval];
}

- (BOOL)_parseFromTLVData
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kRTPParameters_MinimumVideoBandwidth"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kRTPParameters_RTCPInterval"];
  v15[0] = v3;
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  if (v6)
  {
    field = [v3 field];
    unsignedIntegerValue = [field unsignedIntegerValue];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1000 * unsignedIntegerValue];
    minimumBitrate = self->_minimumBitrate;
    self->_minimumBitrate = v9;

    field2 = [v4 field];
    rtcpInterval = self->_rtcpInterval;
    self->_rtcpInterval = field2;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  minimumBitrate = [(HMDReselectedRTPParameters *)self minimumBitrate];
  v5 = [minimumBitrate unsignedIntegerValue] / 0x3E8uLL;

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [creator addTLV:3 length:2 number:v6];

  rtcpInterval = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [creator addTLV:4 length:4 number:rtcpInterval];

  serialize = [creator serialize];

  return serialize;
}

- (HMDReselectedRTPParameters)initWithMaximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval
{
  bitrateCopy = bitrate;
  minimumBitrateCopy = minimumBitrate;
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = HMDReselectedRTPParameters;
  v12 = [(HMDReselectedRTPParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_maximumBitrate, bitrate);
    objc_storeStrong(&v13->_minimumBitrate, minimumBitrate);
    objc_storeStrong(&v13->_rtcpInterval, interval);
  }

  return v13;
}

@end