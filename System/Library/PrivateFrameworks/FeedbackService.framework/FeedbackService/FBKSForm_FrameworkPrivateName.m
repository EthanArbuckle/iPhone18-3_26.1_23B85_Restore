@interface FBKSForm_FrameworkPrivateName
+ (id)fromJSONWithData:(id)a3;
- (FBKSForm_FrameworkPrivateName)init;
- (FBKSForm_FrameworkPrivateName)initWithIdentifier:(id)a3;
- (NSData)asJSON;
- (NSString)identifier;
- (id)asFBAURLSchemeWithIsSurvey:(BOOL)a3;
- (int64_t)authenticationMethod;
- (void)prefillWithQuestion:(id)a3 answer:(id)a4;
- (void)setAuthenticationMethod:(int64_t)a3;
- (void)setIdentifier:(id)a3;
- (void)setQuestionsWithNsMutableDict:(id)a3;
@end

@implementation FBKSForm_FrameworkPrivateName

- (void)setQuestionsWithNsMutableDict:(id)a3
{
  v4 = a3;
  v5 = self;
  _s15FeedbackService8FBKSFormC12setQuestions13nsMutableDictySo19NSMutableDictionaryC_tF_0();
}

- (NSData)asJSON
{
  v2 = self;
  v3 = FBKSForm.asJSON.getter();
  v5 = v4;

  v6 = sub_1B014CA7C();
  sub_1B00D2024(v3, v5);

  return v6;
}

+ (id)fromJSONWithData:(id)a3
{
  v3 = a3;
  v4 = sub_1B014CA8C();
  v6 = v5;

  v7 = _s15FeedbackService8FBKSFormC8fromJSON4dataACSg10Foundation4DataV_tFZ_0();
  sub_1B00D2024(v4, v6);

  return v7;
}

- (id)asFBAURLSchemeWithIsSurvey:(BOOL)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B50, &qword_1B014F330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = self;
  FBKSForm.asFBAURLScheme(isSurvey:)(a3, v8);

  v10 = sub_1B014CA4C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1B014C9FC();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (NSString)identifier
{
  v2 = (self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1B014CC0C();

  return v5;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_1B014CC1C();
  v6 = v5;
  v7 = (self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)authenticationMethod
{
  v3 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAuthenticationMethod:(int64_t)a3
{
  v5 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (FBKSForm_FrameworkPrivateName)initWithIdentifier:(id)a3
{
  v4 = sub_1B014CC1C();
  v6 = v5;
  v7 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  v8 = MEMORY[0x1E69E7CC0];
  *(self + v7) = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  *(self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod) = 3;
  v9 = sub_1B0122BE8(v8);
  swift_beginAccess();
  v10 = *(self + v7);
  *(self + v7) = v9;

  v11 = (self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  *v11 = v4;
  v11[1] = v6;
  v13.receiver = self;
  v13.super_class = type metadata accessor for FBKSForm();
  return [(FBKSForm_FrameworkPrivateName *)&v13 init];
}

- (void)prefillWithQuestion:(id)a3 answer:(id)a4
{
  v5 = sub_1B014CC1C();
  v7 = v6;
  v8 = sub_1B014CC1C();
  v10 = v9;
  v14 = v5;
  v15 = v7;
  v11 = self;

  sub_1B0135F14(&v14, v8, v10);

  v12 = v14;
  v13 = v15;

  sub_1B00D2010(v12, v13);
}

- (FBKSForm_FrameworkPrivateName)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end