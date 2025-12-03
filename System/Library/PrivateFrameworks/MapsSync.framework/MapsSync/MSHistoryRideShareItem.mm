@interface MSHistoryRideShareItem
+ (Class)managedClass;
- (MSHistoryRideShareItem)initWithEndWaypoint:(id)waypoint startWaypoint:(id)startWaypoint;
- (MSHistoryRideShareItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryRideShareItem)initWithStore:(id)store endWaypoint:(id)waypoint startWaypoint:(id)startWaypoint;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSHistoryRideShareItem

- (MSHistoryRideShareItem)initWithEndWaypoint:(id)waypoint startWaypoint:(id)startWaypoint
{
  waypointCopy = waypoint;
  if (!waypoint)
  {
    startWaypointCopy = startWaypoint;
    v9 = 0xF000000000000000;
    if (startWaypoint)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0xF000000000000000;
    return HistoryRideShareItem.init(endWaypoint:startWaypoint:)(waypointCopy, v9, v10, v12);
  }

  startWaypointCopy2 = startWaypoint;
  v7 = waypointCopy;
  waypointCopy = sub_1B63BE924();
  v9 = v8;

  if (!startWaypoint)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1B63BE924();
  v12 = v11;

  return HistoryRideShareItem.init(endWaypoint:startWaypoint:)(waypointCopy, v9, v10, v12);
}

- (MSHistoryRideShareItem)initWithStore:(id)store endWaypoint:(id)waypoint startWaypoint:(id)startWaypoint
{
  waypointCopy = waypoint;
  if (!waypoint)
  {
    storeCopy = store;
    startWaypointCopy = startWaypoint;
    v12 = 0xF000000000000000;
    if (startWaypoint)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0xF000000000000000;
    return HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(store, waypointCopy, v12, v13, v15);
  }

  storeCopy2 = store;
  startWaypointCopy2 = startWaypoint;
  v10 = waypointCopy;
  waypointCopy = sub_1B63BE924();
  v12 = v11;

  if (!startWaypoint)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1B63BE924();
  v15 = v14;

  return HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(store, waypointCopy, v12, v13, v15);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6302348(objectCopy, load);
}

- (MSHistoryRideShareItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint) = xmmword_1B63C3E40;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end