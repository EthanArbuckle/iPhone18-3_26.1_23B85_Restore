@interface MRRemoveSyncedEndpointsMessage
- (MRRemoveSyncedEndpointsMessage)initWithEndpointUIDs:(id)a3;
- (NSArray)endpointUIDs;
@end

@implementation MRRemoveSyncedEndpointsMessage

- (MRRemoveSyncedEndpointsMessage)initWithEndpointUIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRRemoveSyncedEndpointsMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRemoveEndpointsMessageProtobuf);
    v7 = [v4 mutableCopy];
    [(_MRRemoveEndpointsMessageProtobuf *)v6 setEndpointUIDs:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSArray)endpointUIDs
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 endpointUIDs];

  return v3;
}

@end