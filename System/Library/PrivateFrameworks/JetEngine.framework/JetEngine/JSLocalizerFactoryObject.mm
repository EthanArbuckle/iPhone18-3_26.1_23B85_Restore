@interface JSLocalizerFactoryObject
- (_TtC9JetEngine24JSLocalizerFactoryObject)init;
- (id)localizerForLanguage:(id)language;
@end

@implementation JSLocalizerFactoryObject

- (id)localizerForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  v6 = sub_1AB1A8C00(languageCopy);

  return v6;
}

- (_TtC9JetEngine24JSLocalizerFactoryObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end