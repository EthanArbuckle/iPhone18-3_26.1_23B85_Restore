@interface MSHistoryCuratedCollection
+ (Class)managedClass;
- (MSHistoryCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (int)resultProviderIdentifier;
- (unint64_t)curatedCollectionIdentifier;
- (void)setCuratedCollectionIdentifier:(unint64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setResultProviderIdentifier:(int)a3;
@end

@implementation MSHistoryCuratedCollection

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1B62EB1A8(v6);
}

- (unint64_t)curatedCollectionIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [*(&self->super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setCuratedCollectionIdentifier:(unint64_t)a3
{
  v4 = self;
  sub_1B62EA878(a3);
}

- (int)resultProviderIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setResultProviderIdentifier:(int)a3
{
  v4 = self;
  sub_1B62EAC3C(a3);
}

- (MSHistoryCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = 0;
  v10 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end