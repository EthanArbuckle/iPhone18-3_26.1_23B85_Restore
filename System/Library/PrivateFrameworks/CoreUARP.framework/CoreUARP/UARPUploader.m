@interface UARPUploader
- (BOOL)setController:(id)a3;
- (UARPController)controller;
- (UARPUploader)init;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4;
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

- (BOOL)setController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_controller, v4);
  }

  return WeakRetained == 0;
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v11 = xpcLog;
    v14 = 136315650;
    v15 = UARPFirmwareStagingCompletionStatusToString(a5);
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "Firmware Staging Complete Status = %s for Asset = %@ Accessory = %@", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained firmwareStagingComplete:v8 assetID:v9 withStatus:a5];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained stagedFirmwareApplicationComplete:v6 withStatus:a4];
}

- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained stagedFirmwareRescindComplete:v5 withStatus:6];
}

- (UARPController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end