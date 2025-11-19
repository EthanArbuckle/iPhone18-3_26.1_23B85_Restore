@interface XPCGuidanceContainer
- (_TtC17EnergyKitInternal20XPCGuidanceContainer)init;
- (_TtC17EnergyKitInternal20XPCGuidanceContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCGuidanceContainer

- (_TtC17EnergyKitInternal20XPCGuidanceContainer)initWithCoder:(id)a3
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance);
  v5 = a3;
  v6 = sub_20DF47B24();
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance);
  v5 = a3;
  v6 = self;
  sub_20DF47B34();
}

- (_TtC17EnergyKitInternal20XPCGuidanceContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end