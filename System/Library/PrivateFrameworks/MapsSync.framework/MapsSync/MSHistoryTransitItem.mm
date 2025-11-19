@interface MSHistoryTransitItem
+ (Class)managedClass;
- (MSHistoryTransitItem)initWithMuid:(unint64_t)a3 transitLineStorage:(id)a4;
- (MSHistoryTransitItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryTransitItem)initWithStore:(id)a3 muid:(unint64_t)a4 transitLineStorage:(id)a5;
- (NSData)transitLineStorage;
- (unint64_t)muid;
- (void)setMuid:(unint64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setTransitLineStorage:(id)a3;
@end

@implementation MSHistoryTransitItem

- (MSHistoryTransitItem)initWithMuid:(unint64_t)a3 transitLineStorage:(id)a4
{
  if (a4)
  {
    v6 = a4;
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

  v12 = [(MSHistoryTransitItem *)self initWithStore:v10 muid:a3 transitLineStorage:v11];
  sub_1B6284F64(v7, v9);

  return v12;
}

- (MSHistoryTransitItem)initWithStore:(id)a3 muid:(unint64_t)a4 transitLineStorage:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a3;
    v9 = v5;
    v5 = sub_1B63BE924();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v11 = 0xF000000000000000;
  }

  return HistoryTransitItem.init(store:muid:transitLineStorage:)(a3, a4, v5, v11);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B63075F4(v7, a4);
}

- (unint64_t)muid
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__muid);
  [*(&self->super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setMuid:(unint64_t)a3
{
  v4 = self;
  sub_1B63069B8(a3);
}

- (NSData)transitLineStorage
{
  v2 = self;
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

- (void)setTransitLineStorage:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B6307750(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (MSHistoryTransitItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__muid) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage) = xmmword_1B63C3E40;
  v10 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end