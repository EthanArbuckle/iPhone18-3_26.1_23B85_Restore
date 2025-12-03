@interface MSHistoryCuratedCollection
+ (Class)managedClass;
- (MSHistoryCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (int)resultProviderIdentifier;
- (unint64_t)curatedCollectionIdentifier;
- (void)setCuratedCollectionIdentifier:(unint64_t)identifier;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setResultProviderIdentifier:(int)identifier;
@end

@implementation MSHistoryCuratedCollection

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62EB1A8(objectCopy);
}

- (unint64_t)curatedCollectionIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier);
  [*(&self->super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setCuratedCollectionIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_1B62EA878(identifier);
}

- (int)resultProviderIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setResultProviderIdentifier:(int)identifier
{
  selfCopy = self;
  sub_1B62EAC3C(identifier);
}

- (MSHistoryCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__curatedCollectionIdentifier) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryCuratedCollection__resultProviderIdentifier) = 0;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end