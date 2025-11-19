@interface MRTelevisionDevice
- (id)currentClientUpdatesConfigMessage;
@end

@implementation MRTelevisionDevice

- (id)currentClientUpdatesConfigMessage
{
  v3 = [(MRTelevisionDevice *)self textInputCallback];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MRTelevisionDevice *)self rtiCallback];
    v4 = v5 != 0;
  }

  v6 = [[MRClientUpdatesConfigMessage alloc] initWithNowPlayingUpdates:[(MRExternalDevice *)self wantsNowPlayingNotifications] artworkUpdates:[(MRExternalDevice *)self wantsNowPlayingArtworkNotifications] volumeUpdates:[(MRExternalDevice *)self wantsVolumeNotifications] keyboardUpdates:v4 outputDeviceUpdates:[(MRExternalDevice *)self wantsOutputDeviceNotifications] systemEndpointUpdates:[(MRExternalDevice *)self wantsSystemEndpointNotifications] subscribedPlayerPaths:0];

  return v6;
}

@end