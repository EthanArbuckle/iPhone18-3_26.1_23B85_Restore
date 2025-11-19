@interface MSVisit
+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5;
+ (BOOL)mergeDuplicatesWithStore:(id)a3 context:(id)a4 error:(id *)a5;
+ (BOOL)pruneVisitsWithContext:(id)a3 error:(id *)a4;
+ (Class)managedClass;
+ (NSString)key;
+ (id)retentionDate;
- (BOOL)hidden;
- (MSVisit)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSVisit)initWithStore:(id)a3 hidden:(BOOL)a4 startDate:(id)a5 visitClassification:(signed __int16)a6;
- (MSVisitedLocation)location;
- (NSDate)startDate;
- (signed)visitClassification;
- (void)removeVisit;
- (void)setHidden:(BOOL)a3;
- (void)setLocation:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setStartDate:(id)a3;
- (void)setVisitClassification:(signed __int16)a3;
@end

@implementation MSVisit

- (MSVisit)initWithStore:(id)a3 hidden:(BOOL)a4 startDate:(id)a5 visitClassification:(signed __int16)a6
{
  v6 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  if (a5)
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

  return Visit.init(store:hidden:startDate:visitClassification:)(a3, a4, v13, v6);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVisit();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1B633AA2C(v8, a4, a5);
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSVisit__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  sub_1B633AEA4(a3);
}

- (NSDate)startDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
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

- (void)setStartDate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  sub_1B633B878(v8);
}

- (signed)visitClassification
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSVisit__visitClassification);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setVisitClassification:(signed __int16)a3
{
  v4 = self;
  sub_1B633C204(a3);
}

- (MSVisitedLocation)location
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&self->super.super.isa + v3);
  v7 = *(&v5->super.super.isa + OBJC_IVAR___MSVisit__location);
  [v6 unlock];

  return v7;
}

- (void)setLocation:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B633D0DC(a3);
}

- (MSVisit)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B633C8E4(a3, a4, v7, v6);
}

+ (NSString)key
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (BOOL)mergeDuplicatesWithStore:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = objc_allocWithZone(type metadata accessor for VisitRequest());
  v8 = type metadata accessor for Visit();
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a3;
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
  v14.receiver = v7;
  v14.super_class = type metadata accessor for MapsSyncRequest();
  v9 = a3;
  v10 = a4;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v10;
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

+ (BOOL)pruneVisitsWithContext:(id)a3 error:(id *)a4
{
  swift_getObjCClassMetadata();
  v5 = a3;
  sub_1B6393E40();

  return 1;
}

+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  sub_1B6394A84(v7, v8);

  return 1;
}

- (void)removeVisit
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = self;
  sub_1B633AEA4(1);
  v8 = sub_1B63BE994();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1B633B878(v6);
  sub_1B633D0DC(0);
  sub_1B633C204(4);
}

@end