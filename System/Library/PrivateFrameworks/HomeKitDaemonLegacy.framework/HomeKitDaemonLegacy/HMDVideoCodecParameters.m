@interface HMDVideoCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDVideoCodecParameters)initWithCoder:(id)a3;
- (HMDVideoCodecParameters)initWithProfiles:(id)a3 levels:(id)a4 packetizationModes:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDVideoCodecParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDVideoCodecParameters *)self h264Profiles];
  [v4 encodeObject:v5 forKey:@"kVideoCodecParameters__ProfileID"];

  v6 = [(HMDVideoCodecParameters *)self levels];
  [v4 encodeObject:v6 forKey:@"kVideoCodecParameters__Level"];

  v7 = [(HMDVideoCodecParameters *)self packetizationModes];
  [v4 encodeObject:v7 forKey:@"kVideoCodecParameters__PacketizationMode"];
}

- (HMDVideoCodecParameters)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDVideoCodecParameters;
  v5 = [(HMDVideoCodecParameters *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoCodecParameters__ProfileID"];
    h264Profiles = v5->_h264Profiles;
    v5->_h264Profiles = v9;

    v11 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kVideoCodecParameters__Level"];
    levels = v5->_levels;
    v5->_levels = v14;

    v16 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kVideoCodecParameters__PacketizationMode"];
    packetizationModes = v5->_packetizationModes;
    v5->_packetizationModes = v19;
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

  v9 = [(HMDVideoCodecParameters *)self h264Profiles];
  v10 = arrayToString(v9, v6);
  [v7 appendFormat:@"\n %@ h264Profile = %@ ", v6, v10];

  v11 = [(HMDVideoCodecParameters *)self levels];
  v12 = arrayToString(v11, v6);
  [v7 appendFormat:@"\n %@ levels = %@", v6, v12];

  v14 = [(HMDVideoCodecParameters *)self packetizationModes];
  v13 = arrayToString(v14, v6);
  [v7 appendFormat:@"\n %@ packetizationModes = %@", v6, v13];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDVideoCodecParameters *)self h264Profiles];
  v6 = [v5 objectAtIndex:0];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "h264Profile")}];
  [v3 addTLV:1 number:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(HMDVideoCodecParameters *)self levels];
  v10 = [v9 objectAtIndex:0];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v10, "h264Level")}];
  [v3 addTLV:2 number:v11];

  v12 = MEMORY[0x277CCABB0];
  v13 = [(HMDVideoCodecParameters *)self packetizationModes];
  v14 = [v13 objectAtIndex:0];
  v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v14, "packetizationMode")}];
  [v3 addTLV:3 number:v15];

  v16 = [v3 serialize];

  return v16;
}

- (BOOL)_parseFromTLVData
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kVideoCodecParameters__ProfileID" objectCreator:&__block_literal_global_4861];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kVideoCodecParameters__Level" objectCreator:&__block_literal_global_112];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kVideoCodecParameters__PacketizationMode" objectCreator:&__block_literal_global_115];
  v16[0] = v3;
  v16[1] = v4;
  v16[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    v8 = [v3 field];
    h264Profiles = self->_h264Profiles;
    self->_h264Profiles = v8;

    v10 = [v4 field];
    levels = self->_levels;
    self->_levels = v10;

    v12 = [v5 field];
    packetizationModes = self->_packetizationModes;
    self->_packetizationModes = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

HMDPacketizationMode *__44__HMDVideoCodecParameters__parseFromTLVData__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDPacketizationMode alloc] initWithTLVData:v2];

  return v3;
}

HMDH264Level *__44__HMDVideoCodecParameters__parseFromTLVData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDH264Level alloc] initWithTLVData:v2];

  return v3;
}

HMDH264Profile *__44__HMDVideoCodecParameters__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDH264Profile alloc] initWithTLVData:v2];

  return v3;
}

- (HMDVideoCodecParameters)initWithProfiles:(id)a3 levels:(id)a4 packetizationModes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDVideoCodecParameters;
  v12 = [(HMDVideoCodecParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_h264Profiles, a3);
    objc_storeStrong(&v13->_levels, a4);
    objc_storeStrong(&v13->_packetizationModes, a5);
  }

  return v13;
}

@end