@interface UARPPowerAdapter
- (BOOL)firmwareApply:(id *)a3;
- (BOOL)firmwareHasStagedAssets:(id *)a3;
- (BOOL)firmwareRescind:(id *)a3;
- (BOOL)firmwareUpdateAllowed:(id *)a3;
- (BOOL)firmwareUpdateCleanup:(id *)a3;
- (BOOL)firmwareUpdateInitialize:(id *)a3;
- (BOOL)firmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (BOOL)firmwareVerifyStagedAsset:(id *)a3;
- (BOOL)solicitAnalytics:(id)a3 error:(id *)a4;
- (BOOL)solicitLogs:(id)a3 error:(id *)a4;
- (NSString)description;
- (UARPPowerAdapter)init;
- (UARPPowerAdapter)initWithHPM:(id)a3 supportsAccMode7:(BOOL)a4;
- (id)activeFwVersion;
- (id)stagedFwVersion;
- (void)prepareFirmwareVersion;
- (void)updateWithHPM:(id)a3;
@end

@implementation UARPPowerAdapter

- (UARPPowerAdapter)init
{
  [(UARPPowerAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPPowerAdapter)initWithHPM:(id)a3 supportsAccMode7:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = UARPPowerAdapter;
  v8 = [(UARPPowerAdapter *)&v13 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "powerAdapter");
    log = v8->_log;
    v8->_log = v9;

    objc_storeStrong(&v8->_hpm, a3);
    *&v11 = 0xFFFFLL;
    *(&v11 + 1) = 0xFFFFLL;
    *&v8->_routerID = v11;
    v8->_productID = 0xFFFFLL;
    *&v8->_requiresAuthentication = 0;
    v8->_authenticationStatus = 0;
    v8->_supportsAccMode7 = a4;
  }

  return v8;
}

- (void)updateWithHPM:(id)a3
{
  self->_isConnected = [(UARPAppleHPM *)self->_hpm connected];
  self->_routerID = [(UARPAppleHPM *)self->_hpm rid];
  v4 = [(UARPAppleHPM *)self->_hpm manufacturerVDO];
  v5 = [v4 UTF8String];

  if (v5)
  {
    v6 = strtoul(v5, 0, 16);
  }

  else
  {
    v6 = 0xFFFFLL;
  }

  self->_vendorID = v6;
  v7 = [(UARPAppleHPM *)self->_hpm modelStringVDO];
  v8 = [v7 UTF8String];

  if (v8)
  {
    v9 = strtoul(v8, 0, 16);
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
    v4 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
      v7 = strtoul([v6 UTF8String], 0, 16);
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
  v3 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
  v4 = [v3 UTF8String];

  if (v4)
  {
    v5 = [(UARPAppleHPM *)self->_hpm firmwareVersionVDO];
    v6 = strtoul([v5 UTF8String], 0, 16);

    v7 = [[UARPAssetVersion alloc] initWithMajorVersion:(HIBYTE(v6) - 6 * (HIBYTE(v6) >> 4)) minorVersion:(BYTE2(v6) - 6 * (BYTE2(v6) >> 4)) releaseVersion:(v6 - 6 * (v6 >> 4)) buildVersion:0];
    fwVersion = self->_fwVersion;
    self->_fwVersion = v7;

    _objc_release_x1();
  }
}

- (BOOL)firmwareUpdateAllowed:(id *)a3
{
  if (self->_supportsAccMode7)
  {
    return [(UARPAppleHPM *)self->_hpm accMode7FirmwareUpdateAllowed:a3];
  }

  else
  {
    return 1;
  }
}

- (BOOL)firmwareUpdateInitialize:(id *)a3
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateInitialize:a3];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateInitialize:a3];
  }
}

- (BOOL)firmwareUpdateWriteData:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateWriteData:a3 offset:a4 error:a5];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateWriteData:a3 offset:a4 error:a5];
  }
}

- (BOOL)firmwareVerifyStagedAsset:(id *)a3
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareVerifyStagedAsset:a3];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareVerifyStagedAsset:a3];
  }
}

- (BOOL)firmwareUpdateCleanup:(id *)a3
{
  supportsAccMode7 = self->_supportsAccMode7;
  hpm = self->_hpm;
  if (supportsAccMode7)
  {
    return [(UARPAppleHPM *)hpm accMode7FirmwareUpdateCleanup:a3];
  }

  else
  {
    return [(UARPAppleHPM *)hpm legacyPAFirmwareUpdateCleanup:a3];
  }
}

- (BOOL)firmwareApply:(id *)a3
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareApply:a3];
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

- (BOOL)firmwareHasStagedAssets:(id *)a3
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareHasStagedAssets:a3];
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

- (BOOL)firmwareRescind:(id *)a3
{
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;

    return [(UARPAppleHPM *)hpm accMode7FirmwareRescind:a3];
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

- (BOOL)solicitLogs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_supportsAccMode7)
  {
    hpm = self->_hpm;
    v8 = [(UARPPowerAdapter *)self modelName];
    v9 = [(UARPPowerAdapter *)self serialNumber];
    v10 = [(UARPAppleHPM *)hpm accMode7SolicitLogs:v6 modelName:v8 serialNumber:v9 error:a4];
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

- (BOOL)solicitAnalytics:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_supportsAccMode7)
  {
    v7 = [(UARPAppleHPM *)self->_hpm accMode7SolicitAnalytics:v6 error:a4];
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