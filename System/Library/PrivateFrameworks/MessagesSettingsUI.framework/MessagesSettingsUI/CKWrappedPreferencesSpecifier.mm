@interface CKWrappedPreferencesSpecifier
- (_TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier)init;
- (_TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier)initWithSpecifier:(id)specifier;
@end

@implementation CKWrappedPreferencesSpecifier

- (_TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  sub_258D564D4();
  *(&self->super.isa + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) = specifierCopy;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKWrappedPreferencesSpecifier();
  return [(CKWrappedPreferencesSpecifier *)&v6 init];
}

- (_TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end