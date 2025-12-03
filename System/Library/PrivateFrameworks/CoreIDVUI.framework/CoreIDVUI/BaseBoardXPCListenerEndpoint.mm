@interface BaseBoardXPCListenerEndpoint
+ (BOOL)supportsBSXPCSecureCoding;
- (_TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint)init;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BaseBoardXPCListenerEndpoint

+ (BOOL)supportsBSXPCSecureCoding
{
  sub_2458D1778();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata supportsBSXPCSecureCoding];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint_endpoint);
  sub_2458D1778();
  swift_unknownObjectRetain();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B448);
  sub_245910A74();
  v7 = sub_2459109C4();

  [coder encodeObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (_TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end