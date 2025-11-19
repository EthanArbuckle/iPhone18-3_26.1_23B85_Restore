void sub_1C2CBDA7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_1C2E75194();
  }

  else
  {
    sub_1C2E75194();
  }

  free(v2);
}

uint64_t IntelligenceActivityView.$bodyViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceActivityView.init(bottomViewModel:participantLabelViewModel:bodyViewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for IntelligenceMessageViewModel();

  sub_1C2E75174();
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for ParticipantLabelViewModel();

  sub_1C2E75174();
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for IntelligenceBodyViewModel(0);

  sub_1C2E75174();

  a1[4] = v3;
  a1[5] = v4;
  return result;
}

id IntelligenceActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E71784();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v32 = *v1;
  v33 = v7;
  v34 = v1[2];
  v8 = sub_1C2E73DD4();
  v31 = 0;
  sub_1C2CBDF60(&v32, &v24);
  v39 = v28;
  v40[0] = v29[0];
  *(v40 + 9) = *(v29 + 9);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v41[3] = v27;
  v41[4] = v28;
  v42[0] = v29[0];
  *(v42 + 9) = *(v29 + 9);
  sub_1C2C736A4(&v35, &v23, &qword_1EC05E050);
  sub_1C2C73644(v41, &qword_1EC05E050);
  *(&v30[3] + 7) = v38;
  *(&v30[4] + 7) = v39;
  *(&v30[5] + 7) = v40[0];
  v30[6] = *(v40 + 9);
  *(v30 + 7) = v35;
  *(&v30[1] + 7) = v36;
  *(&v30[2] + 7) = v37;
  v9 = v31;
  result = [objc_opt_self() faceTimeShowInCallUIURL];
  if (result)
  {
    v11 = result;
    sub_1C2E71754();

    v12 = swift_allocObject();
    v13 = v33;
    *(v12 + 1) = v32;
    *(v12 + 2) = v13;
    *(v12 + 3) = v34;
    v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E058) + 36);
    (*(v4 + 16))(v14, v6, v3);
    KeyPath = swift_getKeyPath();
    v16 = type metadata accessor for EmbedInLinkIfNeededModifier();
    v17 = (v14 + *(v16 + 20));
    *v17 = sub_1C2CBE454;
    v17[1] = v12;
    v18 = v14 + *(v16 + 24);
    *v18 = KeyPath;
    *(v18 + 8) = 0;
    v19 = v30[3];
    *(a1 + 49) = v30[2];
    v20 = v30[0];
    *(a1 + 33) = v30[1];
    *(a1 + 17) = v20;
    *(a1 + 113) = v30[6];
    v21 = v30[4];
    *(a1 + 97) = v30[5];
    *(a1 + 81) = v21;
    *a1 = v8;
    *(a1 + 8) = 0;
    *(a1 + 16) = v9;
    *(a1 + 65) = v19;
    sub_1C2CBE4FC(&v32, &v24);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2CBDF60@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v38 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  v7 = v35;
  v38 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  v8 = v35;
  KeyPath = swift_getKeyPath();
  *&v35 = v7;
  type metadata accessor for IntelligenceBodyViewModel(0);
  sub_1C2E75174();
  v29 = *(&v38 + 1);
  v30 = v38;
  *&v35 = v8;
  type metadata accessor for ParticipantLabelViewModel();
  sub_1C2E75174();
  v9 = *(&v38 + 1);
  v28 = v38;
  v38 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038);
  sub_1C2E75184();
  v10 = v35;
  swift_getKeyPath();
  *&v38 = v10;
  sub_1C2CBE828(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v11 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v10 + v11, v6, &qword_1EC05E088);

  v12 = sub_1C2E71664();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v6, 1, v12);
  sub_1C2C73644(v6, &qword_1EC05E088);
  if (v11 == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v38 = *a1;
    sub_1C2E75184();
    type metadata accessor for IntelligenceMessageViewModel();
    sub_1C2E75174();
    v14 = *(&v38 + 1);
    v13 = v38;
    v20 = sub_1C2E74464();
    sub_1C2E73034();
    LOBYTE(v38) = 0;
    v15 = v20;
  }

  v34 = 0;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  *&v36 = v15;
  *(&v36 + 1) = v16;
  *&v37[0] = v17;
  *(&v37[0] + 1) = v18;
  *&v37[1] = v19;
  BYTE8(v37[1]) = 0;
  *(v33 + 7) = v35;
  *(&v33[1] + 7) = v36;
  *(&v33[2] + 7) = v37[0];
  v33[3] = *(v37 + 9);
  v21 = v29;
  *a2 = v30;
  *(a2 + 8) = v21;
  *(a2 + 16) = v28;
  *(a2 + 24) = v9;
  v22 = KeyPath;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  v23 = v33[0];
  v24 = v33[1];
  v25 = v33[2];
  *(a2 + 89) = v33[3];
  *(a2 + 73) = v25;
  *(a2 + 57) = v24;
  *(a2 + 41) = v23;
  *&v38 = v13;
  *(&v38 + 1) = v14;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = 0;

  sub_1C2CBE870(v22, 0);
  sub_1C2C736A4(&v35, &v32, &qword_1EC05E098);
  sub_1C2C73644(&v38, &qword_1EC05E098);

  return sub_1C2CBE87C(v22, 0);
}

BOOL sub_1C2CBE36C(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  sub_1C2CBE768(v7[1] + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action, v4);

  v5 = swift_getEnumCaseMultiPayload() != 1;
  sub_1C2CBE7CC(v4);
  return v5;
}

uint64_t sub_1C2CBE460@<X0>(_BYTE *a1@<X8>)
{
  sub_1C2CBE714();
  result = sub_1C2E73BB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2CBE550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C2CBE598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2CBE5F4()
{
  result = qword_1EC05E060;
  if (!qword_1EC05E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E058);
    sub_1C2CBE6B0();
    sub_1C2CBE828(&qword_1EC05E078, type metadata accessor for EmbedInLinkIfNeededModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E060);
  }

  return result;
}

unint64_t sub_1C2CBE6B0()
{
  result = qword_1EC05E068;
  if (!qword_1EC05E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E068);
  }

  return result;
}

unint64_t sub_1C2CBE714()
{
  result = qword_1EC05E080;
  if (!qword_1EC05E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E080);
  }

  return result;
}

uint64_t sub_1C2CBE768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CBE7CC(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CBE828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2CBE870(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C2CBE87C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void static FilterOnboardingViewController.onboardingScreen(style:continueAction:dismissAction:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = objc_opt_self();
  v61 = ObjCClassFromMetadata;
  v6 = [v60 bundleForClass_];
  sub_1C2E71684();

  v7 = sub_1C2CBF254();
  v8 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
  v9 = sub_1C2E75C24();

  v10 = [v8 initWithTitle:v9 attributedDetailText:v7 contentLayout:1];

  sub_1C2E75174();
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0A0));
  v12 = sub_1C2E73E44();
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0A8);
  *(swift_allocObject() + 16) = xmmword_1C2E7A930;
  sub_1C2E743A4();
  sub_1C2CBF574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0B8);
  sub_1C2CBF5CC();
  sub_1C2E76464();
  sub_1C2E73E14();
  v17 = [v12 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = v10;
  [v19 addChildViewController_];
  v20 = [v19 contentView];
  v21 = [v12 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  [v20 addSubview_];

  v23 = [v19 contentView];
  v24 = [v15 secondarySystemBackgroundColor];
  [v23 setBackgroundColor_];

  [v12 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C2E7A700;
  v26 = [v12 view];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v19 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:50.0];
  *(v25 + 32) = v31;
  v32 = [v12 view];
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = [v19 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-50.0];
  *(v25 + 40) = v37;
  v38 = [v12 view];
  if (!v38)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v19 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v25 + 48) = v43;
  v44 = [v12 view];

  if (v44)
  {

    v45 = [v44 bottomAnchor];

    v46 = [v19 contentView];
    v47 = [v46 bottomAnchor];

    v48 = [v45 constraintEqualToAnchor_];
    *(v25 + 56) = v48;
    v49 = objc_opt_self();
    sub_1C2CBF630();
    v50 = sub_1C2E75D64();

    [v49 activateConstraints_];

    v51 = [v19 contentView];
    [v51 layoutIfNeeded];

    v52 = [objc_opt_self() boldButton];
    v53 = [v60 bundleForClass_];
    sub_1C2E71684();

    v54 = sub_1C2E75C24();

    [v52 setTitle:v54 forState:0];

    [v52 addTarget:a4 action:a2 forControlEvents:64];
    v55 = [objc_opt_self() linkButton];
    v56 = [v60 bundleForClass_];
    sub_1C2E71684();

    v57 = sub_1C2E75C24();

    [v55 setTitle:v57 forState:0];

    [v55 addTarget:a4 action:a3 forControlEvents:64];
    v58 = [v19 buttonTray];
    [v58 addButton_];

    v59 = [v19 buttonTray];
    [v59 addButton_];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1C2CBF254()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1C2E71684();

  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1C2E75C24();

  v6 = [v4 initWithString_];

  [v0 appendAttributedString_];
  v7 = sub_1C2E75C24();
  v8 = [objc_opt_self() systemImageNamed_];

  if (v8)
  {
    v9 = [objc_opt_self() labelColor];
    v10 = [v8 imageWithTintColor_];

    if (v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      [v11 setImage_];
      v12 = [objc_opt_self() attributedStringWithAttachment_];
      [v0 appendAttributedString_];
    }
  }

  v13 = [v2 bundleForClass_];
  sub_1C2E71684();

  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1C2E75C24();

  v16 = [v14 initWithString_];

  [v0 appendAttributedString_];
  return v0;
}

unint64_t sub_1C2CBF574()
{
  result = qword_1EC05E0B0;
  if (!qword_1EC05E0B0)
  {
    sub_1C2E743B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E0B0);
  }

  return result;
}

unint64_t sub_1C2CBF5CC()
{
  result = qword_1EC05E0C0;
  if (!qword_1EC05E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E0C0);
  }

  return result;
}

unint64_t sub_1C2CBF630()
{
  result = qword_1EC062670;
  if (!qword_1EC062670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC062670);
  }

  return result;
}

uint64_t sub_1C2CBF708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s13AccessoryViewVMa(0);
  sub_1C2C736A4(v1 + *(v10 + 52), v9, &qword_1EC05E250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E72B04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2CBF910@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s13AccessoryViewVMa(0);
  sub_1C2C736A4(v1 + *(v10 + 56), v9, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E73554();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1C2CBFB18()
{
  v16 = sub_1C2E73BA4();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1C2E73554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s13AccessoryViewVMa(0);
  sub_1C2C736A4(v0 + *(v11 + 56), v6, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1C2E75FD4();
    v12 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 9.0;
  if (v13 != *MEMORY[0x1E697E720] && v13 != *MEMORY[0x1E697E728])
  {
    result = 10.0;
    if (v13 != *MEMORY[0x1E697E6C0] && v13 != *MEMORY[0x1E697E6C8])
    {
      result = 13.0;
      if (v13 != *MEMORY[0x1E697E6D0] && v13 != *MEMORY[0x1E697E6D8] && v13 != *MEMORY[0x1E697E6E0])
      {
        (*(v8 + 8))(v10, v7, 13.0);
        return 6.0;
      }
    }
  }

  return result;
}

uint64_t sub_1C2CBFE4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E120);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v97 = (&v85 - v4);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E128);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v85 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E130);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v85 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E138);
  MEMORY[0x1EEE9AC00](v88);
  v93 = &v85 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E140);
  v8 = MEMORY[0x1EEE9AC00](v91);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E148);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v103 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E150);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v85 - v18);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E158);
  v99 = *(v98 - 8);
  v20 = MEMORY[0x1EEE9AC00](v98);
  v102 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  v24 = sub_1C2E73DD4();
  v25 = sub_1C2C74FF4();
  *v19 = v24;
  v19[1] = v25;
  *(v19 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E160);
  sub_1C2CC0894(a1, v19 + *(v26 + 44));
  v27 = sub_1C2E74474();
  sub_1C2E73034();
  v28 = v19 + *(v17 + 36);
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = _s13AccessoryViewVMa(0);
  v34 = a1 + v33[8];
  v35 = *(v34 + 16);
  *v107 = *v34;
  *&v107[16] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E168);
  sub_1C2E75184();
  *(swift_allocObject() + 16) = v110[0];
  sub_1C2CC25AC();
  v101 = v23;
  sub_1C2E749F4();

  sub_1C2C73644(v19, &qword_1EC05E150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  sub_1C2E75184();
  v36 = v108;
  v37 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  (*(v37 + 112))(v110, v36, v37);
  v38 = WORD4(v110[0]);
  if ((WORD4(v110[0]) & 0xFF00) == 0x300)
  {
    __swift_destroy_boxed_opaque_existential_1(v107);
    v39 = 1;
    v40 = v100;
  }

  else
  {
    v41 = *&v110[0];
    v85 = *&v110[0];
    __swift_destroy_boxed_opaque_existential_1(v107);
    *v107 = v41;
    *&v107[8] = v38;
    v42 = v86;
    sub_1C2C75348(v107, v86);
    v43 = a1 + v33[12];
    *v107 = *v43;
    *&v107[8] = *(v43 + 8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E188);
    MEMORY[0x1C6925DB0](v110, v44);
    *(v42 + *(v87 + 36)) = *&v110[0];
    v45 = a1 + v33[7];
    v46 = *(v45 + 16);
    *v107 = *v45;
    *&v107[16] = v46;
    sub_1C2E75184();
    *(swift_allocObject() + 16) = v110[0];
    sub_1C2C94F38(qword_1EC05BBB8, &qword_1EC05E128);
    v47 = v89;
    sub_1C2E749F4();

    sub_1C2C73644(v42, &qword_1EC05E128);
    v48 = sub_1C2E74474();
    sub_1C2CC0E20();
    sub_1C2E73034();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v93;
    (*(v92 + 32))(v93, v47, v94);
    v58 = &v57[*(v88 + 36)];
    *v58 = v48;
    *(v58 + 1) = v50;
    *(v58 + 2) = v52;
    *(v58 + 3) = v54;
    *(v58 + 4) = v56;
    v58[40] = 0;
    v59 = sub_1C2E744A4();
    sub_1C2CC0E20();
    sub_1C2E73034();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v57;
    v69 = v90;
    sub_1C2C71D5C(v68, v90, &qword_1EC05E138);
    v70 = v69 + *(v91 + 36);
    *v70 = v59;
    *(v70 + 8) = v61;
    *(v70 + 16) = v63;
    *(v70 + 24) = v65;
    *(v70 + 32) = v67;
    *(v70 + 40) = 0;
    v71 = v95;
    sub_1C2C71D5C(v69, v95, &qword_1EC05E140);
    v72 = v96;
    sub_1C2C736A4(v71, v96, &qword_1EC05E140);
    v73 = v97;
    *v97 = 0x3FF0000000000000;
    *(v73 + 8) = 0;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E190);
    sub_1C2C736A4(v72, v73 + *(v74 + 48), &qword_1EC05E140);
    sub_1C2CC2664(v85, v38);
    sub_1C2C73644(v71, &qword_1EC05E140);
    sub_1C2C73644(v72, &qword_1EC05E140);
    v40 = v100;
    sub_1C2C71D5C(v73, v100, &qword_1EC05E120);
    v39 = 0;
  }

  (*(v104 + 56))(v40, v39, 1, v105);
  v75 = v99;
  v76 = *(v99 + 16);
  v77 = v101;
  v78 = v102;
  v79 = v98;
  v76(v102, v101, v98);
  v80 = v103;
  sub_1C2C736A4(v40, v103, &qword_1EC05E148);
  v81 = v106;
  v76(v106, v78, v79);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E180);
  sub_1C2C736A4(v80, &v81[*(v82 + 48)], &qword_1EC05E148);
  sub_1C2C73644(v40, &qword_1EC05E148);
  v83 = *(v75 + 8);
  v83(v77, v79);
  sub_1C2C73644(v80, &qword_1EC05E148);
  return (v83)(v78, v79);
}

uint64_t sub_1C2CC0894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v44 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E278);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v40 - v11;
  v12 = _s11CaptionViewVMa();
  v45 = *(v12 - 1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = _s13AccessoryViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8);
  sub_1C2E75184();
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1C2E765C4();
  v19 = (a1 + *(v18 + 40));
  v21 = *v19;
  v20 = v19[1];

  v49 = v21;
  v50 = v20;
  v40 = "contactAvatarTilePrimaryButton";
  v41 = v21;
  MEMORY[0x1C6926710](0xD000000000000012, 0x80000001C2E952D0);
  v22 = v49;
  v23 = v50;
  v24 = &v17[v12[5]];
  *v24 = 1;
  v24[8] = 0;
  *&v17[v12[6]] = 0x3FF0000000000000;
  v25 = &v17[v12[7]];
  *v25 = v22;
  *(v25 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  v43 = a1;
  sub_1C2E75184();
  v26 = v51;
  v27 = v52;
  __swift_project_boxed_opaque_existential_1(&v49, v51);
  (*(v27 + 64))(v26, v27);
  if ((*(v6 + 48))(v5, 1, v44) == 1)
  {
    sub_1C2C73644(v5, &qword_1EC05E0F0);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    v28 = 1;
    v29 = v46;
  }

  else
  {
    v30 = v42;
    sub_1C2CC3040(v5, v42, type metadata accessor for ContactAvatarTileView.Caption);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    sub_1C2C74E6C(v30, v15, type metadata accessor for ContactAvatarTileView.Caption);
    v31 = *(v43 + *(v18 + 60));
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1C2E765C4();

    v49 = v41;
    v50 = v20;
    MEMORY[0x1C6926710](0xD000000000000012, v40 | 0x8000000000000000);
    v32 = v49;
    v33 = v50;
    sub_1C2CC2FE0(v30, type metadata accessor for ContactAvatarTileView.Caption);
    v34 = &v15[v12[5]];
    *v34 = v31;
    v34[8] = 0;
    *&v15[v12[6]] = 0x3FF0000000000000;
    v35 = &v15[v12[7]];
    *v35 = v32;
    *(v35 + 1) = v33;
    v29 = v46;
    sub_1C2CC3040(v15, v46, _s11CaptionViewVMa);
    v28 = 0;
  }

  (*(v45 + 56))(v29, v28, 1, v12);
  sub_1C2C74E6C(v17, v15, _s11CaptionViewVMa);
  v36 = v47;
  sub_1C2C736A4(v29, v47, &qword_1EC05E278);
  v37 = v48;
  sub_1C2C74E6C(v15, v48, _s11CaptionViewVMa);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E280);
  sub_1C2C736A4(v36, v37 + *(v38 + 48), &qword_1EC05E278);
  sub_1C2C73644(v29, &qword_1EC05E278);
  sub_1C2CC2FE0(v17, _s11CaptionViewVMa);
  sub_1C2C73644(v36, &qword_1EC05E278);
  return sub_1C2CC2FE0(v15, _s11CaptionViewVMa);
}

uint64_t sub_1C2CC0E20()
{
  v16 = sub_1C2E73BA4();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1C2E73554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s13AccessoryViewVMa(0);
  sub_1C2C736A4(v0 + *(v11 + 56), v6, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1C2E75FD4();
    v12 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_1C2E73544();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_1C2CC10AC@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v55) = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E258);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v46 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E200);
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v46 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1F8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E260);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E268);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1D8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1E0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v25 = a1 + *(_s13AccessoryViewVMa(0) + 44);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  v58 = v26;
  v59 = v27;
  LOBYTE(v60) = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E270);
  MEMORY[0x1C6925DB0](&v61, v28);
  if (v61 == 1)
  {
    sub_1C2E731B4();
    (*(v22 + 16))(v17, v24, v21);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1E8);
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0);
    sub_1C2C76068();
    sub_1C2E73F44();
    sub_1C2C736A4(v20, v14, &qword_1EC05E1D8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C75FB0();
    sub_1C2CC2760();
    sub_1C2E73F44();
    sub_1C2C73644(v20, &qword_1EC05E1D8);
    return (*(v22 + 8))(v24, v21);
  }

  else if (BYTE1(v55) == 2)
  {
    *v17 = sub_1C2E74F44();
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1E8);
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0);
    sub_1C2C76068();
    sub_1C2E73F44();
    sub_1C2C736A4(v20, v14, &qword_1EC05E1D8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C75FB0();
    sub_1C2CC2760();
    sub_1C2E73F44();

    return sub_1C2C73644(v20, &qword_1EC05E1D8);
  }

  else
  {
    v30 = sub_1C2E75044();
    v55 = v18;
    if (qword_1EC05C038 != -1)
    {
      swift_once();
    }

    v31 = sub_1C2E746A4();
    __swift_project_value_buffer(v31, qword_1EC0759C0);
    v32 = sub_1C2E74534();
    v33 = v47;
    (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
    v34 = sub_1C2E745D4();
    sub_1C2C73644(v33, &qword_1EC05D810);
    KeyPath = swift_getKeyPath();
    v58 = v30;
    v59 = KeyPath;
    v60 = v34;
    sub_1C2E74584();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E208);
    sub_1C2C76120();
    v36 = v49;
    sub_1C2E74934();

    v37 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v38 = v53;
    (*(v51 + 32))(v53, v36, v52);
    *(v38 + *(v48 + 36)) = v37;
    v39 = v50;
    v40 = &v50[*(v56 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
    v42 = *MEMORY[0x1E69816E0];
    v43 = sub_1C2E750B4();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = swift_getKeyPath();
    sub_1C2C71D5C(v38, v39, &qword_1EC05E200);
    v44 = v39;
    v45 = v54;
    sub_1C2C71D5C(v44, v54, &qword_1EC05E1F8);
    sub_1C2C736A4(v45, v14, &qword_1EC05E1F8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C75FB0();
    sub_1C2CC2760();
    sub_1C2E73F44();
    return sub_1C2C73644(v45, &qword_1EC05E1F8);
  }
}

uint64_t sub_1C2CC1984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E210);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v63 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E218);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v63 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E220);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v63 - v5;
  v6 = sub_1C2E75054();
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E228);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E230);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E238);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E240);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E198);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  sub_1C2C736A4(a1, &v63 - v19, &qword_1EC05E198);
  v21 = sub_1C2E72AD4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8);
    (*(*(v23 - 8) + 16))(v13, v72, v23);
    swift_storeEnumTagMultiPayload();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    v26 = sub_1C2CC2924();
    v27 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    v83 = v24;
    v84 = v25;
    v85 = v26;
    *v86 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v71;
    sub_1C2E73F44();
    sub_1C2C736A4(v28, v75, &qword_1EC05E240);
    swift_storeEnumTagMultiPayload();
    sub_1C2CC2AA0();
    sub_1C2CC2DD4();
    sub_1C2E73F44();
    v29 = v28;
    v30 = &qword_1EC05E240;
  }

  else
  {
    v31 = v13;
    v32 = v71;
    sub_1C2C736A4(v20, v18, &qword_1EC05E198);
    v33 = (*(v22 + 88))(v18, v21);
    if (v33 == *MEMORY[0x1E69CA878])
    {
      (*(v22 + 96))(v18, v21);
      v71 = *v18;
      v34 = sub_1C2E75714();
      v35 = v20;
      v37 = v36;
      v38 = v64;
      (*(v64 + 104))(v8, *MEMORY[0x1E6981630], v6);
      v39 = sub_1C2E750C4();
      (*(v38 + 8))(v8, v6);
      v40 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      sub_1C2E75744();
      sub_1C2E73274();
      *&v79[38] = v93;
      *&v79[6] = v91;
      *&v79[22] = v92;
      *(&v81[3] + 1) = *(&v93 + 1);
      *&v82 = v34;
      *(&v81[2] + 10) = *&v79[32];
      *(&v81[1] + 10) = *&v79[16];
      *&v80 = v39;
      *(&v80 + 1) = v40;
      *&v81[0] = 0;
      WORD4(v81[0]) = 1;
      *(v81 + 10) = *v79;
      *(&v82 + 1) = v37;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8);
      v42 = v65;
      (*(*(v41 - 8) + 16))(v65, v72, v41);
      v43 = (v42 + *(v66 + 36));
      v44 = v81[2];
      v43[2] = v81[1];
      v43[3] = v44;
      v45 = v82;
      v43[4] = v81[3];
      v43[5] = v45;
      v46 = v81[0];
      *v43 = v80;
      v43[1] = v46;
      *&v88[14] = *&v79[46];
      v89 = v34;
      *v88 = *&v79[32];
      v87 = *&v79[16];
      v83 = v39;
      v84 = v40;
      v85 = 0;
      *v86 = 1;
      *&v86[2] = *v79;
      v90 = v37;
      v20 = v35;
      sub_1C2C736A4(&v80, &v78, &qword_1EC05E248);
      sub_1C2C73644(&v83, &qword_1EC05E248);
      sub_1C2C736A4(v42, v68, &qword_1EC05E228);
      swift_storeEnumTagMultiPayload();
      sub_1C2CC2B2C();
      sub_1C2CC2C80();
      v47 = v70;
      sub_1C2E73F44();
      sub_1C2C736A4(v47, v75, &qword_1EC05E220);
      swift_storeEnumTagMultiPayload();
      sub_1C2CC2AA0();
      sub_1C2CC2DD4();
      sub_1C2E73F44();

      sub_1C2C73644(v47, &qword_1EC05E220);
      v29 = v42;
      v30 = &qword_1EC05E228;
    }

    else
    {
      if (v33 == *MEMORY[0x1E69CA880])
      {
        KeyPath = swift_getKeyPath();
        v49 = swift_allocObject();
        *(v49 + 16) = 1;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8);
        v51 = v63;
        (*(*(v50 - 8) + 16))(v63, v72, v50);
        v52 = v68;
        v53 = (v51 + *(v69 + 36));
        *v53 = KeyPath;
        v53[1] = sub_1C2C77650;
        v53[2] = v49;
        v54 = &qword_1EC05E210;
        sub_1C2C736A4(v51, v52, &qword_1EC05E210);
        swift_storeEnumTagMultiPayload();
        sub_1C2CC2B2C();
        sub_1C2CC2C80();
        v55 = v70;
        sub_1C2E73F44();
        sub_1C2C736A4(v55, v75, &qword_1EC05E220);
        swift_storeEnumTagMultiPayload();
        sub_1C2CC2AA0();
        sub_1C2CC2DD4();
        sub_1C2E73F44();
        sub_1C2C73644(v55, &qword_1EC05E220);
        v29 = v51;
      }

      else
      {
        (*(v22 + 8))(v18, v21);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8);
        (*(*(v56 - 8) + 16))(v31, v72, v56);
        swift_storeEnumTagMultiPayload();
        v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
        v59 = sub_1C2CC2924();
        v60 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
        v83 = v57;
        v84 = v58;
        v85 = v59;
        *v86 = v60;
        swift_getOpaqueTypeConformance2();
        v61 = v32;
        sub_1C2E73F44();
        v54 = &qword_1EC05E240;
        sub_1C2C736A4(v61, v75, &qword_1EC05E240);
        swift_storeEnumTagMultiPayload();
        sub_1C2CC2AA0();
        sub_1C2CC2DD4();
        sub_1C2E73F44();
        v29 = v61;
      }

      v30 = v54;
    }
  }

  sub_1C2C73644(v29, v30);
  return sub_1C2C73644(v20, &qword_1EC05E198);
}

unint64_t sub_1C2CC25AC()
{
  result = qword_1EC05B828;
  if (!qword_1EC05B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E150);
    sub_1C2C94F38(&qword_1EC05B360, &qword_1EC05E170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B828);
  }

  return result;
}

uint64_t sub_1C2CC2664(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0xFF00) != 0x300)
  {
    return sub_1C2CC2678(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2CC2678(uint64_t a1, unsigned int a2)
{
  if (((a2 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1C2CC2690(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C2CC26D4()
{
  result = qword_1EC05B528;
  if (!qword_1EC05B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1D0);
    sub_1C2C75FB0();
    sub_1C2CC2760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B528);
  }

  return result;
}

unint64_t sub_1C2CC2760()
{
  result = qword_1EC05B750;
  if (!qword_1EC05B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F8);
    sub_1C2CC2818();
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B750);
  }

  return result;
}

unint64_t sub_1C2CC2818()
{
  result = qword_1EC05B8D0;
  if (!qword_1EC05B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E208);
    sub_1C2C76120();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8D0);
  }

  return result;
}

uint64_t sub_1C2CC290C(uint64_t a1, unsigned int a2)
{
  if (((a2 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

unint64_t sub_1C2CC2924()
{
  result = qword_1EC05B8B0;
  if (!qword_1EC05B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1B0);
    _s13AccessoryViewV24CallButtonHighlightStyleVMa(255);
    sub_1C2C94F38(&qword_1EC05B3B8, &qword_1EC05E1B0);
    sub_1C2C7522C(&qword_1EC05C070, _s13AccessoryViewV24CallButtonHighlightStyleVMa);
    swift_getOpaqueTypeConformance2();
    sub_1C2C7522C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8B0);
  }

  return result;
}

unint64_t sub_1C2CC2AA0()
{
  result = qword_1EC05B5B0;
  if (!qword_1EC05B5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E220);
    sub_1C2CC2B2C();
    sub_1C2CC2C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5B0);
  }

  return result;
}

unint64_t sub_1C2CC2B2C()
{
  result = qword_1EC05B890;
  if (!qword_1EC05B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    sub_1C2CC2924();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05B610, &qword_1EC05E248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B890);
  }

  return result;
}

unint64_t sub_1C2CC2C80()
{
  result = qword_1EC05B898;
  if (!qword_1EC05B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    sub_1C2CC2924();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B898);
  }

  return result;
}

unint64_t sub_1C2CC2DD4()
{
  result = qword_1EC05B538;
  if (!qword_1EC05B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    sub_1C2CC2924();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B538);
  }

  return result;
}

uint64_t sub_1C2CC2F18(uint64_t a1)
{
  v2 = sub_1C2E730D4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C2E738C4();
}

uint64_t sub_1C2CC2FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2CC3040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2CC30D0()
{
  result = qword_1EC05B850;
  if (!qword_1EC05B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E118);
    sub_1C2C94F38(&qword_1EC05B390, &qword_1EC05E108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B850);
  }

  return result;
}

unint64_t sub_1C2CC3188()
{
  result = qword_1EC05B5B8;
  if (!qword_1EC05B5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2A0);
    sub_1C2C764F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B5B8);
  }

  return result;
}

uint64_t DisableableControlService.controlEnabled.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  sub_1C2E72E04();

  return v3;
}

uint64_t DisableableControlService.controlEnabled.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  sub_1C2E72DF4();
}

void (*DisableableControlService.controlEnabled.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 8);
  v7[3] = v9;
  v9(a2, a3);
  sub_1C2E72E04();

  *(v8 + 33) = *(v8 + 32);
  return sub_1C2CC337C;
}

void sub_1C2CC337C(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 33);
  ((*a1)[3])(**a1);
  v1[32] = v2;
  sub_1C2E72DF4();

  free(v1);
}

uint64_t sub_1C2CC3400()
{
  sub_1C2E76854();
  MEMORY[0x1C6927290](0);
  return sub_1C2E76894();
}

uint64_t sub_1C2CC346C()
{
  sub_1C2E76854();
  MEMORY[0x1C6927290](0);
  return sub_1C2E76894();
}

uint64_t sub_1C2CC34C4()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();

  return v2;
}

uint64_t sub_1C2CC3598@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2CC6CC4();
  result = sub_1C2E71D84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2CC35D8()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C2CC3634()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1C2E71684();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  return v0;
}

void (*sub_1C2CC37AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E71DD4();
  return sub_1C2CC3834;
}

void sub_1C2CC3834(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1C2CC38FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceMailTab();
  sub_1C2CC6C78(&qword_1EC05F1D0, v2, type metadata accessor for VoiceMailTab);
  result = sub_1C2E71E24();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C2CC3974(uint64_t a1)
{
  v8 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  v7[2] = v7[0];
  swift_getKeyPath();
  v2 = *(a1 + 24);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C2CC8AA8;
  *(v5 + 24) = v3;

  sub_1C2C736A4(&v8, v7, &qword_1EC05E410);
  sub_1C2C6EE50(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E430);
  sub_1C2C94F38(&qword_1EC05E4B0, &qword_1EC05E2F8);
  sub_1C2CC8ADC();
  sub_1C2CC86D4();
  return sub_1C2E75434();
}

uint64_t sub_1C2CC3B58()
{
  CommunicationDetailsTimeSection.title()();
  sub_1C2C74960();
  sub_1C2E748A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E440);
  sub_1C2CC876C();
  return sub_1C2E75474();
}

uint64_t sub_1C2CC3C28(uint64_t a1, uint64_t a2)
{
  v9[2] = a1;
  v10 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);

  sub_1C2C736A4(&v10, v9, &qword_1EC05E410);
  sub_1C2C6EE50(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E4C0);
  sub_1C2E718A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E4C8);
  sub_1C2C94F38(&qword_1EC05E4D0, &qword_1EC05E4C0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E448);
  v7 = sub_1C2CC882C();
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_1C2CC6C78(&qword_1EC05E4D8, 255, type metadata accessor for CommunicationDetailsVoiceMailCellViewModel);
  return sub_1C2E75444();
}

uint64_t sub_1C2CC3E0C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E4E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E4E8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *a1;

  sub_1C2E75644();
  *&v13[*(v4 + 56)] = 256;
  (*(v5 + 56))(v13, 0, 1, v4);
  sub_1C2C736A4(v13, v11, &qword_1EC05E4E8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_1C2C73644(v13, &qword_1EC05E4E8);
    v15 = 0;
  }

  else
  {
    sub_1C2CC8B9C(v11, v7);
    sub_1C2C94F38(&qword_1EC05E4F0, &qword_1EC05E4E0);
    v15 = sub_1C2E75374();
    sub_1C2C73644(v13, &qword_1EC05E4E8);
  }

  v27 = 0;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  v22 = xmmword_1C2E7C4B0;
  v23 = xmmword_1C2E7C4B0;
  v24 = 0;
  v28 = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = swift_allocObject();
  v18 = *(a2 + 16);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a2 + 32);
  *(v17 + 56) = v14;

  sub_1C2C736A4(&v28, v25, &qword_1EC05E410);
  sub_1C2C6EE50(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E448);
  sub_1C2CC882C();
  sub_1C2E749F4();

  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  v26 = v24;
  return sub_1C2C73644(v25, &qword_1EC05E448);
}

void sub_1C2CC416C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_message);
    v2();
  }
}

uint64_t sub_1C2CC41DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-v6];
  v20 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3A8);
  sub_1C2CC83C4();
  sub_1C2E71BF4();
  sub_1C2CC85E8();
  sub_1C2E74C64();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1C2E74F44();
  LOBYTE(v4) = sub_1C2E74454();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3F8) + 36);
  *v9 = v8;
  *(v9 + 8) = v4;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E400) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v12 = *MEMORY[0x1E697DBA8];
  v13 = sub_1C2E730D4();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v22 = *(v2 + 8);
  v14 = *(v2 + 24);
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E408) + 36));
  *v17 = sub_1C2CC8640;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;

  sub_1C2C736A4(&v22, v21, &qword_1EC05E410);
  return sub_1C2C6EE50(v14);
}

uint64_t sub_1C2CC4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-v10];
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E418);
  sub_1C2CC8650();
  sub_1C2E746E4();
  v12 = sub_1C2C94F38(&qword_1EC05E3D8, &qword_1EC05E3D0);
  sub_1C2E74C14();
  (*(v5 + 8))(v7, v4);
  v22 = v4;
  v23 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1C2E74C64();
  (*(v9 + 8))(v11, v8);
  v13 = sub_1C2E74F44();
  LOBYTE(v8) = sub_1C2E74454();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3C0) + 36);
  *v14 = v13;
  *(v14 + 8) = v8;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E3A8) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v17 = *MEMORY[0x1E697DBA8];
  v18 = sub_1C2E730D4();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  result = swift_getKeyPath();
  *v15 = result;
  return result;
}

uint64_t sub_1C2CC478C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(a1 + 16);
  sub_1C2E75E44();
  v6 = sub_1C2E75E74();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1C2D22B9C(0, 0, v4, &unk_1C2E7CA98, v7);
}

uint64_t sub_1C2CC48A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  return v1;
}

uint64_t sub_1C2CC495C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel____lazy_storage___messageStoreController;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel____lazy_storage___messageStoreController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel____lazy_storage___messageStoreController);
  }

  else
  {
    v3 = v0;
    sub_1C2E729D4();
    v2 = sub_1C2E729C4();
    sub_1C2E729A4();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C2CC49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_1C2E72974();
  v4[5] = swift_task_alloc();
  v5 = sub_1C2E729E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1C2E72A04();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1C2E72A24();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2CC4B8C, 0, 0);
}

uint64_t sub_1C2CC4B8C()
{
  v25 = v0[15];
  v26 = v0[14];
  v2 = v0[12];
  v1 = v0[13];
  v27 = v0[8];
  v28 = v0[7];
  v3 = v0[3];
  v29 = v0[6];
  v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel_contact);
  v5 = CNContact.handleStrings.getter();

  if (*(v3 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel_appType))
  {
    v6 = &unk_1F4297368;
  }

  else
  {
    v6 = &unk_1F4297398;
  }

  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E358);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2E7C4C0;
  v11 = (v10 + v9);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *v11 = v12;
  v13 = *(v1 + 104);
  (v13)(v11, *MEMORY[0x1E699C000], v2);
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v11 + v8) = v14;
  (v13)(v11 + v8, *MEMORY[0x1E699C010], v2);
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1F42973C0;
  *(v11 + 2 * v8) = v15;
  (v13)(v11 + 2 * v8, *MEMORY[0x1E699C008], v2);
  v8 *= 3;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1F42973E8;
  *(v11 + v8) = v16;
  (v13)(v11 + v8, *MEMORY[0x1E699BFF8], v2);
  *(v7 + 16) = v10;
  *v25 = v7;
  v13();
  (*(v1 + 16))(v26, v25, v2);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E360) + 48);
  v18 = *MEMORY[0x1E699BF50];
  v19 = sub_1C2E72984();
  (*(*(v19 - 8) + 104))(v27, v18, v19);
  v20 = *MEMORY[0x1E699BF60];
  v21 = sub_1C2E72994();
  (*(*(v21 - 8) + 104))(v27 + v17, v20, v21);
  (*(v28 + 104))(v27, *MEMORY[0x1E699BFB8], v29);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1C2CC6C78(&qword_1EC05E368, 255, MEMORY[0x1E699BF10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E370);
  sub_1C2C94F38(&qword_1EC05E378, &qword_1EC05E370);
  sub_1C2E76464();
  sub_1C2E729F4();
  v0[16] = sub_1C2CC495C();
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_1C2CC5030;
  v23 = v0[11];

  return MEMORY[0x1EEE03BF8](v23);
}

uint64_t sub_1C2CC5030(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1C2CC55B8;
  }

  else
  {
    v4 = sub_1C2CC516C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C2CC516C()
{
  v25 = v0;
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2E72B44();
  __swift_project_value_buffer(v1, qword_1EC075B88);

  v2 = sub_1C2E72B24();
  v3 = sub_1C2E75FE4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = sub_1C2E72964();
    v8 = MEMORY[0x1C69267B0](v4, v7);
    v10 = sub_1C2E43AC0(v8, v9, &v24);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1C2C6B000, v2, v3, "CommunicationDetails: Fetched audio messages: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1C6927DF0](v6, -1, -1);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  v11 = v0[18];
  if (v11 >> 62)
  {
    v12 = sub_1C2E764E4();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_15:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_7:
  v24 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C2E76634();
  if (v12 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v16 = 0;
  v17 = v0[18] + 32;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C6927010](v16, v0[18]);
    }

    else
    {
      v18 = *(v17 + 8 * v16);
    }

    ++v16;
    sub_1C2CC7AA4(v18);
    sub_1C2E76614();
    sub_1C2E76644();
    sub_1C2E76654();
    sub_1C2E76624();
  }

  while (v12 != v16);

  v19 = v24;
LABEL_16:
  v0[20] = v19;
  sub_1C2E75E34();
  v0[21] = sub_1C2E75E24();
  v20 = sub_1C2E75DD4();
  v22 = v21;
  v13 = sub_1C2CC5434;
  v14 = v20;
  v15 = v22;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1C2CC5434()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[3];

  sub_1C2CC57C8(v3, v1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1C2CC54EC, 0, 0);
  }
}

uint64_t sub_1C2CC54EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2CC55B8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v4 = v0[19];
  v5 = sub_1C2E72B44();
  __swift_project_value_buffer(v5, qword_1EC075B88);
  v6 = v4;
  v7 = sub_1C2E72B24();
  v8 = sub_1C2E75FE4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1C2C6B000, v7, v8, "CommunicationDetails: trying to fetch all audio messages, but hitting error: %@", v11, 0xCu);
    sub_1C2C73644(v12, &unk_1EC062DD0);
    MEMORY[0x1C6927DF0](v12, -1, -1);
    MEMORY[0x1C6927DF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C2CC57C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_1C2CF86C8(a2);
  v5 = _s16CommunicationsUI31CommunicationDetailsTimeSectionO16groupItemsByDateySDyACSayAA0cdJ5Model_pGGAFFZ_0(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v12 = v2;
    v7 = sub_1C2CC6F70(v6, 0);
    v8 = sub_1C2CC7924(v11, (v7 + 4), v6, v5);
    v3 = v11[4];

    sub_1C2CC8218();
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_10;
    }

    v3 = v12;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v7;
  sub_1C2CC6D18(v11);
  if (v3)
  {
LABEL_10:

    __break(1u);
    return result;
  }

  v9 = sub_1C2CC5954(v11[0]);

  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11[0] = v9;

  return sub_1C2E72E74();
}

uint64_t sub_1C2CC5954(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4D44(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 40; ; i += 16)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB08);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C2CA4D44((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1C2CC5AA8()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel__groupedItems;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E398);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1C2CC5B98()
{
  sub_1C2CC5C48();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C2CC5C48()
{
  if (!qword_1EC05E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2F8);
    v0 = sub_1C2E72E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05E2F0);
    }
  }
}

uint64_t sub_1C2CC5CAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommunicationDetailsVoiceMailViewModel(0);
  result = sub_1C2E72DC4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2CC5D3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{

  sub_1C2CC7F98(a4, a5, a6);
}

uint64_t sub_1C2CC5DE8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v71 = a2;
  v3 = sub_1C2E71844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_date;
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v7, v3);
  v8 = static Date.faceTimeDateString(from:showToday:)(v6, 0);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v115 = v8;
  v116 = v10;
  sub_1C2C74960();
  v11 = sub_1C2E748A4();
  v13 = v12;
  v15 = v14;
  sub_1C2E74F84();
  v16 = sub_1C2E74784();
  v74 = v17;
  v75 = v16;
  v19 = v18;
  v70 = v20;

  sub_1C2C72340(v11, v13, v15 & 1);

  v73 = sub_1C2E74464();
  sub_1C2E73034();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v72 = v19 & 1;
  LOBYTE(v115) = v19 & 1;
  LOBYTE(v108) = 0;
  v29 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_transcription + 8);
  v115 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_transcription);
  v116 = v29;

  v30 = sub_1C2E748A4();
  v32 = v31;
  LOBYTE(v6) = v33;
  sub_1C2E74514();
  v34 = sub_1C2E747F4();
  v36 = v35;
  LOBYTE(v13) = v37;

  sub_1C2C72340(v30, v32, v6 & 1);

  sub_1C2E74FA4();
  v38 = sub_1C2E74784();
  v40 = v39;
  LOBYTE(v6) = v41;
  v43 = v42;

  sub_1C2C72340(v34, v36, v13 & 1);

  LOBYTE(v34) = sub_1C2E74474();
  sub_1C2E73034();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LOBYTE(v108) = v6 & 1;
  LOBYTE(v76[0]) = 0;
  LOBYTE(v30) = sub_1C2E74464();
  sub_1C2E73034();
  *&v104 = v75;
  *(&v104 + 1) = v74;
  LOBYTE(v105) = v72;
  *(&v105 + 1) = *v103;
  DWORD1(v105) = *&v103[3];
  v52 = v70;
  *(&v105 + 1) = v70;
  LOBYTE(v106) = v73;
  DWORD1(v106) = *&v102[3];
  *(&v106 + 1) = *v102;
  *(&v106 + 1) = v22;
  *&v107[0] = v24;
  *(&v107[0] + 1) = v26;
  *&v107[1] = v28;
  BYTE8(v107[1]) = 0;
  *(v90 + 9) = *(v107 + 9);
  v89 = v106;
  v90[0] = v107[0];
  v87 = v104;
  v88 = v105;
  *&v108 = v38;
  *(&v108 + 1) = v40;
  LOBYTE(v109) = v6 & 1;
  DWORD1(v109) = *&v99[3];
  *(&v109 + 1) = *v99;
  *(&v109 + 1) = v43;
  LOBYTE(v110) = v34;
  DWORD1(v110) = *&v98[3];
  v53 = *v98;
  *(&v110 + 1) = *v98;
  *(&v110 + 1) = v45;
  *&v111 = v47;
  *(&v111 + 1) = v49;
  *&v112 = v51;
  BYTE8(v112) = 0;
  HIDWORD(v112) = *(v101 + 3);
  *(&v112 + 9) = v101[0];
  LOBYTE(v113) = v30;
  DWORD1(v113) = *&v100[3];
  *(&v113 + 1) = *v100;
  *(&v113 + 1) = v54;
  *&v114[0] = v55;
  *(&v114[0] + 1) = v56;
  *&v114[1] = v57;
  BYTE8(v114[1]) = 0;
  v93 = v110;
  v94 = v111;
  v91 = v108;
  v92 = v109;
  *(v97 + 9) = *(v114 + 9);
  v96 = v113;
  v97[0] = v114[0];
  v95 = v112;
  v58 = v104;
  v59 = v105;
  v60 = v107[0];
  v61 = v71;
  v71[2] = v106;
  v61[3] = v60;
  *v61 = v58;
  v61[1] = v59;
  v62 = v90[1];
  v63 = v91;
  v64 = v93;
  v61[6] = v92;
  v61[7] = v64;
  v61[4] = v62;
  v61[5] = v63;
  v65 = v94;
  v66 = v95;
  *(v61 + 185) = *(v97 + 9);
  v67 = v97[0];
  v61[10] = v96;
  v61[11] = v67;
  v61[8] = v65;
  v61[9] = v66;
  v115 = v38;
  v116 = v40;
  v117 = v6 & 1;
  *v118 = *v99;
  *&v118[3] = *&v99[3];
  v119 = v43;
  v120 = v34;
  *v121 = v53;
  *&v121[3] = *&v98[3];
  v122 = v45;
  v123 = v47;
  v124 = v49;
  v125 = v51;
  v126 = 0;
  *&v127[3] = *(v101 + 3);
  *v127 = v101[0];
  v128 = v30;
  *&v129[3] = *&v100[3];
  *v129 = *v100;
  v130 = v54;
  v131 = v55;
  v132 = v56;
  v133 = v57;
  v134 = 0;
  sub_1C2C736A4(&v104, v76, &qword_1EC05E518);
  sub_1C2C736A4(&v108, v76, &qword_1EC05E520);
  sub_1C2C73644(&v115, &qword_1EC05E520);
  v76[0] = v75;
  v76[1] = v74;
  v77 = v72;
  *v78 = *v103;
  *&v78[3] = *&v103[3];
  v79 = v52;
  v80 = v73;
  *v81 = *v102;
  *&v81[3] = *&v102[3];
  v82 = v22;
  v83 = v24;
  v84 = v26;
  v85 = v28;
  v86 = 0;
  return sub_1C2C73644(v76, &qword_1EC05E518);
}

double sub_1C2CC6390@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C2E73DD4();
  v27 = 0;
  sub_1C2CC5DE8(v3, &v14);
  v38 = v24;
  v39[0] = v25[0];
  *(v39 + 9) = *(v25 + 9);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v28 = v14;
  v29 = v15;
  v40[9] = v23;
  v40[10] = v24;
  v41[0] = v25[0];
  *(v41 + 9) = *(v25 + 9);
  v40[6] = v20;
  v40[7] = v21;
  v40[8] = v22;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;
  v40[5] = v19;
  v40[0] = v14;
  v40[1] = v15;
  sub_1C2C736A4(&v28, &v13, &qword_1EC05E510);
  sub_1C2C73644(v40, &qword_1EC05E510);
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39[0];
  v26[12] = *(v39 + 9);
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(&v26[8] + 7) = v36;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  *(&v26[4] + 7) = v32;
  *(v26 + 7) = v28;
  v5 = v26[8];
  *(a1 + 161) = v26[9];
  v6 = v26[11];
  *(a1 + 177) = v26[10];
  *(a1 + 193) = v6;
  *(a1 + 209) = v26[12];
  v7 = v26[4];
  *(a1 + 97) = v26[5];
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = v26[0];
  *(a1 + 33) = v26[1];
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v27;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 17) = v9;
  return result;
}

uint64_t sub_1C2CC6618()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_id;
  v2 = sub_1C2E718A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_date;
  v4 = sub_1C2E71844();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1C2CC6740()
{
  result = sub_1C2E718A4();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71844();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C2CC6884()
{
  result = qword_1EC05E320;
  if (!qword_1EC05E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E320);
  }

  return result;
}

unint64_t sub_1C2CC68DC()
{
  result = qword_1EC05E328;
  if (!qword_1EC05E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E328);
  }

  return result;
}

unint64_t sub_1C2CC6934()
{
  result = qword_1EC05E330;
  if (!qword_1EC05E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E330);
  }

  return result;
}

unint64_t sub_1C2CC698C()
{
  result = qword_1EC05E338;
  if (!qword_1EC05E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E338);
  }

  return result;
}

uint64_t sub_1C2CC6A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_date;
  swift_beginAccess();
  v4 = sub_1C2E71844();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C2CC6AB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_date;
  swift_beginAccess();
  v4 = sub_1C2E71844();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C2CC6BA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_id;
  v5 = sub_1C2E718A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C2CC6C78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C2CC6CC4()
{
  result = qword_1EC05E350;
  if (!qword_1EC05E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E350);
  }

  return result;
}

uint64_t sub_1C2CC6D18(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C2CC7A7C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1C2E76764();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB18);
      v7 = sub_1C2E75DA4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C2CC6FF4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C2CC6E74@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  *a1 = v3;
  return result;
}

uint64_t sub_1C2CC6EF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C2E72E74();
}

void *sub_1C2CC6F70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1C2CC6FF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1C2CC780C(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1C2CC757C((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2CC7820(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C2CC7820((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_1C2CC757C((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C2CC780C(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1C2CC7780(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1C2CC757C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1C2CC7780(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C2CC780C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1C2CC7820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C2CC7924(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C2CC7AA4(uint64_t a1)
{
  v33 = a1;
  v1 = sub_1C2E71844();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E388);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1C2E72A64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E390);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = v33;
  v32 = sub_1C2E71684();
  v34 = v20;

  sub_1C2E72944();
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_1C2C73644(v16, &qword_1EC05E390);
  }

  else
  {
    (*(v11 + 16))(v13, v16, v10);
    sub_1C2C73644(v16, &qword_1EC05E390);
    v23 = sub_1C2E72A54();
    v25 = v27;
    (*(v11 + 8))(v13, v10);
    if (sub_1C2E75CD4() >= 1)
    {
      goto LABEL_9;
    }
  }

  sub_1C2E728F4();
  v21 = sub_1C2E72A44();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) != 1)
  {
    v23 = sub_1C2E72A34();
    v25 = v24;
    (*(v22 + 8))(v9, v21);
    if (sub_1C2E75CD4() < 1)
    {

      goto LABEL_7;
    }

LABEL_9:

    v26 = v23;
    goto LABEL_10;
  }

  sub_1C2C73644(v9, &qword_1EC05E388);
LABEL_7:
  v25 = v34;
  v26 = v32;
LABEL_10:
  sub_1C2E72904();
  v28 = v35;
  (*(v2 + 16))(v35, v6, v1);
  type metadata accessor for CommunicationDetailsVoiceMailCellViewModel(0);
  v29 = swift_allocObject();
  sub_1C2E71894();
  (*(v2 + 8))(v6, v1);
  v30 = (v29 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_transcription);
  *v30 = v26;
  v30[1] = v25;
  (*(v2 + 32))(v29 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_date, v28, v1);
  *(v29 + OBJC_IVAR____TtC16CommunicationsUI42CommunicationDetailsVoiceMailCellViewModel_message) = v19;
  return v29;
}

uint64_t sub_1C2CC7F98(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2E72B44();
  __swift_project_value_buffer(v10, qword_1EC075B88);
  v11 = sub_1C2E72B24();
  v12 = sub_1C2E75FE4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2C6B000, v11, v12, a1, v13, 2u);
    MEMORY[0x1C6927DF0](v13, -1, -1);
  }

  sub_1C2E75E44();
  v14 = sub_1C2E75E74();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;

  sub_1C2D22B9C(0, 0, v9, a3, v15);
}

uint64_t sub_1C2CC8164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2CC49D8(a1, v4, v5, v6);
}

uint64_t sub_1C2CC8220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2CC49D8(a1, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_20FaceTimeMessageStore0C0CIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2CC8300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C2CC8348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2CC83C4()
{
  result = qword_1EC05E3B0;
  if (!qword_1EC05E3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3A8);
    sub_1C2CC847C();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E3B0);
  }

  return result;
}

unint64_t sub_1C2CC847C()
{
  result = qword_1EC05E3B8;
  if (!qword_1EC05E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3D0);
    sub_1C2C94F38(&qword_1EC05E3D8, &qword_1EC05E3D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E3B8);
  }

  return result;
}

unint64_t sub_1C2CC85E8()
{
  result = qword_1EC05E3F0;
  if (!qword_1EC05E3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E3F0);
  }

  return result;
}

unint64_t sub_1C2CC8650()
{
  result = qword_1EC05E420;
  if (!qword_1EC05E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E418);
    sub_1C2CC86D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E420);
  }

  return result;
}

unint64_t sub_1C2CC86D4()
{
  result = qword_1EC05E428;
  if (!qword_1EC05E428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E430);
    sub_1C2CC876C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E428);
  }

  return result;
}

unint64_t sub_1C2CC876C()
{
  result = qword_1EC05E438;
  if (!qword_1EC05E438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E448);
    sub_1C2CC882C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E438);
  }

  return result;
}

unint64_t sub_1C2CC882C()
{
  result = qword_1EC05E450;
  if (!qword_1EC05E450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E448);
    sub_1C2CC88E4();
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E450);
  }

  return result;
}

unint64_t sub_1C2CC88E4()
{
  result = qword_1EC05E458;
  if (!qword_1EC05E458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E460);
    sub_1C2CC899C();
    sub_1C2C94F38(&qword_1EC05E490, &qword_1EC05E498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E458);
  }

  return result;
}

unint64_t sub_1C2CC899C()
{
  result = qword_1EC05E468;
  if (!qword_1EC05E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E470);
    sub_1C2CC8A54();
    sub_1C2C94F38(&qword_1EC05E480, &qword_1EC05E488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E468);
  }

  return result;
}

unint64_t sub_1C2CC8A54()
{
  result = qword_1EC05E478;
  if (!qword_1EC05E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E478);
  }

  return result;
}

unint64_t sub_1C2CC8ADC()
{
  result = qword_1EC05E4B8;
  if (!qword_1EC05E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E4B8);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2CC8B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E4E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2CC8C1C()
{
  result = qword_1EC05E4F8;
  if (!qword_1EC05E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E408);
    sub_1C2CC8CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E4F8);
  }

  return result;
}

unint64_t sub_1C2CC8CA8()
{
  result = qword_1EC05E500;
  if (!qword_1EC05E500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E400);
    sub_1C2CC8D60();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E500);
  }

  return result;
}

unint64_t sub_1C2CC8D60()
{
  result = qword_1EC05E508;
  if (!qword_1EC05E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E3A0);
    sub_1C2CC85E8();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E508);
  }

  return result;
}

uint64_t sub_1C2CC8E74()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();

  return v2;
}

uint64_t sub_1C2CC8F44@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2CD1B8C();
  result = sub_1C2E71D84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2CC8FA8()
{
  result = type metadata accessor for Memo.ValueHolder();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C2CC908C()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1C2E71684();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  return v0;
}

void (*sub_1C2CC9178(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E71DD4();
  return sub_1C2CC3834;
}

uint64_t sub_1C2CC9200@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactDetailsTab();
  sub_1C2CD1BE0(&qword_1EC05E690, v2, type metadata accessor for ContactDetailsTab);
  result = sub_1C2E71E24();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C2CC9278@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_getKeyPath();
  sub_1C2CC93B8();

  v4 = v1 + *(*v1 + 112);
  swift_beginAccess();
  v5 = type metadata accessor for Memo.ValueHolder();
  return (*(*(v3 - 8) + 16))(a1, v4 + *(v5 + 44), v3);
}

uint64_t sub_1C2CC9464()
{

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Memo.ValueHolder();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_1C2E71AA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1C2CC95B4(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1C2CF6DEC(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_1C2C6E1B4(0, &qword_1EC05E6A0);
        v4 = v3;
        v5 = v2;
        v6 = sub_1C2E76234();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C2CC964C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = *a1;
  v10 = a1[1];
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2E72B44();
  __swift_project_value_buffer(v11, qword_1EC075B88);
  v12 = sub_1C2E72B24();
  v13 = sub_1C2E75FE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C2C6B000, v12, v13, "CommunicationDetailsContactsTabView.state updating...", v14, 2u);
    MEMORY[0x1C6927DF0](v14, -1, -1);
  }

  sub_1C2CC9818(v9, a2, v8);
  if (v10)
  {
    type metadata accessor for RecentsCallHistoryHeaderViewModel(0);
    v15 = swift_allocObject();
    sub_1C2CCFBB0(v10);
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1C2CD6FD0(v9, v10, a2);
  sub_1C2C71D5C(v8, a3, &qword_1EC05E6A8);
  result = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  *(a3 + *(result + 20)) = v15;
  *(a3 + *(result + 24)) = v16;
  return result;
}

uint64_t sub_1C2CC9818@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C2E715D4();
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = v11;
    v15 = sub_1C2E764E4();
    v11 = v18;
    if (v15 == 1)
    {
      result = sub_1C2E764E4();
      v11 = v18;
      if (result)
      {
        goto LABEL_3;
      }
    }

LABEL_10:
    v16 = *(v11 + 56);

    return v16(a3, 1, 1, v9);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v18 = v11;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C6927010](0, a1);
    if (a2)
    {
LABEL_6:
      sub_1C2CEA828(v14, v8);
      if ((*(v18 + 48))(v8, 1, v9) != 1)
      {

        (*(v18 + 32))(v13, v8, v9);
LABEL_17:
        (*(v18 + 32))(a3, v13, v9);
        return (*(v18 + 56))(a3, 0, 1, v9);
      }

LABEL_15:
      sub_1C2E715C4();
      if ((*(v18 + 48))(v8, 1, v9) != 1)
      {
        sub_1C2C73644(v8, &qword_1EC05E6A8);
      }

      goto LABEL_17;
    }

LABEL_14:
    (*(v18 + 56))(v8, 1, 1, v9);
    goto LABEL_15;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CC9B08(uint64_t a1)
{
  v2 = sub_1C2E76474();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1C2CD7F7C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1C2CC9B84@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E73414();
  sub_1C2CD1BE0(&qword_1EC05B9E8, 255, MEMORY[0x1E697E3C0]);
  sub_1C2E75F44();
  sub_1C2E75F64();
  if (v9[4] == v9[0])
  {
    v2 = sub_1C2E73344();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1C2E75F84();
    v6 = v5;
    v7 = sub_1C2E73344();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1C2CC9D20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for CommunicationDetailsContactsTabView(0);
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v4;
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentsCallHistoryHeaderView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9D0);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E998);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v40 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9D8);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E990);
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 64);
  v57 = *(v1 + 56);
  v58 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220);
  sub_1C2E75184();
  v20 = v59;
  v54 = &type metadata for CommunicationDetailsContactsTabView.Configuration;
  v55 = v16;
  v56 = sub_1C2CD8150();
  swift_getKeyPath();
  v57 = v20;
  sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210);
  sub_1C2E71A64();

  v21 = v20 + *(*v20 + 112);
  swift_beginAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0);
  sub_1C2CD88B0(v21 + *(v22 + 44), v18, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);

  v23 = *&v18[*(v16 + 20)];

  sub_1C2CD8918(v18, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);
  if (v23)
  {

    v24 = sub_1C2E71C74();
    if (v24 >> 62)
    {
      v25 = sub_1C2E764E4();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v5 + 20)) = v23;
    *(v7 + *(v5 + 24)) = v25 == 1;
    sub_1C2E744B4();
    v26 = [objc_opt_self() currentDevice];
    [v26 userInterfaceIdiom];

    sub_1C2CD1BE0(&qword_1EC05E9A8, 255, type metadata accessor for RecentsCallHistoryHeaderView);
    v27 = v41;
    sub_1C2E74A24();
    sub_1C2CD8918(v7, type metadata accessor for RecentsCallHistoryHeaderView);
    (*(v42 + 32))(v11, v27, v43);
    v11[*(v44 + 36)] = 0;
    v28 = v49;
    sub_1C2CD88B0(v2, v49, type metadata accessor for CommunicationDetailsContactsTabView);
    v29 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v30 = swift_allocObject();
    sub_1C2CD782C(v28, v30 + v29);
    sub_1C2CD8720();
    v31 = v45;
    sub_1C2E749F4();

    sub_1C2C73644(v11, &qword_1EC05E998);
    v32 = v52;
    v33 = &v15[*(v52 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
    v35 = *MEMORY[0x1E697DBA8];
    v36 = sub_1C2E730D4();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = swift_getKeyPath();
    (*(v48 + 32))(v15, v31, v50);
    v37 = v53;
    sub_1C2C71D5C(v15, v53, &qword_1EC05E990);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v32 = v52;
    v37 = v53;
  }

  return (*(v51 + 56))(v37, v38, 1, v32);
}

uint64_t sub_1C2CCA4BC(uint64_t a1)
{
  v2 = sub_1C2E71C74();
  if (v2 >> 62)
  {
    v3 = sub_1C2E764E4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 <= 1 && *(a1 + 8) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    return sub_1C2E75194();
  }

  return result;
}

uint64_t sub_1C2CCA57C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v3 = sub_1C2E74224();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommunicationDetailsContactsTabView(0);
  v123 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = v6;
  v121 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E74EC4();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E728);
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v102 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E730);
  MEMORY[0x1EEE9AC00](v127);
  v115 = &v102 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E738);
  v14 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v126 = &v102 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E740);
  v119 = *(v16 - 8);
  v120 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - v17;
  v128 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E748);
  sub_1C2C94F38(&qword_1EC05E750, &qword_1EC05E748);
  v118 = v18;
  sub_1C2E71BF4();
  v19 = *(v1 + 72);
  v20 = sub_1C2E71C74();
  if (v20 >> 62)
  {
    v21 = sub_1C2E764E4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v2;
  v116 = v12;

  v107 = &v102;
  MEMORY[0x1EEE9AC00](v22);
  v125 = (&v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = v19;
  if (v21 < 2)
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E758);
    v106 = &v102;
    v48 = v105;
    MEMORY[0x1EEE9AC00](v105);
    v50 = &v102 - v49;
    v51 = sub_1C2E75744();
    v53 = v52;
    v54 = &v50[*(v48 + 9)];
    sub_1C2C6E1B4(0, &qword_1EC05CA98);
    v55 = v121;
    sub_1C2CD88B0(v122, v121, type metadata accessor for CommunicationDetailsContactsTabView);
    v56 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v57 = swift_allocObject();
    sub_1C2CD782C(v55, v57 + v56);
    sub_1C2E73264();
    v58 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E760) + 36)];
    *v58 = v51;
    v58[1] = v53;
    v60 = v118;
    v59 = v119;
    v61 = v120;
    (*(v119 + 16))(v50, v118, v120);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E768);
    v104 = &v102;
    MEMORY[0x1EEE9AC00](v62);
    sub_1C2C736A4(v50, &v102 - v63, &qword_1EC05E758);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E770);
    sub_1C2CD7900();
    sub_1C2CD7A10();
    sub_1C2E73F44();
    sub_1C2C73644(v50, &qword_1EC05E758);
    (*(v59 + 8))(v60, v61);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E770);
    v103 = &v102;
    v104 = v23;
    MEMORY[0x1EEE9AC00](v23);
    v102 = &v102 - v24;
    v25 = sub_1C2E75744();
    v27 = v26;
    v28 = sub_1C2E71C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E800);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C2E7A110;
    v30 = *MEMORY[0x1E69814E0];
    v31 = v106;
    v32 = v105[13];
    (v32)(v9, v30, v106);
    *(v29 + 32) = sub_1C2E74FB4();
    (v32)(v9, v30, v31);
    *(v29 + 40) = sub_1C2E74FB4();
    v33 = sub_1C2D32960(v28, v29);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = sub_1C2E73674();
    LOBYTE(v31) = sub_1C2E74454();
    *&v131 = v33;
    *(&v131 + 1) = v35;
    *&v132 = v37;
    *(&v132 + 1) = v39;
    *&v133 = v40;
    BYTE8(v133) = v31;
    *(&v133 + 9) = *v130;
    HIDWORD(v133) = *&v130[3];
    *&v134 = v25;
    *(&v134 + 1) = v27;
    v41 = v27;
    v42 = v102;
    (*(v119 + 16))(v102, v118, v120);
    v43 = (v42 + *(v104 + 9));
    v44 = v132;
    *v43 = v131;
    v43[1] = v44;
    v45 = v134;
    v43[2] = v133;
    v43[3] = v45;
    v135 = v33;
    v136 = v35;
    v137 = v37;
    v138 = v39;
    v139 = v40;
    v140 = v31;
    *v141 = *v130;
    *&v141[3] = *&v130[3];
    v142 = v25;
    v143 = v41;
    sub_1C2C736A4(&v131, &v129, &qword_1EC05E790);
    sub_1C2C73644(&v135, &qword_1EC05E790);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E768);
    MEMORY[0x1EEE9AC00](v46);
    sub_1C2C736A4(v42, &v102 - v47, &qword_1EC05E770);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E758);
    sub_1C2CD7900();
    sub_1C2CD7A10();
    sub_1C2E73F44();
    sub_1C2C73644(v42, &qword_1EC05E770);
    (*(v119 + 8))(v118, v120);
  }

  v64 = v126;
  sub_1C2C71D5C(v125, v126, &qword_1EC05E738);
  v65 = [objc_opt_self() currentDevice];
  v66 = [v65 userInterfaceIdiom];

  v67 = v116;
  v68 = v117;
  v69 = v115;
  if (v66)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7A8);
    v125 = &v102;
    MEMORY[0x1EEE9AC00](v70);
    sub_1C2C736A4(v64, &v102 - v71, &qword_1EC05E738);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7B0);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7B8);
    v73 = sub_1C2CD7AC8();
    v74 = sub_1C2C94F38(&qword_1EC05E7C8, &qword_1EC05E7B8);
    v135 = v109;
    v136 = v72;
    v137 = v73;
    v138 = v74;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    v76 = v121;
    v75 = v122;
    v77 = v123;
  }

  else
  {
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7B0);
    v125 = &v102;
    v79 = *(v78 - 8);
    v119 = v78;
    v120 = v79;
    MEMORY[0x1EEE9AC00](v78);
    v81 = &v102 - v80;
    v75 = v122;
    v82 = *(v122 + 88);
    LOBYTE(v131) = *(v122 + 80);
    *(&v131 + 1) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    sub_1C2E751A4();
    v103 = v136;
    v104 = v135;
    LODWORD(v105) = v137;
    v76 = v121;
    sub_1C2CD88B0(v75, v121, type metadata accessor for CommunicationDetailsContactsTabView);
    v83 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v84 = swift_allocObject();
    sub_1C2CD782C(v76, v84 + v83);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7B8);
    v107 = sub_1C2CD7AC8();
    v118 = sub_1C2C94F38(&qword_1EC05E7C8, &qword_1EC05E7B8);
    v102 = v81;
    v85 = v109;
    sub_1C2E74AA4();

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7A8);
    v105 = &v102;
    MEMORY[0x1EEE9AC00](v86);
    v87 = v119;
    v88 = v120;
    (*(v120 + 16))(&v102 - v89, v81, v119);
    swift_storeEnumTagMultiPayload();
    v135 = v85;
    v136 = v106;
    v90 = v117;
    v137 = v107;
    v138 = v118;
    swift_getOpaqueTypeConformance2();
    v77 = v123;
    v67 = v116;
    v69 = v115;
    sub_1C2E73F44();
    v91 = v88;
    v68 = v90;
    (*(v91 + 8))(v102, v87);
  }

  sub_1C2C73644(v126, &qword_1EC05E738);
  v135 = sub_1C2E71C74();
  sub_1C2CD88B0(v75, v76, type metadata accessor for CommunicationDetailsContactsTabView);
  v92 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v93 = swift_allocObject();
  sub_1C2CD782C(v76, v93 + v92);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7D0);
  v95 = sub_1C2CD7D3C();
  v96 = sub_1C2CD7E5C();
  sub_1C2E74DD4();

  sub_1C2C73644(v69, &qword_1EC05E730);
  sub_1C2E74214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A110;
  v98 = sub_1C2E74434();
  *(inited + 32) = v98;
  v99 = sub_1C2E74414();
  *(inited + 33) = v99;
  sub_1C2E74424();
  sub_1C2E74424();
  if (sub_1C2E74424() != v98)
  {
    sub_1C2E74424();
  }

  sub_1C2E74424();
  if (sub_1C2E74424() != v99)
  {
    sub_1C2E74424();
  }

  v135 = v127;
  v136 = v94;
  v137 = v95;
  v138 = v96;
  swift_getOpaqueTypeConformance2();
  v100 = v111;
  sub_1C2E74AF4();
  (*(v113 + 8))(v68, v114);
  return (*(v110 + 8))(v67, v100);
}

unint64_t sub_1C2CCB668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v102 = sub_1C2E74024();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = (&v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E868);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E870);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v94 - v9;
  v10 = type metadata accessor for CommunicationDetailsContactsTabView(0);
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = v11;
  v127 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E878);
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v94 - v12;
  v106 = sub_1C2E740B4();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E880);
  v107 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v105 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E888);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v94 - v19;
  v21 = sub_1C2E73C94();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E890);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v94 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E898);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v29 = &v94 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8A0);
  MEMORY[0x1EEE9AC00](v115);
  v31 = &v94 - v30;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8A8);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v131 = &v94 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8B0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v120 = &v94 - v34;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8B8);
  v35 = MEMORY[0x1EEE9AC00](v118);
  v108 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v117 = &v94 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v94 - v39;
  v129 = a1;
  v132 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8C0);
  sub_1C2CD81C8();
  sub_1C2E746E4();
  sub_1C2C94F38(&qword_1EC05E8F8, &qword_1EC05E890);
  v112 = v29;
  sub_1C2E74C74();
  (*(v25 + 8))(v27, v24);
  v40 = *(v22 + 56);
  v40(v20, 1, 1, v21);
  v116 = objc_opt_self();
  v41 = [v116 currentDevice];
  [v41 userInterfaceIdiom];

  sub_1C2C73644(v20, &qword_1EC05E888);
  v40(v20, 1, 1, v21);
  sub_1C2C736A4(v20, v18, &qword_1EC05E888);
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
    sub_1C2C73644(v18, &qword_1EC05E888);
    v42 = v111;
    sub_1C2E73C84();
    sub_1C2C73644(v20, &qword_1EC05E888);
  }

  else
  {
    sub_1C2C73644(v20, &qword_1EC05E888);
    v42 = v111;
    (*(v22 + 32))(v111, v18, v21);
  }

  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E900) + 36);
  (*(v22 + 16))(&v31[v43], v42, v21);
  v40(&v31[v43], 0, 1, v21);
  (*(v113 + 32))(v31, v112, v114);
  KeyPath = swift_getKeyPath();
  v45 = v115;
  v46 = &v31[*(v115 + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E908) + 28);
  v48 = v42;
  v49 = v45;
  (*(v22 + 32))(v46 + v47, v48, v21);
  v40(v46 + v47, 0, 1, v21);
  *v46 = KeyPath;
  v50 = sub_1C2CD8358();
  v51 = v131;
  sub_1C2E74C64();
  sub_1C2C73644(v31, &qword_1EC05E8A0);
  v52 = v129;
  v53 = *(v129 + 96);
  v54 = *(v129 + 104);
  v133 = v53;
  v134 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E938);
  sub_1C2E75184();
  v55 = v120;
  if (v135 == 0.0)
  {
    v56 = v119;
    v57 = v121;
    (*(v119 + 16))(v124, v51, v121, v135);
    swift_storeEnumTagMultiPayload();
    v133 = v49;
    v134 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v133 = v57;
    v134 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    v59 = v130;
    v60 = v128;
  }

  else
  {
    v61 = sub_1C2E74444();
    v133 = v53;
    v134 = v54;
    sub_1C2E75184();
    v62 = v135;
    v63 = v103;
    sub_1C2E740A4();
    v133 = v49;
    v134 = v50;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v105;
    v57 = v121;
    MEMORY[0x1C6925480](v61, *&v62, 0, v63, v121, v64);
    (*(v104 + 8))(v63, v106);
    v66 = v107;
    v67 = v123;
    (*(v107 + 16))(v124, v65, v123);
    swift_storeEnumTagMultiPayload();
    v133 = v57;
    v134 = v64;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    (*(v66 + 8))(v65, v67);
    v59 = v130;
    v51 = v131;
    v60 = v128;
    v56 = v119;
  }

  (*(v56 + 8))(v51, v57);
  v68 = v127;
  sub_1C2CD88B0(v52, v127, type metadata accessor for CommunicationDetailsContactsTabView);
  v69 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v70 = swift_allocObject();
  sub_1C2CD782C(v68, v70 + v69);
  v71 = v117;
  sub_1C2C71D5C(v55, v117, &qword_1EC05E8B0);
  v72 = (v71 + *(v118 + 36));
  *v72 = sub_1C2CCD5A4;
  v72[1] = 0;
  v72[2] = sub_1C2CD8538;
  v72[3] = v70;
  sub_1C2C71D5C(v71, v60, &qword_1EC05E8B8);
  v73 = [v116 currentDevice];
  v74 = [v73 userInterfaceIdiom];

  if (!v74)
  {
    goto LABEL_20;
  }

  v75 = sub_1C2E71C74();
  v76 = v75 >> 62 ? sub_1C2E764E4() : *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v76 != 1)
  {
    goto LABEL_20;
  }

  result = sub_1C2E71C74();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v87 = result;
  v88 = sub_1C2E764E4();
  result = v87;
  if (!v88)
  {
LABEL_19:

LABEL_20:
    v86 = 1;
    goto LABEL_21;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x1C6927010](0);
    goto LABEL_16;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(result + 32);
LABEL_16:
    v79 = v78;

    v80 = v79;
    sub_1C2CD96A0(v80, v95);
    v81 = *(v52 + 88);
    LOBYTE(v135) = *(v52 + 80);
    v136 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    sub_1C2E751A4();
    sub_1C2CD1BE0(&qword_1EC05E838, 255, type metadata accessor for CommunicationDetailsCallHistoryView);
    v82 = v97;
    sub_1C2E73464();
    v83 = v100;
    sub_1C2E74014();
    sub_1C2C94F38(&qword_1EC05E950, &qword_1EC05E868);
    sub_1C2CD1BE0(&qword_1EC05E958, 255, MEMORY[0x1E697C720]);
    v84 = v99;
    v85 = v102;
    sub_1C2E74974();

    (*(v101 + 8))(v83, v85);
    (*(v98 + 8))(v82, v84);
    v86 = 0;
LABEL_21:
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E940);
    (*(*(v89 - 8) + 56))(v59, v86, 1, v89);
    v90 = v108;
    sub_1C2C736A4(v60, v108, &qword_1EC05E8B8);
    v91 = v109;
    sub_1C2C736A4(v59, v109, &qword_1EC05E870);
    v92 = v110;
    sub_1C2C736A4(v90, v110, &qword_1EC05E8B8);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E948);
    sub_1C2C736A4(v91, v92 + *(v93 + 48), &qword_1EC05E870);
    sub_1C2C73644(v59, &qword_1EC05E870);
    sub_1C2C73644(v60, &qword_1EC05E8B8);
    sub_1C2C73644(v91, &qword_1EC05E870);
    return sub_1C2C73644(v90, &qword_1EC05E8B8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CCC8E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1C2CCC9AC(a1, a2);
  type metadata accessor for CommunicationDetailsContactsTabView(0);
  v3 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E8C0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);
  sub_1C2E75184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860);
  sub_1C2E75184();
  result = type metadata accessor for ContactCardStyleModifier(0);
  v5 = &v3[*(result + 20)];
  *v5 = v6;
  *(v5 + 1) = v7;
  return result;
}

unint64_t sub_1C2CCC9AC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E960);
  MEMORY[0x1EEE9AC00](v84);
  v4 = (&v73 - v3);
  v5 = sub_1C2E71574();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E71534();
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  MEMORY[0x1EEE9AC00](v90);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v73 - v12;
  v13 = sub_1C2E715D4();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E968);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v73 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E970);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E978);
  v86 = *(v24 - 8);
  v87 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v85 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v73 - v27;
  sub_1C2CC9D20(v23);
  sub_1C2E74464();
  sub_1C2CD85A8();
  v92 = v28;
  sub_1C2E74B74();
  sub_1C2C73644(v23, &qword_1EC05E970);
  v29 = sub_1C2E71C74();
  if (v29 >> 62)
  {
    v30 = sub_1C2E764E4();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v91;
  v83 = v10;
  if (v30 != 1)
  {
    goto LABEL_15;
  }

  result = sub_1C2E71C74();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_15;
  }

  v49 = result;
  v50 = sub_1C2E764E4();
  result = v49;
  if (!v50)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1C6927010](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(result + 32);
LABEL_9:
    v74 = v33;

    v34 = a1[8];
    *&v93 = a1[7];
    *(&v93 + 1) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220);
    v35 = sub_1C2E75184();
    v36 = v96;
    MEMORY[0x1EEE9AC00](v35);
    v37 = v90;
    *(&v73 - 4) = &type metadata for CommunicationDetailsContactsTabView.Configuration;
    *(&v73 - 3) = v37;
    v72 = sub_1C2CD8150();
    swift_getKeyPath();
    *&v93 = v36;
    sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210);
    sub_1C2E71A64();

    v38 = v36 + *(*v36 + 112);
    swift_beginAccess();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0);
    sub_1C2CD88B0(v38 + *(v39 + 44), v10, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);

    v40 = v79;
    sub_1C2C736A4(v10, v79, &qword_1EC05E6A8);
    sub_1C2CD8918(v10, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);
    v41 = v81;
    v42 = v82;
    if ((*(v81 + 48))(v40, 1, v82) != 1)
    {
      v43 = v80;
      (*(v41 + 32))(v80, v40, v42);
      (*(v41 + 16))(v75, v43, v42);
      v95 = 0;
      v93 = 0u;
      v94 = 0u;
      v44 = v41;
      v45 = v74;
      LOBYTE(v72) = 0;
      sub_1C2E71554();
      v46 = v77;
      sub_1C2E71524();
      v47 = v78;
      (*(v78 + 16))(v4, v46, v7);
      swift_storeEnumTagMultiPayload();
      sub_1C2CD1BE0(&qword_1EC05E9B0, 255, MEMORY[0x1E695D000]);
      sub_1C2CD885C();
      v48 = v91;
      sub_1C2E73F44();

      (*(v47 + 8))(v46, v7);
      (*(v44 + 8))(v80, v42);
LABEL_16:
      v54 = a1[8];
      *&v93 = a1[7];
      *(&v93 + 1) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220);
      v55 = sub_1C2E75184();
      v56 = v97;
      MEMORY[0x1EEE9AC00](v55);
      v57 = v90;
      *(&v73 - 4) = &type metadata for CommunicationDetailsContactsTabView.Configuration;
      *(&v73 - 3) = v57;
      v72 = sub_1C2CD8150();
      swift_getKeyPath();
      *&v93 = v56;
      sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210);
      sub_1C2E71A64();

      v58 = v56 + *(*v56 + 112);
      swift_beginAccess();
      v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0) + 44);
      v60 = v83;
      sub_1C2CD88B0(v59, v83, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);

      v61 = *(v60 + *(v57 + 24));

      sub_1C2CD8918(v60, type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState);
      v62 = v85;
      v63 = v86;
      v64 = *(v86 + 16);
      v65 = v87;
      v64(v85, v92, v87);
      v66 = v48;
      v67 = v48;
      v68 = v88;
      sub_1C2C736A4(v67, v88, &qword_1EC05E968);
      v69 = v89;
      v64(v89, v62, v65);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C8);
      sub_1C2C736A4(v68, &v69[*(v70 + 48)], &qword_1EC05E968);
      *&v69[*(v70 + 64)] = v61;

      sub_1C2C73644(v66, &qword_1EC05E968);
      v71 = *(v63 + 8);
      v71(v92, v65);

      sub_1C2C73644(v68, &qword_1EC05E968);
      return (v71)(v62, v65);
    }

    sub_1C2C73644(v40, &qword_1EC05E6A8);
    v31 = v91;
LABEL_15:
    v51 = sub_1C2E71C74();
    v52 = a1[3];
    v53 = a1[4];
    *v4 = v51;
    v4[1] = v52;
    v4[2] = v53;
    swift_storeEnumTagMultiPayload();
    sub_1C2C6EE50(v52);
    sub_1C2CD1BE0(&qword_1EC05E9B0, 255, MEMORY[0x1E695D000]);
    sub_1C2CD885C();
    sub_1C2E73F44();
    v48 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CCD5A4@<X0>(void *a1@<X8>)
{
  result = sub_1C2E732C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2CCD5D0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v2 = [objc_opt_self() currentDevice];
    [v2 userInterfaceIdiom];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E938);
  return sub_1C2E75194();
}

void sub_1C2CCD6D0(void *a1)
{
  v2 = sub_1C2E75C24();
  [a1 setName_];

  [a1 setScale_];
  [a1 setCaptureOnly_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860);
  sub_1C2E75184();
  v3 = sub_1C2E75C24();

  [a1 setGroupName_];
}

uint64_t sub_1C2CCD7C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E808);
  sub_1C2CD9300(&qword_1EC05E810, &qword_1EC05E808, &unk_1C2E7D360, sub_1C2CD7FD8);
  return sub_1C2E73664();
}

unint64_t sub_1C2CCD868@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E820);
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v15 - v3);
  result = sub_1C2E71C74();
  if (result >> 62)
  {
    v12 = result;
    v13 = sub_1C2E764E4();
    result = v12;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:

    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v2);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1C6927010](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);
LABEL_6:
    v7 = v6;

    v8 = v7;
    sub_1C2CD96A0(v8, v4);
    v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E830) + 36);
    sub_1C2E75644();
    v10 = sub_1C2E74454();

    v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E848) + 36)] = v10;
    v11 = (v4 + *(v2 + 36));
    *v11 = sub_1C2CCDAB0;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    sub_1C2C71D5C(v4, a1, &qword_1EC05E820);
    return (*(v16 + 56))(a1, 0, 1, v2);
  }

  __break(1u);
  return result;
}

void sub_1C2CCDAB0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1C2C6E1B4(0, &qword_1EC05CA70);
  sub_1C2C94EBC(&qword_1EC05CA68, &qword_1EC05CA70);
  v2 = sub_1C2E75F14();

  v15 = sub_1C2C747B0(v2);

  if (!v15)
  {
    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = [v3 windows];
  sub_1C2C6E1B4(0, &qword_1EC05E850);
  v5 = sub_1C2E75D74();

  if (v5 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_5;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C6927010](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v14 = [v7 rootViewController];

    if (v14)
    {
      v8 = [v14 presentedViewController];
      if (!v8)
      {

        v12 = v14;
        goto LABEL_14;
      }

      v9 = v8;
      v10 = [v8 view];
      if (v10)
      {
        v11 = v10;
        v13 = [objc_opt_self() clearColor];
        [v11 setBackgroundColor_];

        v12 = v13;
LABEL_14:

        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_13:
    v12 = v15;
    goto LABEL_14;
  }
}

void sub_1C2CCDD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220);
  sub_1C2E75184();
  v4 = sub_1C2E71C74();
  v5 = *(a3 + 16);
  v6 = v16 + *(*v16 + 112);
  swift_beginAccess();
  v7 = *(v6 + 8);
  v8 = v7;
  v9 = v5;

  if (sub_1C2CF6DEC(v10, v4))
  {
    if (v7)
    {
      if (v5)
      {
        sub_1C2C6E1B4(0, &qword_1EC05E6A0);
        v11 = v9;
        v12 = v8;
        v13 = sub_1C2E76234();

        if (v13)
        {

          return;
        }

        goto LABEL_8;
      }
    }

    else if (!v5)
    {

      return;
    }
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v14);
  type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  sub_1C2CD8150();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210);
  sub_1C2E71A54();
}

uint64_t sub_1C2CCE02C()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C2CCE0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C2CCE190(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCE2F4()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C2CCE3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C2CCE458(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCE5BC()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1C2CCE670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1C2CCE720(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCE884()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1C2CCE938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1C2CCE9E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCEB4C()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1C2CCEC00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1C2CCECB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (sub_1C2E767A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1C2CCEE24()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1C2CCEED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_1C2CCEF88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCF0EC()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  return *(v0 + 112);
}

uint64_t sub_1C2CCF190@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_1C2CCF23C(uint64_t result)
{
  if (*(v1 + 112) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2CCF344()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  return *(v0 + 120);
}

uint64_t sub_1C2CCF3E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1C2CCF494(uint64_t result)
{
  if (*(v1 + 120) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }

  return result;
}

id sub_1C2CCF59C()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 128);

  return v1;
}

id sub_1C2CCF650@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 128);
  *a2 = v4;

  return v4;
}

void sub_1C2CCF70C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 128);
  sub_1C2C6E1B4(0, &qword_1EC05E6A0);
  v5 = v4;
  v6 = sub_1C2E76234();

  if (v6)
  {
    v7 = *(v2 + 128);
    *(v2 + 128) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCF87C()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CCF938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_1C2CCF9FC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CCFB48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 136) = a2;
}

void *sub_1C2CCFBB0(void *a1)
{
  v2 = v1;
  v4 = sub_1C2E76104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  v2[8] = 0;
  v2[9] = 0xE000000000000000;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CD0];
  v2[14] = 0;
  v2[15] = 0;
  v2[17] = v8;
  sub_1C2E71A94();
  v2[16] = a1;
  v17 = a1;
  sub_1C2CD0090();
  v16 = objc_opt_self();
  v9 = [v16 defaultCenter];
  sub_1C2E76114();

  swift_allocObject();
  swift_weakInit();
  v15 = sub_1C2CD1BE0(&qword_1EC05E6B0, 255, MEMORY[0x1E6969F20]);

  sub_1C2E72F14();

  v10 = *(v5 + 8);
  v13[2] = v5 + 8;
  v14 = v10;
  v10(v7, v4);
  swift_getKeyPath();
  v18 = v2;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v18 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  v13[1] = v2 + 17;
  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v18 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v11 = [v16 defaultCenter];
  sub_1C2E76114();

  swift_allocObject();
  swift_weakInit();

  sub_1C2E72F14();

  v14(v7, v4);
  swift_getKeyPath();
  v18 = v2;
  sub_1C2E71A64();

  v18 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v18 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  return v2;
}

uint64_t sub_1C2CD0038()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2CD0090();
  }

  return result;
}

id sub_1C2CD0090()
{
  v1 = v0;
  v2 = sub_1C2E71844();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - v7;
  swift_getKeyPath();
  v62 = v0;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v9 = [*(v0 + 128) date];
  if (v9)
  {
    v10 = v9;
    sub_1C2E71814();

    (*(v3 + 32))(v8, v6, v2);
    v11 = static Date.faceTimeDateString(from:showToday:)(v8, 1);
    sub_1C2CCE190(v11, v12);
    if (qword_1EC05CF28 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC075AD8;
    v14 = sub_1C2E71804();
    v15 = [v13 stringFromDate_];

    v16 = sub_1C2E75C64();
    v18 = v17;

    sub_1C2CCE458(v16, v18);
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1C2CCE190(0, 0xE000000000000000);
    sub_1C2CCE458(0, 0xE000000000000000);
  }

  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  v19 = [*(v1 + 128) callStatus];
  v20 = MEMORY[0x1E69935B0];
  if (*MEMORY[0x1E69935A0] == v19 || *MEMORY[0x1E69935A8] == v19 || *MEMORY[0x1E69935C8] == v19 || *MEMORY[0x1E69935B0] == v19 || *MEMORY[0x1E69935B8] == v19)
  {
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v59 = 0xE000000000000000;
    v23 = sub_1C2E71684();
    v25 = v24;

    v26 = v23;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  sub_1C2CCE720(v26, v27);
  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  if ([*(v1 + 128) callStatus] == *v20 || (swift_getKeyPath(), v62 = v1, sub_1C2E71A64(), , v28 = objc_msgSend(*(v1 + 128), sel_callStatus), v28 == *MEMORY[0x1E69935B8]))
  {
    swift_getKeyPath();
    v62 = v1;
    sub_1C2E71A64();

    [*(v1 + 128) duration];
    sub_1C2CD67D4(v29);
    if (!v31)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  sub_1C2CCE9E8(v30, v31);
  v32 = sub_1C2CD0AF4();
  if (v33)
  {
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      goto LABEL_31;
    }
  }

  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  v35 = *(v1 + 128);
  v36 = sub_1C2CDFA84(v35);
  v38 = v37;

  if (!v38)
  {
LABEL_27:
    v32 = sub_1C2CD0C54();
    if (v33)
    {
      v40 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v40 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        goto LABEL_31;
      }
    }

    if (*(v1 + 88))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v61 - 3) = 0;
      v59 = 0;
      *(&v61 - 4) = v1;
      v62 = v1;
      sub_1C2E71A54();
    }

    else
    {
      *(v1 + 80) = 0;
      *(v1 + 88) = 0;
    }

    goto LABEL_32;
  }

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    goto LABEL_27;
  }

  v32 = v36;
  v33 = v38;
LABEL_31:
  sub_1C2CCECB0(v32, v33);
LABEL_32:
  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  v41 = [*(v1 + 128) bytesOfDataUsed];
  v42 = [v41 integerValue];

  if (v42 < 1)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v62 = 10272;
    v63 = 0xE200000000000000;
    v43 = objc_opt_self();
    swift_getKeyPath();
    v61 = v1;
    sub_1C2E71A64();

    v44 = [*(v1 + 128) bytesOfDataUsed];
    v45 = [v44 longLongValue];

    v46 = [v43 stringFromByteCount:v45 countStyle:0];
    v47 = sub_1C2E75C64();
    v49 = v48;

    MEMORY[0x1C6926710](v47, v49);

    MEMORY[0x1C6926710](41, 0xE100000000000000);
    v50 = v62;
    v51 = v63;
  }

  sub_1C2CCEF88(v50, v51);
  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  v52 = [*(v1 + 128) ttyType];
  if (*(v1 + 112) != v52)
  {
    v53 = v52;
    v54 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v54);
    v59 = v1;
    v60 = v53;
    v62 = v1;
    sub_1C2E71A54();
  }

  swift_getKeyPath();
  v62 = v1;
  sub_1C2E71A64();

  result = [*(v1 + 128) verificationStatus];
  if (*(v1 + 120) != result)
  {
    v56 = result;
    v57 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v57);
    v59 = v1;
    v60 = v56;
    v62 = v1;
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2CD0AF4()
{
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  if ([*(v0 + 128) verificationStatus] != 1)
  {
    return 0;
  }

  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1C2E71684();

  return v3;
}

uint64_t sub_1C2CD0C54()
{
  v1 = v0;
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C2E75C14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC16CommunicationsUI33RecentsCallHistoryHeaderViewModel___observationRegistrar;
  v23 = v1;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  v22[1] = v10;
  sub_1C2E71A64();

  if ((~[*(v1 + 128) screenSharingType] & 3) != 0)
  {
    swift_getKeyPath();
    v23 = v1;
    sub_1C2E71A64();

    if ([*(v1 + 128) screenSharingType] == 1)
    {
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v18 = sub_1C2E71684();

      return v18;
    }

    swift_getKeyPath();
    v23 = v1;
    sub_1C2E71A64();

    if ([*(v1 + 128) screenSharingType] != 2)
    {
      return 0;
    }
  }

  sub_1C2E75BB4();
  (*(v4 + 16))(v7, v9, v3);
  type metadata accessor for StringDummy();
  v11 = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  sub_1C2E75C84();
  (*(v4 + 8))(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C2E7A930;
  swift_getKeyPath();
  v23 = v1;
  sub_1C2E71A64();

  v14 = [*(v1 + 128) callerNameForDisplay];
  v15 = sub_1C2E75C64();
  v17 = v16;

  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1C2CAB500();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v18 = sub_1C2E75C74();

  return v18;
}

uint64_t sub_1C2CD124C()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI33RecentsCallHistoryHeaderViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C2CD1304(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C2CD1388()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2CD1468()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2CD14F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1C2CD16D0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_1C2CD19E4()
{
  result = qword_1EC05E660;
  if (!qword_1EC05E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E660);
  }

  return result;
}

unint64_t sub_1C2CD1A3C()
{
  result = qword_1EC05E668;
  if (!qword_1EC05E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E668);
  }

  return result;
}

unint64_t sub_1C2CD1A94()
{
  result = qword_1EC05E670;
  if (!qword_1EC05E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E670);
  }

  return result;
}

unint64_t sub_1C2CD1AEC()
{
  result = qword_1EC05E678;
  if (!qword_1EC05E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E678);
  }

  return result;
}

unint64_t sub_1C2CD1B8C()
{
  result = qword_1EC05E688;
  if (!qword_1EC05E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E688);
  }

  return result;
}

uint64_t sub_1C2CD1BE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C2CD1C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v58 = sub_1C2E72AA4();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C2E72AC4();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = sub_1C2E72A94();
  v65 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC28);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC30);
  v17 = v16 - 8;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C2E7A720;
  *(v22 + 32) = a1;
  v23 = a1;
  sub_1C2E71504();
  sub_1C2E75744();
  sub_1C2E73274();
  v24 = &v21[*(v17 + 44)];
  v25 = v76;
  *v24 = v75;
  *(v24 + 1) = v25;
  *(v24 + 2) = v77;
  v73 = sub_1C2CD2334(v23);
  v74 = v26;
  sub_1C2C74960();
  v27 = sub_1C2E748A4();
  v29 = v28;
  v31 = v30;
  v73 = sub_1C2E71B74();
  v32 = sub_1C2E74794();
  v63 = v33;
  v64 = v32;
  v62 = v34;
  v66 = v35;
  sub_1C2C72340(v27, v29, v31 & 1);

  sub_1C2CD2594(v7);
  v36 = v65;
  if ((*(v65 + 48))(v7, 1, v8) == 1)
  {
    sub_1C2C73644(v7, &qword_1EC05EC20);
    v37 = 1;
    v38 = v71;
    v39 = v69;
    v40 = v67;
  }

  else
  {
    v41 = v56;
    (*(v36 + 32))(v56, v7, v8);
    (*(v60 + 104))(v61, *MEMORY[0x1E69CA860], v58);
    (*(v36 + 16))(v57, v41, v8);
    v42 = v59;
    sub_1C2E72AB4();
    (*(v36 + 8))(v41, v8);
    v43 = v69;
    v40 = v67;
    v44 = v71;
    (*(v69 + 32))(v67, v42, v71);
    v37 = 0;
    v38 = v44;
    v39 = v43;
  }

  (*(v39 + 56))(v40, v37, 1, v38);
  v45 = v68;
  sub_1C2C736A4(v21, v68, &qword_1EC05EC30);
  v46 = v70;
  sub_1C2C736A4(v40, v70, &qword_1EC05EC28);
  v47 = v72;
  sub_1C2C736A4(v45, v72, &qword_1EC05EC30);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC38);
  v49 = v47 + v48[12];
  v50 = v63;
  v51 = v64;
  *v49 = v64;
  *(v49 + 8) = v50;
  v52 = v62 & 1;
  *(v49 + 16) = v62 & 1;
  *(v49 + 24) = v66;
  v53 = v47 + v48[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1C2C736A4(v46, v47 + v48[20], &qword_1EC05EC28);
  sub_1C2C72330(v51, v50, v52);

  sub_1C2C73644(v40, &qword_1EC05EC28);
  sub_1C2C73644(v21, &qword_1EC05EC30);
  sub_1C2C73644(v46, &qword_1EC05EC28);
  sub_1C2C72340(v51, v50, v52);

  return sub_1C2C73644(v45, &qword_1EC05EC30);
}

uint64_t sub_1C2CD2334(void *a1)
{
  v1 = a1;
  v2 = [v1 displayName];
  if (v2)
  {
    v3 = v2;

    v4 = sub_1C2E75C64();
    return v4;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_22:

    return 0;
  }

  v6 = v5;
  v7 = [v5 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC50);
  v8 = sub_1C2E75D74();

  if (v8 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_6;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6927010](0, v8);
      goto LABEL_9;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
LABEL_9:
      v10 = v9;

      v11 = [v10 value];
      v12 = [v11 stringValue];

LABEL_17:
      v4 = sub_1C2E75C64();

      return v4;
    }

    __break(1u);
LABEL_20:
    result = sub_1C2E764E4();
    if (!result)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v13 = [v6 emailAddresses];
  v8 = sub_1C2E75D74();

  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6927010](0, v8);
    goto LABEL_16;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v8 + 32);
LABEL_16:
    v10 = v15;

    v12 = [v10 value];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

char *sub_1C2CD2594@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 tuHandlesForPhoneNumbers];
  sub_1C2C6E1B4(0, &qword_1EC05EC40);
  v5 = sub_1C2E75D74();

  v47 = a1;
  if (v5 >> 62)
  {
    v6 = sub_1C2E764E4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v2;
  if (v6)
  {
    v49 = MEMORY[0x1E69E7CC0];
    result = sub_1C2C7B754(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    v9 = v49;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6927010](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 value];
      v13 = sub_1C2E75C64();
      v15 = v14;

      v17 = *(v49 + 16);
      v16 = *(v49 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C2C7B754((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v49 + 16) = v17 + 1;
      v18 = v49 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v8);

    v2 = v48;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C2CD95D4(v9, MEMORY[0x1E69E7CD0]);

  v20 = [v2 tuHandlesForEmailAddresses];
  v21 = sub_1C2E75D74();

  if (v21 >> 62)
  {
    v22 = sub_1C2E764E4();
    if (v22)
    {
LABEL_16:
      v50 = MEMORY[0x1E69E7CC0];
      result = sub_1C2C7B754(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v46 = v19;
        v23 = 0;
        v24 = v50;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1C6927010](v23, v21);
          }

          else
          {
            v25 = *(v21 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = [v26 value];
          v28 = sub_1C2E75C64();
          v30 = v29;

          v32 = *(v50 + 16);
          v31 = *(v50 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1C2C7B754((v31 > 1), v32 + 1, 1);
          }

          ++v23;
          *(v50 + 16) = v32 + 1;
          v33 = v50 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v22 != v23);

        v2 = v48;
        v19 = v46;
        goto LABEL_28;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v34 = sub_1C2CD95D4(v24, v19);

  sub_1C2CC9B08(v34);
  if (v35)
  {
    v36 = [v2 givenName];
    v37 = sub_1C2E75C64();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      v41 = [v2 givenName];
      sub_1C2E75C64();
    }

    v42 = v47;
    sub_1C2E72A84();
    v43 = 0;
  }

  else
  {

    v43 = 1;
    v42 = v47;
  }

  v44 = sub_1C2E72A94();
  v45 = *(*(v44 - 8) + 56);

  return v45(v42, v43, 1, v44);
}

uint64_t sub_1C2CD29F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1C2E73C24();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC18);
  return sub_1C2CD1C28(v3, a1 + *(v4 + 44));
}

uint64_t sub_1C2CD2A50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C2CD65E4(a1);
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_1C2C6EE50(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB50);
  sub_1C2C94F38(&qword_1EC05EBA0, &qword_1EC05EB98);
  sub_1C2CD8F70();
  return sub_1C2E75434();
}

uint64_t sub_1C2CD2B90@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(id)@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v63 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EBA8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v56 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB60);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v56 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EBB0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v56 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB80);
  MEMORY[0x1EEE9AC00](v67);
  v56 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EBB8);
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v56 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB70);
  v17 = MEMORY[0x1EEE9AC00](v59);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v56 - v19;
  v20 = a1[1];
  v71 = *a1;
  v72 = v20;
  v58 = v20;
  if (a3)
  {
    v21 = v20;
    sub_1C2C6EE50(a3);
    v22 = a3(v21);
    v23 = sub_1C2E73674();
    v24 = sub_1C2E74454();
    sub_1C2C71668(a3);
  }

  else
  {
    v25 = v20;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v73 = v22;
  v74 = v23;
  v75 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EBC0);
  sub_1C2CD92AC();
  sub_1C2CD9300(&qword_1EC05EBD0, &qword_1EC05EBC0, &unk_1C2E7D878, sub_1C2CD937C);
  sub_1C2E73454();
  sub_1C2E744B4();
  v26 = sub_1C2C94F38(&qword_1EC05EB90, &qword_1EC05EB88);
  sub_1C2E74A24();
  (*(v11 + 8))(v13, v10);
  v27 = v71;
  if (v71)
  {
    v28 = v64;
    (*(v14 + 16))(v68, v16, v64);
    swift_storeEnumTagMultiPayload();
    sub_1C2CD918C();
    v73 = v10;
    v74 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v65;
    sub_1C2E73F44();
  }

  else
  {
    v30 = sub_1C2E74464();
    sub_1C2E73034();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v56;
    v28 = v64;
    (*(v14 + 16))(v56, v16, v64);
    v40 = v68;
    v41 = v39 + *(v67 + 36);
    *v41 = v30;
    *(v41 + 8) = v32;
    *(v41 + 16) = v34;
    *(v41 + 24) = v36;
    *(v41 + 32) = v38;
    *(v41 + 40) = 0;
    sub_1C2C736A4(v39, v40, &qword_1EC05EB80);
    swift_storeEnumTagMultiPayload();
    sub_1C2CD918C();
    v73 = v10;
    v74 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v65;
    v27 = v71;
    sub_1C2E73F44();
    sub_1C2C73644(v39, &qword_1EC05EB80);
  }

  (*(v14 + 8))(v16, v28);
  v42 = v69;
  sub_1C2C71D5C(v29, v69, &qword_1EC05EB70);
  if (v70 >> 62)
  {
    result = sub_1C2E764E4();
    v44 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v27 == v44)
  {
    v45 = sub_1C2E74474();
    sub_1C2E73034();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v57;
    sub_1C2C736A4(v42, v57, &qword_1EC05EB70);
    v55 = v54 + *(v61 + 36);
    *v55 = v45;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    sub_1C2C736A4(v54, v62, &qword_1EC05EB60);
    swift_storeEnumTagMultiPayload();
    sub_1C2CD8FFC();
    sub_1C2CD9088();
    sub_1C2E73F44();

    sub_1C2C73644(v54, &qword_1EC05EB60);
  }

  else
  {
    sub_1C2C736A4(v42, v62, &qword_1EC05EB70);
    swift_storeEnumTagMultiPayload();
    sub_1C2CD8FFC();
    sub_1C2CD9088();
    sub_1C2E73F44();
  }

  return sub_1C2C73644(v42, &qword_1EC05EB70);
}

uint64_t sub_1C2CD33D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB38);
  sub_1C2CD8EEC();
  return sub_1C2E75484();
}

uint64_t sub_1C2CD3454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB18);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-v7];
  v9 = *(a1 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
  swift_getKeyPath();
  *&v46[0] = v9;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v10 = v9[3];
  *&v46[0] = v9[2];
  *(&v46[0] + 1) = v10;
  sub_1C2C74960();

  v38 = sub_1C2E748A4();
  v37 = v11;
  v35 = v12;
  v36 = v13;
  LOBYTE(v10) = sub_1C2E74444();
  sub_1C2E73034();
  v45 = 0;
  v44 = 0;
  v40 = xmmword_1C2E7CBE0;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = MEMORY[0x1E69E7CC0];
  LOBYTE(v42) = v10;
  *(&v42 + 1) = v14;
  *v43 = v15;
  *&v43[8] = v16;
  *&v43[16] = v17;
  v43[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E518);
  sub_1C2CD8E5C();
  v34 = v8;
  sub_1C2E74BB4();
  v46[2] = v42;
  v47[0] = *v43;
  *(v47 + 9) = *&v43[9];
  v46[0] = v40;
  v46[1] = v41;
  sub_1C2C73644(v46, &qword_1EC05E518);
  swift_getKeyPath();
  *&v40 = v9;
  sub_1C2E71A64();

  v18 = v9[5];
  *&v40 = v9[4];
  *(&v40 + 1) = v18;

  v19 = sub_1C2E748A4();
  v21 = v20;
  v32 = v22;
  v33 = v23;
  v24 = v35 & 1;
  LOBYTE(v40) = v35 & 1;
  sub_1C2C736A4(v8, v6, &qword_1EC05EB18);
  v25 = v38;
  v26 = v39;
  v27 = v37;
  *v39 = v38;
  v26[1] = v27;
  *(v26 + 16) = v24;
  v26[3] = v36;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB20);
  sub_1C2C736A4(v6, v26 + *(v28 + 48), &qword_1EC05EB18);
  v29 = v26 + *(v28 + 64);
  *v29 = v19;
  *(v29 + 1) = v21;
  LOBYTE(v26) = v32 & 1;
  v29[16] = v32 & 1;
  *(v29 + 3) = v33;
  sub_1C2C72330(v25, v27, v24);

  sub_1C2C72330(v19, v21, v26);

  sub_1C2C73644(v34, &qword_1EC05EB18);
  sub_1C2C72340(v19, v21, v26);

  sub_1C2C73644(v6, &qword_1EC05EB18);
  sub_1C2C72340(v25, v27, v40);
}

uint64_t sub_1C2CD3874()
{
  v1 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C2E73D14();
  v2 = sub_1C2E74884();
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  if (*(v7 + 112))
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E75044();
    sub_1C2E73CC4();

    sub_1C2E73CE4();
    sub_1C2E73D24();
    v8 = sub_1C2E74884();
    v36 = v9;
    v11 = v10;
    sub_1C2C72340(v2, v4, v6 & 1);

    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_1C2E71684();
    v16 = v15;

    v17 = sub_1C2DD2198(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C2DD2198((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v14;
    *(v20 + 5) = v16;
    v2 = v8;
    v4 = v36;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v11 = v6;
  }

  swift_getKeyPath();
  sub_1C2E71A64();

  if (*(v7 + 120) == 1)
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E75044();
    sub_1C2E73CC4();

    sub_1C2E73CE4();
    sub_1C2E73D24();
    v21 = sub_1C2E74884();
    v23 = v22;
    v25 = v24;
    sub_1C2C72340(v2, v4, v11 & 1);

    type metadata accessor for StringDummy();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = sub_1C2E71684();
    v30 = v29;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C2DD2198(0, *(v17 + 2) + 1, 1, v17);
    }

    v32 = *(v17 + 2);
    v31 = *(v17 + 3);
    if (v32 >= v31 >> 1)
    {
      v17 = sub_1C2DD2198((v31 > 1), v32 + 1, 1, v17);
    }

    *(v17 + 2) = v32 + 1;
    v33 = &v17[16 * v32];
    *(v33 + 4) = v28;
    *(v33 + 5) = v30;
    v2 = v21;
    v4 = v23;
    v11 = v25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB28);
  sub_1C2C94F38(&qword_1EC05EB30, &qword_1EC05EB28);
  sub_1C2E75B74();

  sub_1C2C74960();
  v34 = sub_1C2E747B4();
  sub_1C2C72340(v2, v4, v11 & 1);

  return v34;
}

uint64_t sub_1C2CD3EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
  swift_getKeyPath();
  *&v14[0] = v4;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v5 = v4[9];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = v4[8] & 0xFFFFFFFFFFFFLL;
  }

  swift_getKeyPath();
  *&v14[0] = v4;
  sub_1C2E71A64();

  v8 = v4[11] | v6;
  if (v8)
  {
    v9 = sub_1C2E73DD4();
    v15 = 1;
    result = sub_1C2CD4024(v6 != 0, v2, v14);
    v11 = v14[0];
    v10 = v14[1];
    v12 = v14[2];
    v13 = v14[3];
    v8 = v15;
  }

  else
  {
    v9 = 0;
    v10 = xmmword_1C2E7CBF0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v11;
  *(a1 + 40) = v10;
  *(a1 + 56) = v12;
  *(a1 + 72) = v13;
  return result;
}

uint64_t sub_1C2CD4024@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = *(a2 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
    swift_getKeyPath();
    sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
    sub_1C2E71A64();

    swift_getKeyPath();

    sub_1C2E71A64();

    v6 = *(v5 + 96);
    v7 = *(v5 + 104);

    MEMORY[0x1C6926710](v6, v7);

    sub_1C2C74960();
    v8 = sub_1C2E748A4();
    v10 = v9;
    v12 = v11;
    v14 = v13 & 1;
    sub_1C2C72330(v8, v9, v13 & 1);
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v14 = 0;
    v12 = 0;
  }

  v15 = *(a2 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
  swift_getKeyPath();
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  v16 = *(v15 + 88);
  if (v16)
  {
    sub_1C2C74960();

    v16 = sub_1C2E748A4();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_1C2C72330(v16, v17, v21 & 1);
  }

  else
  {
    v18 = 0;
    v22 = 0;
    v20 = 0;
  }

  sub_1C2C7DD04(v8, v10, v14, v12);
  sub_1C2C7DD04(v16, v18, v22, v20);
  sub_1C2C7F6D4(v8, v10, v14, v12);
  sub_1C2C7F6D4(v16, v18, v22, v20);
  *a3 = v8;
  a3[1] = v10;
  a3[2] = v14;
  a3[3] = v12;
  a3[4] = v16;
  a3[5] = v18;
  a3[6] = v22;
  a3[7] = v20;
  sub_1C2C7F6D4(v16, v18, v22, v20);
  return sub_1C2C7F6D4(v8, v10, v14, v12);
}

uint64_t sub_1C2CD4318@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v57 = sub_1C2E73D84();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA68);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v52 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA70);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v60 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA78);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v11 = sub_1C2E74264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA80);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA88);
  v67 = *(v68 - 8);
  v18 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  *v17 = sub_1C2E73DD4();
  *(v17 + 1) = 0xBFF0000000000000;
  v17[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA90);
  sub_1C2CD4B38(a1, &v17[*(v22 + 44)]);
  sub_1C2E74244();
  sub_1C2C94F38(&qword_1EC05EA98, &qword_1EC05EA80);
  v64 = v21;
  sub_1C2E74C04();
  v23 = *(v12 + 8);
  v59 = v11;
  v56 = v12 + 8;
  v23(v14, v11);
  sub_1C2C73644(v17, &qword_1EC05EA80);
  if (*(a1 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 24)) == 1)
  {
    v24 = sub_1C2E73C04();
    LOBYTE(v72) = 1;
    sub_1C2CD52E8(&v78);
    v53 = v23;
    v25 = v78;
    v26 = v79;
    v54 = v10;
    v27 = *(&v79 + 1);
    v28 = v80;
    v29 = BYTE8(v80);
    v30 = v81;
    LOBYTE(v78) = v79;
    v77 = BYTE8(v80);
    v31 = v72;
    v32 = sub_1C2E71B74();
    v72 = v24;
    v73[0] = v31;
    *&v73[8] = v25;
    v73[24] = v26;
    *&v74 = v27;
    *(&v74 + 1) = v28;
    v33 = v54;
    LOBYTE(v75) = v29;
    *(&v75 + 1) = v30;
    v76 = v32;
    sub_1C2E74244();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAA8);
    v35 = sub_1C2CD8D78();
    v36 = v61;
    sub_1C2E74C04();
    v53(v14, v59);
    v80 = *&v73[16];
    v81 = v74;
    v82 = v75;
    v83 = v76;
    v78 = v72;
    v79 = *v73;
    sub_1C2C73644(&v78, &qword_1EC05EAA8);
    v37 = v55;
    sub_1C2E73D64();
    *&v72 = v34;
    *(&v72 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    v38 = v60;
    v39 = v63;
    sub_1C2E74C34();
    (*(v58 + 8))(v37, v57);
    (*(v62 + 8))(v36, v39);
    sub_1C2C71D5C(v38, v33, &qword_1EC05EA70);
    v10 = v33;
    (*(v69 + 56))(v33, 0, 1, v70);
  }

  else
  {
    (*(v69 + 56))(v10, 1, 1, v70);
  }

  v40 = v67;
  v41 = *(v67 + 16);
  v42 = v66;
  v43 = v64;
  v44 = v68;
  v41(v66, v64, v68);
  v45 = v10;
  v46 = v10;
  v47 = v71;
  sub_1C2C736A4(v46, v71, &qword_1EC05EA78);
  v48 = v65;
  v41(v65, v42, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAA0);
  sub_1C2C736A4(v47, &v48[*(v49 + 48)], &qword_1EC05EA78);
  sub_1C2C73644(v45, &qword_1EC05EA78);
  v50 = *(v40 + 8);
  v50(v43, v44);
  sub_1C2C73644(v47, &qword_1EC05EA78);
  return (v50)(v42, v44);
}

uint64_t sub_1C2CD4B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAD0);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAD8);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  *v16 = sub_1C2E73C04();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAE0);
  sub_1C2CD4E74(a1, &v16[*(v17 + 44)]);
  *&v16[*(v11 + 44)] = sub_1C2E71B74();
  sub_1C2CD3EA4(v28);
  v33 = v28[3];
  v34 = v28[4];
  v35 = v29;
  v30 = v28[0];
  v31 = v28[1];
  v32 = v28[2];
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAE8) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
  v20 = *MEMORY[0x1E69816C8];
  v21 = sub_1C2E750B4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = v31;
  *v9 = v30;
  *(v9 + 1) = v22;
  *(v9 + 10) = v35;
  v23 = v34;
  *(v9 + 3) = v33;
  *(v9 + 4) = v23;
  *(v9 + 2) = v32;
  *&v9[*(v4 + 44)] = sub_1C2E71B84();
  sub_1C2C736A4(v16, v14, &qword_1EC05EAD8);
  sub_1C2C736A4(v9, v7, &qword_1EC05EAD0);
  v24 = v27;
  sub_1C2C736A4(v14, v27, &qword_1EC05EAD8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAF0);
  sub_1C2C736A4(v7, v24 + *(v25 + 48), &qword_1EC05EAD0);
  sub_1C2C73644(v9, &qword_1EC05EAD0);
  sub_1C2C73644(v16, &qword_1EC05EAD8);
  sub_1C2C73644(v7, &qword_1EC05EAD0);
  return sub_1C2C73644(v14, &qword_1EC05EAD8);
}

uint64_t sub_1C2CD4E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EAF8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB00);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  sub_1C2E73CF4();
  sub_1C2E73CE4();
  v16 = *(a1 + *(type metadata accessor for RecentsCallHistoryHeaderView(0) + 20));
  v38 = a1;
  swift_getKeyPath();
  v41 = v16;
  sub_1C2CD1BE0(&qword_1EC05E698, 255, type metadata accessor for RecentsCallHistoryHeaderViewModel);
  sub_1C2E71A64();

  sub_1C2E73CD4();

  sub_1C2E73CE4();
  v17 = sub_1C2CD3874();
  v19 = v18;
  v21 = v20;
  sub_1C2E73CB4();
  sub_1C2C72340(v17, v19, v21 & 1);

  sub_1C2E73CE4();
  sub_1C2E73D24();
  v22 = sub_1C2E74884();
  v24 = v23;
  LOBYTE(a1) = v25;
  v27 = v26;
  v28 = &v15[*(v10 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
  v30 = *MEMORY[0x1E69816C8];
  v31 = sub_1C2E750B4();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v15 = v22;
  *(v15 + 1) = v24;
  v15[16] = a1 & 1;
  *(v15 + 3) = v27;
  *v7 = sub_1C2E73C04();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB08);
  sub_1C2CD3454(v38, &v7[*(v32 + 44)]);
  sub_1C2C736A4(v15, v13, &qword_1EC05EB00);
  v33 = v39;
  sub_1C2C736A4(v7, v39, &qword_1EC05EAF8);
  v34 = v40;
  sub_1C2C736A4(v13, v40, &qword_1EC05EB00);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB10);
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_1C2C736A4(v33, v34 + *(v35 + 64), &qword_1EC05EAF8);
  sub_1C2C73644(v7, &qword_1EC05EAF8);
  sub_1C2C73644(v15, &qword_1EC05EB00);
  sub_1C2C73644(v33, &qword_1EC05EAF8);
  return sub_1C2C73644(v13, &qword_1EC05EB00);
}

uint64_t sub_1C2CD52E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v4 = sub_1C2E748A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C2E75044();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  sub_1C2C72330(v4, v6, v8);

  sub_1C2C72340(v4, v6, v8);
}

uint64_t sub_1C2CD5450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA58);
  sub_1C2C94F38(&qword_1EC05EA60, &qword_1EC05EA58);
  return sub_1C2E75484();
}

uint64_t sub_1C2CD54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  sub_1C2E71544();
  v12 = __swift_project_boxed_opaque_existential_1(&v25, v28);
  MEMORY[0x1EEE9AC00](v12);
  (*(v14 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1C2E73284();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v16 = (v3 + *(type metadata accessor for ContactCardStyleModifier(0) + 20));
  v18 = *v16;
  v17 = v16[1];
  v25 = v15;
  LOWORD(v26) = 256;
  v27 = 1;
  v28 = v18;
  v29 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA20);
  sub_1C2CD8BD4();
  v19 = sub_1C2E75374();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EA40);
  (*(*(v20 - 8) + 16))(v7, a1, v20);
  *&v7[*(v5 + 36)] = v19;
  sub_1C2E744B4();
  v21 = [objc_opt_self() currentDevice];
  [v21 userInterfaceIdiom];

  v22 = sub_1C2CD8C8C();
  sub_1C2E74A24();
  sub_1C2C73644(v7, &qword_1EC05EA10);
  sub_1C2E71564();
  sub_1C2E73204();
  v25 = v5;
  v26 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1C2E74C24();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C2CD5878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E888);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C736A4(a1, &v6 - v3, &qword_1EC05E888);
  return MEMORY[0x1C6924410](v4);
}

uint64_t sub_1C2CD5920(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C2E76854();
  sub_1C2E75CC4();
  v8 = sub_1C2E76894();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C2E767A4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C2CD5CD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C2CD5A70()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC48);
  result = sub_1C2E76584();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C2E76854();
      sub_1C2E75CC4();
      result = sub_1C2E76894();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C2CD5CD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C2CD5A70();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C2CD5E50();
      goto LABEL_16;
    }

    sub_1C2CD5FAC();
  }

  v10 = *v4;
  sub_1C2E76854();
  sub_1C2E75CC4();
  result = sub_1C2E76894();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C2E767A4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C2E767B4();
  __break(1u);
  return result;
}

void *sub_1C2CD5E50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC48);
  v2 = *v0;
  v3 = sub_1C2E76574();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C2CD5FAC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC48);
  result = sub_1C2E76584();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C2E76854();

      sub_1C2E75CC4();
      result = sub_1C2E76894();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C2CD61E4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1C2E72DB4();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EC05D520;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1C2CD1BE0(&qword_1EC05D520, 255, MEMORY[0x1E695BF10]);

          v19 = sub_1C2E75B54();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_1C2CD1BE0(&qword_1EC05D528, 255, MEMORY[0x1E695BF10]);
          while ((sub_1C2E75BA4() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1EC05D520;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1C2CD64E0(v8, v7);
}

uint64_t sub_1C2CD64E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1C2E764E4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1C2E76524();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2CD65E4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1C6927010](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1C2E764E4();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EBF0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C2CD67D4(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v1 = a1;
  if (a1 < 0 || v1 <= 0x3B)
  {
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C2E7A930;
    v5 = sub_1C2E76774();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1C2CAB500();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1C2E75C74();
LABEL_7:

    return;
  }

  type metadata accessor for StringDummy();
  v8 = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  if (v1 <= 0xE0F)
  {
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C2E7A930;
    v12 = sub_1C2E76774();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C2CAB500();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1C2E75C74();
    goto LABEL_7;
  }

  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C2E7A930;
  v16 = sub_1C2E76774();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1C2CAB500();
  *(v15 + 64) = v26;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1C2E75C74();

  if (v1 % 0xE10 >= 0x3C)
  {
    v19 = [v9 bundleForClass_];
    sub_1C2E71684();

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C2E7A930;
    v21 = sub_1C2E76774();
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = v26;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = sub_1C2E75C74();
    v25 = v24;

    MEMORY[0x1C6926710](32, 0xE100000000000000);
    MEMORY[0x1C6926710](v23, v25);
  }
}

void sub_1C2CD6DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = v2;
}

uint64_t sub_1C2CD6E08()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_1C2CD6E48()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_1C2CD6E88()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_1C2CD6EC8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_1C2CD6F08()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t keypath_set_87Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C2CD6F90()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

id sub_1C2CD6FD0(unint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 || !a2)
  {
    return 0;
  }

  v4 = a2;
  v5 = [v4 initiator];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 value];

    sub_1C2E75C64();
  }

  v9 = [v4 initiator];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  if ([v9 type] != 2)
  {
    goto LABEL_17;
  }

  result = [v10 value];
  if (result)
  {
    v11 = result;
    v12 = PNCopyBestGuessCountryCodeForNumber();

    if (!v12)
    {
      goto LABEL_17;
    }

    result = [v10 value];
    if (result)
    {
      v13 = result;
      v14 = CFPhoneNumberCreate();

      if (v14)
      {
        String = CFPhoneNumberCreateString();
        if (String)
        {
          v16 = String;
          sub_1C2E75C64();

          v10 = v12;
LABEL_18:

LABEL_19:
          v17 = sub_1C2CEAC3C(a1);

          return v17;
        }
      }

LABEL_17:
      v14 = [v10 value];
      sub_1C2E75C64();
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C2CD7248()
{
  sub_1C2CD7374(319, &qword_1EC05E6C8, MEMORY[0x1E695D028], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C2CD7374(319, &qword_1EC05E6D0, type metadata accessor for RecentsCallHistoryHeaderViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C2CD7374(319, &qword_1EC05E6D8, MEMORY[0x1E6995F08], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2CD7374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C2CD73D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C2CD7420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C2CD74B4()
{
  sub_1C2E71CF4();
  if (v0 <= 0x3F)
  {
    sub_1C2CD76F0();
    if (v1 <= 0x3F)
    {
      sub_1C2CD7758(319, &qword_1EC05CA50, &qword_1EC05E0F8, &unk_1C2E7C0D0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C2CD7374(319, &qword_1EC05E700, type metadata accessor for CommunicationDetailsActionsProvider, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C2CD7758(319, &qword_1EC05E708, &unk_1EC05F210, &unk_1C2E7D230, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C2E71CC4();
            if (v5 <= 0x3F)
            {
              sub_1C2CD77BC(319, &qword_1EC05E710);
              if (v6 <= 0x3F)
              {
                sub_1C2CD77BC(319, &qword_1EC05E718);
                if (v7 <= 0x3F)
                {
                  sub_1C2CD77BC(319, &qword_1EC05CAD8);
                  if (v8 <= 0x3F)
                  {
                    sub_1C2CD7374(319, &qword_1EC05E720, MEMORY[0x1E695D008], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C2CD76F0()
{
  if (!qword_1EC05E6F8)
  {
    sub_1C2C6E1B4(255, &qword_1EC05E6A0);
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05E6F8);
    }
  }
}

void sub_1C2CD7758(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C2CD77BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C2E751B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C2CD782C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationDetailsContactsTabView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C2CD7890(void *a1)
{
  type metadata accessor for CommunicationDetailsContactsTabView(0);

  sub_1C2CCD6D0(a1);
}

unint64_t sub_1C2CD7900()
{
  result = qword_1EC05E778;
  if (!qword_1EC05E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E770);
    sub_1C2CD79B8();
    sub_1C2C94F38(&qword_1EC05E788, &qword_1EC05E790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E778);
  }

  return result;
}

unint64_t sub_1C2CD79B8()
{
  result = qword_1EC05E780;
  if (!qword_1EC05E780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E780);
  }

  return result;
}

unint64_t sub_1C2CD7A10()
{
  result = qword_1EC05E798;
  if (!qword_1EC05E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E758);
    sub_1C2CD79B8();
    sub_1C2C94F38(&qword_1EC05E7A0, &qword_1EC05E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E798);
  }

  return result;
}

unint64_t sub_1C2CD7AC8()
{
  result = qword_1EC05E7C0;
  if (!qword_1EC05E7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E738);
    sub_1C2CD7900();
    sub_1C2CD7A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E7C0);
  }

  return result;
}

uint64_t objectdestroy_131Tm()
{
  v1 = type metadata accessor for CommunicationDetailsContactsTabView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v5 = v0 + v3 + *(v1 + 60);
  v6 = sub_1C2E71574();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1C2CD7CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CommunicationDetailsContactsTabView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1C2CCDD84(a1, a2, v6);
}

unint64_t sub_1C2CD7D3C()
{
  result = qword_1EC05E7D8;
  if (!qword_1EC05E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7B8);
    sub_1C2CD7AC8();
    sub_1C2C94F38(&qword_1EC05E7C8, &qword_1EC05E7B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E7D8);
  }

  return result;
}

unint64_t sub_1C2CD7E5C()
{
  result = qword_1EC05E7E0;
  if (!qword_1EC05E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7D0);
    sub_1C2C94EBC(&qword_1EC05E7E8, &qword_1EC05CA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E7E0);
  }

  return result;
}

uint64_t sub_1C2CD7F0C()
{
  type metadata accessor for CommunicationDetailsContactsTabView(0);

  return sub_1C2CCD7C4();
}

uint64_t sub_1C2CD7F7C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1C2CD7FD8()
{
  result = qword_1EC05E818;
  if (!qword_1EC05E818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E820);
    sub_1C2CD8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E818);
  }

  return result;
}