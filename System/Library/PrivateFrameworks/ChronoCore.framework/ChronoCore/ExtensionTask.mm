@interface ExtensionTask
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC10ChronoCore13ExtensionTask)init;
- (int64_t)hash;
@end

@implementation ExtensionTask

- (NSString)description
{
  v2 = self;
  sub_224A40C80();
  MEMORY[0x22AA5D210](46, 0xE100000000000000);
  MEMORY[0x22AA5D210](*(&v2->super.isa + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest), *&v2->_anon_0[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest]);

  v3 = sub_224DAEDE8();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_224DA98E8();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_224A4B790(v8);

  sub_224A3311C(v8, &qword_27D6F4760, &unk_224DB3680);
  return v6 & 1;
}

- (_TtC10ChronoCore13ExtensionTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end