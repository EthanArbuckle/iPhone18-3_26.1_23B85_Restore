@interface MTVPAFKit
- (id)trackerWithPlayList:(id)a3 eventData:(id)a4;
@end

@implementation MTVPAFKit

- (id)trackerWithPlayList:(id)a3 eventData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MTMediaActivityTracker alloc] initWithVPAFKit:self playlist:v7 eventData:v6];

  return v8;
}

@end