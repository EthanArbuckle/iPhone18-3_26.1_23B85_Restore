@interface MNRealtimeTransitUpdate
- (MNRealtimeTransitUpdate)initWithCoder:(id)a3;
- (MNRealtimeTransitUpdate)initWithTransitRouteUpdate:(id)a3;
- (id)routeID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNRealtimeTransitUpdate

- (MNRealtimeTransitUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MNRealtimeTransitUpdate;
  v5 = [(MNRealtimeUpdate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transitUpdate"];
    transitUpdate = v5->_transitUpdate;
    v5->_transitUpdate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MNRealtimeTransitUpdate;
  [(MNRealtimeUpdate *)&v6 encodeWithCoder:v4];
  transitUpdate = self->_transitUpdate;
  if (transitUpdate)
  {
    [v4 encodeObject:transitUpdate forKey:@"transitUpdate"];
  }
}

- (id)routeID
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = [(GEOTransitRouteUpdate *)self->_transitUpdate routeIdentifier];
  v4 = [v3 clientRouteHandle];
  v5 = [v2 _maps_UUIDWithData:v4];

  return v5;
}

- (MNRealtimeTransitUpdate)initWithTransitRouteUpdate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MNRealtimeTransitUpdate;
  v6 = [(MNRealtimeTransitUpdate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitUpdate, a3);
    v8 = v7;
  }

  return v7;
}

@end