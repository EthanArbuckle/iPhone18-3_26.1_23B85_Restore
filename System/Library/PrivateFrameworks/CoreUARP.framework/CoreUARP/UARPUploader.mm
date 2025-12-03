@interface UARPUploader
- (BOOL)setController:(id)controller;
- (UARPController)controller;
- (UARPUploader)init;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
@end

@implementation UARPUploader

- (UARPUploader)init
{
  v6.receiver = self;
  v6.super_class = UARPUploader;
  v2 = [(UARPUploader *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    xpcLog = v2->_xpcLog;
    v2->_xpcLog = v3;
  }

  return v2;
}

- (BOOL)setController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_controller, controllerCopy);
  }

  return WeakRetained == 0;
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  v20 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  dCopy = d;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v11 = xpcLog;
    v14 = 136315650;
    v15 = UARPFirmwareStagingCompletionStatusToString(status);
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = completeCopy;
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "Firmware Staging Complete Status = %s for Asset = %@ Accessory = %@", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained firmwareStagingComplete:completeCopy assetID:dCopy withStatus:status];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained stagedFirmwareApplicationComplete:completeCopy withStatus:status];
}

- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained stagedFirmwareRescindComplete:completeCopy withStatus:6];
}

- (UARPController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end