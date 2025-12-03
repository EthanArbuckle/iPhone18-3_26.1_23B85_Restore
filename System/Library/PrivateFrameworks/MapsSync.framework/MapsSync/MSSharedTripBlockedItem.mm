@interface MSSharedTripBlockedItem
+ (Class)managedClass;
- (MSSharedTripBlockedItem)initWithExpiryTime:(int64_t)time sharedTripIdentifier:(id)identifier;
- (MSSharedTripBlockedItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSSharedTripBlockedItem)initWithStore:(id)store expiryTime:(int64_t)time sharedTripIdentifier:(id)identifier;
- (NSString)sharedTripIdentifier;
- (int64_t)expiryTime;
- (void)setExpiryTime:(int64_t)time;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSharedTripIdentifier:(id)identifier;
@end

@implementation MSSharedTripBlockedItem

- (MSSharedTripBlockedItem)initWithExpiryTime:(int64_t)time sharedTripIdentifier:(id)identifier
{
  if (identifier)
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

  v10 = [(MSSharedTripBlockedItem *)self initWithStore:v8 expiryTime:time sharedTripIdentifier:v9];

  return v10;
}

- (MSSharedTripBlockedItem)initWithStore:(id)store expiryTime:(int64_t)time sharedTripIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = sub_1B63BEBD4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return SharedTripBlockedItem.init(store:expiryTime:sharedTripIdentifier:)(store, time, v7, v9);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B631F4F4(objectCopy, load);
}

- (int64_t)expiryTime
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setExpiryTime:(int64_t)time
{
  selfCopy = self;
  sub_1B631E138(time);
}

- (NSString)sharedTripIdentifier
{
  selfCopy = self;
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

- (void)setSharedTripIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B631E864(v4, v6);
}

- (MSSharedTripBlockedItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B631ED10(object, store, loadCopy, parentCopy);
}

@end