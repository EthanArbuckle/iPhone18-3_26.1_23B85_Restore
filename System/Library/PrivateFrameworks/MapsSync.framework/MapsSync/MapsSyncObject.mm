@interface MapsSyncObject
+ (id)findDuplicatesWithContext:(id)a3;
+ (id)mergeWithDuplicates:(id)a3;
- (BOOL)hasChanges;
- (BOOL)isStored;
- (NSManagedObjectID)managedId;
- (NSString)description;
- (NSUUID)identifier;
- (_TtC8MapsSync14MapsSyncObject)init;
- (_TtC8MapsSync14MapsSyncObject)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (id)getManagedObjectOnContextWithLock:(id)a3 context:(id)a4;
- (id)getManagedObjectWithContext:(id)a3;
- (id)onDeleteWithManagedObject:(id)a3 context:(id)a4;
- (int64_t)hash;
- (void)addEdit:(id)a3 :(id)a4;
- (void)flushChanges;
- (void)performEditsOnContextWithLock:(id)a3 managedObject:(id)a4 context:(id)a5;
- (void)performEditsWithManagedObject:(id)a3 context:(id)a4;
- (void)setIdentifier:(id)a3;
- (void)setManagedId:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)withPropertyLock:(id)a3;
@end

@implementation MapsSyncObject

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1B628A1C4();

  return v3;
}

- (NSUUID)identifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v9 = self;
  [v8 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v9 + v10, v6, &unk_1EB943680, qword_1B63C4070);
  [*(&self->super.isa + v7) unlock];

  v11 = sub_1B63BEA04();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1B63BE9C4();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (_TtC8MapsSync14MapsSyncObject)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    v5 = self;
    swift_once();
    self = v5;
  }

  v3 = qword_1EDB0F2A8;

  return [(MapsSyncObject *)self initWithObject:0 store:v3 lazyLoad:0 parent:1];
}

- (NSString)description
{
  v2 = self;
  sub_1B629B8E0();

  v3 = sub_1B63BEBC4();

  return v3;
}

- (_TtC8MapsSync14MapsSyncObject)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B63983D0(a3, a4, v7, v6);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = MEMORY[0x1E69E7CC0];
}

- (id)onDeleteWithManagedObject:(id)a3 context:(id)a4
{
  sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v4 = sub_1B63BEC94();

  return v4;
}

- (NSManagedObjectID)managedId
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&self->super.isa + v3);
  v7 = *(&v5->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  [v6 unlock];

  return v7;
}

- (void)setManagedId:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v10 = self;
  [v6 lock];
  v8 = *(&v10->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  *(&v10->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = a3;
  v9 = v7;

  [*(&self->super.isa + v5) unlock];
}

- (BOOL)isStored
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v7 = *(&self->super.isa + v3);
  v8 = v6;
  [v7 unlock];

  if (v6)
  {
  }

  return v6 != 0;
}

- (BOOL)hasChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  LOBYTE(v6) = (*(&v5->super.isa + v6))[2] != 0;
  [*(&self->super.isa + v3) unlock];

  return v6;
}

- (void)setIdentifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_1B63BE9E4();
    v9 = sub_1B63BEA04();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BEA04();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_1B6396718(v8, 1);

  sub_1B6284EAC(v8, &unk_1EB943680, qword_1B63C4070);
}

- (void)withPropertyLock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = self;
  [v6 lock];
  v4[2](v4, *(&self->super.isa + v5));
  _Block_release(v4);
  [*(&self->super.isa + v5) unlock];
}

- (void)addEdit:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1B6397B6C(v8, sub_1B639A4C4, v7);
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_1B6283D00(v6);
}

- (id)getManagedObjectWithContext:(id)a3
{
  v4 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v6 = a3;
  v7 = self;
  [v5 lock];
  v8 = sub_1B629563C(*(&self->super.isa + v4), v6);
  [*(&self->super.isa + v4) unlock];

  return v8;
}

- (id)getManagedObjectOnContextWithLock:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1B629563C(v6, v7);

  return v9;
}

- (void)performEditsWithManagedObject:(id)a3 context:(id)a4
{
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v8 = a3;
  v10 = a4;
  v9 = self;
  [v7 lock];
  sub_1B6397CB8(*(&self->super.isa + v6), v8, v10);
  [*(&self->super.isa + v6) unlock];
}

- (void)performEditsOnContextWithLock:(id)a3 managedObject:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1B6397CB8(v8, v9, v10);
}

+ (id)mergeWithDuplicates:(id)a3
{
  sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = sub_1B63BECA4();
  v4 = sub_1B63A6364(v3);

  return v4;
}

+ (id)findDuplicatesWithContext:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_1B63A38A0(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
  v5 = sub_1B63BEC94();

  return v5;
}

@end