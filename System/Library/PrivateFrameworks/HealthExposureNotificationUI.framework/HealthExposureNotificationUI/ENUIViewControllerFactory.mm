@interface ENUIViewControllerFactory
+ (ENUIViewControllerFactory)sharedInstance;
- (ENUIViewControllerFactory)init;
- (id)createAnalyticsConsentStackForAgencyModel:(id)model exposureManager:(id)manager completion:(id)completion;
- (id)createKeyReleaseDialogueWithBundleIdentifier:(id)identifier region:(id)region completion:(id)completion;
- (id)createOnboardingStackForAgencyModel:(id)model exposureManager:(id)manager fromAvailabilityAlert:(BOOL)alert fromDeepLink:(BOOL)link subsequentFlow:(int64_t)flow completion:(id)completion;
- (id)createPreApprovalDialogueWithBundleIdentifier:(id)identifier region:(id)region completion:(id)completion;
- (id)createPreAuthorizationStackForAgencyModel:(id)model exposureManager:(id)manager completion:(id)completion;
- (id)createTurndownStackWithEnteredFromMainScreen:(BOOL)screen completion:(id)completion;
- (id)createVerificationStackForAgencyModel:(id)model exposureManager:(id)manager sessionIdentifier:(id)identifier reportType:(unsigned int)type enteredFromMainScreen:(BOOL)screen completion:(id)completion;
@end

@implementation ENUIViewControllerFactory

+ (ENUIViewControllerFactory)sharedInstance
{
  if (qword_28151EB48 != -1)
  {
    swift_once();
  }

  v3 = static ViewControllerFactory.shared;

  return v3;
}

- (id)createOnboardingStackForAgencyModel:(id)model exposureManager:(id)manager fromAvailabilityAlert:(BOOL)alert fromDeepLink:(BOOL)link subsequentFlow:(int64_t)flow completion:(id)completion
{
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  modelCopy = model;
  swift_unknownObjectRetain();
  selfCopy = self;
  v18 = ViewControllerFactory.createOnboardingStack(forAgencyModel:exposureManager:fromAvailabilityAlert:fromDeepLink:subsequentFlow:completion:)(model, manager, alert, link, flow, sub_2516CFC54, v15);

  swift_unknownObjectRelease();

  return v18;
}

- (id)createAnalyticsConsentStackForAgencyModel:(id)model exposureManager:(id)manager completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  modelCopy = model;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = _s28HealthExposureNotificationUI21ViewControllerFactoryC27createAnalyticsConsentStack14forAgencyModel15exposureManager10completionSo06UIViewF0CAA010ENUIPublicamN0C_AA0B9Notifying_pyAA10FlowResultOctF_0(modelCopy, manager, sub_2516CFC54, v9);

  swift_unknownObjectRelease();

  return v12;
}

- (id)createVerificationStackForAgencyModel:(id)model exposureManager:(id)manager sessionIdentifier:(id)identifier reportType:(unsigned int)type enteredFromMainScreen:(BOOL)screen completion:(id)completion
{
  screenCopy = screen;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(completion);
  if (identifier)
  {
    sub_251702E54();
    v20 = sub_251702E64();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  }

  else
  {
    v21 = sub_251702E64();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  modelCopy = model;
  swift_unknownObjectRetain();
  selfCopy = self;
  v25 = ViewControllerFactory.createVerificationStack(forAgencyModel:exposureManager:sessionIdentifier:reportType:enteredFromMainScreen:completion:)(modelCopy, manager, v18, type, screenCopy, sub_2516CFC54, v22);

  swift_unknownObjectRelease();

  sub_2516F7958(v18);

  return v25;
}

- (id)createPreAuthorizationStackForAgencyModel:(id)model exposureManager:(id)manager completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  modelCopy = model;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = ViewControllerFactory.createPreAuthorizationStack(forAgencyModel:exposureManager:completion:)(modelCopy, manager, sub_2516CF628, v9);

  swift_unknownObjectRelease();

  return v12;
}

- (id)createTurndownStackWithEnteredFromMainScreen:(BOOL)screen completion:(id)completion
{
  v5 = _Block_copy(completion);
  selfCopy = self;
  v7 = _s28HealthExposureNotificationUI21ViewControllerFactoryC19createTurndownStack21enteredFromMainScreen10completionSo06UIViewF0CSgSb_yAA10FlowResultOctF_0();
  _Block_release(v5);

  return v7;
}

- (id)createKeyReleaseDialogueWithBundleIdentifier:(id)identifier region:(id)region completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_251703164();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516F79CC;
  *(v11 + 24) = v10;
  regionCopy = region;

  sub_2516E4F44(v16);
  objc_allocWithZone(type metadata accessor for KeyReleaseAuthorizationViewController());
  v13 = regionCopy;

  v14 = _s28HealthExposureNotificationUI37KeyReleaseAuthorizationViewControllerC4with16bundleIdentifier6region17completionHandlerAcA0eF8DialogueV_SSSgSo8ENRegionCSgySbcSgtcfc_0(v16, v7, v9, region, sub_2516F79DC, v11);
  [v14 setModalPresentationStyle_];

  return v14;
}

- (id)createPreApprovalDialogueWithBundleIdentifier:(id)identifier region:(id)region completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_251703164();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516F7940;
  *(v11 + 24) = v10;
  regionCopy = region;

  sub_25168D904(v16);
  objc_allocWithZone(type metadata accessor for PreApprovalViewController());
  v13 = regionCopy;

  v14 = sub_25168D49C(v16, v7, v9, region, sub_2516F79DC, v11);
  [v14 setModalPresentationStyle_];

  return v14;
}

- (ENUIViewControllerFactory)init
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ViewControllerFactory();
  return [(ENUIViewControllerFactory *)&v4 init];
}

@end