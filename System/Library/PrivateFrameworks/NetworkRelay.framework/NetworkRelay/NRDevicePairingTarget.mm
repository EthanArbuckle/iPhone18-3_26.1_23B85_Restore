@interface NRDevicePairingTarget
- (NRDevicePairingTarget)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDevicePairingTarget

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(NRDevicePairingTarget *)self authMethod];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = "PIN";
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v6 = "PreviousPairing";
      goto LABEL_11;
    }

LABEL_8:
    v7 = [v5 initWithFormat:@"Unknown(%zu)", v4];
    goto LABEL_12;
  }

  if (!v4)
  {
    v6 = "Invalid";
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v6 = "PreSharedKey";
LABEL_11:
  v7 = [v5 initWithUTF8String:v6];
LABEL_12:
  v8 = v7;
  v9 = [v3 initWithFormat:@"NRDevicePairingTarget[%@", v7];

  v10 = [(NRDevicePairingTarget *)self candidate];

  if (v10)
  {
    v11 = [(NRDevicePairingTarget *)self candidate];
    [v9 appendFormat:@", %@", v11];
  }

  [v9 appendString:@"]"];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRDevicePairingTarget *)self candidate];
  [v4 encodeObject:v5 forKey:@"candidate"];

  [v4 encodeInt64:-[NRDevicePairingTarget authMethod](self forKey:{"authMethod"), @"authMethod"}];
  v6 = [(NRDevicePairingTarget *)self authData];
  [v4 encodeObject:v6 forKey:@"authData"];

  v7 = [(NRDevicePairingTarget *)self properties];
  [v4 encodeObject:v7 forKey:@"properties"];

  v8 = [(NRDevicePairingTarget *)self operationalProperties];
  [v4 encodeObject:v8 forKey:@"operationalProperties"];
}

- (NRDevicePairingTarget)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NRDevicePairingTarget;
  v5 = [(NRDevicePairingTarget *)&v27 init];
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
    *(v25 + 4) = "[NRDevicePairingTarget initWithCoder:]";
    v26 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v26);
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
  [(NRDevicePairingTarget *)v6 setCandidate:v7];

  -[NRDevicePairingTarget setAuthMethod:](v6, "setAuthMethod:", [v4 decodeInt64ForKey:@"authMethod"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authData"];
  [(NRDevicePairingTarget *)v6 setAuthData:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  [(NRDevicePairingTarget *)v6 setProperties:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationalProperties"];
  [(NRDevicePairingTarget *)v6 setOperationalProperties:v10];

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NRDevicePairingTarget *)self candidate];
  v6 = [v5 copy];
  [v4 setCandidate:v6];

  [v4 setAuthMethod:{-[NRDevicePairingTarget authMethod](self, "authMethod")}];
  v7 = [(NRDevicePairingTarget *)self authData];

  if (v7)
  {
    v8 = [(NRDevicePairingTarget *)self authData];
    v9 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v8 length:{"bytes"), objc_msgSend(v8, "length")}];
    [v4 setAuthData:v9];
  }

  v10 = [(NRDevicePairingTarget *)self properties];
  v11 = [v10 copy];
  [v4 setProperties:v11];

  v12 = [(NRDevicePairingTarget *)self operationalProperties];
  v13 = [v12 copy];
  [v4 setOperationalProperties:v13];

  return v4;
}

@end