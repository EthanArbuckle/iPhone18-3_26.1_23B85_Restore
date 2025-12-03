@interface MRDSystemEndpointEntry
- (id)description;
@end

@implementation MRDSystemEndpointEntry

- (id)description
{
  v3 = [NSString alloc];
  outputDeviceUID = [(MRDSystemEndpointEntry *)self outputDeviceUID];
  [(MRDSystemEndpointEntry *)self type];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  [(MRDSystemEndpointEntry *)self changeType];
  v6 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
  date = [(MRDSystemEndpointEntry *)self date];
  eventReason = [(MRDSystemEndpointEntry *)self eventReason];
  selectionReason = [(MRDSystemEndpointEntry *)self selectionReason];
  v10 = [v3 initWithFormat:@"%@-%@-%@-%@-%@-%@", outputDeviceUID, active, v6, date, eventReason, selectionReason];

  return v10;
}

@end