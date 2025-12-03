@interface MSPSharedTripXPCPeer
- (MSPSharedTripXPCPeer)initWithConnection:(id)connection;
@end

@implementation MSPSharedTripXPCPeer

- (MSPSharedTripXPCPeer)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MSPSharedTripXPCPeer;
  v5 = [(MSPSharedTripXPCPeer *)&v9 init];
  if (v5)
  {
    v6 = [connectionCopy valueForEntitlement:@"com.apple.Maps.tripsharing.sharing"];
    v5->_canControlSharing = [v6 BOOLValue];

    v7 = [connectionCopy valueForEntitlement:@"com.apple.Maps.tripsharing.receiving"];
    v5->_canControlReceiving = [v7 BOOLValue];
  }

  return v5;
}

@end