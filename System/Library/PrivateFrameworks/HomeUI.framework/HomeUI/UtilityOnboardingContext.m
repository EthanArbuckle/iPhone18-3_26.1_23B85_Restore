@interface UtilityOnboardingContext
- (BOOL)_didAttemptPasswordlessMethod;
- (BOOL)allRequiredFieldsComplete;
- (BOOL)didAttemptPasswordlessMethod;
- (BOOL)isMeContactComplete;
- (BOOL)quickLookupHasAllFields;
- (BOOL)showInvalidEmailAlert;
- (HUUtilityConfigurationHelper)_config;
- (NSString)_utilityID;
- (NSString)utilityID;
- (UIImage)_utilityLogo;
- (_TtC6HomeUI24UtilityOnboardingContext)init;
- (int64_t)_currentState;
- (int64_t)_onboardingMethod;
- (int64_t)_previousState;
- (void)createAccessTokenWithAuthCode:(NSString *)a3 completionHandler:(id)a4;
- (void)populateFieldsFromMeContact;
- (void)requestOTPWithCompletionHandler:(id)a3;
- (void)setConfig:(id)a3;
- (void)setCurrentState:(int64_t)a3;
- (void)setDidAttemptPasswordlessMethod:(BOOL)a3;
- (void)setOnboardingMethod:(int64_t)a3;
- (void)setPreviousState:(int64_t)a3;
- (void)setSelectedOTPMethodWithFactor:(id)a3;
- (void)setTafResponses:(id)a3;
- (void)setTokens:(id)a3;
- (void)setUtilityID:(id)a3;
- (void)setUtilityLogo:(id)a3;
- (void)set_allUtilities:(id)a3;
- (void)set_currentState:(int64_t)a3;
- (void)set_didAttemptPasswordlessMethod:(BOOL)a3;
- (void)set_onboardingMethod:(int64_t)a3;
- (void)set_otpFactors:(id)a3;
- (void)set_previousState:(int64_t)a3;
- (void)set_utilityID:(id)a3;
- (void)updateStateWithNewState:(int64_t)a3;
- (void)verifyAddressAndSubmitTAFWithCompletionHandler:(id)a3;
@end

@implementation UtilityOnboardingContext

- (int64_t)_previousState
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__previousState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_previousState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__previousState;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setPreviousState:(int64_t)a3
{
  v4 = self;
  sub_20CED4B14(a3);
}

- (int64_t)_currentState
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__currentState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_currentState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__currentState;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setCurrentState:(int64_t)a3
{
  v4 = self;
  sub_20CED4B3C(a3);
}

- (void)updateStateWithNewState:(int64_t)a3
{
  v4 = self;
  sub_20CED6570(a3);
}

- (NSString)_utilityID
{
  v2 = self + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_utilityID:(id)a3
{
  if (a3)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  sub_20CEDC118(MEMORY[0x277D85B58], &unk_20D5BC550, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID, "Setting utility id %s");
}

- (NSString)utilityID
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v3 = self;
  sub_20D563908();

  v4 = v3 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID;
  swift_beginAccess();
  v5 = *(v4 + 1);
  sub_20D5663C8();

  if (v5)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUtilityID:(id)a3
{
  if (a3)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_20CED4B64(v4, v6);
}

- (HUUtilityConfigurationHelper)_config
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfig:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20CED4D04(a3);
}

- (UIImage)_utilityLogo
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUtilityLogo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20CED4EA4(a3);
}

- (void)set_allUtilities:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  v4 = sub_20D567A78();
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__allUtilities;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setTafResponses:(id)a3
{
  v4 = sub_20D567758();
  v5 = self;
  sub_20CED5284(v4);
}

- (int64_t)_onboardingMethod
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_onboardingMethod:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setOnboardingMethod:(int64_t)a3
{
  v4 = self;
  sub_20CED544C(a3);
}

- (BOOL)_didAttemptPasswordlessMethod
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_didAttemptPasswordlessMethod:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)didAttemptPasswordlessMethod
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v3 = self;
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  swift_beginAccess();
  LOBYTE(v4) = *(v3 + v4);

  return v4;
}

- (void)setDidAttemptPasswordlessMethod:(BOOL)a3
{
  v4 = self;
  sub_20CED5584(a3);
}

- (BOOL)isMeContactComplete
{
  v2 = self;
  v3 = sub_20CED91E8();

  return v3 & 1;
}

- (void)populateFieldsFromMeContact
{
  v2 = self;
  sub_20CED9D1C();
}

- (BOOL)allRequiredFieldsComplete
{
  v2 = self;
  v3 = sub_20CEDAB24();

  return v3 & 1;
}

- (BOOL)quickLookupHasAllFields
{
  v2 = self;
  v3 = sub_20CEDACCC();

  return v3 & 1;
}

- (BOOL)showInvalidEmailAlert
{
  v2 = self;
  v3 = sub_20CEDAF54();

  return v3 & 1;
}

- (void)set_otpFactors:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  v4 = sub_20D567A78();
  v5 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__otpFactors;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  sub_20CEDD5B8(MEMORY[0x277D85B58], &unk_20D5BC738, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__otpFactors, "Setting factors %s");
}

- (void)setTokens:(id)a3
{
  sub_20D567758();
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v4 = self;
  sub_20D5638F8();
}

- (void)setSelectedOTPMethodWithFactor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CEDE534(v4);
}

- (void)verifyAddressAndSubmitTAFWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BCD30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BCD38;
  v12[5] = v11;
  v13 = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD40, v12);
}

- (void)requestOTPWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BCD10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BCD18;
  v12[5] = v11;
  v13 = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD20, v12);
}

- (void)createAccessTokenWithAuthCode:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20D5BCCF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5C5200;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5BCD00, v14);
}

- (_TtC6HomeUI24UtilityOnboardingContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end