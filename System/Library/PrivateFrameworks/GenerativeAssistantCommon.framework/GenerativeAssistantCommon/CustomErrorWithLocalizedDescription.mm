@interface CustomErrorWithLocalizedDescription
- (NSString)localizedDescription;
- (_TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation CustomErrorWithLocalizedDescription

- (NSString)localizedDescription
{
  v2 = (self + OBJC_IVAR____TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription_errorDescription);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_221C57080();

  return v5;
}

- (_TtC25GenerativeAssistantCommon35CustomErrorWithLocalizedDescription)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end