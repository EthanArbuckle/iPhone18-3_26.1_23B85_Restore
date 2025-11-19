@interface HMDSelectedRTPParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedRTPParameters)initWithCoder:(id)a3;
- (HMDSelectedRTPParameters)initWithPayloadType:(id)a3 maximumBitrate:(id)a4 minimumBitrate:(id)a5 rtcpInterval:(id)a6 comfortNoisePayloadType:(id)a7;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSelectedRTPParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSelectedRTPParameters *)self payloadType];
  [v4 encodeObject:v5 forKey:@"kRTPParameters_PayloadType"];

  v6 = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [v4 encodeObject:v6 forKey:@"kRTPParameters_SynchronizationSource"];

  v7 = [(HMDSelectedRTPParameters *)self minimumBitrate];
  [v4 encodeObject:v7 forKey:@"kRTPParameters_MinimumVideoBandwidth"];

  v8 = [(HMDSelectedRTPParameters *)self maximumBitrate];
  [v4 encodeObject:v8 forKey:@"kRTPParameters_MaximumVideoBandwidth"];

  v9 = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [v4 encodeObject:v9 forKey:@"kRTPParameters_RTCPInterval"];

  v10 = [(HMDSelectedRTPParameters *)self maxMTU];
  [v4 encodeObject:v10 forKey:@"kRTPParameters_MaxMTU"];

  v11 = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [v4 encodeObject:v11 forKey:@"kRTPParameters_ComfortNoisePayloadType"];
}

- (HMDSelectedRTPParameters)initWithCoder:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = HMDSelectedRTPParameters;
  v5 = [(HMDSelectedRTPParameters *)&v43 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kRTPParameters_PayloadType"];
    payloadType = v5->_payloadType;
    v5->_payloadType = v9;

    v11 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kRTPParameters_SynchronizationSource"];
    synchronizationSource = v5->_synchronizationSource;
    v5->_synchronizationSource = v14;

    v16 = MEMORY[0x277CBEB98];
    v48 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kRTPParameters_MinimumVideoBandwidth"];
    minimumBitrate = v5->_minimumBitrate;
    v5->_minimumBitrate = v19;

    v21 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"kRTPParameters_MaximumVideoBandwidth"];
    maximumBitrate = v5->_maximumBitrate;
    v5->_maximumBitrate = v24;

    v26 = MEMORY[0x277CBEB98];
    v46 = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v28 = [v26 setWithArray:v27];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"kRTPParameters_RTCPInterval"];
    rtcpInterval = v5->_rtcpInterval;
    v5->_rtcpInterval = v29;

    v31 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v33 = [v31 setWithArray:v32];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"kRTPParameters_MaxMTU"];
    maxMTU = v5->_maxMTU;
    v5->_maxMTU = v34;

    v36 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v38 = [v36 setWithArray:v37];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"kRTPParameters_ComfortNoisePayloadType"];
    comfortNoisePayloadType = v5->_comfortNoisePayloadType;
    v5->_comfortNoisePayloadType = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [v7 appendFormat:@"\n %@ syncSource = %@ ", v6, v9];

  v10 = [(HMDSelectedRTPParameters *)self payloadType];
  [v7 appendFormat:@"\n %@ payloadType = %@ ", v6, v10];

  v11 = [(HMDSelectedRTPParameters *)self minimumBitrate];
  [v7 appendFormat:@"\n %@ minimumBitrate = %@ ", v6, v11];

  v12 = [(HMDSelectedRTPParameters *)self maximumBitrate];
  [v7 appendFormat:@"\n %@ maximumBitrate = %@ ", v6, v12];

  v13 = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [v7 appendFormat:@"\n %@ rtcpInterval = %@ ", v6, v13];

  v14 = [(HMDSelectedRTPParameters *)self maxMTU];
  [v7 appendFormat:@"\n %@ maxMTU = %@ ", v6, v14];

  v15 = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [v7 appendFormat:@"\n %@ comfortNoisePayloadType = %@ ", v6, v15];
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
    v13 = [v4 field];
    synchronizationSource = self->_synchronizationSource;
    self->_synchronizationSource = v13;

    v15 = [v33 field];
    payloadType = self->_payloadType;
    self->_payloadType = v15;

    [v5 field];
    v17 = v11;
    v18 = v8;
    v12 = v19 = v12;
    v32 = v7;
    v20 = [v12 unsignedIntegerValue];

    LOBYTE(v12) = v19;
    v8 = v18;
    v11 = v17;
    v21 = 1000 * v20;
    v9 = v4;
    v7 = v32;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    minimumBitrate = self->_minimumBitrate;
    self->_minimumBitrate = v22;

    v24 = [v6 field];
    rtcpInterval = self->_rtcpInterval;
    self->_rtcpInterval = v24;

    v26 = [v32 field];
    maxMTU = self->_maxMTU;
    self->_maxMTU = v26;

    v28 = [v8 field];
    comfortNoisePayloadType = self->_comfortNoisePayloadType;
    self->_comfortNoisePayloadType = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDSelectedRTPParameters *)self payloadType];
  [v3 addTLV:1 length:1 number:v4];

  v5 = [(HMDSelectedRTPParameters *)self synchronizationSource];
  [v3 addTLV:2 length:4 number:v5];

  v6 = [(HMDSelectedRTPParameters *)self minimumBitrate];
  v7 = [v6 unsignedIntegerValue] / 0x3E8uLL;

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v3 addTLV:3 length:2 number:v8];

  v9 = [(HMDSelectedRTPParameters *)self rtcpInterval];
  [v3 addTLV:4 length:4 floatNumber:v9];

  v10 = [(HMDSelectedRTPParameters *)self maxMTU];
  [v3 addTLV:5 length:2 number:v10];

  v11 = [(HMDSelectedRTPParameters *)self comfortNoisePayloadType];
  [v3 addTLV:6 length:1 number:v11];

  v12 = [v3 serialize];

  return v12;
}

- (HMDSelectedRTPParameters)initWithPayloadType:(id)a3 maximumBitrate:(id)a4 minimumBitrate:(id)a5 rtcpInterval:(id)a6 comfortNoisePayloadType:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDSelectedRTPParameters;
  v17 = [(HMDSelectedRTPParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_payloadType, a3);
    objc_storeStrong(&v18->_maximumBitrate, a4);
    objc_storeStrong(&v18->_minimumBitrate, a5);
    objc_storeStrong(&v18->_rtcpInterval, a6);
    objc_storeStrong(&v18->_comfortNoisePayloadType, a7);
  }

  return v18;
}

@end