@interface MSHistoryRideShareItem
+ (Class)managedClass;
- (MSHistoryRideShareItem)initWithEndWaypoint:(id)a3 startWaypoint:(id)a4;
- (MSHistoryRideShareItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryRideShareItem)initWithStore:(id)a3 endWaypoint:(id)a4 startWaypoint:(id)a5;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSHistoryRideShareItem

- (MSHistoryRideShareItem)initWithEndWaypoint:(id)a3 startWaypoint:(id)a4
{
  v5 = a3;
  if (!a3)
  {
    v13 = a4;
    v9 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0xF000000000000000;
    return HistoryRideShareItem.init(endWaypoint:startWaypoint:)(v5, v9, v10, v12);
  }

  v6 = a4;
  v7 = v5;
  v5 = sub_1B63BE924();
  v9 = v8;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1B63BE924();
  v12 = v11;

  return HistoryRideShareItem.init(endWaypoint:startWaypoint:)(v5, v9, v10, v12);
}

- (MSHistoryRideShareItem)initWithStore:(id)a3 endWaypoint:(id)a4 startWaypoint:(id)a5
{
  v6 = a4;
  if (!a4)
  {
    v16 = a3;
    v17 = a5;
    v12 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0xF000000000000000;
    return HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(a3, v6, v12, v13, v15);
  }

  v8 = a3;
  v9 = a5;
  v10 = v6;
  v6 = sub_1B63BE924();
  v12 = v11;

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1B63BE924();
  v15 = v14;

  return HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(a3, v6, v12, v13, v15);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B6302348(v7, a4);
}

- (MSHistoryRideShareItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint) = xmmword_1B63C3E40;
  v10 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end