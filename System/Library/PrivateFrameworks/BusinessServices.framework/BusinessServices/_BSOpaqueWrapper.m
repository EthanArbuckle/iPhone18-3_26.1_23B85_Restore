@interface _BSOpaqueWrapper
- (_BSOpaqueWrapper)init;
- (id)init:(id)a3;
- (id)wrappedThing;
@end

@implementation _BSOpaqueWrapper

- (id)init:(id)a3
{
  swift_unknownObjectRetain();
  sub_2155DAA1C();
  swift_unknownObjectRelease();
  sub_2155B0F9C(v7, self + OBJC_IVAR____BSOpaqueWrapper_wrappedThing);
  v6.receiver = self;
  v6.super_class = type metadata accessor for OpaqueWrapper();
  v4 = [(_BSOpaqueWrapper *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

- (id)wrappedThing
{
  sub_2155B0F9C(self + OBJC_IVAR____BSOpaqueWrapper_wrappedThing, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_2155DAB9C();
  __swift_destroy_boxed_opaque_existential_1(v4);

  return v2;
}

- (_BSOpaqueWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end