void sub_252045694(void *a1)
{
  v2 = sub_252064234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D74418];
  v11 = [v9 _preferredFontForTextStyle_weight_];
  if (v11)
  {
    v12 = v11;
    sub_252064244();
    v13 = sub_252064224();
    (*(v3 + 8))(v6, v2);
    v20 = 0;
    v14 = *(v8 + 8);
    v14(v12, v13, &v20, v7, v8);

    v15 = [v9 _preferredFontForTextStyle_weight_];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() secondaryLabelColor];
      v19 = 1;
      v14(v16, v17, &v19, v7, v8);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id HeadphoneAccessoryCellUIContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneAccessoryCellUIContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25204599C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_252045A00()
{
  v1 = *(sub_252064254() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_252045694(v2);
}

unint64_t sub_252045A90()
{
  result = qword_27F4C9CB8;
  if (!qword_27F4C9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9CB8);
  }

  return result;
}

unint64_t FaultCheckResultType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252045B34(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_252045B74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_252045B80()
{
  sub_252064A34();
  MEMORY[0x253097B50](0xD000000000000022, 0x800000025206D3D0);
  sub_252063E54();
  sub_252064A64();
  sub_252063DE4();
}

uint64_t sub_252045C28()
{
  sub_252064A34();
  MEMORY[0x253097B50](0xD000000000000022, 0x800000025206D400);
  sub_252063EA4();
  sub_252064A64();
  sub_252063DE4();
}

uint64_t sub_252045CD0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_252064AE4();
  }
}

uint64_t sub_252045D00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_252064764();
}

uint64_t sub_252045D08()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_252045D28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_252045D60()
{
  sub_252064B44();
  (*(*v0 + 112))(v2);
  return sub_252064B64();
}

uint64_t sub_252045EB0()
{
  sub_252064B44();
  (*(**v0 + 112))(v2);
  return sub_252064B64();
}

uint64_t sub_252045F10(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_252064AE4();
  }
}

uint64_t sub_252045F3C()
{
  type metadata accessor for HMFaultCheckService.FaultCheckObserver();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000012;
  *(result + 24) = 0x800000025206D430;
  return result;
}

uint64_t sub_252045FCC()
{
  v1 = sub_252063E54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMFaultCheckService_manager);
  sub_252063EF4();
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == *MEMORY[0x277D12C28])
  {
    sub_252063DE4();
    return 0;
  }

  else if (v7 == *MEMORY[0x277D12C20])
  {
    sub_252063DE4();
    return 1;
  }

  else
  {
    if (v7 == *MEMORY[0x277D12C30])
    {
      sub_252063DE4();
    }

    else
    {
      sub_252063DE4();
      (*(v2 + 8))(v5, v1);
    }

    return 2;
  }
}

id HMFaultCheckService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMFaultCheckService.init()()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI19HMFaultCheckService_observer;
  type metadata accessor for HMFaultCheckService.FaultCheckObserver();
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000012;
  *(v2 + 24) = 0x800000025206D430;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC13HearingModeUI19HMFaultCheckService_manager;
  *&v0[v3] = sub_252063FE4();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HMFaultCheckService();
  return objc_msgSendSuper2(&v5, sel_init);
}

id HMFaultCheckService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMFaultCheckService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2520463CC()
{
  result = qword_27F4C9DA0;
  if (!qword_27F4C9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9DA0);
  }

  return result;
}

uint64_t sub_252046488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HMFaultCheckService.FaultCheckObserver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25204655C(char a1)
{
  sub_252064B44();
  MEMORY[0x253097F30](a1 & 1);
  return sub_252064B64();
}

uint64_t sub_2520465A4()
{
  v1 = (v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController____lazy_storage___deviceName);
  if (*(v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController____lazy_storage___deviceName + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController____lazy_storage___deviceName + 8);
  }

  else
  {
    type metadata accessor for AnyHearingFeatureContentProvider();
    v4 = *(v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_headphoneDevice);
    v5 = v4;
    v6 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v4);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v2 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v8 = v7;
    }

    else
    {

      v8 = 0xEB000000006F7250;
      v2 = 0x2073646F50726941;
    }

    v9 = v1[1];
    *v1 = v2;
    v1[1] = v8;
  }

  return v2;
}

uint64_t sub_252046674()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2520466B8(char a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

void *sub_25204676C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_headphoneDevice);
  v2 = v1;
  return v1;
}

id sub_25204679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v9 = objc_allocWithZone(v6);
  v10 = &v9[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController____lazy_storage___deviceName];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType;
  v9[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType] = 0;
  swift_beginAccess();
  v9[v11] = a5 & 1;
  *&v9[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_headphoneDevice] = a6;
  v12 = a6;
  v13 = sub_2520646F4();

  v14 = sub_2520646F4();

  v17.receiver = v9;
  v17.super_class = v6;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 2);

  return v15;
}

id sub_2520468B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v9 = &v6[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController____lazy_storage___deviceName];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType;
  v6[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_suggestionType] = 0;
  swift_beginAccess();
  v6[v10] = a5 & 1;
  *&v6[OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_headphoneDevice] = a6;
  v11 = a6;
  v12 = sub_2520646F4();

  v13 = sub_2520646F4();

  v16.receiver = v6;
  v16.super_class = type metadata accessor for HMSuggestionsController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, 0, 2);

  return v14;
}

void sub_2520469E8()
{
  v1 = v0;
  v2 = sub_2520646C4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2520646E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyHearingFeatureContentProvider();
  v11 = *(v0 + OBJC_IVAR____TtC13HearingModeUI23HMSuggestionsController_headphoneDevice);
  v12 = v11;
  v13 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v11);
  v14 = type metadata accessor for HMSuggestionsController();
  v65.receiver = v0;
  v65.super_class = v14;
  v15 = objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v16 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v15);
  v61 = v6;
  v62 = v13;
  v63 = v14;
  if (v16)
  {
    v64 = v0;
    sub_252064684();
    sub_252050ED4(v10);
    v60 = *(v7 + 8);
    v60(v10, v6);
    v17 = sub_2520646F4();

    v18 = sub_2520646F4();
    v19 = sub_2520646F4();
    v20 = objc_opt_self();
    v21 = v6;
    v22 = [v20 systemBlueColor];
    [v1 addBulletedListItemWithTitle:v17 description:v18 symbolName:v19 tintColor:v22];

    v64 = v1;
    sub_252064684();
    sub_252050ED4(v10);
    v23 = v60;
    v60(v10, v21);
    v24 = sub_2520646F4();

    v25 = sub_2520646F4();
    v26 = sub_2520646F4();
    v27 = [v20 systemBlueColor];
    [v1 addBulletedListItemWithTitle:v24 description:v25 symbolName:v26 tintColor:v27];

    v64 = v1;
    sub_252064684();
    sub_252050ED4(v10);
    v23(v10, v61);
    v28 = sub_2520646F4();

    v29 = sub_2520646F4();
    v30 = sub_2520646F4();
    v31 = [v20 systemBlueColor];
    [v1 addBulletedListItemWithTitle:v28 description:v29 symbolName:v30 tintColor:v31];

LABEL_15:
    v52 = [v1 navigationItem];
    v53 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_buttonTapped];
    [v52 setRightBarButtonItem_];

    return;
  }

  v64 = v0;
  sub_252064684();
  sub_252050ED4(v10);
  v32 = *(v7 + 8);
  v32(v10, v6);
  v56 = sub_2520646F4();

  v64 = v0;
  sub_2520646B4();
  sub_2520646A4();
  sub_2520465A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v10);
  v60 = v32;
  v32(v10, v6);
  v33 = sub_2520646F4();

  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.suggestionFitSymbols.getter(&v64);
  }

  v34 = sub_2520646F4();

  v58 = objc_opt_self();
  v35 = [v58 _systemImageNamed_];

  if (!v35)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = objc_opt_self();
  v36 = [v57 systemBlueColor];
  v37 = v56;
  [v1 addBulletedListItemWithTitle:v56 description:v33 image:v35 tintColor:v36];

  v64 = v1;
  v56 = 0xD00000000000001BLL;
  sub_252064684();
  sub_252050ED4(v10);
  v38 = v61;
  v39 = v60;
  v60(v10, v61);
  v55 = sub_2520646F4();

  v64 = v1;
  sub_252064684();
  sub_252050ED4(v10);
  v39(v10, v38);
  v40 = sub_2520646F4();

  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.suggestionFitSymbols.getter(&v64);
  }

  v41 = sub_2520646F4();

  v42 = [v58 _systemImageNamed_];

  if (!v42)
  {
    goto LABEL_17;
  }

  v43 = [v57 systemBlueColor];
  v44 = v55;
  [v1 addBulletedListItemWithTitle:v55 description:v40 image:v42 tintColor:v43];

  v64 = v1;
  sub_252064684();
  sub_252050ED4(v10);
  v45 = v61;
  v60(v10, v61);
  v46 = sub_2520646F4();

  v64 = v1;
  sub_2520646B4();
  sub_2520646A4();
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.singleDeviceName.getter();
  }

  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v10);
  v60(v10, v45);
  v47 = sub_2520646F4();

  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.suggestionFitSymbols.getter(&v64);
  }

  v48 = sub_2520646F4();

  v49 = [v58 _systemImageNamed_];

  if (v49)
  {
    v50 = [v57 systemBlueColor];
    [v1 addBulletedListItemWithTitle:v46 description:v47 image:v49 tintColor:v50];

    v30 = [objc_opt_self() linkButton];
    v64 = v1;
    sub_252064684();
    sub_252050ED4(v10);
    v60(v10, v45);
    v51 = sub_2520646F4();

    [v30 setTitle:v51 forState:0];

    [v30 addTarget:v1 action:sel_earTipSuggestionTapped forControlEvents:64];
    v31 = [v1 buttonTray];
    [v31 addButton_];
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

void sub_2520476AC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_252047858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMSuggestionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_252047B20()
{
  result = qword_27F4C9DD0;
  if (!qword_27F4C9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9DD0);
  }

  return result;
}

uint64_t sub_252047BB4(unsigned __int8 a1)
{
  v2 = sub_2520646E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      type metadata accessor for FitNoiseAirpodPlacementVideoController();
      sub_252064684();
      v7 = sub_252050ED4(v6);
      v8 = *(v3 + 8);
      v8(v6, v2);
      sub_252064684();
      sub_252050ED4(v6);
      v8(v6, v2);
      return v7;
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    type metadata accessor for FitNoiseAirpodPlacementVideoController();
    sub_252064684();
    v7 = sub_252050ED4(v6);
    (*(v3 + 8))(v6, v2);
    return v7;
  }

  return a1;
}

unint64_t sub_252047DF0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25204A6C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_252047EAC()
{
  v1 = v0;
  v2 = sub_2520645F4();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_252064614();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_252064634();
  v7 = *(v52 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v52);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v43 - v11;
  v12 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_viewState;
  swift_beginAccess();
  if (v0[v12] > 1u)
  {
    if (v0[v12] == 2)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v0;
      v16 = *&v0[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel];
      v17 = v0;

      sub_252047BB4(2u);

      v18 = sub_2520646F4();

      [v16 setText_];

      v15 = sub_25204B0C8;
    }

    else
    {
      v43 = v7;
      v13 = swift_allocObject();
      *(v13 + 16) = v0;
      v22 = v0;

      v23 = [v22 traitCollection];
      v24 = [v23 layoutDirection];

      v25 = *&v22[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel];
      sub_252047BB4(v1[v12]);

      if (v24 == 1)
      {
        v26 = sub_2520646F4();

        [v25 setText_];
      }

      else
      {
        v29 = sub_2520646F4();

        [v25 setText_];
      }

      v27 = *&v22[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel];
      sub_252047BB4(v1[v12]);

      v28 = sub_2520646F4();

      [v27 setText_];

      v15 = sub_25204AD50;
      v7 = v43;
    }
  }

  else if (v0[v12])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    v19 = *&v0[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel];
    v20 = v0;

    sub_252047BB4(1u);

    v21 = sub_2520646F4();

    [v19 setText_];

    v15 = sub_25204B02C;
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    v14 = v0;

    v15 = sub_25204B05C;
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = v15;
  *(v31 + 24) = v13;
  v57 = sub_25204ADEC;
  v58 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_252033CCC;
  v56 = &block_descriptor_26;
  v32 = _Block_copy(&aBlock);

  [v30 animateWithDuration:v32 animations:0.3];
  _Block_release(v32);
  if (v1[v12] == 3)
  {
  }

  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v34 = sub_252064934();
  v35 = v44;
  sub_252064624();
  v36 = v45;
  sub_252064644();
  v43 = v7[1];
  (v43)(v35, v52);
  v37 = swift_allocObject();
  v37[2] = v15;
  v37[3] = v13;
  v37[4] = v1;
  v57 = sub_25204AE18;
  v58 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_252033CCC;
  v56 = &block_descriptor_32;
  v38 = _Block_copy(&aBlock);
  v39 = v1;

  v40 = v46;
  sub_252064604();
  aBlock = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  v41 = v48;
  v42 = v51;
  sub_2520649E4();
  MEMORY[0x253097D00](v36, v40, v41, v38);
  _Block_release(v38);

  (*(v50 + 8))(v41, v42);
  (*(v47 + 8))(v40, v49);
  return (v43)(v36, v52);
}

uint64_t sub_252048670()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_viewState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2520486B4(char a1)
{
  v3 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_viewState;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_252047EAC();
}

uint64_t (*sub_252048708(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25204876C;
}

uint64_t sub_25204876C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_252047EAC();
  }

  return result;
}

char *sub_252048804(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel;
  *&v5[v11] = sub_25204A55C();
  v12 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel;
  *&v5[v12] = sub_25204A55C();
  v13 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel;
  *&v5[v13] = sub_25204A55C();
  v5[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_viewState] = 0;
  v14 = &v5[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_listener];
  *v14 = 0u;
  v14[1] = 0u;
  *&v5[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_movieView] = a1;
  v89.receiver = v5;
  v89.super_class = type metadata accessor for FitNoiseAirpodPlacementVideoController.TopVideoPlacmentView();
  v15 = a1;
  v16 = objc_msgSendSuper2(&v89, sel_initWithFrame_, a2, a3, a4, a5);
  v17 = &_swift_FORCE_LOAD___swiftCoreMIDI___HearingModeUI;
  [v16 addSubview_];
  [v16 pinToOther_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252067F00;
  v82 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel;
  v19 = *&v16[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel];
  *(inited + 32) = v19;
  v80 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel;
  v20 = *&v16[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel];
  *(inited + 40) = v20;
  v81 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel;
  v21 = *&v16[OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel];
  *(inited + 48) = v21;
  v22 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  v23 = (inited & 0xC000000000000001);
  v24 = inited & 0xFFFFFFFFFFFFFF8;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v25; ; i = MEMORY[0x253097E20](0, inited))
  {
    v29 = i;
    [v16 v17[221]];
    v30 = [v29 topAnchor];
    v31 = [*(v15 + v22) bottomAnchor];
    v17 = [v30 constraintEqualToAnchor_];

    [(SEL *)v17 setActive:1];
    if (v23)
    {
      v33 = MEMORY[0x253097E20](1, inited);
      v32 = &_swift_FORCE_LOAD___swiftCoreMIDI___HearingModeUI;
    }

    else
    {
      v32 = &_swift_FORCE_LOAD___swiftCoreMIDI___HearingModeUI;
      if (*(v24 + 16) < 2uLL)
      {
        goto LABEL_20;
      }

      v33 = *(inited + 40);
    }

    [v16 v32[221]];
    v34 = [v33 topAnchor];
    v35 = [*(v15 + v22) bottomAnchor];
    v17 = [v34 constraintEqualToAnchor_];

    [(SEL *)v17 setActive:1];
    if (v23)
    {
      v36 = MEMORY[0x253097E20](2, inited);
      v23 = &_swift_FORCE_LOAD___swiftCoreMIDI___HearingModeUI;
    }

    else
    {
      v23 = &_swift_FORCE_LOAD___swiftCoreMIDI___HearingModeUI;
      if (*(v24 + 16) < 3uLL)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v36 = *(inited + 48);
    }

    [v16 v23[221]];
    v37 = [v36 topAnchor];
    v38 = [*(v15 + v22) bottomAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    [v39 setActive_];
    swift_setDeallocating();
    v40 = *(inited + 16);
    swift_arrayDestroy();
    v79 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_252067F00;
    v42 = [*&v16[v81] centerXAnchor];
    v43 = [*(v15 + v22) centerXAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v41 + 32) = v44;
    v45 = [*&v16[v82] centerXAnchor];
    v46 = [*(v15 + v22) leadingAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v41 + 40) = v47;
    v48 = v15;
    v15 = v80;
    v49 = [*&v16[v80] centerXAnchor];
    v24 = v48;
    v50 = [*(v48 + v22) trailingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v41 + 48) = v51;
    sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
    v52 = sub_2520647B4();

    [v79 activateConstraints_];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252067F00;
    v53 = *&v16[v82];
    *(inited + 32) = v53;
    v22 = inited + 32;
    v54 = *&v16[v80];
    *(inited + 40) = v54;
    v17 = *&v16[v81];
    *(inited + 48) = v17;
    v55 = inited & 0xC000000000000001;
    v23 = v53;
    v56 = v54;
    v57 = v17;
    if ((inited & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x253097E20](0, inited);
      v15 = v24;
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v15 = v24;
      v23 = v23;
    }

    [(SEL *)v23 setAlpha:0.0];

    if (v55)
    {
      v58 = MEMORY[0x253097E20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_21;
      }

      v58 = *(inited + 40);
    }

    v23 = v58;
    [(SEL *)v58 setAlpha:0.0];

    if (v55)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v59 = *(inited + 48);
      goto LABEL_19;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v59 = MEMORY[0x253097E20](2, inited);
LABEL_19:
  v60 = v59;
  [v59 setAlpha_];

  swift_setDeallocating();
  v61 = *(inited + 16);
  swift_arrayDestroy();
  v62 = *((*MEMORY[0x277D85000] & *v15) + 0xC0);
  v63 = v15;
  v64 = v62();

  v65 = sub_252064944();
  v67 = v66;
  v69 = v68;
  v70 = HIDWORD(v66);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v71 = sub_252064934();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v63;
  v87 = sub_25204A6FC;
  v88 = v73;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_252039B20;
  v86 = &block_descriptor_3;
  v74 = _Block_copy(&aBlock);
  v75 = v63;

  aBlock = v65;
  v84 = __PAIR64__(v70, v67);
  v85 = v69;
  v76 = [v64 addPeriodicTimeObserverForInterval:&aBlock queue:v71 usingBlock:v74];
  _Block_release(v74);

  sub_2520649D4();
  swift_unknownObjectRelease();
  v77 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_listener;
  swift_beginAccess();
  sub_252035DA0(&aBlock, &v16[v77]);
  swift_endAccess();

  return v16;
}

void sub_2520490FC()
{
  v1 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x80))())
  {
    v2 = (*((*v1 & **(v0 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_movieView)) + 0xC0))();
    [v2 play];
  }
}

uint64_t sub_252049304()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_252049364(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25203844C;
}

uint64_t sub_2520493FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_deviceAddress);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_deviceAddress + 8);

  return v1;
}

id FitNoiseAirpodPlacementVideoController.init(noiseDelegate:btAddress:hpDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_2520646E4();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2520646C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset] = 0;
  swift_beginAccess();
  v32 = a1;
  swift_unknownObjectWeakAssign();
  v16 = &v5[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_deviceAddress];
  *v16 = a2;
  *(v16 + 1) = a3;
  *&v5[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_headphoneDevice] = a4;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v29 = a4;
  v17 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a4);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.devicePlatformName.getter();
  }

  v18 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v28 = v17;
  if (v18)
  {
    v27 = AnyHearingFeatureContentProvider.singleDeviceName.getter();
  }

  else
  {
    v27 = 0x646F50726941;
  }

  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v13);
  v19 = v31;
  v20 = *(v30 + 8);
  v20(v13, v31);
  v21 = sub_2520646F4();

  sub_2520646B4();
  sub_2520646A4();
  sub_252064694();

  sub_2520646A4();
  sub_2520646D4();
  sub_252050ED4(v13);
  v20(v13, v19);
  v22 = sub_2520646F4();

  v23 = type metadata accessor for FitNoiseAirpodPlacementVideoController();
  v33.receiver = v5;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, v22, 0, 1);

  swift_unknownObjectRelease();
  return v24;
}

id sub_2520498F0()
{
  v1 = sub_2520646E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton;
  v7 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton);
  }

  else
  {
    v9 = [objc_opt_self() boldButton];
    v16[1] = v0;
    sub_252064684();
    type metadata accessor for FitNoiseAirpodPlacementVideoController();
    v10 = v0;
    sub_252050ED4(v5);
    (*(v2 + 8))(v5, v1);
    v11 = sub_2520646F4();

    [v9 setTitle:v11 forState:0];

    sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_252064974();
    [v9 addAction:v12 forControlEvents:64];

    v13 = *(v10 + v6);
    *(v10 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v14 = v7;
  return v8;
}

uint64_t sub_252049B30(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_252049B44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2520498F0();
  return sub_252049B8C;
}

void sub_252049B8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___continueButton) = v2;
}

char *sub_252049BA4()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset);
  }

  else
  {
    type metadata accessor for HearingFitNoiseVideoLoopPlayer(0);
    v4 = *(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_headphoneDevice);
    v5 = sub_25202EB78();
    v6 = v4;
    v7 = v0;
    sub_2520346D4(0, 0.0, 0.0, 0.0, 0.0, v5, v6);
    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = objc_allocWithZone(type metadata accessor for FitNoiseAirpodPlacementVideoController.TopVideoPlacmentView());
    v11 = sub_252048804(v9, 0.0, 0.0, 0.0, 0.0);
    v12 = *(v0 + v1);
    *(v7 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_252049C84(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FitNoiseAirpodPlacementVideoController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  v3 = sub_252049BA4();
  (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
}

id sub_252049DAC()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for FitNoiseAirpodPlacementVideoController();
  v1 = objc_msgSendSuper2(&v29, sel_viewDidLoad);
  [v0 fitNoiseSetupCancelButtonWithFitDelegate_];
  swift_unknownObjectRelease();
  v2 = [v0 contentView];
  v3 = sub_252049BA4();
  [v2 addSubview_];

  v4 = [v0 contentView];
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor_];

  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252067200;
  v8 = OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset;
  v9 = [*(v0 + OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController____lazy_storage___topAsset) widthAnchor];
  v10 = [v0 contentView];
  v11 = [v10 widthAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*(v0 + v8) heightAnchor];
  v14 = [v0 contentView];
  v15 = [v14 heightAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-30.0];
  *(v7 + 40) = v16;
  v17 = [*(v0 + v8) centerXAnchor];
  v18 = [v0 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v7 + 48) = v20;
  v21 = [*(v0 + v8) centerYAnchor];
  v22 = [v0 contentView];
  v23 = [v22 centerYAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:-15.0];
  *(v7 + 56) = v24;
  sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
  v25 = sub_2520647B4();

  [v6 activateConstraints_];

  v26 = [v0 buttonTray];
  v27 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  [v26 addButton_];

  return [v0 setModalInPresentation_];
}

id FitNoiseAirpodPlacementVideoController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520646F4();

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

  v13 = sub_2520646F4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520646F4();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id FitNoiseAirpodPlacementVideoController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520646F4();

  if (a4)
  {
    v12 = sub_2520646F4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id sub_25204A4A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_25204A55C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  return v0;
}

unint64_t sub_25204A6C8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_25204A6FC(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v14.value = a1;
    *&v14.timescale = a2;
    v14.epoch = a3;
    Seconds = CMTimeGetSeconds(&v14);
    v12 = MEMORY[0x277D85000];
    if (Seconds < 8.39 || (*((*MEMORY[0x277D85000] & *v10) + 0x80))())
    {
      if (Seconds < 12.31 || (*((*v12 & *v10) + 0x80))() >= 2u)
      {
        if (Seconds < 14.81 || (*((*v12 & *v10) + 0x80))() > 2u)
        {
          goto LABEL_12;
        }

        v13 = 3;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }

    (*((*v12 & *v8) + 0xE8))();
    (*((*v12 & *v10) + 0x88))(v13);
LABEL_12:
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25204A914()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel;
  *(v0 + v1) = sub_25204A55C();
  v2 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel;
  *(v0 + v2) = sub_25204A55C();
  v3 = OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel;
  *(v0 + v3) = sub_25204A55C();
  *(v0 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_viewState) = 0;
  v4 = (v0 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_listener);
  *v4 = 0u;
  v4[1] = 0u;
  sub_252064A74();
  __break(1u);
}

uint64_t sub_25204A9C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C98E0, &qword_2520673D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25204AA2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x78))())
    {
      type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
      v2 = *&v1[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_deviceAddress];
      v3 = *&v1[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_deviceAddress + 8];
      v4 = *&v1[OBJC_IVAR____TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController_headphoneDevice];

      v5 = v4;
      v6 = swift_unknownObjectRetain();
      v7 = sub_252038518(v6, v2, v3, v5);
      v8 = [v1 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 pushViewController:v7 animated:1];
        swift_unknownObjectRelease();

        v7 = v1;
        v1 = v9;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

unint64_t sub_25204AB78()
{
  result = qword_27F4C9E50;
  if (!qword_27F4C9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitNoiseAirpodPlacementVideoController.TopVideoPlacmentView.ViewState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FitNoiseAirpodPlacementVideoController.TopVideoPlacmentView.ViewState(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_25204AD50(char a1)
{
  v3 = *(v1 + 16);
  v4 = 0.0;
  [*(v3 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel) setAlpha_];
  if (a1)
  {
    v4 = 1.0;
  }

  [*(v3 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_firstLabel) setAlpha_];
  v5 = *(v3 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_secondLabel);

  return [v5 setAlpha_];
}

uint64_t sub_25204ADEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_25204AE18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v8[4] = sub_25204B07C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252033CCC;
  v8[3] = &block_descriptor_47;
  v6 = _Block_copy(v8);

  [v4 animateWithDuration:v6 animations:0.3];
  _Block_release(v6);
  v7 = (*((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_movieView)) + 0xC0))();
  [v7 play];
}

unint64_t sub_25204AF70()
{
  result = qword_27F4C9E58;
  if (!qword_27F4C9E58)
  {
    sub_2520645F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9E58);
  }

  return result;
}

unint64_t sub_25204AFC8()
{
  result = qword_27F4C9E68;
  if (!qword_27F4C9E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9E60, &unk_252068080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9E68);
  }

  return result;
}

id sub_25204B02C(char a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel);
  v3 = 0.0;
  if (a1)
  {
    v3 = 1.0;
  }

  return [*(*(v1 + 16) + OBJC_IVAR____TtCC13HearingModeUI38FitNoiseAirpodPlacementVideoController20TopVideoPlacmentView_centerLabel) setAlpha_];
}

uint64_t sub_25204B07C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_25204B0EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25204D418(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25204B120()
{
  sub_252064A34();
  MEMORY[0x253097B50](0xD000000000000026, 0x800000025206DB10);
  sub_252063ED4();
  sub_252064A64();
  sub_252063DE4();
}

uint64_t sub_25204B1C8()
{
  sub_252064A34();
  MEMORY[0x253097B50](0xD000000000000026, 0x800000025206DB40);
  sub_252063EA4();
  sub_252064A64();
  sub_252063DE4();
}

uint64_t sub_25204B270()
{
  sub_252064B44();
  (*(*v0 + 112))(v2);
  return sub_252064B64();
}

uint64_t sub_25204B3A4()
{
  sub_252064B44();
  (*(**v0 + 112))(v2);
  return sub_252064B64();
}

uint64_t sub_25204B414()
{
  type metadata accessor for HMNoiseCheckService.NoiseCheckObserver();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000012;
  *(result + 24) = 0x800000025206DB70;
  return result;
}

uint64_t sub_25204B46C()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_noiseCheckOngoing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25204B4B0(char a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_noiseCheckOngoing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25204B560()
{
  v1 = sub_252063EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063DE4();
  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager);
  sub_252063F34();
  v7 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_observer);
  sub_25204D5F0(&qword_27F4C9E88);
  sub_252063EB4();
  sub_25204D44C();
  v8 = sub_252064934();
  sub_252063F04();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25204B6CC()
{
  v1 = sub_252063ED4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_252063DE4();
  v9 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager);
  sub_252063EE4();
  (*(v2 + 16))(v6, v8, v1);
  v10 = (*(v2 + 88))(v6, v1);
  if (v10 == *MEMORY[0x277D12D80])
  {
    (*(v2 + 96))(v6, v1);
    sub_252063DE4();
    (*(v2 + 8))(v8, v1);
    v11 = sub_252063E94();
    (*(*(v11 - 8) + 8))(v6, v11);
    return 1;
  }

  else if (v10 == *MEMORY[0x277D12D90])
  {
    (*(v2 + 96))(v6, v1);
    sub_252063DE4();
    (*(v2 + 8))(v8, v1);
    v13 = sub_252063E94();
    (*(*(v13 - 8) + 8))(v6, v13);
    return 2;
  }

  else if (v10 == *MEMORY[0x277D12D88])
  {
    (*(v2 + 96))(v6, v1);
    sub_252063DE4();
    (*(v2 + 8))(v8, v1);
    v14 = sub_252063E94();
    (*(*(v14 - 8) + 8))(v6, v14);
    return 3;
  }

  else
  {
    sub_252063DE4();
    v15 = *(v2 + 8);
    v15(v8, v1);
    v15(v6, v1);
    return 0;
  }
}

uint64_t sub_25204BA58()
{
  v1 = sub_252063EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063DE4();
  (*((*MEMORY[0x277D85000] & *v0) + 0x78))(0);
  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager);
  v7 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_observer);
  sub_25204D5F0(&qword_27F4C9E88);
  sub_252063EB4();
  sub_252063F14();
  (*(v2 + 8))(v5, v1);
  return sub_252063F24();
}

uint64_t sub_25204BC38()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x88))();
  v1 = *(MEMORY[0x277D857E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25204BD10;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_25204BD10()
{
  v2 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_25204DDBC;
  }

  else
  {
    v3 = sub_25204BE28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25204BE28()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x90))();
  (*((*v2 & *v1) + 0x98))();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_25204C068(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_25204C0E0, 0, 0);
}

uint64_t sub_25204C0E0()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x88))();
  v1 = *(MEMORY[0x277D857E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_25204C1B8;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_25204C1B8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_25204DDB8;
  }

  else
  {
    v3 = sub_25204C2D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25204C2D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x90))();
  (*((*v3 & *v2) + 0x98))();

  v1[2](v1, v4);
  _Block_release(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_25204C3B8()
{
  v1 = sub_252063DD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NoiseDataProvider();
  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager);
  v14[3] = sub_252063F44();
  v14[4] = &protocol witness table for HTRequirementStatusManager;
  v14[0] = v6;

  sub_252063DC4();
  v7 = sub_252063DB4();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v12 = 0xD000000000000014;
  v13 = 0x800000025206DD30;
  MEMORY[0x253097B50](v7, v9);

  return sub_25205B488(v14, v12, v13);
}

uint64_t sub_25204C524()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_listeners;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25204C56C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_listeners;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25204C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E98, &qword_252068FF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9EA0, &qword_2520680C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  v16 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v13);
  v17 = (*((*v16 & *v3) + 0x78))(1);
  (*(**(a1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider) + 232))(v17);
  sub_25204D4C4(&qword_27F4C9EA8, &qword_27F4C9E98, &qword_252068FF0);
  sub_252064304();
  (*(v6 + 8))(v9, v5);
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 16) = v23;
  *(v18 + 24) = v19;
  sub_25204D4C4(&qword_27F4C9EB0, &qword_27F4C9EA0, &qword_2520680C0);

  sub_252064314();

  (*(v11 + 8))(v15, v10);
  v20 = (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v24);
  sub_252064274();

  return v20(v24, 0);
}

BOOL sub_25204C9A0@<W0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v4 = 0;
  result = static HTUINoiseView.Mode.== infix(_:_:)(&v5, &v4);
  *a2 = result;
  return result;
}

id HMNoiseCheckService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMNoiseCheckService.init()()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager;
  *&v0[v1] = sub_252063FE4();
  v2 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_observer;
  type metadata accessor for HMNoiseCheckService.NoiseCheckObserver();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000012;
  *(v3 + 24) = 0x800000025206DB70;
  *&v0[v2] = v3;
  v0[OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_noiseCheckOngoing] = 0;
  *&v0[OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_listeners] = MEMORY[0x277D84FA0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HMNoiseCheckService();
  return objc_msgSendSuper2(&v5, sel_init);
}

id HMNoiseCheckService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMNoiseCheckService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25204CCA8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25204DDB4;

  return v7();
}

uint64_t sub_25204CD90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25204CE78;

  return v8();
}

uint64_t sub_25204CE78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25204CF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_25204DB6C(a3, v25 - v11);
  v13 = sub_252064864();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25204DBDC(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_252064854();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_252064824();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_252064754() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_25204DBDC(a3);

    return v23;
  }

LABEL_8:
  sub_25204DBDC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25204D228(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25204D320;

  return v7(a1);
}

uint64_t sub_25204D320()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25204D418(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25204D44C()
{
  result = qword_27F4C9E10;
  if (!qword_27F4C9E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C9E10);
  }

  return result;
}

uint64_t sub_25204D498(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25204D4C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25204D534()
{
  result = qword_27F4C9EB8;
  if (!qword_27F4C9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9EB8);
  }

  return result;
}

uint64_t sub_25204D5F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HMNoiseCheckService.NoiseCheckObserver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of HMNoiseCheckService.runNoiseCheck()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25204D7AC;

  return v6();
}

uint64_t sub_25204D7AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25204D8F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25204CE78;

  return sub_25204C068(v2, v3);
}

uint64_t sub_25204D9A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25204DDB4;

  return sub_25204CCA8(v2, v3, v5);
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25204DAA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25204DDB4;

  return sub_25204CD90(a1, v4, v5, v7);
}

uint64_t sub_25204DB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25204DBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25204DC44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25204DDB4;

  return sub_25204D228(a1, v5);
}

uint64_t sub_25204DCFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25204CE78;

  return sub_25204D228(a1, v5);
}

uint64_t sub_25204DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = MEMORY[0x253097990](v4, 0.5, 0.85, 0.0);
  v6 = (*(*a1 + 232))();
  sub_252064534();
  v7 = sub_252064564();

  result = sub_252064484();
  *a2 = sub_25204DF48;
  *(a2 + 8) = a1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = result;
  return result;
}

double sub_25204DE80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_252064424();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F40, &qword_2520684E0);
  sub_25204DF50(a2, a1, (a3 + *(v6 + 44)));
  sub_252064344();
  sub_2520645A4();
  sub_252064334();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F48, &qword_2520684E8) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_25204DF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  v4 = sub_252064354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F50, &qword_2520684F0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = (*(*a1 + 232))(v12);
  v16 = sub_25204F52C(v15);

  v33 = v16;
  KeyPath = swift_getKeyPath();
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v4);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  (*(v5 + 32))(v18 + v17, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25204FA18;
  *(v19 + 24) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F58, &qword_252068518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F60, &qword_252068520);
  sub_25204D4C4(&qword_27F4C9F68, &qword_27F4C9F58, &qword_252068518);
  sub_25204FD04();
  sub_252064584();
  v20 = v8[2];
  v21 = v31;
  v20(v31, v14, v7);
  v22 = v32;
  *v32 = 0;
  *(v22 + 8) = 1;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FA8, &qword_252068540);
  v20(&v23[*(v24 + 48)], v21, v7);
  v25 = &v23[*(v24 + 64)];
  *v25 = 0;
  v25[8] = 1;
  v26 = v8[1];
  v26(v14, v7);
  return (v26)(v21, v7);
}

uint64_t sub_25204E354@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 272))();

  result = swift_beginAccess();
  *a1 = v1[16];
  return result;
}

void *sub_25204E3E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_25204E440(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 144))(&v4);
}

uint64_t sub_25204E498(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v6 = v1[16];
  sub_25204E5C8();
  result = sub_252064674();
  if (result)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 280))(v5, sub_25204E61C);
  }

  return result;
}

unint64_t sub_25204E5C8()
{
  result = qword_27F4C9ED8;
  if (!qword_27F4C9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9ED8);
  }

  return result;
}

uint64_t sub_25204E61C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_25204E670(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13HearingModeUI17NoiseWaveformView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25204E79C();
  sub_252064024();

  v4[7] = sub_25204E2F8();
  return sub_25204E790;
}

unint64_t sub_25204E79C()
{
  result = qword_27F4C9EE0;
  if (!qword_27F4C9EE0)
  {
    type metadata accessor for NoiseWaveformView.Model();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9EE0);
  }

  return result;
}

uint64_t type metadata accessor for NoiseWaveformView.Model()
{
  result = qword_27F4CC7C0;
  if (!qword_27F4CC7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_25204E840(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25204E894;
}

uint64_t sub_25204E894(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_25204EFEC();
  }

  return result;
}

uint64_t sub_25204E8D0()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  swift_beginAccess();
  v1 = v0[3];
}

uint64_t sub_25204E954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_25204E9A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_25204E9F4(uint64_t a1)
{
  swift_beginAccess();
  if (sub_25204F698(v1[3], a1))
  {
    v1[3] = a1;

    return sub_25204EFEC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 280))(v5, sub_25204F6F4);
  }
}

void (*sub_25204EB10(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV13HearingModeUI17NoiseWaveformView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25204E79C();
  sub_252064024();

  v4[7] = sub_25204E840(v4);
  return sub_25204EC30;
}

void sub_25204EC3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_252064014();

  free(v1);
}

uint64_t sub_25204ECD0()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  v1 = v0[4];
}

uint64_t sub_25204ED44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_25204ED90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25204EDBC(v4);
}

uint64_t sub_25204EDBC(uint64_t result)
{
  v2 = v1[4];
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      v1[4] = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 280))(v8, sub_25204F760);
  }

  return result;
}

uint64_t sub_25204EF20(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LOBYTE(a1) = *a1;
  *(v7 + 32) = MEMORY[0x277D84F90];
  sub_252064034();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_25204EFEC();
  return v7;
}

uint64_t sub_25204EF90(char *a1, uint64_t a2)
{
  v4 = *a1;
  *(v2 + 32) = MEMORY[0x277D84F90];
  sub_252064034();
  *(v2 + 16) = v4;
  *(v2 + 24) = a2;
  sub_25204EFEC();
  return v2;
}

uint64_t sub_25204EFEC()
{
  v1 = (*(*v0 + 184))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    v3 = v1;
    sub_25204F408(0, v2, 0);
    v4 = v3;
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(v4 + v7);
      v9 = *(v11 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_25204F408((v9 > 1), v6 + 1, 1);
        v4 = v3;
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8 / 90.0;
      v7 += 8;
      ++v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  return sub_25204EDBC(v5);
}

uint64_t sub_25204F208()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtCV13HearingModeUI17NoiseWaveformView5Model___observationRegistrar;
  v4 = sub_252064044();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_25204F278()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtCV13HearingModeUI17NoiseWaveformView5Model___observationRegistrar;
  v4 = sub_252064044();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_25204F348@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  v5 = MEMORY[0x253097990](v4, 0.5, 0.85, 0.0);
  v6 = (*(*v3 + 232))();
  sub_252064534();
  v7 = sub_252064564();

  result = sub_252064484();
  *a1 = sub_25204FE78;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = result;
  return result;
}

char *sub_25204F408(char *a1, int64_t a2, char a3)
{
  result = sub_25204F428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25204F428(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F38, &qword_2520684D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_25204F52C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FB8, &unk_252068550);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25204F698(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25204F6F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;

  return sub_25204EFEC();
}

uint64_t sub_25204F760()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_25204F7D0()
{
  result = sub_252064044();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25204F87C()
{
  result = qword_27F4C9EE8;
  if (!qword_27F4C9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9EF0, &qword_2520684B0);
    sub_25204F934();
    sub_25204D4C4(&qword_27F4C9F28, &qword_27F4C9F30, &qword_2520684D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9EE8);
  }

  return result;
}

unint64_t sub_25204F934()
{
  result = qword_27F4C9EF8;
  if (!qword_27F4C9EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9F00, &qword_2520684B8);
    sub_25204D4C4(&qword_27F4C9F08, &qword_27F4C9F10, &qword_2520684C0);
    sub_25204D4C4(&qword_27F4C9F18, &qword_27F4C9F20, &qword_2520684C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9EF8);
  }

  return result;
}

double sub_25204FA18@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_252064354() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FB0, &qword_252068548);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252066AA0;
  v7 = *(*v5 + 136);
  v7(v24);
  sub_25205479C();
  v8 = sub_252064564();

  *(v6 + 32) = v8;
  (v7)(v24, v9);
  sub_25205479C();
  v10 = sub_252064564();

  *(v6 + 40) = v10;
  MEMORY[0x253097970](v6);
  sub_2520645D4();
  sub_2520645E4();
  sub_252064364();
  v11 = v25;
  sub_252064344();
  sub_2520645A4();
  sub_252064334();
  *&v24[6] = v28;
  *&v24[22] = v29;
  *&v24[38] = v30;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9F60, &qword_252068520) + 36));
  v13 = *(sub_252064384() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_252064434();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #2.5 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FA0, &qword_252068538) + 36)] = 256;
  *a1 = v11;
  v21 = v26;
  *(a1 + 24) = v27;
  *(a1 + 8) = v21;
  *(a1 + 40) = 256;
  v22 = *&v24[16];
  *(a1 + 42) = *v24;
  *(a1 + 58) = v22;
  result = *&v24[32];
  *(a1 + 74) = *&v24[32];
  *(a1 + 88) = *&v24[46];
  return result;
}

uint64_t sub_25204FCD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

unint64_t sub_25204FD04()
{
  result = qword_27F4C9F70;
  if (!qword_27F4C9F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9F60, &qword_252068520);
    sub_25204FDBC();
    sub_25204D4C4(&qword_27F4C9F98, &qword_27F4C9FA0, &qword_252068538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9F70);
  }

  return result;
}

unint64_t sub_25204FDBC()
{
  result = qword_27F4C9F78;
  if (!qword_27F4C9F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C9F80, &qword_252068528);
    sub_25204D4C4(&qword_27F4C9F88, &qword_27F4C9F90, &qword_252068530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C9F78);
  }

  return result;
}

double sub_25204FEA0()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double sub_25204FEB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v1;
  return v2;
}

double sub_25204FEF4()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

id sub_25204FF10()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

uint64_t sub_25204FFA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a3;
  *(a4 + 56) = a9;
  *(a4 + 64) = a10;
  *(a4 + 72) = a11;
  return result;
}

id sub_25204FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, id a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a3)
  {
    a1 = *v14;
    a2 = v14[1];
  }

  v18 = a13;
  v19 = a10;
  v20 = a11;
  v33 = a5;
  if (a4)
  {
    v21 = a4;
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = a6;
    v26 = a2;
    v27 = v14[2];
    a2 = v26;
    v18 = a13;
    v19 = a10;
    v20 = a11;
    a6 = v25;
    a5 = v33;
    v21 = v27;
    if (v33)
    {
LABEL_5:
      v22 = a5;
      if ((a12 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v30 = v21;
  v29 = v14[4];
  a7 = v14[5];
  a8 = *(v14 + 12);
  v28 = a2;
  v22 = v14[3];
  a6 = v29;
  v21 = v30;
  a2 = v28;
  if (a12)
  {
LABEL_6:
    v19 = v14[7];
    v20 = v14[8];
  }

LABEL_7:
  if (a14)
  {
    v18 = v14[9];
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = v19;
  *(a9 + 64) = v20;
  *(a9 + 72) = v18;
  v23 = a4;

  return v33;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_252050128(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_252050170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2520501E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252050228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252067200;
  v5 = [v1 leadingAnchor];
  v6 = [(UIView *)a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [(UIView *)a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [(UIView *)a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [(UIView *)a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
  v17 = sub_2520647B4();

  [v3 activateConstraints_];
}

void sub_2520504F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.pinToOther(_:)(v4);
}

id sub_252050564(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FD0, &qword_252068628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252066A80;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_252035980(0, &qword_27F4C9FD8, 0x277D74300);
  *(inited + 40) = a3;
  v6 = v5;
  v7 = a3;
  sub_252050B3C(inited);
  swift_setDeallocating();
  sub_252050C44(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_2520646F4();
  type metadata accessor for Key();
  sub_252050E1C(&qword_27F4C9FE8);
  v10 = sub_252064654();

  v11 = [v8 initWithString:v9 attributes:v10];

  [v13 appendAttributedString_];

  return v13;
}

void OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(uint64_t a1)
{
  v3 = sub_2520641F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D751E0]);
    swift_unknownObjectRetain();
    v9 = [v8 initWithBarButtonSystemItem:1 target:0 action:0];
    sub_252035980(0, &unk_27F4C98C0, 0x277D750C8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_252064974();
    [v9 setPrimaryAction_];

    v14 = [v12 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252068610;
    *(v15 + 32) = v9;
    sub_252035980(0, &qword_27F4C9C18, 0x277D751E0);
    v16 = v9;
    v23 = sub_2520647B4();

    [v14 setRightBarButtonItems_];
    swift_unknownObjectRelease();

    v17 = v23;
  }

  else
  {
    v18 = sub_252038200();
    (*(v4 + 16))(v7, v18, v3);
    v19 = sub_2520641D4();
    v20 = sub_2520648C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25201E000, v19, v20, "No delegate", v21, 2u);
      MEMORY[0x2530987C0](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_252050A3C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_252050AA4(uint64_t a1)
{
  v2 = sub_252050E1C(&qword_27F4C9FE8);
  v3 = sub_252050E1C(&qword_27F4CA010);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_252050B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA018, qword_2520687F8);
    v3 = sub_252064AB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_252050E60(v4, &v11);
      v5 = v11;
      result = sub_25203A370(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25203A6D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_252050C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FE0, &unk_252068630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Key()
{
  if (!qword_27F4C9FF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C9FF0);
    }
  }
}

void sub_252050CFC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([v1 respondsToSelector_])
    {
      [v1 fitNoiseCheckCancelled_];
    }
  }
}

uint64_t sub_252050E1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252050E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9FE0, &unk_252068630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252050ED4(uint64_t a1)
{
  v2 = sub_252063E04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2520646E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25205103C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_252063DF4();
  return sub_252064734();
}

unint64_t sub_25205103C()
{
  result = qword_27F4CA020;
  if (!qword_27F4CA020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CA020);
  }

  return result;
}

uint64_t sub_252051088(uint64_t a1)
{
  v2 = sub_252063E04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2520646E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25205103C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_252063DF4();
  return sub_252064734();
}

void HMFitNoiseCheckContentViewController.showAirpodsFitSuggestionsController(headphoneDevice:)(void *a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_2520646E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = type metadata accessor for HMSuggestionsController();
  v23 = v1;
  sub_252064684();
  sub_252051420();
  v8 = sub_252050ED4(v7);
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v7, v3);
  v23 = v1;
  sub_252064684();
  v12 = sub_252050ED4(v7);
  v14 = v13;
  v11(v7, v3);
  v15 = v22;
  v16 = v22;
  v17 = sub_25204679C(v8, v10, v12, v14, 0, v15);
  v18 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];
  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 presentViewController:v18 animated:1 completion:0];
  }
}

unint64_t sub_252051420()
{
  result = qword_27F4CA028;
  if (!qword_27F4CA028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CA028);
  }

  return result;
}

void OBWelcomeController.showAirpodsNoiseReductionController(headphoneDevice:)(void *a1)
{
  v2 = v1;
  type metadata accessor for HMSuggestionsController();
  v4 = sub_25203AED0();
  v6 = v5;
  v7 = sub_25203AED0();
  v9 = v8;
  v10 = a1;
  v14 = sub_25204679C(v4, v6, v7, v9, 1, a1);
  v11 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];
  v12 = [v2 navigationController];
  if (v12)
  {
    v13 = v12;
    [v12 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_25205162C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  OBWelcomeController.showAirpodsNoiseReductionController(headphoneDevice:)(v4);
}

uint64_t sub_2520516A8@<X0>(uint64_t a1@<X8>)
{
  v54 = sub_2520641F4();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_252063E94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_252063ED4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v46[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v46[-v17];
  v19 = *(v11 + 16);
  v50 = v1;
  v19(&v46[-v17], v1, v10);
  v20 = (*(v11 + 88))(v18, v10);
  if (v20 == *MEMORY[0x277D12D80])
  {
    (*(v11 + 96))(v18, v10);
    v21 = *(v6 + 32);
    v21(v9, v18, v5);
    *(a1 + 24) = v5;
    *(a1 + 32) = &protocol witness table for HTEnvNoiseData;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = v21(boxed_opaque_existential_1, v9, v5);
    *(a1 + 40) = 0;
  }

  else
  {
    v48 = a1;
    if (v20 == *MEMORY[0x277D12D90])
    {
      (*(v11 + 96))(v18, v10);
      v24 = *(v6 + 32);
      v24(v9, v18, v5);
      v25 = v48;
      *(v48 + 24) = v5;
      *(v25 + 32) = &protocol witness table for HTEnvNoiseData;
      v26 = __swift_allocate_boxed_opaque_existential_1(v25);
      result = v24(v26, v9, v5);
      *(v25 + 40) = 0;
    }

    else if (v20 == *MEMORY[0x277D12D88])
    {
      (*(v11 + 96))(v18, v10);
      v27 = *(v6 + 32);
      v27(v9, v18, v5);
      v28 = v48;
      *(v48 + 24) = v5;
      *(v28 + 32) = &protocol witness table for HTEnvNoiseData;
      v29 = __swift_allocate_boxed_opaque_existential_1(v28);
      result = v27(v29, v9, v5);
      *(v28 + 40) = 1;
    }

    else if (v20 == *MEMORY[0x277D12D78])
    {
      (*(v11 + 96))(v18, v10);
      v30 = *(v6 + 32);
      v30(v9, v18, v5);
      v31 = v48;
      *(v48 + 24) = v5;
      *(v31 + 32) = &protocol witness table for HTEnvNoiseData;
      v32 = __swift_allocate_boxed_opaque_existential_1(v31);
      result = v30(v32, v9, v5);
      *(v31 + 40) = 2;
    }

    else
    {
      v33 = sub_25205AA4C();
      v34 = v52;
      (*(v52 + 16))(v53, v33, v54);
      v35 = v51;
      v19(v51, v50, v10);
      v36 = sub_2520641D4();
      v37 = sub_2520648C4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v38 = 136315394;
        *(v38 + 4) = sub_25202FA10(0xD00000000000001ALL, 0x800000025206DFB0, &v55);
        *(v38 + 12) = 2080;
        v47 = v37;
        v19(v49, v35, v10);
        v39 = sub_252064744();
        v41 = v40;
        v42 = *(v11 + 8);
        v42(v35, v10);
        v43 = sub_25202FA10(v39, v41, &v55);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_25201E000, v36, v47, "[%s] Encountered an unknown noise status: %s", v38, 0x16u);
        v44 = v50;
        swift_arrayDestroy();
        MEMORY[0x2530987C0](v44, -1, -1);
        MEMORY[0x2530987C0](v38, -1, -1);

        (*(v52 + 8))(v53, v54);
      }

      else
      {

        v42 = *(v11 + 8);
        v42(v35, v10);
        (*(v34 + 8))(v53, v54);
      }

      v45 = v48;
      *(v48 + 24) = &type metadata for MockNoiseData;
      *(v45 + 32) = &off_286444380;
      *v45 = MEMORY[0x277D84F90];
      *(v45 + 40) = 2;
      return v42(v18, v10);
    }
  }

  return result;
}

uint64_t HTRequirementStatusManager.waveFormNoiseStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252063ED4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063EE4();
  sub_2520516A8(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t HTRequirementStatusManager.addNoiseStatusObserver(_:queue:)()
{
  v0 = sub_252063EC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063EB4();
  sub_252063F04();
  return (*(v1 + 8))(v4, v0);
}

uint64_t HTRequirementStatusManager.removeNoiseStatusObserver(_:)()
{
  v0 = sub_252063EC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063EB4();
  sub_252063F14();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_252051FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252063ED4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_252063EE4();
  sub_2520516A8(a1);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_252052088()
{
  v1 = sub_252063EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_252063EB4();
  sub_252063F04();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25205217C()
{
  v1 = sub_252063EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_252063EB4();
  sub_252063F14();
  return (*(v2 + 8))(v5, v1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static HMFitNoiseCheckViewController.prepareFitTest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_252064864();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_252064844();
  v5 = sub_252064834();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_25205276C(0, 0, v3, &unk_252068928, v6);
}

uint64_t sub_2520523F4()
{
  sub_252064844();
  v0[2] = sub_252064834();
  v2 = sub_252064824();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_252052488, v2, v1);
}

uint64_t sub_252052488()
{
  v1 = sub_252063E64();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_252063E74();
  v4 = *(MEMORY[0x277D12CB0] + 4);
  v7 = (*MEMORY[0x277D12CB0] + MEMORY[0x277D12CB0]);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_252052554;

  return v7(20);
}

uint64_t sub_252052554()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 32);
  v4 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_252052674, v4, v3);
}

uint64_t sub_252052674()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2520526E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25204DDB4;

  return sub_2520523F4();
}

uint64_t sub_25205276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25204DB6C(a3, v27 - v11);
  v13 = sub_252064864();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_252039F34(v12, &qword_27F4C9ED0, &qword_2520682E8);
  }

  else
  {
    sub_252064854();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_252064824();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_252064754() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_252039F34(a3, &qword_27F4C9ED0, &qword_2520682E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_252039F34(a3, &qword_27F4C9ED0, &qword_2520682E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HMFitNoiseCheckViewController.startListeningForNoiseLevelChange()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E98, &qword_252068FF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9EA0, &qword_2520680C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  if (sub_252052F2C())
  {
  }

  else
  {
    sub_252064284();
    sub_2520535AC();
    v12 = sub_252064894();
    swift_beginAccess();
    objc_setAssociatedObject(v1, &byte_27F4CD4B0, v12, 1);
    swift_endAccess();
  }

  v13 = [v1 fitNoiseCheckTopView];
  v14 = *&v13[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider];

  (*(*v14 + 232))();

  sub_25204D4C4(&qword_27F4C9EA8, &qword_27F4C9E98, &qword_252068FF0);
  sub_252064304();
  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v16[1] = v1;
  sub_25204D4C4(&qword_27F4C9EB0, &qword_27F4C9EA0, &qword_2520680C0);
  sub_252064324();

  (*(v8 + 8))(v11, v7);
  v16[0] = sub_252052F2C();
  if (v16[0])
  {
    sub_252064274();

    if (v16[0])
    {
      sub_252064284();
      sub_2520535AC();
      v15 = sub_252064894();
    }

    else
    {
      v15 = 0;
    }

    swift_beginAccess();
    objc_setAssociatedObject(v1, &byte_27F4CD4B0, v15, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_252052F2C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F4CD4B0);
  swift_endAccess();
  if (v1)
  {
    sub_2520649D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA050, &qword_2520689D0);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_252039F34(v6, &unk_27F4C98E0, &qword_2520673D0);
  }

  return 0;
}

BOOL sub_25205301C@<W0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2520641F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_252038200();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_2520641D4();
  v12 = sub_2520648D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    v17 = v9;
    v16 = 0;
    *(v13 + 4) = static HTUINoiseView.Mode.== infix(_:_:)(&v17, &v16);
    _os_log_impl(&dword_25201E000, v11, v12, "$noiseViewMode listender called with value accecptable: %{BOOL}d", v13, 8u);
    MEMORY[0x2530987C0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v19 = v9;
  v18 = 0;
  result = static HTUINoiseView.Mode.== infix(_:_:)(&v19, &v18);
  *a2 = result;
  return result;
}

id sub_2520531C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 buttonTray];
  *a2 = result;
  return result;
}

void sub_252053200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 allButtons];
  sub_2520537A8();
  v4 = sub_2520647C4();

  *a2 = v4;
}

id sub_252053264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    if (v3 < 0)
    {
      v5 = *a1;
    }

    result = sub_252064A84();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253097E20](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_2520532E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

Swift::Void __swiftcall HMFitNoiseCheckViewController.stopListeningForNoiseLevelChange()()
{
  sub_252064284();
  sub_2520535AC();
  v1 = sub_252064894();
  swift_beginAccess();
  objc_setAssociatedObject(v0, &byte_27F4CD4B0, v1, 1);
  swift_endAccess();

  v2 = [v0 fitNoiseCheckTopView];
  v3 = *&v2[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider];

  (*(*v3 + 296))();
}

unint64_t sub_2520535AC()
{
  result = qword_27F4CA030;
  if (!qword_27F4CA030)
  {
    sub_252064284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA030);
  }

  return result;
}

uint64_t sub_25205366C(char a1)
{
  result = swift_beginAccess();
  byte_27F4CD4B0 = a1;
  return result;
}

uint64_t sub_25205371C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25204CE78;

  return sub_2520523F4();
}

unint64_t sub_2520537A8()
{
  result = qword_27F4CA048;
  if (!qword_27F4CA048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CA048);
  }

  return result;
}

uint64_t sub_2520537F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25204DDB4;

  return sub_25204D228(a1, v5);
}

uint64_t sub_2520538AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25204CE78;

  return sub_25204D228(a1, v5);
}

uint64_t sub_252053964()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD4B8);
  __swift_project_value_buffer(v0, qword_27F4CD4B8);
  return sub_2520641E4();
}

uint64_t sub_2520539E8()
{
  if (qword_27F4CCAF0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD4B8);
}

uint64_t sub_252053A4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CCAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD4B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_252053B04()
{
  _s24HearingTestUIBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4CD4D0 = result;
  return result;
}

uint64_t *sub_252053B58()
{
  if (qword_27F4CCAF8 != -1)
  {
    swift_once();
  }

  return &qword_27F4CD4D0;
}

id sub_252053BA8()
{
  if (qword_27F4CCAF8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F4CD4D0;

  return v0;
}

uint64_t sub_252053C04()
{
  if (qword_27F4CCAF8 != -1)
  {
    swift_once();
  }

  return sub_252063D54();
}

unint64_t sub_252053CB4()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_252053D04()
{
  v1 = sub_2520646E4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (v5 + 8);
  if (*v0)
  {
    if (*v0 == 1)
    {
      v9[15] = 1;
    }

    else
    {
      v9[14] = 2;
    }

    sub_252064684();
  }

  else
  {
    v9[13] = 0;
    sub_252064684();
  }

  v7 = sub_252050ED4(v4);
  (*v6)(v4, v1);
  return v7;
}

uint64_t sub_252053EC0@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_252064454();
  v62 = *(v2 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA058, &qword_2520689F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA060, &qword_2520689F8);
  v9 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v11 = &v52 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA068, &qword_252068A00);
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA070, &qword_252068A08);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA078, &qword_252068A10);
  v19 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v21 = &v52 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA080, &qword_252068A18);
  v22 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v24 = &v52 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA088, &qword_252068A20);
  v25 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v27 = &v52 - v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA090, &qword_252068A28);
  v28 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - v29;
  v30 = *v1;
  *v8 = sub_252064424();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA098, &qword_252068A30);
  sub_252054570(v30, &v8[*(v31 + 44)]);
  v64 = v2;
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = sub_252064554();
    }

    else
    {
      v32 = sub_252064534();
    }
  }

  else
  {
    v32 = sub_252064544();
  }

  v33 = v32;
  KeyPath = swift_getKeyPath();
  sub_252055990(v8, v11, &qword_27F4CA058, &qword_2520689F0);
  v35 = &v11[*(v53 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = sub_2520644A4();
  v37 = swift_getKeyPath();
  sub_252055990(v11, v14, &qword_27F4CA060, &qword_2520689F8);
  v38 = &v14[*(v54 + 36)];
  *v38 = v37;
  v38[1] = v36;
  sub_252064494();
  sub_2520559F8();
  sub_2520644F4();
  sub_252039F34(v14, &qword_27F4CA068, &qword_252068A00);
  v39 = &v21[*(v52 + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA0D8, &qword_252068AA8) + 28);
  v41 = *MEMORY[0x277CE0B48];
  v42 = sub_2520644B4();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v39 + v40, v41, v42);
  (*(v43 + 56))(v39 + v40, 0, 1, v42);
  *v39 = swift_getKeyPath();
  (*(v59 + 32))(v21, v18, v60);
  v44 = swift_getKeyPath();
  sub_252055990(v21, v24, &qword_27F4CA078, &qword_252068A10);
  v45 = &v24[*(v55 + 36)];
  *v45 = v44;
  v45[1] = 0x3FE0000000000000;
  v46 = sub_2520645C4();
  sub_252055990(v24, v27, &qword_27F4CA080, &qword_252068A18);
  v47 = &v27[*(v57 + 36)];
  *v47 = v46;
  v47[8] = v30;
  v67 = v30;
  v65 = sub_252053D04();
  v66 = v48;
  sub_252055CB4();
  sub_2520376CC();
  v49 = v56;
  sub_252064514();

  sub_252039F34(v27, &qword_27F4CA088, &qword_252068A20);
  v50 = v61;
  sub_252064444();
  sub_252064374();
  (*(v62 + 8))(v50, v64);
  return sub_252039F34(v49, &qword_27F4CA090, &qword_252068A28);
}

uint64_t sub_252054570@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA170, &qword_252068DB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v22 = sub_252064574();
  sub_252064524();

  v24 = a1;
  v22 = sub_252053D04();
  v23 = v11;
  sub_2520376CC();
  v12 = sub_2520644C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_25203E9E4(v10, v8, &qword_27F4CA170, &qword_252068DB0);
  sub_25203E9E4(v8, a2, &qword_27F4CA170, &qword_252068DB0);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA178, &qword_252068DB8) + 48);
  *v19 = v12;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16 & 1;
  *(v19 + 24) = v18;
  sub_252056728(v12, v14, v16 & 1);

  sub_252039F34(v10, &qword_27F4CA170, &qword_252068DB0);
  sub_252056738(v12, v14, v16 & 1);

  return sub_252039F34(v8, &qword_27F4CA170, &qword_252068DB0);
}

uint64_t sub_25205479C()
{
  if (!*v0)
  {
    return sub_252064544();
  }

  if (*v0 == 1)
  {
    return sub_252064554();
  }

  return sub_252064534();
}

double HTUINoiseView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_252064464();
  v28 = 0;
  v5 = (*(*v3 + 176))();
  v7 = CGPointMake(v5, v6);
  sub_2520645A4();
  v8 = sub_252064394();
  (*(*v3 + 128))(v30, v8);
  *v29 = v7;
  *&v29[8] = v32;
  *&v29[24] = v33;
  *&v29[40] = v34;
  *&v29[56] = v35;
  *&v29[88] = v37;
  *&v29[104] = v38;
  *&v29[72] = v36;
  v21 = *&v29[32];
  v22 = *&v29[48];
  v19 = *v29;
  v20 = *&v29[16];
  v24 = *&v29[80];
  v25 = *&v29[96];
  v23 = *&v29[64];
  *&v30[40] = v34;
  *&v30[24] = v33;
  *&v30[8] = v32;
  v9 = v30[0];
  v26 = *(&v38 + 1);
  *v30 = v7;
  *&v30[104] = v38;
  *&v30[88] = v37;
  *&v30[72] = v36;
  *&v30[56] = v35;
  sub_25203E9E4(v29, v18, &qword_27F4CA160, &qword_252068DA0);
  sub_252039F34(v30, &qword_27F4CA160, &qword_252068DA0);
  *&v29[64] = v23;
  *&v29[80] = v24;
  *&v29[96] = v25;
  *v29 = v19;
  *&v29[16] = v20;
  *&v29[32] = v21;
  *&v29[48] = v22;
  *&v30[64] = v23;
  *&v30[80] = v24;
  *&v30[96] = v25;
  *v30 = v19;
  *&v30[16] = v20;
  *&v29[112] = v26;
  v29[120] = v9;
  *&v30[112] = v26;
  *&v30[32] = v21;
  *&v30[48] = v22;
  v31 = v9;
  sub_25203E9E4(v29, v18, &qword_27F4CA120, &qword_252068B20);
  sub_252039F34(v30, &qword_27F4CA120, &qword_252068B20);
  *(&v27[4] + 7) = *&v29[64];
  *(&v27[5] + 7) = *&v29[80];
  *(&v27[6] + 7) = *&v29[96];
  v27[7] = *&v29[105];
  *(v27 + 7) = *v29;
  *(&v27[1] + 7) = *&v29[16];
  *(&v27[2] + 7) = *&v29[32];
  *(&v27[3] + 7) = *&v29[48];
  v10 = v28;
  sub_252064534();
  v11 = sub_252064564();

  v12 = sub_252064484();
  v13 = v27[5];
  *(a1 + 81) = v27[4];
  *(a1 + 97) = v13;
  v14 = v27[7];
  *(a1 + 113) = v27[6];
  *(a1 + 129) = v14;
  v15 = v27[1];
  *(a1 + 17) = v27[0];
  *(a1 + 33) = v15;
  result = *&v27[2];
  v17 = v27[3];
  *(a1 + 49) = v27[2];
  *a1 = v4;
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = v10;
  *(a1 + 65) = v17;
  *(a1 + 152) = v11;
  *(a1 + 160) = v12;
  return result;
}

uint64_t HTUINoiseView.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_252064B44();
  MEMORY[0x253097F30](v1);
  return sub_252064B64();
}

uint64_t (*sub_252054B2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_252054B80;
}

uint64_t sub_252054B80(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = (*(*v5 + 176))(result);
    (*(*v5 + 128))(&v7);
    (*(*v6 + 144))(&v7);
  }

  return result;
}

void *sub_252054C3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_252054C98(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

uint64_t sub_252054CF0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 232))();

  result = swift_beginAccess();
  *a1 = v1[16];
  return result;
}

uint64_t sub_252054D78(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_beginAccess();
  if (v1[16] == v2)
  {
    v4 = (*(*v1 + 176))(v3);
    (*(*v1 + 128))(&v10);
    (*(*v4 + 144))(&v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v8 = v1;
    v9 = v2;
    (*(*v1 + 240))(v7, sub_252055F18);
  }
}

void (*sub_252054EE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 232))();

  v4[5] = OBJC_IVAR____TtCV13HearingModeUI13HTUINoiseView5Model___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2520565FC(&qword_27F4CA128, type metadata accessor for HTUINoiseView.Model);
  sub_252064024();

  v4[7] = sub_252054B2C(v4);
  return sub_25205501C;
}

void sub_25205501C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_252064014();

  free(v1);
}

uint64_t sub_2520550B0()
{
  swift_getKeyPath();
  (*(*v0 + 232))();

  v1 = v0[3];
}

uint64_t sub_25205511C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_252055168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_252055194(v4);
}

uint64_t sub_252055194(uint64_t a1)
{
  if (v1[3] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 240))(v4, sub_252056040);
  }
}

uint64_t sub_252055294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_2520552E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_252055334()
{
  v1 = (*(*v0 + 176))();
  v2 = (*(*v1 + 184))(v1);

  return v2;
}

uint64_t sub_2520553AC(uint64_t a1)
{
  v3 = (*(*v1 + 176))();
  (*(*v3 + 192))(a1);
}

uint64_t (*sub_252055430(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 176);
  v4 = (*v1 + 176) & 0xFFFFFFFFFFFFLL | 0xBEF9000000000000;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v3();
  v6 = (*(*v5 + 184))(v5);

  *a1 = v6;
  return sub_2520554E0;
}

uint64_t sub_2520554E0(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = *a1;

    v8 = (v3)(v7);
    (*(*v8 + 192))(v4);
  }

  else
  {
    v9 = v3();
    (*(*v9 + 192))(v4);
  }
}

uint64_t HTUINoiseView.Model.__allocating_init(mode:samples:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_252064034();
  *(v7 + 16) = a1;
  type metadata accessor for NoiseWaveformView.Model();
  v9 = a1;
  *(v7 + 24) = sub_25204EF20(&v9, a2);
  return v7;
}

uint64_t HTUINoiseView.Model.init(mode:samples:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  sub_252064034();
  *(v3 + 16) = v5;
  type metadata accessor for NoiseWaveformView.Model();
  v7 = v5;
  *(v3 + 24) = sub_25204EF20(&v7, a2);
  return v3;
}

uint64_t HTUINoiseView.Model.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCV13HearingModeUI13HTUINoiseView5Model___observationRegistrar;
  v3 = sub_252064044();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t HTUINoiseView.Model.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCV13HearingModeUI13HTUINoiseView5Model___observationRegistrar;
  v3 = sub_252064044();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_2520558E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2520643A4();
  *a1 = result;
  return result;
}

uint64_t sub_25205590C(uint64_t *a1)
{
  v1 = *a1;

  return sub_2520643B4();
}

uint64_t sub_252055938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2520643E4();
  *a1 = result;
  return result;
}

uint64_t sub_252055964(uint64_t *a1)
{
  v1 = *a1;

  return sub_2520643F4();
}

uint64_t sub_252055990(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2520559F8()
{
  result = qword_27F4CA0A0;
  if (!qword_27F4CA0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA068, &qword_252068A00);
    sub_252055AB0();
    sub_25204D4C4(&qword_27F4CA0C8, &qword_27F4CA0D0, &qword_252068AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA0A0);
  }

  return result;
}

unint64_t sub_252055AB0()
{
  result = qword_27F4CA0A8;
  if (!qword_27F4CA0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA060, &qword_2520689F8);
    sub_25204D4C4(&qword_27F4CA0B0, &qword_27F4CA058, &qword_2520689F0);
    sub_25204D4C4(&qword_27F4CA0B8, &qword_27F4CA0C0, &qword_252068A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA0A8);
  }

  return result;
}

uint64_t sub_252055BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA168, &qword_252068DA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25203E9E4(a1, &v6 - v4, &qword_27F4CA168, &qword_252068DA8);
  return sub_252064414();
}

uint64_t sub_252055C60@<X0>(void *a1@<X8>)
{
  result = sub_2520643C4();
  *a1 = v3;
  return result;
}

unint64_t sub_252055CB4()
{
  result = qword_27F4CA0E0;
  if (!qword_27F4CA0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA088, &qword_252068A20);
    sub_252055D6C();
    sub_25204D4C4(&qword_27F4CA110, &qword_27F4CA118, &qword_252068B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA0E0);
  }

  return result;
}

unint64_t sub_252055D6C()
{
  result = qword_27F4CA0E8;
  if (!qword_27F4CA0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA080, &qword_252068A18);
    sub_252055E24();
    sub_25204D4C4(&qword_27F4CA100, &qword_27F4CA108, &qword_252068B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA0E8);
  }

  return result;
}

unint64_t sub_252055E24()
{
  result = qword_27F4CA0F0;
  if (!qword_27F4CA0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA078, &qword_252068A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA068, &qword_252068A00);
    sub_2520559F8();
    swift_getOpaqueTypeConformance2();
    sub_25204D4C4(&qword_27F4CA0F8, &qword_27F4CA0D8, &qword_252068AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA0F0);
  }

  return result;
}

uint64_t sub_252055F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_beginAccess();
  v1[16] = v2;
  v4 = (*(*v1 + 176))(v3);
  (*(*v1 + 128))(v6);
  (*(*v4 + 144))(v6);
}

uint64_t type metadata accessor for HTUINoiseView.Model()
{
  result = qword_27F4CCDC0;
  if (!qword_27F4CCDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252056040()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HTUINoiseView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for HTUINoiseView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252056238(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2520562CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252056394()
{
  result = sub_252064044();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_252056540()
{
  result = qword_27F4CA130;
  if (!qword_27F4CA130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA090, &qword_252068A28);
    sub_252055CB4();
    sub_2520565FC(&qword_27F4CA138, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA130);
  }

  return result;
}

uint64_t sub_2520565FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252056644()
{
  result = qword_27F4CA140;
  if (!qword_27F4CA140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA148, &qword_252068D88);
    sub_25204D4C4(&qword_27F4CA150, &qword_27F4CA158, &unk_252068D90);
    sub_25204D4C4(&qword_27F4C9F28, &qword_27F4C9F30, &qword_2520684D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA140);
  }

  return result;
}

uint64_t sub_252056728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252056738(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252056788(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    return (*(*v2 + 88))(a2, result);
  }

  return result;
}

void sub_2520567C4(CGContext *a1, uint64_t a2, uint64_t a3)
{
  CGContextSetAlpha(a1, 1.0);
  v6 = [*(a3 + 16) CGColor];
  CGContextSetFillColorWithColor(a1, v6);

  v8 = *a3;
  v7 = *(a3 + 8);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = *a3;
  v24.size.height = v7;
  CGContextFillRect(a1, v24);
  v9 = v7 * *(a3 + 64);
  v10 = CGPathCreateMutable();
  sub_2520648F4();
  v11 = *(a3 + 32);
  v12 = *(a2 + 16);
  if (v8 - (v11 + *(a3 + 40)) * v12 <= 0.0)
  {
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  v22 = *(a3 + 32);
  v13 = 0;
  v14 = v7 * *(a3 + 72);
  v15 = a2 + 32;
  do
  {
    v16 = v13 + 1;
    v17 = v9 + fmax(v14 * (*(v15 + 4 * v13) / 100.0), 1.0);
    sub_2520648F4();
    sub_252064904();
    v13 = v16;
  }

  while (v12 != v16);
  sub_2520648F4();
  v11 = v22;
LABEL_8:

  v18 = v10;
  CGPathCloseSubpath(v18);
  CGContextAddPath(a1, v18);

  v19 = *(a3 + 24);
  v20 = *(a3 + 48);
  CGContextSetLineWidth(a1, v11);
  CGContextSetLineCap(a1, v20);
  v21 = [v19 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextStrokePath(a1);
}

uint64_t sub_252056A2C()
{
  sub_252056ACC(v0, v4);
  v1 = v5;
  __swift_destroy_boxed_opaque_existential_0(v4);
  v2 = 0x7065636341746F4ELL;
  if (v1 != 1)
  {
    v2 = 0x6572676F72506E49;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6261747065636341;
  }
}

uint64_t _s13HearingModeUI11NoiseStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_252056ACC(a1, v15);
  v3 = v16;
  __swift_destroy_boxed_opaque_existential_0(v15);
  v4 = 0x7065636341746F4ELL;
  v5 = 0xED0000656C626174;
  if (v3 != 1)
  {
    v4 = 0x6572676F72506E49;
    v5 = 0xEA00000000007373;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6261747065636341;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000656CLL;
  }

  sub_252056ACC(a2, v15);
  v8 = v16;
  __swift_destroy_boxed_opaque_existential_0(v15);
  v9 = 0x7065636341746F4ELL;
  v10 = 0xED0000656C626174;
  if (v8 != 1)
  {
    v9 = 0x6572676F72506E49;
    v10 = 0xEA00000000007373;
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6261747065636341;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEA0000000000656CLL;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_252064AE4();
  }

  return v13 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252056C80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252056CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_252056D08(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_252056D40()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD4D8);
  __swift_project_value_buffer(v0, qword_27F4CD4D8);
  return sub_2520641E4();
}

uint64_t sub_252056DC0()
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD4D8);
}

uint64_t sub_252056E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_252056ECC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D12B98]);

  return [v0 init];
}

id sub_252056F04()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_hearingModeClient;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_252056F58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_hearingModeClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_252057010()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress + 8);

  return v1;
}

void *sub_252057158()
{
  sub_2520640D4();
  v1 = sub_2520640C4();
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);
  v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress + 8);
  v4 = sub_2520640B4();

  if (*(v4 + 16) && (v5 = sub_25202FFB8(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

NSObject *HMMediaAssistEnrollmentViewController.init(deviceAddress:audiogramSample:)(NSObject *a1, unint64_t a2, NSObject *a3)
{
  v94 = OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_hearingModeClient;
  *&v3[v94] = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  v6 = &v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceName];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v97 = v6;
  v7 = &v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceMarketingName];
  v8 = type metadata accessor for HMMediaAssistEnrollmentViewController();
  *v7 = sub_25203E180();
  v7[1] = v9;
  v101 = v7;
  v10 = &v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_devicePlatformName];
  *v10 = sub_25203E180();
  v10[1] = v11;
  v99 = v3;
  v100 = v10;
  v12 = &v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier];
  *v12 = 0x4E574F4E4B4E55;
  *(v12 + 1) = 0xE700000000000000;
  if (!a2)
  {
    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v24 = sub_2520641F4();
    __swift_project_value_buffer(v24, qword_27F4CD4D8);
    v25 = sub_2520641D4();
    v26 = sub_2520648C4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25201E000, v25, v26, "Media Assist: Cannot Start Enrollment, Invalid address", v27, 2u);
      MEMORY[0x2530987C0](v27, -1, -1);
    }

    goto LABEL_15;
  }

  v13 = a2;
  if (!a3)
  {

    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v28 = sub_2520641F4();
    __swift_project_value_buffer(v28, qword_27F4CD4D8);
    a3 = sub_2520641D4();
    v29 = sub_2520648C4();
    if (os_log_type_enabled(a3, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25201E000, a3, v29, "Media Assist: Cannot Start Enrollment, Invalid audiogram", v30, 2u);
      MEMORY[0x2530987C0](v30, -1, -1);
    }

LABEL_15:

    v31 = v97[1];

    v32 = v101[1];

    v33 = v100[1];

    v34 = *(v12 + 1);

    swift_deallocPartialClassInstance();
    return 0;
  }

  v95 = v8;
  sub_2520640D4();
  v93 = a3;
  v14 = sub_2520640C4();
  v15 = a1;
  v107 = a1;
  v108 = v13;
  v105 = 58;
  v106 = 0xE100000000000000;
  v103 = 45;
  v104 = 0xE100000000000000;
  v91 = sub_2520376CC();
  v90 = MEMORY[0x277D837D0];
  v16 = sub_2520649A4();
  v18 = v17;
  v19 = sub_2520640B4();

  if (!*(v19 + 16))
  {

LABEL_17:

    v35 = sub_2520640C4();
    v23 = sub_252064094();

    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v20 = sub_25202FFB8(v16, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

  v23 = *(*(v19 + 56) + 8 * v20);

LABEL_18:
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v36 = sub_2520641F4();
  __swift_project_value_buffer(v36, qword_27F4CD4D8);

  v37 = sub_2520641D4();
  v38 = sub_2520648D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v107 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_25202FA10(a1, v13, &v107);
    _os_log_impl(&dword_25201E000, v37, v38, "Media Assist: Got HeadphoneDevice with valid BTAddress or UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x2530987C0](v40, -1, -1);
    MEMORY[0x2530987C0](v39, -1, -1);
  }

  v41 = sub_252064084();
  v42 = v97[1];
  *v97 = v41;
  v97[1] = v43;

  type metadata accessor for AnyHearingFeatureContentProvider();
  v44 = v23;
  v45 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v23);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v46 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  else
  {
    v46 = sub_25203E180();
  }

  v48 = v101[1];
  *v101 = v46;
  v101[1] = v47;

  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    v49 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
  }

  else
  {
    v49 = sub_25203E180();
  }

  v51 = v49;
  v52 = v50;

  v53 = v100[1];
  *v100 = v51;
  v100[1] = v52;

LABEL_29:
  v54 = sub_25202EBB0();
  v55 = *v54;
  if ([v93 isFirstPartyHearingTestResult:v90])
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  v57 = EnrollmentAnalyticManager.AudiogramType.rawValue.getter(v56);
  v58 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v55) + 0x130))(1, v57);

  v59 = [v93 hearingLevelSummary];
  v60 = [v59 leftEarMetrics];

  v61 = [v60 averageSensitivity];
  v62 = [v93 hearingLevelSummary];
  v63 = [v62 rightEarMetrics];

  v64 = [v63 averageSensitivity];
  v65 = *v54;
  v98 = v61;
  v66 = HKHearingLevelClassificationForSensitivity();
  if (v66 < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  (*((*v58 & *v65) + 0x130))(2, v66);

  v67 = *v54;
  v68 = HKHearingLevelClassificationForSensitivity();
  if (v68 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v92 = v64;
  (*((*v58 & *v67) + 0x130))(3, v68);

  v69 = &v99[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress];
  *v69 = a1;
  *(v69 + 1) = v13;
  *&v99[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_selectedAudiogram] = v93;
  a1 = v93;
  sub_25203E180();
  v107 = 0;
  v108 = 0xE000000000000000;
  sub_252064A34();
  MEMORY[0x253097B50](0xD000000000000090, 0x800000025206E140);
  v70 = *v100;
  v71 = v100[1];

  MEMORY[0x253097B50](v70, v71);

  MEMORY[0x253097B50](0xD000000000000048, 0x800000025206E1E0);
  v72 = *v101;
  v73 = v101[1];

  MEMORY[0x253097B50](v72, v73);

  MEMORY[0x253097B50](46, 0xE100000000000000);
  sub_25203E180();

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = [objc_opt_self() bundleForClass_];
  v76 = sub_2520646F4();
  v58 = [objc_opt_self() imageNamed:v76 inBundle:v75];

  v77 = sub_2520646F4();

  v78 = sub_2520646F4();

  v102.receiver = v99;
  v102.super_class = v95;
  v79 = [&v102 initWithTitle:v77 detailText:v78 icon:v58 contentLayout:2];

  v80 = qword_27F4CCE50;
  v15 = v79;
  if (v80 != -1)
  {
LABEL_41:
    swift_once();
  }

  v81 = sub_2520641F4();
  __swift_project_value_buffer(v81, qword_27F4CD4D8);
  v82 = sub_2520641D4();
  v83 = sub_2520648D4();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v107 = v85;
    *v84 = 136315138;
    v86 = *(&v15->isa + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);
    v87 = *(&v15[1].isa + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);

    v88 = sub_25202FA10(v86, v87, &v107);

    *(v84 + 4) = v88;
    _os_log_impl(&dword_25201E000, v82, v83, "Media Assist: Init with Device: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x2530987C0](v85, -1, -1);
    MEMORY[0x2530987C0](v84, -1, -1);
  }

  (*((*MEMORY[0x277D85000] & v15->isa) + 0x110))();
  return v15;
}

void sub_252057EE8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_25205A248;
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_252033CCC;
  v15 = &block_descriptor_4;
  v4 = _Block_copy(&v12);

  [v2 setInterruptionHandler_];
  _Block_release(v4);

  v5 = v1();
  v16 = sub_2520581CC;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_252033CCC;
  v15 = &block_descriptor_3;
  v6 = _Block_copy(&v12);
  [v5 setInvalidationHandler_];
  _Block_release(v6);

  v7 = v1();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_25205A414;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_25203ECA8;
  v15 = &block_descriptor_7;
  v9 = _Block_copy(&v12);

  [v7 setDeviceRecordChangedHandler_];
  _Block_release(v9);

  v10 = v1();
  v16 = sub_2520582B4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_252058424;
  v15 = &block_descriptor_10;
  v11 = _Block_copy(&v12);
  [v10 activateWithCompletion_];
  _Block_release(v11);
}

void sub_2520581CC()
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();
  __swift_project_value_buffer(v0, qword_27F4CD4D8);
  oslog = sub_2520641D4();
  v1 = sub_2520648D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25201E000, oslog, v1, "Media Assist: HMS Invalidted", v2, 2u);
    MEMORY[0x2530987C0](v2, -1, -1);
  }
}

void sub_2520582B4(uint64_t a1)
{
  if (a1)
  {
    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v1 = sub_2520641F4();
    __swift_project_value_buffer(v1, qword_27F4CD4D8);
    oslog = sub_2520641D4();
    v2 = sub_2520648C4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Media Assist: Fail to Activate HMS";
LABEL_10:
      _os_log_impl(&dword_25201E000, oslog, v2, v4, v3, 2u);
      MEMORY[0x2530987C0](v3, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v5 = sub_2520641F4();
    __swift_project_value_buffer(v5, qword_27F4CD4D8);
    oslog = sub_2520641D4();
    v2 = sub_2520648D4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Media Assist: HMS Activated";
      goto LABEL_10;
    }
  }
}

void sub_252058424(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id HMMediaAssistEnrollmentViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_hearingModeClient;
  swift_beginAccess();
  [*&v1[v2] invalidate];
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v3 = sub_2520641F4();
  __swift_project_value_buffer(v3, qword_27F4CD4D8);
  v4 = sub_2520641D4();
  v5 = sub_2520648D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25201E000, v4, v5, "Media Assist: HMS Invalidation Triggered", v6, 2u);
    MEMORY[0x2530987C0](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for HMMediaAssistEnrollmentViewController();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_252058690()
{
  v1 = v0;
  swift_getObjectType();
  v22.receiver = v0;
  v22.super_class = type metadata accessor for HMMediaAssistEnrollmentViewController();
  v2 = objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x140))(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9CB0, &unk_252067A70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252066A80;
  v5 = sub_252064204();
  v6 = MEMORY[0x277D74BF0];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_252064914();
  swift_unknownObjectRelease();

  (*((*v3 & *v0) + 0x120))(v7);
  v8 = [v0 buttonTray];
  v9 = [v8 allButtons];

  sub_2520537A8();
  v10 = sub_2520647C4();

  if (v10 >> 62)
  {
    result = sub_252064A84();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x253097E20](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;
LABEL_9:

  [v13 showsBusyIndicator];

  result = sub_252057158();
  if (result)
  {
    v14 = result;
    v15 = sub_252064064();

    v16 = sub_252064104();
    v18 = v17;

    v19 = (v1 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier);
    v20 = *(v1 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier + 8);
    *v19 = v16;
    v19[1] = v18;

    return (*((*v3 & *v1) + 0x110))(v21);
  }

  return result;
}

uint64_t sub_252058990(char a1)
{
  v2 = v1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for HMMediaAssistEnrollmentViewController();
  objc_msgSendSuper2(&v34, sel_viewDidAppear_, a1 & 1);
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v4 = sub_2520641F4();
  __swift_project_value_buffer(v4, qword_27F4CD4D8);
  v5 = sub_2520641D4();
  v6 = sub_2520648D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25201E000, v5, v6, "Media Assist: viewDidAppear", v7, 2u);
    MEMORY[0x2530987C0](v7, -1, -1);
  }

  v8 = sub_25202EBB0();
  v9 = *v8;
  v10 = EnrollmentAnalyticManager.EnrollmentResult.rawValue.getter(6);
  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v9) + 0x130))(4, v10);

  v12 = *v8;
  v13 = EnrollmentAnalyticManager.EnrollmentType.rawValue.getter(2);
  (*((*v11 & *v12) + 0x130))(5, v13);

  v14 = [objc_opt_self() processInfo];
  v15 = [v14 processName];

  v16 = sub_252064724();
  v18 = v17;

  if (v16 == 0x68746C616548 && v18 == 0xE600000000000000)
  {
  }

  else
  {
    v19 = sub_252064AE4();

    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v20 = *v8;
  v21 = EnrollmentAnalyticManager.Entrance.rawValue.getter(2);
  (*((*v11 & *v20) + 0x130))(6, v21);

LABEL_10:
  v22 = [v2 navigationController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1B8, qword_252068ED8);
  sub_252064744();
  sub_2520376CC();
  v23 = sub_2520649C4();

  if (v23)
  {
    v25 = sub_2520641D4();
    v26 = sub_2520648D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25201E000, v25, v26, "Media Assist: Submit Event from VC", v27, 2u);
      MEMORY[0x2530987C0](v27, -1, -1);
    }

    v28 = *((*v11 & **v8) + 0x138);
    v29 = *v8;
    v28(v29, v30, v31, v32);
  }

  return (*((*v11 & *v2) + 0x118))(v24);
}

void sub_252058E54()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D12B78]) init];
  [v1 setSelectedAudiogram_];
  [v1 setEnrollHearingAssist_];
  [v1 setEnableMediaAssist_];
  [v1 setEnablePMEMedia_];
  [v1 setEnablePMEVoice_];
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD4D8);
  v3 = v0;
  v4 = sub_2520641D4();
  v5 = sub_2520648D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    v8 = *&v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier];
    v9 = *&v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier + 8];

    v10 = sub_25202FA10(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25201E000, v4, v5, "Media Assist: Enroll Media Assist for device: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2530987C0](v7, -1, -1);
    MEMORY[0x2530987C0](v6, -1, -1);
  }

  v12 = (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v11);
  v13 = *&v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier];
  v14 = *&v3[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier + 8];

  v15 = sub_2520646F4();

  v22[4] = sub_25205921C;
  v22[5] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_252058424;
  v22[3] = &block_descriptor_13;
  v16 = _Block_copy(v22);
  [v12 modifyDeviceConfig:v1 identifier:v15 completion:v16];
  _Block_release(v16);

  v17 = [v3 buttonTray];
  v18 = [v17 allButtons];

  sub_2520537A8();
  v19 = sub_2520647C4();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  if (!sub_252064A84())
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x253097E20](0, v19);
    goto LABEL_10;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_10:
    v21 = v20;
LABEL_13:

    [v21 hidesBusyIndicator];

    return;
  }

  __break(1u);
}

void sub_25205921C(void *a1)
{
  if (a1)
  {
    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v2 = sub_2520641F4();
    __swift_project_value_buffer(v2, qword_27F4CD4D8);
    v3 = a1;
    oslog = sub_2520641D4();
    v4 = sub_2520648D4();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_25201E000, oslog, v4, "Media Assist: MA Config Update Failed: %@", v5, 0xCu);
      sub_25205A948(v6);
      MEMORY[0x2530987C0](v6, -1, -1);
LABEL_10:
      MEMORY[0x2530987C0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CCE50 != -1)
    {
      swift_once();
    }

    v9 = sub_2520641F4();
    __swift_project_value_buffer(v9, qword_27F4CD4D8);
    oslog = sub_2520641D4();
    v10 = sub_2520648D4();
    if (os_log_type_enabled(oslog, v10))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25201E000, oslog, v10, "Media Assist: MA Config Update Succeeded", v5, 2u);
      goto LABEL_10;
    }
  }
}

void sub_252059408()
{
  v1 = v0;
  swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceName];
  if (*&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceName])
  {
    v3 = 0;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceName + 8] == 0xE000000000000000;
  }

  if (v3 || (sub_252064AE4() & 1) != 0)
  {
    v4 = [v0 buttonTray];
    sub_252064A34();
    MEMORY[0x253097B50](0xD00000000000004CLL, 0x800000025206E320);
    v5 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceMarketingName];
    v6 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceMarketingName + 8];

    MEMORY[0x253097B50](v5, v6);

    MEMORY[0x253097B50](46, 0xE100000000000000);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v4 = [v0 buttonTray];
    sub_252064A34();
    MEMORY[0x253097B50](0xD000000000000048, 0x800000025206E2B0);
    v9 = *v2;
    v10 = *(v2 + 1);

    MEMORY[0x253097B50](v9, v10);

    MEMORY[0x253097B50](11810, 0xE200000000000000);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  v11 = v8;
  sub_252063D54();

  v12 = sub_2520646F4();

  [v4 setCaptionText_];

  v13 = [objc_opt_self() boldButton];
  v14 = objc_opt_self();
  v15 = [v14 &selRef:ObjCClassFromMetadata valueWithNonretainedObject:? + 3];
  sub_252063D54();

  v16 = sub_2520646F4();

  [v13 setTitle:v16 forState:{0, 0xEC000000656C7469}];

  [v13 addTarget:v1 action:sel_mainButtonTapped forControlEvents:64];
  v17 = [v1 buttonTray];
  [v17 addButton_];

  v18 = [objc_opt_self() linkButton];
  v19 = [v14 &selRef:ObjCClassFromMetadata valueWithNonretainedObject:? + 3];
  sub_252063D54();

  v20 = sub_2520646F4();

  [v18 setTitle:v20 forState:{0, 0xEC000000656C7469}];

  [v18 addTarget:v1 action:sel_secondaryButtonTapped forControlEvents:64];
  v21 = [v1 buttonTray];
  [v21 addButton_];
}

uint64_t sub_2520598E4()
{
  v1 = v0;
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD4D8);
  v3 = sub_2520641D4();
  v4 = sub_2520648D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25201E000, v3, v4, "Media Assist: mainButtonTapped", v5, 2u);
    MEMORY[0x2530987C0](v5, -1, -1);
  }

  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x138);

  return v6();
}

void sub_252059A50()
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v1 = sub_2520641F4();
  __swift_project_value_buffer(v1, qword_27F4CD4D8);
  v2 = sub_2520641D4();
  v3 = sub_2520648D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25201E000, v2, v3, "Media Assist: secondaryButtonTapped", v4, 2u);
    MEMORY[0x2530987C0](v4, -1, -1);
  }

  v5 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier];
  v6 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier + 8];
  v7 = *&v0[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_selectedAudiogram];
  v8 = objc_allocWithZone(HMHearingAidEnrollmentViewController);

  v9 = v7;
  v10 = sub_2520646F4();

  oslog = [v8 initWithBluetoothUUID:v10 withAudiogramSample:v9];

  if (oslog)
  {
    v11 = [v0 navigationController];
    if (v11)
    {
      v12 = v11;
      [v11 pushViewController:oslog animated:1];
    }
  }

  else
  {
    oslog = sub_2520641D4();
    v13 = sub_2520648C4();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25201E000, oslog, v13, "Media Assist: Cannot trigger Hearing Aid Enrollment", v14, 2u);
      MEMORY[0x2530987C0](v14, -1, -1);
    }
  }
}

void sub_252059CBC()
{
  v1 = v0;
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD4D8);
  v3 = sub_2520641D4();
  v4 = sub_2520648D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25201E000, v3, v4, "Media Assist: dismissMediaAssistEnrollment", v5, 2u);
    MEMORY[0x2530987C0](v5, -1, -1);
  }

  v6 = [objc_opt_self() defaultCenter];
  v7 = sub_2520646F4();
  [v6 postNotificationName:v7 object:0];

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_252059E60()
{
  v1 = [objc_opt_self() currentTraitCollection];
  [v1 userInterfaceStyle];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_2520646F4();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  v6 = [v0 headerView];
  if (v5)
  {
    v7 = v6;
    v8 = v5;

    v9 = sub_2520646F4();
    [v7 setIcon:v8 accessibilityLabel:v9];
  }

  else
  {
    __break(1u);
  }
}

id HMMediaAssistEnrollmentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520646F4();

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

  v13 = sub_2520646F4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520646F4();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HMMediaAssistEnrollmentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520646F4();

  if (a4)
  {
    v12 = sub_2520646F4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_25205A248()
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();
  __swift_project_value_buffer(v0, qword_27F4CD4D8);
  v1 = sub_2520641D4();
  v2 = sub_2520648D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25201E000, v1, v2, "Media Assist: HMS Interrupted", v3, 2u);
    MEMORY[0x2530987C0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = MEMORY[0x277D85000];
  if (Strong)
  {
    v6 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x90))([objc_allocWithZone(MEMORY[0x277D12B98]) init]);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    (*((*v5 & *v7) + 0x110))();
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25205A414(void *a1)
{
  if (qword_27F4CCE50 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  __swift_project_value_buffer(v2, qword_27F4CD4D8);
  v3 = a1;
  v4 = sub_2520641D4();
  v5 = sub_2520648D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_25201E000, v4, v5, "Media Assist: Device Found: %@", v6, 0xCu);
    sub_25205A948(v7);
    MEMORY[0x2530987C0](v7, -1, -1);
    MEMORY[0x2530987C0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);
    v10 = *(Strong + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress + 8);
    v12 = Strong;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v13 = [v3 bluetoothAddress];
  v14 = sub_252064724();
  v16 = v15;

  if (!v10)
  {

LABEL_14:
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v20 = *(v18 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress);
      v19 = *(v18 + OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceAddress + 8);
      v21 = v18;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v22 = [v3 bluetoothUUID];
    v23 = sub_252064724();
    v25 = v24;

    if (!v19)
    {

      return;
    }

    if (v20 != v23 || v19 != v25)
    {
      v46 = sub_252064AE4();

      if ((v46 & 1) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v11 != v14 || v10 != v16)
  {
    v17 = sub_252064AE4();

    if (v17)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_20:

LABEL_21:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = [v3 bluetoothUUID];
    v29 = sub_252064724();
    v31 = v30;

    v32 = &v27[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier];
    v33 = *&v27[OBJC_IVAR____TtC13HearingModeUI37HMMediaAssistEnrollmentViewController_deviceIdentifier + 8];
    *v32 = v29;
    v32[1] = v31;
  }

  v34 = v3;
  v35 = sub_2520641D4();
  v36 = sub_2520648D4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315138;
    v39 = [v34 bluetoothUUID];
    v40 = sub_252064724();
    v42 = v41;

    v43 = sub_25202FA10(v40, v42, &v47);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_25201E000, v35, v36, "Media Assist: Update Device Indentifier: %s calling setupHearingModeClient()", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2530987C0](v38, -1, -1);
    MEMORY[0x2530987C0](v37, -1, -1);
  }

  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    (*((*MEMORY[0x277D85000] & *v44) + 0x110))();
  }
}

uint64_t sub_25205A948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9A48, &qword_252067888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25205A9D0()
{
  v0 = sub_2520641F4();
  __swift_allocate_value_buffer(v0, qword_27F4CD4F0);
  __swift_project_value_buffer(v0, qword_27F4CD4F0);
  return sub_2520641E4();
}

uint64_t sub_25205AA4C()
{
  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v0 = sub_2520641F4();

  return __swift_project_value_buffer(v0, qword_27F4CD4F0);
}

uint64_t sub_25205AAB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v2 = sub_2520641F4();
  v3 = __swift_project_value_buffer(v2, qword_27F4CD4F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25205AB58()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_25205AB94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25205ABF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25205AC88;
}

void sub_25205AC88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_25205AD5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2520642D4();

  return v1;
}

uint64_t sub_25205ADD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_25205AE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2520642E4();
}

uint64_t sub_25205AE98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2520642E4();
}

uint64_t sub_25205AF24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1D0, &qword_252068F98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1C8, &qword_252068F90);
  sub_2520642C4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_25205B090()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2520642D4();
}

void *sub_25205B108@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_25205B164(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2520642E4();
}

uint64_t sub_25205B1D8(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2520642E4();
}

uint64_t sub_25205B270(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2520642B4();
  return swift_endAccess();
}

uint64_t sub_25205B2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E98, &qword_252068FF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1D8, &qword_252068FE8);
  sub_2520642C4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

double sub_25205B434@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = -1;
  return result;
}

uint64_t NoiseDataProvider.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);

  return v1;
}

uint64_t sub_25205B488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_25205B4E0(a1, a2, a3);
  return v9;
}

uint64_t sub_25205B4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1D8, &qword_252068FE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1C8, &qword_252068F90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__samples;
  v38 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1C0, &qword_252068F40);
  sub_2520642A4();
  (*(v13 + 32))(v4 + v17, v16, v12);
  v18 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__noiseViewMode;
  LOBYTE(v38) = 2;
  sub_2520642A4();
  (*(v8 + 32))(v4 + v18, v11, v7);
  v19 = v4 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_currentStatus;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = -1;
  v20 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseModel;
  type metadata accessor for HTUINoiseView.Model();
  LOBYTE(v38) = 1;
  v21 = sub_2520647F4();
  *(v21 + 16) = 16;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 96) = 0u;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0u;
  *(v4 + v20) = HTUINoiseView.Model.__allocating_init(mode:samples:)(&v38, v21);
  v22 = a1;
  sub_25204599C(a1, v4 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider);
  v23 = (v4 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v24 = v37;
  *v23 = a2;
  v23[1] = v24;
  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v25 = sub_2520641F4();
  __swift_project_value_buffer(v25, qword_27F4CD4F0);

  v26 = sub_2520641D4();
  v27 = sub_2520648D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315394;
    v30 = sub_252064664();
    v32 = sub_25202FA10(v30, v31, &v38);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = *(v4 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
    v34 = *(v4 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);

    v35 = sub_25202FA10(v33, v34, &v38);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_25201E000, v26, v27, "NoisDataProvider Creation :: %s : %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530987C0](v29, -1, -1);
    MEMORY[0x2530987C0](v28, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v4;
}

uint64_t sub_25205B8F0()
{
  type metadata accessor for HTUINoiseView.Model();
  v2 = 1;
  v0 = sub_2520647F4();
  *(v0 + 16) = 16;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  return HTUINoiseView.Model.__allocating_init(mode:samples:)(&v2, v0);
}

uint64_t sub_25205B960()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider);
  v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider + 24);
  v4 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider), v3);
  (*(v4 + 8))(v19, v3, v4);
  sub_25205BEC4(v19);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v5);
  v7 = sub_25205CF60(&qword_27F4CA1E0);
  sub_25204D44C();
  v8 = sub_252064934();
  (*(v6 + 16))(v0, v7, v8, v5, v6);

  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v9 = sub_2520641F4();
  __swift_project_value_buffer(v9, qword_27F4CD4F0);

  v10 = sub_2520641D4();
  v11 = sub_2520648D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315394;
    v14 = sub_252064664();
    v16 = sub_25202FA10(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25202FA10(*(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id), *(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8), &v18);
    _os_log_impl(&dword_25201E000, v10, v11, "start: observer added :: %s : %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530987C0](v13, -1, -1);
    MEMORY[0x2530987C0](v12, -1, -1);
  }

  return sub_25205CDE0(v19);
}

void sub_25205BBC0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider + 24);
  v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider), v2);
  v4 = sub_25205CF60(&qword_27F4CA1E0);
  (*(v3 + 24))(v0, v4, v2, v3);
  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v5 = sub_2520641F4();
  __swift_project_value_buffer(v5, qword_27F4CD4F0);

  oslog = sub_2520641D4();
  v6 = sub_2520648D4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    v9 = sub_252064664();
    v11 = sub_25202FA10(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25202FA10(*(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id), *(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8), &v13);
    _os_log_impl(&dword_25201E000, oslog, v6, "stopped: observer removed :: %s : %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530987C0](v8, -1, -1);
    MEMORY[0x2530987C0](v7, -1, -1);
  }
}

uint64_t sub_25205BDC4()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25205BE0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_25205BEC4(uint64_t a1)
{
  v2 = v1;
  sub_252056ACC(a1, v68);
  v4 = v69;
  if (v69)
  {
    if (v69 == 1)
    {
      sub_25203EAFC(v68, v65);
      v5 = v66;
      v6 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      v7 = (*(v6 + 8))(v5, v6);
      v8 = *(v7 + 16);
      if (v8)
      {
        v62 = MEMORY[0x277D84F90];
        v9 = v7;
        sub_25204F408(0, v8, 0);
        v10 = v9;
        v11 = v62;
        v12 = *(v62 + 16);
        v13 = 32;
        do
        {
          v14 = *(v10 + v13);
          v15 = *(v62 + 24);
          if (v12 >= v15 >> 1)
          {
            sub_25204F408((v15 > 1), v12 + 1, 1);
            v10 = v9;
          }

          *(v62 + 16) = v12 + 1;
          *(v62 + 8 * v12 + 32) = v14;
          v13 += 4;
          ++v12;
          --v8;
        }

        while (v8);
LABEL_20:

        goto LABEL_25;
      }
    }

    else
    {
      sub_25203EAFC(v68, v65);
      v26 = v66;
      v27 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      v28 = (*(v27 + 8))(v26, v27);
      v29 = *(v28 + 16);
      if (v29)
      {
        v64 = MEMORY[0x277D84F90];
        v30 = v28;
        sub_25204F408(0, v29, 0);
        v31 = v30;
        v11 = v64;
        v32 = *(v64 + 16);
        v33 = 32;
        do
        {
          v34 = *(v31 + v33);
          v35 = *(v64 + 24);
          if (v32 >= v35 >> 1)
          {
            sub_25204F408((v35 > 1), v32 + 1, 1);
            v31 = v30;
          }

          *(v64 + 16) = v32 + 1;
          *(v64 + 8 * v32 + 32) = v34;
          v33 += 4;
          ++v32;
          --v29;
        }

        while (v29);
        goto LABEL_20;
      }
    }

    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_25203EAFC(v68, v65);
    v16 = v66;
    v17 = v67;
    __swift_project_boxed_opaque_existential_0(v65, v66);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v63 = MEMORY[0x277D84F90];
      v20 = v18;
      sub_25204F408(0, v19, 0);
      v21 = v20;
      v11 = v63;
      v22 = *(v63 + 16);
      v23 = 32;
      do
      {
        v24 = *(v21 + v23);
        v25 = *(v63 + 24);
        if (v22 >= v25 >> 1)
        {
          sub_25204F408((v25 > 1), v22 + 1, 1);
          v21 = v20;
        }

        *(v63 + 16) = v22 + 1;
        *(v63 + 8 * v22 + 32) = v24;
        v23 += 4;
        ++v22;
        --v19;
      }

      while (v19);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    if ((*(*v1 + 136))(v36))
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      (*(v38 + 8))(1, ObjectType, v38);
      swift_unknownObjectRelease();
    }
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0(v65);
  sub_252056ACC(a1, v68);
  v40 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_currentStatus;
  swift_beginAccess();
  sub_25205D258(v68, v2 + v40);
  v41 = swift_endAccess();
  v42 = *(*v2 + 304);
  v43 = (v42)(v41);
  LOBYTE(v68[0]) = v4;
  (*(*v43 + 136))(v68);

  v45 = (v42)(v44);
  (*(*v45 + 208))(v11);

  (*(*v2 + 208))(v68, v46);
  LOBYTE(v65[0]) = v4;
  sub_25204E5C8();
  if ((sub_252064674() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v68[0]) = v4;

    sub_2520642E4();
  }

  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v47 = sub_2520641F4();
  __swift_project_value_buffer(v47, qword_27F4CD4F0);
  sub_252056ACC(a1, v68);

  v48 = sub_2520641D4();
  v49 = sub_2520648D4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65[0] = v51;
    *v50 = 136315394;
    v52 = v42();
    v53 = (*(*v52 + 200))(v52);

    v54 = MEMORY[0x253097BB0](v53, MEMORY[0x277D839F8]);
    v56 = v55;

    v57 = sub_25202FA10(v54, v56, v65);

    *(v50 + 4) = v57;
    *(v50 + 12) = 2080;
    v58 = sub_252056A2C();
    v60 = v59;
    sub_25205CDE0(v68);
    v61 = sub_25202FA10(v58, v60, v65);

    *(v50 + 14) = v61;
    _os_log_impl(&dword_25201E000, v48, v49, "processNoiseStatus: %s %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530987C0](v51, -1, -1);
    MEMORY[0x2530987C0](v50, -1, -1);
  }

  else
  {

    sub_25205CDE0(v68);
  }
}

uint64_t sub_25205C5B4(uint64_t a1)
{
  v3 = sub_252063ED4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4CCE60 != -1)
  {
    swift_once();
  }

  v8 = sub_2520641F4();
  __swift_project_value_buffer(v8, qword_27F4CD4F0);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_2520641D4();
  v10 = sub_2520648D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_2520516A8(v21);
    v14 = sub_252056A2C();
    v16 = v15;
    sub_25205CDE0(v21);
    (*(v4 + 8))(v7, v3);
    v17 = sub_25202FA10(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25201E000, v9, v10, "noiseStatusChanged: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2530987C0](v13, -1, -1);
    MEMORY[0x2530987C0](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_2520516A8(v21);
  sub_25205BEC4(v21);
  return sub_25205CDE0(v21);
}

uint64_t NoiseDataProvider.deinit()
{
  sub_252039F0C(v0 + 16);
  v1 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1C8, &qword_252068F90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__noiseViewMode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1D8, &qword_252068FE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider));
  sub_25205CE34(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_currentStatus);
  v5 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseModel);

  return v0;
}

uint64_t NoiseDataProvider.__deallocating_deinit()
{
  sub_252039F0C(v0 + 16);
  v1 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1C8, &qword_252068F90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider__noiseViewMode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1D8, &qword_252068FE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseStatusProvider));
  sub_25205CE34(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_currentStatus);
  v5 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_noiseModel);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_25205CAA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);

  return v1;
}

uint64_t sub_25205CB3C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_25205CB58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NoiseDataProvider();
  result = sub_252064294();
  *a1 = result;
  return result;
}

uint64_t static NoiseDataProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id) == *(a2 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id) && *(a1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8) == *(a2 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8))
  {
    return 1;
  }

  else
  {
    return sub_252064AE4();
  }
}

uint64_t NoiseDataProvider.hash(into:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);
  return sub_252064764();
}

uint64_t NoiseDataProvider.hashValue.getter()
{
  sub_252064B44();
  v1 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);
  sub_252064764();
  return sub_252064B64();
}

uint64_t sub_25205CC34()
{
  v1 = *v0;
  sub_252064B44();
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8);
  sub_252064764();
  return sub_252064B64();
}

uint64_t sub_25205CC88()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *v1;
  v3 = v1[1];

  sub_252064764();
}

uint64_t sub_25205CCF0()
{
  sub_252064B44();
  v1 = (*v0 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  v2 = *v1;
  v3 = v1[1];

  sub_252064764();

  return sub_252064B64();
}

uint64_t sub_25205CD58(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id) && v2[1] == *(*a2 + OBJC_IVAR____TtC13HearingModeUI17NoiseDataProvider_id + 8))
  {
    return 1;
  }

  else
  {
    return sub_252064AE4();
  }
}

uint64_t type metadata accessor for NoiseDataProvider()
{
  result = qword_27F4CD1A0;
  if (!qword_27F4CD1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25205CE34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1E8, qword_252068FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25205CE9C(uint64_t a1)
{
  result = sub_25205CF60(&qword_27F4CA1F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25205CF60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NoiseDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25205D024()
{
  sub_25205D194();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25205D1F8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25205D194()
{
  if (!qword_27F4CA208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CA1C0, &qword_252068F40);
    v0 = sub_2520642F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4CA208);
    }
  }
}

void sub_25205D1F8()
{
  if (!qword_27F4CA210)
  {
    v0 = sub_2520642F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4CA210);
    }
  }
}

uint64_t sub_25205D258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CA1E8, qword_252068FF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25205D2EC(char a1, char a2)
{
  v2 = 4;
  if ((a2 & 1) == 0)
  {
    v2 = 1;
  }

  v3 = 5;
  if (a2)
  {
    v3 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25205D310(void *a1, uint64_t a2)
{
  v4 = sub_2520646E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2520646C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  type metadata accessor for AnyHearingFeatureContentProvider();
  v11 = a1;
  v12 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a1);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.singleDeviceName.getter();
  }

  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.devicePlatformName.getter();
    if (a2 > 3)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (a2 == 1 || a2 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (a2 <= 3)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a2 == 4)
  {

    type metadata accessor for HMFitNoiseCheckTopView();
    sub_252064684();
    v13 = v8;
LABEL_14:
    v14 = sub_252050ED4(v13);

    (*(v5 + 8))(v8, v4);
    return v14;
  }

  if (a2 == 5)
  {
LABEL_13:

    type metadata accessor for HMFitNoiseCheckTopView();
    sub_2520646B4();
    sub_2520646A4();
    sub_252064694();

    sub_2520646A4();
    sub_2520646D4();
    v13 = v8;
    goto LABEL_14;
  }

LABEL_15:
  v16[1] = a2;
  result = sub_252064AF4();
  __break(1u);
  return result;
}

unint64_t sub_25205D6EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_252062468(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static HMFitNoiseCheckTopView.budStatus(leftBudGood:rightBudGood:)(char a1, char a2)
{
  v2 = 4;
  if ((a2 & 1) == 0)
  {
    v2 = 1;
  }

  v3 = 5;
  if (a2)
  {
    v3 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_25205D78C()
{
  v0 = sub_2520646F4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() systemGreenColor];
    v3 = [v1 imageWithTintColor:v2 renderingMode:1];

    qword_27F4CD1B8 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_25205D85C()
{
  v0 = sub_2520646F4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() orangeColor];
    v3 = [v1 imageWithTintColor:v2 renderingMode:1];

    qword_27F4CD1C8 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_25205D92C()
{
  v0 = sub_2520646E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setTextAlignment_];
  [v5 setNumberOfLines_];
  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v7];
  type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
  sub_252064684();
  sub_252050ED4(v4);
  (*(v1 + 8))(v4, v0);
  v8 = sub_2520646F4();

  [v5 setText_];

  return v5;
}

id sub_25205DAFC(double a1)
{
  v2 = sub_2520646E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTextAlignment_];
  [v7 setNumberOfLines_];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
  sub_252064684();
  sub_252050ED4(v6);
  (*(v3 + 8))(v6, v2);
  v10 = sub_2520646F4();

  [v7 setText_];

  v11 = [v7 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  [v12 setActive_];
  LODWORD(v13) = 1144750080;
  [v7 setContentHuggingPriority:1 forAxis:v13];
  [v7 setAlpha_];

  return v7;
}

id sub_25205DD68()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_provider);
    v6 = v4;
    v7 = AnyHearingFeatureContentProvider.fitNoiseLeft.getter();
    type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_2520646F4();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v15 = v14;
    [v15 setContentMode_];
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];

    LODWORD(v16) = 1148846080;
    [v15 setContentHuggingPriority:1 forAxis:v16];

    v17 = *(v6 + v1);
    *(v6 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_25205DF0C()
{
  v1 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_provider);
    v6 = v4;
    v7 = AnyHearingFeatureContentProvider.fitNoiseRight.getter();
    type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_2520646F4();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v15 = v14;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    [v15 setContentMode_];

    LODWORD(v16) = 1148846080;
    [v15 setContentHuggingPriority:1 forAxis:v16];

    v17 = *(v6 + v1);
    *(v6 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_25205E0B0()
{
  if (qword_27F4CD1C0 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant_];

  [v2 setActive_];
  v3 = [v0 widthAnchor];
  v4 = [v3 constraintEqualToConstant_];

  [v4 setActive_];
  [v0 setAlpha_];

  return v0;
}

id sub_25205E21C()
{
  type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v3 = sub_2520646F4();
  v4 = [v2 initWithPackageName:v3 inBundle:v1];

  if (v4)
  {
    v5 = sub_2520646F4();
    [v4 setState:v5 animated:1];

    v6 = v4;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [v6 heightAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
    v9 = [v6 widthAnchor];
    v10 = [v9 constraintEqualToConstant_];

    [v10 setActive_];
    [v6 setAlpha_];

    return v6;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D75D18]);

    return [v12 init];
  }
}

char *sub_25205E430(uint64_t a1, double a2)
{
  v3 = v2;
  v132 = a1;
  v5 = sub_2520646E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextGoodFit];
  v11 = type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
  sub_252064684();
  v12 = sub_252050ED4(v9);
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v9, v5);
  *v10 = v12;
  v10[1] = v14;
  v16 = &v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextBadFit];
  sub_252064684();
  v17 = sub_252050ED4(v9);
  v19 = v18;
  v15(v9, v5);
  *v16 = v17;
  v16[1] = v19;
  v20 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel;
  *&v3[v20] = sub_25205D92C();
  v21 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel;
  *&v3[v21] = sub_25205D92C();
  v22 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel;
  *&v3[v22] = sub_25205DAFC(0.0);
  v23 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_spacerLabel;
  *&v3[v23] = sub_25205DAFC(0.01);
  v24 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel;
  *&v3[v24] = sub_25205DAFC(0.0);
  *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView] = 0;
  *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView] = 0;
  v25 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage;
  *&v3[v25] = sub_25205E0B0();
  v26 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage;
  *&v3[v26] = sub_25205E0B0();
  v27 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView;
  *&v3[v27] = sub_25205E21C();
  v28 = v132;
  *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_headphoneDevice] = v132;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v129 = v28;
  *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_provider] = AnyHearingFeatureContentProvider.__allocating_init(device:)(v28);
  v133.receiver = v3;
  v133.super_class = v11;
  v29 = objc_msgSendSuper2(&v133, sel_initWithFrame_, 0.0, 0.0, a2, 300.0);
  v30 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView;
  v31 = *&v29[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView];
  v32 = v29;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel;
  [v32 addSubview_];
  v125 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel;
  [v32 addSubview_];
  v34 = sub_25205DD68();
  [v32 addSubview_];

  v35 = sub_25205DF0C();
  [v32 addSubview_];

  v130 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage;
  [v32 addSubview_];
  v131 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage;
  [v32 addSubview_];
  v132 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel;
  [v32 addSubview_];
  v126 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel;
  [v32 addSubview_];
  v127 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_spacerLabel;
  [v32 addSubview_];
  v36 = [v32 layer];

  [v36 setMasksToBounds_];
  v128 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C9BE0, &qword_252067390);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_252069290;
  v38 = [*&v29[v30] centerYAnchor];
  v39 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView;
  v40 = [*&v32[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView] centerYAnchor];
  v41 = [v38 constraintEqualToAnchor_];

  *(v37 + 32) = v41;
  v42 = [*&v29[v30] centerXAnchor];
  v43 = [v32 &selRef_detailDictionary + 2];

  v44 = [v42 constraintEqualToAnchor:v43 constant:0.0];
  *(v37 + 40) = v44;
  v45 = [*&v32[v33] topAnchor];
  v46 = [v32 topAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v37 + 48) = v47;
  v48 = v125;
  v49 = [*&v32[v125] topAnchor];
  v50 = [v32 topAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v37 + 56) = v51;
  v52 = [*&v32[v33] centerXAnchor];
  v53 = [*&v32[v39] centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v37 + 64) = v54;
  v55 = [*&v32[v33] bottomAnchor];
  v56 = [*&v32[v39] topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-20.0];

  *(v37 + 72) = v57;
  v58 = [*&v32[v48] centerXAnchor];
  v59 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView;
  v60 = [*&v32[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView] centerXAnchor];
  v61 = [v58 constraintEqualToAnchor_];

  *(v37 + 80) = v61;
  v62 = [*&v32[v48] bottomAnchor];
  v63 = [*&v32[v59] topAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-20.0];

  *(v37 + 88) = v64;
  v65 = [*&v32[v39] centerXAnchor];
  v66 = [v32 centerXAnchor];

  v67 = [v65 constraintEqualToAnchor:v66 constant:-100.0];
  *(v37 + 96) = v67;
  v68 = [*&v32[v59] centerXAnchor];
  v69 = [v32 centerXAnchor];

  v70 = [v68 constraintEqualToAnchor:v69 constant:100.0];
  *(v37 + 104) = v70;
  v71 = [*&v32[v39] heightAnchor];
  v72 = [*&v32[v59] heightAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v37 + 112) = v73;
  v74 = v130;
  v75 = [*&v32[v130] centerXAnchor];
  v76 = *&v32[v39];
  v124 = v39;
  v77 = [v76 centerXAnchor];
  v78 = [v75 constraintEqualToAnchor_];

  *(v37 + 120) = v78;
  v79 = [*&v32[v74] topAnchor];
  v80 = [*&v32[v39] bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:10.0];

  *(v37 + 128) = v81;
  v82 = v131;
  v83 = [*&v32[v131] centerXAnchor];
  v123 = v59;
  v84 = [*&v32[v59] centerXAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v37 + 136) = v85;
  v86 = [*&v32[v82] topAnchor];
  v87 = [*&v32[v59] bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:10.0];

  *(v37 + 144) = v88;
  v89 = v132;
  v90 = [*&v32[v132] centerXAnchor];
  v91 = [*&v32[v124] centerXAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v37 + 152) = v92;
  v93 = [*&v32[v89] topAnchor];
  v94 = [*&v32[v130] &selRef_setText_ + 5];
  v95 = [v93 constraintEqualToAnchor:v94 constant:10.0];

  *(v37 + 160) = v95;
  v96 = v126;
  v97 = [*&v32[v126] centerXAnchor];
  v98 = v123;
  v99 = [*&v32[v123] centerXAnchor];
  v100 = [v97 constraintEqualToAnchor_];

  *(v37 + 168) = v100;
  v101 = [*&v32[v96] topAnchor];
  v102 = v131;
  v103 = [*&v32[v131] bottomAnchor];
  v104 = [v101 constraintEqualToAnchor:v103 constant:10.0];

  *(v37 + 176) = v104;
  v105 = [*&v32[v96] bottomAnchor];
  v106 = [v32 bottomAnchor];

  v107 = [v105 constraintLessThanOrEqualToAnchor_];
  *(v37 + 184) = v107;
  v108 = [*&v32[v132] bottomAnchor];
  v109 = [v32 bottomAnchor];

  v110 = [v108 constraintLessThanOrEqualToAnchor_];
  *(v37 + 192) = v110;
  v111 = v127;
  v112 = [*&v32[v127] centerXAnchor];
  v113 = [*&v32[v98] centerXAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v37 + 200) = v114;
  v115 = [*&v32[v111] topAnchor];
  v116 = [*&v32[v102] bottomAnchor];
  v117 = [v115 constraintEqualToAnchor:v116 constant:10.0];

  *(v37 + 208) = v117;
  v118 = [*&v32[v111] bottomAnchor];
  v119 = [v32 bottomAnchor];

  v120 = [v118 constraintEqualToAnchor_];
  *(v37 + 216) = v120;
  sub_252035980(0, &unk_27F4C98D0, 0x277CCAAD0);
  v121 = sub_2520647B4();

  [v128 activateConstraints_];

  return v32;
}

uint64_t sub_25205F274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_25205F2C8()
{
  v1 = sub_25205DD68();
  v3 = *(MEMORY[0x277CBF2C0] + 8);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v5 = *(MEMORY[0x277CBF2C0] + 24);
  v6 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = *(MEMORY[0x277CBF2C0] + 40);
  v10 = *MEMORY[0x277CBF2C0];
  v2 = v10;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  [v1 setTransform_];

  v8 = sub_25205DF0C();
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  [v8 setTransform_];

  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel) setAlpha_];
  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel) setAlpha_];
  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage) setAlpha_];
  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage) setAlpha_];
  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel) setAlpha_];
  [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel) setAlpha_];
  return [*(v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView) setAlpha_];
}

void sub_25205F418(uint64_t a1, char a2, char a3)
{
  v6 = *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage];
  v42 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage;
  if (a1 == 4 || a1 == 1)
  {
    v7 = qword_27F4CD1B0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = &qword_27F4CD1B8;
  }

  else
  {
    v10 = qword_27F4CD1C0;
    v11 = v6;
    if (v10 != -1)
    {
      swift_once();
    }

    v9 = &qword_27F4CD1C8;
  }

  [v6 setImage_];

  v12 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage;
  v13 = *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage];
  if (a1 == 4 || a1 == 2)
  {
    v14 = qword_27F4CD1B0;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = &qword_27F4CD1B8;
  }

  else
  {
    v17 = qword_27F4CD1C0;
    v18 = v13;
    if (v17 != -1)
    {
      swift_once();
    }

    v16 = &qword_27F4CD1C8;
  }

  [v13 setImage_];

  v19 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel;
  v20 = *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel];
  if (a1 == 1 || a1 == 4)
  {
    v22 = &OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextGoodFit;
  }

  else
  {
    v22 = &OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextBadFit;
  }

  v23 = &v3[*v22];
  v24 = *v23;
  v25 = *(v23 + 1);

  v26 = v20;
  v27 = sub_2520646F4();

  [v26 setText_];

  v28 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel;
  v29 = *&v3[OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel];
  if (((a1 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v30 = &OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextBadFit;
  }

  else
  {
    v30 = &OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextGoodFit;
  }

  v31 = &v3[*v30];
  v32 = *v31;
  v33 = *(v31 + 1);

  v34 = v29;
  v35 = sub_2520646F4();

  [v34 setText_];

  if (a3)
  {
    [*&v3[v43] setAlpha_];
    [*&v3[v12] setAlpha_];
    [*&v3[v19] setAlpha_];
    [*&v3[v28] setAlpha_];
  }

  if (a2)
  {
    v36 = 0.7;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = objc_opt_self();
  v38 = swift_allocObject();
  *(v38 + 16) = v3;
  *(v38 + 24) = a3 & 1;
  v49 = sub_252062BC8;
  v50 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_252033CCC;
  v48 = &block_descriptor_84;
  v39 = _Block_copy(&aBlock);
  v40 = v3;

  v49 = CGPointMake;
  v50 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_25205F274;
  v48 = &block_descriptor_87;
  v41 = _Block_copy(&aBlock);
  [v37 animateWithDuration:v39 animations:v41 completion:v36];
  _Block_release(v41);
  _Block_release(v39);
}

char *sub_25205F998()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView);
  }

  else
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 bounds];
    v6 = v5;

    v7 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_headphoneDevice);
    v8 = objc_allocWithZone(type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView());
    v9 = v7;
    v10 = v0;
    v11 = sub_25205E430(v9, v6);
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v0 + v1);
    *(v10 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_25205FA74()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView);
  }

  else
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_2520646F4();
    v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

    v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_25205FBA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_25205FBBC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_25205FA74();
  return sub_25205FC04;
}

void sub_25205FC04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView) = v2;
}

id sub_25205FC1C()
{
  v1 = OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView);
  }

  else
  {
    v4 = v0;
    v5 = (*(**(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider) + 304))();
    HTUINoiseView.init(model:)(v5, &v13);
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CA2C0, qword_2520693F0));
    v7 = sub_252064474();
    v8 = [v7 view];

    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    }

    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_25205FD78(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_25205FD8C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_25205FC1C();
  return sub_25205FDD4;
}

void sub_25205FDD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView);
  *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView) = v2;
}

void *HMFitNoiseCheckTopView.init(service:hpDevice:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager] = *(a1 + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager);
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_headphoneDevice] = a2;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xA8);

  v8 = a2;
  v9 = v7();
  *&v3[OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider] = v9;
  v10 = *(*v9 + 288);

  v10(v11);

  v16.receiver = v3;
  v16.super_class = type metadata accessor for HMFitNoiseCheckTopView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 layer];
  [v13 setMasksToBounds_];

  v14 = (*((*v6 & *v12) + 0xD0))();
  (*((*v6 & *v12) + 0xE0))(v14);

  return v12;
}

void sub_2520600AC()
{
  *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView) = 0;
  sub_252064A74();
  __break(1u);
}

void sub_2520601AC()
{
  v1 = sub_25205F998();
  [v0 addSubview_];

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  [v0 addSubview_];

  v4 = (*((*v2 & *v0) + 0xB0))();
  [v0 addSubview_];
}

void sub_252060298()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() grayColor];
  v3 = [v2 CGColor];

  [v1 setBorderColor_];
  v4 = [v0 layer];
  [v4 setBorderWidth_];
}

void sub_252060380()
{
  v1 = sub_25205F998();
  [v1 pinToOther_];

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  [v3 pinToOther_];

  v4 = *((*v2 & *v0) + 0xB0);
  v5 = v4();
  [v5 hk:v0 alignCenterConstraintsWithView:?];

  v6 = v4();
  v7 = [v6 leadingAnchor];

  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];

  [v9 setActive_];
  v10 = v4();
  v11 = [v10 trailingAnchor];

  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-16.0];

  [v13 setActive_];
}

void sub_25206057C()
{
  v1 = v0;
  v2 = sub_25205F998();
  sub_25205F418(4, 1, 1);

  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  sub_252063F24();
  v4 = [*(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView) setHidden_];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))(v4);
  [v6 setHidden_];

  v7 = (*((*v5 & *v1) + 0xB0))();
  [v7 setHidden_];
}

void sub_2520606DC()
{
  v1 = v0;
  v2 = sub_25205F998();
  sub_25205F2C8();

  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  sub_252063F24();
  v4 = OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView;
  [*(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView) setHidden_];
  v5 = *(v1 + v4);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v18 = sub_252062498;
  v19 = v7;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_252033CCC;
  v17 = &block_descriptor_5;
  v8 = _Block_copy(&v14);
  v9 = v5;

  v18 = CGPointMake;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_25205F274;
  v17 = &block_descriptor_4;
  v10 = _Block_copy(&v14);
  [v6 animateWithDuration:v8 animations:v10 completion:0.7];
  _Block_release(v10);
  _Block_release(v8);

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  [v12 setHidden_];

  v13 = (*((*v11 & *v1) + 0xB0))();
  [v13 setHidden_];
}

uint64_t sub_25206096C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  sub_252063F24();
  v7 = sub_25205F998();
  sub_25205F418(a1, 1, 0);

  v8 = sub_25205D310(*(v3 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_headphoneDevice), a1);
  a2(v8);
}

void sub_252060AE8()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v3 = v2();
  [v3 setHidden_];

  v4 = v2();
  v5 = [objc_opt_self() systemOrangeColor];
  [v4 setBackgroundColor_];

  v6 = sub_25205F998();
  [v6 setHidden_];

  v7 = (*((*v1 & *v0) + 0xB0))();
  [v7 setHidden_];
}

id sub_252060C68()
{
  v1 = v0;
  v2 = sub_25205F998();
  sub_25205F418(4, 0, 0);

  v3 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  v4 = sub_252063F34();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v4);
  [v6 setHidden_];

  v7 = (*((*v5 & *v1) + 0x98))();
  [v7 setHidden_];

  v8 = *(v1 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView);

  return [v8 setHidden_];
}

void sub_252060DBC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  v3 = sub_252063F24();
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v3);
  [v5 setHidden_];

  v6 = (*((*v4 & *v1) + 0x98))();
  [v6 setHidden_];

  v7 = sub_25205F998();
  [v7 setHidden_];
}

uint64_t sub_252060FCC()
{
  v1 = sub_2520645F4();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252064614();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252064634();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v15);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v18 = sub_252064934();
  sub_252064624();
  sub_252064644();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  aBlock[4] = sub_25206261C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252033CCC;
  aBlock[3] = &block_descriptor_10_0;
  v21 = _Block_copy(aBlock);
  v22 = v0;

  sub_252064604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  sub_2520649E4();
  MEMORY[0x253097D00](v17, v8, v4, v21);
  _Block_release(v21);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  return (v19)(v17, v24);
}

uint64_t sub_252061378(void *a1)
{
  v26 = sub_2520645F4();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252064614();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252064634();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  (*((*MEMORY[0x277D85000] & *a1) + 0xF8))(1, CGPointMake, 0);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v17 = sub_252064934();
  sub_252064624();
  sub_252064644();
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_252062ADC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252033CCC;
  aBlock[3] = &block_descriptor_54_0;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_252064604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  v22 = v26;
  sub_2520649E4();
  MEMORY[0x253097D00](v16, v8, v4, v20);
  _Block_release(v20);

  (*(v29 + 8))(v4, v22);
  (*(v27 + 8))(v8, v28);
  return (v18)(v16, v25);
}

uint64_t sub_252061744(void *a1)
{
  v26 = sub_2520645F4();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252064614();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252064634();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  (*((*MEMORY[0x277D85000] & *a1) + 0xF8))(2, CGPointMake, 0);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v17 = sub_252064934();
  sub_252064624();
  sub_252064644();
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_252062B24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252033CCC;
  aBlock[3] = &block_descriptor_66;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_252064604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  v22 = v26;
  sub_2520649E4();
  MEMORY[0x253097D00](v16, v8, v4, v20);
  _Block_release(v20);

  (*(v29 + 8))(v4, v22);
  (*(v27 + 8))(v8, v28);
  return (v18)(v16, v25);
}

uint64_t sub_252061B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28[1] = a2;
  v31 = sub_2520645F4();
  v34 = *(v31 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252064614();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252064634();
  v28[0] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v28 - v19;
  (*((*MEMORY[0x277D85000] & *a1) + 0xF0))(v18);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v21 = sub_252064934();
  sub_252064624();
  sub_252064644();
  v22 = *(v13 + 8);
  v22(v17, v12);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252033CCC;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  sub_252064604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  v26 = v31;
  sub_2520649E4();
  MEMORY[0x253097D00](v20, v11, v7, v24);
  _Block_release(v24);

  (*(v34 + 8))(v7, v26);
  (*(v32 + 8))(v11, v33);
  return (v22)(v20, v28[0]);
}

uint64_t sub_252061EB4(void *a1)
{
  v26 = sub_2520645F4();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252064614();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252064634();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  (*((*MEMORY[0x277D85000] & *a1) + 0xF8))(4, CGPointMake, 0);
  sub_252035980(0, &qword_27F4C9E10, 0x277D85C78);
  v17 = sub_252064934();
  sub_252064624();
  sub_252064644();
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_252062B6C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252033CCC;
  aBlock[3] = &block_descriptor_78;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_252064604();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25204AF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9E60, &unk_252068080);
  sub_25204AFC8();
  v22 = v26;
  sub_2520649E4();
  MEMORY[0x253097D00](v16, v8, v4, v20);
  _Block_release(v20);

  (*(v29 + 8))(v4, v22);
  (*(v27 + 8))(v8, v28);
  return (v18)(v16, v25);
}

id HMFitNoiseCheckTopView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2520623A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_252062468(unint64_t result)
{
  if (result > 5 || ((1 << result) & 0x36) == 0)
  {
    return 0;
  }

  return result;
}

id sub_252062498()
{
  v1 = *(v0 + 16);
  v2 = sub_25205DD68();
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  [v2 setTransform_];

  v3 = sub_25205DF0C();
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  [v3 setTransform_];

  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage) setAlpha_];
  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage) setAlpha_];
  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel) setAlpha_];
  return [*(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView) setAlpha_];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252062628()
{
  result = qword_27F4CA248;
  if (!qword_27F4CA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CA248);
  }

  return result;
}

void sub_252062868()
{
  v1 = v0;
  v2 = sub_2520646E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextGoodFit);
  type metadata accessor for HMFitNoiseCheckTopView.FitNoiseCheckBudsView();
  sub_252064684();
  v8 = sub_252050ED4(v6);
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  *v7 = v8;
  v7[1] = v10;
  v12 = (v0 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_budResultTextBadFit);
  sub_252064684();
  v13 = sub_252050ED4(v6);
  v15 = v14;
  v11(v6, v2);
  *v12 = v13;
  v12[1] = v15;
  v16 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel;
  *(v1 + v16) = sub_25205D92C();
  v17 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel;
  *(v1 + v17) = sub_25205D92C();
  v18 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel;
  *(v1 + v18) = sub_25205DAFC(0.0);
  v19 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_spacerLabel;
  *(v1 + v19) = sub_25205DAFC(0.01);
  v20 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel;
  *(v1 + v20) = sub_25205DAFC(0.0);
  *(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___leftBudImageView) = 0;
  *(v1 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView____lazy_storage___rightBudImageView) = 0;
  v21 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage;
  *(v1 + v21) = sub_25205E0B0();
  v22 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage;
  *(v1 + v22) = sub_25205E0B0();
  v23 = OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView;
  *(v1 + v23) = sub_25205E21C();
  sub_252064A74();
  __break(1u);
}

id sub_252062BC8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = sub_25205DD68();
  v6 = *(MEMORY[0x277CBF2C0] + 8);
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *(MEMORY[0x277CBF2C0] + 24);
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  v10 = *(MEMORY[0x277CBF2C0] + 40);
  v13 = *MEMORY[0x277CBF2C0];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  [v4 setTransform_];

  v11 = sub_25205DF0C();
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  [v11 setTransform_];

  [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftBudLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightBudLabel) setAlpha_];
  if ((v3 & 1) == 0)
  {
    [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftStatusMarkImage) setAlpha_];
    [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightStatusMarkImage) setAlpha_];
    [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_leftResultLabel) setAlpha_];
    [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_rightResultLabel) setAlpha_];
  }

  return [*(v2 + OBJC_IVAR____TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView_micaView) setAlpha_];
}

id sub_252062D70()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4CD358 = result;
  return result;
}

uint64_t sub_252062F14()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD568);
  __swift_project_value_buffer(v0, qword_27F4CD568);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_252063004()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD580);
  __swift_project_value_buffer(v0, qword_27F4CD580);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_2520631DC()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD5C8);
  __swift_project_value_buffer(v0, qword_27F4CD5C8);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_2520632CC()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD5E0);
  __swift_project_value_buffer(v0, qword_27F4CD5E0);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_2520633BC()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD5F8);
  __swift_project_value_buffer(v0, qword_27F4CD5F8);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_2520634AC()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD610);
  __swift_project_value_buffer(v0, qword_27F4CD610);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_25206359C()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD628);
  __swift_project_value_buffer(v0, qword_27F4CD628);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_25206368C()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD640);
  __swift_project_value_buffer(v0, qword_27F4CD640);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_25206377C()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD658);
  __swift_project_value_buffer(v0, qword_27F4CD658);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_25206386C()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD670);
  __swift_project_value_buffer(v0, qword_27F4CD670);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_2520639D0()
{
  v0 = sub_2520641C4();
  __swift_allocate_value_buffer(v0, qword_27F4CD6A0);
  __swift_project_value_buffer(v0, qword_27F4CD6A0);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_252063B58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2520641C4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27F4CD350 != -1)
  {
    swift_once();
  }

  v4 = qword_27F4CD358;
  return sub_2520641B4();
}

uint64_t sub_252063C20(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2520641C4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_252063C98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2520641C4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}