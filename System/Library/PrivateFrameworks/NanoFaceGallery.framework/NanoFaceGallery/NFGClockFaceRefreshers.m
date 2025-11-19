@interface NFGClockFaceRefreshers
+ (id)galleryRefresherForDevice:(id)a3;
- (NFGClockFaceRefreshers)init;
@end

@implementation NFGClockFaceRefreshers

+ (id)galleryRefresherForDevice:(id)a3
{
  v3 = a3;
  v4 = sub_25B0DCB18(v3);

  return v4;
}

- (NFGClockFaceRefreshers)init
{
  v3.receiver = self;
  v3.super_class = NFGClockFaceRefreshers;
  return [(NFGClockFaceRefreshers *)&v3 init];
}

@end