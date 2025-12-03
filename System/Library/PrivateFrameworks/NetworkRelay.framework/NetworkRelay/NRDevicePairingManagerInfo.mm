@interface NRDevicePairingManagerInfo
- (BOOL)isEqual:(id)equal;
- (NRDevicePairingManagerInfo)init;
- (NRDevicePairingManagerInfo)initWithCoder:(id)coder;
- (NSString)fullDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingManagerInfo

- (NRDevicePairingManagerInfo)init
{
  v20 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = NRDevicePairingManagerInfo;
  v2 = [(NRDevicePairingManagerInfo *)&v19 init];
  if (!v2)
  {
    v7 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = nrCopyLogObj_1529();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v11, v12, v13, v14, v15, "");

LABEL_7:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "[NRDevicePairingManagerInfo init]";
    v18 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v18);
  }

  v3 = v2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(NRDevicePairingManagerInfo *)v3 setUuid:uUID];

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NSString)fullDescription
{
  v3 = [(NRDevicePairingManagerInfo *)self description];
  v4 = [v3 mutableCopy];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];

  if (identifier)
  {
    identifier2 = [(NRDevicePairingManagerInfo *)self identifier];
    [v4 appendFormat:@" Identifier %@", identifier2];
  }

  metadata = [(NRDevicePairingManagerInfo *)self metadata];

  if (metadata)
  {
    metadata2 = [(NRDevicePairingManagerInfo *)self metadata];
    [v4 appendFormat:@" Metadata %@", metadata2];
  }

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  [v4 appendFormat:@" Pairing Criteria %@", pairingCriteria];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  v5 = [v3 initWithFormat:@"NRDevicePairingManager[%@]", uuid];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    uuid = [(NRDevicePairingManagerInfo *)self uuid];
    uuid2 = [v5 uuid];

    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  [coderCopy encodeObject:pairingCriteria forKey:@"pairingCriteria"];

  metadata = [(NRDevicePairingManagerInfo *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (NRDevicePairingManagerInfo)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = NRDevicePairingManagerInfo;
  v5 = [(NRDevicePairingManagerInfo *)&v27 init];
  if (!v5)
  {
    v13 = nrCopyLogObj_1529();
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

    v16 = nrCopyLogObj_1529();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v17, v18, v19, v20, v21, "");

LABEL_7:
    v22 = _os_log_pack_size();
    MEMORY[0x28223BE20](v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "[NRDevicePairingManagerInfo initWithCoder:]";
    v26 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v26);
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(NRDevicePairingManagerInfo *)v6 setUuid:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(NRDevicePairingManagerInfo *)v6 setIdentifier:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingCriteria"];
  [(NRDevicePairingManagerInfo *)v6 setPairingCriteria:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  [(NRDevicePairingManagerInfo *)v6 setMetadata:v10];

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  [v4 setUuid:uuid];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];
  v7 = [identifier copy];
  [v4 setIdentifier:v7];

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  v9 = [pairingCriteria copy];
  [v4 setPairingCriteria:v9];

  metadata = [(NRDevicePairingManagerInfo *)self metadata];
  v11 = [metadata copy];
  [v4 setMetadata:v11];

  return v4;
}

@end