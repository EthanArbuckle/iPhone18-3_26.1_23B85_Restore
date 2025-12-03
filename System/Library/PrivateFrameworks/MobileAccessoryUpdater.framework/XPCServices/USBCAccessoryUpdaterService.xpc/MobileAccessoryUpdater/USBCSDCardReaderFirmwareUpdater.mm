@interface USBCSDCardReaderFirmwareUpdater
- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress;
- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
@end

@implementation USBCSDCardReaderFirmwareUpdater

- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  fwBundleFileName = [(MobileAsset *)self->super._mobileAsset fwBundleFileName];

  if (fwBundleFileName)
  {
    v9 = 0;
    if (!firmwareCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000111E8(&v11);
  v9 = v11;
  if (firmwareCopy)
  {
LABEL_3:
    firmwareCopy[2](firmwareCopy, 1, 0, v9);
  }

LABEL_4:

  return v9;
}

- (id)downloadFirmware:(id)firmware hardware:(id)hardware progress:(id)progress
{
  firmwareCopy = firmware;
  v7 = dispatch_semaphore_create(0);
  mobileAsset = self->super._mobileAsset;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002644;
  v14[3] = &unk_100024448;
  v9 = firmwareCopy;
  v16 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [(MobileAsset *)mobileAsset downloadAsset:v14];
  v12 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    sub_1000111B4(self);
  }

  return 0;
}

@end