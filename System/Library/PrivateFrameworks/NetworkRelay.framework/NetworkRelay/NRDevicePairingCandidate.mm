@interface NRDevicePairingCandidate
- (BOOL)isEqual:(id)a3;
- (NRDevicePairingCandidate)initWithCoder:(id)a3;
- (NSString)fullDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initInternal;
- (id)initInternalWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDevicePairingCandidate

- (NSString)fullDescription
{
  v3 = [(NRDevicePairingCandidate *)self description];
  v4 = [v3 mutableCopy];

  v5 = [(NRDevicePairingCandidate *)self identifier];

  if (v5)
  {
    v6 = [(NRDevicePairingCandidate *)self identifier];
    [v4 appendFormat:@" Identifier %@", v6];
  }

  v7 = [(NRDevicePairingCandidate *)self metadata];

  if (v7)
  {
    v8 = [(NRDevicePairingCandidate *)self metadata];
    [v4 appendFormat:@" Metadata %@", v8];
  }

  v9 = [(NRDevicePairingCandidate *)self cbUUID];

  if (v9)
  {
    v10 = [(NRDevicePairingCandidate *)self cbUUID];
    [v4 appendFormat:@" CBUUID %@", v10];
  }

  v11 = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];

  if (v11)
  {
    v12 = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];
    v13 = [v12 nrDeviceIdentifier];
    [v4 appendFormat:@" NRUUID %@", v13];
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NRDevicePairingCandidate *)self uuid];
  v5 = [v3 initWithFormat:@"NRDevicePairingCandidate[%@]", v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NRDevicePairingCandidate *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(NRDevicePairingCandidate *)self uuid];
    v7 = [v5 uuid];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRDevicePairingCandidate *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(NRDevicePairingCandidate *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(NRDevicePairingCandidate *)self metadata];
  [v4 encodeObject:v7 forKey:@"metadata"];

  v8 = [(NRDevicePairingCandidate *)self cbUUID];
  [v4 encodeObject:v8 forKey:@"cbUUID"];

  v9 = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];
  [v4 encodeObject:v9 forKey:@"nrDeviceIdentifier"];
}

- (NRDevicePairingCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [(NRDevicePairingCandidate *)self initInternalWithUUID:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NRDevicePairingCandidate *)v6 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    [(NRDevicePairingCandidate *)v6 setMetadata:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cbUUID"];
    [(NRDevicePairingCandidate *)v6 setCbUUID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
    [(NRDevicePairingCandidate *)v6 setNrDeviceIdentifier:v10];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NRDevicePairingCandidate *)self uuid];
  v6 = [v4 initInternalWithUUID:v5];

  if (v6)
  {
    v7 = [(NRDevicePairingCandidate *)self identifier];
    v8 = [v7 copy];
    [v6 setIdentifier:v8];

    v9 = [(NRDevicePairingCandidate *)self metadata];
    v10 = [v9 copy];
    [v6 setMetadata:v10];

    v11 = [(NRDevicePairingCandidate *)self cbUUID];
    [v6 setCbUUID:v11];
  }

  return v6;
}

- (id)initInternal
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(NRDevicePairingCandidate *)self initInternalWithUUID:v3];

  return v4;
}

- (id)initInternalWithUUID:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v34.receiver = self;
    v34.super_class = NRDevicePairingCandidate;
    v6 = [(NRDevicePairingCandidate *)&v34 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_uuid, a3);
      self = v7;
      v8 = self;
      goto LABEL_4;
    }

    v12 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v12;
      v22 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v22)
      {
        goto LABEL_13;
      }
    }

    v23 = nrCopyLogObj_1529();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v24, v25, v26, v27, v28, "");

LABEL_13:
    v29 = _os_log_pack_size();
    MEMORY[0x28223BE20](v29, v30);
    v31 = *__error();
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "[NRDevicePairingCandidate initInternalWithUUID:]";
    v33 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v33);
  }

  v11 = nrCopyLogObj_1529();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v13 = v11;
    v14 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

    if (!v14)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v15 = nrCopyLogObj_1529();
  _NRLogWithArgs(v15, 17, "%s called with null uuid", v16, v17, v18, v19, v20, "[NRDevicePairingCandidate initInternalWithUUID:]");

  v8 = 0;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end