@interface MSSharedTripBlockedItem
+ (Class)managedClass;
- (MSSharedTripBlockedItem)initWithExpiryTime:(int64_t)a3 sharedTripIdentifier:(id)a4;
- (MSSharedTripBlockedItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSSharedTripBlockedItem)initWithStore:(id)a3 expiryTime:(int64_t)a4 sharedTripIdentifier:(id)a5;
- (NSString)sharedTripIdentifier;
- (int64_t)expiryTime;
- (void)setExpiryTime:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setSharedTripIdentifier:(id)a3;
@end

@implementation MSSharedTripBlockedItem

- (MSSharedTripBlockedItem)initWithExpiryTime:(int64_t)a3 sharedTripIdentifier:(id)a4
{
  if (a4)
  {
    sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (v7)
  {
    v9 = sub_1B63BEBC4();
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MSSharedTripBlockedItem *)self initWithStore:v8 expiryTime:a3 sharedTripIdentifier:v9];

  return v10;
}

- (MSSharedTripBlockedItem)initWithStore:(id)a3 expiryTime:(int64_t)a4 sharedTripIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_1B63BEBD4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return SharedTripBlockedItem.init(store:expiryTime:sharedTripIdentifier:)(a3, a4, v7, v9);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B631F4F4(v7, a4);
}

- (int64_t)expiryTime
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setExpiryTime:(int64_t)a3
{
  v4 = self;
  sub_1B631E138(a3);
}

- (NSString)sharedTripIdentifier
{
  v2 = self;
  sub_1B631E458();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1B63BEBC4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSharedTripIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1B631E864(v4, v6);
}

- (MSSharedTripBlockedItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B631ED10(a3, a4, v7, v6);
}

@end