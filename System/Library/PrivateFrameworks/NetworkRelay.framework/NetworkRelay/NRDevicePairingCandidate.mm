@interface NRDevicePairingCandidate
- (BOOL)isEqual:(id)equal;
- (NRDevicePairingCandidate)initWithCoder:(id)coder;
- (NSString)fullDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initInternal;
- (id)initInternalWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingCandidate

- (NSString)fullDescription
{
  v3 = [(NRDevicePairingCandidate *)self description];
  v4 = [v3 mutableCopy];

  identifier = [(NRDevicePairingCandidate *)self identifier];

  if (identifier)
  {
    identifier2 = [(NRDevicePairingCandidate *)self identifier];
    [v4 appendFormat:@" Identifier %@", identifier2];
  }

  metadata = [(NRDevicePairingCandidate *)self metadata];

  if (metadata)
  {
    metadata2 = [(NRDevicePairingCandidate *)self metadata];
    [v4 appendFormat:@" Metadata %@", metadata2];
  }

  cbUUID = [(NRDevicePairingCandidate *)self cbUUID];

  if (cbUUID)
  {
    cbUUID2 = [(NRDevicePairingCandidate *)self cbUUID];
    [v4 appendFormat:@" CBUUID %@", cbUUID2];
  }

  nrDeviceIdentifier = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];

  if (nrDeviceIdentifier)
  {
    nrDeviceIdentifier2 = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];
    v12NrDeviceIdentifier = [nrDeviceIdentifier2 nrDeviceIdentifier];
    [v4 appendFormat:@" NRUUID %@", v12NrDeviceIdentifier];
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  uuid = [(NRDevicePairingCandidate *)self uuid];
  v5 = [v3 initWithFormat:@"NRDevicePairingCandidate[%@]", uuid];

  return v5;
}

- (unint64_t)hash
{
  uuid = [(NRDevicePairingCandidate *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    uuid = [(NRDevicePairingCandidate *)self uuid];
    uuid2 = [v5 uuid];

    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(NRDevicePairingCandidate *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  identifier = [(NRDevicePairingCandidate *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  metadata = [(NRDevicePairingCandidate *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  cbUUID = [(NRDevicePairingCandidate *)self cbUUID];
  [coderCopy encodeObject:cbUUID forKey:@"cbUUID"];

  nrDeviceIdentifier = [(NRDevicePairingCandidate *)self nrDeviceIdentifier];
  [coderCopy encodeObject:nrDeviceIdentifier forKey:@"nrDeviceIdentifier"];
}

- (NRDevicePairingCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [(NRDevicePairingCandidate *)self initInternalWithUUID:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NRDevicePairingCandidate *)v6 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    [(NRDevicePairingCandidate *)v6 setMetadata:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cbUUID"];
    [(NRDevicePairingCandidate *)v6 setCbUUID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
    [(NRDevicePairingCandidate *)v6 setNrDeviceIdentifier:v10];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uuid = [(NRDevicePairingCandidate *)self uuid];
  v6 = [v4 initInternalWithUUID:uuid];

  if (v6)
  {
    identifier = [(NRDevicePairingCandidate *)self identifier];
    v8 = [identifier copy];
    [v6 setIdentifier:v8];

    metadata = [(NRDevicePairingCandidate *)self metadata];
    v10 = [metadata copy];
    [v6 setMetadata:v10];

    cbUUID = [(NRDevicePairingCandidate *)self cbUUID];
    [v6 setCbUUID:cbUUID];
  }

  return v6;
}

- (id)initInternal
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(NRDevicePairingCandidate *)self initInternalWithUUID:uUID];

  return v4;
}

- (id)initInternalWithUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v34.receiver = self;
    v34.super_class = NRDevicePairingCandidate;
    v6 = [(NRDevicePairingCandidate *)&v34 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_uuid, d);
      self = v7;
      selfCopy = self;
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
      selfCopy = 0;
      goto LABEL_4;
    }
  }

  v15 = nrCopyLogObj_1529();
  _NRLogWithArgs(v15, 17, "%s called with null uuid", v16, v17, v18, v19, v20, "[NRDevicePairingCandidate initInternalWithUUID:]");

  selfCopy = 0;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end