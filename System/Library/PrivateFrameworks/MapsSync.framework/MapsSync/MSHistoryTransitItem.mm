@interface MSHistoryTransitItem
+ (Class)managedClass;
- (MSHistoryTransitItem)initWithMuid:(unint64_t)muid transitLineStorage:(id)storage;
- (MSHistoryTransitItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryTransitItem)initWithStore:(id)store muid:(unint64_t)muid transitLineStorage:(id)storage;
- (NSData)transitLineStorage;
- (unint64_t)muid;
- (void)setMuid:(unint64_t)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setTransitLineStorage:(id)storage;
@end

@implementation MSHistoryTransitItem

- (MSHistoryTransitItem)initWithMuid:(unint64_t)muid transitLineStorage:(id)storage
{
  if (storage)
  {
    storageCopy = storage;
    v7 = sub_1B63BE924();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (v9 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(v7, v9);
    v11 = sub_1B63BE904();
    sub_1B6284F64(v7, v9);
  }

  v12 = [(MSHistoryTransitItem *)self initWithStore:v10 muid:muid transitLineStorage:v11];
  sub_1B6284F64(v7, v9);

  return v12;
}

- (MSHistoryTransitItem)initWithStore:(id)store muid:(unint64_t)muid transitLineStorage:(id)storage
{
  storageCopy = storage;
  if (storage)
  {
    storeCopy = store;
    v9 = storageCopy;
    storageCopy = sub_1B63BE924();
    v11 = v10;
  }

  else
  {
    storeCopy2 = store;
    v11 = 0xF000000000000000;
  }

  return HistoryTransitItem.init(store:muid:transitLineStorage:)(store, muid, storageCopy, v11);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B63075F4(objectCopy, load);
}

- (unint64_t)muid
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__muid);
  [*(&self->super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setMuid:(unint64_t)muid
{
  selfCopy = self;
  sub_1B63069B8(muid);
}

- (NSData)transitLineStorage
{
  selfCopy = self;
  v3 = sub_1B6306CE4();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1B63BE904();
    sub_1B6284F64(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (void)setTransitLineStorage:(id)storage
{
  storageCopy = storage;
  if (storage)
  {
    selfCopy = self;
    v5 = storageCopy;
    storageCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B6307750(storageCopy, v7);
  sub_1B6284F64(storageCopy, v7);
}

- (MSHistoryTransitItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__muid) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage) = xmmword_1B63C3E40;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end