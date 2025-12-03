@interface DRPasteAnnouncementContinuityEndpoint
- (BOOL)isSimilarToContinuityEndpoint:(id)endpoint;
- (DRPasteAnnouncementContinuityEndpoint)initWithDeviceName:(id)name;
@end

@implementation DRPasteAnnouncementContinuityEndpoint

- (DRPasteAnnouncementContinuityEndpoint)initWithDeviceName:(id)name
{
  v4.receiver = self;
  v4.super_class = DRPasteAnnouncementContinuityEndpoint;
  return [(DRPasteAnnouncementEndpoint *)&v4 _initWithLocalizedName:name];
}

- (BOOL)isSimilarToContinuityEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  deviceName = [(DRPasteAnnouncementContinuityEndpoint *)self deviceName];
  deviceName2 = [endpointCopy deviceName];
  if (deviceName == deviceName2)
  {
    v9 = 1;
  }

  else
  {
    deviceName3 = [(DRPasteAnnouncementContinuityEndpoint *)self deviceName];
    deviceName4 = [endpointCopy deviceName];
    v9 = [deviceName3 isEqual:deviceName4];
  }

  return v9;
}

@end