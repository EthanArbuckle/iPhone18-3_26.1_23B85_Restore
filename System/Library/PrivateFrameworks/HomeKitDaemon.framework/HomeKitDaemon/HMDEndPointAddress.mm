@interface HMDEndPointAddress
- (BOOL)_parseFromTLVData;
- (BOOL)isCompatibleWithRemoteEndPointAddress:(id)a3;
- (HMDEndPointAddress)initWithCoder:(id)a3;
- (HMDEndPointAddress)initWithIPAddress:(id)a3 isIPv6Address:(BOOL)a4 videoRTPPort:(id)a5 audioRTPPort:(id)a6;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDEndPointAddress

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDEndPointAddress *)self ipAddress];
  [v4 encodeObject:v5 forKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];

  [v4 encodeBool:-[HMDEndPointAddress isIPv6Address](self forKey:{"isIPv6Address"), @"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"}];
  v6 = [(HMDEndPointAddress *)self videoRTPPort];
  [v4 encodeObject:v6 forKey:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];

  v7 = [(HMDEndPointAddress *)self audioRTPPort];
  [v4 encodeObject:v7 forKey:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
}

- (HMDEndPointAddress)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDEndPointAddress;
  v5 = [(HMDEndPointAddress *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v9;

    v5->_isIPv6Address = [v4 decodeBoolForKey:@"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"];
    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];
    videoRTPPort = v5->_videoRTPPort;
    v5->_videoRTPPort = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
    audioRTPPort = v5->_audioRTPPort;
    v5->_audioRTPPort = v19;
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

  v9 = [(HMDEndPointAddress *)self ipAddress];
  [v7 appendFormat:@"\n %@ ipAddress = %@ ", v6, v9];

  [(HMDEndPointAddress *)self isIPv6Address];
  v10 = HMFBooleanToString();
  [v7 appendFormat:@"\n %@ isIPv6Address = %@ ", v6, v10];

  v11 = [(HMDEndPointAddress *)self videoRTPPort];
  [v7 appendFormat:@"\n %@ videoRTPPort = %@ ", v6, v11];

  v12 = [(HMDEndPointAddress *)self audioRTPPort];
  [v7 appendFormat:@"\n %@ audioRTPPort = %@ ", v6, v12];
}

- (BOOL)_parseFromTLVData
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC50] wrappertlv:2 name:@"kStreamManagementControlPoint__ControllerAddress__IPAddress"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kStreamManagementControlPoint__ControllerAddress__IPAddressVersion"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kStreamManagementControlPoint__ControllerAddress__VideoRTPPort"];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kStreamManagementControlPoint__ControllerAddress__AudioRTPPort"];
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v8 = [(HAPTLVBase *)self _parse:v7];
  if (v8)
  {
    v9 = [v3 field];
    ipAddress = self->_ipAddress;
    self->_ipAddress = v9;

    v11 = [v4 field];
    self->_isIPv6Address = [v11 BOOLValue];

    v12 = [v5 field];
    videoRTPPort = self->_videoRTPPort;
    self->_videoRTPPort = v12;

    v14 = [v6 field];
    audioRTPPort = self->_audioRTPPort;
    self->_audioRTPPort = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEndPointAddress isIPv6Address](self, "isIPv6Address")}];
  [v3 addTLV:1 number:v4];

  v5 = [(HMDEndPointAddress *)self ipAddress];
  [v3 addTLV:2 string:v5];

  v6 = [(HMDEndPointAddress *)self videoRTPPort];
  [v3 addTLV:3 length:2 number:v6];

  v7 = [(HMDEndPointAddress *)self audioRTPPort];
  [v3 addTLV:4 length:2 number:v7];

  v8 = [v3 serialize];

  return v8;
}

- (BOOL)isCompatibleWithRemoteEndPointAddress:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(HMDEndPointAddress *)self isIPv6Address];
  if (self == [v4 isIPv6Address] && (objc_msgSend(v4, "audioRTPPort"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "unsignedIntegerValue"), v5, v6))
  {
    v7 = [v4 videoRTPPort];
    v8 = [v7 unsignedIntegerValue] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDEndPointAddress)initWithIPAddress:(id)a3 isIPv6Address:(BOOL)a4 videoRTPPort:(id)a5 audioRTPPort:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMDEndPointAddress;
  v14 = [(HMDEndPointAddress *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_ipAddress, a3);
    v15->_isIPv6Address = a4;
    objc_storeStrong(&v15->_videoRTPPort, a5);
    objc_storeStrong(&v15->_audioRTPPort, a6);
  }

  return v15;
}

@end