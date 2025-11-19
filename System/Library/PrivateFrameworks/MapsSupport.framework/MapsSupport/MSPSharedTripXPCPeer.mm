@interface MSPSharedTripXPCPeer
- (MSPSharedTripXPCPeer)initWithConnection:(id)a3;
@end

@implementation MSPSharedTripXPCPeer

- (MSPSharedTripXPCPeer)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSPSharedTripXPCPeer;
  v5 = [(MSPSharedTripXPCPeer *)&v9 init];
  if (v5)
  {
    v6 = [v4 valueForEntitlement:@"com.apple.Maps.tripsharing.sharing"];
    v5->_canControlSharing = [v6 BOOLValue];

    v7 = [v4 valueForEntitlement:@"com.apple.Maps.tripsharing.receiving"];
    v5->_canControlReceiving = [v7 BOOLValue];
  }

  return v5;
}

@end