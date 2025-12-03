@interface PrivacyValidationProvider
- (_TtC13NewsAnalytics25PrivacyValidationProvider)init;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
@end

@implementation PrivacyValidationProvider

- (_TtC13NewsAnalytics25PrivacyValidationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  v6 = sub_217D8844C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - v12);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_217A4A520(change, v13);
  v15 = OBJC_IVAR____TtC13NewsAnalytics25PrivacyValidationProvider__privacyValidation;
  swift_beginAccess();
  v16 = *(&selfCopy->super.isa + v15);
  (*(v7 + 16))(v11, v13, v6);

  sub_217D88D9C();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v13, v6);
}

@end