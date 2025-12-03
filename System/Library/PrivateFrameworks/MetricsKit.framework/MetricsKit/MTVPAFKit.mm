@interface MTVPAFKit
- (id)trackerWithPlayList:(id)list eventData:(id)data;
@end

@implementation MTVPAFKit

- (id)trackerWithPlayList:(id)list eventData:(id)data
{
  dataCopy = data;
  listCopy = list;
  v8 = [[MTMediaActivityTracker alloc] initWithVPAFKit:self playlist:listCopy eventData:dataCopy];

  return v8;
}

@end