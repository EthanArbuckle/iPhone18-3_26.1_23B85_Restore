@interface NRPairedDevice
- (NRPairedDevice)initWithCoder:(id)a3;
- (NRPairedDevice)initWithDeviceIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRPairedDevice

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(NRPairedDevice *)self nrDeviceIdentifier];
  v5 = [v4 nrDeviceIdentifier];
  v6 = [v3 initWithFormat:@"NRPairedDevice[%@", v5];

  v7 = [(NRPairedDevice *)self device];

  if (v7)
  {
    v8 = [(NRPairedDevice *)self device];
    [v6 appendFormat:@", %@", v8];
  }

  [v6 appendString:@"]"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRPairedDevice *)self device];
  [v4 encodeObject:v5 forKey:@"device"];

  v6 = [(NRPairedDevice *)self nrDeviceIdentifier];
  [v4 encodeObject:v6 forKey:@"nrDeviceIdentifier"];
}

- (NRPairedDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  v6 = [(NRPairedDevice *)self initWithDeviceIdentifier:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    [(NRPairedDevice *)v6 setDevice:v7];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NRPairedDevice *)self nrDeviceIdentifier];
  v6 = [v5 copy];
  v7 = [v4 initWithDeviceIdentifier:v6];

  v8 = [(NRPairedDevice *)self device];
  v9 = [v8 copy];
  [v7 setDevice:v9];

  return v7;
}

- (NRPairedDevice)initWithDeviceIdentifier:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v34.receiver = self;
    v34.super_class = NRPairedDevice;
    v6 = [(NRPairedDevice *)&v34 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_nrDeviceIdentifier, a3);
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
    *(v32 + 4) = "[NRPairedDevice initWithDeviceIdentifier:]";
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
  _NRLogWithArgs(v15, 17, "%s called with null nrDeviceIdentifier", v16, v17, v18, v19, v20, "[NRPairedDevice initWithDeviceIdentifier:]");

  v8 = 0;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end