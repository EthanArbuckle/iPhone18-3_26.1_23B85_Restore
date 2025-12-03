@interface HMDSelectedRTPParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedRTPParameters)initWithCoder:(id)coder;
- (HMDSelectedRTPParameters)initWithPayloadType:(id)type maximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval comfortNoisePayloadType:(id)payloadType;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSelectedRTPParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payloadType = [(HMDSelectedRTPParameters *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"kRTPParameters_PayloadType"];

  synchronizationSource = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [coderCopy encodeObject:synchronizationSource forKey:@"kRTPParameters_SynchronizationSource"];

  minimumBitrate = [(HMDSelectedRTPParameters *)self minimumBitrate];
  [coderCopy encodeObject:minimumBitrate forKey:@"kRTPParameters_MinimumVideoBandwidth"];

  maximumBitrate = [(HMDSelectedRTPParameters *)self maximumBitrate];
  [coderCopy encodeObject:maximumBitrate forKey:@"kRTPParameters_MaximumVideoBandwidth"];

  rtcpInterval = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [coderCopy encodeObject:rtcpInterval forKey:@"kRTPParameters_RTCPInterval"];

  maxMTU = [(HMDSelectedRTPParameters *)self maxMTU];
  [coderCopy encodeObject:maxMTU forKey:@"kRTPParameters_MaxMTU"];

  comfortNoisePayloadType = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [coderCopy encodeObject:comfortNoisePayloadType forKey:@"kRTPParameters_ComfortNoisePayloadType"];
}

- (HMDSelectedRTPParameters)initWithCoder:(id)coder
{
  v50[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = HMDSelectedRTPParameters;
  v5 = [(HMDSelectedRTPParameters *)&v43 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kRTPParameters_PayloadType"];
    payloadType = v5->_payloadType;
    v5->_payloadType = v9;

    v11 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kRTPParameters_SynchronizationSource"];
    synchronizationSource = v5->_synchronizationSource;
    v5->_synchronizationSource = v14;

    v16 = MEMORY[0x277CBEB98];
    v48 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kRTPParameters_MinimumVideoBandwidth"];
    minimumBitrate = v5->_minimumBitrate;
    v5->_minimumBitrate = v19;

    v21 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"kRTPParameters_MaximumVideoBandwidth"];
    maximumBitrate = v5->_maximumBitrate;
    v5->_maximumBitrate = v24;

    v26 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v28 = [v26 setWithArray:v27];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"kRTPParameters_RTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v29;

    v31 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v33 = [v31 setWithArray:v32];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"kRTPParameters_MaxMTU"];
    maxMTU = v5->_maxMTU;
    v5->_maxMTU = v34;

    v36 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v38 = [v36 setWithArray:v37];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"kRTPParameters_ComfortNoisePayloadType"];
    comfortNoisePayloadType = v5->_comfortNoisePayloadType;
    v5->_comfortNoisePayloadType = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  synchronizationSource = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [descriptionCopy appendFormat:@"\n %@ syncSource = %@ ", indentCopy, synchronizationSource];

  payloadType = [(HMDSelectedRTPParameters *)self payloadType];
  [descriptionCopy appendFormat:@"\n %@ payloadType = %@ ", indentCopy, payloadType];

  minimumBitrate = [(HMDSelectedRTPParameters *)self minimumBitrate];
  [descriptionCopy appendFormat:@"\n %@ minimumBitrate = %@ ", indentCopy, minimumBitrate];

  maximumBitrate = [(HMDSelectedRTPParameters *)self maximumBitrate];
  [descriptionCopy appendFormat:@"\n %@ maximumBitrate = %@ ", indentCopy, maximumBitrate];

  rtcpInterval = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [descriptionCopy appendFormat:@"\n %@ rtcpInterval = %@ ", indentCopy, rtcpInterval];

  maxMTU = [(HMDSelectedRTPParameters *)self maxMTU];
  [descriptionCopy appendFormat:@"\n %@ maxMTU = %@ ", indentCopy, maxMTU];

  comfortNoisePayloadType = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [descriptionCopy appendFormat:@"\n %@ comfortNoisePayloadType = %@ ", indentCopy, comfortNoisePayloadType];
}

- (BOOL)_parseFromTLVData
{
  v35[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kRTPParameters_PayloadType"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kRTPParameters_SynchronizationSource"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kRTPParameters_MinimumVideoBandwidth"];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kRTPParameters_RTCPInterval"];
  v7 = [MEMORY[0x277CFEC08] wrappertlv:5 name:@"kRTPParameters_MaxMTU"];
  v8 = [MEMORY[0x277CFEC08] wrappertlv:6 name:@"kRTPParameters_ComfortNoisePayloadType"];
  v33 = v3;
  v35[0] = v3;
  v35[1] = v4;
  v9 = v4;
  v35[2] = v5;
  v35[3] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v34[0] = v7;
  v34[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  LODWORD(v12) = [(HAPTLVBase *)self _parseMandatory:v10 optional:v11];
  if (v12)
  {
    field = [v4 field];
    synchronizationSource = self->_synchronizationSource;
    self->_synchronizationSource = field;

    field2 = [v33 field];
    payloadType = self->_payloadType;
    self->_payloadType = field2;

    [v5 field];
    v17 = v11;
    v18 = v8;
    v12 = v19 = v12;
    v32 = v7;
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    LOBYTE(v12) = v19;
    v8 = v18;
    v11 = v17;
    v21 = 1000 * unsignedIntegerValue;
    v9 = v4;
    v7 = v32;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    minimumBitrate = self->_minimumBitrate;
    self->_minimumBitrate = v22;

    field3 = [v6 field];
    rtcpInterval = self->_rtcpInterval;
    self->_rtcpInterval = field3;

    field4 = [v32 field];
    maxMTU = self->_maxMTU;
    self->_maxMTU = field4;

    field5 = [v8 field];
    comfortNoisePayloadType = self->_comfortNoisePayloadType;
    self->_comfortNoisePayloadType = field5;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  payloadType = [(HMDSelectedRTPParameters *)self payloadType];
  [creator addTLV:1 length:1 number:payloadType];

  synchronizationSource = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [creator addTLV:2 length:4 number:synchronizationSource];

  minimumBitrate = [(HMDSelectedRTPParameters *)self minimumBitrate];
  v7 = [minimumBitrate unsignedIntegerValue] / 0x3E8uLL;

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [creator addTLV:3 length:2 number:v8];

  rtcpInterval = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [creator addTLV:4 length:4 floatNumber:rtcpInterval];

  maxMTU = [(HMDSelectedRTPParameters *)self maxMTU];
  [creator addTLV:5 length:2 number:maxMTU];

  comfortNoisePayloadType = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [creator addTLV:6 length:1 number:comfortNoisePayloadType];

  serialize = [creator serialize];

  return serialize;
}

- (HMDSelectedRTPParameters)initWithPayloadType:(id)type maximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval comfortNoisePayloadType:(id)payloadType
{
  typeCopy = type;
  bitrateCopy = bitrate;
  minimumBitrateCopy = minimumBitrate;
  intervalCopy = interval;
  payloadTypeCopy = payloadType;
  v21.receiver = self;
  v21.super_class = HMDSelectedRTPParameters;
  v17 = [(HMDSelectedRTPParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_payloadType, type);
    objc_storeStrong(&v18->_maximumBitrate, bitrate);
    objc_storeStrong(&v18->_minimumBitrate, minimumBitrate);
    objc_storeStrong(&v18->_rtcpInterval, interval);
    objc_storeStrong(&v18->_comfortNoisePayloadType, payloadType);
  }

  return v18;
}

@end