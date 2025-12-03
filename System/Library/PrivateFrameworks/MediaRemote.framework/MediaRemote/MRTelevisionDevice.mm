@interface MRTelevisionDevice
- (id)currentClientUpdatesConfigMessage;
@end

@implementation MRTelevisionDevice

- (id)currentClientUpdatesConfigMessage
{
  textInputCallback = [(MRTelevisionDevice *)self textInputCallback];
  if (textInputCallback)
  {
    v4 = 1;
  }

  else
  {
    rtiCallback = [(MRTelevisionDevice *)self rtiCallback];
    v4 = rtiCallback != 0;
  }

  v6 = [[MRClientUpdatesConfigMessage alloc] initWithNowPlayingUpdates:[(MRExternalDevice *)self wantsNowPlayingNotifications] artworkUpdates:[(MRExternalDevice *)self wantsNowPlayingArtworkNotifications] volumeUpdates:[(MRExternalDevice *)self wantsVolumeNotifications] keyboardUpdates:v4 outputDeviceUpdates:[(MRExternalDevice *)self wantsOutputDeviceNotifications] systemEndpointUpdates:[(MRExternalDevice *)self wantsSystemEndpointNotifications] subscribedPlayerPaths:0];

  return v6;
}

@end