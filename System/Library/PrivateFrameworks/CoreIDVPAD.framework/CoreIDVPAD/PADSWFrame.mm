@interface PADSWFrame
- (_TtC10CoreIDVPAD10PADSWFrame)init;
- (void)dealloc;
@end

@implementation PADSWFrame

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  if (qword_27EE20D30 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_27EE212F0 object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for PADSWFrame();
  [(PADSWFrame *)&v6 dealloc];
}

- (_TtC10CoreIDVPAD10PADSWFrame)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end