@interface ENUIViewControllerFactory
+ (ENUIViewControllerFactory)sharedInstance;
- (ENUIViewControllerFactory)init;
- (id)createAnalyticsConsentStackForAgencyModel:(id)a3 exposureManager:(id)a4 completion:(id)a5;
- (id)createKeyReleaseDialogueWithBundleIdentifier:(id)a3 region:(id)a4 completion:(id)a5;
- (id)createOnboardingStackForAgencyModel:(id)a3 exposureManager:(id)a4 fromAvailabilityAlert:(BOOL)a5 fromDeepLink:(BOOL)a6 subsequentFlow:(int64_t)a7 completion:(id)a8;
- (id)createPreApprovalDialogueWithBundleIdentifier:(id)a3 region:(id)a4 completion:(id)a5;
- (id)createPreAuthorizationStackForAgencyModel:(id)a3 exposureManager:(id)a4 completion:(id)a5;
- (id)createTurndownStackWithEnteredFromMainScreen:(BOOL)a3 completion:(id)a4;
- (id)createVerificationStackForAgencyModel:(id)a3 exposureManager:(id)a4 sessionIdentifier:(id)a5 reportType:(unsigned int)a6 enteredFromMainScreen:(BOOL)a7 completion:(id)a8;
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

- (id)createOnboardingStackForAgencyModel:(id)a3 exposureManager:(id)a4 fromAvailabilityAlert:(BOOL)a5 fromDeepLink:(BOOL)a6 subsequentFlow:(int64_t)a7 completion:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = self;
  v18 = ViewControllerFactory.createOnboardingStack(forAgencyModel:exposureManager:fromAvailabilityAlert:fromDeepLink:subsequentFlow:completion:)(a3, a4, a5, a6, a7, sub_2516CFC54, v15);

  swift_unknownObjectRelease();

  return v18;
}

- (id)createAnalyticsConsentStackForAgencyModel:(id)a3 exposureManager:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  v12 = _s28HealthExposureNotificationUI21ViewControllerFactoryC27createAnalyticsConsentStack14forAgencyModel15exposureManager10completionSo06UIViewF0CAA010ENUIPublicamN0C_AA0B9Notifying_pyAA10FlowResultOctF_0(v10, a4, sub_2516CFC54, v9);

  swift_unknownObjectRelease();

  return v12;
}

- (id)createVerificationStackForAgencyModel:(id)a3 exposureManager:(id)a4 sessionIdentifier:(id)a5 reportType:(unsigned int)a6 enteredFromMainScreen:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a8);
  if (a5)
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
  v23 = a3;
  swift_unknownObjectRetain();
  v24 = self;
  v25 = ViewControllerFactory.createVerificationStack(forAgencyModel:exposureManager:sessionIdentifier:reportType:enteredFromMainScreen:completion:)(v23, a4, v18, a6, v9, sub_2516CFC54, v22);

  swift_unknownObjectRelease();

  sub_2516F7958(v18);

  return v25;
}

- (id)createPreAuthorizationStackForAgencyModel:(id)a3 exposureManager:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  v12 = ViewControllerFactory.createPreAuthorizationStack(forAgencyModel:exposureManager:completion:)(v10, a4, sub_2516CF628, v9);

  swift_unknownObjectRelease();

  return v12;
}

- (id)createTurndownStackWithEnteredFromMainScreen:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  v7 = _s28HealthExposureNotificationUI21ViewControllerFactoryC19createTurndownStack21enteredFromMainScreen10completionSo06UIViewF0CSgSb_yAA10FlowResultOctF_0();
  _Block_release(v5);

  return v7;
}

- (id)createKeyReleaseDialogueWithBundleIdentifier:(id)a3 region:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_251703164();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516F79CC;
  *(v11 + 24) = v10;
  v12 = a4;

  sub_2516E4F44(v16);
  objc_allocWithZone(type metadata accessor for KeyReleaseAuthorizationViewController());
  v13 = v12;

  v14 = _s28HealthExposureNotificationUI37KeyReleaseAuthorizationViewControllerC4with16bundleIdentifier6region17completionHandlerAcA0eF8DialogueV_SSSgSo8ENRegionCSgySbcSgtcfc_0(v16, v7, v9, a4, sub_2516F79DC, v11);
  [v14 setModalPresentationStyle_];

  return v14;
}

- (id)createPreApprovalDialogueWithBundleIdentifier:(id)a3 region:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_251703164();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516F7940;
  *(v11 + 24) = v10;
  v12 = a4;

  sub_25168D904(v16);
  objc_allocWithZone(type metadata accessor for PreApprovalViewController());
  v13 = v12;

  v14 = sub_25168D49C(v16, v7, v9, a4, sub_2516F79DC, v11);
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