@interface MRAVOutputDevice
- (BOOL)isLocallyHosted;
- (BOOL)isSmartDevice;
- (BOOL)willBeLocallyHosted;
@end

@implementation MRAVOutputDevice

- (BOOL)isLocallyHosted
{
  v3 = +[MRDAVOutputContextManager sharedManager];
  populatedOutputContexts = [v3 populatedOutputContexts];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011CBDC;
  v7[3] = &unk_1004BD958;
  v7[4] = self;
  v5 = [populatedOutputContexts msv_firstWhere:v7];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)willBeLocallyHosted
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportMultiplayerHost])
  {
    if ([(MRAVOutputDevice *)self isLocallyHosted]|| ([(MRAVOutputDevice *)self shouldBeLocallyHosted]& 1) != 0)
    {
      isPrimaryLocalDevice = 1;
    }

    else
    {
      isPrimaryLocalDevice = [(MRAVOutputDevice *)self isPrimaryLocalDevice];
    }
  }

  else
  {
    isPrimaryLocalDevice = 0;
  }

  return isPrimaryLocalDevice;
}

- (BOOL)isSmartDevice
{
  isRemoteControllable = [(MRAVOutputDevice *)self isRemoteControllable];
  if (isRemoteControllable)
  {
    LOBYTE(isRemoteControllable) = [(MRAVOutputDevice *)self isAuxiliary]^ 1;
  }

  return isRemoteControllable;
}

@end