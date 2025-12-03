@interface GestureTimestamps
- (NSString)debugDescription;
- (_TtC13CoreIDVShared17GestureTimestamps)init;
- (_TtC13CoreIDVShared17GestureTimestamps)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GestureTimestamps

- (_TtC13CoreIDVShared17GestureTimestamps)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A70);
  coderCopy = coder;
  v7 = sub_225CCEF34();
  if (!v7 || (v8 = sub_225B5F2C8(v7, sub_2259D5520, MEMORY[0x277CC9F98]), , !v8))
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps) = v8;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(GestureTimestamps *)&v11 init];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_225CCE7F4();
  v6 = sub_225CCE444();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (NSString)debugDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared17GestureTimestamps_timestamps);
  selfCopy = self;
  MEMORY[0x22AA6D090](v2, MEMORY[0x277D84D38]);

  v4 = sub_225CCE444();

  return v4;
}

- (_TtC13CoreIDVShared17GestureTimestamps)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end