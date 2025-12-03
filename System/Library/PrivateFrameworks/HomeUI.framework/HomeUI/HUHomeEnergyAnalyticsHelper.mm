@interface HUHomeEnergyAnalyticsHelper
+ (void)sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:(int64_t)utilities;
+ (void)sendUtilityOTPMethodSelectedByUserEventWithUtilityID:(id)d selectedOTPMethod:(id)method;
+ (void)sendUtilityOnboardingCompletedEventWithUtilityID:(id)d onboardingMethod:(int64_t)method didAttemptPasswordless:(BOOL)passwordless;
- (HUHomeEnergyAnalyticsHelper)init;
@end

@implementation HUHomeEnergyAnalyticsHelper

+ (void)sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:(int64_t)utilities
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_20D563BA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v7 + 104))(v9, *MEMORY[0x277D16FF0], v6);
  sub_20D563B78();
  v10 = sub_20D563B98();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

+ (void)sendUtilityOTPMethodSelectedByUserEventWithUtilityID:(id)d selectedOTPMethod:(id)method
{
  methodCopy = method;
  if (d)
  {
    v5 = sub_20D567838();
    v7 = v6;
    if (methodCopy)
    {
LABEL_3:
      v8 = sub_20D567838();
      methodCopy = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (method)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  sub_20CF910B8(v5, v7, v8, methodCopy);
}

+ (void)sendUtilityOnboardingCompletedEventWithUtilityID:(id)d onboardingMethod:(int64_t)method didAttemptPasswordless:(BOOL)passwordless
{
  if (d)
  {
    sub_20D567838();
  }

  sub_20CF916A0();
}

- (HUHomeEnergyAnalyticsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeEnergyAnalyticsHelper();
  return [(HUHomeEnergyAnalyticsHelper *)&v3 init];
}

@end