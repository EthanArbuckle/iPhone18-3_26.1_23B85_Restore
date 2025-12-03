@interface MRRemoveSyncedEndpointsMessage
- (MRRemoveSyncedEndpointsMessage)initWithEndpointUIDs:(id)ds;
- (NSArray)endpointUIDs;
@end

@implementation MRRemoveSyncedEndpointsMessage

- (MRRemoveSyncedEndpointsMessage)initWithEndpointUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = MRRemoveSyncedEndpointsMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRemoveEndpointsMessageProtobuf);
    v7 = [dsCopy mutableCopy];
    [(_MRRemoveEndpointsMessageProtobuf *)v6 setEndpointUIDs:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSArray)endpointUIDs
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  endpointUIDs = [underlyingCodableMessage endpointUIDs];

  return endpointUIDs;
}

@end