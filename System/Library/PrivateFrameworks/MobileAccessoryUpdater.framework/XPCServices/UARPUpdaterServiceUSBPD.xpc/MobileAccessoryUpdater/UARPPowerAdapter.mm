@interface UARPPowerAdapter
- (BOOL)firmwareApply:(id *)apply;
- (BOOL)firmwareHasStagedAssets:(id *)assets;
- (BOOL)firmwareRescind:(id *)rescind;
- (BOOL)firmwareUpdateAllowed:(id *)allowed;
- (BOOL)firmwareUpdateCleanup:(id *)cleanup;
- (BOOL)firmwareUpdateInitialize:(id *)initialize;
- (BOOL)firmwareUpdateWriteData:(id)data offset:(unint64_t)offset error:(id *)error;
- (BOOL)firmwareVerifyStagedAsset:(id *)asset;
- (BOOL)solicitAnalytics:(id)analytics error:(id *)error;
- (BOOL)solicitLogs:(id)logs error:(id *)error;
- (NSString)description;
- (UARPPowerAdapter)init;
- (UARPPowerAdapter)initWithHPM:(id)m supportsAccMode7:(BOOL)mode7;
- (id)activeFwVersion;
- (id)stagedFwVersion;
- (void)prepareFirmwareVersion;
- (void)updateWithHPM:(id)m;
@end

@implementation UARPPowerAdapter

- (UARPPowerAdapter)init
{
  [(UARPPowerAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPPowerAdapter)initWithHPM:(id)m supportsAccMode7:(BOOL)mode7
{
  mCopy = m;
  v13.receiver = self;
  v13.super_class = UARPPowerAdapter;
  v8 = [(UARPPowerAdapter *)&v13 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "powerAdapter");
    log = v8->_log;
    v8->_log = v9;

    objc_storeStrong(&v8->_hpm, m);
    *&v11 = 0xFFFFLL;
    *(&v11 + 1) = 0xFFFFLL;
    *&v8->_routerID = v11;
    v8->_productID = 0xFFFFLL;
    *&v8->_requiresAuthentication = 0;
    v8->_authenticationStatus = 0;
    v8->_supportsAccMode7 = mode7;
  }

  return v8;
}

- (void)updateWithHPM:(id)m
{
  self->_isConnected = [(UARPAppleHPM *)self->_hpm connected];
  self->_routerID = [(UARPAppleHPM *)self->_hpm rid];
  manufacturerVDO = [(UARPAppleHPM *)self->_hpm manufacturerVDO];
  uTF8String = [manufacturerVDO UTF8String];

  if (uTF8String)
  {
    v6 = strtoul(uTF8String, 0, 16);
  }

  else
  {
    v6 = 0xFFFFLL;
  }

  self->_vendorID = v6;
  modelStringVDO = [(UARPAppleHPM *)self->_hpm modelStringVDO];
  uTF8String2 = [modelStringVDO UTF8String];

  if (uTF8String2)
  {
    v9 = strtoul(uTF8String2, 0, 16);
  }

  else
  {
    v9 = 0xFFFFLL;
  }

  self->_productID = v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"isConnected = <%d>", self->_isConnected];
  [v3 appendFormat:@", Router ID = <%lu>", self->_routerID];
  [v3 appendFormat:@", Vendor ID = <0x%lx>", self->_vendorID];
  [v3 appendFormat:@", Product ID = <0x%lx>", self->_productID];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (id)activeFwVersion
{
  fwVersion = self->_fwVersion;
  if (!fwVersion)
  {
    firmwareVersionVDO = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
    uTF8String = [firmwareVersionVDO UTF8String];

    if (uTF8String)
    {
      firmwareVersionVDO2 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
      v7 = strtoul([firmwareVersionVDO2 UTF8String], 0, 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = [[UARPAssetVersion alloc] initWithMajorVersion:(-6 * (v7 >> 28) + HIBYTE(v7)) minorVersion:(-6 * ((v7 >> 20) & 0xF) + BYTE2(v7)) releaseVersion:(v7 - 6 * (v7 >> 4)) buildVersion:0];
    v9 = self->_fwVersion;
    self->_fwVersion = v8;

    fwVersion = self->_fwVersion;
  }

  return fwVersion;
}

- (id)stagedFwVersion
{
  if (self->_supportsAccMode7)
  {
    v2 = [(UARPAppleHPM *)self->_hpm accMode7StagedFwVersion:0];
  }

  else
  {
    v2 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  }

  return v2;
}

- (void)prepareFirmwareVersion
{
  firmwareVersionVDO = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
  uTF8String = [firmwareVersionVDO UTF8String];

  if (uTF8String)
  {
    firmwareVersionVDO2 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
    v6 = strtoul([firmwareVersionVDO2 UTF8String], 0, 16);

    v7 = [[UARPAssetVersion alloc] initWithMajorVersion:(HIBYTE(v6) - 6 * (HIBYTE(v6) >> 4)) minorVersion:(BYTE2(v6) - 6 * (BYTE2(v6) >> 4)) releaseVersion:(v6 - 6 * (v6 >> 4)) buildVersion:0];
    fwVersion = self->_fwVersion;
    self->_fwVersion = v7;

    _objc_release_x1();
  }
}

- (BOOL)firmwareUpdateAllowed:(id *)allowed
{
  if (self->_supportsAccMode7)
  {
    return [(UARPAppleHPM *)self->_hpm accMode7FirmwareUpdateAllowed:allowed];
  }

  else
  {
    return 1;
  }
}

- (BOOL)firmwareUpdateInitialize:(id *)initialize
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateInitialize:initialize];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateInitialize:initialize];
  }
}

- (BOOL)firmwareUpdateWriteData:(id)data offset:(unint64_t)offset error:(id *)error
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateWriteData:data offset:offset error:error];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateWriteData:data offset:offset error:error];
  }
}

- (BOOL)firmwareVerifyStagedAsset:(id *)asset
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareVerifyStagedAsset:asset];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareVerifyStagedAsset:asset];
  }
}

- (BOOL)firmwareUpdateCleanup:(id *)cleanup
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateCleanup:cleanup];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateCleanup:cleanup];
  }
}

- (BOOL)firmwareApply:(id *)apply
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareApply:apply];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026124(log, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

- (BOOL)firmwareHasStagedAssets:(id *)assets
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareHasStagedAssets:assets];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10002619C(log, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

- (BOOL)firmwareRescind:(id *)rescind
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareRescind:rescind];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026214(log, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

- (BOOL)solicitLogs:(id)logs error:(id *)error
{
  logsCopy = logs;
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;
    modelName = [(UARPPowerAdapter *)self modelName];
    serialNumber = [(UARPPowerAdapter *)self serialNumber];
    v10 = [(UARPAppleHPM *)hpm accMode7SolicitLogs:logsCopy modelName:modelName serialNumber:serialNumber error:error];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10002628C(log, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)solicitAnalytics:(id)analytics error:(id *)error
{
  analyticsCopy = analytics;
  if (self->_supportsAccMode7)
  {
    v7 = [(UARPAppleHPM *)self->_hpm accMode7SolicitAnalytics:analyticsCopy error:error];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100026304(log, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = 0;
  }

  return v7;
}

@end