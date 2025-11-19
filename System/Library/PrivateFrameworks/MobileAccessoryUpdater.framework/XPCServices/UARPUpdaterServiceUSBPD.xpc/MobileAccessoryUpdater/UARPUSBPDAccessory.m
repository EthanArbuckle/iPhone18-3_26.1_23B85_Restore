@interface UARPUSBPDAccessory
- (BOOL)isEqual:(id)a3;
- (BOOL)vuarpAssetFullyStaged:(id)a3;
- (BOOL)vuarpAssetOffered;
- (BOOL)vuarpDynamicAssetSolicited:(id)a3;
- (BOOL)vuarpFirmwarePayloadComplete:(id)a3;
- (BOOL)vuarpFirmwarePayloadData:(id)a3 data:(id)a4 offset:(unint64_t)a5;
- (BOOL)vuarpFirmwarePayloadReady:(id)a3;
- (BOOL)vuarpHasStagedAssets;
- (BOOL)vuarpLastError:(unsigned int *)a3 lastAction:(unsigned int *)a4;
- (BOOL)vuarpRescindStagedAssets;
- (BOOL)vuarpSendMessage:(id)a3 error:(id *)a4;
- (NSString)description;
- (UARPUSBPDAccessory)init;
- (UARPUSBPDAccessory)initWithHardwareID:(id)a3 identifier:(id)a4 vuarpDelegate:(id)a5 hpmDelegate:(id)a6;
- (id)vuarpAppleModelNumber;
- (id)vuarpExpectedTag;
- (id)vuarpHardwareVersion;
- (id)vuarpModelName;
- (unsigned)vuarpApplyStagedAssets;
- (void)connectToVUARP:(unint64_t)a3 payloadWindowLength:(unint64_t)a4 delegate:(id)a5;
- (void)disconnectFromVUARP;
@end

@implementation UARPUSBPDAccessory

- (UARPUSBPDAccessory)init
{
  [(UARPUSBPDAccessory *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPUSBPDAccessory)initWithHardwareID:(id)a3 identifier:(id)a4 vuarpDelegate:(id)a5 hpmDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = UARPUSBPDAccessory;
  v14 = [(UARPUSBPDAccessory *)&v18 init];
  if (v14)
  {
    v15 = os_log_create("com.apple.accessoryupdater.uarp", "usbpdUpdater");
    log = v14->_log;
    v14->_log = v15;

    v14->_vendorID = [v10 vendorID];
    v14->_productID = [v10 productID];
    objc_storeStrong(&v14->_appleModelNumber, a4);
    objc_storeStrong(&v14->_vuarpDelegate, a5);
    objc_storeStrong(&v14->_hpmDelegate, a6);
    v14->_isMagSafeCable = [v10 isMagSafeCable];
    v14->_isPowerAdapter = [v10 isPowerAdapter];
    v14->_supportsAccMode7 = [v10 supportsAccMode7];
    v14->_isUSBCLightning = [v10 isUSBCLightning];
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UARPUSBPDAccessory *)self vendorID];
      if (v6 == [(UARPUSBPDAccessory *)v5 vendorID])
      {
        v7 = [(UARPUSBPDAccessory *)self productID];
        v8 = v7 == [(UARPUSBPDAccessory *)v5 productID];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)connectToVUARP:(unint64_t)a3 payloadWindowLength:(unint64_t)a4 delegate:(id)a5
{
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v8[0] = a3;
  v8[1] = a3;
  v8[2] = a4;
  objc_storeWeak(&self->_delegate, a5);
  v6 = [[VUARPAccessory alloc] initWithDelegate:self options:v8];
  vuarpAccessory = self->_vuarpAccessory;
  self->_vuarpAccessory = v6;

  [(VUARPAccessory *)self->_vuarpAccessory connectToUARP:0];
}

- (void)disconnectFromVUARP
{
  [(VUARPAccessory *)self->_vuarpAccessory disconnectFromUARP];
  vuarpAccessory = self->_vuarpAccessory;
  self->_vuarpAccessory = 0;
}

- (NSString)description
{
  v2 = "NO";
  if (self->_needsTransferFirmware)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  if (self->_needsTransferLogs)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (self->_needsTransferAnalytics)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if (self->_autoAppliesStagedFirmware)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (self->_supportsAccMode7)
  {
    v2 = "YES";
  }

  return [NSString stringWithFormat:@"AMN=<%@> needsFirmware=<%s>, needsLogs=<%s>, needsAnalytics=<%s>, autoAppliesStagedFirmware=<%s> supportsAccmode7=<%s>", self->_appleModelNumber, v3, v4, v5, v6, v2];
}

- (BOOL)vuarpSendMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a4) = [WeakRetained recvUarpMsgFromAccessory:self uarpMsg:v6 error:a4];

  return a4;
}

- (id)vuarpModelName
{
  if (self->_requiresAuthentication)
  {
    v3 = [UARPMagSafeCable authenticationStatusToString:self->_authStatus];
    v4 = [(VUARPProtocol *)self->_vuarpDelegate modelName];
    v5 = [NSString stringWithFormat:@"%@ <%s>", v4, v3];
  }

  else
  {
    v5 = [(VUARPProtocol *)self->_vuarpDelegate modelName];
  }

  return v5;
}

- (id)vuarpHardwareVersion
{
  vuarpDelegate = self->_vuarpDelegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(VUARPProtocol *)self->_vuarpDelegate hardwareVersion];
    v5 = [v4 stringValue];
  }

  else
  {
    v5 = @"unknown";
  }

  return v5;
}

- (id)vuarpExpectedTag
{
  vuarpDelegate = self->_vuarpDelegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(VUARPProtocol *)self->_vuarpDelegate expectedTag];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)vuarpLastError:(unsigned int *)a3 lastAction:(unsigned int *)a4
{
  *a3 = 1;
  *a4 = 140989193;
  return 1;
}

- (id)vuarpAppleModelNumber
{
  v2 = [(NSString *)self->_appleModelNumber copy];

  return v2;
}

- (BOOL)vuarpAssetOffered
{
  v3 = [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateInitialize:0];
  if ((v3 & 1) == 0)
  {
    [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateCleanup:0];
  }

  return v3;
}

- (BOOL)vuarpAssetFullyStaged:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Asset Fully Staged", v8, 2u);
  }

  stagedFwVersion = self->_stagedFwVersion;
  self->_stagedFwVersion = v4;

  return 1;
}

- (unsigned)vuarpApplyStagedAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Apply Firmware", v6, 2u);
  }

  if (![(UARPUSBPDAccessory *)self vuarpHasStagedAssets])
  {
    return 4;
  }

  if (![(VUARPProtocol *)self->_vuarpDelegate firmwareApply:0])
  {
    return 2;
  }

  stagedFwVersion = self->_stagedFwVersion;
  self->_stagedFwVersion = 0;

  return 1;
}

- (BOOL)vuarpHasStagedAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Has Staged Assets", v5, 2u);
  }

  return [(VUARPProtocol *)self->_vuarpDelegate firmwareHasStagedAssets:0];
}

- (BOOL)vuarpRescindStagedAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Rescind Firmware", v7, 2u);
  }

  v4 = [(VUARPProtocol *)self->_vuarpDelegate firmwareRescind:0];
  if (v4)
  {
    stagedFwVersion = self->_stagedFwVersion;
    self->_stagedFwVersion = 0;
  }

  return v4;
}

- (BOOL)vuarpFirmwarePayloadReady:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Payload %@ Ready", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)vuarpFirmwarePayloadData:(id)a3 data:(id)a4 offset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v13 = log;
    v14 = 138412802;
    v15 = v8;
    v16 = 2048;
    v17 = [v9 length];
    v18 = 2048;
    v19 = a5;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Write Payload %@ data length %lu, offset %lu", &v14, 0x20u);
  }

  v11 = [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateWriteData:v9 offset:a5 error:0];
  if ((v11 & 1) == 0)
  {
    [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateCleanup:0];
  }

  return v11;
}

- (BOOL)vuarpFirmwarePayloadComplete:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Write Payload %@ Complete", &v8, 0xCu);
  }

  v6 = [(VUARPProtocol *)self->_vuarpDelegate firmwareVerifyStagedAsset:0];
  [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateCleanup:0];

  return v6;
}

- (BOOL)vuarpDynamicAssetSolicited:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Dynamic Asset solicited %@", &v16, 0xCu);
  }

  v6 = [v4 assetTag];
  v7 = isDynamicAssetLogs();

  if (v7)
  {
    vuarpDelegate = self->_vuarpDelegate;
    v9 = [v4 url];
    v10 = [(VUARPProtocol *)vuarpDelegate solicitLogs:v9 error:0];
  }

  else
  {
    v11 = [v4 assetTag];
    v12 = isDynamicAssetAnalytics();

    if (!v12)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v13 = self->_vuarpDelegate;
    v9 = [v4 url];
    v10 = [(VUARPProtocol *)v13 solicitAnalytics:v9 error:0];
  }

  v14 = v10;

LABEL_9:
  return v14;
}

@end