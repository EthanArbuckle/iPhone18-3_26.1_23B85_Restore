@interface UARPUSBPDAccessory
- (BOOL)isEqual:(id)equal;
- (BOOL)vuarpAssetFullyStaged:(id)staged;
- (BOOL)vuarpAssetOffered;
- (BOOL)vuarpDynamicAssetSolicited:(id)solicited;
- (BOOL)vuarpFirmwarePayloadComplete:(id)complete;
- (BOOL)vuarpFirmwarePayloadData:(id)data data:(id)a4 offset:(unint64_t)offset;
- (BOOL)vuarpFirmwarePayloadReady:(id)ready;
- (BOOL)vuarpHasStagedAssets;
- (BOOL)vuarpLastError:(unsigned int *)error lastAction:(unsigned int *)action;
- (BOOL)vuarpRescindStagedAssets;
- (BOOL)vuarpSendMessage:(id)message error:(id *)error;
- (NSString)description;
- (UARPUSBPDAccessory)init;
- (UARPUSBPDAccessory)initWithHardwareID:(id)d identifier:(id)identifier vuarpDelegate:(id)delegate hpmDelegate:(id)hpmDelegate;
- (id)vuarpAppleModelNumber;
- (id)vuarpExpectedTag;
- (id)vuarpHardwareVersion;
- (id)vuarpModelName;
- (unsigned)vuarpApplyStagedAssets;
- (void)connectToVUARP:(unint64_t)p payloadWindowLength:(unint64_t)length delegate:(id)delegate;
- (void)disconnectFromVUARP;
@end

@implementation UARPUSBPDAccessory

- (UARPUSBPDAccessory)init
{
  [(UARPUSBPDAccessory *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPUSBPDAccessory)initWithHardwareID:(id)d identifier:(id)identifier vuarpDelegate:(id)delegate hpmDelegate:(id)hpmDelegate
{
  dCopy = d;
  identifierCopy = identifier;
  delegateCopy = delegate;
  hpmDelegateCopy = hpmDelegate;
  v18.receiver = self;
  v18.super_class = UARPUSBPDAccessory;
  v14 = [(UARPUSBPDAccessory *)&v18 init];
  if (v14)
  {
    v15 = os_log_create("com.apple.accessoryupdater.uarp", "usbpdUpdater");
    log = v14->_log;
    v14->_log = v15;

    v14->_vendorID = [dCopy vendorID];
    v14->_productID = [dCopy productID];
    objc_storeStrong(&v14->_appleModelNumber, identifier);
    objc_storeStrong(&v14->_vuarpDelegate, delegate);
    objc_storeStrong(&v14->_hpmDelegate, hpmDelegate);
    v14->_isMagSafeCable = [dCopy isMagSafeCable];
    v14->_isPowerAdapter = [dCopy isPowerAdapter];
    v14->_supportsAccMode7 = [dCopy supportsAccMode7];
    v14->_isUSBCLightning = [dCopy isUSBCLightning];
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      vendorID = [(UARPUSBPDAccessory *)self vendorID];
      if (vendorID == [(UARPUSBPDAccessory *)v5 vendorID])
      {
        productID = [(UARPUSBPDAccessory *)self productID];
        v8 = productID == [(UARPUSBPDAccessory *)v5 productID];
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

- (void)connectToVUARP:(unint64_t)p payloadWindowLength:(unint64_t)length delegate:(id)delegate
{
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v8[0] = p;
  v8[1] = p;
  v8[2] = length;
  objc_storeWeak(&self->_delegate, delegate);
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

- (BOOL)vuarpSendMessage:(id)message error:(id *)error
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(error) = [WeakRetained recvUarpMsgFromAccessory:self uarpMsg:messageCopy error:error];

  return error;
}

- (id)vuarpModelName
{
  if (self->_requiresAuthentication)
  {
    v3 = [UARPMagSafeCable authenticationStatusToString:self->_authStatus];
    modelName = [(VUARPProtocol *)self->_vuarpDelegate modelName];
    modelName2 = [NSString stringWithFormat:@"%@ <%s>", modelName, v3];
  }

  else
  {
    modelName2 = [(VUARPProtocol *)self->_vuarpDelegate modelName];
  }

  return modelName2;
}

- (id)vuarpHardwareVersion
{
  vuarpDelegate = self->_vuarpDelegate;
  if (objc_opt_respondsToSelector())
  {
    hardwareVersion = [(VUARPProtocol *)self->_vuarpDelegate hardwareVersion];
    stringValue = [hardwareVersion stringValue];
  }

  else
  {
    stringValue = @"unknown";
  }

  return stringValue;
}

- (id)vuarpExpectedTag
{
  vuarpDelegate = self->_vuarpDelegate;
  if (objc_opt_respondsToSelector())
  {
    expectedTag = [(VUARPProtocol *)self->_vuarpDelegate expectedTag];
  }

  else
  {
    expectedTag = 0;
  }

  return expectedTag;
}

- (BOOL)vuarpLastError:(unsigned int *)error lastAction:(unsigned int *)action
{
  *error = 1;
  *action = 140989193;
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

- (BOOL)vuarpAssetFullyStaged:(id)staged
{
  stagedCopy = staged;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Asset Fully Staged", v8, 2u);
  }

  stagedFwVersion = self->_stagedFwVersion;
  self->_stagedFwVersion = stagedCopy;

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

- (BOOL)vuarpFirmwarePayloadReady:(id)ready
{
  readyCopy = ready;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = readyCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Payload %@ Ready", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)vuarpFirmwarePayloadData:(id)data data:(id)a4 offset:(unint64_t)offset
{
  dataCopy = data;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v13 = log;
    v14 = 138412802;
    v15 = dataCopy;
    v16 = 2048;
    v17 = [v9 length];
    v18 = 2048;
    offsetCopy = offset;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Write Payload %@ data length %lu, offset %lu", &v14, 0x20u);
  }

  v11 = [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateWriteData:v9 offset:offset error:0];
  if ((v11 & 1) == 0)
  {
    [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateCleanup:0];
  }

  return v11;
}

- (BOOL)vuarpFirmwarePayloadComplete:(id)complete
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = completeCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Write Payload %@ Complete", &v8, 0xCu);
  }

  v6 = [(VUARPProtocol *)self->_vuarpDelegate firmwareVerifyStagedAsset:0];
  [(VUARPProtocol *)self->_vuarpDelegate firmwareUpdateCleanup:0];

  return v6;
}

- (BOOL)vuarpDynamicAssetSolicited:(id)solicited
{
  solicitedCopy = solicited;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = solicitedCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Dynamic Asset solicited %@", &v16, 0xCu);
  }

  assetTag = [solicitedCopy assetTag];
  v7 = isDynamicAssetLogs();

  if (v7)
  {
    vuarpDelegate = self->_vuarpDelegate;
    v9 = [solicitedCopy url];
    v10 = [(VUARPProtocol *)vuarpDelegate solicitLogs:v9 error:0];
  }

  else
  {
    assetTag2 = [solicitedCopy assetTag];
    v12 = isDynamicAssetAnalytics();

    if (!v12)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v13 = self->_vuarpDelegate;
    v9 = [solicitedCopy url];
    v10 = [(VUARPProtocol *)v13 solicitAnalytics:v9 error:0];
  }

  v14 = v10;

LABEL_9:
  return v14;
}

@end