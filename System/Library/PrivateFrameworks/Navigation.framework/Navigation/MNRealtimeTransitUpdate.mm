@interface MNRealtimeTransitUpdate
- (MNRealtimeTransitUpdate)initWithCoder:(id)coder;
- (MNRealtimeTransitUpdate)initWithTransitRouteUpdate:(id)update;
- (id)routeID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNRealtimeTransitUpdate

- (MNRealtimeTransitUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MNRealtimeTransitUpdate;
  v5 = [(MNRealtimeUpdate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transitUpdate"];
    transitUpdate = v5->_transitUpdate;
    v5->_transitUpdate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = MNRealtimeTransitUpdate;
  [(MNRealtimeUpdate *)&v6 encodeWithCoder:coderCopy];
  transitUpdate = self->_transitUpdate;
  if (transitUpdate)
  {
    [coderCopy encodeObject:transitUpdate forKey:@"transitUpdate"];
  }
}

- (id)routeID
{
  v2 = MEMORY[0x1E696AFB0];
  routeIdentifier = [(GEOTransitRouteUpdate *)self->_transitUpdate routeIdentifier];
  clientRouteHandle = [routeIdentifier clientRouteHandle];
  v5 = [v2 _maps_UUIDWithData:clientRouteHandle];

  return v5;
}

- (MNRealtimeTransitUpdate)initWithTransitRouteUpdate:(id)update
{
  updateCopy = update;
  v10.receiver = self;
  v10.super_class = MNRealtimeTransitUpdate;
  v6 = [(MNRealtimeTransitUpdate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitUpdate, update);
    v8 = v7;
  }

  return v7;
}

@end