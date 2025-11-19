uint64_t sub_2516B9A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2516B9A5C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2516B9A74(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2516B9BDC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28HealthExposureNotificationUI39OnboardingRegionSelectionViewController_statusView);
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] stopAnimating];

  return [v1 setHidden_];
}

id VerificationSummaryViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v33 - v8;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v33[0] = qword_28151F0E0;
  v33[1] = static LocalizationSource.main;
  v11 = sub_251702C94();
  v13 = v12;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&v3[v10] = LoadingStatusView.init(with:backgroundColor:)(v11, v13, v14);
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton;
  *&v3[v16] = [objc_opt_self() boldButton];
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_secondaryButton;
  *&v3[v17] = [objc_opt_self() linkButton];
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow] = a1;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_healthAgencyModel] = a2;
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  swift_beginAccess();
  sub_251699D18(a1 + v18, v9, &unk_27F4538B0, &unk_2517068C0);
  v19 = type metadata accessor for SymptomOnset(0);
  (*(*(v19 - 8) + 48))(v9, 1, v19);

  v20 = a2;
  sub_25168B718(v9, &unk_27F4538B0, &unk_2517068C0);
  v21 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  swift_beginAccess();
  *(a1 + v21);
  *(a1 + v21);
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251708520;
  v34 = v20;
  v23 = &v20[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v24 = *&v20[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v25 = *(v23 + 1);
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_25169F41C();
  *(v22 + 32) = v24;
  *(v22 + 40) = v25;

  sub_251703184();

  sub_251702C94();
  v26 = sub_251703134();

  v27 = sub_251703134();

  sub_25168CD90(0, &unk_27F4542B8, 0x277D37648);
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v28 = static NSBundle.exposureNotificationUI;
  v29 = sub_251703134();
  v30 = [swift_getObjCClassFromMetadata() imageNamed:v29 inBundle:v28];

  v36.receiver = v3;
  v36.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v36, sel_initWithTitle_detailText_icon_contentLayout_, v26, v27, v30, 2);

  return v31;
}

Swift::Void __swiftcall VerificationSummaryViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516BA430();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516BA430()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton];
  v2 = sub_251703134();
  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  sub_251702C94();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_secondaryButton];
  v5 = sub_251703134();
  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  [v4 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];

  type metadata accessor for MultilineButton();
  v7 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v7 addTarget:v0 action:sel_didTapLearnMoreButton forControlEvents:64];
  v8 = v7;
  sub_251702C94();
  v9 = sub_251703134();

  [v8 setTitle:v9 forState:{0, 0xE000000000000000}];

  v10 = [v8 titleLabel];
  if (v10)
  {
    [v10 setTextAlignment_];
  }

  v11 = [v8 titleLabel];

  [v11 setNumberOfLines_];
  v12 = [v8 titleLabel];

  if (v12)
  {
    v13 = [objc_opt_self() preferredFontForTextStyle_];
    [v12 setFont_];
  }

  v14 = [v8 titleLabel];

  if (v14)
  {
    [v14 setAdjustsFontForContentSizeCategory_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251708140;
  *(v15 + 32) = v8;
  v16 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v67 = v8;
  v17 = sub_2517031F4();

  v18 = [v16 initWithArrangedSubviews_];

  [v18 setAxis_];
  [v18 setAlignment_];
  v19 = v18;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v0 contentView];
  [v20 addSubview_];

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2517068A0;
  v23 = [v19 leadingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v26;
  v27 = [v19 trailingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v22 + 40) = v30;
  v31 = [v19 topAnchor];
  v32 = [v0 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v22 + 48) = v34;
  v35 = [v19 bottomAnchor];

  v36 = [v0 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v38;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v39 = sub_2517031F4();

  [v21 activateConstraints_];

  v40 = [v0 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [objc_opt_self() systemGroupedBackgroundColor];
  [v41 setBackgroundColor_];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [v43 addSubview_];

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2517068A0;
  v47 = [v45 leadingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v46 + 32) = v51;
  v52 = [v45 topAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = v53;
  v55 = [v53 topAnchor];

  v56 = [v52 constraintEqualToAnchor_];
  *(v46 + 40) = v56;
  v57 = [v45 trailingAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v57 constraintEqualToAnchor_];
  *(v46 + 48) = v61;
  v62 = [v45 bottomAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v64 = v63;

  v65 = [v64 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(v46 + 56) = v66;
  v68 = sub_2517031F4();

  [v21 activateConstraints_];
}

uint64_t sub_2516BAF7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v57 = *(v1 - 8);
  v2 = *(v57 + 8);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  v10 = sub_251702E64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton] setEnabled_];
  v16 = [v0 navigationController];
  if (v16)
  {
    v17 = v11;
    v18 = v16;
    v19 = [v16 view];

    if (!v19)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v19 setUserInteractionEnabled_];

    v11 = v17;
  }

  v20 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  v21 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v20 + v21, v9, &qword_27F454000, &unk_251708500);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_25168B718(v9, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
    return result;
  }

  v54 = *(v11 + 32);
  v55 = v11 + 32;
  v54(v15, v9, v10);
  v22 = v15;
  v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  swift_beginAccess();
  sub_251699D18(v20 + v23, v5, &unk_27F4538B0, &unk_2517068C0);
  v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
  swift_beginAccess();
  v53 = *(v20 + v24);
  v25 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
  swift_beginAccess();
  v52 = *(v20 + v25);
  v26 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [*&v26[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] startAnimating];
  [v26 setHidden_];
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v48 = static ENManagerAdapter.defaultAdapter;
  v49 = swift_allocObject();
  *(v49 + 16) = v0;
  v27 = v58;
  sub_251699D18(v5, v58, &unk_27F4538B0, &unk_2517068C0);
  v28 = v56;
  (*(v11 + 16))(v56, v22, v10);
  v29 = (v57[80] + 16) & ~v57[80];
  v57 = v22;
  v30 = v11;
  v51 = v11;
  v31 = v29 + v2;
  v32 = (v29 + v2 + 9) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v30 + 80);
  v47 = v0;
  v34 = (v33 + v32 + 8) & ~v33;
  v50 = v5;
  v35 = v34 + v12;
  v36 = (v34 + v12) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_2516ABAC8(v27, v37 + v29);
  v38 = (v37 + v31);
  v39 = v52;
  *v38 = v53;
  v38[1] = v39;
  v40 = v48;
  *(v37 + v32) = v48;
  v54((v37 + v34), v28, v10);
  *(v37 + v35) = 1;
  v41 = v37 + v36;
  v42 = v49;
  *(v41 + 8) = sub_2516BCFCC;
  *(v41 + 16) = v42;
  v43 = v40;
  v44 = v47;

  sub_2516C59C8(sub_2516BD384, v37);

  sub_25168B718(v50, &unk_27F4538B0, &unk_2517068C0);
  return (*(v51 + 8))(v57, v10);
}

void sub_2516BB5B8(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_statusView];
  [*&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] stopAnimating];
  [v4 setHidden_];
  v5 = [a2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 setUserInteractionEnabled_];
  }

  if (a1)
  {
    v8 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v9 = sub_251702F84();
    __swift_project_value_buffer(v9, static Logger.testVerification);
    v10 = a1;
    v11 = sub_251702F64();
    v12 = sub_251703324();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v16 = sub_251703194();
      v18 = sub_251693FCC(v16, v17, &aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_25167E000, v11, v12, "Finish test verification session failed: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2530803C0](v14, -1, -1);
      MEMORY[0x2530803C0](v13, -1, -1);
    }

    _s3__C4CodeOMa_0(0);
    aBlock = 4;
    v19 = a1;
    sub_2516BD31C();
    v20 = sub_251702CA4();

    if (v20)
    {
      goto LABEL_13;
    }

    aBlock = 6;
    v21 = a1;
    v22 = sub_251702CA4();

    if (v22)
    {
      goto LABEL_13;
    }

    aBlock = 7;
    v23 = a1;
    v24 = sub_251702CA4();

    if (v24 & 1) != 0 || (aBlock = 8, v25 = a1, v26 = sub_251702CA4(), a1, (v26))
    {
LABEL_13:
      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      sub_251702C94();
LABEL_16:
      v27 = 0;
LABEL_17:
      v28 = sub_251703134();

      v29 = sub_251703134();

      v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:{1, 0xE000000000000000}];

      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      *(v31 + 24) = a2;
      v32 = a2;
      v33 = sub_251703134();

      v50 = sub_2516BD374;
      v51 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_25169F470;
      v49 = &block_descriptor_19;
      v34 = _Block_copy(&aBlock);

      v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:{v34, 0xE000000000000000}];
      _Block_release(v34);

      [v30 addAction_];
      [v32 presentViewController:v30 animated:1 completion:0];
      [*&v32[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_primaryButton] setEnabled_];

      return;
    }

    aBlock = 11;
    v40 = a1;
    v41 = sub_251702CA4();

    if (v41)
    {
      if (qword_28151EB58 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      if ([objc_opt_self() wapiCapability])
      {
        v42 = 1312902231;
      }

      else
      {
        v42 = 1229343063;
      }

      aBlock = 0;
      v47 = 0xE000000000000000;
      sub_251703534();
      MEMORY[0x25307F580](0xD00000000000002ALL, 0x800000025170E430);
      MEMORY[0x25307F580](v42, 0xE400000000000000);

      MEMORY[0x25307F580](0x4D5F524F5252455FLL, 0xEE00454741535345);
      sub_251702C94();

      goto LABEL_16;
    }

    aBlock = 13;
    v43 = a1;
    v44 = sub_251702CA4();

    if (v44)
    {
      if (qword_28151EB58 == -1)
      {
        goto LABEL_34;
      }
    }

    else if (qword_28151EB58 == -1)
    {
LABEL_34:
      sub_251702C94();
      sub_251702C94();
      v27 = 1;
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_34;
  }

  v36 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  v37 = objc_allocWithZone(type metadata accessor for VerificationFinishedViewController());

  v45 = VerificationFinishedViewController.init(flow:)(v38, &protocol witness table for VerificationOnboardingFlow);
  v39 = [a2 navigationController];
  [v39 pushViewController:v45 animated:1];
}

uint64_t sub_2516BBF6C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow);
    swift_beginAccess();
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);

    v5(2);
  }

  return result;
}

uint64_t sub_2516BC028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v32 - v3;
  v5 = sub_251702E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v37 = v0;
  v11 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v11 + v12, v4, &qword_27F454000, &unk_251708500);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25168B718(v4, &qword_27F454000, &unk_251708500);
    result = sub_251703584();
    __break(1u);
  }

  else
  {
    v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = *(v6 + 32);
    v33(v10, v4, v5);
    v36 = v6;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    v32[1] = qword_28151F0E0;
    v32[2] = *algn_28151F0D8;
    v32[3] = static LocalizationSource.main;
    sub_251702C94();
    v13 = sub_251703134();

    v14 = sub_251703134();
    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:0];

    sub_251702C94();
    v16 = v35;
    v17 = v36;
    (*(v36 + 16))(v35, v10, v5);
    v18 = v5;
    v19 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v20 = swift_allocObject();
    v34 = v10;
    v21 = v20;
    v22 = v37;
    *(v20 + 16) = v37;
    v23 = v20 + v19;
    v24 = v18;
    v33(v23, v16, v18);
    v37 = v22;
    v25 = sub_251703134();

    aBlock[4] = sub_2516BCF34;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25169F470;
    aBlock[3] = &block_descriptor_5;
    v26 = _Block_copy(aBlock);

    v27 = objc_opt_self();
    v28 = [v27 actionWithTitle:v25 style:2 handler:v26];
    _Block_release(v26);

    [v15 addAction_];
    sub_251702C94();
    v29 = sub_251703134();

    v30 = [v27 actionWithTitle:v29 style:1 handler:0];

    [v15 addAction_];
    [v37 presentViewController:v15 animated:1 completion:0];

    return (*(v17 + 8))(v34, v24);
  }

  return result;
}

void sub_2516BC5B4(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a3;
  v4 = sub_251702E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v35 = *(v7 - 8);
  v8 = v35[8];
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = [a2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (!v15)
    {
      __break(1u);
      return;
    }

    [v15 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = static ENManagerAdapter.defaultAdapter;
  v16 = type metadata accessor for SymptomOnset(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  sub_251699D18(v12, v10, &unk_27F4538B0, &unk_2517068C0);
  (*(v5 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v4);
  v18 = *(v35 + 80);
  v35 = a2;
  v36 = v12;
  v19 = (v18 + 16) & ~v18;
  v20 = v19 + v8;
  v21 = (v20 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v5 + 80);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v23 = (v22 + v21 + 8) & ~v22;
  v24 = v23 + v6;
  v25 = (v23 + v6) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_2516ABAC8(v10, v26 + v19);
  *(v26 + v20) = 514;
  v27 = v33;
  v28 = v34;
  *(v26 + v21) = v34;
  (*(v5 + 32))(v26 + v23, v32, v27);
  *(v26 + v24) = 0;
  v29 = v26 + v25;
  *(v29 + 8) = sub_2516BCFC0;
  *(v29 + 16) = v17;
  v30 = v28;
  v31 = v35;

  sub_2516C59C8(sub_2516BCFC8, v26);

  sub_25168B718(v36, &unk_27F4538B0, &unk_2517068C0);
}

void sub_2516BC96C(void *a1, char *a2)
{
  v4 = [a2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (!v6)
    {
      __break(1u);
      return;
    }

    [v6 setUserInteractionEnabled_];
  }

  if (a1)
  {
    v7 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v8 = sub_251702F84();
    __swift_project_value_buffer(v8, static Logger.testVerification);
    v9 = a1;
    v10 = sub_251702F64();
    v11 = sub_251703324();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v15 = sub_251703194();
      v17 = sub_251693FCC(v15, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25167E000, v10, v11, "Finish test verification session opt out failed: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2530803C0](v13, -1, -1);
      MEMORY[0x2530803C0](v12, -1, -1);
    }

    else
    {
    }
  }

  v18 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationSummaryViewController_flow];
  swift_beginAccess();
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);

  v20(2);
}

id VerificationSummaryViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id VerificationSummaryViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id VerificationSummaryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516BCF34(uint64_t a1)
{
  v3 = *(sub_251702E64() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2516BC5B4(a1, v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_251702E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SymptomOnset(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = sub_251702E24();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v3, 1, v10))
    {
      (*(v11 + 8))(v0 + v3, v10);
    }
  }

  v12 = (v4 + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = (v13 + v8) & 0xFFFFFFFFFFFFFFF8;

  (*(v6 + 8))(v0 + v13, v5);
  v15 = *(v0 + v14 + 16);

  return MEMORY[0x2821FE8E8](v0, v14 + 24, v2 | v7 | 7);
}

void sub_2516BD1F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_251702E64() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v4);
  v9 = *(v0 + v7);
  v10 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v0 + v3 + 1);
  v14 = *(v0 + v3);

  sub_2516CD9A8(v0 + v2, v14, v13, v8, v0 + v6, v9, v11, v12);
}

unint64_t sub_2516BD31C()
{
  result = qword_27F453B98;
  if (!qword_27F453B98)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453B98);
  }

  return result;
}

id AuthorizationViewController.init(with:bundleIdentifier:region:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = *MEMORY[0x277D85000];
  v10 = sub_2516C059C(a1, a2, a3, a4, a5, a6);
  (*(*(*((v9 & v8) + 0x50) - 8) + 8))(a1);
  return v10;
}

uint64_t sub_2516BD418(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

BOOL sub_2516BD448()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v2 = v1[1];
  result = v2 == 0;
  if (v2)
  {
    if (*v1 == 0xD000000000000015 && v2 == 0x800000025170E650)
    {
      return 1;
    }

    v5 = v2 == 0;
    v6 = sub_251703624();
    result = v5;
    if (v6)
    {
      return 1;
    }
  }

  return result;
}

_BYTE *sub_2516BD4EC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2516BE46C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2516BD56C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2516BE4E4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2516BD5EC(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

void sub_2516BD61C()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = sub_2516BD4EC();
  v6 = *((*v3 & *v0) + 0x68);
  v7 = *((v4 & v2) + 0x58);
  v8 = *((v4 & v2) + 0x50);
  v7[2](v8, v7);
  v9 = *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel];
  v10 = sub_251703134();

  [v9 setText_];

  v11 = sub_2516BD56C();
  v7[7](v8, v7);
  v12 = *&v11[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  if (!v12)
  {
    __break(1u);
    goto LABEL_41;
  }

  v13 = v12;
  v14 = sub_251703134();

  [v13 setTitle:v14 forState:0];

  v15 = v7[8];
  v16 = *(v0 + *((*v3 & *v0) + 0x98));
  v15(v8, v7);
  v17 = *&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  if (!v17)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v17;
  v19 = sub_251703134();

  [v18 setTitle:v19 forState:0];

  v20 = *(v0 + *((*v3 & *v0) + 0x80));
  if (v20)
  {
    v21 = v7[3];
    v88 = v20;
    v21(v8, v7);
    if (v22)
    {
      v23 = *(v0 + *((*v3 & *v0) + 0x90));
      v24 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
      v25 = v23;
      v26 = sub_251703134();

      [v24 setText_];
    }

    else
    {
      v7[4](v8, v7);
      if (!v34)
      {
        goto LABEL_15;
      }

      v35 = *(v0 + *((*v3 & *v0) + 0x90));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251708520;
      v38 = *&v88[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
      v37 = *&v88[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 64) = sub_25169F41C();
      *(v36 + 32) = v38;
      *(v36 + 40) = v37;
      v25 = v35;

      sub_251703184();

      v39 = *&v25[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
      v26 = sub_251703134();

      [v39 setText_];
    }

LABEL_15:
    v40 = *((*v3 & *v1) + 0x90);
    v41 = *(v1 + v40);
    ENUIPublicHealthAgencyModel.installedAppIcon.getter();
    v43 = v42;
    [*&v41[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
    v44 = sub_2516DE6E0();
    [v44 setHidden_];

    v45 = [*(*(v1 + v40) + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView) image];
    if (v45)
    {
      v86 = v45;

      v46 = v86;
    }

    else
    {
      v46 = v88;
      v47 = *&v88[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8];
      if (v47)
      {
        v48 = *&v88[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
        v49 = swift_allocObject();
        *(v49 + 16) = v1;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_2516C0D14;
        *(v50 + 24) = v49;

        v51 = v1;

        sub_2516C39D0(0, 0, v48, v47);
        v53 = v52;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_2516C0D1C;
        *(v54 + 24) = v50;
        aBlock[4] = sub_2516C0D28;
        aBlock[5] = v54;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2516C2438;
        aBlock[3] = &block_descriptor_6;
        v55 = _Block_copy(aBlock);

        [v53 addFinishBlock_];
        _Block_release(v55);

        return;
      }
    }

    goto LABEL_37;
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v27 = sub_251702F84();
  __swift_project_value_buffer(v27, static Logger.general);
  v28 = sub_251702F64();
  v29 = sub_251703314();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_25167E000, v28, v29, "did not get agencyModel for pre-auth consent screen", v30, 2u);
    MEMORY[0x2530803C0](v30, -1, -1);
  }

  v31 = (v1 + *((*v3 & *v1) + 0x78));
  if (v31[1])
  {
    v32 = *v31;
    v33 = sub_251703134();
  }

  else
  {
    v33 = 0;
  }

  v89 = [objc_opt_self() applicationProxyForIdentifier_];

  if (v89)
  {
    v56 = [v89 appState];
    if (v56)
    {
      v57 = v56;
      v58 = [v56 isInstalled];

      if (!v58)
      {
        goto LABEL_36;
      }

      v7[3](v8, v7);
      if (v59)
      {
        v60 = *(v1 + *((*v3 & *v1) + 0x90));
        v61 = *&v60[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
        v62 = v60;
        v63 = sub_251703134();

        [v61 setText_];
LABEL_29:

LABEL_30:
        v73 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithResourceProxy_];
        v74 = [objc_opt_self() imageDescriptorNamed_];
        v75 = [v73 prepareImageForDescriptor_];
        v76 = v75;
        if (v75)
        {
          v77 = [v75 CGImage];
          if (v77)
          {
            v78 = v77;
            v79 = *(v1 + *((*v3 & *v1) + 0x90));
            v80 = objc_allocWithZone(MEMORY[0x277D755B8]);
            v81 = v79;
            v82 = [v80 initWithCGImage_];
            [*&v81[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
            v87 = sub_2516DE6E0();
            [v87 setHidden_];

            v46 = v87;
LABEL_37:

            return;
          }
        }

        v83 = sub_251702F64();
        v84 = sub_251703324();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_25167E000, v83, v84, "Did not get an image for pre-auth consent screen", v85, 2u);
          MEMORY[0x2530803C0](v85, -1, -1);
        }

LABEL_36:
        v46 = v89;
        goto LABEL_37;
      }

      v7[4](v8, v7);
      if (!v64)
      {
        goto LABEL_30;
      }

      v65 = *(v1 + *((*v3 & *v1) + 0x90));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_251708520;
      v62 = v65;
      v67 = [v89 localizedName];
      if (v67)
      {
        v68 = v67;
        v69 = sub_251703164();
        v71 = v70;

        *(v66 + 56) = MEMORY[0x277D837D0];
        *(v66 + 64) = sub_25169F41C();
        *(v66 + 32) = v69;
        *(v66 + 40) = v71;
        sub_251703184();

        v72 = *&v62[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
        v63 = sub_251703134();

        [v72 setText_];
        goto LABEL_29;
      }

LABEL_43:
      __break(1u);
      return;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }
}

uint64_t sub_2516BE178(uint64_t result)
{
  v2 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60);
  if (*v2)
  {
    v3 = *(v2 + 1);
    return (*v2)(result & 1);
  }

  return result;
}

void _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0_0()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88));
  [v1 layoutIfNeeded];
  [v1 contentOffset];
  v3 = v2;
  [v1 frame];
  v4 = v3 + CGRectGetHeight(v12);
  [v1 contentInset];
  v6 = v4 - v5;
  [v1 contentSize];
  v8 = v7 <= v6;
  v9 = sub_2516BD56C();
  v10 = *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView];

  [v10 setHidden_];
}

void sub_2516BE2E0()
{
  type metadata accessor for OnboardingInfoViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v0 presentViewController:v2 animated:1 completion:0];
}

uint64_t AuthorizationDisplayableStyle.hashValue.getter(char a1)
{
  sub_2517036E4();
  MEMORY[0x25307FAC0](a1 & 1);
  return sub_251703724();
}

uint64_t AuthorizationViewController.completionHandler.getter()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v2 = *v1;
  v3 = v1[1];
  sub_2516C08EC(*v1);
  return v2;
}

_BYTE *sub_2516BE46C()
{
  v0 = sub_2516BD448();
  v1 = objc_allocWithZone(type metadata accessor for AuthorizationHeaderView());
  v2 = sub_2516DE998(v0, 0.0, 0.0, 0.0, 0.0);
  [v2 setLayoutMargins_];
  return v2;
}

char *sub_2516BE4E4(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v2 = (*(*((*MEMORY[0x277D85000] & *a1) + 0x58) + 72))(*((*MEMORY[0x277D85000] & *a1) + 0x50));
  v3 = objc_allocWithZone(type metadata accessor for AuthorizationFooterView());
  v4 = sub_251699D9C(v2 & 1, 0.0, 0.0, 0.0, 0.0);
  [v4 setLayoutMargins_];
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = &off_2863949E0;
  swift_unknownObjectWeakAssign();
  return v4;
}

id AuthorizationViewController.__allocating_init(with:bundleIdentifier:region:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = sub_2516C059C(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 10) - 8) + 8))(a1);
  return v15;
}

Swift::Void __swiftcall AuthorizationViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v147 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v149.receiver = v0;
  v149.super_class = type metadata accessor for AuthorizationViewController();
  objc_msgSendSuper2(&v149, sel_viewDidLoad);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_46;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = *(v1 + *((*v2 & *v1) + 0x88));
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setDelegate_];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = [v7 leadingAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  [v14 setActive_];

  v15 = [v7 trailingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  [v19 setActive_];

  v20 = [v7 topAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v22 = v21;
  v23 = [v21 safeAreaLayoutGuide];

  v24 = [v23 topAnchor];
  v25 = [v20 constraintEqualToAnchor_];

  [v25 setActive_];
  v26 = [v7 bottomAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v28 = v27;
  v29 = [v27 safeAreaLayoutGuide];

  v30 = [v29 bottomAnchor];
  v31 = [v26 constraintEqualToAnchor_];

  [v31 setActive_];
  v32 = sub_2516BD4EC();
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  v33 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  [v7 addSubview_];
  v34 = [*(v1 + v33) leadingAnchor];
  v35 = [v7 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  [v36 setActive_];
  v37 = [*(v1 + v33) trailingAnchor];
  v38 = [v7 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  [v39 setActive_];
  v40 = [*(v1 + v33) topAnchor];
  v41 = [v7 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:64.0];

  [v42 setActive_];
  v148 = v33;
  v43 = [*(v1 + v33) widthAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v45 = v44;
  v46 = [v44 widthAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  [v47 setActive_];

  type metadata accessor for MultilineButton();
  v48 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v48 addTarget:v1 action:sel_didTapLearnMoreButton forControlEvents:64];
  v49 = qword_28151EB58;
  v50 = v48;
  if (v49 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v51 = sub_251703134();

  [v50 setTitle:v51 forState:{0, 0xE000000000000000}];

  v52 = [v50 titleLabel];
  if (v52)
  {
    [v52 setTextAlignment_];
  }

  v53 = [v50 titleLabel];

  [v53 setNumberOfLines_];
  v54 = [v50 titleLabel];

  if (v54)
  {
    v55 = [objc_opt_self() preferredFontForTextStyle_];
    [v54 setFont_];
  }

  v56 = [v50 titleLabel];

  [v56 setAdjustsFontForContentSizeCategory_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_251708140;
  *(v57 + 32) = v50;
  v58 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v146 = v50;
  v59 = sub_2517031F4();

  v60 = [v58 initWithArrangedSubviews_];

  v61 = MEMORY[0x277D85000];
  v62 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v63 = *(v1 + v62);
  *(v1 + v62) = v60;

  v64 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v64)
  {
    goto LABEL_52;
  }

  [v64 setAxis_];
  v65 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v65)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v65 setAlignment_];
  v66 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v66)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v66 setTranslatesAutoresizingMaskIntoConstraints_];
  if (!*(v1 + *((*v61 & *v1) + 0xA0)))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v7 addSubview_];
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2517068A0;
  v68 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v68)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v69 = [v68 leadingAnchor];
  v70 = [v7 leadingAnchor];
  v71 = [v69 &selRef:v70 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v67 + 32) = v71;
  v72 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v72)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v73 = [v72 trailingAnchor];
  v74 = [v7 trailingAnchor];
  v75 = [v73 &selRef:v74 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v67 + 40) = v75;
  v76 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v76)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v77 = [v76 topAnchor];
  v78 = [*(v1 + v148) bottomAnchor];
  v79 = [v77 &selRef:v78 notifyChangeObserversForChangeFrom:? to:? + 5];

  *(v67 + 48) = v79;
  v80 = *(v1 + *((*v61 & *v1) + 0xA0));
  if (!v80)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v81 = objc_opt_self();
  v82 = [v80 bottomAnchor];
  v83 = [v7 bottomAnchor];
  v84 = [v82 constraintLessThanOrEqualToAnchor_];

  *(v67 + 56) = v84;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v85 = sub_2517031F4();

  [v81 activateConstraints_];

  v86 = sub_2516BD56C();
  [v86 setTranslatesAutoresizingMaskIntoConstraints_];

  v87 = [v1 view];
  if (!v87)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v88 = v87;
  v89 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  [v87 addSubview_];

  v90 = [*(v1 + v89) leadingAnchor];
  v91 = [v1 view];
  if (!v91)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v92 = v91;
  v93 = [v91 leadingAnchor];

  v94 = [v90 &selRef:v93 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v94 setActive_];

  v95 = [*(v1 + v89) trailingAnchor];
  v96 = [v1 view];
  if (!v96)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v97 = v96;
  v98 = [v96 trailingAnchor];

  v99 = [v95 &selRef:v98 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v99 setActive_];

  v100 = [*(v1 + v89) bottomAnchor];
  v101 = [v1 view];
  if (!v101)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v102 = v101;
  v103 = [v101 bottomAnchor];

  v104 = [v100 &selRef:v103 notifyChangeObserversForChangeFrom:? to:? + 5];
  [v104 setActive_];

  v105 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v106 = v3[2];
  v107 = *(v1 + v148);
  v106(v147, v3);
  v108 = *&v107[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_titleLabel];
  v109 = sub_251703134();

  [v108 setText_];

  v110 = v3[5];
  v111 = *(v1 + v89);
  v110(v147, v3);
  v113 = *&v111[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel];
  if (!v113)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v112)
  {
    v114 = v113;
    v115 = sub_251703134();
  }

  else
  {
    v116 = v113;
    v115 = 0;
  }

  [v113 setText_];

  v117 = v3[7];
  v118 = *(v1 + v89);
  v117(v147, v3);
  v119 = *&v118[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  if (!v119)
  {
    goto LABEL_65;
  }

  v120 = v119;
  v121 = sub_251703134();

  [v120 setTitle:v121 forState:0];

  v122 = v3[8];
  v123 = *(v1 + v89);
  v122(v147, v3);
  v124 = *&v123[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  if (!v124)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v125 = v124;
  v126 = sub_251703134();

  [v125 setTitle:v126 forState:0];

  if (sub_2516BD448())
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v127 = sub_251702F84();
    __swift_project_value_buffer(v127, static Logger.general);
    v128 = sub_251702F64();
    v129 = sub_251703314();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_25167E000, v128, v129, "Setting legal consent text for ENX Pre-Auth Consent Screen", v130, 2u);
      MEMORY[0x2530803C0](v130, -1, -1);
    }

    v3[3](v147, v3);
    if (!v131)
    {
      goto LABEL_40;
    }

    v132 = *(v1 + v148);
    v133 = *&v132[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_bodyLabel];
    v134 = v132;
    v135 = sub_251703134();
    [v133 setText_];

    v136 = [v1 view];
    if (v136)
    {
      v137 = v136;

      [v137 layoutIfNeeded];

LABEL_40:
      return;
    }

    goto LABEL_68;
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v138 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  v139 = v138[1];
  if (v139)
  {
    v140 = *v138;
    v141 = static ENManagerAdapter.defaultAdapter;
    v142 = swift_allocObject();
    *(v142 + 16) = v1;
    v143 = swift_allocObject();
    v143[2] = sub_2516C0914;
    v143[3] = v142;
    v143[4] = v140;
    v143[5] = v139;
    v144 = v141;
    v145 = v1;

    sub_2516C59C8(sub_2516C091C, v143);

    return;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_2516BFA50(void *a1, void *a2)
{
  v2 = *((*MEMORY[0x277D85000] & *a2) + 0x80);
  v3 = *(a2 + v2);
  *(a2 + v2) = a1;
  v4 = a1;

  sub_2516BD61C();
}

void sub_2516BFAA8(void *a1)
{
  v1 = a1;
  AuthorizationViewController.viewDidLoad()();
}

Swift::Void __swiftcall AuthorizationViewController.viewDidLayoutSubviews()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v33.receiver = v0;
  v33.super_class = type metadata accessor for AuthorizationViewController();
  objc_msgSendSuper2(&v33, sel_viewDidLayoutSubviews);
  v4 = *(v0 + *((*v1 & *v0) + 0x88));
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  Width = CGRectGetWidth(v34);
  v16 = *(v0 + *((*v1 & *v0) + 0xA0));
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = Width;
  [v16 frame];
  [v4 setContentSize_];
  v18 = sub_2516BD56C();
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  Height = CGRectGetHeight(v36);
  v28 = [v0 view];
  if (v28)
  {
    v29 = v28;
    [v28 safeAreaInsets];
    v31 = v30;

    v32 = Height - v31;
    [v4 setContentInset_];
    [v4 setScrollIndicatorInsets_];
    _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0_0();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2516BFD0C(void *a1)
{
  v1 = a1;
  AuthorizationViewController.viewDidLayoutSubviews()();
}

uint64_t sub_2516BFD54(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_251703084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2517030B4();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v14 = sub_251703364();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  aBlock[4] = sub_2516C0D48;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_23;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a3;

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  MEMORY[0x25307F740](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v21);
}

void sub_2516BFFF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2516BD4EC();
  [*&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationHeaderView_iconImageView] setImage_];
  v4 = sub_2516DE6E0();
  [v4 setHidden_];
}

void sub_2516C0098(void *a1)
{
  v1 = a1;
  sub_2516BE168();
}

void sub_2516C00E0(void *a1)
{
  v1 = a1;
  sub_2516BE170();
}

void sub_2516C0128(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s28HealthExposureNotificationUI27AuthorizationViewControllerC06scrollF9DidScrollyySo08UIScrollF0CF_0();
}

void sub_2516C0188(void *a1)
{
  v1 = a1;
  sub_2516BE2E0();
}

id AuthorizationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void AuthorizationViewController.init(nibName:bundle:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2516C0A5C();
}

void sub_2516C0284(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_2516C0A5C();
}

id AuthorizationViewController.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AuthorizationViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2516C0364(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = &a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)];
  v6 = v5[1];
  sub_2516C0D04(*v5);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);

  v7 = *&a1[*((*v3 & *a1) + 0x78) + 8];

  v8 = *&a1[*((*v3 & *a1) + 0xA0)];
}

id sub_2516C059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = MEMORY[0x277D85000];
  v12 = *v6;
  v13 = *MEMORY[0x277D85000];
  *&v7[*((*MEMORY[0x277D85000] & v12) + 0x80)] = 0;
  v14 = *((*v11 & *v7) + 0x88);
  *&v7[v14] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v7[*((*v11 & *v7) + 0x90)] = 0;
  *&v7[*((*v11 & *v7) + 0x98)] = 0;
  *&v7[*((*v11 & *v7) + 0xA0)] = 0;
  v15 = *((v13 & v12) + 0x58);
  v16 = *((v13 & v12) + 0x50);
  (*(v15 + 24))(v16, v15);
  if (v17)
  {

    (*(v15 + 32))(v16, v15);
    if (v18)
    {

      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v19 = sub_251702F84();
      __swift_project_value_buffer(v19, static Logger.general);
      v20 = sub_251702F64();
      v21 = sub_251703324();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_25167E000, v20, v21, "Ambiguous AuthorizationDisplayable: both detailText and detailTextTemplate are set, will be using detailText", v22, 2u);
        MEMORY[0x2530803C0](v22, -1, -1);
      }
    }
  }

  (*(*(v16 - 8) + 16))(&v7[*((*v11 & *v7) + 0x68)], a1, v16);
  v23 = &v7[*((*v11 & *v7) + 0x78)];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v7[*((*v11 & *v7) + 0x70)] = a4;
  v24 = &v7[*((*v11 & *v7) + 0x60)];
  *v24 = a5;
  *(v24 + 1) = a6;
  v29.receiver = v7;
  v29.super_class = type metadata accessor for AuthorizationViewController();
  return objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2516C08EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2516C0928()
{
  v1 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80)) = 0;
  v2 = *((*v1 & *v0) + 0x88);
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA0)) = 0;
  sub_251703584();
  __break(1u);
}

unint64_t sub_2516C0A90()
{
  result = qword_27F4542C8[0];
  if (!qword_27F4542C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F4542C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationDisplayableStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationDisplayableStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2516C0C44(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2516C0D04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2516C0D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251702EA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_251693E20(a2, a3, 0);
  if (result)
  {
    v12 = result;
    v13 = [result applicationState];
    v14 = [v13 isInstalled];

    if (v14)
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CC5CC8]) initWithRegion_];
      v16 = [objc_opt_self() currentLocale];
      sub_251702E84();

      v17 = sub_251702E74();
      (*(v7 + 8))(v10, v6);
      [v15 setLocale_];

      v18 = [v12 localizedName];
      if (!v18)
      {
        sub_251703164();
        v18 = sub_251703134();
      }

      [v15 setDisplayName_];

      v19 = [objc_allocWithZone(MEMORY[0x277CC5CB8]) initWithRegion_];
      v20 = objc_opt_self();
      v21 = [v20 systemDarkGrayColor];
      sub_251701AB4();

      sub_2516C10C0();
      v22 = sub_2517031F4();

      [v19 setAgencyColor_];

      v23 = [v20 systemWhiteColor];
      sub_251701AB4();

      v24 = sub_2517031F4();

      [v19 setAgencyHeaderTextColor_];

      [v19 setLocalizedConfiguration_];
      [v19 setAgencyHeaderStyle_];

      return v19;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_2516C10C0()
{
  result = qword_28151E850;
  if (!qword_28151E850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151E850);
  }

  return result;
}

id OnboardingRegionNotAvailableViewController.__allocating_init(flow:region:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  ObjectType = swift_getObjectType();

  return sub_2516C1780(a1, a3, a4, a5, a6, v13, ObjectType, a2);
}

id OnboardingRegionNotAvailableViewController.init(flow:region:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_2516C1780(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingRegionNotAvailableViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516C1258();
}

void sub_2516C1258()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id OnboardingRegionNotAvailableViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingRegionNotAvailableViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingRegionNotAvailableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516C1780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_primaryButton;
  *&a6[v16] = [objc_opt_self() boldButton];
  v17 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow];
  *v17 = a1;
  *(v17 + 1) = a8;
  v18 = &a6[OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_region];
  *v18 = a2;
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v20 = sub_251703134();

  v21 = sub_251703134();

  v27.receiver = a6;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, 0, 3, 0xE000000000000000);

  v23 = v22;
  v24 = [v23 headerView];
  LODWORD(v25) = 1036831949;
  [v24 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v23;
}

id sub_2516C19DC(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  if (!a6)
  {
    v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = objc_opt_self();
  v12 = a6;
  v13 = [v11 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 fontDescriptor];

    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v16 = [v15 fontDescriptorWithSymbolicTraits_];

    v15 = v16;
    goto LABEL_7;
  }

  v15 = 0;
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((a3 & 1) == 0)
  {
    v17 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454388, &qword_251708F50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    v19 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454390, &qword_251708F58);
    v20 = swift_initStackObject();
    v21 = MEMORY[0x277D74430];
    *(v20 + 16) = xmmword_251708520;
    v22 = *v21;
    *(v20 + 32) = *v21;
    *(v20 + 40) = a2;
    v23 = v19;
    v24 = v22;
    v25 = sub_251698BAC(v20);
    swift_setDeallocating();
    sub_25168B718(v20 + 32, &qword_27F454398, &qword_251708F60);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543A0, &qword_251708F68);
    *(inited + 40) = v25;
    sub_251698C9C(inited);
    swift_setDeallocating();
    sub_25168B718(inited + 32, &qword_27F453F30, &qword_2517083D8);
    if (!v15)
    {

      a5 = v17;
      goto LABEL_18;
    }

    type metadata accessor for AttributeName(0);
    sub_2516C1F38();
    v26 = sub_2517030F4();

    v27 = [v15 fontDescriptorByAddingAttributes_];

    v15 = v27;
    a5 = v17;
  }

  if (a5)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    v28 = [v15 fontDescriptorWithDesign_];

    v15 = v28;
  }

  if (v15)
  {
    v29 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
    goto LABEL_23;
  }

LABEL_18:
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v30 = sub_251702F84();
  __swift_project_value_buffer(v30, static Logger.general);
  v31 = a1;
  v32 = sub_251702F64();
  v33 = sub_251703334();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v47 = a5;
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 136315906;
    v36 = sub_251703164();
    v38 = sub_251693FCC(v36, v37, v49);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454380, &qword_251708F48);
    v39 = sub_251703194();
    v41 = sub_251693FCC(v39, v40, v49);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    type metadata accessor for SymbolicTraits(0);
    v42 = sub_251703194();
    v44 = sub_251693FCC(v42, v43, v49);

    *(v34 + 24) = v44;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v47 & 1;
    _os_log_impl(&dword_25167E000, v32, v33, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %{BOOL}d. Using only the text style", v34, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x2530803C0](v35, -1, -1);
    MEMORY[0x2530803C0](v34, -1, -1);
  }

  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v29 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
LABEL_23:
  v45 = v29;

  return v45;
}

unint64_t sub_2516C1F38()
{
  result = qword_28151E8C8;
  if (!qword_28151E8C8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E8C8);
  }

  return result;
}

id sub_2516C1F94(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543B0, &qword_251709078);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251708520;
      v8 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_251703164();
      v4 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v9;
      *(inited + 48) = 0x64616F6C6E776F44;
      v6 = -2;
      v7 = 0xEF64656C69614620;
      goto LABEL_9;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    v12 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_251703164();
    v4 = inited + 32;
    v7 = 0x800000025170E7E0;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v13;
    *(inited + 48) = 0xD000000000000015;
LABEL_8:
    v6 = -2;
    goto LABEL_9;
  }

  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708520;
    v10 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_251703164();
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    v7 = 0x800000025170E800;
    *(inited + 40) = v11;
    *(inited + 48) = 0xD000000000000011;
    goto LABEL_8;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251708520;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_251703164();
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v5;
  *(inited + 48) = 0x6E776F6E6B6E55;
  v6 = -1;
  v7 = 0xE700000000000000;
LABEL_9:
  *(inited + 56) = v7;
  sub_251699708(inited);
  swift_setDeallocating();
  sub_25168B718(v4, &qword_27F453F08, &qword_2517083B0);
  v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v15 = sub_251703134();
  v16 = sub_2517030F4();

  v17 = [v14 initWithDomain:v15 code:v6 userInfo:v16];

  return v17;
}

uint64_t AppStoreAssetError.hashValue.getter(unsigned __int8 a1)
{
  sub_2517036E4();
  MEMORY[0x25307FAC0](a1);
  return sub_251703724();
}

uint64_t sub_2516C22BC(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    return a3(0, 0, 1);
  }

  v5 = [a1 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v6 = sub_251703214();

  if (v6 >> 62)
  {
    result = sub_251703474();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25307F910](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 displayName];

  if (!v10)
  {
    return a3(0, 0, 1);
  }

  v11 = sub_251703164();
  v13 = v12;

  if (a2)
  {
LABEL_9:

    return a3(0, 0, 1);
  }

  a3(v11, v13, 0);
}

void sub_2516C2438(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2516C24C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_251702DA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    a3(0, 1);
    return;
  }

  v21 = v18;
  v36 = a1;
  v22 = [v36 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v23 = sub_251703214();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_21:
    a1 = v16;
LABEL_22:

    goto LABEL_23;
  }

  if (!sub_251703474())
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v23 & 0xC000000000000001) != 0)
  {
    a1 = v16;
    v24 = MEMORY[0x25307F910](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    a1 = v16;
    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = [v25 artwork];

  if (!v26)
  {
LABEL_23:
    (*(a1 + 56))(v14, 1, 1, v21);
LABEL_24:
    sub_25168B718(v14, &qword_27F453E10, &unk_251708160);
    a3(1, 1);

    return;
  }

  sub_25168CD90(0, &qword_27F4543C0, 0x277CEE520);
  v23 = sub_251703214();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_27:
  if (!sub_251703474())
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x25307F910](0, v23);
LABEL_15:
    v28 = v27;

    v29 = [v28 URLWithHeight:80 width:80 cropStyle:*MEMORY[0x277CEE1C8] format:*MEMORY[0x277CEE1D8]];

    if (v29)
    {
      sub_251702D84();

      (*(a1 + 56))(v12, 0, 1, v21);
    }

    else
    {
      (*(a1 + 56))(v12, 1, 1, v21);
    }

    sub_2516C4704(v12, v14);
    if ((*(a1 + 48))(v14, 1, v21) != 1)
    {
      (*(a1 + 32))(v20, v14, v21);
      v30 = [objc_opt_self() sharedSession];
      v31 = sub_251702D74();
      v32 = swift_allocObject();
      *(v32 + 16) = a3;
      *(v32 + 24) = a4;
      aBlock[4] = sub_2516C4774;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2516DA110;
      aBlock[3] = &block_descriptor_34;
      v33 = _Block_copy(aBlock);

      v34 = [v30 dataTaskWithURL:v31 completionHandler:v33];
      _Block_release(v33);

      [v34 resume];
      (*(a1 + 8))(v20, v21);
      return;
    }

    goto LABEL_24;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v23 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_2516C29F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a2 >> 60 == 15 || a4 != 0)
  {
    return a5(2, 1);
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_2516C477C(a1, a2);
  sub_2516C477C(a1, a2);
  v11 = sub_251702DB4();
  v12 = [v10 initWithData_];

  sub_2516C47D0(a1, a2);
  if (v12)
  {
    v13 = v12;
    a5(v12, 0);
  }

  else
  {
    a5(3, 1);
  }

  return sub_2516C47D0(a1, a2);
}

void sub_2516C2B18(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 || !a1)
  {
    a3(0, 1);
    return;
  }

  v8 = [a1 allItems];
  sub_25168CD90(0, &qword_27F4543B8, 0x277CEE518);
  v9 = sub_251703214();

  if (v9 >> 62)
  {
LABEL_28:
    v10 = sub_251703474();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_29:

LABEL_30:
    a3(1, 1);
    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_5:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x25307F910](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = [v12 bundleIdentifier];
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = a6;
    v17 = v15;
    v18 = sub_251703164();
    v20 = v19;

    if (v18 == a5 && v20 == v16)
    {
      break;
    }

    a6 = v16;
    v22 = sub_251703624();

    if (v22)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_29;
    }
  }

LABEL_21:

  v23 = [v13 iTunesStoreIdentifier];
  if (!v23)
  {

    goto LABEL_30;
  }

  v24 = v23;
  v26 = v23;
  a3(v24, 0);
}

void sub_2516C2D90(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = sub_2516C1F94(a1);
    a4(0, 0, v5);
  }

  else
  {
    a4(a1, a2, 0);
  }
}

void sub_2516C2E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_251703134();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_2516C2EA4(uint64_t a1, char a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = sub_2516C1F94(a1);
    a3(0, v4);
  }

  else
  {
    a3(a1, 0);
  }
}

uint64_t sub_2516C2F50(int a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_251703164();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  a7(v10, v12, a6, v13);
}

void static AppStoreAssetManager.accessAppFor(_:presentingViewController:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (!v7)
  {
    v14 = 0;
LABEL_7:
    a3(v14);
    return;
  }

  v8 = v4;
  v10 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v12 = v11;
      v13 = sub_251703134();
      [v12 openApplicationWithBundleID_];
    }

    v14 = 1;
    goto LABEL_7;
  }

  v15 = [a2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setUserInteractionEnabled_];

    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = v8;
    v17[4] = a3;
    v17[5] = a4;
    v18 = a2;

    sub_2516C39D0(0, 0, v10, v7);
    v20 = v19;
    v21 = swift_allocObject();
    v21[2] = sub_2516C403C;
    v21[3] = v17;
    v21[4] = v10;
    v21[5] = v7;
    v23[4] = sub_2516C4040;
    v23[5] = v21;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2516C2438;
    v23[3] = &block_descriptor_7;
    v22 = _Block_copy(v23);

    [v20 addFinishBlock_];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2516C3228(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_251703084();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2517030B4();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v28 = sub_251703364();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2 & 1;
  v19 = v26;
  v20 = v27;
  *(v18 + 40) = a4;
  *(v18 + 48) = v19;
  *(v18 + 56) = v20;
  aBlock[4] = sub_2516C4844;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_40;
  v21 = _Block_copy(aBlock);
  v22 = a3;
  sub_2516C4858(a1, a2 & 1);

  sub_2517030A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  v23 = v28;
  MEMORY[0x25307F740](0, v17, v13, v21);
  _Block_release(v21);

  (*(v30 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v29);
}

id sub_2516C34F8(void *a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result setUserInteractionEnabled_];

    if (a3)
    {
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v11 = sub_251702F84();
      __swift_project_value_buffer(v11, static Logger.general);
      v12 = sub_251702F64();
      v13 = sub_251703324();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = sub_251703194();
        v18 = sub_251693FCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_25167E000, v12, v13, "Failed to fetch app identifier: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x2530803C0](v15, -1, -1);
        MEMORY[0x2530803C0](v14, -1, -1);
      }

      v19 = 0;
    }

    else
    {
      sub_2516C44E8(a2, a1);
      v19 = 1;
    }

    return a5(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static AppStoreAssetManager.openAppStore(from:)()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_251703134();
    [v1 openApplicationWithBundleID_];
  }

  else
  {
    __break(1u);
  }
}

id AppStoreAssetManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreAssetManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreAssetManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppStoreAssetManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreAssetManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2516C39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 bagKeySet];
  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v9;
  v10 = [v8 bagSubProfile];
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [v8 bagSubProfileVersion];
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  [objc_opt_self() registerBagKeySet:v4 forProfile:v11 profileVersion:v12];

  v14 = [v8 bagSubProfile];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v14;
  v15 = [v8 bagSubProfileVersion];
  if (!v15)
  {
LABEL_24:

    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [objc_opt_self() bagForProfile:v4 profileVersion:v15];

  v18 = *MEMORY[0x277CEE1E8];
  sub_251703164();
  v19 = objc_allocWithZone(MEMORY[0x277CEE510]);
  v20 = v17;
  v21 = sub_251703134();
  v22 = sub_251703134();

  v23 = [v19 initWithBag:v20 caller:v21 keyProfile:v22];

  v37[0] = a1;
  v37[1] = a2;

  if (a2)
  {

    v24 = MEMORY[0x277D84F90];
    v25 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2516E31D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_2516E31D0((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    v28 = &v24[16 * v27];
    *(v28 + 4) = a1;
    *(v28 + 5) = a2;
  }

  else
  {
    v25 = a3;
  }

  sub_25168B718(v37, &qword_27F4543C8, &qword_251709080);
  v36[0] = v25;
  v36[1] = a4;

  if (a4)
  {

    v29 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_2516E31D0(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_2516E31D0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[16 * v31];
    *(v32 + 4) = v25;
    *(v32 + 5) = a4;
  }

  sub_25168B718(v36, &qword_27F4543C8, &qword_251709080);
  v33 = sub_2517031F4();

  v34 = sub_2517031F4();

  [v23 performLookupWithBundleIdentifiers:v33 itemIdentifiers:v34];
}

void _s28HealthExposureNotificationUI20AppStoreAssetManagerC05fetchg3ForE8BundleId_10completionySS_ySo7UIImageCSg_So7NSErrorCSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2516C39D0(0, 0, a1, a2);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516C0D1C;
  *(v11 + 24) = v8;
  v13[4] = sub_2516C0D28;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C2438;
  v13[3] = &block_descriptor_58;
  v12 = _Block_copy(v13);

  [v10 addFinishBlock_];
  _Block_release(v12);
}

void _s28HealthExposureNotificationUI20AppStoreAssetManagerC05fetchg7NameForE8BundleId_10completionySS_ySSSg_So7NSErrorCSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2516C39D0(0, 0, a1, a2);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2516C4864;
  *(v11 + 24) = v8;
  v13[4] = sub_2516C4870;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C2438;
  v13[3] = &block_descriptor_49_0;
  v12 = _Block_copy(v13);

  [v10 addFinishBlock_];
  _Block_release(v12);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2516C408C()
{
  result = qword_27F4543A8;
  if (!qword_27F4543A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4543A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreAssetError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreAssetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2516C4230(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (v9)
  {
    v10 = *(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    _Block_copy(a4);
    if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) == 0)
    {
      v14 = [a2 view];
      if (v14)
      {
        v15 = v14;
        [v14 setUserInteractionEnabled_];

        v16 = swift_allocObject();
        v16[2] = a2;
        v16[3] = a3;
        v16[4] = sub_2516C464C;
        v16[5] = v8;
        v17 = a2;

        sub_2516C39D0(0, 0, v10, v9);
        v19 = v18;
        v20 = swift_allocObject();
        v20[2] = sub_2516C48A4;
        v20[3] = v16;
        v20[4] = v10;
        v20[5] = v9;
        v22[4] = sub_2516C488C;
        v22[5] = v20;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 1107296256;
        v22[2] = sub_2516C2438;
        v22[3] = &block_descriptor_22;
        v21 = _Block_copy(v22);

        [v19 addFinishBlock_];
        _Block_release(v21);
      }

      else
      {
        _Block_release(a4);
        __break(1u);
      }

      return;
    }

    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v12 = v11;
      v13 = sub_251703134();
      [v12 openApplicationWithBundleID_];
    }

    a4[2](a4, 1);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4, 0);
  }
}

void sub_2516C44E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CDD3A8]) initWithNibName:0 bundle:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4543B0, &qword_251709078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251708520;
  v6 = *MEMORY[0x277CDD450];
  *(inited + 32) = sub_251703164();
  *(inited + 40) = v7;
  *(inited + 72) = sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
  *(inited + 48) = a1;
  v8 = a1;
  sub_251699708(inited);
  swift_setDeallocating();
  sub_25168B718(inited + 32, &qword_27F453F08, &qword_2517083B0);
  v9 = sub_2517030F4();

  [v4 loadProductWithParameters:v9 completionBlock:0];

  [a2 presentViewController:v4 animated:1 completion:0];
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2516C4704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516C477C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2516C47D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2516C47E4(a1, a2);
  }

  return a1;
}

uint64_t sub_2516C47E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2516C4838(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_2516C4858(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t *ENManagerAdapter.defaultAdapter.unsafeMutableAddressor()
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  return &static ENManagerAdapter.defaultAdapter;
}

uint64_t ENManagerAdapter.exposureNotificationStatus.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.exposureNotificationStatus.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.isExposureLoggingDataPresent.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.isExposureLoggingDataPresent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.areAvailabilityAlertsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.areAvailabilityAlertsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ENManagerAdapter.isAvailabilityAlertsSwitchEnabled.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENManagerAdapter.isAvailabilityAlertsSwitchEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2516C4F44()
{
  result = [objc_allocWithZone(type metadata accessor for ENManagerAdapter()) init];
  static ENManagerAdapter.defaultAdapter = result;
  return result;
}

id ENManagerAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ENManagerAdapter.defaultAdapter.getter()
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ENManagerAdapter.defaultAdapter;

  return v0;
}

void static ENManagerAdapter.defaultAdapter.setter(uint64_t a1)
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static ENManagerAdapter.defaultAdapter;
  static ENManagerAdapter.defaultAdapter = a1;
}

uint64_t (*static ENManagerAdapter.defaultAdapter.modify())()
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

char *ENManagerAdapter.init()()
{
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus] = 0;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation] = 0;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent] = 0;
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled] = 0;
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CC5C90]) init];
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager] = v1;
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup] = dispatch_group_create();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ENManagerAdapter();
  v2 = objc_msgSendSuper2(&v14, sel_init);
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager;
  v4 = *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager];
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v5 = v2;
  v6 = v4;
  v7 = sub_251703364();
  [v6 setDispatchQueue_];

  dispatch_group_enter(*&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup]);
  v8 = *&v2[v3];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v13[4] = sub_2516C5750;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C5814;
  v13[3] = &block_descriptor_8;
  v10 = _Block_copy(v13);
  v11 = v8;

  [v11 activateWithCompletionHandler_];
  _Block_release(v10);

  return v5;
}

void sub_2516C55D0(int a1, char *a2)
{
  v3 = [a2 manager];
  v4 = [v3 exposureNotificationStatus];

  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  *&a2[v5] = v4;
  dispatch_group_leave(*&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup]);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = nullsub_1;
  v6[4] = 0;
  v7 = a2;
  sub_2516C59C8(sub_2516CFD28, v6);

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_251702D54();

  v9 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation];
  *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation] = v8;
}

void sub_2516C5758()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong manager];
    v3 = [v2 exposureNotificationStatus];

    v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
    swift_beginAccess();
    v5 = *&v1[v4];
    *&v1[v4] = v3;
    [v1 notifyChangeObserversForChangeFrom:v5 to:v3];
  }
}

void sub_2516C5814(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ENManagerAdapter.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusObservation];
  if (v2)
  {
    v3 = v2;
    sub_251702CB4();
  }

  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_manager] invalidate];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ENManagerAdapter();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_2516C59C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_251703084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2517030B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_activationGroup);
  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v15 = sub_251703364();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_415;
  v16 = _Block_copy(aBlock);

  sub_2517030A4();
  v18[1] = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  sub_251703434();
  sub_251703344();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_2516C5C98(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v38 = sub_251703084();
  v41 = *(v38 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2517030B4();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = [a1 manager];
  v12 = sub_251703134();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  v47 = sub_2516CFA54;
  v48 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2516C623C;
  v46 = &block_descriptor_380;
  v14 = _Block_copy(&aBlock);
  v15 = v10;
  v16 = a1;

  [v11 getInfoForKey:v12 completion:v14];
  _Block_release(v14);

  dispatch_group_enter(v15);
  v17 = [v16 manager];
  v18 = sub_251703134();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v16;
  v47 = sub_2516CFA78;
  v48 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2516C623C;
  v46 = &block_descriptor_386;
  v20 = _Block_copy(&aBlock);
  v21 = v15;
  v22 = v16;

  [v17 getInfoForKey:v18 completion:v20];
  _Block_release(v20);

  dispatch_group_enter(v21);
  v23 = [v22 manager];
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  v47 = sub_2516CFA9C;
  v48 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2516C6470;
  v46 = &block_descriptor_392;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v23 getRegionMonitorEnabledWithCompletionHandler_];
  _Block_release(v25);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v28 = sub_251703364();
  v29 = swift_allocObject();
  v30 = v37;
  *(v29 + 16) = v36;
  *(v29 + 24) = v30;
  v47 = sub_25169E198;
  v48 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_251693A80;
  v46 = &block_descriptor_398;
  v31 = _Block_copy(&aBlock);

  sub_2517030A4();
  v42 = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v32 = v35;
  v33 = v38;
  sub_251703434();
  sub_251703344();
  _Block_release(v31);

  (*(v41 + 8))(v32, v33);
  (*(v39 + 8))(v9, v40);
}

uint64_t sub_2516C623C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_251699CD8(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_25168B718(v11, &qword_27F454430, qword_251709108);
}

void sub_2516C62EC(uint64_t a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t *a5)
{
  if (!a2)
  {
    sub_251699D18(a1, v11, &qword_27F454430, qword_251709108);
    if (v12)
    {
      if (swift_dynamicCast())
      {
        v8 = v10;
LABEL_10:
        v9 = *a5;
        swift_beginAccess();
        *(a4 + v9) = v8;
        dispatch_group_leave(group);
        return;
      }
    }

    else
    {
      sub_25168B718(v11, &qword_27F454430, qword_251709108);
    }

    v8 = 0;
    goto LABEL_10;
  }

  dispatch_group_leave(group);
}

void sub_2516C63E0(char a1, uint64_t a2, dispatch_group_t group, uint64_t a4)
{
  if (a2)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
    swift_beginAccess();
    *(a4 + v6) = a1 & 1;
    dispatch_group_leave(group);
  }
}

void sub_2516C6470(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t ENManagerAdapter.onboardingDidStart(forRegion:source:)(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = v2;
  v5[4] = a1;
  v6 = v2;
  v7 = a1;
  sub_2516C59C8(sub_2516AB45C, v5);
}

void sub_2516C6658(int a1, id a2, uint64_t a3)
{
  v4 = [a2 manager];
  v5 = sub_251703134();

  v7[4] = sub_2516C67E4;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2516C5814;
  v7[3] = &block_descriptor_412;
  v6 = _Block_copy(v7);
  [v4 onboardingDidStartForRegion:a3 withSource:v5 completion:v6];
  _Block_release(v6);
}

uint64_t ENManagerAdapter.didEnterLegalConsentPage(forRegion:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  sub_2516C59C8(sub_2516C69F4, v3);
}

void sub_2516C6924(void *a1, uint64_t a2)
{
  v3 = [a1 manager];
  v5[4] = sub_2516C69FC;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2516C5814;
  v5[3] = &block_descriptor_361;
  v4 = _Block_copy(v5);
  [v3 didEnterLegalConsentPage:a2 completionHandler:v4];
  _Block_release(v4);
}

void sub_2516C6A08(void *a1, const char *a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.general);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2516C6C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C6D78;
  v9[3] = &block_descriptor_409;
  v8 = _Block_copy(v9);

  [v7 fetchSubdivisionsForCountry:a2 completion:v8];
  _Block_release(v8);
}

uint64_t sub_2516C6D78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_251703214();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_2516C6E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_2517031F4();
    if (a2)
    {
LABEL_3:
      v6 = sub_251702D34();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_2516C6F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C5814;
  v9[3] = &block_descriptor_358;
  v8 = _Block_copy(v9);

  [v7 setActiveEntityWithRegion:a2 completion:v8];
  _Block_release(v8);
}

void sub_2516C7030(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_251702D34();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t ENManagerAdapter.setActivePhaseOneApp(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = v4;

  sub_2516C59C8(sub_2516C7238, v9);
}

void sub_2516C713C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 manager];
  v8 = sub_251703134();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516C5814;
  v10[3] = &block_descriptor_355;
  v9 = _Block_copy(v10);

  [v7 setActiveEntityWithAppBundleID:v8 completion:v9];
  _Block_release(v9);
}

void sub_2516C7370(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF95C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C2438;
  v8[3] = &block_descriptor_352;
  v7 = _Block_copy(v8);

  [v5 getLastExposureNotificationWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_2516C74B4(uint64_t a1, uint64_t a2)
{
  v5 = dispatch_group_create();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v8;
  v10[6] = v9;
  v10[7] = a1;
  v10[8] = a2;
  v11 = v5;
  v12 = v2;

  sub_2516C59C8(sub_2516CFB4C, v10);
}

uint64_t sub_2516C75F8(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a5;
  v42 = a4;
  v50 = sub_251703084();
  v53 = *(v50 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2517030B4();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_251702EA4();
  v15 = *(v43 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v43);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(a1);
  v19 = [a2 manager];
  v20 = swift_allocObject();
  v44 = a3;
  *(v20 + 16) = a3;
  *(v20 + 24) = a1;
  v59 = sub_2516CFB60;
  v60 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_2516C7C2C;
  v58 = &block_descriptor_436;
  v21 = _Block_copy(&aBlock);

  v22 = a1;

  [v19 allRegionConfigurationsWithCompletion_];
  _Block_release(v21);

  dispatch_group_enter(v22);
  v23 = [a2 manager];
  v24 = swift_allocObject();
  v25 = v42;
  *(v24 + 16) = v42;
  *(v24 + 24) = v22;
  v59 = sub_2516CFC3C;
  v60 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_2516C7C40;
  v58 = &block_descriptor_442;
  v26 = _Block_copy(&aBlock);
  v27 = v22;

  [v23 allRegionServerConfigurationsWithCompletion_];
  _Block_release(v26);

  dispatch_group_enter(v27);
  v28 = [a2 manager];
  sub_251702E94();
  v29 = sub_251702E74();
  (*(v15 + 8))(v18, v43);
  v30 = swift_allocObject();
  v31 = v45;
  *(v30 + 16) = v45;
  *(v30 + 24) = v27;
  v59 = sub_2516CFC3C;
  v60 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_2516C7D74;
  v58 = &block_descriptor_448;
  v32 = _Block_copy(&aBlock);
  v27;

  [v28 allAgencyConfigurationsForLocale:v29 withCompletion:v32];
  _Block_release(v32);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v33 = sub_251703364();
  v34 = swift_allocObject();
  v34[2] = v44;
  v34[3] = v25;
  v35 = v47;
  v36 = v48;
  v34[4] = v31;
  v34[5] = v35;
  v34[6] = v36;
  v59 = sub_2516CFB7C;
  v60 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_251693A80;
  v58 = &block_descriptor_454;
  v37 = _Block_copy(&aBlock);

  v38 = v46;
  sub_2517030A4();
  v54 = MEMORY[0x277D84F90];
  sub_2516CFAA4(&qword_28151E980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v40 = v49;
  v39 = v50;
  sub_251703434();
  sub_251703344();
  _Block_release(v37);

  (*(v53 + 8))(v40, v39);
  (*(v51 + 8))(v38, v52);
}

uint64_t sub_2516C7C54(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_25168CD90(0, a4, a5);
    v6 = sub_251703214();
  }

  v9 = a3;
  v8(v6, a3);
}

void sub_2516C7CF0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = v6;

  dispatch_group_leave(a4);
}

uint64_t sub_2516C7D88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  swift_beginAccess();
  v8 = *(a1 + 16);

  v9 = sub_2516C8304(MEMORY[0x277D84F98], v8, (a2 + 16), (a3 + 16));

  a4(v9);
}

void sub_2516C7E2C(uint64_t *a1, id *a2, uint64_t *a3, uint64_t *a4)
{
  v48 = a1;
  v52 = *a2;
  swift_beginAccess();
  v5 = *a3;
  if (*a3 >> 62)
  {
LABEL_43:
    v6 = sub_251703474();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25307F910](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      v53 = v8;
      v10 = [v8 region];
      v11 = [v10 regionCode];

      v12 = sub_251703164();
      v14 = v13;

      v15 = [v52 region];
      v16 = [v15 regionCode];

      v17 = sub_251703164();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {
        break;
      }

      v20 = sub_251703624();

      if (v20)
      {
        goto LABEL_18;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_16;
      }
    }

LABEL_18:

    swift_beginAccess();
    v21 = *a4;
    if (*a4 >> 62)
    {
      if (v21 < 0)
      {
        v47 = *a4;
      }

      v22 = sub_251703474();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v23 = 0;
      a4 = (v21 & 0xFFFFFFFFFFFFFF8);
      v49 = v22;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x25307F910](v23, v21);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v24 = *(v21 + 8 * v23 + 32);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v51 = v24;
        v26 = [v24 region];
        v27 = [v26 regionCode];

        v28 = sub_251703164();
        v30 = v29;

        v31 = [v52 region];
        v32 = [v31 regionCode];

        v5 = sub_251703164();
        v34 = v33;

        if (v28 == v5 && v30 == v34)
        {
          break;
        }

        v35 = sub_251703624();

        if (v35)
        {
          goto LABEL_39;
        }

        ++v23;
        if (v25 == v49)
        {
          goto LABEL_33;
        }
      }

LABEL_39:

      v42 = v51;
    }

    else
    {
LABEL_33:

      v36 = [v52 region];
      v37 = [v53 appBundleID];
      if (v37)
      {
        v38 = v37;
        v39 = sub_251703164();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = sub_2516C0D88(v36, v39, v41);

      if (!v42)
      {

        return;
      }
    }

    v43 = [v52 region];
    v44 = v52;
    v45 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v48;
    sub_2516CEBB4(v44, v53, v42, v43, isUniquelyReferenced_nonNull_native);

    *v48 = v54;
  }

  else
  {
LABEL_16:
  }
}

id sub_2516C8304(id result, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25307F910](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      sub_2516C7E2C(&v14, &v13, a3, a4);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = sub_251703474();
  }

  return result;
}

uint64_t ENManagerAdapter.fetchAgencyModel(for:reason:completionHandler:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_251703134();
  v10 = [objc_opt_self() regionWithCode_];

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v12 = v5;
  v13 = v10;

  sub_2516C59C8(sub_2516B9B04, v11);
}

void sub_2516C8508(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 manager];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v13[4] = sub_2516CF950;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C8D9C;
  v13[3] = &block_descriptor_346;
  v11 = _Block_copy(v13);

  v12 = a2;

  [v9 fetchConfigurationsForRegion:v12 fetchReason:a3 completion:v11];
  _Block_release(v11);
}

void sub_2516C8628(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  if (a1)
  {
    v37 = MEMORY[0x277D84F90];
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251703474())
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25307F910](v10, a1);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_17;
          }

          v12 = *(a1 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v36 = v12;
        sub_2516C8958(&v36, a2, a3, &v35);

        if (v35)
        {
          MEMORY[0x25307F5B0]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_251703224();
          }

          sub_251703244();
          v11 = v37;
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_20:
    if (v11 >> 62)
    {
      goto LABEL_39;
    }

    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_22:
      v16 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x25307F910](v16, v11);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:

LABEL_37:

            v29 = a3;
            goto LABEL_41;
          }
        }

        else
        {
          if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_39:
            v15 = sub_251703474();
            if (!v15)
            {
              break;
            }

            goto LABEL_22;
          }

          v17 = *(v11 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_35;
          }
        }

        a3 = v17;
        v19 = [*&v17[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] regionCode];
        v20 = sub_251703164();
        v22 = v21;

        v23 = [a7 regionCode];
        v24 = sub_251703164();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
          goto LABEL_36;
        }

        v28 = sub_251703624();

        if (v28)
        {
          goto LABEL_37;
        }

        ++v16;
      }

      while (v18 != v15);
    }

    v29 = 0;
LABEL_41:
    v34 = v29;
    a5();
  }

  else
  {
    (a5)(0, 0);
  }
}

id sub_2516C8958@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_38;
  }

  v5 = a2;
  v48 = *a1;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_37:
    v7 = sub_251703474();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_38:
    result = 0;
    goto LABEL_47;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_4:
  a4 = 0;
  v45 = v5;
  v46 = v5 & 0xC000000000000001;
  while (!v46)
  {
    if (a4 >= *(v6 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v8 = *(v5 + 8 * a4 + 32);
    v9 = (a4 + 1);
    if (__OFADD__(a4, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v49 = v8;
    v10 = [v8 region];
    v11 = [v10 regionCode];

    v12 = sub_251703164();
    v14 = v13;

    v15 = [v48 region];
    v16 = [v15 regionCode];

    v17 = sub_251703164();
    v19 = v18;

    if (v12 == v17 && v14 == v19)
    {
      goto LABEL_16;
    }

    v20 = sub_251703624();

    if (v20)
    {
      goto LABEL_17;
    }

    ++a4;
    v5 = v45;
    if (v9 == v7)
    {
LABEL_32:
      result = 0;
      a4 = v43;
      goto LABEL_47;
    }
  }

  v8 = MEMORY[0x25307F910](a4, v5);
  v9 = (a4 + 1);
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
LABEL_16:

LABEL_17:
  if (a3)
  {
    v5 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      v6 = sub_251703474();
      if (v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_20:
        a4 = 0;
        while (1)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x25307F910](a4, a3);
            v22 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (a4 >= *(v5 + 16))
            {
              goto LABEL_36;
            }

            v21 = *(a3 + 8 * a4 + 32);
            v22 = (a4 + 1);
            if (__OFADD__(a4, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          v47 = v21;
          v23 = [v21 region];
          v24 = [v23 regionCode];

          v25 = sub_251703164();
          v27 = v26;

          v28 = [v48 region];
          v29 = [v28 regionCode];

          v30 = sub_251703164();
          v32 = v31;

          if (v25 == v30 && v27 == v32)
          {
            break;
          }

          v33 = sub_251703624();

          if (v33)
          {
            goto LABEL_34;
          }

          ++a4;
          v5 = a3 & 0xFFFFFFFFFFFFFF8;
          if (v22 == v6)
          {
            goto LABEL_40;
          }
        }

LABEL_34:
        a4 = v43;
        v35 = v49;
        v36 = v47;
        goto LABEL_45;
      }
    }
  }

LABEL_40:
  v37 = [v48 region];
  v38 = [v49 appBundleID];
  if (v38)
  {
    v39 = v38;
    v40 = sub_251703164();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  a4 = v43;
  v36 = sub_2516C0D88(v37, v40, v42);

  if (v36)
  {
    v35 = v49;
LABEL_45:
    result = sub_251694F00(v48, v35, v36, 0);
    goto LABEL_47;
  }

  result = 0;
LABEL_47:
  *a4 = result;
  return result;
}

uint64_t sub_2516C8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_25168CD90(0, &qword_28151E918, 0x277CC5CA8);
    v8 = sub_251703214();
  }

  if (a3)
  {
    sub_25168CD90(0, &qword_28151E8D0, 0x277CC5CD8);
    a3 = sub_251703214();
  }

  if (a4)
  {
    sub_25168CD90(0, &qword_28151E8A8, 0x277CC5CB8);
    a4 = sub_251703214();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

void sub_2516C8FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251702D34();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_2516C9084(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2516C9158;
  v7[3] = &block_descriptor_418;
  v6 = _Block_copy(v7);

  [v5 getEntitiesWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2516C9158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a3)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    v9 = sub_251703214();
  }

  if (a4)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    a4 = sub_251703214();
  }

  v13 = a2;
  v14 = a5;
  v15 = a6;
  v12(a2, v9, a4, a5, a6);
}

void sub_2516C92AC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  if (a2)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    v10 = sub_2517031F4();
  }

  if (a3)
  {
    sub_25168CD90(0, &qword_28151E878, 0x277CC5C10);
    a3 = sub_2517031F4();
  }

  if (a5)
  {
    v12 = sub_251702D34();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a6 + 16))(a6, a1, v10, a3, a4);
}

void sub_2516C93C8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251703474())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25307F910](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8];
      if (v13)
      {
        v18 = v10;
        v14 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId] == a3 && v13 == a4;
        if (v14 || (v15 = sub_251703624(), v11 = v18, (v15 & 1) != 0))
        {

          v16 = v18;
          goto LABEL_22;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v16 = 0;
LABEL_22:
  v19 = v16;
  a1();
}

uint64_t sub_2516C9594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  sub_2516C59C8(a6, v11);
}

void sub_2516C9628(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  v9 = v8;
  v21 = a2;
  v22 = a1;
  if (v8 >> 62)
  {
LABEL_20:
    v10 = sub_251703474();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25307F910](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v20 = v23;
            goto LABEL_22;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v11 + 32);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_16;
          }
        }

        v23 = v12;
        v14 = [*&v12[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] regionCode];
        v15 = sub_251703164();
        v17 = v16;

        if (v15 == a3 && v17 == a4)
        {
          goto LABEL_17;
        }

        v19 = sub_251703624();

        if (v19)
        {
          goto LABEL_18;
        }

        ++v11;
      }

      while (v13 != v10);
    }
  }

  v20 = 0;
LABEL_22:
  v24 = v20;
  v22();
}

void sub_2516C9828(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_251703164();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = v15;
  v16[4] = v12;
  v16[5] = v14;
  v17 = a1;

  sub_2516C59C8(a8, v16);
}

void sub_2516C9930(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF908;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C9B84;
  v8[3] = &block_descriptor_340;
  v7 = _Block_copy(v8);

  [v5 getRegionVisitHistoryWithCompletion_];
  _Block_release(v7);
}

unint64_t sub_2516C9A38(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!result)
  {
    return a3(0, 0);
  }

  v4 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    return a3(0, 0);
  }

  v15 = result;
  v5 = sub_251703474();
  result = v15;
  if (!v5)
  {
    return a3(0, 0);
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x25307F910](v7, result);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= *(v4 + 16))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(result + 8 * v7 + 32);
LABEL_9:
  v9 = v8;
  v10 = [v8 region];
  v11 = [v10 regionCode];

  v12 = sub_251703164();
  v14 = v13;

  a3(v12, v14);
}

void sub_2516C9BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_251703134();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void sub_2516C9C50(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 manager];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2516CF8AC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2516C7C2C;
  v8[3] = &block_descriptor_334;
  v7 = _Block_copy(v8);

  [v5 allRegionConfigurationsWithCompletion_];
  _Block_release(v7);
}

void sub_2516C9D94(uint64_t a1, uint64_t a2)
{
  sub_25168CD90(0, &qword_28151E918, 0x277CC5CA8);
  v3 = sub_2517031F4();
  (*(a2 + 16))(a2, v3);
}

uint64_t ENManagerAdapter.setShareAnalytics(_:region:version:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  *(v13 + 40) = v6;
  *(v13 + 48) = a2;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6;

  v14 = v6;
  v15 = a2;

  sub_2516C59C8(sub_2516CA030, v13);
}

void sub_2516C9ED0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(MEMORY[0x277CC5CF0]);
  v13 = sub_251703134();
  v14 = [v12 initWithConsentVersion_];

  if (a3)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v14 setDifferentialPrivacyConsent_];
  v16 = [a4 manager];
  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2516C5814;
  v18[3] = &block_descriptor_328;
  v17 = _Block_copy(v18);

  [v16 setRegionUserConsent:v14 region:a5 completionHandler:v17];
  _Block_release(v17);
}

void sub_2516CA1E8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251702D34();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t ENManagerAdapter.setTravelStatus(_:region:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = v4;
  v11 = a2;

  sub_2516C59C8(sub_2516CA3EC, v9);
}

void sub_2516CA300(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 manager];
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2516C5814;
  v11[3] = &block_descriptor_322;
  v10 = _Block_copy(v11);

  [v9 setTravelStatusEnabled:a2 & 1 region:a3 completionHandler:v10];
  _Block_release(v10);
}

void sub_2516CA51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = [a1 manager];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516C6470;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [v11 *a6];
  _Block_release(v12);
}

void sub_2516CA668(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a7;
  v14[5] = v13;
  v15 = a3;
  v17 = a1;
  v16 = v15;

  sub_2516C59C8(a8, v14);
}

void ENManagerAdapter.setPreAuthorizeDiagnosisKeysEnabled(enabled:for:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 manager];
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2516C5814;
  v11[3] = &block_descriptor_59;
  v10 = _Block_copy(v11);

  [v9 setPreAuthorizeDiagnosisKeysEnabled:a1 & 1 region:a2 completionHandler:v10];
  _Block_release(v10);
}

uint64_t ENManagerAdapter.setPreAuthorizeDiagnosisKeysEnabled(enabled:for:symptomOnset:hasTraveled:isVaccinated:completion:)(int a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v29 = a1;
  v30 = a5;
  v28 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v27[-v14];
  sub_251699D18(a3, &v27[-v14], &unk_27F4538B0, &unk_2517068C0);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = v16 + v13;
  v18 = (v17 + 25) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_2516ABAC8(v15, v19 + v16);
  v20 = (v19 + v17);
  *v20 = v28;
  v21 = v29;
  v20[1] = v30;
  v22 = v19 + ((v17 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v7;
  *(v22 + 8) = v21;
  *(v19 + v18) = a2;
  v23 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v31;
  v23[1] = a7;
  v24 = v7;
  v25 = a2;

  sub_2516C59C8(sub_2516ABB38, v19);
}

void sub_2516CAB38(uint64_t a1, char a2, char a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a7;
  v69 = a8;
  v70 = a5;
  v67 = a4;
  v12 = sub_251702E24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v66 - v19;
  sub_251699D18(a1, &v66 - v19, &unk_27F4538B0, &unk_2517068C0);
  v21 = type metadata accessor for SymptomOnset(0);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  v23 = MEMORY[0x277D84F98];
  if (v22 != 1)
  {
    v66 = a6;
    if ((*(v13 + 48))(v20, 1, v12) == 1)
    {
      v24 = *MEMORY[0x277CC5B90];
      v25 = sub_251703164();
      v27 = v26;
      v75 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 0;
      sub_251699CD8(&aBlock, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v23;
      sub_2516CED6C(v72, v25, v27, isUniquelyReferenced_nonNull_native);

      v23 = v71;
    }

    else
    {
      (*(v13 + 32))(v16, v20, v12);
      v29 = *MEMORY[0x277CC5B90];
      v30 = sub_251703164();
      v32 = v31;
      v75 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 1;
      sub_251699CD8(&aBlock, v72);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v23;
      sub_2516CED6C(v72, v30, v32, v33);

      v34 = v71;
      v35 = *MEMORY[0x277CC5BB8];
      v36 = sub_251703164();
      v38 = v37;
      v75 = v12;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v13 + 16))(boxed_opaque_existential_0, v16, v12);
      sub_251699CD8(&aBlock, v72);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v34;
      sub_2516CED6C(v72, v36, v38, v40);

      v23 = v71;
      (*(v13 + 8))(v16, v12);
    }

    a6 = v66;
  }

  if (a2 != 2)
  {
    v41 = *MEMORY[0x277CC5BC0];
    v42 = sub_251703164();
    v44 = v43;
    v75 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a2 & 1;
    sub_251699CD8(&aBlock, v72);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v23;
    sub_2516CED6C(v72, v42, v44, v45);

    v23 = v71;
  }

  if (a3 != 2)
  {
    v46 = *MEMORY[0x277CC5BA8];
    v47 = sub_251703164();
    v49 = v48;
    v75 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a3 & 1;
    sub_251699CD8(&aBlock, v72);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v23;
    sub_2516CED6C(v72, v47, v49, v50);
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v51 = sub_251702F84();
  __swift_project_value_buffer(v51, static Logger.general);
  v52 = sub_251702F64();
  v53 = sub_251703314();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&aBlock = v55;
    *v54 = 136315138;

    v56 = sub_251703114();
    v58 = v57;

    v59 = sub_251693FCC(v56, v58, &aBlock);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_25167E000, v52, v53, "have metadata: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x2530803C0](v55, -1, -1);
    MEMORY[0x2530803C0](v54, -1, -1);
  }

  v60 = [v67 manager];

  sub_2516CB1CC(v61);

  v62 = sub_2517030F4();

  v63 = swift_allocObject();
  v64 = v69;
  *(v63 + 16) = v68;
  *(v63 + 24) = v64;
  v76 = sub_2516CF884;
  v77 = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v74 = sub_2516C5814;
  v75 = &block_descriptor_316;
  v65 = _Block_copy(&aBlock);

  [v60 setPreAuthorizeDiagnosisKeysEnabled:v70 & 1 region:a6 metadata:v62 completionHandler:v65];
  _Block_release(v65);
}

uint64_t sub_2516CB1CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454418, &unk_2517090E0);
    v2 = sub_2517035C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_251696894(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_251699CD8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_251699CD8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_251699CD8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2517034B4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_251699CD8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2516CB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v4;

  sub_2516C59C8(a4, v8);
}

void sub_2516CB538(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 manager];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v10[4] = sub_2516CF878;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516C5814;
  v10[3] = &block_descriptor_307;
  v8 = _Block_copy(v10);

  v9 = a1;

  [v6 setExposureNotificationEnabled:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_2516CB658(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, id), uint64_t a3, id a4)
{
  if (a1)
  {
    a2(a1, a2, a3, a4);
  }

  else
  {
    v6 = [a4 manager];
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2516C5814;
    v8[3] = &block_descriptor_310;
    v7 = _Block_copy(v8);

    [v6 resetAllDataWithCompletionHandler_];
    _Block_release(v7);
  }
}

void sub_2516CB77C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a6;
  v12[4] = v11;
  v13 = a1;

  sub_2516C59C8(a7, v12);
}

void sub_2516CB86C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v15 = [a1 manager];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v19[4] = a6;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2516C5814;
  v19[3] = a7;
  v17 = _Block_copy(v19);
  v18 = a1;

  [v15 *a8];
  _Block_release(v17);
}

uint64_t sub_2516CB9D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a7;
  v15[4] = v14;

  v16 = a1;
  v17 = a2;

  sub_2516C59C8(a8, v15);
}

uint64_t sub_2516CBB00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = v5;

  sub_2516C59C8(a5, v10);
}

void sub_2516CBB8C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2516C5814;
  v9[3] = &block_descriptor_288;
  v8 = _Block_copy(v9);

  [v7 setWeeklySummaryAlertEnabled:a2 & 1 completion:v8];
  _Block_release(v8);
}

void sub_2516CBCBC(void *a1, int a2, char a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a7;
  *(v14 + 40) = v13;
  v15 = a1;

  sub_2516C59C8(a8, v14);
}

uint64_t ENManagerAdapter.setUserConsent(_:region:text:version:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = v8;
  v17[8] = a2;
  v17[9] = a7;
  v17[10] = a8;

  v18 = v8;
  v19 = a2;

  sub_2516C59C8(sub_2516AB9CC, v17);
}

void sub_2516CBE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = objc_allocWithZone(MEMORY[0x277CC5CF0]);
  v15 = sub_251703134();
  v16 = [v14 initWithConsentVersion_];

  [v16 setConsent_];
  if (a5)
  {
    a5 = sub_251703134();
  }

  [v16 setConsentText_];

  v17 = [a6 manager];
  v19[4] = a8;
  v19[5] = a9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2516C5814;
  v19[3] = &block_descriptor_285;
  v18 = _Block_copy(v19);

  [v17 setRegionUserConsent:v16 region:a7 completionHandler:v18];
  _Block_release(v18);
}

uint64_t ENManagerAdapter.startTestVerificationSession(verificationCode:region:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a5;
  v12 = a3;

  v13 = v5;

  sub_2516C59C8(sub_2516CC344, v11);
}

void sub_2516CC218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [a1 manager];
  v10 = sub_251703134();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  v13[4] = sub_2516CF7E8;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2516CC8BC;
  v13[3] = &block_descriptor_282;
  v12 = _Block_copy(v13);

  [v9 startTestVerificationSessionWithCode:v10 region:a4 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_2516CC354(uint64_t a1, void *a2, void (*a3)(uint64_t **), uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454420, &unk_2517090F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v42 - v12;
  v14 = sub_251702E64();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251699D18(a1, v13, &qword_27F454000, &unk_251708500);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = v9;
    v42[1] = a4;
    v20 = v44;
    sub_25168B718(v13, &qword_27F454000, &unk_251708500);
    v21 = v43;
    if (v43)
    {
      v22 = v43;
      v23 = v19;
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v24 = sub_251702F84();
      __swift_project_value_buffer(v24, static Logger.testVerification);
      v25 = v21;
      v26 = sub_251702F64();
      v27 = sub_251703324();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v45 = v21;
        v46 = v29;
        *v28 = 136315138;
        v30 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
        v31 = sub_251703194();
        v33 = sub_251693FCC(v31, v32, &v46);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_25167E000, v26, v27, "Error when starting test verification: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2530803C0](v29, -1, -1);
        MEMORY[0x2530803C0](v28, -1, -1);
      }

      *v23 = v21;
      swift_storeEnumTagMultiPayload();
      v34 = v21;
      v20(v23);
    }

    else
    {
      v23 = v19;
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v36 = sub_251702F84();
      __swift_project_value_buffer(v36, static Logger.testVerification);
      v37 = sub_251702F64();
      v38 = sub_251703324();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_25167E000, v37, v38, "Did not receive any start test verification error", v39, 2u);
        MEMORY[0x2530803C0](v39, -1, -1);
      }

      type metadata accessor for ENError(0);
      v45 = 1;
      sub_251699708(MEMORY[0x277D84F90]);
      sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError);
      sub_251702D24();
      v40 = v46;
      *v23 = v46;
      swift_storeEnumTagMultiPayload();
      v41 = v40;
      v20(v23);
    }

    return sub_25168B718(v23, &qword_27F454420, &unk_2517090F8);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v15 + 16))(v9, v18, v14);
    swift_storeEnumTagMultiPayload();
    v44(v9);
    sub_25168B718(v9, &qword_27F454420, &unk_2517090F8);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_2516CC8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_251702E54();
    v12 = sub_251702E64();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_251702E64();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_25168B718(v9, &qword_27F454000, &unk_251708500);
}

uint64_t ENManagerAdapter.fetchTestMetadata(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_251702E64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v8 + 32))(v11 + v10, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = v3;

  sub_2516C59C8(sub_2516ABC0C, v11);
}

void sub_2516CCB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 manager];
  v7 = sub_251702E44();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2516CF78C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516CD698;
  v10[3] = &block_descriptor_276;
  v9 = _Block_copy(v10);

  [v6 fetchTestMetadataForSession:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_2516CCC98(uint64_t a1, void *a2, void (*a3)(_DWORD *))
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454098, &qword_251708928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v63 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_251702E24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v63 - v20;
  if (a1)
  {
    v68 = 0x795474726F706572;
    v69 = 0xEA00000000006570;
    sub_2517034D4();
    if (*(a1 + 16) && (v22 = sub_2516D86A0(v70), (v23 & 1) != 0))
    {
      sub_251696894(*(a1 + 56) + 32 * v22, v71);
      sub_2516CF794(v70);
      sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v66 = v68;
        v65 = sub_251703734();
        v68 = 0x74706D7953736168;
        v69 = 0xEB00000000736D6FLL;
        sub_2517034D4();
        if (*(a1 + 16) && (v24 = sub_2516D86A0(v70), (v25 & 1) != 0))
        {
          sub_251696894(*(a1 + 56) + 32 * v24, v71);
          sub_2516CF794(v70);
          if (swift_dynamicCast())
          {
            v26 = v68;
            LODWORD(v64) = [v68 BOOLValue];

            if ((v64 & 1) == 0)
            {
              (*(v14 + 56))(v21, 1, 1, v13);
              goto LABEL_36;
            }

            v68 = 0xD000000000000010;
            v69 = 0x800000025170A9D0;
            sub_2517034D4();
            if (*(a1 + 16) && (v27 = sub_2516D86A0(v70), (v28 & 1) != 0))
            {
              sub_251696894(*(a1 + 56) + 32 * v27, v71);
              sub_2516CF794(v70);
              v29 = swift_dynamicCast();
              v30 = *(v14 + 56);
              v30(v12, v29 ^ 1u, 1, v13);
              if ((*(v14 + 48))(v12, 1, v13) != 1)
              {
                v64 = v30;
                v31 = *(v14 + 32);
                v31(v17, v12, v13);
                v31(v21, v17, v13);
                v64(v21, 0, 1, v13);
LABEL_36:
                v60 = 0;
                goto LABEL_34;
              }
            }

            else
            {
              sub_2516CF794(v70);
              (*(v14 + 56))(v12, 1, 1, v13);
            }

            sub_25168B718(v12, &unk_27F4538C0, &qword_2517090F0);
          }
        }

        else
        {
          sub_2516CF794(v70);
        }

        v60 = 1;
LABEL_34:
        v61 = type metadata accessor for SymptomOnset(0);
        (*(*(v61 - 8) + 56))(v21, v60, 1, v61);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4540A0, &qword_251708930) + 48);
        *v8 = v65;
        sub_251699D18(v21, v8 + v62, &unk_27F4538B0, &unk_2517068C0);
        swift_storeEnumTagMultiPayload();
        v67(v8);

        sub_25168B718(v8, &qword_27F454098, &qword_251708928);
        v58 = v21;
        v56 = &unk_27F4538B0;
        v57 = &unk_2517068C0;
        return sub_25168B718(v58, v56, v57);
      }
    }

    else
    {
      sub_2516CF794(v70);
    }

    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v32 = sub_251702F84();
    __swift_project_value_buffer(v32, static Logger.testVerification);
    v33 = sub_251702F64();
    v34 = sub_251703324();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_25167E000, v33, v34, "Did not receive a report type", v35, 2u);
      MEMORY[0x2530803C0](v35, -1, -1);
    }

    type metadata accessor for ENError(0);
    v71[0] = 1;
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError);
    sub_251702D24();
    v36 = v70[0];
    *v8 = v70[0];
    swift_storeEnumTagMultiPayload();
    v37 = v36;
    v67(v8);
  }

  else if (a2)
  {
    v38 = a2;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v39 = sub_251702F84();
    __swift_project_value_buffer(v39, static Logger.testVerification);
    v40 = a2;
    v41 = sub_251702F64();
    v42 = sub_251703324();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v70[0] = v44;
      *v43 = 136315138;
      v71[0] = a2;
      v45 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v46 = sub_251703194();
      v48 = sub_251693FCC(v46, v47, v70);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_25167E000, v41, v42, "Did not receive any test metadata: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2530803C0](v44, -1, -1);
      MEMORY[0x2530803C0](v43, -1, -1);
    }

    *v8 = a2;
    swift_storeEnumTagMultiPayload();
    v49 = a2;
    v67(v8);
  }

  else
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v50 = sub_251702F84();
    __swift_project_value_buffer(v50, static Logger.testVerification);
    v51 = sub_251702F64();
    v52 = sub_251703324();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_25167E000, v51, v52, "Did not receive any test metadata error", v53, 2u);
      MEMORY[0x2530803C0](v53, -1, -1);
    }

    type metadata accessor for ENError(0);
    v71[0] = 1;
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError);
    sub_251702D24();
    v54 = v70[0];
    *v8 = v70[0];
    swift_storeEnumTagMultiPayload();
    v55 = v54;
    v67(v8);
  }

  v56 = &qword_27F454098;
  v57 = &qword_251708928;
  v58 = v8;
  return sub_25168B718(v58, v56, v57);
}

uint64_t sub_2516CD698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_251703104();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t ENManagerAdapter.finishSession(_:userDidConsent:symptomOnset:hasTraveled:isVaccinated:completionHandler:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v33 = a4;
  v34 = a5;
  v36 = a2;
  v32 = a1;
  v8 = sub_251702E64();
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v30 - v15;
  sub_251699D18(a3, &v30 - v15, &unk_27F4538B0, &unk_2517068C0);
  (*(v9 + 16))(v11, v32, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = v17 + v14;
  v19 = (v17 + v14 + 9) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = v20 + v10;
  v22 = swift_allocObject();
  sub_2516ABAC8(v16, v22 + v17);
  v23 = (v22 + v18);
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v25 = v35;
  *(v22 + v19) = v35;
  (*(v9 + 32))(v22 + v20, v11, v31);
  *(v22 + v21) = v36;
  v26 = v22 + (v21 & 0xFFFFFFFFFFFFFFF8);
  v27 = v38;
  *(v26 + 8) = v37;
  *(v26 + 16) = v27;
  v28 = v25;

  sub_2516C59C8(sub_2516BD1F8, v22);
}

void sub_2516CD9A8(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v59 = a4;
  v60 = a5;
  v12 = sub_251702E24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57[-v19];
  sub_251699D18(a1, &v57[-v19], &unk_27F4538B0, &unk_2517068C0);
  v21 = type metadata accessor for SymptomOnset(0);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  v23 = MEMORY[0x277D84F98];
  if (v22 != 1)
  {
    v58 = a6;
    if ((*(v13 + 48))(v20, 1, v12) == 1)
    {
      v24 = *MEMORY[0x277CC5B90];
      v25 = sub_251703164();
      v27 = v26;
      v67 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 0;
      sub_251699CD8(&aBlock, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v23;
      sub_2516CED6C(v64, v25, v27, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      (*(v13 + 32))(v16, v20, v12);
      v29 = *MEMORY[0x277CC5B90];
      v30 = sub_251703164();
      v32 = v31;
      v67 = MEMORY[0x277D839B0];
      LOBYTE(aBlock) = 1;
      sub_251699CD8(&aBlock, v64);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v23;
      sub_2516CED6C(v64, v30, v32, v33);

      v34 = v63;
      v35 = *MEMORY[0x277CC5BB8];
      v36 = sub_251703164();
      v38 = v37;
      v67 = v12;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v13 + 16))(boxed_opaque_existential_0, v16, v12);
      sub_251699CD8(&aBlock, v64);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v34;
      sub_2516CED6C(v64, v36, v38, v40);

      (*(v13 + 8))(v16, v12);
    }

    v23 = v63;
    LOBYTE(a6) = v58;
  }

  if (a2 != 2)
  {
    v41 = *MEMORY[0x277CC5BC0];
    v42 = sub_251703164();
    v44 = v43;
    v67 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a2 & 1;
    sub_251699CD8(&aBlock, v64);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v23;
    sub_2516CED6C(v64, v42, v44, v45);

    v23 = v63;
  }

  if (a3 != 2)
  {
    v46 = *MEMORY[0x277CC5BA8];
    v47 = sub_251703164();
    v49 = v48;
    v67 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = a3 & 1;
    sub_251699CD8(&aBlock, v64);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v23;
    sub_2516CED6C(v64, v47, v49, v50);

    v23 = v63;
  }

  v51 = [v59 manager];
  v52 = sub_251702E44();
  sub_2516CB1CC(v23);

  v53 = sub_2517030F4();

  v54 = swift_allocObject();
  v55 = v62;
  *(v54 + 16) = v61;
  *(v54 + 24) = v55;
  v68 = sub_2516CF6FC;
  v69 = v54;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v66 = sub_2516C6470;
  v67 = &block_descriptor_270;
  v56 = _Block_copy(&aBlock);

  [v51 finishTestVerificationForSession:v52 userDidConsent:a6 & 1 metadata:v53 completionHandler:v56];
  _Block_release(v56);
}

uint64_t sub_2516CDF1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v11 = v5;
  v12 = a1;

  sub_2516C59C8(a5, v10);
}

void sub_2516CDFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 manager];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2516CF6F4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2516CE400;
  v10[3] = &block_descriptor_264;
  v9 = _Block_copy(v10);

  [v7 startSelfReportWebSession:a2 completionHandler:v9];
  _Block_release(v9);
}

void sub_2516CE0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(id *, uint64_t, uint64_t, uint64_t, id))
{
  if (a2)
  {
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = 0;
    a6(&v25, a2, a3, a4, a5);
  }

  else if (a5)
  {
    v8 = a5;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v9 = sub_251702F84();
    __swift_project_value_buffer(v9, static Logger.testVerification);
    v10 = a5;
    v11 = sub_251702F64();
    v12 = sub_251703324();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v16 = sub_251703194();
      v18 = sub_251693FCC(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_25167E000, v11, v12, "WebReport: Error when starting web report session: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2530803C0](v14, -1, -1);
      MEMORY[0x2530803C0](v13, -1, -1);
    }

    v25 = a5;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v19 = a5;
    (a6)(&v25);
  }

  else
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v20 = sub_251702F84();
    __swift_project_value_buffer(v20, static Logger.testVerification);
    v21 = sub_251702F64();
    v22 = sub_251703324();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25167E000, v21, v22, "WebReport: Unknown Error", v23, 2u);
      MEMORY[0x2530803C0](v23, -1, -1);
    }

    type metadata accessor for ENError(0);
    sub_251699708(MEMORY[0x277D84F90]);
    sub_2516CFAA4(&unk_27F453B60, type metadata accessor for ENError);
    sub_251702D24();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    v24 = v25;
    (a6)(&v25);
  }
}

uint64_t sub_2516CE400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_251703164();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_251703164();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

unint64_t sub_2516CE534(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2517036E4();
  sub_2517031A4();
  v6 = sub_251703724();

  return sub_2516CE5AC(a1, a2, v6);
}

unint64_t sub_2516CE5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251703624())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2516CE664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454438, &qword_251709170);
  v42 = a2;
  result = sub_2517035B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      if ((v42 & 1) == 0)
      {
        v27 = v22;
        v28 = v25;
        v29 = v24;
        v30 = v26;
      }

      v31 = *(v8 + 40);
      result = sub_2517033A4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v25;
      v17[1] = v24;
      v17[2] = v26;
      ++*(v8 + 16);
      v5 = v41;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v42)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2516CE8FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F00, "̗");
  v36 = a2;
  result = sub_2517035B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_251699CD8(v25, v37);
      }

      else
      {
        sub_251696894(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2517036E4();
      sub_2517031A4();
      result = sub_251703724();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_251699CD8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_2516CEBB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_2516D865C(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_2516CE664(v17, a5 & 1);
      v21 = *v6;
      v12 = sub_2516D865C(a4);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
        sub_251703654();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_2516CEF28();
      v12 = v20;
    }
  }

  v23 = *v6;
  if (v18)
  {
    v24 = v23[7] + 24 * v12;
    v25 = *(v24 + 8);
    v32 = *v24;
    v26 = *(v24 + 16);
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;

    return;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a4;
  v27 = (v23[7] + 24 * v12);
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;
  v28 = v23[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;

  v30 = a4;
}

_OWORD *sub_2516CED6C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2516CE534(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2516CF0B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2516CE8FC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2516CE534(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_251703654();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_251699CD8(a1, v23);
  }

  else
  {
    sub_2516CEEBC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2516CEEBC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_251699CD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_2516CEF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454438, &qword_251709170);
  v2 = *v0;
  v3 = sub_2517035A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;
        v24 = v18;
        v25 = v20;
        v26 = v21;
        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2516CF0B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F00, "̗");
  v2 = *v0;
  v3 = sub_2517035A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_251696894(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251699CD8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0()
{
  if (!*MEMORY[0x277D6C158])
  {
    __break(1u);
    goto LABEL_5;
  }

  *MEMORY[0x277D6C158];
  v0 = TCCAccessCopyInformation();
  if (!v0)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v0;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454440, &qword_251709178);
  sub_251703204();
LABEL_6:
  __break(1u);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2516CF6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2516CF884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2516CF8AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v3(v4);
}

uint64_t objectdestroy_303Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2516CF95C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_296Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2516CFAA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id OnboardingLegalConsentViewController.__allocating_init(flow:agencyModel:showsTurnOnExposureNotificationsAlert:shouldSetActiveRegion:)(uint64_t a1, uint64_t a2, void *a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  ObjectType = swift_getObjectType();

  return sub_2516D1B00(a1, a3, a4, a5, v11, ObjectType, a2);
}

id OnboardingLegalConsentViewController.init(flow:agencyModel:showsTurnOnExposureNotificationsAlert:shouldSetActiveRegion:)(uint64_t a1, uint64_t a2, void *a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();

  return sub_2516D1B00(a1, a3, a4, a5, v5, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingLegalConsentViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_2516CFF04();
  v1 = &v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
  v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
  v2 = *(v1 + 1);
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 8))(ObjectType, v2);
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);

    [(*(v2 + 80))(ObjectType v2)];
    swift_unknownObjectRelease();
  }
}

void sub_2516CFF04()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton];
  v3 = sub_251703134();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton];
  v6 = sub_251703134();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel];
  v9 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v10 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese);
  if (v10)
  {
    v11 = (v10 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text);
    v13 = *v11;
    v12 = v11[1];
  }

  v14 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v15 = sub_2516DD44C(v9, 20.0, 20.0, 20.0, 20.0);
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

  v30 = [v27 constraintEqualToAnchor:v29 constant:10.0];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168B5B4();
  v35 = sub_2517031F4();

  [v17 activateConstraints_];

  v36 = [v1 navigationItem];
  v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v36 setRightBarButtonItem_];
}

void sub_2516D0500()
{
  if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] == 1)
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_251708520;
    v2 = (*(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header) + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title);
    v4 = *v2;
    v3 = v2[1];
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 64) = sub_25169F41C();
    *(v1 + 32) = v4;
    *(v1 + 40) = v3;

    sub_251703184();

    sub_251702C94();
    v5 = sub_251703134();

    v6 = sub_251703134();

    v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{1, 0xE000000000000000}];

    sub_251702C94();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = sub_251703134();

    v22 = sub_2516D1E30;
    v23 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25169F470;
    v21 = &block_descriptor_22_0;
    v10 = _Block_copy(&aBlock);

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
    _Block_release(v10);

    [v7 addAction_];
    sub_251702C94();
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = v7;
    v15 = sub_251703134();

    v22 = sub_251699CE8;
    v23 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25169F470;
    v21 = &block_descriptor_28;
    v16 = _Block_copy(&aBlock);

    v17 = [v11 actionWithTitle:v15 style:1 handler:{v16, 0xE000000000000000}];
    _Block_release(v16);

    [v14 addAction_];
    [v14 setPreferredAction_];
    [v0 presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    sub_2516D0A10();
  }
}

void sub_2516D0A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 80))(ObjectType, v1);
  v5 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel);
  v6 = *(v5 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese;
  v8 = *(v5 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese);
  if (v8)
  {
    v9 = (v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text);
    v10 = *v9;
    v11 = v9[1];
    v12 = v6;

    v13 = sub_251703134();

    v14 = *(v5 + v7);
    if (v14)
    {
      v15 = (v14 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
      v16 = *v15;
      v17 = v15[1];
    }
  }

  else
  {
    v18 = v6;
    v13 = 0;
  }

  v19 = sub_251703134();

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22[4] = sub_2516D1DF0;
  v22[5] = v20;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_2516C5814;
  v22[3] = &block_descriptor_4_0;
  v21 = _Block_copy(v22);

  [v4 setUserConsent:2 region:v6 text:v13 version:v19 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

void sub_2516D0C58()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{0, 0xE000000000000000}];

  sub_251702C94();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_251703134();

  v18 = sub_2516D1E00;
  v19 = v4;
  v15 = 1107296256;
  aBlock = MEMORY[0x277D85DD0];
  v16 = sub_25169F470;
  v17 = &block_descriptor_12;
  v6 = _Block_copy(&aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:{v6, 0xE000000000000000}];
  _Block_release(v6);

  [v3 addAction_];
  sub_251702C94();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v11 = sub_251703134();

  v18 = sub_2516ABF30;
  v19 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_25169F470;
  v17 = &block_descriptor_18;
  v12 = _Block_copy(&aBlock);

  v13 = [v7 actionWithTitle:v11 style:1 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  [v10 addAction_];
  [v0 presentViewController:v10 animated:1 completion:0];
}

void sub_2516D107C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2516D10D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel);
  v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v4 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese);
  if (v4)
  {
    v5 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
    v6 = *v5;
    v7 = v5[1];
  }

  v8 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
  v10 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  ObjectType = swift_getObjectType();
  v12 = *(v9 + 80);
  v13 = v3;
  v14 = v12(ObjectType, v9);
  v15 = sub_251703134();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_2516D1DD0;
  v18[5] = v16;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2516C5814;
  v18[3] = &block_descriptor_9;
  v17 = _Block_copy(v18);

  [v14 setUserConsent:1 region:v13 text:0 version:v15 completion:v17];
  _Block_release(v17);

  swift_unknownObjectRelease();
}

void sub_2516D1380(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
      v5 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 96))(ObjectType, v5);
      v7(0);
    }

    else
    {
      v8 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion);
      v9 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
      v10 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
      v11 = swift_getObjectType();
      if (v8 == 1)
      {
        v12 = (*(v10 + 80))(v11, v10);
        v13 = *(*&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_2516D1DF8;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2516C5814;
        aBlock[3] = &block_descriptor_8;
        v15 = _Block_copy(aBlock);
        v16 = v13;

        [v12 setActiveRegion:v16 completion:v15];
        _Block_release(v15);

        swift_unknownObjectRelease();
      }

      else
      {
        v17 = *(v10 + 120);
        swift_unknownObjectRetain();
        v18 = v3;
        v17();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2516D15B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
    v5 = *(Strong + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
    ObjectType = swift_getObjectType();
    if (a1)
    {
      v7 = (*(v5 + 96))(ObjectType, v5);
      v7(0);
    }

    else
    {
      v8 = *(v5 + 120);
      swift_unknownObjectRetain();
      v9 = v3;
      v8();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2516D16FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = a1 == 0;
    v5 = *(result + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
    v4 = *(result + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow + 8);
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = (*(v4 + 96))(ObjectType, v4);
    v8(2 * v3);
  }

  return result;
}

id OnboardingLegalConsentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id OnboardingLegalConsentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id OnboardingLegalConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516D1B00(uint64_t a1, void *a2, char a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_primaryButton;
  *&a5[v14] = [objc_opt_self() boldButton];
  v15 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_secondaryButton;
  *&a5[v15] = [objc_opt_self() linkButton];
  v16 = &a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow];
  *v16 = a1;
  v16[1] = a7;
  v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel;
  *&a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_healthAgencyModel] = a2;
  a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_showsTurnOnExposureNotificationsAlert] = a3;
  a5[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_shouldSetActiveRegion] = a4;
  v18 = qword_28151EB58;
  swift_unknownObjectRetain();
  v19 = a2;
  if (v18 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251708520;
  v21 = (*&a5[v17] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v23 = *v21;
  v22 = v21[1];
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_25169F41C();
  *(v20 + 32) = v23;
  *(v20 + 40) = v22;

  sub_251703184();

  v24 = sub_251703134();

  v30.receiver = a5;
  v30.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v24, 0, 0, 2, 0xE000000000000000);

  v26 = v25;
  [v26 set:1 shouldInlineButtontray:?];
  v27 = [v26 headerView];
  LODWORD(v28) = 1036831949;
  [v27 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v26;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t String.localized(source:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_251702C94();
  if (*(a9 + 16))
  {
    v10 = sub_251703174();

    return v10;
  }

  return result;
}

uint64_t *LocalizationSource.sunset.unsafeMutableAddressor()
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.sunset;
}

id sub_2516D1F6C()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.main = static NSBundle.exposureNotificationUI;
  *algn_28151F0D8 = 0xD000000000000028;
  qword_28151F0E0 = 0x800000025170F090;

  return v1;
}

uint64_t *LocalizationSource.main.unsafeMutableAddressor()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.main;
}

uint64_t static LocalizationSource.main.getter()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.main;
  v1 = static LocalizationSource.main;

  return v0;
}

id sub_2516D20C0()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.states = static NSBundle.exposureNotificationUI;
  unk_27F457E00 = 0xD000000000000031;
  qword_27F457E08 = 0x800000025170F020;

  return v1;
}

uint64_t *LocalizationSource.states.unsafeMutableAddressor()
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  return &static LocalizationSource.states;
}

uint64_t static LocalizationSource.states.getter()
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.states;
  v1 = static LocalizationSource.states;

  return v0;
}

id sub_2516D2214()
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.exposureNotificationUI;
  static LocalizationSource.sunset = static NSBundle.exposureNotificationUI;
  *algn_27F457E18 = 0xD00000000000002FLL;
  qword_27F457E20 = 0x800000025170F060;

  return v1;
}

uint64_t static LocalizationSource.sunset.getter()
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  v0 = static LocalizationSource.sunset;
  v1 = static LocalizationSource.sunset;

  return v0;
}

uint64_t sub_2516D232C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = sub_251702C94();
  if (*(a11 + 16))
  {
    v12 = sub_251703174();

    return v12;
  }

  return result;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_251702C94();
  if (*(a8 + 16))
  {
    v10 = sub_251703174();

    return v10;
  }

  return result;
}

id ENUILocalizedString()
{
  sub_251703164();
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v0 = sub_251703134();

  return v0;
}

Swift::String __swiftcall localizedStringForObjC(_:)(Swift::String a1)
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id ENUILocalizedStateString()
{
  sub_251703164();
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v0 = sub_251703134();

  return v0;
}

Swift::String __swiftcall localizedStateStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F453860 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id ENUILocalizedSunsetString()
{
  sub_251703164();
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  sub_251702C94();

  v0 = sub_251703134();

  return v0;
}

Swift::String __swiftcall localizedSunsetStringForObjC(_:)(Swift::String a1)
{
  if (qword_27F453868 != -1)
  {
    swift_once();
  }

  v1 = sub_251702C94();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2516D2888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2516D28D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id VerificationCodeEntryViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v12 = sub_251702C94();
  v14 = v13;
  v15 = [objc_opt_self() systemBackgroundColor];
  v16 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&v3[v11] = LoadingStatusView.init(with:backgroundColor:)(v12, v14, v15);
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_keyboardHeight] = 0;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow] = a1;
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel] = a2;

  v17 = a2;
  if ([v17 supportsFeatures_])
  {
    sub_251699D18(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v10, &qword_27F453E10, &unk_251708160);
    v18 = sub_251702DA4();
    v19 = (*(*(v18 - 8) + 48))(v10, 1, v18) != 1;
    sub_25168B718(v10, &qword_27F453E10, &unk_251708160);
  }

  else
  {
    v19 = 0;
  }

  v3[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_regionSupportsWebReport] = v19;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 defaultCenter];
  [v23 addObserver:v22 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];

  return v22;
}

id VerificationCodeEntryViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall VerificationCodeEntryViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516D30AC();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516D30AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v168 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v8 = v7;
  [v7 addLayoutGuide_];

  v9 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setPreservesSuperviewLayoutMargins_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = v10;
  v180 = v5;
  v181 = v6;
  [v10 addSubview_];

  v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_scrollView] = v9;
  v13 = v9;

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v178 = static LocalizationSource.main;
  sub_251702C94();
  sub_251702C94();
  v14 = objc_allocWithZone(MEMORY[0x277D37640]);
  v15 = sub_251703134();

  v16 = sub_251703134();

  v176 = [v14 initWithTitle:v15 detailText:v16 icon:0];

  v17 = [objc_allocWithZone(ENUIVerificationCodeEntryView) init];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v179 = v13;

  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v18;
  v22[5] = v19;
  v186 = sub_2516D8C60;
  v187 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v183 = 1107296256;
  v184 = sub_251693A80;
  v185 = &block_descriptor_10;
  v23 = _Block_copy(&aBlock);

  [v17 setDidEnterDigit_];
  _Block_release(v23);
  v24 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v186 = sub_2516D8C84;
  v187 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v183 = 1107296256;
  v184 = sub_251693A80;
  v185 = &block_descriptor_16;
  v25 = _Block_copy(&aBlock);

  [v17 setDidEnterCode_];
  _Block_release(v25);
  v26 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_entryView] = v17;
  v174 = v17;

  LODWORD(v175) = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_regionSupportsWebReport];
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v27 = swift_allocObject();
  v171 = xmmword_251708520;
  *(v27 + 16) = xmmword_251708520;
  v173 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_healthAgencyModel];
  v29 = *&v173[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v28 = *&v173[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_25169F41C();
  *(v27 + 32) = v29;
  *(v27 + 40) = v28;

  v172 = sub_251703184();
  v177 = v30;

  v178 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v31 = sub_251703134();
  v32 = [objc_opt_self() systemImageNamed_];

  if (v32)
  {
    v33 = [objc_opt_self() systemBlueColor];
    v34 = [v32 imageWithTintColor_];
  }

  else
  {
    v34 = 0;
  }

  v35 = v178;
  [v178 setImage_];

  v36 = objc_opt_self();
  v37 = *MEMORY[0x277D76918];
  v38 = [v36 preferredFontForTextStyle_];
  sub_2516D4CA8(v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  v40 = *MEMORY[0x277D740D0];
  *(inited + 32) = *MEMORY[0x277D740D0];
  *(inited + 16) = v171;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 4;
  v41 = v40;
  sub_251698DC4(inited);
  swift_setDeallocating();
  sub_25168B718(inited + 32, &qword_27F453F18, &qword_2517083C0);
  v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v43 = sub_251703134();
  type metadata accessor for Key(0);
  sub_2516D8D8C(&qword_28151E910, type metadata accessor for Key);
  v44 = sub_2517030F4();

  v45 = [v42 initWithString:v43 attributes:v44];

  v46 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v47 = sub_251703134();
  v48 = [v46 initWithString_];

  *&v171 = v45;
  [v48 appendAttributedString_];
  v49 = [objc_opt_self() attributedStringWithAttachment_];
  [v48 appendAttributedString_];

  type metadata accessor for MultilineButton();
  v50 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v50 addTarget:v1 action:sel_didTapHelpButton forControlEvents:64];
  v51 = v50;
  v170 = v48;
  [v51 setAttributedTitle:v48 forState:0];
  v52 = [v51 titleLabel];
  if (v52)
  {
    v53 = v52;
    [v52 setTextAlignment_];
  }

  v54 = [v51 titleLabel];

  [v54 setNumberOfLines_];
  v55 = [v51 titleLabel];

  v56 = v179;
  if (v55)
  {
    v57 = [v36 preferredFontForTextStyle_];
    [v55 setFont_];
  }

  v58 = [v51 titleLabel];

  [v58 setAdjustsFontForContentSizeCategory_];
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_251707F60;
  v60 = v176;
  v61 = v174;
  *(v59 + 32) = v176;
  *(v59 + 40) = v61;
  aBlock = v59;
  v62 = v180;
  sub_251699D18(&v173[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL], v180, &qword_27F453E10, &unk_251708160);
  v63 = sub_251702DA4();
  v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
  v174 = v61;
  v173 = v60;
  sub_25168B718(v62, &qword_27F453E10, &unk_251708160);
  v65 = v175 ^ 1;
  if (v64 != 1)
  {
    v65 = 0;
  }

  v66 = v181;
  if ((v65 & 1) == 0)
  {
    v67 = v51;
    MEMORY[0x25307F5B0]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v167 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_251703224();
    }

    sub_251703244();
    v59 = aBlock;
  }

  v68 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v69 = sub_2517031F4();
  v70 = [v68 initWithArrangedSubviews_];

  [v70 setSpacing_];
  [v70 setAxis_];
  [v70 setAlignment_];
  [v70 setDistribution_];
  v71 = v70;
  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
  v180 = v71;
  [v56 addSubview_];
  v72 = [v1 view];
  if (!v72)
  {
    goto LABEL_35;
  }

  v73 = v72;
  v168[1] = v59;
  v169 = v51;
  v176 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_statusView];
  [v72 addSubview_];

  v74 = [v1 view];
  if (!v74)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v75 = v74;
  v76 = [v74 bottomAnchor];

  v77 = [v66 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  v79 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint];
  v168[0] = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_contentLayoutGuideBottomConstraint] = v78;

  v80 = [v180 topAnchor];
  v81 = [v56 topAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  v83 = OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint;
  v84 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_itemStackTopConstraint] = v82;

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_251709260;
  v86 = [v56 leadingAnchor];
  v87 = [v1 view];
  if (!v87)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v88 = v87;
  v89 = [v87 leadingAnchor];

  v90 = [v86 constraintEqualToAnchor_];
  *(v85 + 32) = v90;
  v91 = [v56 trailingAnchor];
  v92 = [v1 view];
  if (!v92)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v93 = v92;
  v94 = [v92 trailingAnchor];

  v95 = [v91 constraintEqualToAnchor_];
  *(v85 + 40) = v95;
  v96 = [v56 topAnchor];
  v97 = [v1 view];
  if (!v97)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v98 = v97;
  v175 = v83;
  v99 = [v97 topAnchor];

  v100 = [v96 constraintEqualToAnchor_];
  *(v85 + 48) = v100;
  v101 = [v56 bottomAnchor];
  v102 = [v1 view];
  if (!v102)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v103 = v102;
  v104 = [v102 bottomAnchor];

  v105 = [v101 constraintEqualToAnchor_];
  *(v85 + 56) = v105;
  v106 = [v56 contentLayoutGuide];
  v107 = [v106 heightAnchor];

  v108 = [v181 heightAnchor];
  v109 = [v107 constraintGreaterThanOrEqualToAnchor_];

  *(v85 + 64) = v109;
  v110 = v180;
  v111 = [v180 leadingAnchor];
  v112 = [v56 layoutMarginsGuide];
  v113 = [v112 leadingAnchor];

  v114 = [v111 &selRef:v113 notifyChangeObserversForChangeFrom:? to:? + 5];
  *(v85 + 72) = v114;
  v115 = [v110 trailingAnchor];
  v116 = [v56 layoutMarginsGuide];
  v117 = [v116 trailingAnchor];

  v118 = [v115 &selRef:v117 notifyChangeObserversForChangeFrom:? to:? + 5];
  *(v85 + 80) = v118;
  v119 = *&v1[v175];
  if (!v119)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v85 + 88) = v119;
  v120 = v119;
  v121 = [v56 bottomAnchor];

  v122 = [v110 bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:24.0];

  *(v85 + 96) = v123;
  v124 = v176;
  v125 = [v176 leadingAnchor];
  v126 = [v1 view];
  if (!v126)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v127 = v126;
  v128 = [v126 leadingAnchor];

  v129 = [v125 constraintEqualToAnchor_];
  *(v85 + 104) = v129;
  v130 = [v124 trailingAnchor];
  v131 = [v1 view];
  if (!v131)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v132 = v131;
  v133 = [v131 trailingAnchor];

  v134 = [v130 constraintEqualToAnchor_];
  *(v85 + 112) = v134;
  v135 = [v124 topAnchor];
  v136 = [v1 view];
  if (!v136)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v137 = v136;
  v138 = [v136 topAnchor];

  v139 = [v135 constraintEqualToAnchor_];
  *(v85 + 120) = v139;
  v140 = [v124 bottomAnchor];
  v141 = v181;
  v142 = [v181 bottomAnchor];
  v143 = [v140 constraintEqualToAnchor_];

  *(v85 + 128) = v143;
  v144 = [v141 leadingAnchor];
  v145 = [v1 &selRef_systemImageNamed_];
  if (!v145)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v146 = v145;
  v147 = [v145 leadingAnchor];

  v148 = [v144 constraintEqualToAnchor_];
  *(v85 + 136) = v148;
  v149 = [v141 trailingAnchor];
  v150 = [v1 &selRef_systemImageNamed_];
  if (!v150)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v151 = v150;
  v152 = [v150 trailingAnchor];

  v153 = [v149 constraintEqualToAnchor_];
  *(v85 + 144) = v153;
  v154 = [v141 topAnchor];
  v155 = [v1 &selRef_systemImageNamed_];
  if (!v155)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v156 = v155;
  v157 = [v155 safeAreaLayoutGuide];

  v158 = [v157 topAnchor];
  v159 = [v154 constraintEqualToAnchor_];

  *(v85 + 152) = v159;
  v160 = *&v1[v168[0]];
  v161 = v180;
  if (v160)
  {
    v162 = objc_opt_self();
    v163 = v160;

    *(v85 + 160) = v163;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v164 = sub_2517031F4();

    [v162 activateConstraints_];

    v165 = [v1 navigationItem];
    v166 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
    [v165 setRightBarButtonItem_];

    return;
  }

LABEL_48:
  __break(1u);
}