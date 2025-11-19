@interface HMDReselectedRTPParameters
- (BOOL)_parseFromTLVData;
- (HMDReselectedRTPParameters)initWithCoder:(id)a3;
- (HMDReselectedRTPParameters)initWithMaximumBitrate:(id)a3 minimumBitrate:(id)a4 rtcpInterval:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDReselectedRTPParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDReselectedRTPParameters *)self minimumBitrate];
  [v4 encodeObject:v5 forKey:@"kRTPParameters_MinimumVideoBandwidth"];

  v6 = [(HMDReselectedRTPParameters *)self maximumBitrate];
  [v4 encodeObject:v6 forKey:@"kRTPParameters_MaximumVideoBandwidth"];

  v7 = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [v4 encodeObject:v7 forKey:@"kRTPParameters_RTCPInterval"];
}

- (HMDReselectedRTPParameters)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDReselectedRTPParameters;
  v5 = [(HMDReselectedRTPParameters *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kRTPParameters_MinimumVideoBandwidth"];
    minimumBitrate = v5->_minimumBitrate;
    v5->_minimumBitrate = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kRTPParameters_MaximumVideoBandwidth"];
    maximumBitrate = v5->_maximumBitrate;
    v5->_maximumBitrate = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kRTPParameters_RTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDReselectedRTPParameters *)self minimumBitrate];
  [v7 appendFormat:@"\n %@ minimumBitrate = %@ ", v6, v9];

  v10 = [(HMDReselectedRTPParameters *)self maximumBitrate];
  [v7 appendFormat:@"\n %@ maximumBitrate = %@ ", v6, v10];

  v11 = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [v7 appendFormat:@"\n %@ rtcpInterval = %@ ", v6, v11];
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
    v7 = [v3 field];
    v8 = [v7 unsignedIntegerValue];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1000 * v8];
    minimumBitrate = self->_minimumBitrate;
    self->_minimumBitrate = v9;

    v11 = [v4 field];
    rtcpInterval = self->_rtcpInterval;
    self->_rtcpInterval = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDReselectedRTPParameters *)self minimumBitrate];
  v5 = [v4 unsignedIntegerValue] / 0x3E8uLL;

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v3 addTLV:3 length:2 number:v6];

  v7 = [(HMDReselectedRTPParameters *)self rtcpInterval];
  [v3 addTLV:4 length:4 number:v7];

  v8 = [v3 serialize];

  return v8;
}

- (HMDReselectedRTPParameters)initWithMaximumBitrate:(id)a3 minimumBitrate:(id)a4 rtcpInterval:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDReselectedRTPParameters;
  v12 = [(HMDReselectedRTPParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_maximumBitrate, a3);
    objc_storeStrong(&v13->_minimumBitrate, a4);
    objc_storeStrong(&v13->_rtcpInterval, a5);
  }

  return v13;
}

@end