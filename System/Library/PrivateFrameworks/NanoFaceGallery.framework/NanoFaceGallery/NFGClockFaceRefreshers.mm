@interface NFGClockFaceRefreshers
+ (id)galleryRefresherForDevice:(id)device;
- (NFGClockFaceRefreshers)init;
@end

@implementation NFGClockFaceRefreshers

+ (id)galleryRefresherForDevice:(id)device
{
  deviceCopy = device;
  v4 = sub_25B0DCB18(deviceCopy);

  return v4;
}

- (NFGClockFaceRefreshers)init
{
  v3.receiver = self;
  v3.super_class = NFGClockFaceRefreshers;
  return [(NFGClockFaceRefreshers *)&v3 init];
}

@end