@interface MSServerEvaluationStatus
+ (Class)managedClass;
- (MSServerEvaluationStatus)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (int64_t)positionIndex;
- (void)setArpStatus:(BOOL)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setRapStatus:(BOOL)a3;
- (void)setReliabilityStatus:(BOOL)a3;
@end

@implementation MSServerEvaluationStatus

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1B631D878(v6);
}

- (void)setArpStatus:(BOOL)a3
{
  v4 = self;
  sub_1B631C160(a3);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B631C4C4(a3);
}

- (void)setRapStatus:(BOOL)a3
{
  v4 = self;
  sub_1B631C7D8(a3);
}

- (void)setReliabilityStatus:(BOOL)a3
{
  v4 = self;
  sub_1B631CB64(a3);
}

- (MSServerEvaluationStatus)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B631CE78(a3, a4, v7, v6);
}

@end