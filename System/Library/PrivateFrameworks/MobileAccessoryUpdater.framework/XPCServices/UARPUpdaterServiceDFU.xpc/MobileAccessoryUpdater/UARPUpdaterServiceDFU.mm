@interface UARPUpdaterServiceDFU
- (UARPUpdaterServiceDFU)init;
- (void)firmwareStagingComplete:(id)complete withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
@end

@implementation UARPUpdaterServiceDFU

- (UARPUpdaterServiceDFU)init
{
  v9.receiver = self;
  v9.super_class = UARPUpdaterServiceDFU;
  v2 = [(UARPUpdaterServiceDFU *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[UARPDFUUpdater sharedInstance];
    dfuOtpUpdater = v2->_dfuOtpUpdater;
    v2->_dfuOtpUpdater = v5;

    [(UARPDFUUpdater *)v2->_dfuOtpUpdater setGoldRestoreDelegate:v2];
    [(UARPDFUUpdater *)v2->_dfuOtpUpdater setServiceInstance:1];
    v7 = v2->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100015D2C(v7);
    }
  }

  return v2;
}

- (void)firmwareStagingProgress:(id)progress bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100015DB0(log);
  }
}

- (void)firmwareStagingComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100015E34(log, status, completeCopy);
  }

  [(UARPDFUUpdater *)self->_dfuOtpUpdater assetTransferComplete:completeCopy assetID:0 status:status];
}

@end