void sub_25169DC08(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(a2 + v8, v7, &qword_27F454000, &unk_251708500);
  v9 = sub_251702E64();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_25168B718(v7, &qword_27F454000, &unk_251708500);
  if (v10 == 1)
  {
    swift_beginAccess();
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);

    v12(0);
  }

  else
  {
    v30 = a1;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    v13 = sub_251702C94();
    v29[0] = v14;
    v29[1] = v13;
    sub_251702C94();
    v15 = sub_251703134();

    v16 = sub_251703134();

    v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:0];

    v18 = swift_allocObject();
    v19 = v30;
    *(v18 + 16) = v30;
    *(v18 + 24) = a2;
    v30 = v19;

    v20 = sub_251703134();

    v35 = sub_25169E8FC;
    v36 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_25169F470;
    v34 = &block_descriptor_24;
    v21 = _Block_copy(&aBlock);

    v22 = objc_opt_self();
    v23 = [v22 actionWithTitle:v20 style:2 handler:v21];
    _Block_release(v21);

    [v17 addAction_];
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    v25 = v17;
    v26 = sub_251703134();

    v35 = sub_25169E900;
    v36 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_25169F470;
    v34 = &block_descriptor_31;
    v27 = _Block_copy(&aBlock);

    v28 = [v22 actionWithTitle:v26 style:1 handler:v27];
    _Block_release(v27);

    [v25 addAction_];
    [v30 presentViewController:v25 animated:1 completion:0];
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25169E198()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_56Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25169E224(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

id sub_25169E258(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v57 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView] = 0;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView] = 0;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView] = 0;
  v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_titleLabelTopOffset;
  v20 = objc_opt_self();
  v21 = v2;
  v22 = [v20 mainScreen];
  [v22 bounds];
  v24 = v23;

  *&v2[v19] = v24 * 0.09;
  *&v21[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_flow] = a1;
  v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel;
  *&v21[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel] = a2;

  v26 = a2;
  if ([v26 supportsFeatures_])
  {
    v54 = v25;
    v55 = v11;
    v27 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL;
    sub_251699D18(v26 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v18, &qword_27F453E10, &unk_251708160);
    v28 = sub_251702DA4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v30(v18, 1, v28);
    sub_25168B718(v18, &qword_27F453E10, &unk_251708160);
    if (v31 == 1)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    else
    {
      sub_251699D18(v26 + v27, v16, &qword_27F453E10, &unk_251708160);
      result = v30(v16, 1, v28);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_23;
      }

      v37 = sub_251702D64();
      v33 = v38;
      (*(v29 + 8))(v16, v28);
      v32 = v37 & 0xFFFFFFFFFFFFLL;
    }

    v11 = v55;

    v39 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v39 = v32;
    }

    v34 = v39 != 0;
    v35 = v57;
    v25 = v54;
  }

  else
  {
    v34 = 0;
    v35 = v57;
  }

  v21[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_regionSupportsWebReport] = v34;
  if (![v26 supportsFeatures_])
  {

    v48 = 0;
LABEL_21:
    v21[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_regionSupportsSelfReportV1] = v48;
    v53 = type metadata accessor for SelfReportVerificationWelcomeViewController();
    v58.receiver = v21;
    v58.super_class = v53;
    return objc_msgSendSuper2(&v58, sel_initWithNibName_bundle_, 0, 0);
  }

  sub_251699D18(v26 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v35, &qword_27F453E10, &unk_251708160);
  v40 = sub_251702DA4();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v35, 1, v40) != 1)
  {

    sub_25168B718(v35, &qword_27F453E10, &unk_251708160);
    v48 = 0;
    goto LABEL_21;
  }

  sub_25168B718(v35, &qword_27F453E10, &unk_251708160);
  sub_251699D18(*&v21[v25] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v11, &qword_27F453E10, &unk_251708160);
  v43 = v42(v11, 1, v40);
  v44 = v11;
  v45 = v43;
  sub_25168B718(v44, &qword_27F453E10, &unk_251708160);
  if (v45 == 1)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
LABEL_18:

    v52 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v52 = v46;
    }

    v48 = v52 != 0;
    goto LABEL_21;
  }

  v49 = v56;
  sub_251699D18(*&v21[v25] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v56, &qword_27F453E10, &unk_251708160);
  result = (v42)(v49, 1, v40);
  if (result != 1)
  {
    v50 = sub_251702D64();
    v47 = v51;
    (*(v41 + 8))(v49, v40);
    v46 = v50 & 0xFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_25169E7C4()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView) = 0;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView) = 0;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_titleLabelTopOffset;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;

  *(v0 + v1) = v4 * 0.09;
  sub_251703584();
  __break(1u);
}

id OnboardingRegionChangeSummaryViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_25169F004(a1, a3, v7, ObjectType, a2);
}

id OnboardingRegionChangeSummaryViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_25169F004(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionChangeSummaryViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_25169EA38();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_25169EA38()
{
  if (*(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics) != 1)
  {
    if (qword_28151EB58 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id OnboardingRegionChangeSummaryViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingRegionChangeSummaryViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingRegionChangeSummaryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25169F004(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a5;
  v32 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] = a2;
  v11 = qword_28151EB58;
  swift_unknownObjectRetain();
  v34 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251708520;
  v13 = (*&a3[v32] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v15 = *v13;
  v14 = v13[1];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v16 = sub_25169F41C();
  *(v12 + 64) = v16;
  *(v12 + 32) = v15;
  *(v12 + 40) = v14;

  sub_251703184();

  sub_251702C94();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251708520;
  v18 = (*&a3[v32] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v20 = *v18;
  v19 = v18[1];
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v16;
  *(v17 + 32) = v20;
  *(v17 + 40) = v19;

  sub_251703184();

  v21 = sub_251703134();

  v22 = sub_251703134();

  v23 = sub_251703134();
  v24 = [objc_opt_self() systemImageNamed_];

  v35.receiver = a3;
  v35.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, v24, 3);

  v26 = v25;
  v27 = [v26 headerView];
  v28 = [objc_opt_self() systemPinkColor];
  [v27 setTintColor_];

  v29 = [v26 headerView];
  LODWORD(v30) = 1036831949;
  [v29 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v26;
}

unint64_t sub_25169F41C()
{
  result = qword_27F454180;
  if (!qword_27F454180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454180);
  }

  return result;
}

void sub_25169F470(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_25169F4F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2516AB3C4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *StandardOnboardingFlow.healthAgencyModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void StandardOnboardingFlow.healthAgencyModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t StandardOnboardingFlow.__allocating_init(agencyModel:exposureManager:isFromAvailabilityAlert:deepLinkInitiated:subsequentFlow:completion:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 97) = 0;
  swift_beginAccess();
  *(v14 + 32) = a1;
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  *(v14 + 96) = a3;
  *(v14 + 97) = a4;
  *(v14 + 80) = a2;
  *(v14 + 88) = a5;
  return v14;
}

uint64_t StandardOnboardingFlow.init(agencyModel:exposureManager:isFromAvailabilityAlert:deepLinkInitiated:subsequentFlow:completion:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v7 + 64) = 0;
  *(v7 + 72) = v15;
  *(v7 + 97) = 0;
  swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + 96) = a3;
  *(v7 + 97) = a4;
  *(v7 + 80) = a2;
  *(v7 + 88) = a5;
  return v7;
}

id StandardOnboardingFlow.initialViewController.getter()
{
  if (*(v0 + 97) != 1)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v3 = sub_251702F84();
    __swift_project_value_buffer(v3, static Logger.general);
    v4 = sub_251702F64();
    v5 = sub_251703314();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25167E000, v4, v5, "Deeplink processing: current region has an app, and its app is installed", v6, 2u);
      MEMORY[0x2530803C0](v6, -1, -1);
    }

    v7 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

    return sub_2516A91DC(v8, v2, v7, &protocol witness table for StandardOnboardingFlow);
  }

  if (*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] != 1)
  {

LABEL_16:
    v16 = *(v0 + 96);
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    return OnboardingWelcomeViewController.init(flow:fromAvailabilityAlert:)(v17, v16);
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v10 = sub_251702F84();
  __swift_project_value_buffer(v10, static Logger.general);
  v11 = sub_251702F64();
  v12 = sub_251703314();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25167E000, v11, v12, "Deeplink processing: current region is an app only region, but its app wasn't installed", v13, 2u);
    MEMORY[0x2530803C0](v13, -1, -1);
  }

  v14 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

  return sub_2516A9708(v15, v2, v14, &protocol witness table for StandardOnboardingFlow);
}

void StandardOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7D48(a1, v2, ObjectType, a2);
}

uint64_t PreAuthorizationFlow.__allocating_init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(a1, a2, a3, a4);
  return v11;
}

void StandardOnboardingFlow.didTapCancel(from:)(void *a1)
{
  swift_getObjectType();

  sub_2516A84AC(a1, v1);
}

id sub_25169FC34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if (v2)
  {
    v70 = v2;
    v3 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
    v4 = sub_2516AAD40(v3);

    if (qword_27F453858 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      swift_beginAccess();
      v5 = static ENUIPublicHealthAgencyModel.availableRegions;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v6 = sub_251703474();
        v4 = sub_2516A5B44(v4, v6, &qword_27F454080, &qword_251708908, type metadata accessor for ENUIPublicHealthAgencyModel);
      }

      else
      {
      }

      v17 = sub_2516A5D3C(v5, v4);

      v69 = v1;
      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_251703464();
        type metadata accessor for ENUIPublicHealthAgencyModel(0);
        sub_2516AB9D0();
        sub_2517032F4();
        v19 = v73;
        v18 = v74;
        v20 = v75;
        v4 = v76;
        v21 = v77;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v20 = ~v22;
        v23 = -v22;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v21 = v24 & *(v17 + 56);

        v4 = 0;
        v19 = v17;
      }

      v1 = ((v20 + 64) >> 6);
      if (v19 < 0)
      {
        break;
      }

      while (1)
      {
        v28 = v4;
        v29 = v21;
        v26 = v4;
        if (!v21)
        {
          break;
        }

LABEL_27:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v19 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v25)
        {
          goto LABEL_31;
        }

LABEL_28:
        sub_25168CD90(0, &qword_27F454078, 0x277D82BB8);
        v30 = *&v25[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        v31 = *&v70[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        if (sub_2517033B4())
        {
          sub_2516ABA28();

          if (qword_27F453878 != -1)
          {
            swift_once();
          }

          v63 = sub_251702F84();
          __swift_project_value_buffer(v63, static Logger.general);
          v64 = sub_251702F64();
          v65 = sub_251703314();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_25167E000, v64, v65, "Selected region is already authorized", v66, 2u);
            MEMORY[0x2530803C0](v66, -1, -1);
          }

          v67 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

          v58 = sub_2516A91DC(v68, v25, v67, &protocol witness table for StandardOnboardingFlow);

          return v58;
        }

        v4 = v26;
        v21 = v27;
        if (v19 < 0)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v26 >= v1)
        {
          goto LABEL_31;
        }

        v29 = *(v18 + 8 * v26);
        ++v28;
        if (v29)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

LABEL_20:
    if (sub_251703494())
    {
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      v25 = v71;
      v26 = v4;
      v27 = v21;
      if (v71)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    sub_2516ABA28();

    if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v32 = sub_251702F84();
      __swift_project_value_buffer(v32, static Logger.general);
      v33 = sub_251702F64();
      v34 = sub_251703314();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_25167E000, v33, v34, "For the selected region, user has already installed the app, transitioning to the Open App view", v35, 2u);
        MEMORY[0x2530803C0](v35, -1, -1);
      }

      v36 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

      return sub_2516A91DC(v37, v70, v36, &protocol witness table for StandardOnboardingFlow);
    }

    else
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v38 = sub_251702F84();
      __swift_project_value_buffer(v38, static Logger.general);
      v39 = v70;
      v40 = sub_251702F64();
      v41 = sub_251703314();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = *(v39 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion);

        _os_log_impl(&dword_25167E000, v40, v41, "Proceed with adding region with region of version %ld", v42, 0xCu);
        MEMORY[0x2530803C0](v42, -1, -1);
      }

      else
      {

        v40 = v39;
      }

      if (*(&v39->isa + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
      {
        v61 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

        return sub_2516A9708(v62, v39, v61, &protocol witness table for StandardOnboardingFlow);
      }

      else
      {
        v43 = type metadata accessor for OnboardingLegalConsentViewController();
        v44 = objc_allocWithZone(v43);
        v45 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
        v46 = objc_opt_self();

        *&v44[v45] = [v46 boldButton];
        v47 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
        *&v44[v47] = [objc_opt_self() linkButton];
        v48 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
        *v48 = v69;
        v48[1] = &protocol witness table for StandardOnboardingFlow;
        v49 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
        *&v44[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v39;
        v44[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
        v44[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
        v50 = qword_28151EB58;
        v51 = v39;

        if (v50 != -1)
        {
          swift_once();
        }

        sub_251702C94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_251708520;
        v53 = (*&v44[v49] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
        v55 = *v53;
        v54 = v53[1];
        *(v52 + 56) = MEMORY[0x277D837D0];
        *(v52 + 64) = sub_25169F41C();
        *(v52 + 32) = v55;
        *(v52 + 40) = v54;

        sub_251703184();

        v56 = sub_251703134();

        v72.receiver = v44;
        v72.super_class = v43;
        v57 = objc_msgSendSuper2(&v72, sel_initWithTitle_detailText_icon_contentLayout_, v56, 0, 0, 2, 0xE000000000000000);

        v58 = v57;
        [v58 set:1 shouldInlineButtontray:?];
        v59 = [v58 headerView];
        LODWORD(v60) = 1036831949;
        [v59 setTitleHyphenationFactor_];

        return v58;
      }
    }
  }

  else
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v7 = sub_251702F84();
    __swift_project_value_buffer(v7, static Logger.general);
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25167E000, v8, v9, "No configs available", v10, 2u);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    swift_beginAccess();
    v11 = v1[5];
    v12 = v1[6];
    v13 = v1[7];
    v14 = v1[8];
    v15 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

    sub_2516AB3D4(v11, v12);
    return sub_2516A9AA0(v1, v11, v12, v13, v14, v15, &protocol witness table for StandardOnboardingFlow);
  }
}

uint64_t StandardOnboardingFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_2516AB418(*(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 72);

  v5 = *(v0 + 80);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t StandardOnboardingFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_2516AB418(*(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 72);

  v5 = *(v0 + 80);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2516A07F8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7D48(a1, v2, ObjectType, a2);
}

void sub_2516A0848(void *a1)
{
  swift_getObjectType();

  sub_2516A84AC(a1, v1);
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC21currentSelectedRegionAA0J11NameAndCodeVSgvg_0()
{
  swift_beginAccess();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v3 = v0[8];
  sub_2516AB3D4(v1, v2);
  return v1;
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC21currentSelectedRegionAA0J11NameAndCodeVSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[5];
  v10 = v4[6];
  v11 = v4[7];
  v12 = v4[8];
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return sub_2516AB418(v9, v10);
}

uint64_t AddRegionOnboardingFlow.__allocating_init(agencyModel:exposureManager:deepLinkIntiated:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 64) = 0;
  *(v10 + 72) = v11;
  *(v10 + 80) = 0;
  swift_beginAccess();
  *(v10 + 32) = a1;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 88) = a2;
  *(v10 + 80) = a3;
  return v10;
}

uint64_t AddRegionOnboardingFlow.init(agencyModel:exposureManager:deepLinkIntiated:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v11 = MEMORY[0x277D84F90];
  *(v5 + 64) = 0;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  *(v5 + 88) = a2;
  *(v5 + 80) = a3;
  return v5;
}

id AddRegionOnboardingFlow.initialViewController.getter()
{
  if (*(v0 + 80) == 1 && [*(v0 + 88) areAvailabilityAlertsEnabled] && (objc_msgSend(objc_opt_self(), sel_locationServicesEnabled) & 1) != 0)
  {
    return sub_2516A1778();
  }

  swift_beginAccess();
  if (*(v0 + 32))
  {
    return sub_2516A1778();
  }

  v2 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

  return sub_2516A9CEC(v3, 0, v2, &protocol witness table for AddRegionOnboardingFlow);
}

void AddRegionOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v58 = a1;
  v7 = (*(a2 + 8))(ObjectType, a2);
  if (v7 <= 3)
  {
    if (!v7)
    {
      swift_beginAccess();
      v16 = v2[4];
      if (v16)
      {
        v17 = type metadata accessor for OnboardingLegalConsentViewController();
        v18 = objc_allocWithZone(v17);
        v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
        v20 = objc_opt_self();
        v21 = v16;

        *&v18[v19] = [v20 boldButton];
        v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
        *&v18[v22] = [objc_opt_self() linkButton];
        v23 = &v18[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
        *v23 = v3;
        v23[1] = &protocol witness table for AddRegionOnboardingFlow;
        v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
        *&v18[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v21;
        v18[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 0;
        v18[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
        v25 = qword_28151EB58;
        v26 = v21;

        if (v25 != -1)
        {
          swift_once();
        }

        sub_251702C94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_251708520;
        v28 = (*&v18[v24] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
        v30 = *v28;
        v29 = v28[1];
        *(v27 + 56) = MEMORY[0x277D837D0];
        *(v27 + 64) = sub_25169F41C();
        *(v27 + 32) = v30;
        *(v27 + 40) = v29;

        sub_251703184();

        v31 = sub_251703134();

        v57.receiver = v18;
        v57.super_class = v17;
        v32 = objc_msgSendSuper2(&v57, sel_initWithTitle_detailText_icon_contentLayout_, v31, 0, 0, 2, 0xE000000000000000);

        v33 = v32;
        [v33 set:1 shouldInlineButtontray:?];
        v34 = [v33 headerView];
        LODWORD(v35) = 1036831949;
        [v34 setTitleHyphenationFactor_];

        v8 = v33;
      }

      else
      {
        swift_beginAccess();
        v41 = v2[5];
        v42 = v3[6];
        v43 = v3[7];
        v44 = v3[8];
        v45 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

        sub_2516AB3D4(v41, v42);
        v8 = sub_2516A9AA0(v3, v41, v42, v43, v44, v45, &protocol witness table for AddRegionOnboardingFlow);
      }

      goto LABEL_26;
    }

    if (v7 != 1)
    {
      if (v7 == 2)
      {
LABEL_5:
        v8 = sub_2516A1778();
        v9 = 1;
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    swift_beginAccess();
    if (v2[6])
    {
      swift_beginAccess();
      v36 = v2[9];
      if (!*(v36 + 16))
      {
        goto LABEL_5;
      }

      v37 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

      v8 = sub_2516A9CEC(v3, v36, v37, &protocol witness table for AddRegionOnboardingFlow);
      goto LABEL_26;
    }

LABEL_23:
    swift_beginAccess();
    v11 = v2[2];
    v40 = v2[3];

    v12 = 0;
    goto LABEL_24;
  }

  if (v7 - 6 < 3)
  {
    swift_beginAccess();
    v11 = v2[2];
    v10 = v2[3];

    v12 = 3;
LABEL_24:
    v11(v12);
LABEL_34:

    return;
  }

  if (v7 == 4)
  {
    swift_beginAccess();
    v38 = v2[4];
    if (v38)
    {
      v39 = objc_allocWithZone(type metadata accessor for OnboardingRegionChangeSummaryViewController());

      v8 = sub_2516AA6B0(v3, v38, v39);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v7 != 5 || (swift_beginAccess(), (v13 = v2[4]) == 0) || v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] != 1)
  {
LABEL_13:
    swift_beginAccess();
    v11 = v2[2];
    v15 = v2[3];

    v12 = 1;
    goto LABEL_24;
  }

  v14 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());

  v8 = sub_2516AA1E4(v3, v13, v14, &protocol witness table for AddRegionOnboardingFlow);
LABEL_26:
  v9 = 0;
LABEL_27:
  v46 = v8;
  v47 = [a1 navigationController];
  if (v47)
  {
    v48 = v47;
    [v47 pushViewController:v46 animated:1];
  }

  if (v9)
  {
    swift_beginAccess();
    v49 = v3[4];
    if (v49)
    {
      v50 = qword_28151EB60;
      v51 = *(v49 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
      if (v50 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v52 = static ENManagerAdapter.defaultAdapter;
      v53 = swift_allocObject();
      v53[2] = 1;
      v53[3] = v52;
      v53[4] = v51;
      v54 = v52;
      v55 = v51;
      v56 = v54;
      sub_2516C59C8(sub_2516AB45C, v53);

      goto LABEL_34;
    }
  }
}

void AddRegionOnboardingFlow.didTapCancel(from:)(void *a1)
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{0, 0xE000000000000000}];

  v4 = swift_allocObject();
  *(v4 + 16) = v14;
  *(v4 + 24) = a1;

  v16 = a1;
  v5 = sub_251703134();

  v21 = sub_2516AB468;
  v22 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25169F470;
  v20 = &block_descriptor_2;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  [v3 addAction_];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v11 = sub_251703134();

  v21 = sub_251699CE8;
  v22 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25169F470;
  v20 = &block_descriptor_9;
  v12 = _Block_copy(&aBlock);

  v13 = [v7 actionWithTitle:v11 style:1 handler:v12];
  _Block_release(v12);

  [v10 addAction_];
  [v16 presentViewController:v10 animated:1 completion:0];
}

id sub_2516A1778()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if (v2)
  {
    v54 = v2;
    v3 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
    v4 = sub_2516AAD40(v3);

    if (qword_27F453858 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      swift_beginAccess();
      v5 = static ENUIPublicHealthAgencyModel.availableRegions;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v6 = sub_251703474();
        v4 = sub_2516A5B44(v4, v6, &qword_27F454080, &qword_251708908, type metadata accessor for ENUIPublicHealthAgencyModel);
      }

      else
      {
      }

      v17 = sub_2516A5D3C(v5, v4);

      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_251703464();
        type metadata accessor for ENUIPublicHealthAgencyModel(0);
        sub_2516AB9D0();
        sub_2517032F4();
        v19 = v56;
        v18 = v57;
        v20 = v58;
        v21 = v59;
        v4 = v60;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v20 = ~v22;
        v23 = -v22;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v4 = v24 & *(v17 + 56);

        v21 = 0;
        v19 = v17;
      }

      if (v19 < 0)
      {
        break;
      }

      while (1)
      {
        v28 = v21;
        v29 = v4;
        v26 = v21;
        if (!v4)
        {
          break;
        }

LABEL_27:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v19 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v25)
        {
          goto LABEL_31;
        }

LABEL_28:
        sub_25168CD90(0, &qword_27F454078, 0x277D82BB8);
        v30 = *&v25[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        v31 = *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        if (sub_2517033B4())
        {
          sub_2516ABA28();

          if (qword_27F453878 != -1)
          {
            swift_once();
          }

          v48 = sub_251702F84();
          __swift_project_value_buffer(v48, static Logger.general);
          v49 = sub_251702F64();
          v50 = sub_251703314();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_25167E000, v49, v50, "Selected region is already authorized", v51, 2u);
            MEMORY[0x2530803C0](v51, -1, -1);
          }

          v52 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

          v45 = sub_2516A91DC(v53, v25, v52, &protocol witness table for AddRegionOnboardingFlow);

          return v45;
        }

        v21 = v26;
        v4 = v27;
        if (v19 < 0)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v26 >= ((v20 + 64) >> 6))
        {
          goto LABEL_31;
        }

        v29 = *(v18 + 8 * v26);
        ++v28;
        if (v29)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

LABEL_20:
    if (sub_251703494())
    {
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      v25 = v55;
      v26 = v21;
      v27 = v4;
      if (v55)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    sub_2516ABA28();

    if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v32 = sub_251702F84();
      __swift_project_value_buffer(v32, static Logger.general);
      v33 = sub_251702F64();
      v34 = sub_251703314();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_25167E000, v33, v34, "For the selected region, user has already installed the app, transitioning to the Open App view", v35, 2u);
        MEMORY[0x2530803C0](v35, -1, -1);
      }

      v36 = objc_allocWithZone(type metadata accessor for OnboardingRegionAlreadyExistsViewController());

      return sub_2516A91DC(v37, v54, v36, &protocol witness table for AddRegionOnboardingFlow);
    }

    else
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v38 = sub_251702F84();
      __swift_project_value_buffer(v38, static Logger.general);
      v39 = v54;
      v40 = sub_251702F64();
      v41 = sub_251703314();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = *(v39 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion);

        _os_log_impl(&dword_25167E000, v40, v41, "Proceed with adding region with region of version %ld", v42, 0xCu);
        MEMORY[0x2530803C0](v42, -1, -1);
      }

      else
      {

        v40 = v39;
      }

      if (*(&v39->isa + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
      {
        v46 = objc_allocWithZone(type metadata accessor for OnboardingOpenAppStoreViewController());

        return sub_2516A9708(v47, v39, v46, &protocol witness table for AddRegionOnboardingFlow);
      }

      else
      {
        v43 = objc_allocWithZone(type metadata accessor for OnboardingAddRegionWelcomeViewController());

        v45 = sub_2516AA380(v44, v43);

        return v45;
      }
    }
  }

  else
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v7 = sub_251702F84();
    __swift_project_value_buffer(v7, static Logger.general);
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25167E000, v8, v9, "No configs available", v10, 2u);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    swift_beginAccess();
    v11 = v1[5];
    v12 = v1[6];
    v13 = v1[7];
    v14 = v1[8];
    v15 = objc_allocWithZone(type metadata accessor for OnboardingRegionNotAvailableViewController());

    sub_2516AB3D4(v11, v12);
    return sub_2516A9AA0(v1, v11, v12, v13, v14, v15, &protocol witness table for AddRegionOnboardingFlow);
  }
}

uint64_t AddRegionOnboardingFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_2516AB418(*(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 72);

  v5 = *(v0 + 88);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AddRegionOnboardingFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_2516AB418(*(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 72);

  v5 = *(v0 + 88);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2516A1F98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

id AnalyticsConsentOnboardingFlow.initialViewController.getter()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v3 = v1;

  return sub_2516AA1E4(v4, v3, v2, &protocol witness table for AnalyticsConsentOnboardingFlow);
}

uint64_t AnalyticsConsentOnboardingFlow.completionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AnalyticsConsentOnboardingFlow.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t AnalyticsConsentOnboardingFlow.__allocating_init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a1;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a2;
  v9 = a1;
  return v8;
}

uint64_t AnalyticsConsentOnboardingFlow.init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a1;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  v9 = a1;
  return v4;
}

uint64_t AnalyticsConsentOnboardingFlow.didTapNext(from:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2) == 9)
  {
    swift_beginAccess();
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v6(1);
  }

  else
  {
    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t AnalyticsConsentOnboardingFlow.didTapCancel(from:)()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v1(0);
}

uint64_t AnalyticsConsentOnboardingFlow.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2516AB418(*(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();
  v5 = *(v0 + 88);

  return v0;
}

uint64_t AnalyticsConsentOnboardingFlow.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2516AB418(*(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();
  v5 = *(v0 + 88);

  return swift_deallocClassInstance();
}

id sub_2516A25F4()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v3 = v1;

  return sub_2516AA1E4(v4, v3, v2, &protocol witness table for AnalyticsConsentOnboardingFlow);
}

uint64_t sub_2516A2650()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_2516A269C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_2516A2744()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v1(0);
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC17completionHandleryyAA0G6ResultOcvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _s28HealthExposureNotificationUI22StandardOnboardingFlowC17completionHandleryyAA0G6ResultOcvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *VerificationOnboardingFlow.healthAgencyModel.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VerificationOnboardingFlow.healthAgencyModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VerificationOnboardingFlow.currentSelectedRegion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2516AB3D4(v2, v3);
  return v2;
}

uint64_t VerificationOnboardingFlow.currentSelectedRegion.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_2516AB418(v10, v11);
}

uint64_t VerificationOnboardingFlow.currentSelectedRegionSubdivisionCodes.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.currentSelectedRegionSubdivisionCodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2516A2CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_251699D18(v4 + v8, a4, a2, a3);
}

uint64_t sub_2516A2D34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t VerificationOnboardingFlow.hasTraveled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.hasTraveled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.isVaccinated.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.isVaccinated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.reportType.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerificationOnboardingFlow.reportType.setter(int a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerificationOnboardingFlow.__allocating_init(sessionIdentifier:agencyModel:exposureManager:reportType:enteredFromMainScreen:completion:)(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v19 = sub_251702E64();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v21 = (v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v21 = 0u;
  v21[1] = 0u;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v23 = type metadata accessor for SymptomOnset(0);
  (*(*(v23 - 8) + 56))(v17 + v22, 1, 1, v23);
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v17 + v18, &qword_27F454000, &unk_251708500);
  swift_endAccess();
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  *(v17 + v20) = a2;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = a2;
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = a3;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = a5;
  v24 = a2;
  return v17;
}

uint64_t VerificationOnboardingFlow.init(sessionIdentifier:agencyModel:exposureManager:reportType:enteredFromMainScreen:completion:)(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v15 = sub_251702E64();
  (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v17 = (v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v17 = 0u;
  v17[1] = 0u;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v19 = type metadata accessor for SymptomOnset(0);
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  sub_2516AB4D4(a1, v7 + v14, &qword_27F454000, &unk_251708500);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  v20 = *(v7 + v16);
  *(v7 + v16) = a2;
  v21 = a2;

  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = v21;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = a3;
  *(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = a5;
  return v7;
}

uint64_t VerificationOnboardingFlow.initialViewController.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  v3 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  if (*(v1 + v2) == 3)
  {
    v4 = objc_allocWithZone(type metadata accessor for SelfReportVerificationWelcomeViewController());
    v5 = v3;

    v7 = sub_25169E258(v6, v5);

    return v7;
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for VerificationWelcomeViewController());

    return VerificationWelcomeViewController.init(flow:agencyModel:)(v1, v3);
  }
}

void VerificationOnboardingFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A6B5C(a1, v2, ObjectType, a2);
}

void VerificationOnboardingFlow.didTapCancel(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A708C(a1, v2, ObjectType, a2);
}

id sub_2516A3614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  if (*&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus])
  {
    v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
    swift_beginAccess();
    sub_251699D18(a1 + v7, v5, &qword_27F454000, &unk_251708500);
    v8 = sub_251702E64();
    LODWORD(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8);
    sub_25168B718(v5, &qword_27F454000, &unk_251708500);
    if (v7 == 1)
    {
      v9 = objc_allocWithZone(type metadata accessor for VerificationCodeEntryViewController());
      v10 = v6;

      return VerificationCodeEntryViewController.init(flow:agencyModel:)(v11, v10);
    }

    else
    {
      return sub_2516A3A24(a1);
    }
  }

  else
  {
    v13 = type metadata accessor for OnboardingLegalConsentViewController();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v16 = objc_opt_self();
    v17 = v6;

    *&v14[v15] = [v16 boldButton];
    v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v14[v18] = [objc_opt_self() linkButton];
    v19 = &v14[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v19 = a1;
    v19[1] = &protocol witness table for VerificationOnboardingFlow;
    v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v17;
    v14[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 0;
    v14[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 0;
    v21 = qword_28151EB58;
    v22 = v17;

    if (v21 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_251708520;
    v24 = (*&v14[v20] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v26 = *v24;
    v25 = v24[1];
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_25169F41C();
    *(v23 + 32) = v26;
    *(v23 + 40) = v25;

    sub_251703184();

    v27 = sub_251703134();

    v33.receiver = v14;
    v33.super_class = v13;
    v28 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v27, 0, 0, 2);

    v29 = v28;
    [v29 set:1 shouldInlineButtontray:?];
    v30 = [v29 headerView];
    LODWORD(v31) = 1036831949;
    [v30 setTitleHyphenationFactor_];

    return v29;
  }
}

id sub_2516A3A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
  v7 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText] & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset, swift_beginAccess(), sub_251699D18(a1 + v9, v5, &unk_27F4538B0, &unk_2517068C0), v10 = type metadata accessor for SymptomOnset(0), LODWORD(v9) = (*(*(v10 - 8) + 48))(v5, 1, v10), sub_25168B718(v5, &unk_27F4538B0, &unk_2517068C0), v9 == 1))
  {
    v11 = objc_allocWithZone(type metadata accessor for VerificationSymptomDateEntryViewController());
    v12 = v6;

    return sub_2516A8F0C(v13, v12, v11, &protocol witness table for VerificationOnboardingFlow);
  }

  else
  {
    v15 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v15 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v16 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v18 = v6;

      return sub_2516A895C(v19, v18, v17, &protocol witness table for VerificationOnboardingFlow);
    }

    else
    {
      v20 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
      if ((v20 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v21 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
      }

      if (v21 && (([v6 supportsFeatures_] & 1) != 0 || (v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v6[v22] == 2)))
      {
        v23 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v24 = v6;

        return sub_2516A8C34(v25, v24, v23, &protocol witness table for VerificationOnboardingFlow);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());
        v26 = v6;

        return VerificationSummaryViewController.init(flow:agencyModel:)(v27, v26);
      }
    }
  }
}

void sub_2516A3CE8(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454098, &qword_251708928);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - v12);
  sub_251699D18(a1, v27 - v12, &qword_27F454098, &qword_251708928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = *v13;
    a3(v14);
  }

  else
  {
    v16 = *v13;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A0, &qword_251708930);
    sub_2516ABAC8(v13 + *(v17 + 48), v9);
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v18 = sub_251702F84();
    __swift_project_value_buffer(v18, static Logger.testVerification);
    v19 = sub_251702F64();
    v20 = sub_251703314();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v27[1] = v16;
      type metadata accessor for ENDiagnosisReportType(0);
      v23 = sub_251703194();
      v25 = sub_251693FCC(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25167E000, v19, v20, "Metadata for report type: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2530803C0](v22, -1, -1);
      MEMORY[0x2530803C0](v21, -1, -1);
    }

    v26 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
    swift_beginAccess();
    sub_2516ABCA0(v9, a2 + v26);
    swift_endAccess();
    a3(0);
    sub_25168B718(v9, &unk_27F4538B0, &unk_2517068C0);
  }
}

uint64_t VerificationOnboardingFlow.deinit()
{
  v1 = *(v0 + 24);

  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier, &qword_27F454000, &unk_251708500);

  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 16);
  v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 24);
  sub_2516AB418(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion), *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion + 8));
  v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes);

  v5 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager);
  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);
  return v0;
}

uint64_t VerificationOnboardingFlow.__deallocating_deinit()
{
  VerificationOnboardingFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_2516A40E8()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2516A4134(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2516A41EC()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2516AB3D4(v2, v3);
  return v2;
}

uint64_t sub_2516A4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_2516AB418(v10, v11);
}

uint64_t sub_2516A433C()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2516A4384(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2516A4450(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A6B5C(a1, v2, ObjectType, a2);
}

void sub_2516A44A0(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A708C(a1, v2, ObjectType, a2);
}

void *PreAuthorizationFlow.healthAgencyModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PreAuthorizationFlow.healthAgencyModel.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2516A45D0()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  sub_2516AB3D4(v1, v2);
  return v1;
}

uint64_t sub_2516A4640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return sub_2516AB418(v9, v10);
}

uint64_t sub_2516A4700()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_2516A473C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_2516A484C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 72) = a1;
  return a2(v5);
}

uint64_t PreAuthorizationFlow.hasTraveled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PreAuthorizationFlow.hasTraveled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PreAuthorizationFlow.isVaccinated.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PreAuthorizationFlow.isVaccinated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PreAuthorizationFlow.initialViewController.getter()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v3 = v1;

  return PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v4, v3);
}

uint64_t PreAuthorizationFlow.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PreAuthorizationFlow.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset;
  v10 = type metadata accessor for SymptomOnset(0);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled) = 2;
  *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated) = 2;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a1;
  v11 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  *v11 = a3;
  v11[1] = a4;
  *(v4 + 72) = a2;
  v12 = a1;
  return v4;
}

uint64_t sub_2516A4DE4()
{
  v1 = *(v0 + 24);
  v2 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = objc_allocWithZone(type metadata accessor for VerificationSymptomDateEntryViewController());
    v5 = v1;

    return sub_2516A8F0C(v6, v5, v4, &protocol witness table for PreAuthorizationFlow);
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v11 = v1;

      return sub_2516A895C(v12, v11, v10, &protocol witness table for PreAuthorizationFlow);
    }

    else
    {
      v13 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
      if ((v13 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v14 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
      }

      if (v14 && (([*(v0 + 24) supportsFeatures_] & 1) != 0 || (v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v1[v15] == 2)))
      {
        v16 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v17 = v1;

        return sub_2516A8C34(v18, v17, v16, &protocol witness table for PreAuthorizationFlow);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

        return VerificationFinishedViewController.init(flow:)(v19, &protocol witness table for PreAuthorizationFlow);
      }
    }
  }
}

void PreAuthorizationFlow.didTapNext(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7650(a1, v2, ObjectType, a2);
}

void sub_2516A4FF0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v3 = sub_251702F84();
    __swift_project_value_buffer(v3, static Logger.general);
    v4 = a1;
    v5 = sub_251702F64();
    v6 = sub_251703324();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v10 = sub_251703194();
      v12 = sub_251693FCC(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25167E000, v5, v6, "reporting symptomOnset, travelStatus and vaccinationStatus failed. Error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2530803C0](v8, -1, -1);
      MEMORY[0x2530803C0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t PreAuthorizationFlow.didTapCancel(from:)()
{
  v1 = v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(0);
}

uint64_t PreAuthorizationFlow.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2516AB418(*(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);
  v5 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler + 8);

  return v0;
}

uint64_t PreAuthorizationFlow.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_2516AB418(*(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_25168B718(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset, &unk_27F4538B0, &unk_2517068C0);
  v5 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_2516A5390()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v3 = v1;

  return PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v4, v3);
}

uint64_t sub_2516A53E4()
{
  v1 = (v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2516A543C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_2516A54FC(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2516A7650(a1, v2, ObjectType, a2);
}

uint64_t sub_2516A554C()
{
  v1 = v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(0);
}

void sub_2516A55F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese];
    if (v13)
    {
      v33 = a5;
      v14 = (v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
      v15 = v14[1];
      v32 = *v14;
      swift_beginAccess();
      if (static ENUIPublicHealthAgencyModel.activeRegion)
      {
        v16 = *(static ENUIPublicHealthAgencyModel.activeRegion + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
        v31 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
        sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
        v30 = v12;

        v17 = a3;
        v18 = v16;
        v19 = v31;
        v20 = sub_2517033B4();

        a3 = v17;
        if (v20)
        {

          goto LABEL_10;
        }
      }

      else
      {
        v21 = v12;
      }

      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v22 = static ENManagerAdapter.defaultAdapter;
      v23 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];
      v24 = swift_allocObject();
      v24[2] = v32;
      v24[3] = v15;
      v24[4] = 3;
      v24[5] = 0;
      v24[6] = 0;
      v24[7] = v22;
      v24[8] = v23;
      v24[9] = sub_2516A58DC;
      v24[10] = 0;
      v25 = v22;
      v26 = v23;
      v27 = v25;
      v28 = v26;
      sub_2516C59C8(v33, v24);
    }
  }

LABEL_10:
  aBlock[4] = a6;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = a7;
  v29 = _Block_copy(aBlock);

  [a3 dismissViewControllerAnimated:1 completion:v29];
  _Block_release(v29);
}

void sub_2516A58DC()
{
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v0 = sub_251702F84();
  __swift_project_value_buffer(v0, static Logger.general);
  oslog = sub_251702F64();
  v1 = sub_251703314();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25167E000, oslog, v1, "User deferred legal consent", v2, 2u);
    MEMORY[0x2530803C0](v2, -1, -1);
  }
}

void sub_2516A59C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = sub_2516AB9BC;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_251693A80;
  v5[3] = &block_descriptor_46;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

uint64_t sub_2516A5A90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  v3(0);
}

uint64_t sub_2516A5B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_251703504();
    v22 = v8;
    sub_251703464();
    if (sub_251703494())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_2516A6494(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_2517033A4();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_251703494());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2516A5D3C(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v56[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v56[0] = a1;
    v47 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v38 = a1;
      v3 = sub_251703474();
      a1 = v38;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = a1;

    if (v3)
    {
      v4 = 0;
      v53 = v52 & 0xC000000000000001;
      v51 = v52 & 0xFFFFFFFFFFFFFF8;
      v49 = v52 + 32;
      v55 = (v2 + 56);
      while (1)
      {
        if (v53)
        {
          a1 = MEMORY[0x25307F910](v4, v52);
        }

        else
        {
          if (v4 >= *(v51 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v49 + 8 * v4);
        }

        v54 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = *(v2 + 40);
        v7 = sub_2517033A4();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v55[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v12 = ~v8;
      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      while (1)
      {
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_2517033B4();

        if (v14)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v55[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v56[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v45 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v46 = &v44;
        MEMORY[0x28223BE20](v15);
        v20 = &v44 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v55, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v50 = v20;
        *&v20[8 * v10] = v22;
        v48 = v21 - 1;
        if (v47)
        {
          a1 = sub_251703474();
          v54 = a1;
        }

        else
        {
          v54 = *(v51 + 16);
        }

        while (1)
        {
          if (v4 == v54)
          {
            v2 = sub_2516A6968(v50, v45, v48, v2);
            goto LABEL_40;
          }

          if (v53)
          {
            a1 = MEMORY[0x25307F910](v4, v52);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v51 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v49 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = *(v2 + 40);
          v25 = sub_2517033A4();
          v26 = v2;
          v27 = -1 << *(v2 + 32);
          v28 = v25 & ~v27;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & v55[v28 >> 6]) != 0)
          {
            v31 = ~v27;
            while (1)
            {
              v32 = *(*(v26 + 48) + 8 * v28);
              v33 = sub_2517033B4();

              if (v33)
              {
                break;
              }

              v28 = (v28 + 1) & v31;
              v29 = v28 >> 6;
              v30 = 1 << v28;
              if (((1 << v28) & v55[v28 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v34 = v50[v29];
            v50[v29] = v34 & ~v30;
            v2 = v26;
            if ((v34 & v30) != 0)
            {
              v35 = v48 - 1;
              if (__OFSUB__(v48, 1))
              {
                __break(1u);
              }

              --v48;
              if (!v35)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v26;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v39 = 8 * v18;

      v40 = v2;
      v41 = v39;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v40;
        goto LABEL_19;
      }

      v42 = swift_slowAlloc();
      memcpy(v42, v55, v41);
      sub_2516A6738(v42, v45, v40, v9, v56);
      v2 = v43;

      MEMORY[0x2530803C0](v42, -1, -1);
    }

LABEL_40:
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2516A6220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  result = sub_2517034F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2517036E4();
      sub_2517031A4();
      result = sub_251703724();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2516A6494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2517034F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2517033A4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_2516A66B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2517033A4();
  v5 = -1 << *(a2 + 32);
  result = sub_251703454();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2516A6738(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v27 = *v5;
          }

          v10 = sub_251703474();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {

          sub_2516A6968(a1, a2, v29, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25307F910](v5[1]);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v5[1] = v11 + 1;
        v15 = *(a3 + 40);
        v16 = sub_2517033A4();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_2517033B4();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_2517033B4();
        }

        while ((v25 & 1) == 0);
      }

      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2516A6968(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454080, &qword_251708908);
  result = sub_251703514();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2517033A4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2516A6B5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2516A6C30(a1, a2, a3, a4);
  if (v6)
  {
    v11 = v6;
    v7 = [a1 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v11 animated:1];
    }
  }

  else
  {
    swift_beginAccess();
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);

    v10(1);
  }
}

id sub_2516A6C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42[-v9];
  ObjectType = swift_getObjectType();
  v43 = a1;
  v12 = (*(a4 + 8))(ObjectType, a4);
  result = 0;
  if (v12 <= 0xBu)
  {
    switch(v12)
    {
      case 4u:
        v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
        swift_beginAccess();
        sub_251699D18(a2 + v25, v10, &qword_27F454000, &unk_251708500);
        v26 = sub_251702E64();
        LODWORD(v25) = (*(*(v26 - 8) + 48))(v10, 1, v26);
        sub_25168B718(v10, &qword_27F454000, &unk_251708500);
        if (v25 == 1)
        {
          v27 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
          v28 = objc_allocWithZone(type metadata accessor for VerificationCodeEntryViewController());

          return VerificationCodeEntryViewController.init(flow:agencyModel:)(a2, v27);
        }

        break;
      case 0xAu:
        return sub_2516A3614(a2);
      case 0xBu:
        break;
      default:
        return result;
    }

    return sub_2516A3A24(a2);
  }

  if (v12 > 0xDu)
  {
    if (v12 == 14)
    {
      v35 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

      return VerificationFinishedViewController.init(flow:)(v36, &protocol witness table for VerificationOnboardingFlow);
    }

    if (v12 != 21)
    {
      return result;
    }

    v21 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v22 = objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());

    v23 = v21;
    v24 = a2;
  }

  else if (v12 == 12)
  {
    v29 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v30 = *&v29[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
    if ((v30 & 0x2000000000000000) != 0)
    {
      v31 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v31 = *&v29[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());
      v33 = v29;

      return sub_2516A895C(v34, v33, v32, &protocol witness table for VerificationOnboardingFlow);
    }

    v37 = *&v29[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v37 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v37) & 0xF;
    }

    else
    {
      v38 = *&v29[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      if (([*(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) supportsFeatures_] & 1) != 0 || (v39 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v29[v39] == 2))
      {
        v18 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());
        v40 = v29;

        v19 = v40;
        return sub_2516A8C34(v20, v19, v18, &protocol witness table for VerificationOnboardingFlow);
      }
    }

    objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());
    v41 = v29;

    v23 = v41;
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel);
    v15 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v15 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v16 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if (([*(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) supportsFeatures_] & 1) != 0 || (v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v14[v17] == 2))
      {
        v18 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());

        v19 = v14;
        v20 = a2;
        return sub_2516A8C34(v20, v19, v18, &protocol witness table for VerificationOnboardingFlow);
      }
    }

    objc_allocWithZone(type metadata accessor for VerificationSummaryViewController());

    v23 = v14;
    v24 = a2;
  }

  return VerificationSummaryViewController.init(flow:agencyModel:)(v24, v23);
}

void sub_2516A708C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v35 - v9;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(a2 + v11, v10, &qword_27F454000, &unk_251708500);
  v12 = sub_251702E64();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_25168B718(v10, &qword_27F454000, &unk_251708500);
  if (v11 == 1)
  {
    ObjectType = swift_getObjectType();
    aBlock = a1;
    v14 = *(a4 + 8);
    if (v14(ObjectType, a4) == 10)
    {
      swift_beginAccess();
      v16 = *(a2 + 16);
      v15 = *(a2 + 24);

      v17 = 0;
LABEL_7:
      v16(v17);

      return;
    }
  }

  else
  {
    v14 = *(a4 + 8);
  }

  v18 = swift_getObjectType();
  aBlock = a1;
  if (v14(v18, a4) == 14)
  {
    swift_beginAccess();
    v16 = *(a2 + 16);
    v19 = *(a2 + 24);

    v17 = 2;
    goto LABEL_7;
  }

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v20 = sub_251702C94();
  v35[0] = v21;
  v35[1] = v20;
  sub_251702C94();
  v22 = sub_251703134();

  v23 = sub_251703134();

  v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:0];

  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v36 = a1;

  v26 = sub_251703134();

  v41 = sub_25169D78C;
  v42 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_25169F470;
  v40 = &block_descriptor_67;
  v27 = _Block_copy(&aBlock);

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:2 handler:v27];
  _Block_release(v27);

  [v24 addAction_];
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  v31 = v24;
  v32 = sub_251703134();

  v41 = sub_2516ABF30;
  v42 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_25169F470;
  v40 = &block_descriptor_73;
  v33 = _Block_copy(&aBlock);

  v34 = [v28 actionWithTitle:v32 style:1 handler:v33];
  _Block_release(v33);

  [v31 addAction_];
  [v36 presentViewController:v31 animated:1 completion:0];
}

void sub_2516A7650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v61[-v15];
  ObjectType = swift_getObjectType();
  v66 = a1;
  v18 = (*(a4 + 8))(ObjectType, a4);
  if (v18 > 0x10)
  {
    switch(v18)
    {
      case 0x11u:
        v43 = sub_2516A4DE4();
        if (v43)
        {
          goto LABEL_31;
        }

        break;
      case 0x14u:
        v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset;
        swift_beginAccess();
        v65 = v20;
        sub_251699D18(a2 + v20, v16, &unk_27F4538B0, &unk_2517068C0);
        v21 = type metadata accessor for SymptomOnset(0);
        LODWORD(v20) = (*(*(v21 - 8) + 48))(v16, 1, v21);
        sub_25168B718(v16, &unk_27F4538B0, &unk_2517068C0);
        if (v20 != 1 || (v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled, swift_beginAccess(), *(a2 + v22) != 2) || (v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated, swift_beginAccess(), *(a2 + v23) != 2))
        {
          if (qword_28151EB60 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v64 = static ENManagerAdapter.defaultAdapter;
          v63 = *(*(a2 + 24) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
          sub_251699D18(a2 + v65, v14, &unk_27F4538B0, &unk_2517068C0);
          v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
          swift_beginAccess();
          LODWORD(v65) = *(a2 + v24);
          v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
          swift_beginAccess();
          v62 = *(a2 + v25);
          sub_251699D18(v14, v11, &unk_27F4538B0, &unk_2517068C0);
          v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
          v27 = v26 + v9;
          v28 = (v26 + v9 + 9) & 0xFFFFFFFFFFFFFFF8;
          v29 = (v26 + v9 + 25) & 0xFFFFFFFFFFFFFFF8;
          v30 = swift_allocObject();
          sub_2516ABAC8(v11, v30 + v26);
          v31 = (v30 + v27);
          *v31 = v65;
          v31[1] = v62;
          v32 = v30 + v28;
          v34 = v63;
          v33 = v64;
          *v32 = v64;
          *(v32 + 8) = 1;
          *(v30 + v29) = v34;
          v35 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v35 = sub_2516A4FF0;
          v35[1] = 0;
          v36 = v33;
          v37 = v34;
          v38 = v36;
          v39 = v37;
          sub_2516C59C8(sub_2516ABB38, v30);

          sub_25168B718(v14, &unk_27F4538B0, &unk_2517068C0);
        }

        break;
      case 0x15u:
        goto LABEL_30;
      default:
        goto LABEL_34;
    }

    v48 = a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler;
    swift_beginAccess();
    v50 = *v48;
    v49 = *(v48 + 8);

    v50(1);

    return;
  }

  if (v18 != 12)
  {
    if (v18 == 13)
    {
      v19 = *(a2 + 24);
      goto LABEL_18;
    }

    if (v18 == 16)
    {
      v51 = *(a2 + 24);
      v52 = objc_allocWithZone(type metadata accessor for PreAuthorizationConsentViewController());
      v52[qword_27F454590] = 2;
      *&v52[qword_27F454598] = a2;
      *&v52[qword_27F4545A0] = v51;
      v53 = *&v51[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

      v54 = v51;
      v55 = v53;
      sub_2516E0EFC(v67);
      v43 = sub_25168D488(v67, 0, 0, v53, 0, 0);
      goto LABEL_31;
    }

LABEL_34:
    sub_251703584();
    __break(1u);
    return;
  }

  v19 = *(a2 + 24);
  v40 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8];
  if ((v40 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v41 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText] & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
LABEL_18:
    v44 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
    if ((v44 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v45 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      if (([v19 supportsFeatures_] & 1) != 0 || (v46 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus, swift_beginAccess(), *&v19[v46] == 2))
      {
        v47 = objc_allocWithZone(type metadata accessor for VaccinationQuestionViewController());

        v43 = sub_2516A8C34(a2, v19, v47, &protocol witness table for PreAuthorizationFlow);
        goto LABEL_31;
      }
    }

LABEL_30:
    v56 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

    v43 = VerificationFinishedViewController.init(flow:)(v57, &protocol witness table for PreAuthorizationFlow);
    goto LABEL_31;
  }

  v42 = objc_allocWithZone(type metadata accessor for VerificationTravelStatusViewController());

  v43 = sub_2516A895C(a2, v19, v42, &protocol witness table for PreAuthorizationFlow);
LABEL_31:
  v58 = v43;
  v59 = [a1 navigationController];
  if (v59)
  {
    v60 = v59;
    [v59 pushViewController:v58 animated:1];
  }
}

void sub_2516A7D48(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v64 = a1;
  v8 = (*(a4 + 8))(ObjectType, a4);
  if (v8 > 4)
  {
    if ((v8 - 6) < 3)
    {
      swift_beginAccess();
      v10 = a2[2];
      v9 = a2[3];

      v10(3);
      goto LABEL_40;
    }

    if (v8 != 5)
    {
      if (v8 != 9)
      {
        goto LABEL_38;
      }

      swift_beginAccess();
      v14 = a2[4];
      if (!v14)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (a2[11] == 5 && *(v14 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed) == 1)
      {
        v38 = a2[10];
        swift_beginAccess();
        v39 = a2[2];
        v40 = a2[3];
        v41 = type metadata accessor for PreAuthorizationFlow(0);
        v42 = *(v41 + 48);
        v43 = *(v41 + 52);
        v44 = swift_allocObject();
        PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(v14, v38, v39, v40);
        v45 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
        v46 = v14;
        swift_unknownObjectRetain();

        v13 = PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v44, v46);
        goto LABEL_28;
      }

LABEL_38:
      swift_beginAccess();
      v58 = a2[2];
      v57 = a2[3];

      v58(1);
      goto LABEL_40;
    }

    swift_beginAccess();
    v14 = a2[4];
    if (!v14)
    {
      goto LABEL_38;
    }

    if ((*(v14 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics) & 1) == 0)
    {
      goto LABEL_25;
    }

    v37 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());

    v13 = sub_2516AA1E4(a2, v14, v37, &protocol witness table for StandardOnboardingFlow);
LABEL_28:
    v17 = v13;
LABEL_29:
    LODWORD(v18) = 0;
    goto LABEL_30;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_17;
    }

    if (v8 != 4)
    {
      goto LABEL_38;
    }

    swift_beginAccess();
    v15 = a2[4];
    if (v15)
    {
      v16 = objc_allocWithZone(type metadata accessor for OnboardingSummaryViewController());

      v13 = sub_2516A9EB4(a2, v15, v16);
      goto LABEL_28;
    }

LABEL_39:
    swift_beginAccess();
    v60 = a2[2];
    v59 = a2[3];

    v60(0);
    goto LABEL_40;
  }

  if (!v8)
  {
    swift_beginAccess();
    v18 = a2[4];
    if (!v18)
    {
      v61 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

      v17 = sub_2516A9CEC(v62, 0, v61, &protocol witness table for StandardOnboardingFlow);
      goto LABEL_30;
    }

    v19 = type metadata accessor for OnboardingLegalConsentViewController();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v22 = objc_opt_self();
    v23 = v18;

    *&v20[v21] = [v22 boldButton];
    v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v20[v24] = [objc_opt_self() linkButton];
    v25 = &v20[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v25 = a2;
    v25[1] = &protocol witness table for StandardOnboardingFlow;
    v26 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v20[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v23;
    v20[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
    v20[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
    v27 = qword_28151EB58;
    v28 = v23;

    if (v27 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_251708520;
    v30 = (*&v20[v26] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v32 = *v30;
    v31 = v30[1];
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_25169F41C();
    *(v29 + 32) = v32;
    *(v29 + 40) = v31;

    sub_251703184();

    v33 = sub_251703134();

    v63.receiver = v20;
    v63.super_class = v19;
    v34 = objc_msgSendSuper2(&v63, sel_initWithTitle_detailText_icon_contentLayout_, v33, 0, 0, 2, 0xE000000000000000);

    v17 = v34;
    [v17 set:1 shouldInlineButtontray:?];
    v35 = [v17 headerView];
    LODWORD(v36) = 1036831949;
    [v35 setTitleHyphenationFactor_];

    goto LABEL_29;
  }

  swift_beginAccess();
  if (!a2[6])
  {
    goto LABEL_39;
  }

  swift_beginAccess();
  v11 = a2[9];
  if (*(v11 + 16))
  {
    v12 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

    v13 = sub_2516A9CEC(a2, v11, v12, &protocol witness table for StandardOnboardingFlow);
    goto LABEL_28;
  }

LABEL_17:
  v17 = sub_25169FC34();
  LODWORD(v18) = 1;
LABEL_30:
  v47 = [a1 navigationController];
  if (v47)
  {
    v48 = v47;
    [v47 pushViewController:v17 animated:1];
  }

  if (!v18 || (swift_beginAccess(), (v49 = a2[4]) == 0))
  {

    return;
  }

  v50 = qword_28151EB60;
  v51 = *(v49 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  if (v50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v52 = static ENManagerAdapter.defaultAdapter;
  v53 = swift_allocObject();
  v53[2] = 1;
  v53[3] = v52;
  v53[4] = v51;
  v54 = v52;
  v55 = v51;
  v56 = v54;
  sub_2516C59C8(sub_2516ABFD8, v53);

LABEL_40:
}

void sub_2516A84AC(void *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    v3 = sub_251703134();

    v4 = sub_251703134();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:{0, 0xE000000000000000}];

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;

    v19 = a1;
    v7 = sub_251703134();

    v24 = sub_2516ABEA0;
    v25 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_90;
    v8 = _Block_copy(&aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
    _Block_release(v8);

    [v5 addAction_];
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v12 = v5;
    v13 = sub_251703134();

    v24 = sub_2516ABF30;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_97;
    v14 = _Block_copy(&aBlock);

    v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    [v12 addAction_];
    [v19 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v24 = sub_2516ABF60;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_251693A80;
    v23 = &block_descriptor_84;
    v17 = _Block_copy(&aBlock);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_2516A895C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
  v10 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v9] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
  *&a3[v11] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton;
  *&a3[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton;
  *&a3[v13] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v14 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow];
    *v14 = a1;
    v14[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel] = a2;
    v15 = qword_28151EB58;

    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v17 = sub_251703134();

    v22.receiver = a3;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_, v17, 0, 0, 0xE000000000000000);

    v19 = v18;
    [v19 set:1 shouldInlineButtontray:?];

    return v19;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v21 = sub_251703194();
    MEMORY[0x25307F580](v21);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516A8C34(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
  v10 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v9] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
  *&a3[v11] = [objc_allocWithZone(v10) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton;
  *&a3[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton;
  *&a3[v13] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v14 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow];
    *v14 = a1;
    v14[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel] = a2;
    v15 = qword_28151EB58;

    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v17 = sub_251703134();

    v22.receiver = a3;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_, v17, 0, 0, 0xE000000000000000);

    v19 = v18;
    [v19 set:1 shouldInlineButtontray:?];

    return v19;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v21 = sub_251703194();
    MEMORY[0x25307F580](v21);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516A8F0C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] = 2;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  v10 = sub_251702E24();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker] = 0;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource] = 0;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton;
  *&a3[v11] = [objc_opt_self() boldButton];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_secondaryButton;
  *&a3[v12] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v13 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow];
    *v13 = a1;
    v13[1] = a4;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_healthAgencyModel] = a2;
    v14 = qword_28151EB58;

    v15 = a2;
    if (v14 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v16 = sub_251703134();

    v21.receiver = a3;
    v21.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_, v16, 0, 0, 0xE000000000000000);

    v18 = v17;
    [v18 set:1 shouldInlineButtontray:?];

    return v18;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v20 = sub_251703194();
    MEMORY[0x25307F580](v20);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

id sub_2516A91DC(void *a1, void *a2, char *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_primaryButton;
  *&a3[v8] = [objc_opt_self() boldButton];
  v9 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_flow];
  *v9 = a1;
  *(v9 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel] = a2;

  v10 = a2;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] < 2)
    {
      goto LABEL_12;
    }

    if (*&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8])
    {
      v11 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = static ENManagerAdapter.defaultAdapter;
      _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }
    }
  }

  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0 && v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] != 1)
  {
LABEL_12:
    swift_beginAccess();
    v15 = a1[6];
    if (v15)
    {
      v17 = a1[7];
      v16 = a1[8];
      v18 = a1[5];
      sub_2516AB3D4(v18, a1[6]);

      sub_2516AB418(v18, v15);
    }

    else
    {
      v18 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
      v15 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
    }

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_251708520;
    *(v19 + 56) = MEMORY[0x277D837D0];
    v20 = sub_25169F41C();
    *(v19 + 64) = v20;
    *(v19 + 32) = v18;
    *(v19 + 40) = v15;
    sub_251703184();

    sub_251702C94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_251708520;
    v23 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
    v22 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = v20;
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;

    sub_251703184();
  }

  else
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
  }

  v24 = sub_251703134();

  v25 = sub_251703134();

  v31.receiver = a3;
  v31.super_class = type metadata accessor for OnboardingRegionAlreadyExistsViewController();
  v26 = objc_msgSendSuper2(&v31, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, 0, 3, 0xE000000000000000);

  v27 = v26;
  v28 = [v27 headerView];
  LODWORD(v29) = 1036831949;
  [v28 setTitleHyphenationFactor_];

  return v27;
}

id sub_2516A9708(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL];
  *v8 = 0xD000000000000029;
  *(v8 + 1) = 0x800000025170A8C0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel] = a2;
  v11 = qword_28151EB58;

  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251708520;
  v14 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v15 = *&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_25169F41C();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;

  sub_251703184();

  v16 = sub_251703134();

  v17 = sub_251703134();

  v18 = sub_251703134();
  v19 = [objc_opt_self() systemImageNamed_];

  v28.receiver = a3;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v19, 3);

  v21 = v20;
  v22 = [v21 headerView];
  v23 = [objc_opt_self() systemBlueColor];
  [v22 setTintColor_];

  v24 = [v21 headerView];
  LODWORD(v25) = 1036831949;
  [v24 setTitleHyphenationFactor_];

  return v21;
}

id sub_2516A9AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton;
  *&a6[v15] = [objc_opt_self() boldButton];
  v16 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow];
  *v16 = a1;
  *(v16 + 1) = a7;
  v17 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_region];
  *v17 = a2;
  *(v17 + 1) = a3;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  v18 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v19 = sub_251703134();

  v20 = sub_251703134();

  v26.receiver = a6;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, 0, 3, 0xE000000000000000);

  v22 = v21;
  v23 = [v22 headerView];
  LODWORD(v24) = 1036831949;
  [v23 setTitleHyphenationFactor_];

  return v22;
}

id sub_2516A9CEC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v10 = sub_251702C94();
  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  v14 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&a3[v9] = LoadingStatusView.init(with:backgroundColor:)(v10, v12, v13);
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *&a3[v15] = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  v17 = type metadata accessor for RegionsProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&a3[v16] = sub_2516E2EB8();
  v20 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  *v20 = a1;
  *(v20 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType] = a2;
  v22.receiver = a3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2516A9EB4(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_primaryButton;
  *&a3[v7] = [objc_opt_self() boldButton];
  v8 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_flow];
  *v8 = a1;
  *(v8 + 1) = &protocol witness table for StandardOnboardingFlow;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_healthAgencyModel] = a2;
  v9 = qword_28151EB58;

  v22 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v10 = sub_251703134();

  sub_251702C94();
  v11 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.exposureNotificationUI;
  v13 = sub_251703134();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:{v12, 0xE000000000000000}];

  v23.receiver = a3;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v14, 3);

  v16 = v15;
  v17 = [v16 headerView];
  v18 = [objc_opt_self() systemPinkColor];
  [v17 setTintColor_];

  v19 = [v16 headerView];
  LODWORD(v20) = 1036831949;
  [v19 setTitleHyphenationFactor_];

  return v16;
}

id sub_2516AA1E4(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton;
  *&a3[v9] = [objc_opt_self() boldButton];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton;
  *&a3[v10] = [objc_opt_self() linkButton];
  v11 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow];
  *v11 = a1;
  *(v11 + 1) = a4;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel] = a2;
  v12 = qword_28151EB58;

  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v14 = sub_251703134();

  v17.receiver = a3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v14, 0, 0, 3, 0xE000000000000000);

  return v15;
}

id sub_2516AA380(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton;
  *&a2[v5] = [objc_opt_self() boldButton];
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton;
  *&a2[v6] = [objc_opt_self() linkButton];
  v7 = &a2[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow];
  *v7 = a1;
  *(v7 + 1) = &protocol witness table for AddRegionOnboardingFlow;
  v8 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v9 = sub_251703134();

  sub_251702C94();
  v10 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.exposureNotificationUI;
  v12 = sub_251703134();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:{v11, 0xE000000000000000}];

  v21.receiver = a2;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v13, 2);

  v15 = v14;
  v16 = [v15 headerView];
  v17 = [objc_opt_self() systemPinkColor];
  [v16 setTintColor_];

  v18 = [v15 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  return v15;
}

id sub_2516AA6B0(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_primaryButton;
  *&a3[v6] = [objc_opt_self() boldButton];
  v7 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow];
  *v7 = a1;
  *(v7 + 1) = &protocol witness table for AddRegionOnboardingFlow;
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_healthAgencyModel] = a2;
  v9 = qword_28151EB58;

  v32 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251708520;
  v11 = (*&a3[v8] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v30 = v8;
  v13 = *v11;
  v12 = v11[1];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_25169F41C();
  *(v10 + 64) = v14;
  *(v10 + 32) = v13;
  *(v10 + 40) = v12;

  sub_251703184();

  sub_251702C94();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251708520;
  v16 = (*&a3[v30] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v18 = *v16;
  v17 = v16[1];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v14;
  *(v15 + 32) = v18;
  *(v15 + 40) = v17;

  sub_251703184();

  v19 = sub_251703134();

  v20 = sub_251703134();

  v21 = sub_251703134();
  v22 = [objc_opt_self() systemImageNamed_];

  v33.receiver = a3;
  v33.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, v22, 3);

  v24 = v23;
  v25 = [v24 headerView];
  v26 = [objc_opt_self() systemPinkColor];
  [v25 setTintColor_];

  v27 = [v24 headerView];
  LODWORD(v28) = 1036831949;
  [v27 setTitleHyphenationFactor_];

  return v24;
}

uint64_t _s28HealthExposureNotificationUI12SymptomOnsetO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251702E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymptomOnset(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A8, &qword_251708938);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_2516ABD10(a1, &v23 - v16);
  sub_2516ABD10(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2516ABD10(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_251702DF4();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_2516ABD74(v17);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25168B718(v17, &qword_27F4540A8, &qword_251708938);
    v20 = 0;
    return v20 & 1;
  }

  sub_2516ABD74(v17);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_2516AAD40(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251703474())
  {
    v4 = type metadata accessor for ENUIPublicHealthAgencyModel(0);
    v5 = sub_2516AB9D0();
    result = MEMORY[0x25307F6B0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25307F910](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2516F0548(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_251703474();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2516AAE70(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_251702E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v47 = v16;
  MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  v51 = v2;
  sub_251699D18(v2 + v19, v7, &qword_27F454000, &unk_251708500);
  v53 = v9;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25168B718(v7, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
  }

  else
  {
    v52 = a2;
    v45 = *(v53 + 32);
    v46 = v53 + 32;
    v45(v18, v7, v8);
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v20 = sub_251702F84();
    __swift_project_value_buffer(v20, static Logger.testVerification);
    v21 = *(v53 + 16);
    v50 = v18;
    v21(v15, v18, v8);
    v22 = sub_251702F64();
    v23 = sub_251703314();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v21;
      v26 = swift_slowAlloc();
      v54 = v26;
      *v24 = 136315138;
      v27 = sub_251702E34();
      v29 = v28;
      v44 = *(v53 + 8);
      v44(v15, v8);
      v30 = sub_251693FCC(v27, v29, &v54);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_25167E000, v22, v23, "Fetch Test Metadata for session %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v31 = v26;
      v21 = v25;
      MEMORY[0x2530803C0](v31, -1, -1);
      MEMORY[0x2530803C0](v24, -1, -1);
    }

    else
    {

      v44 = *(v53 + 8);
      v44(v15, v8);
    }

    v32 = v50;
    if (qword_28151EB60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = static ENManagerAdapter.defaultAdapter;
    v34 = swift_allocObject();
    v35 = v52;
    v37 = v48;
    v36 = v49;
    *(v34 + 2) = v51;
    *(v34 + 3) = v36;
    *(v34 + 4) = v35;
    v21(v37, v32, v8);
    v38 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v39 = (v47 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v33;
    v45((v40 + v38), v37, v8);
    v41 = (v40 + v39);
    *v41 = sub_2516ABC00;
    v41[1] = v34;
    v42 = v33;

    sub_2516C59C8(sub_2516ABC0C, v40);

    return (v44)(v32, v8);
  }

  return result;
}

unint64_t sub_2516AB3C4(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2516AB3D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2516AB418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2516AB4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2516AB560()
{
  result = qword_27F454028;
  if (!qword_27F454028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454028);
  }

  return result;
}

uint64_t sub_2516AB658()
{
  v0 = sub_251702E24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_2516AB6D8()
{
  sub_2516AB844(319, &qword_27F454050, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2516AB844(319, &qword_27F454058, type metadata accessor for SymptomOnset);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2516AB844(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517033E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2516AB8C0()
{
  sub_2516AB844(319, &qword_27F454058, type metadata accessor for SymptomOnset);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2516AB9D0()
{
  result = qword_27F454070;
  if (!qword_27F454070)
  {
    type metadata accessor for ENUIPublicHealthAgencyModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454070);
  }

  return result;
}

uint64_t sub_2516ABA30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25307F6B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2516F0760(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2516ABAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2516ABB38()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = v0 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v5);
  v11 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v6[1];
  v15 = *v6;

  sub_2516CAB38(v0 + v2, v15, v14, v8, v9, v10, v12, v13);
}

void sub_2516ABC0C()
{
  v1 = *(sub_251702E64() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_2516CCB80(v3, v0 + v2, v5, v6);
}

uint64_t sub_2516ABCA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516ABD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymptomOnset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516ABD74(uint64_t a1)
{
  v2 = type metadata accessor for SymptomOnset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_primaryButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_secondaryButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_flow] = a1;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_healthAgencyModel] = a2;
  v8 = qword_28151EB58;

  v9 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v10 = sub_251703134();

  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v10, 0, 0, 2, 0xE000000000000000);

  return v11;
}

Swift::Void __swiftcall PreAuthorizationWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516AC1E4();
}

void sub_2516AC1E4()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_primaryButton];
  v3 = sub_251703134();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_secondaryButton];
  v6 = sub_251703134();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapCancel forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_healthAgencyModel];
  v9 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v10 = (v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText);
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v14 = v9;

  v15 = sub_2516DD44C(v14, 20.0, 20.0, 20.0, 20.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2517068A0;
  v19 = [v15 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v18 + 40) = v26;
  v27 = [v15 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168B5B4();
  v35 = sub_2517031F4();

  [v17 activateConstraints_];
}

id PreAuthorizationWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id PreAuthorizationWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id PreAuthorizationWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516ACB7C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = objc_allocWithZone(type metadata accessor for PreAuthorizationConsentViewController());
  v5[qword_27F454590] = 2;
  *&v5[qword_27F454598] = a2;
  *&v5[qword_27F4545A0] = v4;
  v6 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region];

  v7 = v4;
  v8 = v6;
  sub_2516E0EFC(v13);
  v12 = sub_25168D488(v13, 0, 0, v6, 0, 0);
  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v12 animated:1];

    v11 = v10;
  }

  else
  {
    v11 = v12;
  }
}

void sub_2516ACD80()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = objc_opt_self();
  v3 = [v2 systemPinkColor];
  [v1 setBackgroundColor_];

  v4 = [v1 layer];
  [v4 setCornerRadius_];

  [v1 setContentMode_];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = [v6 localizedStringFromNumber:v7 numberStyle:1];

  if (!v8)
  {
    sub_251703164();
    v8 = sub_251703134();
  }

  [v5 setText_];

  v9 = [v2 systemWhiteColor];
  [v5 setTextColor_];

  v10 = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  [v5 setFont_];

  [v5 setNumberOfLines_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = v0;
  if (*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8])
  {
    v13 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    v14 = sub_251703134();
  }

  else
  {
    v14 = 0;
  }

  [v11 setText_];

  v15 = sub_2516C19DC(*MEMORY[0x277D769D0], *MEMORY[0x277D74420], 0, 0, 0, 0);
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  [v11 setNumberOfLines_];
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setUserInteractionEnabled_];
  v17 = sub_2516AD880();
  [v16 setAttributedText_];

  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 32) = v1;
  *(inited + 16) = xmmword_2517068A0;
  *(inited + 40) = v5;
  *(inited + 48) = v11;
  *(inited + 56) = v16;
  v19 = inited & 0xC000000000000001;
  v20 = v5;
  v21 = v11;
  v22 = v16;
  v79 = v20;
  v23 = v21;
  v77 = v22;
  v24 = v1;
  v25 = v24;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  for (i = v24; ; i = MEMORY[0x25307F910](0, inited))
  {
    v27 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v19)
    {
      v28 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v19)
    {
      v30 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_19;
      }

      v30 = *(inited + 48);
    }

    v31 = v30;
    [v30 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 addSubview_];

    if (v19)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v32 = *(inited + 56);
      goto LABEL_18;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v32 = MEMORY[0x25307F910](3, inited);
LABEL_18:
  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = v12;
  v78 = v12;
  [v12 addSubview_];

  swift_setDeallocating();
  v35 = *(inited + 16);
  swift_arrayDestroy();
  v76 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2517089B0;
  v37 = [v25 leadingAnchor];
  v38 = [v34 &selRef_setBackBarButtonItem_ + 1];
  v39 = [v37 constraintEqualToAnchor_];

  *(v36 + 32) = v39;
  v40 = [v25 centerYAnchor];
  v41 = [v23 centerYAnchor];
  v42 = [v40 &selRef:v41 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v36 + 40) = v42;
  v43 = [v25 widthAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v36 + 48) = v44;
  v45 = [v25 heightAnchor];
  v46 = [v25 widthAnchor];
  v47 = [v45 &selRef:v46 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v36 + 56) = v47;
  v48 = [v79 centerXAnchor];
  v49 = [v25 centerXAnchor];
  v50 = [v48 &selRef:v49 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v36 + 64) = v50;
  v51 = [v79 centerYAnchor];

  v52 = [v25 centerYAnchor];
  v53 = [v51 &selRef:v52 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v36 + 72) = v53;
  v54 = [v23 topAnchor];
  v55 = [v78 topAnchor];
  v56 = [v54 &selRef:v55 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v36 + 80) = v56;
  v57 = [v23 leadingAnchor];
  v58 = [v25 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:12.0];

  *(v36 + 88) = v59;
  v60 = [v23 trailingAnchor];
  v61 = [v78 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-12.0];

  *(v36 + 96) = v62;
  v63 = [v77 topAnchor];
  v64 = [v23 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:2.0];

  *(v36 + 104) = v65;
  v66 = [v77 leadingAnchor];
  v67 = [v23 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v36 + 112) = v68;
  v69 = [v77 trailingAnchor];
  v70 = [v23 trailingAnchor];

  v71 = [v69 constraintEqualToAnchor_];
  *(v36 + 120) = v71;
  v72 = [v77 bottomAnchor];

  v73 = [v78 bottomAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v36 + 128) = v74;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v75 = sub_2517031F4();

  [v76 activateConstraints_];
}

id sub_2516AD880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  v2 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_2517068B0;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = &selRef_labelColor;
  if (v4)
  {
    v7 = &selRef_secondaryLabelColor;
  }

  v8 = [v5 *v7];
  v9 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D769D0];
  v13 = v10;
  v14 = [v11 preferredFontForTextStyle_];
  *(inited + 104) = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 80) = v14;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v15 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details);
  v16 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details + 8);
  v17 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v18 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516AE954();
  v19 = sub_2517030F4();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_2516ADB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_textStack;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_icon] = a1;
  v14 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_details];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_highlightedText];
  *v15 = a4;
  *(v15 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2516ADC84();

  return v17;
}

void sub_2516ADC84()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView];
  [v1 setImage_];
  [v1 setContentMode_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setUserInteractionEnabled_];
  v3 = sub_2516AE300();
  [v2 setAttributedText_];

  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251707F60;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v39 = v2;
  v5 = v1;
  v6 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v5; ; i = MEMORY[0x25307F910](0, inited))
  {
    v8 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v9 = MEMORY[0x25307F910](1, inited);
LABEL_7:
  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];

  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v38 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251708350;
  v13 = [v6 leadingAnchor];
  v14 = [v0 &selRef_setBackBarButtonItem_ + 1];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v6 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:6.0];

  *(v12 + 40) = v18;
  v19 = [v6 widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v12 + 48) = v20;
  v21 = [v6 heightAnchor];
  v22 = [v6 widthAnchor];
  v23 = [v21 &selRef:v22 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v12 + 56) = v23;
  v24 = [v39 topAnchor];
  v25 = [v0 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];

  *(v12 + 64) = v26;
  v27 = [v39 leadingAnchor];
  v28 = [v6 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:12.0];

  *(v12 + 72) = v29;
  v30 = [v39 trailingAnchor];
  v31 = [v0 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-12.0];

  *(v12 + 80) = v32;
  v33 = [v39 bottomAnchor];

  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v12 + 88) = v35;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v36 = sub_2517031F4();

  [v38 activateConstraints_];

  v37 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTapText_];
  [v39 addGestureRecognizer_];
}

id sub_2516AE300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v2 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v3 = objc_opt_self();
  v35 = v2;
  v36 = v3;
  v4 = [v3 labelColor];
  v5 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277D740A8];
  v34 = v5;
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D769D0];
  v32 = v6;
  v33 = v8;
  v9 = [v7 preferredFontForTextStyle_];
  v10 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 104) = v10;
  *(inited + 80) = v9;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v11 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_details);
  v12 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_details + 8);
  v13 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v14 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516AE954();
  v15 = sub_2517030F4();

  v16 = [v13 initWithString:v14 attributes:v15];

  if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_highlightedText + 8))
  {
    v17 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_highlightedText);
    v18 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v19 = sub_251703134();
    v20 = [v18 initWithString_];

    v21 = sub_251703134();
    v22 = [v20 rangeOfString_];
    v24 = v23;

    if (v24 >= 1)
    {
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_2517068B0;
      *(v25 + 32) = v32;
      v26 = *MEMORY[0x277D74418];
      v27 = v32;
      *(v25 + 40) = sub_2516C19DC(v33, v26, 0, 0, 0, 0);
      *(v25 + 64) = v10;
      *(v25 + 72) = v35;
      v28 = v35;
      v29 = [v36 systemBlueColor];
      *(v25 + 104) = v34;
      *(v25 + 80) = v29;
      sub_251698DC4(v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      v30 = sub_2517030F4();

      [v16 addAttributes:v30 range:{v22, v24}];
    }
  }

  return v16;
}

unint64_t sub_2516AE954()
{
  result = qword_28151E910;
  if (!qword_28151E910)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E910);
  }

  return result;
}

Swift::Void __swiftcall OnboardingInfoViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516AE9EC();
}

void sub_2516AE9EC()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 _setAutoScrollEdgeTransitionDistance_];

  v3 = [v0 navigationItem];
  [v3 _setManualScrollEdgeAppearanceEnabled_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView];
  [v8 setAlwaysBounceVertical_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v9;
  v195 = v6;
  v196 = v1;
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v193 = v8;
  v194 = v11;
  [v8 addSubview_];
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_28151EB58 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_251702C94();
    v13 = sub_251703134();

    [v12 setText_];

    v14 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
    [v12 setFont_];

    [v12 setAdjustsFontForContentSizeCategory_];
    [v12 setNumberOfLines_];
    [v12 setTextAlignment_];
    v15 = sub_251702C94();
    v17 = v16;
    v18 = sub_251702C94();
    v20 = v19;
    v21 = type metadata accessor for NumberedTextView();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 1;
    v23 = &v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v23 = v15;
    v23[1] = v17;
    v24 = &v22[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v24 = v18;
    v24[1] = v20;
    v199.receiver = v22;
    v199.super_class = v21;
    v191 = objc_msgSendSuper2(&v199, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v25 = sub_251702C94();
    v27 = v26;
    v28 = sub_251702C94();
    v30 = v29;
    v31 = objc_allocWithZone(v21);
    *&v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 2;
    v32 = &v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v32 = v25;
    v32[1] = v27;
    v33 = &v31[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v33 = v28;
    v33[1] = v30;
    v198.receiver = v31;
    v198.super_class = v21;
    v189 = objc_msgSendSuper2(&v198, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v34 = sub_251702C94();
    v36 = v35;
    v37 = sub_251702C94();
    v39 = v38;
    v40 = objc_allocWithZone(v21);
    *&v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_number] = 3;
    v41 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title];
    *v41 = v34;
    v41[1] = v36;
    v42 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details];
    *v42 = v37;
    v42[1] = v39;
    v197.receiver = v40;
    v197.super_class = v21;
    v43 = objc_msgSendSuper2(&v197, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
    sub_2516ACD80();
    v44 = sub_251703134();
    v45 = [objc_opt_self() systemImageNamed_];

    v46 = sub_251702C94();
    v48 = v47;
    v49 = sub_251702C94();
    v51 = v50;
    v52 = objc_allocWithZone(type metadata accessor for IconTextView());
    v53 = sub_2516ADB4C(v45, v46, v48, v49, v51);
    *&v53[OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_delegate + 8] = &off_2863943E8;
    swift_unknownObjectWeakAssign();
    v54 = v191;
    v55 = [v195 systemPinkColor];
    [v54 setTintColor_];

    v56 = v189;
    v57 = [v195 systemPinkColor];
    [v56 setTintColor_];

    v58 = v43;
    v59 = [v195 systemPinkColor];
    [v58 setTintColor_];

    v60 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v61 = [v195 separatorColor];
    [v60 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708A20;
    *(inited + 32) = v12;
    *(inited + 40) = v54;
    *(inited + 48) = v56;
    *(inited + 56) = v58;
    *(inited + 64) = v60;
    *(inited + 72) = v53;
    v63 = inited & 0xC000000000000001;
    v64 = v12;
    v65 = v53;
    v192 = v54;
    v12 = v56;
    v188 = v58;
    v195 = v64;
    v66 = v65;
    v67 = v60;
    if ((inited & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x25307F910](0, inited);
      v68 = v196;
      v69 = v194;
      v70 = &selRef_setDidEnterDigit_;
    }

    else
    {
      v68 = v196;
      v69 = v194;
      v70 = &selRef_setDidEnterDigit_;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v71 = v195;
    }

    [v71 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v72 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_29;
      }

      v72 = *(inited + 40);
    }

    v73 = v72;
    [v72 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v74 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_29;
      }

      v74 = *(inited + 48);
    }

    v75 = v74;
    [v74 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v76 = MEMORY[0x25307F910](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_29;
      }

      v76 = *(inited + 56);
    }

    v77 = v76;
    [v76 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      v78 = MEMORY[0x25307F910](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_29;
      }

      v78 = *(inited + 64);
    }

    v79 = v78;
    [v78 v70[187]];
    [v69 addSubview_];

    if (v63)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v80 = *(inited + 72);
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v80 = MEMORY[0x25307F910](5, inited);
LABEL_22:
  v81 = v80;
  [v80 v70[187]];
  [v69 addSubview_];

  swift_setDeallocating();
  v82 = *(inited + 16);
  swift_arrayDestroy();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_251708A30;
  v84 = [v193 widthAnchor];
  v85 = [v68 view];
  if (!v85)
  {
    goto LABEL_39;
  }

  v86 = v85;
  v87 = [v85 widthAnchor];

  v88 = [v84 constraintEqualToAnchor_];
  *(v83 + 32) = v88;
  v89 = [v193 centerXAnchor];
  v90 = [v68 view];
  if (!v90)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v91 = v90;
  v92 = [v90 centerXAnchor];

  v93 = [v89 constraintEqualToAnchor_];
  *(v83 + 40) = v93;
  v94 = [v193 topAnchor];
  v95 = [v68 view];
  if (!v95)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v96 = v95;
  v97 = [v95 safeAreaLayoutGuide];

  v98 = [v97 topAnchor];
  v99 = [v94 constraintEqualToAnchor_];

  *(v83 + 48) = v99;
  v100 = [v193 bottomAnchor];
  v101 = [v196 view];
  if (!v101)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v102 = v101;
  v103 = [v101 bottomAnchor];

  v104 = [v100 constraintEqualToAnchor_];
  *(v83 + 56) = v104;
  v105 = [v194 widthAnchor];
  v106 = [v196 view];
  if (!v106)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v107 = v106;
  v108 = [v106 safeAreaLayoutGuide];

  v109 = [v108 widthAnchor];
  v110 = [v105 constraintEqualToAnchor_];

  *(v83 + 64) = v110;
  v111 = [v194 centerXAnchor];
  v112 = [v196 view];
  if (v112)
  {
    v113 = v112;
    v190 = objc_opt_self();
    v114 = [v113 safeAreaLayoutGuide];

    v115 = [v114 centerXAnchor];
    v116 = [v111 constraintEqualToAnchor_];

    *(v83 + 72) = v116;
    v117 = [v194 topAnchor];
    v118 = [v193 &selRef_navigationController];
    v119 = [v117 constraintEqualToAnchor_];

    *(v83 + 80) = v119;
    v120 = [v194 bottomAnchor];
    v121 = [v193 &selRef_didTapLearnMoreButton + 5];
    v122 = [v120 constraintEqualToAnchor_];

    *(v83 + 88) = v122;
    v123 = [v195 leadingAnchor];
    v124 = [v194 leadingAnchor];
    v125 = [v123 constraintEqualToAnchor:v124 constant:20.0];

    *(v83 + 96) = v125;
    v126 = [v195 trailingAnchor];
    v127 = [v194 trailingAnchor];
    v128 = [v126 constraintEqualToAnchor:v127 constant:-20.0];

    *(v83 + 104) = v128;
    v129 = [v195 topAnchor];
    v130 = [v194 topAnchor];
    v131 = [v129 &selRef:v130 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 112) = v131;
    v132 = [v192 leadingAnchor];
    v133 = [v194 leadingAnchor];
    v134 = [v132 &selRef:v133 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 120) = v134;
    v135 = [v192 trailingAnchor];
    v136 = [v194 trailingAnchor];
    v137 = [v135 &selRef:v136 getEntitiesWithCompletion:-10.0 + 6];

    *(v83 + 128) = v137;
    v138 = [v192 &selRef_navigationController];
    v139 = [v195 bottomAnchor];

    v140 = [v138 &selRef:v139 getEntitiesWithCompletion:24.0 + 6];
    *(v83 + 136) = v140;
    v141 = [v12 leadingAnchor];
    v142 = [v194 leadingAnchor];
    v143 = [v141 &selRef:v142 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 144) = v143;
    v144 = [v12 trailingAnchor];
    v145 = [v194 trailingAnchor];
    v146 = [v144 &selRef:v145 getEntitiesWithCompletion:-10.0 + 6];

    *(v83 + 152) = v146;
    v147 = [v12 topAnchor];
    v148 = [v192 bottomAnchor];

    v149 = [v147 &selRef:v148 getEntitiesWithCompletion:20.0 + 6];
    *(v83 + 160) = v149;
    v150 = [v188 leadingAnchor];
    v151 = [v194 leadingAnchor];
    v152 = [v150 &selRef:v151 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 168) = v152;
    v153 = [v188 trailingAnchor];
    v154 = [v194 trailingAnchor];
    v155 = [v153 &selRef:v154 getEntitiesWithCompletion:-10.0 + 6];

    *(v83 + 176) = v155;
    v156 = [v188 topAnchor];
    v157 = [v12 &selRef_didTapLearnMoreButton + 5];

    v158 = [v156 &selRef:v157 getEntitiesWithCompletion:20.0 + 6];
    *(v83 + 184) = v158;
    v159 = [v67 leadingAnchor];
    v160 = [v194 leadingAnchor];
    v161 = [v159 &selRef:v160 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 192) = v161;
    v162 = [v67 trailingAnchor];
    v163 = [v194 trailingAnchor];
    v164 = [v162 &selRef:v163 getEntitiesWithCompletion:-10.0 + 6];

    *(v83 + 200) = v164;
    v165 = [v67 heightAnchor];
    v166 = [objc_opt_self() mainScreen];
    [v166 scale];
    v168 = v167;

    v169 = [v165 constraintEqualToConstant_];
    *(v83 + 208) = v169;
    v170 = [v67 topAnchor];
    v171 = [v188 bottomAnchor];

    v172 = [v170 &selRef:v171 getEntitiesWithCompletion:20.0 + 6];
    *(v83 + 216) = v172;
    v173 = [v66 leadingAnchor];
    v174 = [v194 leadingAnchor];
    v175 = [v173 &selRef:v174 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 224) = v175;
    v176 = [v66 trailingAnchor];
    v177 = [v194 trailingAnchor];
    v178 = [v176 &selRef:v177 getEntitiesWithCompletion:-10.0 + 6];

    *(v83 + 232) = v178;
    v179 = [v66 topAnchor];
    v180 = [v67 bottomAnchor];
    v181 = [v179 &selRef:v180 getEntitiesWithCompletion:20.0 + 6];

    *(v83 + 240) = v181;
    v182 = [v66 bottomAnchor];

    v183 = [v194 bottomAnchor];
    v184 = [v182 &selRef:v183 getEntitiesWithCompletion:-20.0 + 6];

    *(v83 + 248) = v184;
    sub_25168B5B4();
    v185 = sub_2517031F4();

    [v190 activateConstraints_];

    v186 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v196 action:sel_didTapDone];
    v187 = [v196 navigationItem];
    [v187 setRightBarButtonItem_];

    return;
  }

LABEL_44:
  __break(1u);
}

Swift::Void __swiftcall OnboardingInfoViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView] setContentOffset:0 animated:{0.0, 0.0}];
}

id OnboardingInfoViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingInfoViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  if (a2)
  {
    v8 = sub_251703134();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id OnboardingInfoViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OnboardingInfoViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id OnboardingInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516B0724()
{
  v1 = sub_251703134();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = [v2 splashController];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setModalPresentationStyle_];

  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_didTapDone];
  v6 = [v2 splashController];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 navigationItem];

  [v8 setRightBarButtonItem_];
  v9 = [v2 splashController];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v0 presentViewController:v11 animated:1 completion:0];
}

id OnboardingWelcomeViewController.init(flow:fromAvailabilityAlert:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert;
  v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert] = 0;
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview;
  type metadata accessor for NotificationPreviewView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton;
  *&v2[v8] = [objc_opt_self() boldButton];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton;
  *&v2[v9] = [objc_opt_self() linkButton];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton;
  type metadata accessor for MultilineButton();
  *&v2[v12] = [swift_getObjCClassFromMetadata() buttonWithType_];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver] = 0;
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow] = a1;
  v2[v6] = a2 & 1;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2516B0B64()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_55;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView];
  [v5 setAlwaysBounceVertical_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setDelegate_];
  v230 = v5;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v5;
  v7 = sub_251702D54();

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver] = v7;

  v9 = [v1 view];
  if (!v9)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v223 = v6;
  v228 = v11;
  [v6 addSubview_];
  v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = v13;
  v226 = v12;
  [v13 addSubview_];

  v222 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel];
  sub_2516B33E8();
  v16 = sub_251703134();

  [v15 setText_];

  v17 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v15 setFont_];

  v18 = &off_2796C3000;
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setNumberOfLines_];
  v221 = v15;
  [v15 setTextAlignment_];
  v19 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel];
  v20 = v1;
  if (qword_28151EB58 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    sub_251702C94();
    v21 = sub_251703134();

    [v19 setText_];

    v224 = *MEMORY[0x277D76918];
    v22 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
    [v19 setFont_];

    [v19 v18[322]];
    [v19 setNumberOfLines_];
    [v19 setTextAlignment_];
    v23 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton);
    sub_251702C94();
    v24 = sub_251703134();

    [v23 setTitle:v24 forState:{0, 0xE000000000000000}];

    v229 = v20;
    [v23 addTarget:v20 action:sel_didTapHowExposureNotificationsWork forControlEvents:64];
    v25 = [v23 titleLabel];
    [v25 setTextAlignment_];

    v26 = [v23 titleLabel];
    [v26 setNumberOfLines_];

    v27 = [v23 titleLabel];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() preferredFontForTextStyle_];
      [v28 setFont_];
    }

    v30 = [v23 titleLabel];
    [v30 setAdjustsFontForContentSizeCategory_];

    v31 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel);
    v32 = sub_2516B34F4();
    [v31 setAttributedText_];

    [v31 setAdjustsFontForContentSizeCategory_];
    [v31 setNumberOfLines_];
    [v31 &selRef_unmarkText];
    [v31 setUserInteractionEnabled_];
    v216 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v20 action:sel_didTapFooterLabel];
    [v31 addGestureRecognizer_];
    v33 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton);
    sub_251702C94();
    v34 = sub_251703134();

    [v33 setTitle:v34 forState:{0, 0xE000000000000000}];

    v218 = v33;
    [v33 addTarget:v20 action:sel_didTapPrimaryButton forControlEvents:64];
    *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert);
    v35 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton);
    sub_251702C94();
    v36 = sub_251703134();

    v18 = v35;
    [v35 setTitle:v36 forState:{0, 0xE000000000000000}];

    [v35 addTarget:v20 action:sel_didTapSecondaryButton forControlEvents:64];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708A20;
    v38 = *(v20 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview);
    *(inited + 32) = v38;
    *(inited + 40) = v221;
    *(inited + 48) = v19;
    *(inited + 56) = v23;
    *(inited + 64) = v31;
    *(inited + 72) = v222;
    v20 = inited & 0xC000000000000001;
    v227 = v38;
    v217 = v221;
    v220 = v19;
    v39 = v23;
    v40 = v31;
    v222 = v222;
    if ((inited & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x25307F910](0, inited);
      v19 = v228;
    }

    else
    {
      v19 = v228;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v41 = v227;
    }

    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v42 = MEMORY[0x25307F910](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_43;
      }

      v42 = *(inited + 40);
    }

    v43 = v42;
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v44 = MEMORY[0x25307F910](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_43;
      }

      v44 = *(inited + 48);
    }

    v45 = v44;
    [v44 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v46 = MEMORY[0x25307F910](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_43;
      }

      v46 = *(inited + 56);
    }

    v47 = v46;
    [v46 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    if (v20)
    {
      v48 = MEMORY[0x25307F910](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_43;
      }

      v48 = *(inited + 64);
    }

    v49 = v48;
    [v48 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    v215 = v40;
    if (v20)
    {
      v50 = MEMORY[0x25307F910](5, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v50 = *(inited + 72);
    }

    v51 = v50;
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];

    swift_setDeallocating();
    v52 = *(inited + 16);
    swift_arrayDestroy();
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_251707F60;
    *(v53 + 32) = v218;
    *(v53 + 40) = v35;
    v20 = v53 & 0xC000000000000001;
    v221 = v218;
    v219 = v35;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x25307F910](0, v53);
      v54 = v229;
    }

    else
    {
      v54 = v229;
      if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v55 = v221;
    }

    [v55 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = &off_2796C3000;
    v56 = [v226 contentView];
    [v56 addSubview_];

    if (v20)
    {
      break;
    }

    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v57 = *(v53 + 40);
      goto LABEL_31;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v57 = MEMORY[0x25307F910](1, v53);
LABEL_31:
  v58 = v57;
  [v57 setTranslatesAutoresizingMaskIntoConstraints_];
  v59 = [v226 contentView];
  [v59 addSubview_];

  swift_setDeallocating();
  v60 = *(v53 + 16);
  swift_arrayDestroy();
  v61 = [v19 heightAnchor];
  v62 = [v54 view];
  if (!v62)
  {
    goto LABEL_57;
  }

  v63 = v62;
  v64 = [v62 safeAreaLayoutGuide];

  v65 = [v64 heightAnchor];
  v66 = [v61 constraintGreaterThanOrEqualToAnchor_];

  LODWORD(v67) = 1148846080;
  [v66 setPriority_];
  v68 = [v19 heightAnchor];
  [v223 frame];
  v69 = [v68 constraintLessThanOrEqualToConstant_];

  LODWORD(v70) = 1132068864;
  [v69 setPriority_];
  v71 = [v227 heightAnchor];
  v72 = [v223 heightAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 multiplier:0.25];

  type metadata accessor for UILayoutPriority(0);
  [v69 priority];
  sub_2516B49F0(&qword_28151E948, type metadata accessor for UILayoutPriority);
  sub_251702F94();
  LODWORD(v74) = v230;
  [v73 setPriority_];
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_251708AB0;
  v76 = [v223 widthAnchor];
  v77 = [v54 view];
  if (!v77)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v78 = v77;
  v79 = [v77 widthAnchor];

  v80 = [v76 constraintEqualToAnchor_];
  *(v75 + 32) = v80;
  v81 = [v223 centerXAnchor];
  v82 = [v229 view];
  if (!v82)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v83 = v82;
  v84 = [v82 centerXAnchor];

  v85 = [v81 constraintEqualToAnchor_];
  *(v75 + 40) = v85;
  v86 = [v223 topAnchor];
  v87 = [v229 view];
  if (!v87)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v88 = v87;
  v89 = [v87 safeAreaLayoutGuide];

  v90 = [v89 topAnchor];
  v91 = [v86 constraintEqualToAnchor_];

  *(v75 + 48) = v91;
  v92 = [v223 bottomAnchor];
  v93 = [v229 view];
  if (!v93)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v94 = v93;
  v95 = [v93 bottomAnchor];

  v96 = [v92 constraintEqualToAnchor_];
  *(v75 + 56) = v96;
  v97 = [v228 &selRef_init + 6];
  v98 = [v229 view];
  if (!v98)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v99 = v98;
  v100 = [v98 safeAreaLayoutGuide];

  v101 = [v100 widthAnchor];
  v102 = [v97 constraintEqualToAnchor_];

  *(v75 + 64) = v102;
  v103 = [v228 centerXAnchor];
  v104 = [v229 view];
  if (!v104)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v105 = v104;
  v106 = [v104 safeAreaLayoutGuide];

  v107 = [v106 centerXAnchor];
  v108 = [v103 constraintEqualToAnchor_];

  *(v75 + 72) = v108;
  v109 = [v228 topAnchor];
  v110 = [v223 &selRef_navigationController];
  v111 = [v109 constraintEqualToAnchor_];

  *(v75 + 80) = v111;
  v112 = [v228 bottomAnchor];
  v113 = [v223 bottomAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v75 + 88) = v114;
  *(v75 + 96) = v66;
  *(v75 + 104) = v69;
  v214 = v66;
  v213 = v69;
  v115 = [v227 widthAnchor];
  v116 = [v223 widthAnchor];
  v117 = [v115 constraintEqualToAnchor_];

  *(v75 + 112) = v117;
  v118 = [v227 centerXAnchor];
  v119 = [v223 centerXAnchor];
  v120 = [v118 constraintEqualToAnchor_];

  *(v75 + 120) = v120;
  *(v75 + 128) = v73;
  v225 = v73;
  v121 = [v227 topAnchor];
  v122 = [v228 topAnchor];
  v123 = [v121 constraintEqualToAnchor_];

  *(v75 + 136) = v123;
  v124 = [v217 leadingAnchor];
  v125 = [v228 &selRef_setBackBarButtonItem_ + 1];
  v126 = [v124 constraintEqualToAnchor:v125 constant:16.0];

  *(v75 + 144) = v126;
  v127 = [v217 trailingAnchor];
  v128 = [v228 &selRef_body + 4];
  v129 = [v127 constraintEqualToAnchor:v128 constant:-16.0];

  *(v75 + 152) = v129;
  v130 = [v217 &selRef_navigationController];
  v131 = [v227 bottomAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:17.0];

  *(v75 + 160) = v132;
  v133 = [v220 &selRef_setBackBarButtonItem_ + 1];
  v134 = [v228 &selRef_setBackBarButtonItem_ + 1];
  v135 = [v133 &selRef:v134 getEntitiesWithCompletion:16.0 + 6];

  *(v75 + 168) = v135;
  v136 = [v220 trailingAnchor];
  v137 = [v228 trailingAnchor];
  v138 = [v136 &selRef:v137 getEntitiesWithCompletion:-16.0 + 6];

  *(v75 + 176) = v138;
  v139 = [v220 topAnchor];
  v140 = [v217 bottomAnchor];
  v141 = [v139 &selRef:v140 getEntitiesWithCompletion:12.0 + 6];

  *(v75 + 184) = v141;
  v142 = [v39 leadingAnchor];
  v143 = [v228 leadingAnchor];
  v144 = [v142 &selRef:v143 getEntitiesWithCompletion:16.0 + 6];

  *(v75 + 192) = v144;
  v145 = [v39 trailingAnchor];
  v146 = [v228 trailingAnchor];
  v147 = [v145 &selRef:v146 getEntitiesWithCompletion:-16.0 + 6];

  *(v75 + 200) = v147;
  v148 = [v39 topAnchor];
  v149 = [v220 bottomAnchor];
  v150 = [v148 &selRef:v149 getEntitiesWithCompletion:7.0 + 6];

  *(v75 + 208) = v150;
  v151 = [v215 leadingAnchor];
  v152 = [v228 leadingAnchor];
  v153 = [v151 &selRef:v152 getEntitiesWithCompletion:32.0 + 6];

  *(v75 + 216) = v153;
  v154 = [v215 trailingAnchor];
  v155 = [v228 trailingAnchor];
  v156 = [v154 &selRef:v155 getEntitiesWithCompletion:-32.0 + 6];

  *(v75 + 224) = v156;
  v157 = [v215 topAnchor];
  v158 = [v39 &selRef_didTapLearnMoreButton + 5];
  v159 = [v157 constraintGreaterThanOrEqualToAnchor:v158 constant:16.0];

  *(v75 + 232) = v159;
  v160 = [v215 &selRef_didTapLearnMoreButton + 5];
  v161 = [v222 topAnchor];
  v162 = [v160 &selRef:v161 getEntitiesWithCompletion:0.0 + 6];

  *(v75 + 240) = v162;
  v163 = [v222 heightAnchor];
  v164 = [v226 heightAnchor];
  v165 = [v163 constraintEqualToAnchor_];

  *(v75 + 248) = v165;
  v166 = [v222 &selRef_didTapLearnMoreButton + 5];
  v167 = [v228 &selRef_didTapLearnMoreButton + 5];
  v168 = [v166 constraintEqualToAnchor_];

  *(v75 + 256) = v168;
  v169 = [v226 leadingAnchor];
  v170 = [v229 view];
  if (!v170)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v171 = v170;
  v172 = [v170 leadingAnchor];

  v173 = [v169 constraintEqualToAnchor_];
  *(v75 + 264) = v173;
  v174 = [v226 trailingAnchor];
  v175 = [v229 &selRef_systemImageNamed_];
  if (!v175)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v176 = v175;
  v177 = [v175 trailingAnchor];

  v178 = [v174 constraintEqualToAnchor_];
  *(v75 + 272) = v178;
  v179 = [v226 &selRef_didTapLearnMoreButton + 5];
  v180 = [v229 &selRef_systemImageNamed_];
  if (!v180)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v181 = v180;
  v182 = [v180 &selRef_didTapLearnMoreButton + 5];

  v183 = [v179 constraintEqualToAnchor_];
  *(v75 + 280) = v183;
  v184 = [v221 leadingAnchor];
  v185 = [v226 leadingAnchor];
  v186 = [v184 constraintEqualToAnchor:v185 constant:16.0];

  *(v75 + 288) = v186;
  v187 = [v221 trailingAnchor];
  v188 = [v226 trailingAnchor];
  v189 = [v187 constraintEqualToAnchor:v188 constant:-16.0];

  *(v75 + 296) = v189;
  v190 = [v221 topAnchor];
  v191 = [v226 topAnchor];
  v192 = [v190 constraintGreaterThanOrEqualToAnchor:v191 constant:24.0];

  *(v75 + 304) = v192;
  v193 = [v221 bottomAnchor];
  v194 = [v219 topAnchor];
  v195 = [v193 constraintEqualToAnchor:v194 constant:-16.0];

  *(v75 + 312) = v195;
  v196 = [v219 leadingAnchor];
  v197 = [v221 leadingAnchor];
  v198 = [v196 constraintEqualToAnchor_];

  *(v75 + 320) = v198;
  v199 = [v219 trailingAnchor];
  v200 = [v221 trailingAnchor];
  v201 = [v199 constraintEqualToAnchor_];

  *(v75 + 328) = v201;
  v202 = [v219 heightAnchor];
  v203 = [v221 heightAnchor];
  v204 = [v202 constraintEqualToAnchor_];

  *(v75 + 336) = v204;
  v205 = [v219 bottomAnchor];
  v206 = [v229 view];
  if (v206)
  {
    v207 = v206;

    v208 = objc_opt_self();
    v209 = [v207 safeAreaLayoutGuide];

    v210 = [v209 bottomAnchor];
    v211 = [v205 constraintEqualToAnchor:v210 constant:-5.0];

    *(v75 + 344) = v211;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v212 = sub_2517031F4();

    [v208 activateConstraints_];

    return;
  }

LABEL_67:
  __break(1u);
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    [v3 setNavigationBarHidden:1 animated:v4];
  }

  v6 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview];
  sub_2516FB810();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.updateForScrollOffsetChange()()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView);
  [v1 contentSize];
  v3 = v2;
  [v1 contentInset];
  v5 = v3 + v4;
  [v1 bounds];
  v6 = v5 - CGRectGetHeight(v13);
  [v1 contentOffset];
  v7 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray);
  if (v6 <= v8)
  {
    v10 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray);

    [v10 setEffect_];
  }

  else
  {
    v9 = [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray) effect];
    if (!v9)
    {
      v11 = [objc_opt_self() effectWithStyle_];
      [v7 setEffect_];
      v9 = v11;
    }
  }
}

uint64_t sub_2516B2D98(SEL *a1, uint64_t (*a2)(id))
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, *a1);
  return a2(v5);
}

void sub_2516B2E0C(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

Swift::Void __swiftcall OnboardingWelcomeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview];
  sub_2516FBCEC();
}

Swift::Void __swiftcall OnboardingWelcomeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel];
    v13 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
    [v12 setFont_];

    v14 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel];
    v15 = *MEMORY[0x277D76918];
    v16 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
    [v14 setFont_];

    v17 = [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton] titleLabel];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() preferredFontForTextStyle_];
      [v18 setFont_];
    }

    v20 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel];
    v21 = sub_2516B34F4();
    [v20 setAttributedText_];

    return;
  }

  v5 = [(objc_class *)isa preferredContentSizeCategory];
  v6 = sub_251703164();
  v8 = v7;
  if (v6 == sub_251703164() && v8 == v9)
  {

    return;
  }

  v11 = sub_251703624();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

Swift::Void __swiftcall OnboardingWelcomeViewController.updateContentWithCurrentTraits()()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel);
  v2 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v1 setFont_];

  v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel);
  v4 = *MEMORY[0x277D76918];
  v5 = sub_2516C19DC(*MEMORY[0x277D76918], *MEMORY[0x277D74418], 0, 0, 0, 0);
  [v3 setFont_];

  v6 = [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton) titleLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    [v7 setFont_];
  }

  v9 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel);
  v10 = sub_2516B34F4();
  [v9 setAttributedText_];
}

void sub_2516B3394()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OnboardingWelcomeViewController.updateForScrollOffsetChange()();
  }
}

uint64_t sub_2516B33E8()
{
  if (*(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow) + 96) == 1)
  {
    if (qword_28151EB58 == -1)
    {
      return sub_251702C94();
    }

    goto LABEL_6;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_251702C94();
}

id sub_2516B34F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454188, &qword_251708B28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v43 - v3;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v5 = sub_251702C94();
  v49 = v5;
  v7 = v6;
  v8 = *(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow) + 96) == 0;
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v9 = swift_allocObject();
  v48 = xmmword_251708520;
  *(v9 + 16) = xmmword_251708520;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_25169F41C();
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;

  v10 = sub_251703184();
  v12 = v11;

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v15 = *MEMORY[0x277D76938];
  v16 = *MEMORY[0x277D74418];
  v17 = v14;
  v18 = sub_2516C19DC(v15, v16, 0, 0, 0, 0);
  v19 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 40) = v18;
  v20 = *MEMORY[0x277D740C0];
  *(inited + 64) = v19;
  *(inited + 72) = v20;
  v21 = objc_opt_self();
  v45 = v20;
  v46 = v21;
  v22 = [v21 secondaryLabelColor];
  v44 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 104) = v44;
  *(inited + 80) = v22;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_251703134();
  type metadata accessor for Key(0);
  v26 = v25;
  sub_2516B49F0(&qword_28151E910, type metadata accessor for Key);
  v43[1] = v26;
  v27 = sub_2517030F4();

  v28 = [v23 initWithString:v24 attributes:v27];

  v52 = v10;
  v53 = v12;
  v50 = v49;
  v51 = v7;
  v29 = sub_251702EA4();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  sub_2516B4924();
  v30 = sub_251703404();
  v32 = v31;
  LOBYTE(v26) = v33;
  sub_25168B718(v4, &qword_27F454188, &qword_251708B28);

  if (v26)
  {
  }

  else
  {
    v52 = v30;
    v53 = v32;
    v50 = v10;
    v51 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4541A0, qword_251708B40);
    sub_2516B4978();
    v34 = sub_2517033D4();
    v36 = v35;
    v37 = swift_initStackObject();
    *(v37 + 16) = v48;
    v38 = v45;
    *(v37 + 32) = v45;
    v39 = v38;
    v40 = [v46 systemBlueColor];
    *(v37 + 64) = v44;
    *(v37 + 40) = v40;
    sub_251698DC4(v37);
    swift_setDeallocating();
    sub_25168B718(v37 + 32, &qword_27F453F18, &qword_2517083C0);
    v41 = sub_2517030F4();

    [v28 addAttributes:v41 range:{v34, v36}];
  }

  return v28;
}

id OnboardingWelcomeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516B3EF4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = type metadata accessor for OnboardingLegalConsentViewController();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
    v8 = objc_opt_self();
    v9 = v4;

    *&v6[v7] = [v8 boldButton];
    v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
    *&v6[v10] = [objc_opt_self() linkButton];
    v11 = &v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
    *v11 = a2;
    v11[1] = &protocol witness table for StandardOnboardingFlow;
    v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
    *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = v9;
    v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = 1;
    v6[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = 1;
    v13 = qword_28151EB58;
    v14 = v9;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_251708520;
    v16 = (*&v6[v12] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_25169F41C();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;

    sub_251703184();

    v19 = sub_251703134();

    v28.receiver = v6;
    v28.super_class = v5;
    v20 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v19, 0, 0, 2, 0xE000000000000000);

    v21 = v20;
    [v21 set:1 shouldInlineButtontray:?];
    v22 = [v21 headerView];
    LODWORD(v23) = 1036831949;
    [v22 setTitleHyphenationFactor_];
  }

  else
  {
    v24 = objc_allocWithZone(type metadata accessor for OnboardingRegionSelectionViewController());

    v21 = sub_2516A9CE0(v25, 0, v24);
  }

  v26 = [a1 navigationController];
  if (v26)
  {
    v27 = v26;
    [v26 pushViewController:v21 animated:1];

    v21 = v27;
  }
}

void sub_2516B4250(void *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    sub_251702C94();
    v3 = sub_251703134();

    v4 = sub_251703134();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:{0, 0xE000000000000000}];

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;

    v19 = a1;
    v7 = sub_251703134();

    v24 = sub_2516B4758;
    v25 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_4;
    v8 = _Block_copy(&aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
    _Block_release(v8);

    [v5 addAction_];
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v12 = v5;
    v13 = sub_251703134();

    v24 = sub_25169D7AC;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25169F470;
    v23 = &block_descriptor_10;
    v14 = _Block_copy(&aBlock);

    v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    [v12 addAction_];
    [v19 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v24 = sub_2516B4724;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_251693A80;
    v23 = &block_descriptor_3;
    v17 = _Block_copy(&aBlock);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2516B4760()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_isFromAvailabilityAlert) = 0;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_notificationPreview;
  type metadata accessor for NotificationPreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_primaryButton;
  *(v0 + v2) = [objc_opt_self() boldButton];
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_secondaryButton;
  *(v0 + v3) = [objc_opt_self() linkButton];
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_subtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_howItWorksButton;
  type metadata accessor for MultilineButton();
  *(v0 + v6) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_footerLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_scrollViewContentSizeObserver) = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_buttonTray;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  sub_251703584();
  __break(1u);
}

unint64_t sub_2516B4924()
{
  result = qword_28151E978;
  if (!qword_28151E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E978);
  }

  return result;
}

unint64_t sub_2516B4978()
{
  result = qword_28151E968;
  if (!qword_28151E968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4541A0, qword_251708B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E968);
  }

  return result;
}

uint64_t sub_2516B49F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id TurndownViewController.init(turndownEntity:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_primaryButton;
  *&v1[v4] = [objc_opt_self() boldButton];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_turndownEntity] = a1;
  v5 = qword_27F453868;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v7 = [v6 localizedAgencyName];
  if (v7)
  {
    v8 = v6;
    v9 = ObjectType;
    v10 = v7;
    v11 = sub_251703164();
    v19 = v12;
    v13 = v11;

    ObjectType = v9;
    v6 = v8;
    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_251708520;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_25169F41C();
    *(v14 + 32) = v13;
    *(v14 + 40) = v19;
    sub_251703184();
  }

  else
  {
    sub_251702C94();
  }

  v15 = sub_251703134();

  v16 = sub_251703134();

  v20.receiver = v1;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, 0, 2, 0xE000000000000000);

  return v17;
}

Swift::Void __swiftcall TurndownViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516B4D7C();
}

void sub_2516B4D7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v74 - v4;
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v6 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_primaryButton];
  v7 = sub_251703134();
  [v6 setTitle:v7 forState:0];

  [v6 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
  v8 = [v1 buttonTray];
  [v8 addButton_];

  v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI22TurndownViewController_turndownEntity];
  v10 = [v9 localizedAgencyTurndownMessage];
  if (v10)
  {
    v11 = v10;
    v12 = sub_251703164();
    v76 = v13;
    v77 = v12;

    v14 = [v9 agencyHeaderStyle];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 integerValue];

      v17 = sub_25169478C(v16);
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      v75 = v19;
    }

    else
    {
      v75 = 0;
    }

    v20 = [v9 localizedAgencyName];
    if (v20)
    {
      v21 = v20;
      v74 = sub_251703164();
      v23 = v22;
    }

    else
    {
      v74 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = [v9 localizedRegionName];
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v29 = [v9 region];
      if (!v29 || (v30 = v29, v25 = [v29 subdivisionCode], v30, !v25))
      {
        v26 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_22;
      }
    }

    v26 = sub_251703164();
    v28 = v27;

LABEL_22:
    v31 = [v9 agencyColor];
    if (!v31)
    {
      goto LABEL_25;
    }

    v32 = [v9 agencyColor];
    if (!v32)
    {
      __break(1u);
      goto LABEL_36;
    }

    v33 = v32;
    sub_25168CD90(0, &qword_28151E880, 0x277D75348);
    sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
    v34 = sub_251703214();

    sub_251701920(v34);
    if (!v35)
    {
LABEL_25:
      v35 = [objc_opt_self() systemPinkColor];
    }

    v36 = v35;
    v37 = [v9 agencyHeaderTextColor];
    if (!v37)
    {

      v42 = [objc_opt_self() labelColor];
      goto LABEL_31;
    }

    v38 = [v9 agencyHeaderTextColor];
    if (v38)
    {
      v39 = v38;

      sub_25168CD90(0, &qword_28151E880, 0x277D75348);
      sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
      v40 = sub_251703214();

      sub_251701920(v40);
      if (v41)
      {
LABEL_32:
        v43 = v41;
        v44 = [v9 localizedAgencyImageURL];
        if (v44)
        {
          v45 = v44;
          sub_251703164();
        }

        sub_251702D94();

        v46 = type metadata accessor for ENUIPublicHealthHeader(0);
        v47 = objc_allocWithZone(v46);
        v48 = &v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
        *v48 = v74;
        v48[1] = v23;
        v49 = &v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
        *v49 = v26;
        v49[1] = v28;
        *&v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = v36;
        *&v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = v43;
        sub_25169479C(v5, &v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
        *&v47[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = v75;
        v78.receiver = v47;
        v78.super_class = v46;
        v50 = objc_msgSendSuper2(&v78, sel_init);
        sub_2516B5AC4(v5);
        v51 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
        v52 = v50;
        v53 = sub_2516DD44C(v52, 20.0, 20.0, 20.0, 20.0);
        [v53 setTranslatesAutoresizingMaskIntoConstraints_];
        v54 = [v1 contentView];
        [v54 addSubview_];

        v55 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_2517068A0;
        v57 = [v53 leadingAnchor];
        v58 = [v1 contentView];
        v59 = [v58 leadingAnchor];

        v60 = [v57 constraintEqualToAnchor_];
        *(v56 + 32) = v60;
        v61 = [v53 trailingAnchor];
        v62 = [v1 contentView];
        v63 = [v62 trailingAnchor];

        v64 = [v61 constraintEqualToAnchor_];
        *(v56 + 40) = v64;
        v65 = [v53 topAnchor];
        v66 = [v1 contentView];
        v67 = [v66 topAnchor];

        v68 = [v65 constraintEqualToAnchor_];
        *(v56 + 48) = v68;
        v69 = [v53 bottomAnchor];

        v70 = [v1 contentView];
        v71 = [v70 bottomAnchor];

        v72 = [v69 constraintEqualToAnchor_];
        *(v56 + 56) = v72;
        sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
        v73 = sub_2517031F4();

        [v55 activateConstraints_];

        return;
      }

      v42 = [objc_opt_self() labelColor];
LABEL_31:
      v41 = v42;
      goto LABEL_32;
    }

LABEL_36:
    __break(1u);
    return;
  }
}

void sub_2516B568C()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_251703134();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_251703134();
    [v3 removeObjectForKey_];
  }
}

id TurndownViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id TurndownViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id TurndownViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2516B5AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OnboardingRegionSelectionViewController.__allocating_init(flow:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516B8F14(a1, a3, v7, ObjectType, a2);
}

uint64_t sub_2516B5B94(uint64_t a1)
{
  if (a1)
  {
    if (qword_28151EB58 == -1)
    {
      return sub_251702C94();
    }

    goto LABEL_6;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_251702C94();
}

uint64_t static SelectionType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_2516B5CAC(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_2516B5CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_251703624() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2516B5D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_2516B5CAC(v2, v3);
    }

    return 0;
  }

  return !v3;
}

char *sub_2516B5D74(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_imageDimension] = 0x404F000000000000;
  *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_iconTitlePadding] = 0x4028000000000000;
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v6 = sub_251703134();
  v7 = [objc_opt_self() _systemImageNamed_];

  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = &v2[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for RegionSelectionHeaderView();
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v13 = *&v11[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView];
  v14 = v11;
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  [v14 addSubview_];
  v16 = *&v11[v12];
  v17 = [objc_opt_self() systemPinkColor];
  [v16 setTintColor_];

  v18 = *&v14[v15];
  v19 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title];
  v20 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title + 8];
  v21 = sub_251703134();
  [v18 setText_];

  v22 = *&v14[v15];
  v23 = sub_2516C19DC(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0, 0, 0);
  [v22 setFont_];

  [*&v14[v15] setNumberOfLines_];
  [*&v14[v15] setTextAlignment_];

  return v14;
}

id sub_2516B5FF4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for RegionSelectionHeaderView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v16);
  [v0 layoutMargins];
  v3 = Width - v2;
  [v0 layoutMargins];
  v5 = v3 - v4;
  v6 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView];
  [v6 frame];
  [v0 layoutMargins];
  v8 = v7;
  [v6 setFrame_];
  v9 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel];
  [v9 sizeThatFits_];
  v11 = v10;
  v13 = v12;
  [v9 frame];
  v17.origin.x = (Width + -62.0) * 0.5;
  v17.origin.y = v8;
  v17.size.width = 62.0;
  v17.size.height = 62.0;
  return [v9 setFrame_];
}

double sub_2516B61BC(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title + 8];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_title] & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    [v1 layoutMargins];
    v6 = a1 - v5;
    [v1 layoutMargins];
    [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel] sizeThatFits_];
    [v1 layoutMargins];
    [v1 layoutMargins];
  }

  return a1;
}

id sub_2516B630C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegionSelectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2516B63A0()
{
  if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType);

    v3 = sub_2516ABA30(v2);

    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_251703054();

    v6 = v28;
    v27 = *(v28 + 16);
    if (!v27)
    {
      v9 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    v7 = 0;
    v8 = v3 + 56;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v7 = v10 + 1;
        if (*(v3 + 16))
        {
          break;
        }

LABEL_6:
        v10 = v7;
        if (v7 == v27)
        {
          goto LABEL_26;
        }
      }

      v11 = (v28 + 32 + 32 * v10);
      v12 = v11[1];
      v26 = *v11;
      v14 = v11[2];
      v13 = v11[3];
      v15 = *(v3 + 40);
      sub_2517036E4();

      sub_2517031A4();
      v16 = sub_251703724();
      v17 = -1 << *(v3 + 32);
      v18 = v16 & ~v17;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_251703624() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2516B8EF4(0, *(v9 + 16) + 1, 1);
      }

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_2516B8EF4((v22 > 1), v23 + 1, 1);
      }

      *(v9 + 16) = v23 + 1;
      v24 = (v9 + 32 * v23);
      v24[4] = v26;
      v24[5] = v12;
      v24[6] = v14;
      v24[7] = v13;
      v6 = v28;
      if (v7 == v27)
      {
LABEL_26:

        return v9;
      }
    }

LABEL_5:

    goto LABEL_6;
  }

  v25 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251703054();

  return v28;
}

id OnboardingRegionSelectionViewController.init(flow:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516B8F14(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_2516B67E0();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType];
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (v1)
  {
    RegionsProvider.loadSubdivisions(_:)(sub_2516B90D8, v3);
  }

  else
  {
    RegionsProvider.loadCountries(_:)(sub_2516B9C68, v3);
  }
}

void sub_2516B67E0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor_];

  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView];
  sub_25168CD90(0, &qword_27F454288, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_251703134();
  [v5 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  [v5 setDataSource_];
  [v5 setDelegate_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  [v9 addSubview_];

  sub_2516B72E8();
  v11 = [v0 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView];
  [v11 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251708350;
  v15 = [v5 leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [v5 trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v14 + 40) = v24;
  v25 = [v5 topAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v14 + 48) = v29;
  v30 = [v5 bottomAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v14 + 56) = v34;
  v35 = [v13 leadingAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v14 + 64) = v39;
  v40 = [v13 trailingAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v14 + 72) = v44;
  v45 = [v13 topAnchor];
  v46 = [v0 view];
  if (!v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  *(v14 + 80) = v49;
  v50 = [v13 bottomAnchor];
  v51 = [v0 view];
  if (!v51)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = objc_opt_self();
  v54 = [v52 bottomAnchor];

  v55 = [v50 constraintEqualToAnchor_];
  *(v14 + 88) = v55;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v56 = sub_2517031F4();

  [v53 activateConstraints_];

  v57 = [v5 tableHeaderView];
  [v57 layoutIfNeeded];

  v58 = [v5 tableHeaderView];
  [v5 setTableHeaderView_];

  v59 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel];
  v60 = [v0 navigationItem];
  [v60 setRightBarButtonItem_];

  v61 = [v0 navigationItem];
  [v61 _setAutoScrollEdgeTransitionDistance_];

  v62 = [v0 navigationItem];
  [v62 _setManualScrollEdgeAppearanceEnabled_];
}

void sub_2516B6F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView);

    [v2 reloadData];
  }
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    [v3 setNavigationBarHidden:0 animated:v4];
  }

  v6 = &v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(0, ObjectType, v7);
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1);
  if ([v1 isMovingFromParentViewController])
  {
    v3 = &v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
    v5 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(MEMORY[0x277D84F90], ObjectType, v4);
  }
}

void sub_2516B72E8()
{
  v1 = v0;
  v2 = sub_2516B5B94(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType]);
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for RegionSelectionHeaderView());
  v22 = sub_2516B5D74(v2, v4);
  [v22 setLayoutMargins_];
  [v22 frame];
  v7 = v6;
  v9 = v8;
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    [v22 sizeThatFits_];
    [v22 setFrame_];
    [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView] setTableHeaderView_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Int __swiftcall OnboardingRegionSelectionViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v2 = *(sub_2516B63A0() + 16);

  return v2;
}

unint64_t OnboardingRegionSelectionViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = sub_251703134();
  v3 = sub_251702EB4();
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:v3];

  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2516B63A0();
    result = sub_251702ED4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v7 + 16))
    {
      v9 = v7 + 32 * result;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);

      v12 = sub_251703134();

      [v6 setText_];

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

LABEL_5:
  [v4 setAccessoryType_];
  v13 = objc_opt_self();
  v14 = v4;
  v15 = [v13 secondarySystemBackgroundColor];
  [v14 setBackgroundColor_];

  v16 = [v14 textLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setNumberOfLines_];
  }

  return v14;
}

uint64_t OnboardingRegionSelectionViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v7 animated:1];

  v8 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView);
  [*&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] startAnimating];
  [v8 setHidden_];
  v9 = sub_2516B63A0();
  v10 = a2;
  v11 = sub_251702ED4();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= v9[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = &v9[4 * v11];
  v3 = v12[4];
  a2 = v12[5];
  v10 = v12[6];
  a1 = v12[7];

  if (!*(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    v14 = sub_251703134();
    v9 = [objc_opt_self() regionWithCode_];

    if (qword_28151EB60 == -1)
    {
LABEL_8:
      swift_beginAccess();
      v15 = static ENManagerAdapter.defaultAdapter;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v3;
      v17[4] = a2;
      v17[5] = v10;
      v17[6] = a1;
      v18 = swift_allocObject();
      v18[2] = v15;
      v18[3] = v9;
      v18[4] = sub_2516B9990;
      v18[5] = v17;
      v19 = v15;

      v20 = v9;

      sub_2516C59C8(sub_2516B99A0, v18);
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  sub_2516B93A8();
}

void sub_2516B7B34(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v68 = a4;
  v69 = a6;
  v67 = a2;
  v74 = a1;
  v9 = sub_251703084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2517030B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2517030D4();
  v71 = *(v73 - 8);
  v17 = *(v71 + 8);
  v18 = MEMORY[0x28223BE20](v73);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v63 = v14;
    v64 = v13;
    v65 = v10;
    v66 = v9;
    if (v74)
    {
      v67 = v22;
      v25 = (Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
      v62 = Strong;
      v26 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
      v27 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8);
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 40);
      v30 = v74;

      swift_unknownObjectRetain();

      v29(v68, a5, v69, a7, ObjectType, v27);
      swift_unknownObjectRelease();
      if (v30[2])
      {
        sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
        v31 = sub_251703364();
        sub_2517030C4();
        v32 = v67;
        sub_2517030E4();
        v71 = *(v71 + 1);
        v71(v20, v73);
        v33 = swift_allocObject();
        v34 = v62;
        *(v33 + 16) = v62;
        v35 = v34;
        v79 = sub_2516B9C54;
        v80 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v76 = 1107296256;
        v77 = sub_251693A80;
        v78 = &block_descriptor_21;
        v36 = _Block_copy(&aBlock);
        v69 = v35;

        v37 = v70;
        sub_2517030A4();
        aBlock = MEMORY[0x277D84F90];
        sub_251694ABC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
        sub_251694B14();
        v38 = v72;
        v39 = v66;
        sub_251703434();
        MEMORY[0x25307F720](v32, v37, v38, v36);
        _Block_release(v36);

        (*(v65 + 8))(v38, v39);
        (*(v63 + 8))(v37, v64);
        v71(v32, v73);
        v41 = *v25;
        v40 = v25[1];
        v42 = swift_getObjectType();
        v43 = *(v40 + 64);
        swift_unknownObjectRetain();
        v43(v74, v42, v40);
        swift_unknownObjectRelease();
        v45 = *v25;
        v44 = v25[1];
        v46 = swift_getObjectType();
        v47 = *(v44 + 120);
        v48 = v69;
        swift_unknownObjectRetain();
        v47(v48, &protocol witness table for OnboardingRegionSelectionViewController, v46, v44);
        swift_unknownObjectRelease();

        v24 = v62;
      }

      else
      {

        v24 = v62;
        sub_2516B93A8();
      }
    }

    else
    {
      sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
      v49 = sub_251703364();
      sub_2517030C4();
      sub_2517030E4();
      v74 = *(v71 + 1);
      (v74)(v20, v73);
      v50 = swift_allocObject();
      *(v50 + 16) = v24;
      v79 = sub_2516B9C4C;
      v80 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v77 = sub_251693A80;
      v78 = &block_descriptor_4;
      v51 = _Block_copy(&aBlock);
      v71 = v24;

      v52 = v70;
      sub_2517030A4();
      aBlock = MEMORY[0x277D84F90];
      sub_251694ABC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
      sub_251694B14();
      v53 = v72;
      v54 = v66;
      sub_251703434();
      MEMORY[0x25307F720](v22, v52, v53, v51);
      _Block_release(v51);

      (*(v65 + 8))(v53, v54);
      (*(v63 + 8))(v52, v64);
      (v74)(v22, v73);
      if (v67)
      {
        sub_2516B82AC();
      }

      else
      {
        v55 = v71;
        v57 = *(v71 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow);
        v56 = *(v71 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8);
        v58 = swift_getObjectType();
        v59 = *(v56 + 120);
        v60 = v55;
        swift_unknownObjectRetain();
        v59(v60, &protocol witness table for OnboardingRegionSelectionViewController, v58, v56);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2516B82AC()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_251702C94();
  v4 = sub_251703134();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:{0, 0xE000000000000000}];

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_2516B85E0(void *a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;
  v11 = a1;

  swift_beginAccess();
  v12 = *(a4 + 16);
  *(a4 + 16) = a2;
  v13 = a2;

  dispatch_group_leave(a5);
}

void sub_2516B8680(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v45 = a4;
  v47 = a3;
  v53 = a2;
  v51 = a1;
  v5 = sub_251703084();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2517030B4();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2517030D4();
  v48 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v21 = sub_251703364();
  sub_2517030C4();
  sub_2517030E4();
  v22 = *(v14 + 8);
  v22(v18, v13);
  v23 = swift_allocObject();
  v24 = v51;
  *(v23 + 16) = v51;
  aBlock[4] = sub_2516B9BD8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_54_0;
  v25 = _Block_copy(aBlock);
  v51 = v24;

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  MEMORY[0x25307F720](v20, v12, v8, v25);
  _Block_release(v25);

  (*(v52 + 8))(v8, v5);
  (*(v49 + 8))(v12, v50);
  v22(v20, v48);
  v26 = v53;
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v26 + 16);
LABEL_5:
    v33 = v51;
    v34 = *&v51[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
    v35 = *&v51[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    ObjectType = swift_getObjectType();
    v37 = *(v35 + 16);
    v38 = v27;
    v39 = v28;
    v37(v28, ObjectType, v35);
    (*(v35 + 120))(v33, &protocol witness table for OnboardingRegionSelectionViewController, ObjectType, v35);

    return;
  }

  v29 = v45;
  v30 = v46;
  v31 = v47;
  swift_beginAccess();
  v32 = *(v31 + 16);
  if (v32)
  {
    v28 = v32;
    v27 = 0;
    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(v29 + 16) || (swift_beginAccess(), *(v30 + 16)))
  {
    sub_2516B82AC();
  }

  else
  {
    v40 = v51;
    v42 = *&v51[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
    v41 = *&v51[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow + 8];
    v43 = swift_getObjectType();
    (*(v41 + 120))(v40, &protocol witness table for OnboardingRegionSelectionViewController, v43, v41);
  }
}

Swift::Void __swiftcall OnboardingRegionSelectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = [v1 traitCollection];
  if (v3)
  {
    v4 = v3;
    if (isa)
    {
      sub_25168CD90(0, &qword_27F4541E0, 0x277D75C80);
      v5 = isa;
      v6 = sub_2517033B4();

      if (v6)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!isa)
  {
    return;
  }

  sub_2516B72E8();
}

id OnboardingRegionSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingRegionSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OnboardingRegionSelectionViewController.step.getter()
{
  if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2516B8ED4()
{
  if (*(*v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

char *sub_2516B8EF4(char *a1, int64_t a2, char a3)
{
  result = sub_2516E34EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_2516B8F14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v11 = sub_251702C94();
  v13 = v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&a3[v10] = LoadingStatusView.init(with:backgroundColor:)(v11, v13, v14);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *&a3[v16] = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  v18 = type metadata accessor for RegionsProvider();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&a3[v17] = sub_2516E2EB8();
  v21 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_flow];
  *v21 = a1;
  *(v21 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_selectionType] = a2;
  v23.receiver = a3;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2516B90F4()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_imageDimension) = 0x404F000000000000;
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_iconTitlePadding) = 0x4028000000000000;
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_globeImageView;
  v2 = sub_251703134();
  v3 = [objc_opt_self() _systemImageNamed_];

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI25RegionSelectionHeaderView_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_251703584();
  __break(1u);
}

void sub_2516B9210()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v3 = sub_251702C94();
  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  v7 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *(v1 + v2) = LoadingStatusView.init(with:backgroundColor:)(v3, v5, v6);
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionTableView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_regionsProvider;
  v10 = type metadata accessor for RegionsProvider();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v1 + v9) = sub_2516E2EB8();
  sub_251703584();
  __break(1u);
}

uint64_t sub_2516B93A8()
{
  v0 = sub_251703084();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  MEMORY[0x28223BE20](v0);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2517030B4();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  dispatch_group_enter(v6);
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static ENManagerAdapter.defaultAdapter;
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v6;
  v13 = v11;

  v14 = v6;
  v15 = sub_251703134();
  v53 = v10;
  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 regionWithCode_];
  v44 = v9;
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v19;
  *(v20 + 32) = 1;
  *(v20 + 40) = sub_2516B9C58;
  *(v20 + 48) = v12;
  v21 = v13;
  v22 = v19;

  sub_2516C59C8(sub_2516B9B04, v20);

  dispatch_group_enter(v14);
  v23 = static ENManagerAdapter.defaultAdapter;
  v24 = swift_allocObject();
  v24[2] = v7;
  v24[3] = v8;
  v24[4] = v14;
  v45 = v14;
  v25 = v23;

  v26 = sub_251703134();
  v27 = [v17 regionWithCode_];

  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  *(v28 + 32) = 0;
  *(v28 + 40) = sub_2516B9B50;
  *(v28 + 48) = v24;
  v29 = v25;
  v30 = v27;

  sub_2516C59C8(sub_2516B9C50, v28);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v31 = sub_251703364();
  v32 = swift_allocObject();
  v33 = v46;
  v34 = v44;
  v32[2] = v46;
  v32[3] = v34;
  v35 = v53;
  v32[4] = v7;
  v32[5] = v35;
  v32[6] = v8;
  aBlock[4] = sub_2516B9BC8;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_48;
  v36 = _Block_copy(aBlock);

  v37 = v33;
  v38 = v47;
  sub_2517030A4();
  v54 = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v39 = v50;
  v40 = v52;
  sub_251703434();
  v41 = v45;
  sub_251703344();
  _Block_release(v36);

  (*(v51 + 8))(v39, v40);
  (*(v48 + 8))(v38, v49);
}

uint64_t sub_2516B99B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}