@interface MRDSystemEndpointEntry
- (id)description;
@end

@implementation MRDSystemEndpointEntry

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(MRDSystemEndpointEntry *)self outputDeviceUID];
  [(MRDSystemEndpointEntry *)self type];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  [(MRDSystemEndpointEntry *)self changeType];
  v6 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
  v7 = [(MRDSystemEndpointEntry *)self date];
  v8 = [(MRDSystemEndpointEntry *)self eventReason];
  v9 = [(MRDSystemEndpointEntry *)self selectionReason];
  v10 = [v3 initWithFormat:@"%@-%@-%@-%@-%@-%@", v4, active, v6, v7, v8, v9];

  return v10;
}

@end