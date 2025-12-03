@interface PADSWFrame
- (_TtC10CoreIDVPAD10PADSWFrame)init;
- (void)dealloc;
@end

@implementation PADSWFrame

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  if (qword_27EE20D30 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_27EE212F0 object:0];

  v6.receiver = selfCopy;
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