@interface MSServerEvaluationStatus
+ (Class)managedClass;
- (MSServerEvaluationStatus)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (int64_t)positionIndex;
- (void)setArpStatus:(BOOL)status;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setRapStatus:(BOOL)status;
- (void)setReliabilityStatus:(BOOL)status;
@end

@implementation MSServerEvaluationStatus

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B631D878(objectCopy);
}

- (void)setArpStatus:(BOOL)status
{
  selfCopy = self;
  sub_1B631C160(status);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B631C4C4(index);
}

- (void)setRapStatus:(BOOL)status
{
  selfCopy = self;
  sub_1B631C7D8(status);
}

- (void)setReliabilityStatus:(BOOL)status
{
  selfCopy = self;
  sub_1B631CB64(status);
}

- (MSServerEvaluationStatus)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B631CE78(object, store, loadCopy, parentCopy);
}

@end