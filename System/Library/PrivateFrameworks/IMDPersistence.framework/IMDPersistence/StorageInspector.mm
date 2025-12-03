@interface StorageInspector
+ (id)createFromData:(id)data error:(id *)error;
- (NSString)description;
- (_TtC14IMDPersistence16StorageInspector)init;
- (id)encodeToData:(id *)data;
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation StorageInspector

- (_TtC14IMDPersistence16StorageInspector)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options) = 31;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior) = 1;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(StorageInspector *)&v5 init];
}

- (NSString)description
{
  selfCopy = self;
  StorageInspector.description.getter();

  v3 = sub_1B7CFEA30();

  return v3;
}

- (void)runWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  StorageInspector.run(_:)(sub_1B7C542DC, v5);
}

- (id)encodeToData:(id *)data
{
  swift_getObjectType();
  v4 = sub_1B7CFDC10();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  selfCopy = self;
  sub_1B7CFDC00();
  sub_1B7C53DEC(&qword_1EBA528A8);
  v8 = sub_1B7CFDBF0();
  v10 = v9;

  v11 = sub_1B7CFE010();
  sub_1B7C204B0(v8, v10);

  return v11;
}

+ (id)createFromData:(id)data error:(id *)error
{
  swift_getObjCClassMetadata();
  dataCopy = data;
  v6 = sub_1B7CFE020();
  v8 = v7;

  v9 = sub_1B7CFDBE0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1B7CFDBD0();
  sub_1B7C53DEC(&qword_1EBA528B0);
  sub_1B7CFDBC0();
  sub_1B7C204B0(v6, v8);

  return v13;
}

@end