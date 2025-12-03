@interface MSVisit
+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error;
+ (BOOL)mergeDuplicatesWithStore:(id)store context:(id)context error:(id *)error;
+ (BOOL)pruneVisitsWithContext:(id)context error:(id *)error;
+ (Class)managedClass;
+ (NSString)key;
+ (id)retentionDate;
- (BOOL)hidden;
- (MSVisit)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSVisit)initWithStore:(id)store hidden:(BOOL)hidden startDate:(id)date visitClassification:(signed __int16)classification;
- (MSVisitedLocation)location;
- (NSDate)startDate;
- (signed)visitClassification;
- (void)removeVisit;
- (void)setHidden:(BOOL)hidden;
- (void)setLocation:(id)location;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setStartDate:(id)date;
- (void)setVisitClassification:(signed __int16)classification;
@end

@implementation MSVisit

- (MSVisit)initWithStore:(id)store hidden:(BOOL)hidden startDate:(id)date visitClassification:(signed __int16)classification
{
  classificationCopy = classification;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  if (date)
  {
    sub_1B63BE974();
    v14 = sub_1B63BE994();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1B63BE994();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  return Visit.init(store:hidden:startDate:visitClassification:)(store, hidden, v13, classificationCopy);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVisit();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B633AA2C(objectCopy, load, parent);
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisit__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B633AEA4(hidden);
}

- (NSDate)startDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1B633B278(v6);

  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE954();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setStartDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (date)
  {
    sub_1B63BE974();
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1B633B878(v8);
}

- (signed)visitClassification
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisit__visitClassification);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setVisitClassification:(signed __int16)classification
{
  selfCopy = self;
  sub_1B633C204(classification);
}

- (MSVisitedLocation)location
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&self->super.super.isa + v3);
  v7 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisit__location);
  [v6 unlock];

  return v7;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  sub_1B633D0DC(location);
}

- (MSVisit)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B633C8E4(object, store, loadCopy, parentCopy);
}

+ (NSString)key
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (BOOL)mergeDuplicatesWithStore:(id)store context:(id)context error:(id *)error
{
  v7 = objc_allocWithZone(type metadata accessor for VisitRequest());
  v8 = type metadata accessor for Visit();
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = store;
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
  v14.receiver = v7;
  v14.super_class = type metadata accessor for MapsSyncRequest();
  storeCopy = store;
  contextCopy = context;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = contextCopy;
  sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v12, MEMORY[0x1E69E7CC0], v11, v12);

  return 1;
}

+ (id)retentionDate
{
  v2 = sub_1B63BE994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6394008();
  v7 = sub_1B63BE954();
  (*(v3 + 8))(v6, v2);

  return v7;
}

+ (BOOL)pruneVisitsWithContext:(id)context error:(id *)error
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  sub_1B6393E40();

  return 1;
}

+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error
{
  swift_getObjCClassMetadata();
  storeCopy = store;
  contextCopy = context;
  sub_1B6394A84(storeCopy, contextCopy);

  return 1;
}

- (void)removeVisit
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  selfCopy = self;
  sub_1B633AEA4(1);
  v8 = sub_1B63BE994();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1B633B878(v6);
  sub_1B633D0DC(0);
  sub_1B633C204(4);
}

@end