@interface MSCuratedCollection
+ (Class)managedClass;
- (MSCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (int)resultProviderIdentifier;
- (void)setCuratedCollectionIdentifier:(unint64_t)identifier;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setResultProviderIdentifier:(int)identifier;
@end

@implementation MSCuratedCollection

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62E0D80(objectCopy);
}

- (void)setCuratedCollectionIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_1B62DFBE8(identifier);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62DFE98(index);
}

- (int)resultProviderIdentifier
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCuratedCollection__resultProviderIdentifier);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setResultProviderIdentifier:(int)identifier
{
  selfCopy = self;
  sub_1B62E0268(identifier);
}

- (MSCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62E0570(object, store, loadCopy, parentCopy);
}

@end