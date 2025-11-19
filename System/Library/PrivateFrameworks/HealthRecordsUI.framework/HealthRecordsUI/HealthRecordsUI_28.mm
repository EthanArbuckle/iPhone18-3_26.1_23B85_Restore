id ClinicalSharingOnboardingInformationalViewController.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_accountStateCancellable])
  {

    sub_1D138F64C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12CBBA4()
{
  v72.receiver = v0;
  v72.super_class = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
  objc_msgSendSuper2(&v72, sel_viewDidLoad);
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1D139016C();
  v4 = v3;
  v5 = *&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_flowType];
  v6 = &OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView;
  if (v5 != 2)
  {
    v70 = v2;
    if (v5 == 1)
    {
      if (qword_1EC608E18 != -1)
      {
        swift_once();
      }

      v7 = sub_1D139012C();
      if (qword_1EC608E20 != -1)
      {
        swift_once();
      }

      v8 = sub_1D139012C();
      v9 = sub_1D139012C();
      v10 = objc_opt_self();
      v11 = [v10 _systemImageNamed_];

      if (!v11)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      [v0 addBulletedListItemWithTitle:v7 description:v8 image:v11];

      if (qword_1EC608E38 != -1)
      {
        swift_once();
      }

      v12 = sub_1D139012C();
      if (qword_1EC608E40 != -1)
      {
        swift_once();
      }

      v13 = sub_1D139012C();
      v14 = sub_1D139012C();
      v15 = [v10 _systemImageNamed_];

      if (!v15)
      {
        goto LABEL_64;
      }

      [v0 addBulletedListItemWithTitle:v12 description:v13 image:v15];

      if (qword_1EC608E70 != -1)
      {
        swift_once();
      }

      v16 = sub_1D139012C();
      [v1 setTitle:v16 forState:0];

      [v1 addTarget:v0 action:sel_nextButtonTappedForAccountLogin_ forControlEvents:64];
      v17 = [v0 buttonTray];
      [v17 addButton_];

      sub_1D12D0DF0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D139E710;
      *(v18 + 32) = v70;
      *(v18 + 40) = v4;
      strcpy((v18 + 48), "SetupSHaring");
      *(v18 + 61) = 0;
      *(v18 + 62) = -5120;

      v19 = sub_1D139044C();

      v20 = HKUIJoinStringsForAutomationIdentifier();

      if (!v20)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v5)
      {
LABEL_70:
        result = sub_1D139169C();
        __break(1u);
        return result;
      }

      if (qword_1EC608E28 != -1)
      {
        swift_once();
      }

      v41 = sub_1D139012C();
      if (qword_1EC608E30 != -1)
      {
        swift_once();
      }

      v42 = sub_1D139012C();
      v43 = sub_1D139012C();
      v44 = objc_opt_self();
      v45 = [v44 _systemImageNamed_];

      if (!v45)
      {
        goto LABEL_63;
      }

      [v0 addBulletedListItemWithTitle:v41 description:v42 image:v45];

      if (qword_1EC608E48 != -1)
      {
        swift_once();
      }

      v46 = sub_1D139012C();
      if (qword_1EC608E50 != -1)
      {
        swift_once();
      }

      v47 = sub_1D139012C();
      v48 = sub_1D139012C();
      v49 = [v44 _systemImageNamed_];

      if (!v49)
      {
        goto LABEL_66;
      }

      [v0 addBulletedListItemWithTitle:v46 description:v47 image:v49];

      if (qword_1EC608E58 != -1)
      {
        swift_once();
      }

      v50 = sub_1D139012C();
      if (qword_1EC608E60 != -1)
      {
        swift_once();
      }

      v51 = sub_1D139012C();
      v52 = sub_1D139012C();
      v53 = [v44 _systemImageNamed_];

      if (!v53)
      {
        goto LABEL_68;
      }

      [v0 addBulletedListItemWithTitle:v50 description:v51 image:v53];

      if (qword_1EC608E68 != -1)
      {
        swift_once();
      }

      v54 = sub_1D139012C();
      [v1 setTitle:v54 forState:0];

      [v1 addTarget:v0 action:sel_nextButtonTappedForProviderSearch_ forControlEvents:64];
      v55 = [v0 buttonTray];
      [v55 addButton_];

      sub_1D12D0DF0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1D139E710;
      *(v56 + 32) = v70;
      *(v56 + 40) = v4;
      *(v56 + 48) = 0x6972616853776F48;
      *(v56 + 56) = 0xEF736B726F57676ELL;

      v57 = sub_1D139044C();

      v20 = HKUIJoinStringsForAutomationIdentifier();

      v6 = &OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView;
      if (!v20)
      {
        goto LABEL_69;
      }
    }

    v36 = sub_1D139016C();
    v38 = v58;
    goto LABEL_54;
  }

LABEL_17:
  if (qword_1EC608E18 != -1)
  {
    v69 = v2;
    swift_once();
    v2 = v69;
  }

  v21 = v2;
  v22 = sub_1D139012C();
  if (qword_1EC608E20 != -1)
  {
    swift_once();
  }

  v23 = sub_1D139012C();
  v24 = sub_1D139012C();
  v25 = objc_opt_self();
  v26 = [v25 _systemImageNamed_];

  if (!v26)
  {
    goto LABEL_62;
  }

  [v0 addBulletedListItemWithTitle:v22 description:v23 image:v26];

  if (qword_1EC608E38 != -1)
  {
    swift_once();
  }

  v27 = sub_1D139012C();
  if (qword_1EC608E40 != -1)
  {
    swift_once();
  }

  v28 = sub_1D139012C();
  v29 = sub_1D139012C();
  v30 = [v25 _systemImageNamed_];

  if (!v30)
  {
    goto LABEL_65;
  }

  [v0 addBulletedListItemWithTitle:v27 description:v28 image:v30];

  if (qword_1EC608E70 != -1)
  {
    swift_once();
  }

  v31 = sub_1D139012C();
  [v1 setTitle:v31 forState:0];

  [v1 addTarget:v0 action:sel_nextButtonTappedForAuthorizationSelection_ forControlEvents:64];
  v32 = [v0 buttonTray];
  [v32 addButton_];

  sub_1D12D0DF0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D139E710;
  *(v33 + 32) = v21;
  *(v33 + 40) = v4;
  strcpy((v33 + 48), "SetupSHaring");
  *(v33 + 61) = 0;
  *(v33 + 62) = -5120;

  v34 = sub_1D139044C();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (!v35)
  {
    goto LABEL_67;
  }

  v36 = sub_1D139016C();
  v38 = v37;

  if (*(*&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession] + OBJC_IVAR___WDClinicalAccountOnboardingSession_options))
  {
    v6 = &OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView;
    goto LABEL_55;
  }

  v39 = [objc_opt_self() linkButton];
  if (qword_1EC608E78 != -1)
  {
    swift_once();
  }

  v40 = sub_1D139012C();
  [v39 setTitle:v40 forState:0];

  [v39 addTarget:v0 action:sel_skipButtonTappedForAuthorizationSelection_ forControlEvents:64];
  v20 = [v0 buttonTray];
  [v20 addButton_];

  v6 = &OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView;
LABEL_54:

LABEL_55:
  v59 = *&v0[v6[39]];
  v60 = OBJC_IVAR___WDClinicalAccountOnboardingSession_context;
  if (*(v59 + OBJC_IVAR___WDClinicalAccountOnboardingSession_context) != 2)
  {
    v61 = [v0 navigationItem];
    v62 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonTapped_];
    [v61 setRightBarButtonItem_];
  }

  v63 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D58 != -1)
  {
    swift_once();
  }

  [v63 addObserver:v0 selector:? name:? object:?];

  sub_1D12CCAE8();
  v64 = *(v59 + OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient);
  v65 = sub_1D139012C();
  sub_1D11496D4(*(v59 + v60));
  v66 = sub_1D139012C();

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_59;
  v67 = _Block_copy(aBlock);
  [v64 submitOnboardingAnalyticsForStepIdentifier:v65 context:v66 completion:v67];
  _Block_release(v67);

  sub_1D12CCFC4(v1, v36, v38);
}

uint64_t sub_1D12CCAE8()
{
  sub_1D12D0B9C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  sub_1D1080870();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06BB58;
  v8 = [*(*(v0 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthStore];
  v20 = v0;
  v9 = v8;
  v10 = [v8 profileIdentifier];

  v23 = *(v7 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v11);
  *(&v19 - 2) = v7;
  *(&v19 - 1) = v10;
  sub_1D138D96C();
  type metadata accessor for AccountStateProvider();
  sub_1D112F2FC(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v12 = *(v24 + 24);

  v24 = v12;
  sub_1D106F934(0, &qword_1EE06B760);
  v13 = sub_1D1390A7C();
  v23 = v13;
  v14 = sub_1D1390A2C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_1D112F230();
  sub_1D112F2FC(&qword_1EC6099A8, sub_1D112F230);
  sub_1D10EDC58();
  sub_1D138F8BC();
  sub_1D12D0E40(v3, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1D12D0B9C);

  swift_allocObject();
  v15 = v20;
  swift_unknownObjectWeakInit();
  sub_1D112F2FC(&qword_1EC6099B8, sub_1D1080870);
  v16 = v22;
  v17 = sub_1D138F90C();

  (*(v21 + 8))(v6, v16);
  *(v15 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_accountStateCancellable) = v17;
}

void sub_1D12CCFC4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D12D0DF0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v30[1] = 4;
  *(v7 + 16) = xmmword_1D139E710;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  v8 = [a1 currentTitle];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 removeSpecialCharactersAndWhiteSpaces];

    v11 = sub_1D139016C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  *(v7 + 48) = v11;
  *(v7 + 56) = v13;
  v14 = sub_1D139044C();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  [a1 setAccessibilityIdentifier_];
  v16 = [v3 navigationItem];
  v17 = [v16 rightBarButtonItem];

  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D139E710;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = 0x6C65636E6143;
    *(v18 + 56) = 0xE600000000000000;

    v19 = sub_1D139044C();

    v20 = HKUIJoinStringsForAutomationIdentifier();

    [v17 setAccessibilityIdentifier_];
  }

  v21 = [v3 headerView];
  v22 = swift_allocObject();
  *(v22 + 16) = *v30;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;

  v23 = [v3 headerView];
  v24 = [v23 title];

  if (!v24)
  {
    sub_1D139016C();
    v24 = sub_1D139012C();
  }

  v25 = [v24 removeSpecialCharactersAndWhiteSpaces];

  v26 = sub_1D139016C();
  v28 = v27;

  *(v22 + 48) = v26;
  *(v22 + 56) = v28;
  v29 = sub_1D139044C();

  v31 = HKUIJoinStringsForAutomationIdentifier();

  [v21 setAccessibilityIdentifier_];
}

void sub_1D12CD308()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    [v2 setClipsToBounds_];
    v3 = sub_1D12CB0C4();
    [v2 addSubview_];

    v4 = OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView;
    v5 = [*&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController____lazy_storage___logoView] widthAnchor];
    v6 = [v5 constraintEqualToConstant_];

    [v6 setActive_];
    v7 = [*&v0[v4] heightAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
    v9 = [*&v0[v4] centerXAnchor];
    v10 = [v2 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setActive_];
    v12 = [*&v0[v4] centerYAnchor];
    v13 = [v2 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    [v14 setActive_];
  }
}

void sub_1D12CD580()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession];
      v6 = [objc_allocWithZone(WDClinicalOnboardingViewController) initWithProfile:*(v5 + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) gatewayProxy:*&v0[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_gatewayProxyToTry]];
      [v6 setShowOnlyClinicalSharingCapableProviders_];
      [v4 pushViewController:v6 animated:1];
      v7 = *(v5 + OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient);
      v8 = sub_1D139012C();
      sub_1D11496D4(*(v5 + OBJC_IVAR___WDClinicalAccountOnboardingSession_context));
      v9 = sub_1D139012C();

      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D112A218;
      aBlock[3] = &block_descriptor_46_1;
      v10 = _Block_copy(aBlock);
      [v7 submitOnboardingAnalyticsForStepIdentifier:v8 context:v9 completion:v10];
      _Block_release(v10);

      return;
    }
  }

  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD000000000000066, 0x80000001D13CA840);
  [v0 navigationController];
  sub_1D12D0CC8();
  v11 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v11);

  sub_1D13913BC();
  __break(1u);
}

void sub_1D12CD87C()
{
  v1 = v0;
  sub_1D12D0B9C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = *&v1[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_selectedAccount];
  if (v15)
  {
    v16 = v15;
    if ([v16 needsLoginToEnableClinicalSharing])
    {
      sub_1D138F06C();
      v17 = sub_1D138F0AC();
      v18 = sub_1D139081C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1D101F000, v17, v18, "ClinicalSharingOnboardingInformationalViewController: account needs login to enable clinical sharing", v19, 2u);
        MEMORY[0x1D38882F0](v19, -1, -1);
      }

      (*(v6 + 8))(v14, v5);
      v20 = sub_1D13905DC();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      sub_1D13905AC();
      v21 = v16;
      v22 = v1;
      v23 = sub_1D139059C();
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E85E0];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v22;
      v24[5] = v21;
      sub_1D107877C(0, 0, v4, &unk_1D13AEC60, v24);
    }

    else
    {
      sub_1D138F06C();
      v29 = sub_1D138F0AC();
      v30 = sub_1D139081C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D101F000, v29, v30, "ClinicalSharingOnboardingInformationalViewController: account is logged in and has necessary scopes, proceeding to data selection", v31, 2u);
        MEMORY[0x1D38882F0](v31, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
      sub_1D12CE108(v16, 1, 0);
    }
  }

  else
  {
    sub_1D138F06C();
    v26 = sub_1D138F0AC();
    v27 = sub_1D139081C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D101F000, v26, v27, "ClinicalSharingOnboardingInformationalViewController: there is no selected account, starting provider search", v28, 2u);
      MEMORY[0x1D38882F0](v28, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1D12CD580();
  }
}

uint64_t sub_1D12CDC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1D13905AC();
  v5[3] = sub_1D139059C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1D10AA380;

  return sub_1D12CDD58(a5);
}

uint64_t sub_1D12CDD58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D13905AC();
  v2[4] = sub_1D139059C();
  v4 = sub_1D139055C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D12CDDF0, v4, v3);
}

uint64_t sub_1D12CDDF0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D68 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  [v1 addObserver:v2 selector:? name:? object:?];

  v3 = *(*(v2 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile);
  type metadata accessor for ClinicalAccountManager();
  v4 = swift_allocObject();
  v0[7] = v4;
  v5 = MEMORY[0x1E69E7CD0];
  v4[5] = 0;
  v4[6] = 0;
  v4[4] = v5;
  v4[2] = v3;
  v4[3] = [v3 clinicalAccountStore];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D12CDF7C;
  v8 = v0[2];
  v7 = v0[3];

  return ClinicalAccountManager.startRelogin(to:from:)(v8, v7);
}

uint64_t sub_1D12CDF7C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D12CE09C, v3, v2);
}

uint64_t sub_1D12CE09C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D12CE108(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_1D138FF3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v11 = sub_1D1390A7C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1D138FF5C();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = *&v4[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession];
    v14 = objc_allocWithZone(type metadata accessor for ClinicalSharingDataTypeSelectionViewController(0));
    v15 = v13;
    v16 = sub_1D1089C9C(v15, a1);
    v17 = v16;
    if (a3)
    {
      v18 = [v16 navigationItem];
      [v18 setHidesBackButton:1 animated:0];
    }

    v19 = [v4 navigationController];
    if (v19)
    {
      v20 = a2 & 1;
      v21 = v19;
      [v19 pushViewController:v17 animated:v20];
    }

    v22 = *&v15[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient];
    v23 = sub_1D139012C();
    sub_1D11496D4(*&v15[OBJC_IVAR___WDClinicalAccountOnboardingSession_context]);
    v24 = sub_1D139012C();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D112A218;
    aBlock[3] = &block_descriptor_18_2;
    v25 = _Block_copy(aBlock);
    [v22 submitOnboardingAnalyticsForStepIdentifier:v23 context:v24 completion:v25];
    _Block_release(v25);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D12CE3F0()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_selectedAccount);
  if (v6)
  {
    v12 = v6;
    sub_1D12CE108(v12, 1, 0);
    v7 = v12;
  }

  else
  {
    sub_1D138F06C();
    v8 = sub_1D138F0AC();
    v9 = sub_1D139081C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D101F000, v8, v9, "ClinicalSharingOnboardingInformationalViewController: there is no selected account.", v10, 2u);
      MEMORY[0x1D38882F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1D12CD580();
  }
}

void sub_1D12CE5AC()
{
  v1 = v0;
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D0B9C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = *&v1[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_selectedAccount];
  if (v16)
  {
    v50 = v8;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v18 = v16;
    if (v17)
    {
      sub_1D138F06C();
      v19 = sub_1D138F0AC();
      v20 = sub_1D139081C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D101F000, v19, v20, "ClinicalSharingOnboardingInformationalViewController: skipping clinical sharing for a new account, persisting account and finishing", v21, 2u);
        MEMORY[0x1D38882F0](v21, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      v22 = *&v1[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession];
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      v24 = sub_1D13905DC();
      v25 = v50;
      (*(*(v24 - 8) + 56))(v50, 1, 1, v24);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v22;
      *(v26 + 40) = v17;
      *(v26 + 48) = 0;
      *(v26 + 56) = sub_1D12D0CB4;
      *(v26 + 64) = v23;
      v27 = v1;
      v28 = v22;
      sub_1D107877C(0, 0, v25, &unk_1D13ADBC0, v26);
    }

    else
    {
      v29 = v18;
      sub_1D138F06C();
      v30 = sub_1D138F0AC();
      v31 = sub_1D139081C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v48 = v29;
        v33 = v1;
        v34 = v32;
        *v32 = 0;
        _os_log_impl(&dword_1D101F000, v30, v31, "ClinicalSharingOnboardingInformationalViewController: skipping clinical sharing for existing account, triggering ingestion and finishing", v32, 2u);
        v35 = v34;
        v1 = v33;
        v29 = v48;
        MEMORY[0x1D38882F0](v35, -1, -1);
      }

      v49 = v1;

      (*(v10 + 8))(v12, v9);
      v36 = *&v1[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession];
      v37 = [*&v36[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile] ingestionStore];
      v38 = sub_1D139012C();
      sub_1D12D0B9C(0, &qword_1EC60EBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6F90]);
      v39 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D139E700;
      v41 = [v29 identifier];
      sub_1D138D5CC();

      (*(v3 + 32))(v40 + v39, v5, v2);
      v42 = sub_1D139044C();

      [v37 ingestHealthRecordsWithOptions:0 reason:v38 accountIdentifiers:v42 completion:0];

      v43 = sub_1D13905DC();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v36;
      v46 = v36;
      sub_1D107877C(0, 0, v44, &unk_1D13AEC40, v45);

      [v49 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1D12CEBB4(void *a1, void *a2, void *a3)
{
  v6 = sub_1D138FECC();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D138FF0C();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v12 = sub_1D1390A7C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a2;
  aBlock[4] = sub_1D12D0CBC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_38_1;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;
  v17 = a2;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D112F2FC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D12D0B9C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

void sub_1D12CEEB8(uint64_t a1, char *a2, void *a3)
{
  sub_1D12D0B9C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  if (a1)
  {
    v9 = *&a2[OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_onboardingSession];
    v10 = sub_1D13905DC();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v12 = v9;
    sub_1D107877C(0, 0, v8, &unk_1D13AEC50, v11);

    [a2 dismissViewControllerAnimated:1 completion:0];
    return;
  }

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = [objc_opt_self() hk:0 error:0 userInfo:?];
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = a3;
LABEL_8:
  v14 = a3;
  v17 = sub_1D1299A40(0, v13);

  [a2 presentViewController:v17 animated:1 completion:0];
  v15 = v17;
}

uint64_t sub_1D12CF0FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1D139101C();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v9);
}

id ClinicalSharingOnboardingInformationalViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1D139012C();

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

  v13 = sub_1D139012C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1D139012C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ClinicalSharingOnboardingInformationalViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1D139012C();

  if (a4)
  {
    v12 = sub_1D139012C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_1D12CF43C()
{
  v1 = v0;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1D13911EC();

    swift_getErrorValue();
    v2 = sub_1D13916FC();
    MEMORY[0x1D3885C10](v2);

    v3 = sub_1D139012C();
    v4 = sub_1D139012C();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

    v6 = sub_1D139012C();
    v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

    [v5 addAction_];
    [v1 presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_1D12CF5F4(uint64_t a1)
{
  v2 = sub_1D138FECC();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138FF0C();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D01C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v12 = sub_1D1390A7C();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1D12D0B38;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_21_3;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D112F2FC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D12D0B9C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v7, v4, v16);
  _Block_release(v16);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

void sub_1D12CF9A8()
{
  v1 = v0;
  v45 = sub_1D138F0BC();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = sub_1D138FF3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v14 = sub_1D1390A7C();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = sub_1D138FF5C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v15 = [objc_opt_self() defaultCenter];
    if (qword_1EC608D68 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  [v15 removeObserver:v1 name:qword_1EC60DA18 object:0];

  v16 = sub_1D138D00C();
  if (!v16)
  {
LABEL_14:
    v49 = 0u;
    v50 = 0u;
    goto LABEL_15;
  }

  v17 = v16;
  v46 = 0xD00000000000002BLL;
  v47 = 0x80000001D13BA6B0;
  sub_1D139116C();
  if (!*(v17 + 16) || (v18 = sub_1D129E400(v48), (v19 & 1) == 0))
  {

    sub_1D1116E48(v48);
    goto LABEL_14;
  }

  sub_1D109F94C(*(v17 + 56) + 32 * v18, &v49);
  sub_1D1116E48(v48);

  if (!*(&v50 + 1))
  {
LABEL_15:
    sub_1D12D0E40(&v49, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12D0DF0);
    goto LABEL_16;
  }

  sub_1D1080EA4(0, &qword_1EE06B690);
  if (swift_dynamicCast())
  {
    v20 = v48[0];
    sub_1D138F06C();
    v21 = v20;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v49 = v44;
      *v24 = 136315138;
      v48[0] = v20;
      v25 = v20;
      sub_1D13916AC();
      v26 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v27 = sub_1D13901EC();
      v29 = sub_1D11DF718(v27, v28, &v49);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D101F000, v22, v23, "ClinicalSharingOnboardingInformationalViewController: error logging in: %s", v24, 0xCu);
      v30 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1D38882F0](v30, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v2 + 8))(v10, v45);
    v31 = sub_1D138D2AC();
    v32 = [v31 hk_isUserCanceledError];

    if (!v32)
    {
      sub_1D12CF43C();
    }

    return;
  }

LABEL_16:
  v33 = sub_1D138D00C();
  if (!v33)
  {
LABEL_25:
    v49 = 0u;
    v50 = 0u;
    goto LABEL_26;
  }

  v34 = v33;
  v46 = 0xD00000000000002DLL;
  v47 = 0x80000001D13BA650;
  sub_1D139116C();
  if (!*(v34 + 16) || (v35 = sub_1D129E400(v48), (v36 & 1) == 0))
  {

    sub_1D1116E48(v48);
    goto LABEL_25;
  }

  sub_1D109F94C(*(v34 + 56) + 32 * v35, &v49);
  sub_1D1116E48(v48);

  if (!*(&v50 + 1))
  {
LABEL_26:
    sub_1D12D0E40(&v49, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12D0DF0);
    goto LABEL_27;
  }

  sub_1D106F934(0, &qword_1EC609A00);
  if (swift_dynamicCast())
  {

    sub_1D138F06C();
    v37 = sub_1D138F0AC();
    v38 = sub_1D139081C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D101F000, v37, v38, "ClinicalSharingOnboardingInformationalViewController: account logged in again, OAuth navigation controller will proceed to data selection", v39, 2u);
      MEMORY[0x1D38882F0](v39, -1, -1);
    }

    (*(v2 + 8))(v7, v45);
    return;
  }

LABEL_27:
  sub_1D138F06C();
  v40 = sub_1D138F0AC();
  v41 = sub_1D13907FC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D101F000, v40, v41, "ClinicalSharingOnboardingInformationalViewController: login completed with neither error nor account", v42, 2u);
    MEMORY[0x1D38882F0](v42, -1, -1);
  }

  (*(v2 + 8))(v4, v45);
}

void sub_1D12D0108()
{
  v0 = sub_1D138D5EC();
  v53 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = sub_1D138D00C();
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v54 = 0xD00000000000003FLL;
  v55 = 0x80000001D13C4900;
  sub_1D139116C();
  if (!*(v14 + 16) || (v15 = sub_1D129E400(v56), (v16 & 1) == 0))
  {

    sub_1D1116E48(v56);
LABEL_12:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_13;
  }

  sub_1D109F94C(*(v14 + 56) + 32 * v15, &v57);
  sub_1D1116E48(v56);

  if (!*(&v58 + 1))
  {
LABEL_13:
    sub_1D12D0E40(&v57, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12D0DF0);
    goto LABEL_14;
  }

  sub_1D1080EA4(0, &qword_1EE06B690);
  if (swift_dynamicCast())
  {
    v17 = v56[0];
    sub_1D138F06C();
    v18 = v17;
    v19 = sub_1D138F0AC();
    v20 = sub_1D13907FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v57 = v22;
      *v21 = 136315138;
      v56[0] = v17;
      v23 = v17;
      sub_1D13916AC();
      v24 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, &v57);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1D101F000, v19, v20, "ClinicalSharingOnboardingInformationalViewController: didReceiveClinicalAccountOnboardingCompletion with error %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D38882F0](v22, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    v28 = sub_1D138D2AC();
    v29 = [v28 hk_isUserCanceledError];

    if (!v29)
    {
      sub_1D12CF43C();
    }

    return;
  }

LABEL_14:
  v30 = sub_1D138D00C();
  if (!v30)
  {
LABEL_23:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_24;
  }

  v31 = v30;
  v54 = 0xD000000000000041;
  v55 = 0x80000001D13C48B0;
  sub_1D139116C();
  if (!*(v31 + 16) || (v32 = sub_1D129E400(v56), (v33 & 1) == 0))
  {

    sub_1D1116E48(v56);
    goto LABEL_23;
  }

  sub_1D109F94C(*(v31 + 56) + 32 * v32, &v57);
  sub_1D1116E48(v56);

  if (!*(&v58 + 1))
  {
LABEL_24:
    sub_1D12D0E40(&v57, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12D0DF0);
    goto LABEL_25;
  }

  sub_1D106F934(0, &qword_1EC609A00);
  if (swift_dynamicCast())
  {
    v34 = v56[0];
    sub_1D138F06C();
    v35 = v34;
    v36 = sub_1D138F0AC();
    v37 = sub_1D139081C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = v38;
      v52 = swift_slowAlloc();
      v56[0] = v52;
      *v38 = 136315138;
      v39 = [v35 identifier];
      sub_1D138D5CC();

      sub_1D112F2FC(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v40 = sub_1D13915CC();
      v42 = v41;
      (*(v53 + 8))(v2, v0);
      v43 = sub_1D11DF718(v40, v42, v56);

      v44 = v51;
      *(v51 + 1) = v43;
      v45 = v44;
      _os_log_impl(&dword_1D101F000, v36, v37, "ClinicalSharingOnboardingInformationalViewController: onboarded account %s successfully", v44, 0xCu);
      v46 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1D38882F0](v46, -1, -1);
      MEMORY[0x1D38882F0](v45, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    sub_1D12CE108(v35, 0, 1);

    return;
  }

LABEL_25:
  sub_1D138F06C();
  v47 = sub_1D138F0AC();
  v48 = sub_1D13907FC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D101F000, v47, v48, "ClinicalSharingOnboardingInformationalViewController: onboarding completed with neither error nor account", v49, 2u);
    MEMORY[0x1D38882F0](v49, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D12D08A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D138D01C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138CFDC();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1D12D0990(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v1 && v3 == 1)
      {
        v8 = v1;
        [v7 didCompleteOnboardingFor_];

        swift_unknownObjectRelease();
        sub_1D1080A3C(v1, v2);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D12D0AA8()
{
  result = qword_1EC60F150;
  if (!qword_1EC60F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F150);
  }

  return result;
}

void sub_1D12D0B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12D0C00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D13686A4(a1, v4, v5, v6);
}

void sub_1D12D0CC8()
{
  if (!qword_1EC60E8F0)
  {
    sub_1D106F934(255, &qword_1EC60E8F8);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E8F0);
    }
  }
}

uint64_t sub_1D12D0D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D12CDC9C(a1, v4, v5, v7, v6);
}

void sub_1D12D0DF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D12D0E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1D12D0EC8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setNumberOfLines_];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D12D0FC0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = sub_1D12D1020();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12D1020()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t sub_1D12D1118()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleHorizontalConstraints;
  if (*&v0[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleHorizontalConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleHorizontalConstraints];
  }

  else
  {
    sub_1D106F424();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139E6E0;
    v3 = sub_1D12D0EC8();
    v4 = [v3 leadingAnchor];

    v5 = [v0 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = [v0 trailingAnchor];
    v8 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel] trailingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v2 + 40) = v9;
    *&v0[v1] = v2;
  }

  return v2;
}

char *sub_1D12D1274(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleHorizontalConstraints] = 0;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for StackedTwoLabelView();
  v9 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1D12D0EC8();
  [v9 addSubview_];

  v11 = sub_1D12D0FC0();
  [v9 addSubview_];

  v33 = objc_opt_self();
  sub_1D12D1118();
  sub_1D1071940();
  v12 = sub_1D139044C();

  [v33 activateConstraints_];

  sub_1D106F424();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D139F5A0;
  v14 = OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel;
  v15 = [*&v9[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___titleLabel] topAnchor];
  v16 = [v9 topAnchor];

  v17 = [v15 constraintEqualToAnchor_];
  *(v13 + 32) = v17;
  v18 = OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel;
  v19 = [*&v9[OBJC_IVAR____TtC15HealthRecordsUI19StackedTwoLabelView____lazy_storage___subtitleLabel] topAnchor];
  v20 = [*&v9[v14] bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v13 + 40) = v21;
  v22 = [*&v9[v18] leadingAnchor];
  v23 = [*&v9[v14] leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v13 + 48) = v24;
  v25 = [*&v9[v18] trailingAnchor];
  v26 = [*&v9[v14] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v13 + 56) = v27;
  v28 = [*&v9[v18] bottomAnchor];
  v29 = [v9 bottomAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v13 + 64) = v30;
  v31 = sub_1D139044C();

  [v33 activateConstraints_];

  return v9;
}

id sub_1D12D16A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackedTwoLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12D175C(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D13910DC();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    result = sub_1D139107C();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v5 = sub_1D139104C();
    v6 = *(a1 + 36);
    v29 = v5;
    v30 = v6;
    v31 = 0;
  }

  result = objc_opt_self();
  v7 = 0;
  v26 = result;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v10 = v29;
    v11 = v30;
    v12 = v31;
    sub_1D12D39CC(v29, v30, v31, a1, &qword_1EE06A630);
    v14 = v13;
    v15 = [v13 sampleType];
    v16 = [v26 queryDescriptorWithSampleType_];

    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    result = sub_1D13912BC();
    if (v27)
    {
      if (!v12)
      {
        goto LABEL_36;
      }

      if (sub_1D139109C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1D12D48F8();
      v8 = sub_1D13906EC();
      sub_1D139113C();
      result = v8(v28, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1D1105004(v29, v30, v31);
        return v32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_37;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v10 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v10 >> 6;
      v19 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v19 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1D1105004(v10, v11, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_1D1105004(v10, v11, 0);
      }

LABEL_27:
      v29 = v17;
      v30 = v11;
      v31 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D12D1AB4(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D13910DC();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    result = sub_1D139107C();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D13912DC();
  result = sub_1D139104C();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1D12D39CC(v26, v27, v28, a1, &qword_1EE06A630);
    v13 = v12;
    v14 = [v12 sampleType];

    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    result = sub_1D13912BC();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1D139109C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1D12D48F8();
      v7 = sub_1D13906EC();
      sub_1D139113C();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1D1105004(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1D1105004(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1D1105004(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_1D12D1DDC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1D12D216C();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D12D1E34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D12D1EA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D12D2648();
  }

  return result;
}

uint64_t sub_1D12D1F00()
{
  v1 = *(v0 + 24);
  v2 = sub_1D12D1DDC();
  [v1 stopQuery_];

  v3 = OBJC_IVAR____TtC15HealthRecordsUI23SampleTypeCountProvider__sampleCounts;
  sub_1D12D2804(0, &qword_1EE06A6A0, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D12D1FDC()
{
  sub_1D12D1F00();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SampleTypeCountProvider()
{
  result = qword_1EE06B928;
  if (!qword_1EE06B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D12D2088()
{
  sub_1D12D2804(319, &qword_1EE06A6A0, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1D12D216C()
{
  sub_1D12D175C(*(v0 + 16));
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(MEMORY[0x1E696C2E8]);
  sub_1D106F934(0, &qword_1EE06A630);

  v3 = sub_1D139044C();

  aBlock[4] = sub_1D12D4840;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D12D35E0;
  aBlock[3] = &block_descriptor_33;
  v4 = _Block_copy(aBlock);
  v5 = [v2 initWithQueryDescriptors:v3 updateHandler:v4];

  _Block_release(v4);

  aBlock[0] = v0;
  type metadata accessor for SampleTypeCountProvider();
  v6 = v5;

  sub_1D13901EC();
  v7 = sub_1D139012C();

  [v6 setDebugIdentifier_];

  return v6;
}

uint64_t sub_1D12D2320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a5)
    {
      v11 = a5;

      v13 = sub_1D12D1AB4(v12);

      sub_1D138F06C();
      v14 = a5;

      v15 = sub_1D138F0AC();
      v16 = sub_1D13907FC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28 = v7;
        v18 = v17;
        v27 = swift_slowAlloc();
        v29 = a5;
        v30[0] = v27;
        *v18 = 136446466;
        v19 = a5;
        sub_1D10922EC();
        v20 = sub_1D139020C();
        v22 = sub_1D11DF718(v20, v21, v30);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v29 = v13;
        sub_1D12D4890();
        v23 = sub_1D139020C();
        v25 = sub_1D11DF718(v23, v24, v30);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_1D101F000, v15, v16, "Error %{public}s observing change for sample types: %{public}s", v18, 0x16u);
        v26 = v27;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v26, -1, -1);
        MEMORY[0x1D38882F0](v18, -1, -1);

        (*(v28 + 8))(v9, v6);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }
    }

    sub_1D12D45FC();
    sub_1D12D4848(&qword_1EE06A758, sub_1D12D45FC);

    sub_1D138F74C();
  }

  return result;
}

void sub_1D12D2648()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  sub_1D106F934(0, &qword_1EE06A630);
  sub_1D10809F0(&qword_1EE06A628, &qword_1EE06A630);

  v2 = sub_1D13906AC();
  v7[4] = sub_1D12D4768;
  v8 = v0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D1179344;
  v7[3] = &block_descriptor_60;
  v3 = _Block_copy(v7);
  v4 = [v1 initWithQueryDescriptors:v2 resultsHandler:v3];

  _Block_release(v3);

  v7[0] = v0;
  type metadata accessor for SampleTypeCountProvider();

  v5 = v4;
  sub_1D13901EC();
  v6 = sub_1D139012C();

  [v5 setDebugIdentifier_];

  [*(v0 + 24) executeQuery_];
}

void sub_1D12D2804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D12D4788(255, &qword_1EE06A668, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D12D2880(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3;
    sub_1D138F06C();
    v12 = a3;

    v13 = sub_1D138F0AC();
    v14 = sub_1D13907FC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = a3;
      v52[0] = v49;
      *v15 = 136446466;
      v16 = a3;
      sub_1D10922EC();
      v17 = sub_1D139020C();
      v19 = sub_1D11DF718(v17, v18, v52);
      v50 = a2;
      v48 = v7;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v47 = v13;
      sub_1D106F934(0, &qword_1EE06A630);
      HIDWORD(v46) = v14;
      sub_1D10809F0(&qword_1EE06A628, &qword_1EE06A630);
      v21 = sub_1D13906CC();
      v23 = sub_1D11DF718(v21, v22, v52);
      a2 = v50;

      *(v15 + 14) = v23;
      v24 = v47;
      _os_log_impl(&dword_1D101F000, v47, BYTE4(v46), "Error %{public}s querying count with descriptors: %{public}s", v15, 0x16u);
      v25 = v49;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v25, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);

      (*(v8 + 8))(v10, v48);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  if (a2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v26 = sub_1D12D372C();
LABEL_20:
      swift_getKeyPath();
      swift_getKeyPath();
      v52[0] = v26;

      sub_1D138F7CC();
    }

    else
    {
      v49 = a4;
      sub_1D12D4788(0, &qword_1EE06A4F0, MEMORY[0x1E69E6EC8]);
      v27 = sub_1D139141C();
      v26 = v27;
      v28 = 0;
      v29 = a2 + 64;
      v30 = 1 << *(a2 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(a2 + 64);
      v33 = (v30 + 63) >> 6;
      v50 = v27 + 64;
      if (v32)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
LABEL_17:
          v37 = v34 | (v28 << 6);
          v38 = a2;
          v39 = *(*(a2 + 56) + 8 * v37);
          v40 = *(*(a2 + 48) + 8 * v37);
          v41 = v39;
          v42 = sub_1D139071C();

          *(v50 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
          *(v26[6] + 8 * v37) = v40;
          *(v26[7] + 8 * v37) = v42;
          v43 = v26[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            break;
          }

          v26[2] = v45;
          a2 = v38;
          if (!v32)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v35 = v28;
        while (1)
        {
          v28 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v28 >= v33)
          {
            goto LABEL_20;
          }

          v36 = *(v29 + 8 * v28);
          ++v35;
          if (v36)
          {
            v34 = __clz(__rbit64(v36));
            v32 = (v36 - 1) & v36;
            goto LABEL_17;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D12D2CF8()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    sub_1D12D31B0();
    v1 = v2;
    *(v0 + 48) = v2;
  }

  return v1;
}

void *sub_1D12D2D54(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1D12D2804(0, &qword_1EE06A6A8, MEMORY[0x1E695C060]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  sub_1D12D49A0();
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D109F9DC(MEMORY[0x1E69E7CC0]);
  sub_1D11E65C4();
  swift_allocObject();
  v15 = sub_1D138F6EC();
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v15;
  v2[2] = a2;
  v16 = a2;
  sub_1D12D2CF8();
  swift_beginAccess();
  sub_1D12D2804(0, &qword_1EE06A6A0, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_1D11D4854();
  sub_1D12D4A38();

  sub_1D138F84C();

  (*(v8 + 8))(v10, v7);
  swift_allocObject();
  swift_weakInit();

  sub_1D12D4848(&qword_1EE06A7C0, sub_1D12D49A0);
  v17 = v21;
  v18 = sub_1D138F90C();

  (*(v22 + 8))(v14, v17);
  v3[5] = v18;

  return v3;
}

uint64_t sub_1D12D30AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D12D328C(v3);
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D12D3130()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D138F6BC();
  }

  return result;
}

void sub_1D12D31B0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = MEMORY[0x1E69E7CD0];
  v10 = MEMORY[0x1E69E7CD0];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 80;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v6 += 72;

      sub_1D1185980(v7);

      if (v4 == v5)
      {
        v3 = v10;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v8 = *(v1 + 16);
    type metadata accessor for SampleTypeCountProvider();
    swift_allocObject();
    v9 = v8;
    sub_1D12D3BE4(v3, v9);
  }
}

void sub_1D12D328C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v25 = *(v2 + 16);
  if (v25)
  {
    v4 = 0;
    v24 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC8];
    v23 = v2;
    while (v4 < *(v2 + 16))
    {
      v7 = (v24 + 72 * v4);
      v8 = v7[1];
      v9 = v7[2];
      v10 = *(v7 + 8);
      v29 = v7[3];
      v11 = *v7;
      v30 = v10;
      v28[1] = v8;
      v28[2] = v9;
      v28[0] = v11;
      v12 = v29;
      v13 = v29 & 0xFFFFFFFFFFFFFF8;
      if (v29 >> 62)
      {
        v14 = sub_1D13910DC();
      }

      else
      {
        v14 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v4 + 1;
      sub_1D1082914(v28, v27);
      sub_1D1082914(v28, v27);
      v15 = 0;
      v16 = 0;
      while (v14 != v15)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1D3886B70](v15, v12);
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_22;
          }

          v19 = *(v12 + 8 * v15 + 32);
        }

        v20 = v19;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (*(a1 + 16) && (v21 = sub_1D129E808(v19), (v22 & 1) != 0))
        {
          v17 = *(*(a1 + 56) + 8 * v21);
        }

        else
        {
          v17 = 0;
        }

        ++v15;
        v18 = __OFADD__(v16, v17);
        v16 += v17;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = v5;
      sub_1D11DBAD8(v16, v28, isUniquelyReferenced_nonNull_native);
      sub_1D1080D98(v28);
      sub_1D1080D98(v28);
      v4 = v26;
      v5 = v27[0];
      v2 = v23;
      if (v26 == v25)
      {
        return;
      }
    }

LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1D12D3468()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D12D34E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D12D3564()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D138F7CC();
}

uint64_t sub_1D12D35E0(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D10809F0(&qword_1EE06B778, &qword_1EE06B780);
    v7 = sub_1D13906BC();
  }

  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v12 = a2;
  v13 = a5;
  v9(v12, v7, sub_1D10C7B38, v11, a5);
}

uint64_t sub_1D12D372C()
{
  if (sub_1D13910DC())
  {
    sub_1D12D4788(0, &qword_1EE06A4F0, MEMORY[0x1E69E6EC8]);
    v0 = sub_1D139144C();
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC8];
  }

  v18 = v0;
  sub_1D139135C();
  swift_unknownObjectRetain();
  v1 = sub_1D139139C();
  if (v1)
  {
    v2 = v1;
    sub_1D106F934(0, &qword_1EE06A630);
    v3 = v2;
    do
    {
      v16 = v3;
      swift_dynamicCast();
      sub_1D106F934(0, &qword_1EE06B6C0);
      swift_dynamicCast();
      v10 = sub_1D139071C();

      v11 = *(v0 + 16);
      if (*(v0 + 24) <= v11)
      {
        sub_1D117F894(v11 + 1, 1);
      }

      v0 = v18;
      result = sub_1D1390D7C();
      v5 = v18 + 64;
      v6 = -1 << *(v18 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v18 + 64 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v18 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v8 == v13;
          if (v8 == v13)
          {
            v8 = 0;
          }

          v12 |= v14;
          v15 = *(v5 + 8 * v8);
        }

        while (v15 == -1);
        v9 = __clz(__rbit64(~v15)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v18 + 48) + 8 * v9) = v17;
      *(*(v18 + 56) + 8 * v9) = v10;
      ++*(v18 + 16);
      v3 = sub_1D139139C();
    }

    while (v3);
  }

  return v0;
}

void sub_1D12D39CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D3886A50](a1, a2, v9);
      sub_1D106F934(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D106F934(0, a5);
    if (sub_1D13910BC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D13910CC();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1D1390D7C();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1D1390D8C();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1D12D3BE4(uint64_t a1, void *a2)
{
  v83 = a1;
  sub_1D1205260();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1390A5C();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D44FC();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D4660();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = 0;
  sub_1D12D45FC();
  v70 = v19;
  swift_allocObject();
  v20 = sub_1D138F69C();
  v2[6] = MEMORY[0x1E69E7CD0];
  v2[5] = v20;
  v21 = v83;
  v2[2] = v83;
  v2[3] = a2;
  v81 = v15;
  v82 = v2;
  v79 = v18;
  v80 = v16;
  v77 = v2 + 6;
  v78 = v6;
  v75 = v11;
  v76 = v10;
  v74 = v13;
  if ((v21 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    v22 = a2;
    sub_1D139108C();
    sub_1D106F934(0, &qword_1EE06A630);
    sub_1D10809F0(&qword_1EE06A628, &qword_1EE06A630);
    sub_1D139070C();
    v24 = v86;
    v23 = v87;
    v26 = v88;
    v25 = v89;
    v27 = v90;
  }

  else
  {
    v28 = -1 << *(v21 + 32);
    v23 = v21 + 56;
    v26 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v21 + 56);
    v24 = v21;
    swift_bridgeObjectRetain_n();
    v31 = a2;
    v25 = 0;
  }

  v69 = v26;
  v32 = MEMORY[0x1E69E7CC8];
  while (v24 < 0)
  {
    v38 = sub_1D139110C();
    if (!v38 || (v84 = v38, sub_1D106F934(0, &qword_1EE06A630), swift_dynamicCast(), v37 = v85, v35 = v25, v36 = v27, !v85))
    {
LABEL_29:
      sub_1D102CC30();

      v51 = v82;
      swift_beginAccess();
      v84 = v32;
      sub_1D12D4788(0, &qword_1EE06A668, MEMORY[0x1E69E5E28]);
      sub_1D138F77C();
      swift_endAccess();
      v85 = v51[5];

      v52 = v71;
      sub_1D1390A3C();
      sub_1D106F934(0, &qword_1EE06B760);
      v53 = sub_1D1390A7C();
      v84 = v53;
      v54 = sub_1D1390A2C();
      v55 = *(v54 - 8);
      v69 = *(v55 + 56);
      v83 = v55 + 56;
      v56 = v78;
      v69(v78, 1, 1, v54);
      sub_1D12D4848(&qword_1EE06A750, sub_1D12D45FC);
      sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
      v57 = v74;
      sub_1D138F8CC();
      sub_1D10D5C04(v56);

      (*(v72 + 8))(v52, v73);

      v58 = sub_1D1390A7C();
      v85 = v58;
      v69(v56, 1, 1, v54);
      sub_1D12D4848(&qword_1EE06A7A0, sub_1D12D44FC);
      v59 = v79;
      v60 = v76;
      sub_1D138F8BC();
      sub_1D10D5C04(v56);

      (*(v75 + 8))(v57, v60);
      v61 = swift_allocObject();
      v62 = v82;
      swift_weakInit();
      v63 = swift_allocObject();
      *(v63 + 16) = sub_1D12D4760;
      *(v63 + 24) = v61;
      sub_1D12D4848(&qword_1EE06A790, sub_1D12D4660);
      v64 = v81;
      sub_1D138F90C();

      (*(v80 + 8))(v59, v64);
      swift_beginAccess();
      sub_1D138F63C();
      swift_endAccess();

      v65 = v62[3];
      v66 = sub_1D12D1DDC();
      [v65 executeQuery_];

      sub_1D12D2648();
      return v62;
    }

LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v32;
    v40 = sub_1D129E808(v37);
    v42 = v32[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_31;
    }

    v46 = v41;
    if (v32[3] < v45)
    {
      sub_1D117F894(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_1D129E808(v37);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      v32 = v85;
      if (v46)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v50 = v40;
    sub_1D11840FC();
    v40 = v50;
    v32 = v85;
    if (v46)
    {
LABEL_8:
      *(v32[7] + 8 * v40) = 0;

      goto LABEL_9;
    }

LABEL_25:
    v32[(v40 >> 6) + 8] |= 1 << v40;
    *(v32[6] + 8 * v40) = v37;
    *(v32[7] + 8 * v40) = 0;
    v48 = v32[2];
    v44 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v44)
    {
      goto LABEL_32;
    }

    v32[2] = v49;
LABEL_9:
    v25 = v35;
    v27 = v36;
  }

  v33 = v25;
  v34 = v27;
  v35 = v25;
  if (v27)
  {
LABEL_15:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v24 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= ((v26 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v34 = *(v23 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1D106F934(0, &qword_1EE06A630);
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

void sub_1D12D44FC()
{
  if (!qword_1EE06A798)
  {
    sub_1D12D45FC();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D12D4848(&qword_1EE06A750, sub_1D12D45FC);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A798);
    }
  }
}

void sub_1D12D45FC()
{
  if (!qword_1EE06A748)
  {
    v0 = sub_1D138F6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A748);
    }
  }
}

void sub_1D12D4660()
{
  if (!qword_1EE06A788)
  {
    sub_1D12D44FC();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D12D4848(&qword_1EE06A7A0, sub_1D12D44FC);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A788);
    }
  }
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D12D4788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EE06A630);
    v7 = sub_1D10809F0(&qword_1EE06A628, &qword_1EE06A630);
    v8 = a3(a1, v6, MEMORY[0x1E69E6530], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12D4848(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D12D4890()
{
  if (!qword_1EC60F170)
  {
    sub_1D106F934(255, &qword_1EE06B780);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F170);
    }
  }
}

void sub_1D12D48F8()
{
  if (!qword_1EC60F178)
  {
    sub_1D106F934(255, &qword_1EE06A630);
    sub_1D10809F0(&qword_1EE06A628, &qword_1EE06A630);
    v0 = sub_1D13906FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F178);
    }
  }
}

void sub_1D12D49A0()
{
  if (!qword_1EE06A7B8)
  {
    sub_1D12D2804(255, &qword_1EE06A6A8, MEMORY[0x1E695C060]);
    sub_1D11D4854();
    sub_1D12D4A38();
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A7B8);
    }
  }
}

unint64_t sub_1D12D4A38()
{
  result = qword_1EE06A6B0;
  if (!qword_1EE06A6B0)
  {
    sub_1D12D2804(255, &qword_1EE06A6A8, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06A6B0);
  }

  return result;
}

unint64_t static AccountStatusSummaryTileFeedItemIdentifierFactory.makeComponentForPrefix(type:)()
{
  MEMORY[0x1D3885C10](91, 0xE100000000000000);
  v0 = sub_1D138EDBC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000024;
}

unint64_t static AccountStatusSummaryTileFeedItemIdentifierFactory.makeComponent(accountId:)()
{
  sub_1D13911EC();

  sub_1D138D5EC();
  sub_1D10B81E8();
  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t static AccountStatusSummaryTileFeedItemIdentifierFactory.make(for:type:profile:)(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 identifier];
  sub_1D138D5CC();

  v8 = _s15HealthRecordsUI49AccountStatusSummaryTileFeedItemIdentifierFactoryV4make9accountId4type7profileSS10Foundation4UUIDV_0A14RecordServices08ClinicaldfG4TypeO0A8Platform13SourceProfileOtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t _s15HealthRecordsUI49AccountStatusSummaryTileFeedItemIdentifierFactoryV4make9accountId4type7profileSS10Foundation4UUIDV_0A14RecordServices08ClinicaldfG4TypeO0A8Platform13SourceProfileOtFZ_0()
{
  v0 = sub_1D138D5EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  v5 = sub_1D138D98C();
  v22 = 0xD000000000000024;
  v23 = 0x80000001D13CADA0;
  MEMORY[0x1D3885C10](91, 0xE100000000000000);
  v6 = sub_1D138EDBC();
  MEMORY[0x1D3885C10](v6);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v7 = v22;
  v8 = v23;
  if (v5)
  {
    v22 = 0x656C69666F72505BLL;
    v23 = 0xE90000000000003ALL;
    v21 = v7;
    v5 = v5;
    v9 = [v5 identifier];
    sub_1D138D5CC();

    v10 = sub_1D138D59C();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
    MEMORY[0x1D3885C10](v10, v12);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v7 = v21;
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v14 = 0x80000001D13BBE40;
    v13 = 0xD000000000000013;
  }

  v22 = v13;
  v23 = v14;
  MEMORY[0x1D3885C10](v7, v8);

  v15 = v23;
  *(v4 + 32) = v22;
  *(v4 + 40) = v15;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D13911EC();

  v22 = 0xD00000000000001DLL;
  v23 = 0x80000001D13CADD0;
  sub_1D10B81E8();
  v16 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v16);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v17 = v23;
  *(v4 + 48) = v22;
  *(v4 + 56) = v17;
  v22 = v4;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v18 = sub_1D139008C();

  return v18;
}

BOOL CGRect.isZero.getter(double a1, double a2, double a3, double a4)
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 0.0;
  v5.size.height = 0.0;
  return CGRectEqualToRect(*&a1, v5);
}

uint64_t sub_1D12D5090(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v4 = sub_1D138D5EC();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[31] = v6;
  *v6 = v2;
  v6[1] = sub_1D12D51E4;

  return sub_1D12D5C2C(a1, 5);
}

uint64_t sub_1D12D51E4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 264) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1D12D5614, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 256) = v4;
    *v4 = v3;
    v4[1] = sub_1D12D5364;

    return sub_1D131A2B0(5);
  }
}

uint64_t sub_1D12D5364()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 264) = v0;
    v3 = sub_1D12D5614;
  }

  else
  {
    v3 = sub_1D12D5484;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D12D5484()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(*(v0 + 192) + 24);
  v5 = [*(v0 + 184) identifier];
  sub_1D138D5CC();

  v6 = sub_1D138D5AC();
  *(v0 + 272) = v6;
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1D12D59FC;
  v7 = swift_continuation_init();
  sub_1D12D60DC(0, &unk_1EC60F180);
  *(v0 + 136) = v8;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D131A1F0;
  *(v0 + 104) = &block_descriptor_61;
  *(v0 + 112) = v7;
  [v4 deleteAccountWithIdentifier:v6 deletionReason:3 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D12D5614()
{
  v41 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  sub_1D138F06C();
  v3 = v2;
  v4 = v1;
  v5 = sub_1D138F0AC();
  v6 = sub_1D13907FC();

  if (os_log_type_enabled(v5, v6))
  {
    v36 = *(v0 + 264);
    v37 = *(v0 + 232);
    v7 = *(v0 + 216);
    v38 = *(v0 + 224);
    v39 = *(v0 + 240);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315394;
    v13 = [v10 identifier];
    sub_1D138D5CC();

    sub_1D10B81E8();
    v14 = sub_1D13915CC();
    v16 = v15;
    (*(v8 + 8))(v7, v9);
    v17 = sub_1D11DF718(v14, v16, &v40);

    *(v0 + 176) = v36;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = v36;
    sub_1D10922EC();
    sub_1D13916AC();
    v19 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v20 = sub_1D13901EC();
    v22 = sub_1D11DF718(v20, v21, &v40);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_1D101F000, v5, v6, "Failed to stop oslo sharing with account: %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);

    v23 = &selRef_deselectRowAtIndexPath_animated_;
    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v23 = &selRef_deselectRowAtIndexPath_animated_;
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);

    (*(v25 + 8))(v24, v26);
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 200);
  v30 = *(*(v0 + 192) + 24);
  v31 = [*(v0 + 184) v23[171]];
  sub_1D138D5CC();

  v32 = sub_1D138D5AC();
  *(v0 + 272) = v32;
  (*(v28 + 8))(v27, v29);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1D12D59FC;
  v33 = swift_continuation_init();
  sub_1D12D60DC(0, &unk_1EC60F180);
  *(v0 + 136) = v34;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D131A1F0;
  *(v0 + 104) = &block_descriptor_61;
  *(v0 + 112) = v33;
  [v30 deleteAccountWithIdentifier:v32 deletionReason:3 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D12D59FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1D12D5B98;
  }

  else
  {
    v2 = sub_1D12D5B0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D12D5B0C()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D12D5B98()
{
  v1 = *(v0 + 272);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1D12D5C2C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D138D5EC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D12D5CF0, 0, 0);
}

uint64_t sub_1D12D5CF0()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(*(v0 + 160) + 24);
  v6 = [*(v0 + 144) identifier];
  sub_1D138D5CC();

  v7 = sub_1D138D5AC();
  *(v0 + 192) = v7;
  (*(v2 + 8))(v1, v3);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v0 + 200) = v8;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D12D5EB8;
  v9 = swift_continuation_init();
  sub_1D12D60DC(0, &qword_1EC60ED20);
  *(v0 + 136) = v10;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D131A144;
  *(v0 + 104) = &block_descriptor_6_2;
  *(v0 + 112) = v9;
  [v5 updateClinicalSharingStatusForAccountWithIdentifier:v7 firstSharedDate:0 lastSharedDate:0 userStatus:v8 multiDeviceStatus:0 primaryDeviceName:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D12D5EB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D12D603C;
  }

  else
  {
    v2 = sub_1D12D5FC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D12D5FC8()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D12D603C()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_1D12D60DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D10922EC();
    v3 = sub_1D139061C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D12D615C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D12D61E4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1D138F7CC();
}

uint64_t sub_1D12D6268()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();
}

uint64_t sub_1D12D62E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D138F7CC();
}

void (*sub_1D12D635C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D138F7AC();
  return sub_1D123C308;
}

uint64_t sub_1D12D6400()
{
  swift_beginAccess();
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  return swift_endAccess();
}

uint64_t sub_1D12D6488(uint64_t a1)
{
  sub_1D12D6858(0, &qword_1EE06A6C8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  sub_1D138F79C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1D12D662C()
{
  swift_beginAccess();
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  sub_1D138F78C();
  return swift_endAccess();
}

void sub_1D12D66B0()
{
  if (!qword_1EE06B600)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B600);
    }
  }
}

uint64_t sub_1D12D6700(uint64_t a1)
{
  sub_1D12D6858(0, &qword_1EE06A6C8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  sub_1D138F79C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_1D12D6858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D12D66B0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void (*sub_1D12D68B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1D12D6858(0, &qword_1EE06A6C8, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener__latestChange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1D138F78C();
  swift_endAccess();
  return sub_1D123C9B8;
}

id HealthRecordsSupportedStateChangeListener.__allocating_init(handler:)(uint64_t a1, uint64_t a2)
{
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = objc_allocWithZone(v2);
  v11 = OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener__latestChange;
  v15 = 0;
  v16 = 0;
  sub_1D12D66B0();
  sub_1D138F77C();
  (*(v7 + 32))(&v10[v11], v9, v6);
  v12 = &v10[OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener_handler];
  *v12 = a1;
  *(v12 + 1) = a2;
  v14.receiver = v10;
  v14.super_class = v2;
  return objc_msgSendSuper2(&v14, sel_init);
}

id HealthRecordsSupportedStateChangeListener.init(handler:)(uint64_t a1, uint64_t a2)
{
  sub_1D12D6858(0, &unk_1EE06B598, MEMORY[0x1E695C070]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener__latestChange;
  v15 = 0;
  v16 = 0;
  sub_1D12D66B0();
  sub_1D138F77C();
  (*(v7 + 32))(&v2[v10], v9, v6);
  v11 = &v2[OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener_handler];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = type metadata accessor for HealthRecordsSupportedStateChangeListener();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for HealthRecordsSupportedStateChangeListener()
{
  result = qword_1EE06B5E0;
  if (!qword_1EE06B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12D6D20(void *a1, char a2)
{
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F07C();
  v9 = v2;
  v10 = a1;
  v11 = sub_1D138F0AC();
  v12 = sub_1D139081C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v13 = 136446722;
    ObjectType = swift_getObjectType();
    sub_1D12D7220();
    v14 = sub_1D139020C();
    v16 = sub_1D11DF718(v14, v15, &v35);
    v31 = v5;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    ObjectType = v10;
    sub_1D12D7268();
    v18 = v10;
    v19 = sub_1D139020C();
    v21 = sub_1D11DF718(v19, v20, &v35);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2082;
    ObjectType = 0;
    v34 = 0xE000000000000000;
    if (a2)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (a2)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    MEMORY[0x1D3885C10](v22, v23);

    v24 = sub_1D11DF718(ObjectType, v34, &v35);

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D101F000, v11, v12, "%{public}s: healthRecordsSupportedDidChange (store: %{public}s, to: %{public}s)", v13, 0x20u);
    v25 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v25, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    (*(v6 + 8))(v8, v31);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v26 = *&v9[OBJC_IVAR____TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener_handler];
  ObjectType = v10;
  LOBYTE(v34) = a2 & 1;
  v27 = v10;
  v26(&ObjectType);
  swift_getKeyPath();
  swift_getKeyPath();
  ObjectType = v27;
  LOBYTE(v34) = a2 & 1;
  v28 = v9;
  return sub_1D138F7CC();
}

id HealthRecordsSupportedStateChangeListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthRecordsSupportedStateChangeListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsSupportedStateChangeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D12D7220()
{
  result = qword_1EC60F198;
  if (!qword_1EC60F198)
  {
    type metadata accessor for HealthRecordsSupportedStateChangeListener();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60F198);
  }

  return result;
}

unint64_t sub_1D12D7268()
{
  result = qword_1EC60F1A0;
  if (!qword_1EC60F1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60F1A0);
  }

  return result;
}

uint64_t sub_1D12D72B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D12D72FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D12D7354()
{
  sub_1D12D6858(319, &unk_1EE06B598, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D12D75A8()
{
  sub_1D12D9D08(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for UserDomainConceptViewData();
  sub_1D106A1D8(v0 + *(v14 + 36), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D12D9E34(v3, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v15 = 0;
  }

  else
  {
    (*(v5 + 32))(v13, v3, v4);
    sub_1D138D56C();
    sub_1D138D4BC();
    v16 = *(v5 + 8);
    v16(v10, v4);
    v15 = sub_1D138D50C();
    v16(v7, v4);
    v16(v13, v4);
  }

  return v15 & 1;
}

uint64_t sub_1D12D77FC()
{
  v1 = v0;
  sub_1D12D9D08(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v24 - v17;
  v19 = [v1 meaningfulDate];
  if (v19)
  {
    v20 = v19;
    sub_1D138D52C();

    (*(v9 + 56))(v4, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v4, 1, 1, v8);
  }

  sub_1D112A184(v4, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D12D9E34(v7, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v21 = 0;
  }

  else
  {
    (*(v9 + 32))(v18, v7, v8);
    sub_1D138D56C();
    sub_1D138D4BC();
    v22 = *(v9 + 8);
    v22(v14, v8);
    v21 = sub_1D138D50C();
    v22(v11, v8);
    v22(v18, v8);
  }

  return v21 & 1;
}

uint64_t sub_1D12D7AD0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];

  v8 = [v7 UUID];
  sub_1D138D5CC();

  v9 = sub_1D138D59C();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v13[0] = v6;
  v13[1] = v5;

  MEMORY[0x1D3885C10](v9, v11);

  return v13[0];
}

uint64_t sub_1D12D7C14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D12D7CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void *sub_1D12D7D08(void *a1, uint64_t a2, void *a3)
{
  sub_1D11DC3BC();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D9AFC();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D9C38();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12D9D08(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  sub_1D120F4D8();
  v53 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E7CD0];
  v3[9] = 0;
  v3[10] = v20;
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  type metadata accessor for UserDomainConceptDataProvider();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC8];
  v21[2] = MEMORY[0x1E69E7CC8];
  v21[3] = v22;
  v21[4] = a3;
  v3[8] = v21;
  v59 = a3;
  v54 = a1;

  v23 = ConceptsDataSource.init(arrangedSections:isHidden:)(MEMORY[0x1E69E7CC0], 0);
  v24 = v23;
  v25 = v23[9];
  if (v25)
  {
    v26 = v23[5];

    v27 = v25;
    if ([v26 isLowUtility])
    {

      v28 = 1;
    }

    else
    {
      v28 = sub_1D12D77FC();
    }
  }

  else
  {

    v28 = 1;
  }

  sub_1D1287820(v28 & 1);
  v66 = sub_1D138EF1C();
  sub_1D106F934(0, &qword_1EE06B760);
  v29 = sub_1D1390A7C();
  v67 = v29;
  v51 = sub_1D1390A2C();
  v30 = *(v51 - 8);
  v50 = *(v30 + 56);
  v52 = v30 + 56;
  v50(v15, 1, 1, v51);
  sub_1D12D9D6C();
  v55 = a2;
  v47 = MEMORY[0x1E695BED8];
  sub_1D12D9DEC(&qword_1EC60D790, 255, sub_1D12D9D6C);
  v49 = sub_1D10EDC58();
  sub_1D138F8BC();
  v48 = MEMORY[0x1E69E8050];
  sub_1D12D9E34(v15, &qword_1EE06A620, MEMORY[0x1E69E8050]);

  swift_allocObject();
  swift_weakInit();
  sub_1D12D9DEC(&qword_1EC60D7A8, 255, sub_1D120F4D8);

  v31 = v53;
  sub_1D138F90C();

  (*(v17 + 8))(v19, v31);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();

  v32 = v24[8];
  v33 = swift_allocObject();
  v34 = v54;
  v33[2] = v54;
  v33[3] = 0;
  v33[4] = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1D11DC550;
  *(v35 + 24) = v33;
  v36 = MEMORY[0x1E695C028];
  sub_1D12D9BB0(0, &qword_1EC60CFE8, MEMORY[0x1E695C028]);
  sub_1D12D9AB8(&qword_1EC60CFF8, &qword_1EC60CFE8, v36);
  swift_retain_n();
  v54 = v34;
  v37 = v56;
  sub_1D138F75C();
  sub_1D12D9DEC(&qword_1EC60D000, 255, sub_1D11DC3BC);
  v38 = v58;
  v39 = sub_1D138F80C();

  (*(v57 + 8))(v37, v38);
  v66 = v39;
  v67 = 0;
  v40 = MEMORY[0x1E695BED0];
  sub_1D12D9BB0(0, &qword_1EC60F238, MEMORY[0x1E695BED0]);
  sub_1D12D9AB8(&qword_1EC60F240, &qword_1EC60F238, v40);
  v41 = v60;
  sub_1D138F82C();

  v42 = sub_1D1390A7C();
  v66 = v42;
  v50(v15, 1, 1, v51);
  sub_1D12D9DEC(&qword_1EC60F250, 255, sub_1D12D9AFC);
  v44 = v62;
  v43 = v63;
  sub_1D138F8BC();
  sub_1D12D9E34(v15, &qword_1EE06A620, v48);

  (*(v61 + 8))(v41, v44);
  swift_allocObject();
  swift_weakInit();

  sub_1D12D9DEC(&unk_1EC60F258, 255, sub_1D12D9C38);
  v45 = v65;
  sub_1D138F90C();

  (*(v64 + 8))(v43, v45);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();

  return v24;
}

uint64_t sub_1D12D8638()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D138E0FC();

    sub_1D12D9D08(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
    sub_1D138E52C();
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    v2 = sub_1D138EEFC();
    sub_1D12D8954(*(v1 + 40), v2 & 1, v8);
    sub_1D12D99D8(0, &qword_1EC60B640, &qword_1EC60F6A0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E700;
    v4 = v9;
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    *(v3 + 56) = v4;
    *(v3 + 64) = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    sub_1D138E50C();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    sub_1D138E58C();
  }

  return result;
}

uint64_t sub_1D12D8878(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = *(result + 72);
      *(result + 72) = v1;
      v5 = v1;
    }

    v6 = *(v3 + 72);
    if (v6)
    {
      v7 = *(v3 + 40);

      v8 = v6;
      if ([v7 isLowUtility])
      {

        v9 = 1;
      }

      else
      {
        v9 = sub_1D12D77FC();
      }
    }

    else
    {

      v9 = 1;
    }

    sub_1D1287820(v9 & 1);
  }

  return result;
}

uint64_t sub_1D12D8954@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = type metadata accessor for PinnedConceptItem();
  v8 = swift_allocObject();
  type metadata accessor for PinnedConceptCell();
  sub_1D12D9DEC(&qword_1EC60F220, 255, type metadata accessor for PinnedConceptCell);

  *(v8 + 16) = sub_1D138DECC();
  *(v8 + 24) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = sub_1D12D9A30;
  *(v8 + 56) = v6;
  v10 = a1;

  a3[3] = v7;
  result = sub_1D12D9DEC(&qword_1EC60F228, v11, type metadata accessor for PinnedConceptItem);
  a3[4] = result;
  *a3 = v8;
  return result;
}

uint64_t sub_1D12D8A98()
{
  v0 = sub_1D138EF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v4 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_1D138EECC();
  if (v9 >> 62)
  {
    v24 = sub_1D13910DC();

    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v10)
  {
LABEL_4:
    v11 = *(v8 + 56);
    type metadata accessor for OnboardingTileAppearanceManager();
    inited = swift_initStackObject();
    *(inited + 16) = v11;
    v13 = objc_allocWithZone(MEMORY[0x1E696C210]);
    v14 = v11;
    v15 = sub_1D139012C();
    v16 = [v13 initWithCategory:0 domainName:v15 healthStore:v14];

    *(inited + 24) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1D1096F38(1, v6);
    swift_setDeallocating();

    v17 = *(inited + 24);

    sub_1D1165518(v6);
  }

LABEL_5:
  ListConceptManager.togglePinState(for:onCommitHandler:)(*(v8 + 40), 0, 0, v3);
  (*(v1 + 8))(v3, v0);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE06AEB8;
  if (sub_1D138EEFC())
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = xmmword_1D13AEEB0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
    v21 = *(v18 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D10DD038;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1D10DD048;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1226920;
    aBlock[3] = &block_descriptor_62;
    v23 = _Block_copy(aBlock);

    [v21 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
    _Block_release(v23);
  }
}

uint64_t sub_1D12D8EC8()
{
}

id *sub_1D12D8F18()
{

  return v0;
}

uint64_t sub_1D12D8F70()
{
  sub_1D12D8F18();

  return swift_deallocClassInstance();
}

uint64_t sub_1D12D8FC8()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1D138E60C();
  sub_1D138E5FC();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = sub_1D138E6AC();
  v7(v6, v0);
  return v8;
}

uint64_t sub_1D12D9140()
{
  type metadata accessor for PinnedConceptCell();
  sub_1D12D9DEC(&qword_1EC60F220, 255, type metadata accessor for PinnedConceptCell);
  sub_1D13908AC();
  sub_1D138EA0C();
  return sub_1D13908BC();
}

uint64_t sub_1D12D91CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (sub_1D139016C() == a1 && v11 == a2)
  {

    goto LABEL_13;
  }

  v13 = sub_1D139162C();

  if (v13)
  {
LABEL_13:
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138F37C();
    v18 = sub_1D138DE3C();
    swift_allocObject();
    v19 = sub_1D138DE1C();
    a3[3] = v18;
    result = sub_1D12D9DEC(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_1D139016C() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_1D139162C();

    if ((v16 & 1) == 0)
    {
      a3[3] = sub_1D138DF7C();
      a3[4] = sub_1D12D9DEC(&qword_1EC60C2A0, 255, MEMORY[0x1E69A35B8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_1D138DF6C();
    }
  }

  v20 = sub_1D138EEFC();
  sub_1D12D95E8(v20 & 1);
  v24[0] = 0x74497265746F6F46;
  v24[1] = 0xEB000000005F6D65;
  sub_1D138D5DC();
  v21 = sub_1D138D59C();
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1D3885C10](v21, v23);

  a3[3] = sub_1D138EA2C();
  a3[4] = sub_1D12D9DEC(&qword_1EC60A048, 255, MEMORY[0x1E69A3798]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D138EA1C();
}

uint64_t sub_1D12D95E8(char a1)
{
  sub_1D12D9D08(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (a1)
  {
    v5 = sub_1D138D67C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1D12D99D8(0, &qword_1EE06B080, &qword_1EE06B070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139E700;
    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 preferredLocalizations];

    v9 = MEMORY[0x1E69E6158];
    v10 = sub_1D139045C();

    v11 = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v10);

    *(v6 + 56) = v9;
    *(v6 + 64) = sub_1D1089930();
    *(v6 + 32) = v11;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v12 = sub_1D138D1CC();
    if (*(v6 + 16))
    {
      v13 = sub_1D139019C();

      sub_1D12D9E34(v4, &qword_1EC60DF40, MEMORY[0x1E6969770]);
    }

    else
    {
      v13 = v12;
      sub_1D12D9E34(v4, &qword_1EC60DF40, MEMORY[0x1E6969770]);
    }

    return v13;
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    return sub_1D138D1CC();
  }
}

void sub_1D12D99D8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D1080EA4(255, a3);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D12D9A50()
{
  if (!qword_1EC60CFF0)
  {
    sub_1D106F934(255, &qword_1EC60B0A8);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60CFF0);
    }
  }
}

uint64_t sub_1D12D9AB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D12D9BB0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D12D9AFC()
{
  if (!qword_1EC60F230)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D12D9BB0(255, &qword_1EC60F238, MEMORY[0x1E695BED0]);
    sub_1D12D9AB8(&qword_1EC60F240, &qword_1EC60F238, v0);
    v1 = sub_1D138F52C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60F230);
    }
  }
}

void sub_1D12D9BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D12D9A50();
    v7 = v6;
    v8 = sub_1D1080EA4(255, &qword_1EE06B690);
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D12D9C38()
{
  if (!qword_1EC60F248)
  {
    sub_1D12D9AFC();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D12D9DEC(&qword_1EC60F250, 255, sub_1D12D9AFC);
    sub_1D10EDC58();
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F248);
    }
  }
}

void sub_1D12D9D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D12D9D6C()
{
  if (!qword_1EC60D788)
  {
    sub_1D138EF8C();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D788);
    }
  }
}

uint64_t sub_1D12D9DEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D12D9E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D12D9D08(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1D12D9EA4()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.78 green:0.78 blue:0.8 alpha:0.5];
  qword_1EC62FCE0 = result;
  return result;
}

uint64_t sub_1D12D9EF0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D12DCBF8(v6);
  return sub_1D13912BC();
}

id sub_1D12DA064()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController____lazy_storage___gmtDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController____lazy_storage___gmtDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController____lazy_storage___gmtDateFormatter);
  }

  else
  {
    v4 = sub_1D12DA0C4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12DA0C4()
{
  sub_1D12DDC44(0, &qword_1EC60F290, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];
  sub_1D138D7AC();
  v4 = sub_1D138D7CC();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v6 = sub_1D138D7BC();
    (*(v5 + 8))(v2, v4);
  }

  [v3 setTimeZone_];

  return v3;
}

uint64_t sub_1D12DA24C(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton] = 0;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController____lazy_storage___gmtDateFormatter;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController____lazy_storage___gmtDateFormatter] = 0;
  type metadata accessor for SignedClinicalDataImportHandler();
  v10 = swift_allocObject();

  v11 = a1;
  v12 = v10;
  v13 = sub_1D1230080(v11, a2);
  if (v4)
  {

    type metadata accessor for SignedClinicalDataPreviewViewController();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_handler] = v13;

    sub_1D122F630();

    v14 = sub_1D139012C();

    sub_1D122F790();

    v15 = sub_1D139012C();

    v16 = sub_1D122F8F0();

    v18.receiver = v5;
    v18.super_class = type metadata accessor for SignedClinicalDataPreviewViewController();
    v12 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v14, v15, v16, 1);
  }

  return v12;
}

void sub_1D12DA3FC()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for SignedClinicalDataPreviewViewController();
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 setAllowsSelection_];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 systemBackgroundColor];
  [v6 setBackgroundColor_];

  v9 = [v1 tableView];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  [v9 setSeparatorStyle_];

  v11 = [v1 tableView];
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  [v11 setDataSource_];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  [v13 setDelegate_];

  v15 = [v1 tableView];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  type metadata accessor for SignedClinicalDataPreviewTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [ObjCClassFromMetadata defaultReuseIdentifier];
  if (!v18)
  {
    sub_1D139016C();
    v18 = sub_1D139012C();
  }

  [v16 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v18];

  v19 = [v1 headerView];
  [v19 setAllowFullWidthIcon_];

  v20 = [v1 headerView];
  LODWORD(v21) = 1036831949;
  [v20 setTitleHyphenationFactor_];

  v22 = [v1 headerView];
  v23 = sub_1D139044C();
  v24 = HKUIJoinStringsForAutomationIdentifier();

  [v22 setAccessibilityIdentifier_];
  v25 = [v1 navigationController];
  [v25 setNavigationBarHidden_];

  v26 = [v1 navigationController];
  if (v26)
  {
    v27 = v26;
    [v26 setModalInPresentation_];
  }

  v28 = &selRef_hasSectionLocalizedContent;
  if (*(*&v1[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_handler] + 16))
  {
    v29 = [objc_opt_self() accessoryButton];
    v30 = [v7 systemBlueColor];
    [v29 setTintColor_];

    if (qword_1EC608CB0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v31 = sub_1D139012C();

    [v29 &selRef:v31 setDismissHandler:{0, 0xE000000000000000}];

    v28 = &selRef_hasSectionLocalizedContent;
    [v29 addTarget:v1 action:sel_learnMoreButtonTapped_ forControlEvents:64];
    v32 = [v1 headerView];
    [v32 addAccessoryButton_];
  }

  v33 = [objc_opt_self() boldButton];
  v34 = [v7 systemBlueColor];
  [v33 setTintColor_];

  sub_1D122FF08();
  v35 = sub_1D139012C();

  [v33 setTitle:v35 forState:0];

  [v33 v28[301]];
  v36 = sub_1D139044C();
  v37 = HKUIJoinStringsForAutomationIdentifier();

  [v33 setAccessibilityIdentifier_];
  v38 = [v1 buttonTray];
  [v38 addButton_];

  v39 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton] = v33;
  v40 = v33;

  v41 = [objc_opt_self() linkButton];
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v42 = sub_1D139012C();

  [v41 &selRef:v42 setDismissHandler:{0, 0xE000000000000000}];

  [v41 v28 + 2680];
  v43 = sub_1D139044C();
  v44 = HKUIJoinStringsForAutomationIdentifier();

  [v41 setAccessibilityIdentifier_];
  v45 = [v1 buttonTray];
  [v45 addButton_];

  v46 = [v1 tableView];
  if (v46)
  {
    v47 = v46;
    [v46 reloadData];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1D12DABFC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SignedClinicalDataPreviewViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden_];
  }

  if ([v1 isMovingToParentViewController])
  {
    v5 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_handler];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (*(v5 + 32))
    {
      v7 = swift_allocObject();
      swift_weakInit();

      sub_1D11BC52C(v8, v7, sub_1D12DDCA8, v6);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
    }
  }
}

void sub_1D12DAD68(char a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v11 = Strong;
      sub_1D106F934(0, &qword_1EE06B760);
      v16 = sub_1D1390A7C();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      aBlock[4] = sub_1D10899A4;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_34_2;
      v13 = _Block_copy(aBlock);
      v14 = v11;

      sub_1D138FEEC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D10899AC();
      sub_1D12DDC44(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D1080CD4();
      sub_1D139103C();
      v15 = v16;
      MEMORY[0x1D3886400](0, v9, v5, v13);
      _Block_release(v13);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1D12DB0B0(unint64_t a1, void *a2)
{
  v4 = sub_1D138FECC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138FF0C();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v11 = sub_1D1390A7C();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1D12DDC24;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_63;
  v13 = _Block_copy(aBlock);
  sub_1D12322CC(a1);
  v14 = a2;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10899AC();
  sub_1D12DDC44(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_1D12DB374(unint64_t a1, uint64_t a2)
{
  if (a1 >> 61 == 3)
  {
    v4 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
    sub_1D12DB84C((a1 & 0x1FFFFFFFFFFFFFFFLL));
    v5 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton);
    if (v5)
    {
      [v5 hidesBusyIndicator];

      sub_1D1232304(a1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D12DB660(a1);
  }
}

void sub_1D12DB4BC()
{
  v1 = v0;
  v2 = sub_1D138FF3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v5 = sub_1D1390A7C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1D138FF5C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [v1 presentingViewController];
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D12DB660(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D138FF5C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {

    v9 = sub_1D1331ED4();

    if (v9)
    {
      v10 = v9;
      v11 = sub_1D1390C0C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    objc_allocWithZone(type metadata accessor for SignedClinicalDataRecordAddedViewController());
    sub_1D12322CC(a1);
    v14 = sub_1D126C1E0(a1, v11, v13);
    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:v14 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D12DB84C(void *a1)
{
  v2 = v1;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D138FF5C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1EC608CD0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_1D138D1CC();
  sub_1D138D1CC();
  v9 = sub_1D139012C();

  v10 = sub_1D139012C();

  if (a1)
  {
    a1 = sub_1D138D2AC();
  }

  v11 = [objc_opt_self() basicAlertControllerWithTitle:v9 message:v10 internalError:a1];

  [v2 presentViewController:v11 animated:1 completion:0];
}

void sub_1D12DBAE8()
{
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v0 = objc_allocWithZone(MEMORY[0x1E69B7D68]);
  v1 = sub_1D139012C();

  v2 = [v0 initWithTitle_];

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  [v2 addSectionWithHeader:0 content:{v3, 0xE000000000000000}];

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  [v2 addSectionWithHeader:0 content:{v4, 0xE000000000000000}];

  sub_1D138D1CC();
  v5 = sub_1D139012C();

  [v2 addSectionWithHeader:0 content:{v5, 0xE000000000000000}];

  sub_1D138D1CC();
  v6 = sub_1D139012C();

  [v2 addSectionWithHeader:0 content:{v6, 0xE000000000000000}];

  swift_arrayDestroy();
  v7 = v2;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v10 action:sel_dismissAnimated_];
  [v8 setRightBarButtonItem_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69B7D40]) initWithRootViewController_];
  [v10 showViewController:v11 sender:v10];
}

id sub_1D12DBF9C(void *a1)
{
  v3 = v1;
  v63 = sub_1D138D57C();
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignedClinicalDataPreviewTableViewCell();
  v7 = [swift_getObjCClassFromMetadata() defaultReuseIdentifier];
  if (!v7)
  {
    sub_1D139016C();
    v7 = sub_1D139012C();
  }

  v8 = sub_1D138D7DC();
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

  v10 = swift_dynamicCastClassUnconditional();
  v11 = *(*(v1 + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_handler) + 24);

  v12 = sub_1D138D81C();
  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v11 + 8 * v12 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_37:
    v65 = sub_1D13910DC();
    goto LABEL_12;
  }

LABEL_34:
  v13 = MEMORY[0x1D3886B70]();
LABEL_7:
  v14 = v13;

  sub_1D12779E0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v55[1] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139EAB0;
  *(v16 + 32) = 0x74726F706D49;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 48) = 0x4377656976657250;
  *(v16 + 56) = 0xEB000000006C6C65;
  v17 = v9;
  v66 = sub_1D138D7FC();
  sub_1D1082D14();
  *(v16 + 64) = sub_1D139100C();
  *(v16 + 72) = v18;
  v19 = sub_1D139044C();

  v20 = HKUIJoinStringsForAutomationIdentifier();

  [v10 setBaseAccessibilityIdentifier_];
  v21 = [v14 recordTypeDisplayName];
  if (!v21)
  {
    sub_1D139016C();
    v21 = sub_1D139012C();
  }

  [v10 setPrimaryText_];

  v22 = [v14 items];
  sub_1D106F934(0, &qword_1EC60B010);
  sub_1D139045C();

  v66 = sub_1D11132FC(v23);
  sub_1D12D9EF0(&v66);

  v2 = v66;
  v66 = MEMORY[0x1E69E7CC0];
  v57 = v14;
  v58 = v10;
  v56 = v17;
  v55[0] = 0;
  if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v65 = *(v2 + 16);
LABEL_12:
  v9 = 0;
  v64 = v2 & 0xC000000000000001;
  v59 = MEMORY[0x1E69E7CC0];
  v60 = (v5 + 8);
  v61 = v3;
  while (v65 != v9)
  {
    if (v64)
    {
      v29 = MEMORY[0x1D3886B70](v9, v2);
    }

    else
    {
      if (v9 >= *(v2 + 16))
      {
        goto LABEL_33;
      }

      v29 = *(v2 + 8 * v9 + 32);
    }

    v30 = v29;
    v10 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v5 = v2;
    v31 = [v29 primaryConcept];
    sub_1D10F5DE4();
    v33 = v32;

    v34 = sub_1D12DA064();
    v35 = [v30 relevantDate];
    v36 = v62;
    sub_1D138D52C();

    v37 = sub_1D138D4EC();
    (*v60)(v36, v63);
    v38 = [v34 stringFromDate_];

    sub_1D139016C();
    if (v33)
    {
      v24 = sub_1D139012C();
    }

    else
    {
      v24 = 0;
    }

    v2 = v5;
    v25 = objc_allocWithZone(MEMORY[0x1E69A4438]);
    v26 = sub_1D139012C();

    v27 = [v25 initWithPrimaryText:v24 secondaryText:v26];

    ++v9;
    v3 = v61;
    if (v27)
    {
      MEMORY[0x1D3885D90](v28);
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v59 = v66;
      v9 = v10;
    }
  }

  sub_1D106F934(0, &unk_1EC60F280);
  v39 = sub_1D139044C();

  v40 = v58;
  [v58 setDetailItems_];

  v41 = v57;
  v42 = sub_1D1331F9C();
  [v40 setSecondaryAttributedText_];

  v43 = [v41 subject];
  v44 = [v43 fullName];

  if (!v44)
  {
    sub_1D139016C();
    v44 = sub_1D139012C();
  }

  [v40 setPatientName_];

  v45 = [v41 subject];
  v46 = [v45 birthDate];

  v47 = v56;
  if (v46)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D139E700;
    v49 = [v46 displayString];
    v50 = sub_1D139016C();
    v52 = v51;

    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    v53 = sub_1D139044C();

    [v40 setPatientDetails_];
  }

  else
  {
    v53 = v41;
    v41 = v56;
  }

  return v40;
}

id sub_1D12DCB40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D12DCBF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D106F934(0, &qword_1EC60B010);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D12DCF28(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D12DCD0C(0, v2, 1, a1);
  }
}

void sub_1D12DCD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v20 relevantDate];
      sub_1D138D52C();

      v22 = [v19 relevantDate];
      v23 = v34;
      sub_1D138D52C();

      LOBYTE(v22) = sub_1D138D50C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D12DCF28(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1D1245848(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1D12DD78C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D1245848(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1D12457BC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v22 relevantDate];
      v24 = v123;
      sub_1D138D52C();

      v25 = [v21 relevantDate];
      v26 = v124;
      sub_1D138D52C();

      LODWORD(v121) = sub_1D138D50C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v32 relevantDate];
        v34 = v123;
        sub_1D138D52C();

        v35 = [v31 relevantDate];
        v36 = v124;
        sub_1D138D52C();

        LODWORD(v35) = sub_1D138D50C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1D10F7610(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1D10F7610((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1D12DD78C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1D12457BC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v51 relevantDate];
    v53 = v123;
    sub_1D138D52C();

    v54 = [v5 relevantDate];
    v55 = v124;
    sub_1D138D52C();

    LOBYTE(v54) = sub_1D138D50C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1D12DD78C(id *a1, id *a2, id *a3, void **a4)
{
  v55 = sub_1D138D57C();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v56 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v57 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v56)
    {
      v49 = (v8 + 8);
LABEL_27:
      v48 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v57;
      v50 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v51 = v38;
        v52 = v37;
        v39 = [v52 relevantDate];
        v40 = v53;
        sub_1D138D52C();

        v41 = [v38 relevantDate];
        v42 = v54;
        sub_1D138D52C();

        LOBYTE(v41) = sub_1D138D50C();
        v43 = *v49;
        v44 = v42;
        v45 = v55;
        (*v49)(v44, v55);
        v43(v40, v45);

        if (v41)
        {
          a4 = v33;
          a3 = v34;
          v46 = v50;
          if (v35 != v48)
          {
            *v34 = *v50;
          }

          if (v57 <= v33 || (a1 = v46, v46 <= v56))
          {
            a1 = v46;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v57)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v57 = v32;
        v30 = v50;
      }

      while (v32 > v33);
      v57 = v32;
      a1 = v48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v57 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v52 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v19 relevantDate];
        v21 = v53;
        sub_1D138D52C();

        v22 = [v18 relevantDate];
        v23 = v54;
        sub_1D138D52C();

        LOBYTE(v22) = sub_1D138D50C();
        v24 = *v16;
        v25 = v23;
        v26 = v55;
        (*v16)(v25, v55);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v56;
        v29 = v56 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v57 || a2 >= v52)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v56;
      v29 = v56 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v57 - a4 + (v57 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v57 - a4));
  }

  return 1;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D12DDC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12DDCC0(uint64_t a1)
{
  v2 = type metadata accessor for BrowseCategory();
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D12DEFA0(&qword_1EE06BBE8, type metadata accessor for BrowseCategory);
  result = MEMORY[0x1D3886030](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D12DF5D4(v8, type metadata accessor for BrowseCategory))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D12DF56C(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for BrowseCategory);
    sub_1D10F36E4(v10, v5);
    sub_1D10E573C(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Date.medicalDateAdjustedToCurrentCalendar()@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_1D12DE3DC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v33 = &v27 - v2;
  v3 = sub_1D138D18C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D138D76C();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = [objc_opt_self() referenceCalendar];
  sub_1D138D6EC();

  sub_1D12DE3DC(0, &qword_1EC609C80, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v12 = sub_1D138D75C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D13AF0C0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x1E6969A50], v12);
  v18(v17 + v14, *MEMORY[0x1E6969A68], v12);
  v18(v17 + 2 * v14, *MEMORY[0x1E6969A78], v12);
  v18(v17 + 3 * v14, *MEMORY[0x1E6969A48], v12);
  v18(v17 + 4 * v14, *MEMORY[0x1E6969A58], v12);
  v19 = v31;
  v18(v17 + 5 * v14, *MEMORY[0x1E6969A88], v12);
  v18(v17 + 6 * v14, *MEMORY[0x1E6969A98], v12);
  sub_1D12DED60(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D138D6CC();
  v20 = v33;

  sub_1D138D72C();
  sub_1D138D6FC();
  v21 = *(v5 + 8);
  v22 = v7;
  v23 = v32;
  v21(v22, v32);
  v24 = sub_1D138D57C();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v20, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v28 + 8))(v19, v29);
    v21(v10, v23);
    return (*(v25 + 32))(v30, v20, v24);
  }

  return result;
}

void sub_1D12DE3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t static Date.startOfToday.getter()
{
  v0 = sub_1D138D57C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138D76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D72C();
  sub_1D138D53C();
  sub_1D138D6AC();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t static Date.endOfToday.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1D138D75C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12DE3DC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = sub_1D138D76C();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D72C();
  sub_1D138D53C();
  v27 = v14;
  sub_1D138D6AC();
  v18 = *MEMORY[0x1E6969A48];
  v26 = *(v2 + 104);
  v26(v4, v18, v1);
  v19 = v7;
  sub_1D138D70C();
  v20 = *(v2 + 8);
  v33 = v1;
  v31 = v2 + 8;
  v20(v4, v1);
  v21 = *(v9 + 8);
  v21(v11, v8);
  v22 = *(v9 + 48);
  v30 = v8;
  result = v22(v19, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v33;
    v26(v4, *MEMORY[0x1E6969A98], v33);
    sub_1D138D70C();
    v20(v4, v24);
    v25 = v30;
    v21(v27, v30);
    (*(v28 + 8))(v17, v29);
    return (v21)(v19, v25);
  }

  return result;
}

uint64_t sub_1D12DE968(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D109D220();
  result = MEMORY[0x1D3886030](v2, &type metadata for DisplayCategory, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1D1082914(v13, v10);
      sub_1D10E3E38(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_1D1080D98(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1D12DEA38(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D12DEFA0(&qword_1EC60A970, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
  result = MEMORY[0x1D3886030](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D12DF56C(v12, v6, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      sub_1D10E4184(v8, v6);
      sub_1D12DF5D4(v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D12DEBC4(uint64_t a1)
{
  v2 = sub_1D138ED5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D12DEFA0(&qword_1EC60A930, MEMORY[0x1E69A3910]);
  result = MEMORY[0x1D3886030](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D10E4484(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D12DED60(uint64_t a1)
{
  v2 = sub_1D138D75C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D12DEFA0(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
  result = MEMORY[0x1D3886030](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1D10E4764(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D12DEF2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3886030](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D10E4C7C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D12DEFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D12DF048(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  Description = type metadata accessor for CategoryRecordQueryDescription();
  v5 = sub_1D12DEFA0(qword_1EE06B1E8, type metadata accessor for CategoryRecordQueryDescription);
  result = MEMORY[0x1D3886030](v3, Description, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3886B70](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D10E51CC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1D13910DC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D12DF214(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v11 = sub_1D106F934(0, j);
    v12 = sub_1D109D274(a4, j);
    result = MEMORY[0x1D3886030](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3886B70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_1D13910DC();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D12DF36C(uint64_t a1)
{
  v2 = type metadata accessor for UserDomainConceptViewData();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D12DEFA0(&qword_1EC60A990, type metadata accessor for UserDomainConceptViewData);
  result = MEMORY[0x1D3886030](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D12DF56C(v12, v5, type metadata accessor for UserDomainConceptViewData);
      sub_1D10E5C60(v8, v5);
      sub_1D12DF5D4(v8, type metadata accessor for UserDomainConceptViewData);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D12DF4F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D109F238();
  result = MEMORY[0x1D3886030](v2, &type metadata for DisplayCategory.Kind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D10E5E80(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D12DF56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D12DF5D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D12DF634(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1D138D5EC();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D12DF6F8, 0, 0);
}

uint64_t sub_1D12DF6F8()
{
  v40 = v0;
  if (*(v0 + 128) != 1)
  {

    v1 = sub_1D12E1854(v2, sub_1D12A2F80, sub_1D12A1FAC);

    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  v1 = *(*(v0 + 40) + 104);
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_18;
    }

LABEL_6:
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1D13912DC();
LABEL_8:
      v4 = *(v38 + 64);
      v5 = objc_opt_self();
      v6 = 0;
      v7 = (v4 + 8);
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1D3886B70](v6, v1);
        }

        else
        {
          v8 = *&v1[8 * v6 + 32];
        }

        v9 = v8;
        v10 = *(v38 + 72);
        v11 = *(v38 + 56);
        ++v6;
        v12 = [v8 identifier];
        sub_1D138D5CC();

        v13 = sub_1D138D5AC();
        (*v7)(v10, v11);
        v14 = [v5 predicateForRecordsFromClinicalAccountIdentifier_];

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
      }

      while (v3 != v6);
      goto LABEL_13;
    }

LABEL_22:

    v30 = sub_1D109E7CC(MEMORY[0x1E69E7CC0]);

    v31 = *(v38 + 8);

    return v31(v30);
  }

  if (!(v1 >> 62))
  {
    goto LABEL_6;
  }

LABEL_18:
  if (!sub_1D13910DC())
  {
    goto LABEL_22;
  }

  v29 = sub_1D13910DC();
  if (v29)
  {
    v3 = v29;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    goto LABEL_8;
  }

LABEL_13:

  v15 = *(v38 + 128);
  sub_1D106F934(0, &qword_1EE06B790);
  v16 = sub_1D139044C();

  v17 = objc_opt_self();
  v18 = [v17 orPredicateWithSubpredicates_];
  *(v38 + 80) = v18;

  if (v15)
  {
    v19 = *(*(v38 + 40) + 64);
    v20 = v18;

    v21 = 0;
  }

  else
  {
    v22 = sub_1D12A4380();
    v21 = v22 != 0;
    if (v22)
    {
      v23 = v22;
      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D139E6E0;
      *(v24 + 32) = v18;
      *(v24 + 40) = v23;
      v25 = v18;
      v26 = v23;
      v27 = sub_1D139044C();

      v28 = [v17 andPredicateWithSubpredicates_];
    }

    else
    {
      v28 = v18;
    }

    v33 = *(*(v38 + 40) + 72);
    v34 = *(v33 + 16);
    if (v34)
    {
      v19 = sub_1D129F7B8(*(v33 + 16), 0);
      v37 = sub_1D12A1754(&v39, v19 + 32, v34, v33);
      v20 = v28;

      result = sub_1D102CC30();
      if (v37 != v34)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v28;
      v19 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v38 + 88) = v19;
  *(v38 + 96) = v20;
  type metadata accessor for RecordsActor();
  v35 = swift_allocObject();
  *(v38 + 104) = v35;
  swift_defaultActor_initialize();
  *(v35 + 112) = sub_1D109E7CC(MEMORY[0x1E69E7CC0]);
  v36 = swift_task_alloc();
  *(v38 + 112) = v36;
  *v36 = v38;
  v36[1] = sub_1D12DFC4C;

  return sub_1D12DFEA0(v19, v20, v35, v21);
}

uint64_t sub_1D12DFC4C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D12DFD98, v1, 0);
}

uint64_t sub_1D12DFD98()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 120) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D12DFE20, 0, 0);
}

uint64_t sub_1D12DFE20()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D12DFEA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 384) = a4;
  *(v5 + 288) = a3;
  *(v5 + 296) = v4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  *(v5 + 304) = *v4;
  v6 = sub_1D138F0BC();
  *(v5 + 312) = v6;
  *(v5 + 320) = *(v6 - 8);
  *(v5 + 328) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D12DFF90, 0, 0);
}

uint64_t sub_1D12DFF90()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + 16);
  *(v0 + 336) = v2;
  if (v2)
  {
    *(v0 + 344) = 0;
    *(v0 + 16) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    *(v0 + 80) = *(v1 + 96);
    *(v0 + 48) = v4;
    *(v0 + 64) = v5;
    *(v0 + 32) = v3;
    v7 = *(v1 + 64);
    v6 = *(v1 + 80);
    v8 = *(v1 + 96);
    *(v0 + 104) = *(v1 + 48);
    *(v0 + 152) = v8;
    *(v0 + 136) = v6;
    *(v0 + 120) = v7;
    *(v0 + 88) = *(v1 + 32);
    sub_1D1082914(v0 + 16, v0 + 160);
    v9 = swift_task_alloc();
    *(v0 + 352) = v9;
    *v9 = v0;
    v9[1] = sub_1D12E00C8;
    v10 = *(v0 + 280);

    return sub_1D12E0A60(v0 + 88, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D12E00C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_1D12E073C;
  }

  else
  {
    v4 = sub_1D12E01DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D12E01DC()
{
  v1 = v0;
  v2 = *(v0 + 360);
  if (*(v0 + 384) == 1)
  {
    *(v0 + 264) = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      v3 = sub_1D13910DC();
      v4 = *(v0 + 360);
      if (v3)
      {
LABEL_4:
        v5 = 0;
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
        v7 = v4 + 32;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v5, *(v1 + 360));
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_21;
            }

            v8 = *(v7 + 8 * v5);
          }

          v9 = v8;
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if ([v8 isDateLess])
          {
          }

          else
          {
            sub_1D13912AC();
            sub_1D13912EC();
            sub_1D13912FC();
            sub_1D13912BC();
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          ++v5;
          if (v10 == v3)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v2;
      if (v3)
      {
        goto LABEL_4;
      }
    }

LABEL_14:

    v2 = *(v1 + 264);
  }

  *(v1 + 376) = v2;
  if (!(v2 >> 62))
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_17:
    v11 = *(v1 + 288);
    *(v1 + 385) = *(v1 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1D12E0514, v11, 0);
  }

LABEL_22:
  if (sub_1D13910DC())
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1D1080D98(v1 + 16);

  v12 = *(v1 + 344) + 1;
  if (v12 == *(v1 + 336))
  {

    v13 = *(v1 + 8);

    return v13();
  }

  else
  {
    *(v1 + 344) = v12;
    v14 = *(v1 + 272) + 72 * v12;
    *(v1 + 16) = *(v14 + 32);
    v16 = *(v14 + 64);
    v15 = *(v14 + 80);
    v17 = *(v14 + 48);
    *(v1 + 80) = *(v14 + 96);
    *(v1 + 48) = v16;
    *(v1 + 64) = v15;
    *(v1 + 32) = v17;
    v19 = *(v14 + 64);
    v18 = *(v14 + 80);
    v20 = *(v14 + 48);
    *(v1 + 152) = *(v14 + 96);
    *(v1 + 104) = v20;
    *(v1 + 136) = v18;
    *(v1 + 120) = v19;
    *(v1 + 88) = *(v14 + 32);
    sub_1D1082914(v1 + 16, v1 + 160);
    v21 = swift_task_alloc();
    *(v1 + 352) = v21;
    *v21 = v1;
    v21[1] = sub_1D12E00C8;
    v22 = *(v1 + 280);

    return sub_1D12E0A60(v1 + 88, v22);
  }
}

uint64_t sub_1D12E0514()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 288);
  v3 = *(v0 + 385);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_1D11DB188(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v6;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D12E05F0, 0, 0);
}

uint64_t sub_1D12E05F0()
{
  sub_1D1080D98(v0 + 16);
  v1 = *(v0 + 344) + 1;
  if (v1 == *(v0 + 336))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 344) = v1;
    v4 = *(v0 + 272) + 72 * v1;
    *(v0 + 16) = *(v4 + 32);
    v6 = *(v4 + 64);
    v5 = *(v4 + 80);
    v7 = *(v4 + 48);
    *(v0 + 80) = *(v4 + 96);
    *(v0 + 48) = v6;
    *(v0 + 64) = v5;
    *(v0 + 32) = v7;
    v9 = *(v4 + 64);
    v8 = *(v4 + 80);
    v10 = *(v4 + 48);
    *(v0 + 152) = *(v4 + 96);
    *(v0 + 104) = v10;
    *(v0 + 136) = v8;
    *(v0 + 120) = v9;
    *(v0 + 88) = *(v4 + 32);
    sub_1D1082914(v0 + 16, v0 + 160);
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    *v11 = v0;
    v11[1] = sub_1D12E00C8;
    v12 = *(v0 + 280);

    return sub_1D12E0A60(v0 + 88, v12);
  }
}

uint64_t sub_1D12E073C()
{
  v35 = v0;
  v1 = *(v0 + 368);
  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 320);
    v33 = *(v0 + 328);
    v7 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446466;
    v10 = sub_1D139184C();
    v12 = sub_1D11DF718(v10, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 256) = v5;
    v13 = v5;
    sub_1D10922EC();
    v14 = sub_1D13901EC();
    v16 = sub_1D11DF718(v14, v15, &v34);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D101F000, v3, v4, "[%{public}s]: Could not fetch records for PDF generation, error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);

    sub_1D1080D98(v0 + 16);
    (*(v6 + 8))(v33, v7);
  }

  else
  {
    v17 = *(v0 + 368);
    v19 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 312);
    sub_1D1080D98(v0 + 16);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 344) + 1;
  if (v21 == *(v0 + 336))
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    *(v0 + 344) = v21;
    v24 = *(v0 + 272) + 72 * v21;
    *(v0 + 16) = *(v24 + 32);
    v26 = *(v24 + 64);
    v25 = *(v24 + 80);
    v27 = *(v24 + 48);
    *(v0 + 80) = *(v24 + 96);
    *(v0 + 48) = v26;
    *(v0 + 64) = v25;
    *(v0 + 32) = v27;
    v29 = *(v24 + 64);
    v28 = *(v24 + 80);
    v30 = *(v24 + 48);
    *(v0 + 152) = *(v24 + 96);
    *(v0 + 104) = v30;
    *(v0 + 136) = v28;
    *(v0 + 120) = v29;
    *(v0 + 88) = *(v24 + 32);
    sub_1D1082914(v0 + 16, v0 + 160);
    v31 = swift_task_alloc();
    *(v0 + 352) = v31;
    *v31 = v0;
    v31[1] = sub_1D12E00C8;
    v32 = *(v0 + 280);

    return sub_1D12E0A60(v0 + 88, v32);
  }
}

uint64_t sub_1D12E0A60(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[15] = *(a1 + 56);
  return MEMORY[0x1EEE6DFA0](sub_1D12E0A88, 0, 0);
}

uint64_t sub_1D12E0A88()
{
  v49 = v0;
  v1 = v0[15];
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v47 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  *(inited + 32) = sub_1D139016C();
  *(inited + 40) = v3;
  *(inited + 48) = sub_1D139016C();
  *(inited + 56) = v4;
  v46 = inited;
  v48[0] = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v7 = 0;
      v45 = v1 & 0xC000000000000001;
      v8 = v1 & 0xFFFFFFFFFFFFFF8;
      v9 = v47[15] + 32;
      while (1)
      {
        if (v45)
        {
          v10 = MEMORY[0x1D3886B70](v7, v47[15]);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_30;
          }

          v10 = *(v9 + 8 * v7);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v13 = i;
        v14 = [v10 sampleType];
        v15 = [v14 identifier];

        v16 = sub_1D139016C();
        v18 = v17;

        v47[10] = v16;
        v47[11] = v18;
        v1 = swift_task_alloc();
        *(v1 + 16) = v47 + 10;
        LOBYTE(v15) = sub_1D10F1D44(sub_1D10EDCD0, v1, v46);

        if (v15)
        {
        }

        else
        {
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          v1 = v48;
          sub_1D13912BC();
        }

        i = v13;
        ++v7;
        if (v12 == v13)
        {
          v19 = v48[0];
          v6 = MEMORY[0x1E69E7CC0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_16:
    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
    {
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      goto LABEL_19;
    }

    v20 = sub_1D13910DC();
    if (!v20)
    {
      break;
    }

LABEL_19:
    v48[0] = v6;
    v1 = v48;
    v21 = sub_1D13912DC();
    if (v20 < 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v29 = 0;
    v46 = 2;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1D3886B70](v29, v19);
      }

      else
      {
        if (v29 >= *(v19 + 16))
        {
          goto LABEL_32;
        }

        v31 = *(v19 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 sampleType];
      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D139E6E0;
      v21 = [v32 predicate];
      if (!v21)
      {
        goto LABEL_40;
      }

      v35 = v47[13];
      *(v34 + 32) = v21;
      *(v34 + 40) = v35;
      sub_1D106F934(0, &qword_1EE06B790);
      v36 = v35;
      v37 = sub_1D139044C();

      v38 = [objc_opt_self() andPredicateWithSubpredicates_];

      [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v33 predicate:v38];
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      v1 = v48;
      sub_1D13912BC();
      ++v29;
      if (v30 == v20)
      {

        v6 = v48[0];
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_36:
  v47[16] = v6;
  v39 = v47[14];
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v40 = swift_allocObject();
  v47[17] = v40;
  *(v40 + 16) = xmmword_1D139E810;
  *(v40 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  v41 = swift_task_alloc();
  v47[18] = v41;
  v41[2] = v6;
  v41[3] = v40;
  v41[4] = v39;
  v42 = swift_task_alloc();
  v47[19] = v42;
  sub_1D12A8C20();
  v28 = v43;
  *v42 = v47;
  v42[1] = sub_1D12E104C;
  v26 = sub_1D12E1914;
  v21 = v47 + 12;
  v25 = 0x80000001D13CB3D0;
  v22 = 0;
  v23 = 0;
  v24 = 0xD000000000000022;
  v27 = v41;

  return MEMORY[0x1EEE6DE38](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1D12E104C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D12E11A0;
  }

  else
  {

    v2 = sub_1D12E1184;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D12E11A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D12E1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D12E1920();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v11 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v10);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  sub_1D106F934(0, &qword_1EE06A630);
  v15 = sub_1D139044C();
  sub_1D106F934(0, &qword_1EE06B578);
  v16 = sub_1D139044C();
  aBlock[4] = sub_1D12E1990;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10FD688;
  aBlock[3] = &block_descriptor_64;
  v17 = _Block_copy(aBlock);
  v18 = [v14 initWithQueryDescriptors:v15 sortDescriptors:v16 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:0 resultsHandler:v17];

  _Block_release(v17);

  [*(a4 + 16) executeQuery_];
}

uint64_t sub_1D12E1464(int a1, unint64_t a2, int a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    sub_1D12E1920();
    return sub_1D139056C();
  }

  if (a2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
LABEL_23:
      v7 = sub_1D13910DC();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1D3886B70](v9, a2);
            }

            else
            {
              if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(a2 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_24;
            }
          }

          MEMORY[0x1D3885D90]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_24:
  sub_1D12E1920();
  return sub_1D139057C();
}

uint64_t sub_1D12E164C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1D12E16D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1D12E1854(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1D13910DC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1D102CC30();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1D12E1920()
{
  if (!qword_1EC60F298)
  {
    sub_1D12A8C20();
    sub_1D10922EC();
    v0 = sub_1D139058C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F298);
    }
  }
}

uint64_t sub_1D12E1990(int a1, unint64_t a2, int a3, void *a4)
{
  sub_1D12E1920();

  return sub_1D12E1464(a1, a2, a3, a4);
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D12E1A58(SEL *a1)
{
  v3 = [v1 codings];
  sub_1D106F934(0, &qword_1EC609D38);
  v4 = sub_1D139045C();

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [objc_opt_self() *a1];
      v11 = [v8 isEquivalent_];

      if ((v11 & 1) == 0)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

id sub_1D12E1BBC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1D139012C();
    v4 = [objc_opt_self() unitFromString_];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1D12E1C50()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() dataTypeWithCode_];
    v5 = [v3 displayTypeForObjectTypeUnifyingBloodPressureTypes_];

    if (v5)
    {
      v6 = *(v0 + 24);
      *(v0 + 24) = v5;
      v5;

      v1 = 0;
LABEL_5:
      v7 = v1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D12E1D28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = sub_1D138D57C();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v41 = 0;
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v40 = a1;
  v11 = a3;
  v12 = [v11 minimumQuantity];
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v15 = sub_1D12E1BBC();
    [v12 doubleValueForUnit_];
    v14 = v16;
  }

  v17 = [v11 maximumQuantity];
  if (v17)
  {
    v18 = sub_1D12E1BBC();
    [v17 doubleValueForUnit_];
    v13 = v19;
  }

  if (v12)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (!v17)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = 0;
  if (v17)
  {
LABEL_8:
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

LABEL_9:
  v41 = [objc_opt_self() 0x1FC4FEF54];

  a1 = v40;
  if (!a4)
  {
    goto LABEL_20;
  }

LABEL_10:
  v21 = a4;
  v22 = [v21 minimumQuantity];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = sub_1D12E1BBC();
    [v22 doubleValueForUnit_];
    v24 = v26;
  }

  v27 = [v21 maximumQuantity];
  if (v27)
  {
    v28 = sub_1D12E1BBC();
    [v27 doubleValueForUnit_];
    v23 = v29;
  }

  if (v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  if (v27)
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v30 = [objc_opt_self() 0x1FC4FEF54];

LABEL_21:
  v31 = *(v8 + 16);
  v31(v10, a1, v42);
  if (a2 == 1)
  {
    v32 = 0;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v32 = 0;
LABEL_28:
    a2 = 9;
    goto LABEL_29;
  }

  if (a2 != 2)
  {
    v32 = 1;
    goto LABEL_28;
  }

  v32 = 0;
  a2 = 6;
LABEL_29:
  v33 = type metadata accessor for BloodPressureChartData();
  v34 = objc_allocWithZone(v33);
  v34[OBJC_IVAR____TtC15HealthRecordsUI22BloodPressureChartData_partOfOutOfRangeSeries] = 0;
  v35 = v42;
  v31(&v34[OBJC_IVAR____TtC15HealthRecordsUI22BloodPressureChartData_date], v10, v42);
  *&v34[OBJC_IVAR____TtC15HealthRecordsUI22BloodPressureChartData_dateFormat] = a2;
  v34[OBJC_IVAR____TtC15HealthRecordsUI22BloodPressureChartData_hasTime] = v32;
  v43.receiver = v34;
  v43.super_class = v33;
  v36 = objc_msgSendSuper2(&v43, sel_init);
  v37 = v41;
  [v36 setSystolicRange_];
  [v36 setDiastolicRange_];

  (*(v8 + 8))(v10, v35);
  return v36;
}

id sub_1D12E2230(void *a1)
{
  v1 = [a1 keyColor];
  if (!v1)
  {
    v1 = [objc_opt_self() blackColor];
  }

  type metadata accessor for BloodPressureChartSeries();
  v2 = [swift_getObjCClassFromMetadata() defaultSeriesWithDiastolicColor_];

  return v2;
}

id sub_1D12E236C(uint64_t a1)
{
  sub_1D12E1C50();
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69A43E8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69A43F0]) initWithGraphSeries:a1 baseDisplayType:v3 valueFormatter:v4 dataTypeCode:80];

  return v5;
}

uint64_t BloodPressureDataTransformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D12E2528(SEL *a1)
{
  v2 = [objc_opt_self() *a1];
  v3 = [v1 isEquivalent_];

  return v3;
}

BOOL sub_1D12E2588(void *a1)
{
  v1 = a1;
  v2 = HKCodedValueCollection.representsCanonicalBloodPressure.getter();

  return v2;
}

BOOL HKCodedValueCollection.representsCanonicalBloodPressure.getter()
{
  v1 = v0;
  v2 = &selRef_hasSectionLocalizedContent;
  v3 = [v0 codedValues];
  sub_1D106F934(0, &qword_1EC60B128);
  v4 = sub_1D139045C();

  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 2)
  {
    return v5 == 2;
  }

  v6 = [v1 v2[414]];
  v7 = sub_1D139045C();

  v52 = v1;
  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = v7 + 32;
    v45 = v7 & 0xC000000000000001;
    v47 = i;
    v42 = v7 + 32;
    v43 = v7 & 0xFFFFFFFFFFFFFF8;
    v49 = v7;
    while (2)
    {
      if (v10)
      {
        v13 = MEMORY[0x1D3886B70](v9, v7);
        v14 = __OFADD__(v9++, 1);
        if (!v14)
        {
LABEL_10:
          v54 = v13;
          v15 = [v13 codings];
          sub_1D106F934(0, &qword_1EC609D38);
          v16 = sub_1D139045C();

          v2 = (v16 & 0xFFFFFFFFFFFFFF8);
          if (v16 >> 62)
          {
            v17 = sub_1D13910DC();
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v18 = 0;
          v1 = (v16 & 0xC000000000000001);
          while (v17 != v18)
          {
            if (v1)
            {
              v19 = MEMORY[0x1D3886B70](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v21 = [objc_opt_self() loinc_systolicBloodPressureCoding];
            v22 = [v20 isEquivalent_];

            ++v18;
            if (v22)
            {

              v23 = v54;
              goto LABEL_34;
            }
          }

          v7 = v49;
          v11 = v43;
          v10 = v45;
          v12 = v42;
          if (v9 != v47)
          {
            continue;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v12 + 8 * v9);
        v14 = __OFADD__(v9++, 1);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v23 = 0;
LABEL_34:
  v24 = [v52 codedValues];
  v25 = sub_1D139045C();

  v26 = v25;
  v55 = v23;
  if (v25 >> 62)
  {
    goto LABEL_65;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_66:

    v39 = v55;
    if (!v55)
    {
      v39 = 0;
    }

    v5 = 2;
LABEL_69:

    return v5 == 2;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v51 = v26;
    v48 = v26 & 0xC000000000000001;
    v50 = v27;
    v44 = v26 + 32;
    v46 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
    if (v29)
    {
      break;
    }

    if (v28 >= *(v30 + 16))
    {
      goto LABEL_64;
    }

    v26 = *(v31 + 8 * v28);
    v14 = __OFADD__(v28++, 1);
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v40 = v26;
    v27 = sub_1D13910DC();
    v26 = v40;
    if (!v27)
    {
      goto LABEL_66;
    }
  }

  v26 = MEMORY[0x1D3886B70](v28, v26);
  v14 = __OFADD__(v28++, 1);
  if (v14)
  {
    goto LABEL_63;
  }

LABEL_40:
  v53 = v26;
  v32 = [v26 codings];
  sub_1D106F934(0, &qword_1EC609D38);
  v33 = sub_1D139045C();

  if (v33 >> 62)
  {
    v26 = sub_1D13910DC();
    v34 = v26;
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  do
  {
    if (v34 == v35)
    {

      v29 = v48;
      v26 = v51;
      v31 = v44;
      v30 = v46;
      if (v28 != v50)
      {
        goto LABEL_37;
      }

      goto LABEL_66;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1D3886B70](v35, v33);
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v26 = *(v33 + 8 * v35 + 32);
    }

    v36 = v26;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v37 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v38 = [v36 isEquivalent_];

    ++v35;
  }

  while ((v38 & 1) == 0);

  if (!v55)
  {
    v5 = 2;
    v39 = v53;
    goto LABEL_69;
  }

  v5 = 2;
  v39 = v53;
  if (v53)
  {
    goto LABEL_69;
  }

  return v5 == 2;
}

id sub_1D12E2B20(void *a1)
{
  v1 = a1;
  HKCodedValueCollection.canonicalBloodPressureDisplay.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D139012C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t HKCodedValueCollection.canonicalBloodPressureDisplay.getter()
{
  v1 = v0;
  v2 = &selRef_hasSectionLocalizedContent;
  v3 = [v0 codedValues];
  sub_1D106F934(0, &qword_1EC60B128);
  v4 = sub_1D139045C();

  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 2)
  {
    return 0;
  }

  v6 = [v1 v2[414]];
  v7 = sub_1D139045C();

  v8 = v7;
  v63 = v1;
  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = v8 + 32;
    v58 = v9;
    v60 = v8;
    v54 = v8 & 0xFFFFFFFFFFFFFF8;
    v56 = v8 & 0xC000000000000001;
    v53 = v8 + 32;
    while (2)
    {
      if (v11)
      {
        v8 = MEMORY[0x1D3886B70](v10, v8);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
LABEL_10:
          v65 = v8;
          v15 = [v8 codings];
          sub_1D106F934(0, &qword_1EC609D38);
          v16 = sub_1D139045C();

          v1 = (v16 & 0xFFFFFFFFFFFFFF8);
          if (v16 >> 62)
          {
            v17 = sub_1D13910DC();
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v18 = 0;
          while (v17 != v18)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1D3886B70](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v21 = [objc_opt_self() loinc_systolicBloodPressureCoding];
            v2 = [v20 isEquivalent_];

            ++v18;
            if (v2)
            {

              v22 = v65;
              goto LABEL_34;
            }
          }

          v8 = v60;
          v12 = v54;
          v11 = v56;
          v13 = v53;
          if (v10 != v58)
          {
            continue;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v13 + 8 * v10);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = v8;
    v9 = sub_1D13910DC();
    v8 = v23;
  }

LABEL_33:

  v22 = 0;
LABEL_34:
  v24 = [v63 codedValues];
  v25 = sub_1D139045C();

  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_65;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_66:

    v38 = 0;
    if (v22)
    {
      goto LABEL_58;
    }

LABEL_67:

    return 0;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v66 = v22;
    v61 = v27;
    v62 = v26;
    v57 = v26 & 0xFFFFFFFFFFFFFF8;
    v59 = v26 & 0xC000000000000001;
    v55 = v26 + 32;
LABEL_37:
    if (v29)
    {
      break;
    }

    if (v28 >= *(v30 + 16))
    {
      goto LABEL_64;
    }

    v26 = *(v31 + 8 * v28);
    v14 = __OFADD__(v28++, 1);
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v52 = v26;
    v27 = sub_1D13910DC();
    v26 = v52;
    if (!v27)
    {
      goto LABEL_66;
    }
  }

  v26 = MEMORY[0x1D3886B70](v28, v26);
  v14 = __OFADD__(v28++, 1);
  if (v14)
  {
    goto LABEL_63;
  }

LABEL_40:
  v64 = v26;
  v32 = [v26 codings];
  sub_1D106F934(0, &qword_1EC609D38);
  v33 = sub_1D139045C();

  if (v33 >> 62)
  {
    v26 = sub_1D13910DC();
    v34 = v26;
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  do
  {
    if (v34 == v35)
    {

      v26 = v62;
      v22 = v66;
      v30 = v57;
      v29 = v59;
      v31 = v55;
      if (v28 != v61)
      {
        goto LABEL_37;
      }

      goto LABEL_66;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1D3886B70](v35, v33);
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v26 = *(v33 + 8 * v35 + 32);
    }

    v36 = v26;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v37 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v22 = [v36 isEquivalent_];

    ++v35;
  }

  while (!v22);

  v38 = v64;
  v22 = v66;
  if (!v66)
  {
    goto LABEL_67;
  }

LABEL_58:
  v39 = [v22 value];
  v40 = [v39 displayString];

  v41 = sub_1D139016C();
  v43 = v42;

  if (v38)
  {
    v44 = [v38 value];
    v45 = [v44 displayString];

    v46 = sub_1D139016C();
    v48 = v47;

    sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D139E710;
    *(v49 + 32) = v41;
    *(v49 + 40) = v43;
    *(v49 + 48) = v46;
    *(v49 + 56) = v48;
    sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v50 = sub_1D139008C();

    return v50;
  }

  return 0;
}

id sub_1D12E322C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v109 = a2;
  v137[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v107 - v13;
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v107 - v17;
  v18 = sub_1D138D57C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = [objc_allocWithZone(MEMORY[0x1E69A4118]) init];
  v22 = [a1 date];
  v127 = v21;
  sub_1D138D52C();

  v23 = [a1 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v24 = sub_1D139045C();

  if (v24 >> 62)
  {
    v26 = sub_1D13910DC();
    v27 = v129;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_44:

    v103 = 0;
    v102 = v111;
    goto LABEL_45;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = v129;
  if (!v26)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (v26 < 1)
  {
    __break(1u);
  }

  v108 = a3;
  v128 = 0;
  v132 = 0;
  v28 = v19;
  v29 = 0;
  v135 = v24 & 0xC000000000000001;
  v131 = (v8 + 8);
  v112 = *MEMORY[0x1E696BC88];
  v122 = (v28 + 56);
  v123 = (v28 + 16);
  v121 = (v28 + 48);
  v107 = v28;
  v115 = (v28 + 8);
  v120 = *MEMORY[0x1E696BC90];
  *&v25 = 138543618;
  v114 = v25;
  *&v25 = 138543362;
  v113 = v25;
  v117 = v4;
  v116 = v18;
  v124 = v7;
  v133 = v24;
  v134 = v26;
  do
  {
    if (v135)
    {
      v31 = MEMORY[0x1D3886B70](v29, v24);
    }

    else
    {
      v31 = *(v24 + 8 * v29 + 32);
    }

    v32 = v31;
    if (HKChartableCodedQuantity.representsSystolicBloodPressure.getter())
    {
      v33 = v132;
      if (v132)
      {
        v34 = v132;
      }

      else
      {
        sub_1D106F934(0, &qword_1EC60F2A0);
        v44 = MEMORY[0x1D3886190](v120);
        v45 = v125;
        (*v123)(v125, v127, v18);
        (*v122)(v45, 0, 1, v18);
        v46 = sub_1D138D4EC();
        v47 = 0;
        if ((*v121)(v45, 1, v18) != 1)
        {
          v48 = v125;
          v47 = sub_1D138D4EC();
          (*v115)(v48, v18);
        }

        v49 = [objc_allocWithZone(MEMORY[0x1E696C4C0]) initWithDataType:v44 startDate:v46 endDate:v47];

        v132 = v49;
        v33 = v49;
        v34 = 0;
        v24 = v133;
      }

      v50 = v34;
      v51 = sub_1D12E1BBC();
      v137[0] = 0;
      v52 = [v32 chartableCodedQuantityInUnit:v51 adoptUnitIfNullUnit:1 error:v137];

      v53 = v137[0];
      if (v52)
      {
        goto LABEL_5;
      }

      v54 = v137[0];
      v55 = sub_1D138D2BC();

      swift_willThrow();
      v56 = v126;
      sub_1D138F04C();
      v57 = v32;
      v58 = v55;
      v59 = sub_1D138F0AC();
      v60 = sub_1D13907FC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v137[0] = v63;
        *v61 = v114;
        *(v61 + 4) = v57;
        *v62 = v57;
        *(v61 + 12) = 2082;
        v136 = v55;
        v118 = v57;
        v64 = v55;
        sub_1D10922EC();
        v65 = sub_1D13901EC();
        v67 = sub_1D11DF718(v65, v66, v137);
        v18 = v116;

        *(v61 + 14) = v67;
        _os_log_impl(&dword_1D101F000, v59, v60, "Cannot represent coded quantity %{public}@ [systole] in mmHg: %{public}s", v61, 0x16u);
        sub_1D10B8240(v62);
        MEMORY[0x1D38882F0](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1D38882F0](v63, -1, -1);
        MEMORY[0x1D38882F0](v61, -1, -1);

        v68 = *v131;
        v69 = v126;
      }

      else
      {

        v68 = *v131;
        v69 = v56;
      }

      v7 = v124;
      v68(v69, v124);
      v27 = v129;
LABEL_36:
      v24 = v133;
      v26 = v134;
      goto LABEL_6;
    }

    if (HKChartableCodedQuantity.representsDiastolicBloodPressure.getter())
    {
      v33 = v128;
      if (v128)
      {
        v35 = v128;
      }

      else
      {
        sub_1D106F934(0, &qword_1EC60F2A0);
        v70 = MEMORY[0x1D3886190](v112);
        v71 = v119;
        (*v123)(v119, v127, v18);
        (*v122)(v71, 0, 1, v18);
        v72 = sub_1D138D4EC();
        v73 = 0;
        if ((*v121)(v71, 1, v18) != 1)
        {
          v74 = v119;
          v73 = sub_1D138D4EC();
          (*v115)(v74, v18);
        }

        v75 = [objc_allocWithZone(MEMORY[0x1E696C4C0]) initWithDataType:v70 startDate:v72 endDate:v73];

        v128 = v75;
        v33 = v75;
        v35 = 0;
        v24 = v133;
      }

      v76 = v35;
      v77 = sub_1D12E1BBC();
      v137[0] = 0;
      v52 = [v32 chartableCodedQuantityInUnit:v77 adoptUnitIfNullUnit:1 error:v137];

      v53 = v137[0];
      if (v52)
      {
LABEL_5:
        v30 = v53;
        [v33 updateMinMaxWithChartableCodedQuantity_];

        v26 = v134;
        goto LABEL_6;
      }

      v78 = v137[0];
      v79 = v27;
      v80 = sub_1D138D2BC();

      swift_willThrow();
      sub_1D138F04C();
      v81 = v32;
      v82 = v80;
      v83 = sub_1D138F0AC();
      v84 = sub_1D13907FC();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v137[0] = v110;
        *v85 = v114;
        *(v85 + 4) = v81;
        *v86 = v81;
        *(v85 + 12) = 2082;
        v136 = v80;
        v118 = v81;
        v87 = v80;
        sub_1D10922EC();
        v88 = sub_1D13901EC();
        v90 = sub_1D11DF718(v88, v89, v137);
        v18 = v116;

        *(v85 + 14) = v90;
        _os_log_impl(&dword_1D101F000, v83, v84, "Cannot represent coded quantity %{public}@ [diastole] in mmHg: %{public}s", v85, 0x16u);
        sub_1D10B8240(v86);
        MEMORY[0x1D38882F0](v86, -1, -1);
        v91 = v110;
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        MEMORY[0x1D38882F0](v91, -1, -1);
        MEMORY[0x1D38882F0](v85, -1, -1);
      }

      else
      {
      }

      v7 = v124;
      (*v131)(v79, v124);
      v27 = v79;
      goto LABEL_36;
    }

    sub_1D138F04C();
    v36 = v32;
    v37 = sub_1D138F0AC();
    v38 = sub_1D13907FC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = v113;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_1D101F000, v37, v38, "Unexpected quantity on a blood pressure tuple that we will ignore: %{public}@", v39, 0xCu);
      sub_1D10B8240(v40);
      v42 = v40;
      v26 = v134;
      MEMORY[0x1D38882F0](v42, -1, -1);
      v43 = v39;
      v27 = v129;
      MEMORY[0x1D38882F0](v43, -1, -1);
    }

    else
    {
      v41 = v37;
      v37 = v36;
    }

    v24 = v133;

    (*v131)(v130, v7);
LABEL_6:
    ++v29;
  }

  while (v26 != v29);

  if (v132)
  {
    v92 = v132;
    sub_1D12E1C50();
    v94 = v93;
    v95 = objc_allocWithZone(MEMORY[0x1E69A43C8]);
    v96 = [v95 initWithStatistics:v92 options:12 unit:v109 displayType:v94 sourceTimeZone:0];

    [v111 setSystolicChartPoint_];
  }

  v19 = v107;
  v26 = v128;
  if (v128)
  {
    v97 = v128;
    sub_1D12E1C50();
    v99 = v98;
    v100 = objc_allocWithZone(MEMORY[0x1E69A43C8]);
    v101 = [v100 initWithStatistics:v97 options:12 unit:v109 displayType:v99 sourceTimeZone:0];

    v102 = v111;
    [v111 setDiastolicChartPoint_];

    a3 = v108;
  }

  else
  {
    a3 = v108;
    v102 = v111;
  }

  v103 = v132;
LABEL_45:
  v104 = v127;
  v105 = sub_1D138D4EC();
  [v102 setDate_];

  [v102 setUserInfo_];
  swift_unknownObjectRelease();

  (*(v19 + 8))(v104, v18);
  return v102;
}