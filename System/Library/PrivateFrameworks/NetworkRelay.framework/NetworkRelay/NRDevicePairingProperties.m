@interface NRDevicePairingProperties
- (NRDevicePairingProperties)initWithCoder:(id)a3;
- (NSData)awdlAddressData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setAwdlAddressData:(id)a3;
@end

@implementation NRDevicePairingProperties

- (NSData)awdlAddressData
{
  v2 = [(NSDictionary *)self->_peerEndpointDictionary objectForKeyedSubscript:&unk_286D2D058];
  v3 = [v2 addressData];

  return v3;
}

- (void)setAwdlAddressData:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_peerEndpointDictionary)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_peerEndpointDictionary];

    v4 = v5;
  }

  v6 = [MEMORY[0x277CD91B8] endpointWithAddress:{objc_msgSend(v8, "bytes")}];
  [(NSDictionary *)v4 setObject:v6 forKeyedSubscript:&unk_286D2D058];

  peerEndpointDictionary = self->_peerEndpointDictionary;
  self->_peerEndpointDictionary = v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[NRDevicePairProp pairProtVers=%llu/nr:%u", -[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion"), -[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")];
  v4 = [(NRDevicePairingProperties *)self outOfBandKey];

  if (v4)
  {
    v5 = [(NRDevicePairingProperties *)self outOfBandKey];
    LogString = _NRKeyCreateLogString(v5);
    [v3 appendFormat:@", oobk %@", LogString];
  }

  if ([(NRDevicePairingProperties *)self wasInitiallySetupUsingIDSPairing])
  {
    [v3 appendString:{@", IDS"}];
  }

  if ([(NRDevicePairingProperties *)self pairWithSPPLink])
  {
    [v3 appendString:{@", SPP"}];
  }

  if ([(NRDevicePairingProperties *)self isAltAccountPairing])
  {
    [v3 appendString:{@", ALT-ACC"}];
  }

  if ([(NRDevicePairingProperties *)self isExternalPairing])
  {
    [v3 appendString:{@", EXTERNAL"}];
  }

  if ([(NRDevicePairingProperties *)self psm])
  {
    [v3 appendFormat:@", psm %u", -[NRDevicePairingProperties psm](self, "psm")];
  }

  v7 = [(NRDevicePairingProperties *)self bluetoothMACAddress];

  if (v7)
  {
    v8 = [(NRDevicePairingProperties *)self bluetoothMACAddress];
    v9 = _NRCreateMACAddressString(v8);
    [v3 appendFormat:@", btMAC %@", v9];
  }

  v10 = [(NRDevicePairingProperties *)self peerEndpointDictionary];

  if (v10)
  {
    v11 = [(NRDevicePairingProperties *)self peerEndpointDictionary];
    [v3 appendFormat:@", peerIP %@", v11];
  }

  v12 = [(NRDevicePairingProperties *)self candidateService];

  if (v12)
  {
    v13 = [(NRDevicePairingProperties *)self candidateService];
    [v3 appendFormat:@", cndSvc %@", v13];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = NRDevicePairingProperties;
  v4 = a3;
  [(NRDeviceProperties *)&v9 encodeWithCoder:v4];
  v5 = [(NRDevicePairingProperties *)self outOfBandKey:v9.receiver];
  [v4 encodeObject:v5 forKey:@"outOfBandKey"];

  [v4 encodeBool:-[NRDevicePairingProperties wasInitiallySetupUsingIDSPairing](self forKey:{"wasInitiallySetupUsingIDSPairing"), @"wasInitiallySetupUsingIDSPairing"}];
  [v4 encodeBool:-[NRDevicePairingProperties pairWithSPPLink](self forKey:{"pairWithSPPLink"), @"pairWithSPPLink"}];
  [v4 encodeBool:-[NRDevicePairingProperties isAltAccountPairing](self forKey:{"isAltAccountPairing"), @"isAltAccountPairing"}];
  [v4 encodeBool:-[NRDevicePairingProperties isExternalPairing](self forKey:{"isExternalPairing"), @"isExternalPairing"}];
  [v4 encodeInt32:-[NRDevicePairingProperties psm](self forKey:{"psm"), @"psm"}];
  v6 = [(NRDevicePairingProperties *)self bluetoothMACAddress];
  [v4 encodeObject:v6 forKey:@"bluetoothMACAddress"];

  v7 = [(NRDevicePairingProperties *)self peerEndpointDictionary];
  [v4 encodeObject:v7 forKey:@"peerEndpointDictionary"];

  v8 = [(NRDevicePairingProperties *)self candidateService];
  [v4 encodeObject:v8 forKey:@"candidateService"];
}

- (NRDevicePairingProperties)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NRDevicePairingProperties;
  v5 = [(NRDeviceProperties *)&v27 initWithCoder:v4];
  if (!v5)
  {
    v13 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        goto LABEL_7;
      }
    }

    v16 = nrCopyLogObj_1215();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: [super initWithCoder:] failed", v17, v18, v19, v20, v21, "");

LABEL_7:
    v22 = _os_log_pack_size();
    MEMORY[0x28223BE20](v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "[NRDevicePairingProperties initWithCoder:]";
    v26 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v26);
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outOfBandKey"];
  [(NRDevicePairingProperties *)v6 setOutOfBandKey:v7];

  -[NRDevicePairingProperties setWasInitiallySetupUsingIDSPairing:](v6, "setWasInitiallySetupUsingIDSPairing:", [v4 decodeBoolForKey:@"wasInitiallySetupUsingIDSPairing"]);
  -[NRDevicePairingProperties setPairWithSPPLink:](v6, "setPairWithSPPLink:", [v4 decodeBoolForKey:@"pairWithSPPLink"]);
  -[NRDevicePairingProperties setIsAltAccountPairing:](v6, "setIsAltAccountPairing:", [v4 decodeBoolForKey:@"isAltAccountPairing"]);
  -[NRDevicePairingProperties setIsExternalPairing:](v6, "setIsExternalPairing:", [v4 decodeBoolForKey:@"isExternalPairing"]);
  -[NRDevicePairingProperties setPsm:](v6, "setPsm:", [v4 decodeInt32ForKey:@"psm"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothMACAddress"];
  [(NRDevicePairingProperties *)v6 setBluetoothMACAddress:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerEndpointDictionary"];
  [(NRDevicePairingProperties *)v6 setPeerEndpointDictionary:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateService"];
  [(NRDevicePairingProperties *)v6 setCandidateService:v10];

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = NRDevicePairingProperties;
  v4 = [(NRDeviceProperties *)&v14 copyWithZone:a3];
  v5 = [(NRDevicePairingProperties *)self outOfBandKey];
  v6 = [v5 copy];
  [v4 setOutOfBandKey:v6];

  [v4 setWasInitiallySetupUsingIDSPairing:{-[NRDevicePairingProperties wasInitiallySetupUsingIDSPairing](self, "wasInitiallySetupUsingIDSPairing")}];
  [v4 setPairWithSPPLink:{-[NRDevicePairingProperties pairWithSPPLink](self, "pairWithSPPLink")}];
  [v4 setIsAltAccountPairing:{-[NRDevicePairingProperties isAltAccountPairing](self, "isAltAccountPairing")}];
  [v4 setIsExternalPairing:{-[NRDevicePairingProperties isExternalPairing](self, "isExternalPairing")}];
  [v4 setPsm:{-[NRDevicePairingProperties psm](self, "psm")}];
  v7 = [(NRDevicePairingProperties *)self bluetoothMACAddress];
  v8 = [v7 copy];
  [v4 setBluetoothMACAddress:v8];

  v9 = [(NRDevicePairingProperties *)self peerEndpointDictionary];
  v10 = [v9 copy];
  [v4 setPeerEndpointDictionary:v10];

  v11 = [(NRDevicePairingProperties *)self candidateService];
  v12 = [v11 copy];
  [v4 setCandidateService:v12];

  return v4;
}

@end