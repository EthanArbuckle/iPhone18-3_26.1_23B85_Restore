@interface WidgetEntry
- (NSString)description;
- (_TtC9ChronoKit11WidgetEntry)init;
- (void)invalidate;
@end

@implementation WidgetEntry

- (void)invalidate
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v4 + 24);
  selfCopy = self;
  v5();
}

- (_TtC9ChronoKit11WidgetEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  WidgetEntry.description.getter();

  v3 = sub_1BF4E88E4();

  return v3;
}

@end