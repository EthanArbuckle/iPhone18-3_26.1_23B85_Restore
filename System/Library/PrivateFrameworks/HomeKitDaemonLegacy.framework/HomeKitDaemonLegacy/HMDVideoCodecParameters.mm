@interface HMDVideoCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDVideoCodecParameters)initWithCoder:(id)coder;
- (HMDVideoCodecParameters)initWithProfiles:(id)profiles levels:(id)levels packetizationModes:(id)modes;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDVideoCodecParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  h264Profiles = [(HMDVideoCodecParameters *)self h264Profiles];
  [coderCopy encodeObject:h264Profiles forKey:@"kVideoCodecParameters__ProfileID"];

  levels = [(HMDVideoCodecParameters *)self levels];
  [coderCopy encodeObject:levels forKey:@"kVideoCodecParameters__Level"];

  packetizationModes = [(HMDVideoCodecParameters *)self packetizationModes];
  [coderCopy encodeObject:packetizationModes forKey:@"kVideoCodecParameters__PacketizationMode"];
}

- (HMDVideoCodecParameters)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoCodecParameters__ProfileID"];
    h264Profiles = v5->_h264Profiles;
    v5->_h264Profiles = v9;

    v11 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoCodecParameters__Level"];
    levels = v5->_levels;
    v5->_levels = v14;

    v16 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kVideoCodecParameters__PacketizationMode"];
    packetizationModes = v5->_packetizationModes;
    v5->_packetizationModes = v19;
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

  h264Profiles = [(HMDVideoCodecParameters *)self h264Profiles];
  v10 = arrayToString(h264Profiles, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ h264Profile = %@ ", indentCopy, v10];

  levels = [(HMDVideoCodecParameters *)self levels];
  v12 = arrayToString(levels, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ levels = %@", indentCopy, v12];

  packetizationModes = [(HMDVideoCodecParameters *)self packetizationModes];
  v13 = arrayToString(packetizationModes, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ packetizationModes = %@", indentCopy, v13];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  h264Profiles = [(HMDVideoCodecParameters *)self h264Profiles];
  v6 = [h264Profiles objectAtIndex:0];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "h264Profile")}];
  [creator addTLV:1 number:v7];

  v8 = MEMORY[0x277CCABB0];
  levels = [(HMDVideoCodecParameters *)self levels];
  v10 = [levels objectAtIndex:0];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v10, "h264Level")}];
  [creator addTLV:2 number:v11];

  v12 = MEMORY[0x277CCABB0];
  packetizationModes = [(HMDVideoCodecParameters *)self packetizationModes];
  v14 = [packetizationModes objectAtIndex:0];
  v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v14, "packetizationMode")}];
  [creator addTLV:3 number:v15];

  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    h264Profiles = self->_h264Profiles;
    self->_h264Profiles = field;

    field2 = [v4 field];
    levels = self->_levels;
    self->_levels = field2;

    field3 = [v5 field];
    packetizationModes = self->_packetizationModes;
    self->_packetizationModes = field3;
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

- (HMDVideoCodecParameters)initWithProfiles:(id)profiles levels:(id)levels packetizationModes:(id)modes
{
  profilesCopy = profiles;
  levelsCopy = levels;
  modesCopy = modes;
  v15.receiver = self;
  v15.super_class = HMDVideoCodecParameters;
  v12 = [(HMDVideoCodecParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_h264Profiles, profiles);
    objc_storeStrong(&v13->_levels, levels);
    objc_storeStrong(&v13->_packetizationModes, modes);
  }

  return v13;
}

@end