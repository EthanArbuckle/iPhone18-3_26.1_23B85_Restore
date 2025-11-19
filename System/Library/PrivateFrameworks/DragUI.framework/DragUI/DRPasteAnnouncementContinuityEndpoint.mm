@interface DRPasteAnnouncementContinuityEndpoint
- (BOOL)isSimilarToContinuityEndpoint:(id)a3;
- (DRPasteAnnouncementContinuityEndpoint)initWithDeviceName:(id)a3;
@end

@implementation DRPasteAnnouncementContinuityEndpoint

- (DRPasteAnnouncementContinuityEndpoint)initWithDeviceName:(id)a3
{
  v4.receiver = self;
  v4.super_class = DRPasteAnnouncementContinuityEndpoint;
  return [(DRPasteAnnouncementEndpoint *)&v4 _initWithLocalizedName:a3];
}

- (BOOL)isSimilarToContinuityEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(DRPasteAnnouncementContinuityEndpoint *)self deviceName];
  v6 = [v4 deviceName];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(DRPasteAnnouncementContinuityEndpoint *)self deviceName];
    v8 = [v4 deviceName];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

@end