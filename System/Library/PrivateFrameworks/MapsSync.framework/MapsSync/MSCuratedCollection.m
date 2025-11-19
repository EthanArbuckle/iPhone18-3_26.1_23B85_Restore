@interface MSCuratedCollection
+ (Class)managedClass;
- (MSCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (int)resultProviderIdentifier;
- (void)setCuratedCollectionIdentifier:(unint64_t)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setResultProviderIdentifier:(int)a3;
@end

@implementation MSCuratedCollection

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1B62E0D80(v6);
}

- (void)setCuratedCollectionIdentifier:(unint64_t)a3
{
  v4 = self;
  sub_1B62DFBE8(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62DFE98(a3);
}

- (int)resultProviderIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setResultProviderIdentifier:(int)a3
{
  v4 = self;
  sub_1B62E0268(a3);
}

- (MSCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62E0570(a3, a4, v7, v6);
}

@end