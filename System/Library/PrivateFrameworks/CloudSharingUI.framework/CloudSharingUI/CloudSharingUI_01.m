uint64_t sub_243B36698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_243B366E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FF2C();
  *a1 = result;
  return result;
}

uint64_t sub_243B36714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FF2C();
  *a1 = result;
  return result;
}

uint64_t sub_243B36740(uint64_t *a1)
{
  v1 = *a1;

  return sub_243B6FF3C();
}

uint64_t sub_243B3676C(uint64_t *a1)
{
  v1 = *a1;

  return sub_243B6FF3C();
}

unint64_t sub_243B367BC()
{
  result = qword_27EDA23E0;
  if (!qword_27EDA23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2290, &qword_243B72C20);
    sub_243B2E680(&qword_27EDA23E8, &qword_27EDA23F0, &unk_243B72E40);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA23E0);
  }

  return result;
}

void sub_243B368C0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = type metadata accessor for PermissionsView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_allocWithZone(MEMORY[0x277CFBC88]) initWithSearchType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2410, &qword_243B72FF0);
  sub_243B702BC();
  v11 = v54;
  [v10 setDelegate_];

  v12 = v10;
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  [v13 setClipsToBounds_];

  sub_243B333E8(*&v15, v9);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2418, &qword_243B72FF8));
  v17 = sub_243B7013C();
  v18 = [v17 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = v12;
  v21 = [v17 view];
  CSSetCNAutocompleteSearchControllerHeaderView(v20, v21);

  v22 = [v17 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v20 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 topAnchor];
  v29 = [v24 constraintEqualToAnchor_];

  v30 = *(a4 + 16);
  *(a4 + 16) = v29;

  v31 = *(a4 + 16);
  if (v31)
  {
    [v31 setConstant_];
    v31 = *(a4 + 16);
  }

  [v31 setActive_];
  v32 = [v17 view];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v20 view];
  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  [v38 setActive_];

  v39 = [v17 view];
  if (!v39)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v20 view];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  [v45 setActive_];

  v46 = [v17 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = [v46 bottomAnchor];

  v48 = [v20 view];
  if (v48)
  {
    v49 = [v48 safeAreaLayoutGuide];

    v50 = [v49 bottomAnchor];
    v51 = [v47 constraintEqualToAnchor_];

    [v51 setActive_];
    swift_getKeyPath();
    v54 = a3;
    sub_243B37320();
    sub_243B6FAFC();

    v52 = *&a3[OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel];
    swift_unknownObjectWeakAssign();

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_243B36E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v13[0] = a2;
  sub_243B37320();
  sub_243B6FAFC();

  v6 = *(a2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  v7 = type metadata accessor for AutocompleteSearchCoordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v8[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel] = v6;
  v14.receiver = v8;
  v14.super_class = v7;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v13[3] = &type metadata for InvitedPeopleView;
  v13[4] = &off_2856C6FF0;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v11 = OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate;
  swift_beginAccess();

  sub_243B37378(v13, v10 + v11);
  swift_endAccess();
  return v10;
}

id sub_243B36F78@<X0>(void *a1@<X8>)
{
  result = sub_243B36E20(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

uint64_t sub_243B36FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B37580();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243B37048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B37580();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243B370AC()
{
  sub_243B37580();
  sub_243B7029C();
  __break(1u);
}

uint64_t sub_243B370D4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243B37144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243B3718C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_243B371EC()
{
  result = qword_27EDA2408;
  if (!qword_27EDA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2408);
  }

  return result;
}

uint64_t sub_243B37240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B37320();
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
}

uint64_t sub_243B372C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_243B5BAA4(v4);
}

uint64_t sub_243B372F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_243B5BAA4(v4);
}

unint64_t sub_243B37320()
{
  result = qword_27EDA20B8;
  if (!qword_27EDA20B8)
  {
    type metadata accessor for CreateiCloudLinkViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20B8);
  }

  return result;
}

uint64_t sub_243B37378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B373E8()
{
  v0 = sub_243B6FB9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v5 = sub_243B6FB8C();
  v6 = sub_243B709BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_243B40EA8(0xD000000000000022, 0x8000000243B75CD0, &v11);
    _os_log_impl(&dword_243B1E000, v5, v6, "InvitedPeopleView: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D4A570](v8, -1, -1);
    MEMORY[0x245D4A570](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_243B37580()
{
  result = qword_27EDA2420;
  if (!qword_27EDA2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2420);
  }

  return result;
}

uint64_t sub_243B375D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B37648()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  swift_beginAccess();
  sub_243B6FBFC();
  swift_endAccess();
  return v0;
}

uint64_t sub_243B37708()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI13UserInterface__idiom;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24C0, &qword_243B731B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_243B377B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

uint64_t sub_243B37800()
{
  v0 = type metadata accessor for UserInterface(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_243B37648();
  return v3;
}

uint64_t sub_243B3788C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for SharingOptionsView(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for SharingOptionsViewModel();
  v7 = sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel);

  return a1(v3, v4, v5, v6, v7);
}

double SharingOptionsView.init(viewModel:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SharingOptionsView(0);
  v5 = a2 + v4[5];
  *v5 = sub_243B37800;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2438, &qword_243B75180);
  sub_243B705AC();
  result = *&v9;
  *(a2 + v6) = v9;
  v8 = a2 + v4[6];
  *v8 = sub_243B384D0;
  *(v8 + 1) = a1;
  v8[16] = 0;
  return result;
}

uint64_t SharingOptionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SharingOptionsGroupsView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SharingOptionsView(0);
  v45 = *(v1 + *(v8 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2440, &unk_243B73040);
  sub_243B705BC();
  v9 = v44;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v10 = v7 + *(v4 + 20);
  *v10 = sub_243B42A48;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  if (!v9)
  {
    sub_243B2C694(0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  }

  type metadata accessor for SharingOptionsObservableModel();
  sub_243B384D8(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B7074C();
  v16 = (*(v12 + 32))(v7 + *(v4 + 24), v15, v11);
  v17 = *(v8 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_243B38520(v2, &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_243B708FC();
  v19 = sub_243B708EC();
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  sub_243B387C4(&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SharingOptionsView);
  v23 = sub_243B7092C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v43 = v7;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v37 - v26;
  sub_243B7090C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v39 = sub_243B6FE6C();
    v40 = &v37;
    v38 = *(v39 - 8);
    v28 = *(v38 + 64);
    MEMORY[0x28223BE20](v39);
    v42 = &v37;
    v37 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_243B70B6C();

    *&v45 = 0xD000000000000034;
    *(&v45 + 1) = 0x8000000243B75D00;
    v44 = 51;
    v30 = sub_243B70C5C();
    v41 = &v37;
    MEMORY[0x245D498A0](v30);

    MEMORY[0x28223BE20](v31);
    (*(v24 + 16))(&v37 - v26, &v37 - v26, v23);
    v32 = v37;
    sub_243B6FE5C();
    (*(v24 + 8))(v27, v23);
    sub_243B387C4(v43, a1, type metadata accessor for SharingOptionsGroupsView);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E38, &unk_243B73060);
    return (*(v38 + 32))(a1 + *(v33 + 36), v32, v39);
  }

  else
  {
    v35 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E40, &qword_243B71FB0) + 36));
    v36 = sub_243B6FE0C();
    (*(v24 + 32))(&v35[*(v36 + 20)], &v37 - v26, v23);
    *v35 = &unk_243B73058;
    *(v35 + 1) = v21;
    return sub_243B387C4(v43, a1, type metadata accessor for SharingOptionsGroupsView);
  }
}

uint64_t sub_243B3806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_243B708FC();
  *(v3 + 48) = sub_243B708EC();
  v5 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B38104, v5, v4);
}

uint64_t sub_243B38104()
{
  v1 = v0[5];
  v25 = v1;

  v24 = type metadata accessor for SharingOptionsView(0);
  v2 = (v1 + *(v24 + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for SharingOptionsViewModel();
  sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v6 = v0[2];
  v7 = sub_243B6FD3C();
  v8 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  v9 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 8);
  v10 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 16);
  v11 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 24);

  v12 = sub_243B6FD3C();
  v13 = *(v12 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  v14 = *(v12 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8);
  sub_243B2E364(v13);

  v15 = sub_243B6FD3C();
  v16 = *(v15 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  v17 = *(v15 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8);
  sub_243B2E364(v16);

  v18 = type metadata accessor for SharingOptionsObservableModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_243B2B740(v6, v13, v14, v16, v17, v8, v9, v10, v11);
  sub_243B2BFCC(v16);
  sub_243B2BFCC(v13);
  *(v0 + 1) = *(v25 + *(v24 + 28));
  v0[4] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2440, &unk_243B73040);
  sub_243B705CC();
  v22 = v0[1];

  return v22();
}

uint64_t sub_243B38404(uint64_t a1)
{
  v2 = sub_243B6FD0C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243B6FEFC();
}

uint64_t sub_243B384D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B38520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B38584()
{
  v1 = type metadata accessor for SharingOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243B6FD0C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v6 + v1[5];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_243B386E0();
  v13 = v6 + v1[6];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_243B386E0();
  v17 = (v6 + v1[7]);
  v18 = *v17;

  v19 = v17[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B386E8()
{
  v2 = *(type metadata accessor for SharingOptionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243B2E7BC;

  return sub_243B3806C(v4, v5, v0 + v3);
}

uint64_t sub_243B387C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B38870(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B388A8()
{
  sub_243B38938();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243B38938()
{
  if (!qword_27EDA2468)
  {
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2468);
    }
  }
}

uint64_t sub_243B3899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_243B38A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_243B38B48()
{
  sub_243B38BFC();
  if (v0 <= 0x3F)
  {
    sub_243B38C54();
    if (v1 <= 0x3F)
    {
      sub_243B38CE8();
      if (v2 <= 0x3F)
      {
        sub_243B38D7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B38BFC()
{
  if (!qword_27EDA2488)
  {
    sub_243B6FD0C();
    v0 = sub_243B6FD2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2488);
    }
  }
}

void sub_243B38C54()
{
  if (!qword_27EDA2490)
  {
    type metadata accessor for UserInterface(255);
    sub_243B384D8(&qword_27EDA2498, type metadata accessor for UserInterface);
    v0 = sub_243B6FD5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2490);
    }
  }
}

void sub_243B38CE8()
{
  if (!qword_27EDA24A0)
  {
    type metadata accessor for SharingOptionsViewModel();
    sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel);
    v0 = sub_243B6FD5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA24A0);
    }
  }
}

void sub_243B38D7C()
{
  if (!qword_27EDA24A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2438, &qword_243B75180);
    v0 = sub_243B705EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA24A8);
    }
  }
}

uint64_t sub_243B38DE0()
{
  type metadata accessor for SharingOptionsGroupsView(255);
  sub_243B384D8(&qword_27EDA24B0, type metadata accessor for SharingOptionsGroupsView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243B38E7C()
{
  result = qword_27EDA24B8;
  if (!qword_27EDA24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA24B8);
  }

  return result;
}

void sub_243B38EE4()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA24C8 = v2;
  unk_27EDA24D0 = v4;
}

void sub_243B38FB0()
{
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA24D8 = v2;
  unk_27EDA24E0 = v4;
}

uint64_t CopyiCloudLinkView.init(viewModel:copyLinkAndDismiss:dismiss:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for CopyiCloudLinkViewModel(0);
  sub_243B3D23C(&qword_27EDA24E8, type metadata accessor for CopyiCloudLinkViewModel);
  result = sub_243B6FE1C();
  *a5 = result;
  a5[1] = v11;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t CopyiCloudLinkView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B6FA8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = *(v1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 2, v18))
  {
    if (qword_27EDA1D70 != -1)
    {
      swift_once();
    }

    v20 = qword_27EDA24C8;
    v21 = unk_27EDA24D0;
  }

  else
  {
    v22 = v28;
    (*(v4 + 32))(v28, v16, v3);
    v20 = sub_243B6FA4C();
    v23 = v3;
    v21 = v24;
    (*(v4 + 8))(v22, v23);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  (*(v19 + 56))(v11, 1, 2, v18);
  v25 = sub_243B41AB0(v14, v11);
  sub_243B3C0FC(v11);
  sub_243B3C0FC(v14);
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for CopyiCloudLinkContentView() + 32)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  *a1 = v20;
  *(a1 + 8) = v21;
  *(a1 + 16) = v25 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
}

uint64_t sub_243B394CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for CopyiCloudLinkContentView();
  sub_243B2E06C(v1 + *(v12 + 32), v11, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v11, a1, &qword_27EDA2270, "LT");
  }

  v14 = *v11;
  sub_243B709DC();
  v15 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_243B396B8@<Q0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2518, &qword_243B733F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2520, &qword_243B73400);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2528, &qword_243B73408);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2530, &qword_243B73410);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2538, &qword_243B73418);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2540, &qword_243B73420);
  v11 = sub_243B3C58C();
  v12 = sub_243B30AF8();
  *&v26 = v10;
  *(&v26 + 1) = MEMORY[0x277D837D0];
  *&v27 = v11;
  *(&v27 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v26 = v9;
  *(&v26 + 1) = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2560, &qword_243B73438);
  v16 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438);
  *&v26 = v15;
  *(&v26 + 1) = v16;
  v17 = swift_getOpaqueTypeConformance2();
  *&v26 = v7;
  *(&v26 + 1) = v8;
  *&v27 = v14;
  *(&v27 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  sub_243B6FE9C();
  sub_243B7076C();
  sub_243B6FEDC();
  v18 = v24;
  (*(v3 + 32))(v24, v6, v2);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2570, &qword_243B73440) + 36);
  v20 = v31;
  *(v19 + 64) = v30;
  *(v19 + 80) = v20;
  *(v19 + 96) = v32;
  v21 = v27;
  *v19 = v26;
  *(v19 + 16) = v21;
  result = v29;
  *(v19 + 32) = v28;
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_243B399D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_243B7008C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2540, &qword_243B73420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2538, &qword_243B73418);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2528, &qword_243B73408);
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v16);
  v35 = &v34 - v18;
  *v11 = sub_243B700EC();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2578, &qword_243B73448) + 44)];
  v38 = a1;
  sub_243B39EBC(a1, v19);
  v20 = [objc_opt_self() systemBackgroundColor];
  v21 = sub_243B7054C();
  v22 = sub_243B702FC();
  v23 = &v11[*(v8 + 36)];
  *v23 = v21;
  v23[8] = v22;
  if (qword_27EDA1D78 != -1)
  {
    swift_once();
  }

  v40 = qword_27EDA24D8;
  v41 = unk_27EDA24E0;
  v24 = sub_243B3C58C();
  v25 = sub_243B30AF8();
  v26 = MEMORY[0x277D837D0];
  sub_243B7045C();
  sub_243B2E620(v11, &qword_27EDA2540, &qword_243B73420);
  (*(v4 + 104))(v7, *MEMORY[0x277CDDDC0], v3);
  v40 = v8;
  v41 = v26;
  v42 = v24;
  v43 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_243B7049C();
  (*(v4 + 8))(v7, v3);
  v29 = (*(v34 + 8))(v15, v12);
  MEMORY[0x28223BE20](v29);
  *(&v34 - 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2530, &qword_243B73410);
  v40 = v12;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2560, &qword_243B73438);
  v31 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438);
  v40 = v30;
  v41 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  sub_243B704CC();
  return (*(v36 + 8))(v28, v32);
}

uint64_t sub_243B39EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v212 = sub_243B7022C();
  v211 = *(v212 - 8);
  v3 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v210 = v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CopyiCloudLinkContentView();
  v181 = *(v5 - 8);
  v6 = *(v181 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v182 = v7;
  v183 = v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25C8, &qword_243B73478);
  v8 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v185 = v169 - v9;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25D0, &qword_243B73480);
  v10 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v190 = v169 - v11;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25D8, &qword_243B73488);
  v12 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v193 = v169 - v13;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25E0, &qword_243B73490);
  v14 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v192 = v169 - v15;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25E8, &qword_243B73498);
  v16 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v195 = v169 - v17;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25F0, &qword_243B734A0);
  v18 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v198 = v169 - v19;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25F8, &qword_243B734A8);
  v202 = *(v203 - 8);
  v20 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v199 = v169 - v21;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2600, &qword_243B734B0);
  v22 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v201 = v169 - v23;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2608, &qword_243B734B8);
  v24 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v205 = v169 - v25;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2610, &qword_243B734C0);
  v26 = *(*(v204 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v204);
  v209 = v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v206 = v169 - v30;
  MEMORY[0x28223BE20](v29);
  v208 = v169 - v31;
  v180 = sub_243B701FC();
  v178 = *(v180 - 8);
  v32 = *(v178 + 64);
  MEMORY[0x28223BE20](v180);
  v177 = v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2618, &qword_243B734C8);
  v34 = *(*(v179 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v179);
  v207 = v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v215 = v169 - v37;
  v38 = sub_243B701DC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v170 = v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v43 = v42 - 8;
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v46 = v169 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v169 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = v169 - v55;
  v176 = sub_243B706DC();
  v175 = *(v176 - 8);
  v57 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v59 = v169 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2620, &qword_243B734D8);
  v60 = *(*(v173 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v173);
  v194 = v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v172 = v169 - v64;
  MEMORY[0x28223BE20](v63);
  v214 = v169 - v65;
  v174 = v59;
  sub_243B706CC();
  v171 = sub_243B7030C();
  v188 = a1;
  sub_243B394CC(v56);
  (*(v39 + 104))(v54, *MEMORY[0x277CE0558], v38);
  (*(v39 + 56))(v54, 0, 1, v38);
  v66 = *(v43 + 56);
  sub_243B2E06C(v56, v46, &qword_27EDA2270, "LT");
  sub_243B2E06C(v54, &v46[v66], &qword_27EDA2270, "LT");
  v67 = *(v39 + 48);
  if (v67(v46, 1, v38) == 1)
  {
    sub_243B2E620(v54, &qword_27EDA2270, "LT");
    sub_243B2E620(v56, &qword_27EDA2270, "LT");
    if (v67(&v46[v66], 1, v38) == 1)
    {
      sub_243B2E620(v46, &qword_27EDA2270, "LT");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_243B2E06C(v46, v51, &qword_27EDA2270, "LT");
  if (v67(&v46[v66], 1, v38) == 1)
  {
    sub_243B2E620(v54, &qword_27EDA2270, "LT");
    sub_243B2E620(v56, &qword_27EDA2270, "LT");
    (*(v39 + 8))(v51, v38);
LABEL_6:
    sub_243B2E620(v46, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_8;
  }

  v68 = v170;
  (*(v39 + 32))(v170, &v46[v66], v38);
  sub_243B3D23C(&qword_27EDA22E0, MEMORY[0x277CE0570]);
  v169[1] = sub_243B707FC();
  v69 = *(v39 + 8);
  v69(v68, v38);
  sub_243B2E620(v54, &qword_27EDA2270, "LT");
  sub_243B2E620(v56, &qword_27EDA2270, "LT");
  v69(v51, v38);
  sub_243B2E620(v46, &qword_27EDA2270, "LT");
LABEL_8:
  sub_243B6FCCC();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v172;
  (*(v175 + 32))(v172, v174, v176);
  v79 = v78 + *(v173 + 36);
  *v79 = v171;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  sub_243B304EC(v78, v214, &qword_27EDA2620, &qword_243B734D8);
  v80 = v188;
  v81 = v188[1];
  *&v222 = *v188;
  *(&v222 + 1) = v81;
  sub_243B30AF8();

  v82 = sub_243B703BC();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  KeyPath = swift_getKeyPath();
  v90 = swift_getKeyPath();
  v217 = v86 & 1;
  v216 = 0;
  *&v222 = v82;
  *(&v222 + 1) = v84;
  LOBYTE(v223) = v86 & 1;
  *(&v223 + 1) = *v219;
  DWORD1(v223) = *&v219[3];
  *(&v223 + 1) = v88;
  *&v224 = KeyPath;
  BYTE8(v224) = 1;
  *(&v224 + 9) = *v218;
  HIDWORD(v224) = *&v218[3];
  *&v225 = v90;
  *(&v225 + 1) = 3;
  LOBYTE(v226) = 0;
  v91 = v177;
  sub_243B701EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2628, &qword_243B73540);
  sub_243B3C948();
  v92 = v215;
  v93 = v180;
  sub_243B7041C();
  (*(v178 + 8))(v91, v93);
  v220[2] = v224;
  v220[3] = v225;
  v221 = v226;
  v220[1] = v223;
  v220[0] = v222;
  sub_243B2E620(v220, &qword_27EDA2628, &qword_243B73540);
  v94 = sub_243B702EC();
  v95 = v92 + *(v179 + 36);
  *v95 = v94;
  *(v95 + 8) = 0u;
  *(v95 + 24) = 0u;
  *(v95 + 40) = 1;
  v96 = v183;
  sub_243B3D284(v80, v183, type metadata accessor for CopyiCloudLinkContentView);
  v97 = (*(v181 + 80) + 16) & ~*(v181 + 80);
  v98 = swift_allocObject();
  sub_243B3C684(v96, v98 + v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2668, &qword_243B73560);
  sub_243B3CCA0();
  v99 = v185;
  sub_243B7060C();
  v100 = sub_243B7035C();
  v101 = swift_getKeyPath();
  v102 = &v99[*(v184 + 36)];
  *v102 = v101;
  v102[1] = v100;
  v103 = *(v80 + 16);
  if (v103)
  {
    v104 = objc_opt_self();
    v105 = [v104 tertiaryLabelColor];
    v106 = sub_243B7054C();
    v107 = v99;
    v108 = v190;
    sub_243B304EC(v107, v190, &qword_27EDA25C8, &qword_243B73478);
    *(v108 + *(v186 + 36)) = v106;
    v109 = [v104 tertiarySystemGroupedBackgroundColor];
    v110 = sub_243B7054C();
  }

  else
  {
    v111 = sub_243B7051C();
    v112 = v99;
    v108 = v190;
    sub_243B304EC(v112, v190, &qword_27EDA25C8, &qword_243B73478);
    *(v108 + *(v186 + 36)) = v111;
    v110 = sub_243B704FC();
  }

  v113 = v110;
  v114 = swift_getKeyPath();
  *&v222 = v113;
  v115 = sub_243B6FDCC();
  v116 = v193;
  sub_243B304EC(v108, v193, &qword_27EDA25D0, &qword_243B73480);
  v117 = (v116 + *(v189 + 36));
  *v117 = v114;
  v117[1] = v115;
  v118 = v192;
  v119 = &v192[*(v187 + 36)];
  v120 = *(sub_243B6FEBC() + 20);
  v121 = *MEMORY[0x277CE0118];
  v122 = sub_243B700DC();
  (*(*(v122 - 8) + 104))(&v119[v120], v121, v122);
  __asm { FMOV            V0.2D, #12.0 }

  *v119 = _Q0;
  *&v119[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2678, &qword_243B735C8) + 36)] = 256;
  sub_243B304EC(v116, v118, &qword_27EDA25D8, &qword_243B73488);
  LOBYTE(v121) = sub_243B702EC();
  v128 = v195;
  sub_243B304EC(v118, v195, &qword_27EDA25E0, &qword_243B73490);
  v129 = v128 + *(v191 + 36);
  *v129 = v121;
  *(v129 + 8) = 0u;
  *(v129 + 24) = 0u;
  *(v129 + 40) = 1;
  LOBYTE(v121) = sub_243B7031C();
  v130 = [objc_opt_self() currentDevice];
  [v130 userInterfaceIdiom];

  sub_243B6FCCC();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v198;
  sub_243B304EC(v128, v198, &qword_27EDA25E8, &qword_243B73498);
  v140 = v139 + *(v197 + 36);
  *v140 = v121;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  v141 = v210;
  sub_243B7021C();
  sub_243B3CDD4(&qword_27EDA2680, &qword_27EDA25F0, &qword_243B734A0, sub_243B3CE58);
  sub_243B3D23C(&qword_27EDA2108, MEMORY[0x277CDE400]);
  v142 = v199;
  v143 = v212;
  sub_243B703FC();
  (*(v211 + 8))(v141, v143);
  sub_243B2E620(v139, &qword_27EDA25F0, &qword_243B734A0);
  v144 = v201;
  v145 = &v201[*(v196 + 36)];
  v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA26D8, &qword_243B735F0) + 28);
  v147 = *MEMORY[0x277CDF420];
  v148 = sub_243B6FD1C();
  (*(*(v148 - 8) + 104))(v145 + v146, v147, v148);
  *v145 = swift_getKeyPath();
  (*(v202 + 32))(v144, v142, v203);
  v149 = swift_getKeyPath();
  v150 = swift_allocObject();
  *(v150 + 16) = v103;
  v151 = v205;
  sub_243B304EC(v144, v205, &qword_27EDA2600, &qword_243B734B0);
  v152 = (v151 + *(v200 + 36));
  *v152 = v149;
  v152[1] = sub_243B3D224;
  v152[2] = v150;
  sub_243B7076C();
  sub_243B6FEDC();
  v153 = v206;
  sub_243B304EC(v151, v206, &qword_27EDA2608, &qword_243B734B8);
  v154 = (v153 + *(v204 + 36));
  v155 = v227;
  v154[4] = v226;
  v154[5] = v155;
  v154[6] = v228;
  v156 = v223;
  *v154 = v222;
  v154[1] = v156;
  v157 = v225;
  v154[2] = v224;
  v154[3] = v157;
  v158 = v208;
  sub_243B304EC(v153, v208, &qword_27EDA2610, &qword_243B734C0);
  v159 = v214;
  v160 = v194;
  sub_243B2E06C(v214, v194, &qword_27EDA2620, &qword_243B734D8);
  v161 = v215;
  v162 = v207;
  sub_243B2E06C(v215, v207, &qword_27EDA2618, &qword_243B734C8);
  v163 = v209;
  sub_243B2E06C(v158, v209, &qword_27EDA2610, &qword_243B734C0);
  v164 = v213;
  sub_243B2E06C(v160, v213, &qword_27EDA2620, &qword_243B734D8);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA26E0, &qword_243B73658);
  v166 = v164 + v165[12];
  *v166 = 0;
  *(v166 + 8) = 1;
  sub_243B2E06C(v162, v164 + v165[16], &qword_27EDA2618, &qword_243B734C8);
  v167 = v164 + v165[20];
  *v167 = 0;
  *(v167 + 8) = 1;
  sub_243B2E06C(v163, v164 + v165[24], &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v158, &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v161, &qword_27EDA2618, &qword_243B734C8);
  sub_243B2E620(v159, &qword_27EDA2620, &qword_243B734D8);
  sub_243B2E620(v163, &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v162, &qword_27EDA2618, &qword_243B734C8);
  return sub_243B2E620(v160, &qword_27EDA2620, &qword_243B734D8);
}

__n128 sub_243B3B584@<Q0>(uint64_t a1@<X8>)
{
  sub_243B700CC();
  type metadata accessor for CreateiCloudLinkViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_243B703AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_243B7076C();
  sub_243B6FEDC();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_243B3B6D4(uint64_t a1)
{
  v2 = sub_243B7019C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2560, &qword_243B73438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_243B7018C();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2580, &qword_243B73450);
  sub_243B2E680(&qword_27EDA2588, &qword_27EDA2580, &qword_243B73450);
  sub_243B6FD6C();
  v9 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438);
  MEMORY[0x245D491F0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_243B3B8C0(uint64_t a1)
{
  v2 = type metadata accessor for CopyiCloudLinkContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B3D284(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CopyiCloudLinkContentView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_243B3C684(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2590, &qword_243B73458);
  sub_243B3C74C();
  return sub_243B7060C();
}

double sub_243B3BA14@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25C0, &qword_243B73470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = sub_243B7057C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B7056C();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  sub_243B7059C();

  (*(v7 + 8))(v10, v6);
  sub_243B7010C();
  v11 = sub_243B7011C();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = sub_243B7058C();

  sub_243B2E620(v5, &qword_27EDA25C0, &qword_243B73470);
  v13 = objc_opt_self();
  v14 = [v13 secondaryLabelColor];
  v15 = sub_243B7054C();
  v16 = [v13 tertiarySystemFillColor];
  v17 = sub_243B7054C();
  sub_243B7076C();
  sub_243B6FDBC();
  *a1 = v12;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  v18 = v20[1];
  *(a1 + 24) = v20[0];
  *(a1 + 40) = v18;
  result = *&v21;
  *(a1 + 56) = v21;
  return result;
}

uint64_t sub_243B3BCD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B2E06C(a1, &v6 - v4, &qword_27EDA2270, "LT");
  return sub_243B6FF5C();
}

uint64_t sub_243B3BD7C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();
}

uint64_t sub_243B3BDFC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_243B3D284(a1, &v13 - v9, type metadata accessor for CopyiCloudLinkViewModel.State);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B3D284(v10, v8, type metadata accessor for CopyiCloudLinkViewModel.State);

  sub_243B6FC4C();
  return sub_243B3C0FC(v10);
}

uint64_t sub_243B3BF18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FFCC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3BF44(uint64_t *a1)
{
  v1 = *a1;

  return sub_243B6FFDC();
}

uint64_t sub_243B3BF70@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D49030]();
  *a1 = result;
  return result;
}

uint64_t sub_243B3BF9C(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x245D49040](v2);
}

uint64_t sub_243B3BFC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B7000C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243B3C034(uint64_t a1)
{
  v2 = sub_243B6FD1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x245D48F60](v5);
}

uint64_t sub_243B3C0FC(uint64_t a1)
{
  v2 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CopyiCloudLinkContentView()
{
  result = qword_27EDA2500;
  if (!qword_27EDA2500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_243B3C1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243B3C244(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243B3C2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B3C3CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B3C47C()
{
  sub_243B3C518();
  if (v0 <= 0x3F)
  {
    sub_243B3312C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_243B3C518()
{
  result = qword_27EDA2510;
  if (!qword_27EDA2510)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EDA2510);
  }

  return result;
}

unint64_t sub_243B3C58C()
{
  result = qword_27EDA2548;
  if (!qword_27EDA2548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2540, &qword_243B73420);
    sub_243B2E680(&qword_27EDA2550, &qword_27EDA2558, &qword_243B73428);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2548);
  }

  return result;
}

uint64_t sub_243B3C684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3C6E8()
{
  v1 = *(type metadata accessor for CopyiCloudLinkContentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 48);
  return (*(v2 + 40))();
}

unint64_t sub_243B3C74C()
{
  result = qword_27EDA2598;
  if (!qword_27EDA2598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2590, &qword_243B73458);
    sub_243B3C7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2598);
  }

  return result;
}

unint64_t sub_243B3C7D8()
{
  result = qword_27EDA25A0;
  if (!qword_27EDA25A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25A8, &qword_243B73460);
    sub_243B2E680(&qword_27EDA25B0, &qword_27EDA25B8, &qword_243B73468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA25A0);
  }

  return result;
}

uint64_t sub_243B3C890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B6FFAC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3C8E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_243B7002C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_243B3C918(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_243B7003C();
}

unint64_t sub_243B3C948()
{
  result = qword_27EDA2630;
  if (!qword_27EDA2630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2628, &qword_243B73540);
    sub_243B3CA00();
    sub_243B2E680(&qword_27EDA2658, &qword_27EDA2660, &qword_243B73558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2630);
  }

  return result;
}

unint64_t sub_243B3CA00()
{
  result = qword_27EDA2638;
  if (!qword_27EDA2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2640, &qword_243B73548);
    sub_243B2E680(&qword_27EDA2648, &qword_27EDA2650, &qword_243B73550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2638);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for CopyiCloudLinkContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_243B701DC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
    v12 = *(v5 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B3CC3C()
{
  v1 = *(type metadata accessor for CopyiCloudLinkContentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  return (*(v2 + 24))();
}

unint64_t sub_243B3CCA0()
{
  result = qword_27EDA2670;
  if (!qword_27EDA2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2668, &qword_243B73560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2670);
  }

  return result;
}

uint64_t sub_243B3CD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FFCC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3CD50(uint64_t *a1)
{
  v1 = *a1;

  return sub_243B6FFDC();
}

uint64_t sub_243B3CD7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D49030]();
  *a1 = result;
  return result;
}

uint64_t sub_243B3CDA8(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x245D49040](v2);
}

uint64_t sub_243B3CDD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243B3CE88()
{
  result = qword_27EDA2690;
  if (!qword_27EDA2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25E0, &qword_243B73490);
    sub_243B3CF40();
    sub_243B2E680(&qword_27EDA26D0, &qword_27EDA2678, &qword_243B735C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2690);
  }

  return result;
}

unint64_t sub_243B3CF40()
{
  result = qword_27EDA2698;
  if (!qword_27EDA2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25D8, &qword_243B73488);
    sub_243B3CFF8();
    sub_243B2E680(&qword_27EDA20F8, &qword_27EDA2100, &qword_243B728A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2698);
  }

  return result;
}

unint64_t sub_243B3CFF8()
{
  result = qword_27EDA26A0;
  if (!qword_27EDA26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25D0, &qword_243B73480);
    sub_243B3D0B0();
    sub_243B2E680(&qword_27EDA26C0, &qword_27EDA26C8, &unk_243B735E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26A0);
  }

  return result;
}

unint64_t sub_243B3D0B0()
{
  result = qword_27EDA26A8;
  if (!qword_27EDA26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25C8, &qword_243B73478);
    sub_243B2E680(&qword_27EDA26B0, &qword_27EDA26B8, &unk_243B735D0);
    sub_243B2E680(&qword_27EDA20E8, &qword_27EDA20F0, &qword_243B728A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26A8);
  }

  return result;
}

uint64_t sub_243B3D1BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B7000C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243B3D23C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B3D284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_243B3D2F0()
{
  result = qword_27EDA26E8;
  if (!qword_27EDA26E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2570, &qword_243B73440);
    sub_243B2E680(&qword_27EDA26F0, &qword_27EDA2518, &qword_243B733F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26E8);
  }

  return result;
}

uint64_t sub_243B3D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243B3D4AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_243B3D594()
{
  sub_243B3D970(319, &qword_27EDA1E70, type metadata accessor for AlertViewModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_243B3D920(319, &qword_27EDA2708, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_243B3D6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B6FACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243B3D774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_243B6FACC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_243B3D830()
{
  sub_243B6FACC();
  if (v0 <= 0x3F)
  {
    sub_243B3D920(319, &qword_27EDA2720, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_243B3D970(319, &qword_27EDA2728, type metadata accessor for AlertViewModelButton, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B3D920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_243B3D970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_243B3DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B6FACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_243B3DB50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_243B6FACC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_243B3DC84()
{
  sub_243B6FACC();
  if (v0 <= 0x3F)
  {
    sub_243B3D970(319, &qword_27EDA2748, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_243B3DD58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B3DD58()
{
  if (!qword_27EDA2750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2758, "x_");
    v0 = sub_243B70B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2750);
    }
  }
}

uint64_t sub_243B3DE08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B6FACC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_243B3DE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  sub_243B2E06C(v3, v18 - v6, &qword_27EDA1E00, &unk_243B73660);
  v8 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_243B3E898(v7);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = &v7[*(v8 + 20)];
    v9 = *v11;
    v10 = *(v11 + 1);

    sub_243B3EAC0(v7);
  }

  v18[1] = v10;
  v27 = v9;
  v28 = v10;
  v12 = v3 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v12) = *(v12 + 16);
  v24 = v13;
  v25 = v14;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2768, &qword_243B73780);
  v15 = sub_243B706AC();
  v20 = v18;
  v19 = v23;
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2770, &qword_243B73788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2778, &qword_243B73790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2780, &qword_243B73798);
  sub_243B2E680(&qword_27EDA2788, &qword_27EDA2770, &qword_243B73788);
  sub_243B30AF8();
  sub_243B3E910();
  sub_243B3EA44();
  sub_243B704BC();
}

uint64_t sub_243B3E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27A0, &unk_243B737A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  v12 = type metadata accessor for AlertViewModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B2E06C(a1, v11, &qword_27EDA1E00, &unk_243B73660);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_243B3E898(v11);
    v17 = 1;
    v18 = v22;
  }

  else
  {
    sub_243B3ED60(v11, v16, type metadata accessor for AlertViewModel);
    v23 = *&v16[*(v12 + 28)];

    v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27C0, &qword_243B737B0);
    sub_243B6FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27B0, &qword_243B740D0);
    sub_243B2E680(&qword_27EDA27C8, &qword_27EDA27C0, &qword_243B737B0);
    sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0);
    sub_243B3EB1C(&qword_27EDA27D0, type metadata accessor for AlertViewModelButton);
    sub_243B706FC();
    sub_243B3EAC0(v16);
    v19 = v22;
    (*(v4 + 32))(v22, v7, v3);
    v17 = 0;
    v18 = v19;
  }

  return (*(v4 + 56))(v18, v17, 1, v3);
}

uint64_t sub_243B3E4EC(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_243B2E06C(a1 + *(v3 + 32), &v12[-v8], &qword_27EDA2730, &qword_243B73698);
  sub_243B3EB64(a1, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_243B3ED60(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AlertViewModelButton);
  v13 = a1;
  return sub_243B705FC();
}

uint64_t sub_243B3E6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AlertViewModelButton(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_243B2D5E0(v4, v5, v6);
}

uint64_t sub_243B3E71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - v6;
  sub_243B2E06C(a1, v17 - v6, &qword_27EDA1E00, &unk_243B73660);
  v8 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_243B3E898(v7);
LABEL_5:
    result = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v9 = &v7[*(v8 + 24)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_243B3EAC0(v7);
  if (!v10)
  {
    goto LABEL_5;
  }

  v17[0] = v11;
  v17[1] = v10;
  sub_243B30AF8();
  result = sub_243B703BC();
  v16 = v15 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

uint64_t sub_243B3E898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B3E910()
{
  result = qword_27EDA2790;
  if (!qword_27EDA2790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2778, &qword_243B73790);
    sub_243B3E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2790);
  }

  return result;
}

unint64_t sub_243B3E994()
{
  result = qword_27EDA2798;
  if (!qword_27EDA2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA27A0, &unk_243B737A0);
    sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2798);
  }

  return result;
}

unint64_t sub_243B3EA44()
{
  result = qword_27EDA27B8;
  if (!qword_27EDA27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2780, &qword_243B73798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA27B8);
  }

  return result;
}

uint64_t sub_243B3EAC0(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B3EB1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243B3EB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3EBC8()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_243B6FACC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  sub_243B30B4C(*v7, *(v7 + 8), *(v7 + 16));
  v8 = *(v7 + 24);

  v9 = v1[6];
  v10 = sub_243B6FCBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[7]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B3ED60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B3EDC8()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_243B3EE44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2770, &qword_243B73788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2778, &qword_243B73790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2780, &qword_243B73798);
  sub_243B2E680(&qword_27EDA2788, &qword_27EDA2770, &qword_243B73788);
  sub_243B30AF8();
  sub_243B3E910();
  sub_243B3EA44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243B3EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_243B41D94(a3, v27 - v11);
  v13 = sub_243B7092C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_243B2E620(v12, &qword_27EDA1F28, &qword_243B72490);
  }

  else
  {
    sub_243B7091C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_243B708DC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_243B7083C() + 32;
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

      sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);

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

  sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);
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

uint64_t sub_243B3F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_243B41D94(a3, v27 - v11);
  v13 = sub_243B7092C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_243B2E620(v12, &qword_27EDA1F28, &qword_243B72490);
  }

  else
  {
    sub_243B7091C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_243B708DC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_243B7083C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2818, &qword_243B738B0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);

      return v24;
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

  sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2818, &qword_243B738B0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_243B3F53C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();
}

uint64_t CopyiCloudLinkViewModel.__allocating_init(fileURL:)(uint64_t a1)
{
  v3 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + 48);
  v11 = *(v1 + 52);
  v12 = swift_allocObject();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v13 - 8) + 56))(v9, 1, 2, v13);
  sub_243B3F95C(v9, v7);
  sub_243B6FBFC();
  sub_243B3C0FC(v9);
  v14 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v15 = sub_243B6FA8C();
  (*(*(v15 - 8) + 32))(v12 + v14, a1, v15);
  return v12;
}

uint64_t CopyiCloudLinkViewModel.init(fileURL:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v16 - 8) + 56))(v14, 1, 2, v16);
  sub_243B3F95C(v14, v12);
  sub_243B6FBFC();
  sub_243B3C0FC(v14);
  (*(v4 + 32))(v1 + v15, v7, v3);
  v17 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v18 = sub_243B6FA8C();
  (*(*(v18 - 8) + 32))(v1 + v17, a1, v18);
  return v1;
}

uint64_t sub_243B3F95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3F9C0()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_243B6FB9C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243B3FAB8, 0, 0);
}

uint64_t sub_243B3FAB8()
{
  v18 = v0;
  v1 = v0[6];
  sub_243B6FB5C();
  v2 = sub_243B6FB8C();
  v3 = sub_243B709AC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v17);
    _os_log_impl(&dword_243B1E000, v2, v3, "%{public}s Start", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D4A570](v9, -1, -1);
    MEMORY[0x245D4A570](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[6];
  v12 = v0[2];
  v11 = v0[3];
  v13 = sub_243B7092C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_243B3EF48(0, 0, v11, &unk_243B737F8, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_243B3FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v6 = sub_243B6FB9C();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v4[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v4[28] = v11;
  v4[29] = *(v11 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243B3FE90, 0, 0);
}

uint64_t sub_243B3FE90()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = objc_opt_self();
  v4 = sub_243B6FA5C();
  v0[32] = v4;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_243B3FFE0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B5A89C;
  v0[13] = &block_descriptor_1;
  v0[14] = v5;
  [v3 existingShareForFileOrFolderURL:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B3FFE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_243B404AC;
  }

  else
  {
    v3 = sub_243B400F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243B400F0()
{
  v41 = v0;
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  sub_243B42300(v0[26], v4);
  v6 = *(v4 + *(v3 + 48));
  v7 = sub_243B6FA8C();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v2, v4, v7);

  sub_243B6FB6C();
  v9 = sub_243B6FB8C();
  v10 = sub_243B709AC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  if (v11)
  {
    v38 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v40);
    _os_log_impl(&dword_243B1E000, v9, v10, "%{public}s Fetched existing share. Updating property.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D4A570](v16, -1, -1);
    v17 = v15;
    v6 = v38;
    MEMORY[0x245D4A570](v17, -1, -1);
  }

  (*(v14 + 8))(v12, v13);
  v18 = v0[31];
  v19 = v0[27];
  (*(v8 + 16))(v18, v19, v7);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v20 - 8) + 56))(v18, 0, 2, v20);
  (*(v8 + 8))(v19, v7);

  v21 = v0[30];
  v22 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v25 = v0[26];
  v26 = v0[27];
  v36 = v0[25];
  v37 = v0[23];
  v39 = v0[22];
  v28 = v0[18];
  v27 = v0[19];
  v29 = sub_243B7092C();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_243B3F95C(v22, v21);
  sub_243B708FC();

  v30 = sub_243B708EC();
  v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v30;
  v32[3] = v33;
  v32[4] = v28;
  sub_243B421A4(v21, v32 + v31);
  sub_243B3EF48(0, 0, v27, &unk_243B738F8, v32);

  sub_243B3C0FC(v22);

  v34 = v0[1];

  return v34();
}

uint64_t sub_243B404AC()
{
  v38 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[22];
  swift_willThrow();

  sub_243B6FB6C();
  v4 = v1;
  v5 = sub_243B6FB8C();
  v6 = sub_243B709CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[33];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v37);
    *(v12 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_243B1E000, v5, v6, "%{public}s Unable to fetch existing share with error: %@", v12, 0x16u);
    sub_243B2E620(v13, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D4A570](v14, -1, -1);
    MEMORY[0x245D4A570](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[31];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v18 - 8) + 56))(v17, 2, 2, v18);
  v19 = v0[30];
  v20 = v0[31];
  v22 = v0[28];
  v21 = v0[29];
  v23 = v0[26];
  v24 = v0[27];
  v34 = v0[25];
  v35 = v0[23];
  v36 = v0[22];
  v26 = v0[18];
  v25 = v0[19];
  v27 = sub_243B7092C();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_243B3F95C(v20, v19);
  sub_243B708FC();

  v28 = sub_243B708EC();
  v29 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v28;
  v30[3] = v31;
  v30[4] = v26;
  sub_243B421A4(v19, v30 + v29);
  sub_243B3EF48(0, 0, v25, &unk_243B738F8, v30);

  sub_243B3C0FC(v20);

  v32 = v0[1];

  return v32();
}

uint64_t sub_243B4083C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243B4087C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B3FCCC(a1, v4, v5, v6);
}

uint64_t CopyiCloudLinkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v4 = sub_243B6FA8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CopyiCloudLinkViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v4 = sub_243B6FA8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_243B40AC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CopyiCloudLinkViewModel(0);
  result = sub_243B6FBEC();
  *a1 = result;
  return result;
}

uint64_t sub_243B40B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  sub_243B708FC();
  v5[6] = sub_243B708EC();
  v8 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B40BD4, v8, v7);
}

uint64_t sub_243B40BD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_243B3F95C(v4, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B3F95C(v2, v3);

  sub_243B6FC4C();
  sub_243B3C0FC(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_243B40CB8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243B40DB0;

  return v7(a1);
}

uint64_t sub_243B40DB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_243B40EA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243B413CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243B319B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_243B40F9C()
{
  sub_243B411A4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_243B6FA8C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243B2E7BC;

  return v6();
}

void sub_243B411A4()
{
  if (!qword_27EDA27F8)
  {
    type metadata accessor for CopyiCloudLinkViewModel.State(255);
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA27F8);
    }
  }
}

uint64_t sub_243B41210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B4129C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_243B4132C()
{
  sub_243B41384();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_243B41384()
{
  if (!qword_27EDA2810)
  {
    v0 = sub_243B6FA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2810);
    }
  }
}

unint64_t sub_243B413CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243B414D8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_243B70B9C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243B414D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_243B41524(a1, a2);
  sub_243B41654(&unk_2856C6810);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243B41524(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243B41740(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243B70B9C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243B7086C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243B41740(v10, 0);
        result = sub_243B70B5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243B41654(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_243B417B4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243B41740(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2820, &qword_243B738C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243B417B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2820, &qword_243B738C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_243B418A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_243B4199C;

  return v6(v2 + 32);
}

uint64_t sub_243B4199C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_243B41AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243B6FA8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2830, &unk_243B73950);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_243B3F95C(a1, &v25 - v16);
  sub_243B3F95C(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 2, v19);
  if (!v21)
  {
    sub_243B3F95C(v17, v12);
    if (!v20(&v17[v18], 2, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = sub_243B6FA6C();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_243B3C0FC(v17);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if (v20(&v17[v18], 2, v19) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v20(&v17[v18], 2, v19) != 2)
  {
LABEL_9:
    sub_243B2E620(v17, &qword_27EDA2830, &unk_243B73950);
    v22 = 0;
    return v22 & 1;
  }

  sub_243B3C0FC(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_243B41D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B41E04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B41E3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243B2EC14;

  return sub_243B418A8(a1, v5);
}

uint64_t sub_243B41EF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243B2E7BC;

  return sub_243B418A8(a1, v5);
}

uint64_t sub_243B41FAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243B2EC14;

  return sub_243B40CB8(a1, v5);
}

uint64_t sub_243B4207C()
{
  v1 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 2, v7))
  {
    v8 = sub_243B6FA8C();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B421A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B42208(uint64_t a1)
{
  v4 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243B2EC14;

  return sub_243B40B04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_243B42300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B42384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  return sub_243B2E06C(v3 + v4, a2, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B4245C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_243B2E06C(a1, &v10[-v6], &qword_27EDA1E00, &unk_243B73660);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAEC();

  return sub_243B2E620(v7, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B425AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool);
  return result;
}

uint64_t SharingOptionsGroupsView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for SharingOptionsGroupsView(0);
  v10 = a2 + *(v9 + 20);
  *v10 = sub_243B42A48;
  *(v10 + 1) = 0;
  v10[16] = 0;
  if (!a1)
  {
    sub_243B2C694(0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  }

  type metadata accessor for SharingOptionsObservableModel();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B7074C();
  return (*(v5 + 32))(a2 + *(v9 + 24), v8, v4);
}

uint64_t sub_243B42848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_243B7007C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_243B2E06C(v2, &v17 - v11, &qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_243B6FD0C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_243B709DC();
    v16 = sub_243B702CC();
    sub_243B6FB4C();

    sub_243B7006C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_243B42A48()
{
  v0 = type metadata accessor for UserInterface(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_243B37648();
}

uint64_t SharingOptionsGroupsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2838, &qword_243B739A0);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v43 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2840, &qword_243B739A8);
  v45 = *(v51 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v51);
  v44 = &v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2848, &qword_243B739B0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2850, &qword_243B739B8);
  v14 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v16 = &v43 - v15;
  v17 = type metadata accessor for SharingOptionsGroupsView(0);
  v18 = (v2 + *(v17 + 20));
  v20 = *v18;
  v19 = v18[1];
  v21 = *(v18 + 16);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v53 = v2;
  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2858, &qword_243B73A08);
    sub_243B483C4(&qword_27EDA2860, &qword_27EDA2858, &qword_243B73A08, sub_243B473E4);
    sub_243B7036C();
    v22 = *(v17 + 24);
    sub_243B7072C();
    v23 = v57;
    swift_getKeyPath();
    v57 = v23;
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    v24 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
    swift_beginAccess();
    v25 = v50;
    v26 = &v5[*(v50 + 36)];
    sub_243B2E06C(v23 + v24, v26, &qword_27EDA1E00, &unk_243B73660);

    sub_243B7073C();
    swift_getKeyPath();
    sub_243B7075C();

    (*(v46 + 8))(v13, v10);
    v27 = v54;
    v28 = v55;
    LOBYTE(v23) = v56;
    v29 = v26 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = v23;
    sub_243B7072C();
    sub_243B253BC();

    sub_243B7055C();
    v30 = sub_243B474F8();
    v31 = v44;
    sub_243B703EC();

    sub_243B2E620(v5, &qword_27EDA2838, &qword_243B739A0);
    v32 = v45;
    v33 = v51;
    (*(v45 + 16))(v49, v31, v51);
    swift_storeEnumTagMultiPayload();
    sub_243B475E0();
    v54 = v25;
    v55 = v30;
    swift_getOpaqueTypeConformance2();
    sub_243B7014C();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    sub_243B702DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28B8, &qword_243B73A88);
    sub_243B476D0();
    sub_243B6FCEC();
    v35 = *(v17 + 24);
    sub_243B7072C();
    v36 = v57;
    swift_getKeyPath();
    v57 = v36;
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    v37 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
    swift_beginAccess();
    v38 = &v16[*(v48 + 36)];
    sub_243B2E06C(v36 + v37, v38, &qword_27EDA1E00, &unk_243B73660);

    sub_243B7073C();
    swift_getKeyPath();
    sub_243B7075C();

    (*(v46 + 8))(v13, v10);
    v39 = v54;
    v40 = v55;
    LOBYTE(v35) = v56;
    v41 = v38 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
    *v41 = v39;
    *(v41 + 8) = v40;
    *(v41 + 16) = v35;
    sub_243B2E06C(v16, v49, &qword_27EDA2850, &qword_243B739B8);
    swift_storeEnumTagMultiPayload();
    sub_243B475E0();
    v42 = sub_243B474F8();
    v54 = v50;
    v55 = v42;
    swift_getOpaqueTypeConformance2();
    sub_243B7014C();
    return sub_243B2E620(v16, &qword_27EDA2850, &qword_243B739B8);
  }
}

uint64_t sub_243B432A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for SharingOptionsGroupsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = v7;
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28F0, &qword_243B73AA0);
  v10 = *(v9 - 8);
  v52 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28E0, &qword_243B73A98);
  v15 = *(v14 - 8);
  v54 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v43 - v17;
  *v13 = sub_243B700FC();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  *&v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A00, &qword_243B73C60) + 44);
  v47 = *(v4 + 32);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v44 = a1;
  sub_243B7072C();
  v18 = v56;
  swift_getKeyPath();
  v56 = v18;
  v50 = sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v19 = *(v18 + 152);

  v56 = v19;
  v48 = v8;
  v49 = type metadata accessor for SharingOptionsGroupsView;
  sub_243B48A30(a1, v8, type metadata accessor for SharingOptionsGroupsView);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_243B48A9C(v8, v21 + v20, type metadata accessor for SharingOptionsGroupsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A08, &qword_243B73C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A10, &qword_243B73C98);
  sub_243B2E680(&qword_27EDA2A18, &qword_27EDA2A08, &qword_243B73C90);
  sub_243B2E680(&qword_27EDA2A20, &qword_27EDA2A10, &qword_243B73C98);
  sub_243B48B1C();
  sub_243B706FC();
  v22 = v44;
  sub_243B7072C();
  v23 = *(v56 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins + 16);
  v45 = *(v56 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  v43 = v23;

  v24 = sub_243B702FC();
  v25 = &v13[*(v52 + 44)];
  *v25 = v24;
  *(v25 + 24) = v43;
  *(v25 + 8) = v45;
  v25[40] = 0;
  sub_243B7072C();
  v26 = v56;
  swift_getKeyPath();
  v56 = v26;
  sub_243B6FAFC();

  swift_beginAccess();
  v27 = *(v26 + 72);
  v28 = *(v26 + 80);

  v29 = v28 == 0.0 && v27 == 0.0;
  v30 = v53;
  sub_243B304EC(v13, v53, &qword_27EDA28F0, &qword_243B73AA0);
  v31 = (v30 + *(v54 + 44));
  *v31 = v29;
  v31[1] = 0;
  v33 = v48;
  v32 = v49;
  sub_243B48A30(v22, v48, v49);
  v34 = swift_allocObject();
  sub_243B48A9C(v33, v34 + v20, v32);
  v35 = sub_243B7076C();
  v37 = v36;
  v38 = v55;
  sub_243B304EC(v30, v55, &qword_27EDA28E0, &qword_243B73A98);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28D0, &qword_243B73A90) + 36));
  *v39 = sub_243B52860;
  v39[1] = 0;
  v39[2] = v35;
  v39[3] = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_243B48CE8;
  *(v40 + 24) = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28B8, &qword_243B73A88);
  v42 = (v38 + *(result + 36));
  *v42 = sub_243B48D98;
  v42[1] = v40;
  return result;
}

uint64_t sub_243B43850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v178 = a3;
  *&v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  *&v172 = *(v173 - 8);
  v5 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = v149 - v6;
  v7 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v8 = *(*(v7 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v177 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v149 - v12;
  MEMORY[0x28223BE20](v11);
  v183 = v149 - v14;
  v164 = sub_243B6FD0C();
  v163 = *(v164 - 8);
  v15 = *(v163 + 64);
  v16 = MEMORY[0x28223BE20](v164);
  v160 = v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v159 = v149 - v18;
  v162 = sub_243B7077C();
  v161 = *(v162 - 8);
  v19 = *(v161 + 64);
  v20 = MEMORY[0x28223BE20](v162);
  v158 = v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v149 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A30, &qword_243B73CC8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v157 = v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v156 = v149 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v149 - v32;
  MEMORY[0x28223BE20](v31);
  v155 = (v149 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A38, &qword_243B73CD0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v175 = v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v176 = v149 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v174 = v149 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = a1[1];
  v168 = *a1;
  v167 = v44;
  v45 = a1[3];
  v169 = a1[4];
  v46 = a1[6];
  v170 = a1[5];
  v179 = v46;
  v166 = *(a1 + 56);
  v165 = a2;
  v181 = v149 - v43;
  v182 = v24;
  v180 = v25;
  if (!v45)
  {
    goto LABEL_8;
  }

  v47 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v47 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v184 = a1[2];
    v185 = v45;
    sub_243B30AF8();

    v48 = sub_243B703BC();
    v50 = v49;
    v154 = v7;
    v52 = v51;
    sub_243B7053C();
    v53 = sub_243B7038C();
    v153 = v23;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v149[1] = v59;

    sub_243B30B4C(v48, v50, v52 & 1);
    a2 = v165;

    sub_243B7034C();
    v151 = sub_243B7037C();
    v61 = v60;
    v150 = v62;
    v152 = v63;
    sub_243B30B4C(v54, v56, v58 & 1);

    v64 = v159;
    sub_243B42848(v159);
    v65 = v163;
    v66 = v160;
    v67 = v164;
    (*(v163 + 104))(v160, *MEMORY[0x277CDF3C0], v164);
    v68 = sub_243B6FCFC();
    v69 = *(v65 + 8);
    v69(v66, v67);
    v69(v64, v67);
    v70 = v161;
    v71 = MEMORY[0x277CE13A8];
    if ((v68 & 1) == 0)
    {
      v71 = MEMORY[0x277CE13D8];
    }

    v72 = v153;
    v73 = v162;
    (*(v161 + 104))(v153, *v71, v162);
    v74 = v182;
    (*(v70 + 32))(&v33[*(v182 + 36)], v72, v73);
    *v33 = v151;
    *(v33 + 1) = v61;
    v7 = v154;
    v33[16] = v150 & 1;
    *(v33 + 3) = v152;
    v75 = v155;
    sub_243B304EC(v33, v155, &qword_27EDA2A30, &qword_243B73CC8);
    v76 = v75;
    v77 = v181;
    sub_243B304EC(v76, v181, &qword_27EDA2A30, &qword_243B73CC8);
    v78 = *(v180 + 56);
    v79 = v77;
    v80 = 0;
    v81 = v74;
  }

  else
  {
LABEL_8:
    v78 = *(v25 + 56);
    v79 = v149 - v43;
    v80 = 1;
    v81 = v24;
  }

  v155 = v78;
  (v78)(v79, v80, 1, v81);
  v82 = type metadata accessor for SharingOptionsGroupsView(0);
  v83 = (a2 + *(v82 + 20));
  v84 = *v83;
  v85 = v83[1];
  v86 = *(v83 + 16);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface);
  v87 = v167;

  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  LOBYTE(v86) = v184;
  v88 = *(v82 + 24);
  v89 = v173;
  sub_243B7072C();
  v90 = v171;
  sub_243B7073C();
  swift_getKeyPath();
  sub_243B7075C();

  (*(v172 + 8))(v90, v89);
  v91 = v184;
  v92 = v185;
  v93 = v188;
  *v13 = v168;
  *(v13 + 1) = v87;
  v13[17] = v86;
  v13[16] = v166;
  v94 = v179;
  *(v13 + 3) = v179;
  v95 = v7[8];
  type metadata accessor for SharingOptionsObservableModel();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);

  v173 = v186;
  v172 = v187;
  sub_243B7074C();
  v96 = &v13[v7[9]];
  *v96 = v91;
  *(v96 + 1) = v92;
  v97 = v172;
  *(v96 + 1) = v173;
  *(v96 + 2) = v97;
  v96[48] = v93;
  v98 = *(v94 + 16);
  v99 = v94 - 24;
  v100 = v98 + 1;
  while (--v100)
  {
    v101 = (v99 + 56);
    v102 = *(v99 + 104);
    v99 += 56;
    if (!v102)
    {
      v103 = v101 + 1;
LABEL_15:
      v104 = v183;
      v105 = *v101;
      v106 = *v103;

      goto LABEL_16;
    }
  }

  if (v98)
  {
    v103 = (v179 + 40);
    v101 = (v94 + 32);
    goto LABEL_15;
  }

  v105 = 0;
  v106 = 0xE000000000000000;
  v104 = v183;
LABEL_16:

  v107 = &v13[v7[10]];
  *v107 = v105;
  *(v107 + 1) = v106;
  *(v107 + 2) = 0;
  sub_243B48A9C(v13, v104, type metadata accessor for SharingOptionsGroupsView.GroupView);
  if (!v170)
  {
    goto LABEL_23;
  }

  v108 = HIBYTE(v170) & 0xF;
  if ((v170 & 0x2000000000000000) == 0)
  {
    v108 = v169 & 0xFFFFFFFFFFFFLL;
  }

  if (v108)
  {
    v184 = v169;
    v185 = v170;
    sub_243B30AF8();

    v109 = sub_243B703BC();
    v111 = v110;
    v113 = v112;
    sub_243B7053C();
    v114 = sub_243B7038C();
    v116 = v115;
    v118 = v117;

    sub_243B30B4C(v109, v111, v113 & 1);

    sub_243B7034C();
    v119 = sub_243B7037C();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    sub_243B30B4C(v114, v116, v118 & 1);

    v126 = v159;
    sub_243B42848(v159);
    v127 = v163;
    v128 = v160;
    v129 = v164;
    (*(v163 + 104))(v160, *MEMORY[0x277CDF3C0], v164);
    LOBYTE(v111) = sub_243B6FCFC();
    v130 = *(v127 + 8);
    v130(v128, v129);
    v130(v126, v129);
    v131 = v183;
    v132 = v161;
    v133 = MEMORY[0x277CE13A8];
    if ((v111 & 1) == 0)
    {
      v133 = MEMORY[0x277CE13D8];
    }

    v134 = v158;
    v135 = v162;
    (*(v161 + 104))(v158, *v133, v162);
    v136 = v182;
    v137 = v157;
    (*(v132 + 32))(&v157[*(v182 + 36)], v134, v135);
    *v137 = v119;
    *(v137 + 8) = v121;
    v138 = v123 & 1;
    v104 = v131;
    *(v137 + 16) = v138;
    *(v137 + 24) = v125;
    v139 = v156;
    sub_243B304EC(v137, v156, &qword_27EDA2A30, &qword_243B73CC8);
    v140 = v174;
    sub_243B304EC(v139, v174, &qword_27EDA2A30, &qword_243B73CC8);
    (v155)(v140, 0, 1, v136);
  }

  else
  {
LABEL_23:
    v140 = v174;
    (*(v180 + 56))(v174, 1, 1, v182);
  }

  v141 = v181;
  v142 = v176;
  sub_243B2E06C(v181, v176, &qword_27EDA2A38, &qword_243B73CD0);
  v143 = v104;
  v144 = v177;
  sub_243B48A30(v143, v177, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v145 = v175;
  sub_243B2E06C(v140, v175, &qword_27EDA2A38, &qword_243B73CD0);
  v146 = v178;
  sub_243B2E06C(v142, v178, &qword_27EDA2A38, &qword_243B73CD0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A40, &qword_243B73D00);
  sub_243B48A30(v144, v146 + *(v147 + 48), type metadata accessor for SharingOptionsGroupsView.GroupView);
  sub_243B2E06C(v145, v146 + *(v147 + 64), &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B2E620(v140, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B48DC8(v183);
  sub_243B2E620(v141, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B2E620(v145, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B48DC8(v144);
  return sub_243B2E620(v142, &qword_27EDA2A38, &qword_243B73CD0);
}

uint64_t sub_243B44690(double a1, double a2)
{
  v4 = *(type metadata accessor for SharingOptionsGroupsView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v6 = *(v12 + 72);
  v5 = *(v12 + 80);

  if (v6 == 0.0 && v5 == 0.0)
  {
    sub_243B7072C();
    v7 = v11;
    swift_beginAccess();
    if (*(v11 + 72) != a1 || *(v11 + 80) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *(v7 + 72) = a1;
    *(v7 + 80) = a2;
  }

  sub_243B7072C();
  v7 = v11;
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B6FAFC();

  swift_beginAccess();
  a1 = *(v11 + 72);

  swift_beginAccess();
  if (*(v11 + 72) == a1 && *(v11 + 80) == a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B6FAEC();
}

uint64_t sub_243B449A4(uint64_t a1)
{
  v2 = type metadata accessor for SharingOptionsGroupsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(MEMORY[0x28223BE20](v2 - 8) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v6 = *(v11 + 152);

  v11 = v6;
  sub_243B48A30(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_243B48A9C(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SharingOptionsGroupsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A08, &qword_243B73C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2870, &unk_243B73A10);
  sub_243B2E680(&qword_27EDA2A18, &qword_27EDA2A08, &qword_243B73C90);
  sub_243B473E4();
  sub_243B48B1C();
  return sub_243B706FC();
}

uint64_t sub_243B44C10(_OWORD *a1)
{
  v5 = *a1;
  v6 = a1[1];
  *v7 = a1[2];
  *&v7[9] = *(a1 + 41);
  if (*(&v6 + 1))
  {
    v1 = *(a1 + 2);
    v2 = HIBYTE(*(&v6 + 1)) & 0xFLL;
    if ((*(&v6 + 1) & 0x2000000000000000) == 0)
    {
      v2 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      sub_243B30AF8();

      sub_243B703BC();
    }
  }

  if (*&v7[8])
  {
    v3 = HIBYTE(*&v7[8]) & 0xFLL;
    if ((*&v7[8] & 0x2000000000000000) == 0)
    {
      v3 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      sub_243B30AF8();

      sub_243B703BC();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2780, &qword_243B73798);
  type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  sub_243B3EA44();
  sub_243B4738C(&qword_27EDA2878, type metadata accessor for SharingOptionsGroupsView.GroupView);
  return sub_243B7070C();
}

uint64_t sub_243B44DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v35 = a2;
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = *(a1 + 8);
  *&v37 = *a1;
  v10 = type metadata accessor for SharingOptionsGroupsView(0);
  v11 = (a2 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface);

  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  LOBYTE(v14) = v40;
  LOBYTE(v12) = *(a1 + 56);
  v45 = *(a1 + 48);
  v15 = v45;
  v16 = *(v10 + 24);
  sub_243B7072C();
  sub_243B7073C();
  swift_getKeyPath();
  sub_243B7075C();

  (*(v38 + 8))(v8, v5);
  v17 = v40;
  v18 = v41;
  LODWORD(v38) = v44;
  v19 = v36;
  *v36 = v37;
  v19[1] = v9;
  v20 = v19;
  *(v19 + 17) = v14;
  *(v19 + 16) = v12;
  v19[3] = v15;
  v21 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v22 = v21[8];
  v37 = v42;
  v35 = v43;
  sub_243B2E06C(&v45, v39, &qword_27EDA1F60, &unk_243B724B0);
  type metadata accessor for SharingOptionsObservableModel();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);

  sub_243B7074C();
  v23 = v20 + v21[9];
  *v23 = v17;
  *(v23 + 8) = v18;
  v24 = v35;
  *(v23 + 16) = v37;
  *(v23 + 32) = v24;
  *(v23 + 48) = v38;
  v25 = v15[2];
  v26 = v15 - 3;
  v27 = v25 + 1;
  while (--v27)
  {
    v28 = v26 + 7;
    v29 = *(v26 + 104);
    v26 += 7;
    if (!v29)
    {
      v30 = v28 + 1;
LABEL_7:
      v31 = *v28;
      v32 = *v30;

      goto LABEL_8;
    }
  }

  if (v25)
  {
    v30 = v15 + 5;
    v28 = v15 + 4;
    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_8:

  v34 = (v20 + v21[10]);
  *v34 = v31;
  v34[1] = v32;
  v34[2] = 0;
  return result;
}

uint64_t sub_243B45140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (v6 && (*(a3 + 16) == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (v8 = *(a3 + 24), (sub_243B70C6C() & 1) != 0)))
  {
    *(a3 + 16) = a1;
    *(a3 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

double sub_243B452A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B7009C();
  v21 = 1;
  sub_243B453D4(a1, &v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_243B2E06C(&v22, &v11, &qword_27EDA2A68, &qword_243B73EC0);
  sub_243B2E620(v30, &qword_27EDA2A68, &qword_243B73EC0);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a2 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a2 + 113) = *&v20[96];
  *(a2 + 129) = v6;
  v7 = *v20;
  *(a2 + 33) = *&v20[16];
  result = *&v20[32];
  v9 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v21;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 144) = *&v20[127];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_243B453D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B700FC();
  LOBYTE(v20[0]) = 1;
  sub_243B455E0(a1, v27);
  *&v26[7] = v27[0];
  *&v26[23] = v27[1];
  *&v26[39] = v27[2];
  *&v26[55] = v27[3];
  if (*(a1 + 48))
  {
    v5 = sub_243B7056C();
    v6 = sub_243B704EC();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v5 = 0;
    KeyPath = 0;
    v6 = 0;
  }

  v12 = v4;
  v13[0] = 1;
  *&v13[1] = *v26;
  *&v13[49] = *&v26[48];
  *&v13[33] = *&v26[32];
  *&v13[17] = *&v26[16];
  *&v13[64] = *&v26[63];
  v14 = v4;
  v15 = *v13;
  v19 = *&v26[63];
  v17 = *&v13[32];
  v18 = *&v13[48];
  v16 = *&v13[16];
  sub_243B2E06C(&v12, v20, &qword_27EDA2A70, &qword_243B73EC8);
  sub_243B4922C(v5);
  sub_243B4927C(v5);
  v8 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v8;
  *(a2 + 64) = v18;
  v9 = v19;
  v10 = v15;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v5;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v6;
  sub_243B4927C(v5);
  v20[0] = v4;
  v20[1] = 0;
  v21 = 1;
  v23 = *&v26[16];
  v24 = *&v26[32];
  *v25 = *&v26[48];
  *&v25[15] = *&v26[63];
  v22 = *v26;
  return sub_243B2E620(v20, &qword_27EDA2A70, &qword_243B73EC8);
}

uint64_t sub_243B455E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1[2];
  v40 = a1[3];
  sub_243B30AF8();

  v4 = sub_243B703BC();
  v6 = v5;
  v8 = v7;
  sub_243B7052C();
  v9 = sub_243B7038C();
  v11 = v10;
  v36 = v12;
  v37 = v13;

  sub_243B30B4C(v4, v6, v8 & 1);

  v14 = a1[5];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v39 = a1[4];
    v41 = a1[5];

    v16 = sub_243B703BC();
    v18 = v17;
    v20 = v19;
    sub_243B7032C();
    v21 = sub_243B7039C();
    v35 = v9;
    v34 = v22;
    v24 = v23;

    sub_243B30B4C(v16, v18, v20 & 1);

    sub_243B7053C();
    v25 = sub_243B7038C();
    v27 = v26;
    LOBYTE(v18) = v28;
    v30 = v29;

    v31 = v24 & 1;
    v9 = v35;
    sub_243B30B4C(v21, v34, v31);

    v32 = v18 & 1;
    sub_243B2D5E0(v25, v27, v18 & 1);
  }

  else
  {
LABEL_6:
    v25 = 0;
    v27 = 0;
    v32 = 0;
    v30 = 0;
  }

  sub_243B2D5E0(v9, v11, v36 & 1);

  sub_243B492D0(v25, v27, v32, v30);
  sub_243B49314(v25, v27, v32, v30);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v32;
  *(a2 + 56) = v30;
  sub_243B49314(v25, v27, v32, v30);
  sub_243B30B4C(v9, v11, v36 & 1);
}

uint64_t sub_243B4586C()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  sub_243B491F4(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A58, &qword_243B73EB8);
  sub_243B2E680(&qword_27EDA2A60, &qword_27EDA2A58, &qword_243B73EB8);
  return sub_243B7060C();
}

uint64_t sub_243B45988@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A78, &qword_243B73F00);
  v2 = *(v11[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v5 = v11 - v4;
  v14 = v1[3];
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A80, &qword_243B73F08);
  sub_243B705DC();
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A70, &qword_243B73EC8);
  sub_243B2E680(&qword_27EDA2A88, &qword_27EDA2A70, &qword_243B73EC8);
  sub_243B7065C();
  v13 = v15;
  sub_243B705BC();
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  sub_243B493EC(v1, &v13);
  sub_243B2E680(&qword_27EDA2A90, &qword_27EDA2A78, &qword_243B73F00);
  v9 = v11[0];
  sub_243B704DC();

  return (*(v2 + 8))(v5, v9);
}

__n128 sub_243B45BFC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B700FC();
  sub_243B45C90(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_243B45C90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1[2];
  v24 = a1[3];
  sub_243B30AF8();

  v4 = sub_243B703BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v23 = a1[4];
    v25 = a1[5];

    v13 = sub_243B703BC();
    v15 = v14;
    v17 = v16;
    v19 = v18 & 1;
    sub_243B2D5E0(v13, v14, v18 & 1);
  }

  else
  {
LABEL_6:
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
  }

  v20 = v8 & 1;
  sub_243B2D5E0(v4, v6, v20);

  sub_243B492D0(v13, v15, v19, v17);
  sub_243B49314(v13, v15, v19, v17);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v19;
  *(a2 + 56) = v17;
  sub_243B49314(v13, v15, v19, v17);
  sub_243B30B4C(v4, v6, v20);
}

uint64_t sub_243B45E10@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_243B45988(a1);
}

uint64_t sub_243B45E54@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2970, &qword_243B73BE8);
  v61 = *(v68 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v68);
  v58 = (&v56 - v3);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2978, &qword_243B73BF0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v67 = &v56 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2980, &qword_243B73BF8);
  v59 = *(v64 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = &v56 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2988, &qword_243B73C00);
  v62 = *(v65 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v60 = &v56 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2998, &qword_243B73C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29A0, &qword_243B73C18) - 8);
  v22 = *(v21 + 64);
  v23 = (MEMORY[0x28223BE20])(v1);
  v25 = &v56 - v24;
  LODWORD(v24) = *(v1 + 16);
  v70 = v26;
  if (v24 == 1)
  {
    *&v74 = *(v23 + 24);
    sub_243B48A30(v23, &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
    v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v28 = swift_allocObject();
    sub_243B48A9C(v20, v28 + v27, type metadata accessor for SharingOptionsGroupsView.GroupView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
    sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0);
    sub_243B48440();
    sub_243B48300();
    sub_243B706FC();
    v29 = v70;
    (*(v21 + 16))(v16, v25, v70);
    swift_storeEnumTagMultiPayload();
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    sub_243B7014C();
    return (*(v21 + 8))(v25, v29);
  }

  else
  {
    v56 = v13;
    v57 = v16;
    if (*(v23 + 17))
    {
      *&v74 = *(v23 + 24);
      sub_243B48A30(v23, &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
      v31 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v32 = swift_allocObject();
      sub_243B48A9C(v20, v32 + v31, type metadata accessor for SharingOptionsGroupsView.GroupView);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
      sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0);
      sub_243B482AC();
      sub_243B48300();
      v33 = MEMORY[0x277D837D0];
      v34 = v58;
      sub_243B706FC();
      v35 = v61;
      v36 = v68;
      (*(v61 + 16))(v67, v34, v68);
      swift_storeEnumTagMultiPayload();
      v37 = sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8);
      *&v74 = v64;
      *(&v74 + 1) = v33;
      v75 = v37;
      v76 = MEMORY[0x277D837F8];
      swift_getOpaqueTypeConformance2();
      sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
      v38 = v66;
      sub_243B7014C();
      (*(v35 + 8))(v34, v36);
    }

    else
    {
      v39 = (v23 + *(v17 + 40));
      v41 = *v39;
      v40 = v39[1];
      v61 = v39[2];
      *&v72 = v41;
      *(&v72 + 1) = v40;
      v73 = v61;
      v42 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
      v43 = sub_243B705DC();
      v58 = &v56;
      *&v44 = MEMORY[0x28223BE20](v43);
      v74 = v44;
      v75 = v45;
      v76 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29E8, &unk_243B73C20);
      sub_243B48640();
      sub_243B7063C();
      *&v74 = v41;
      *(&v74 + 1) = v40;
      v75 = v61;
      sub_243B705BC();
      v74 = v72;
      sub_243B48A30(v42, &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
      v47 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v48 = swift_allocObject();
      sub_243B48A9C(v20, v48 + v47, type metadata accessor for SharingOptionsGroupsView.GroupView);
      v49 = sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8);
      v50 = MEMORY[0x277D837F8];
      v51 = v60;
      v52 = v64;
      v53 = MEMORY[0x277D837D0];
      sub_243B704DC();

      (*(v59 + 8))(v8, v52);
      v54 = v62;
      v55 = v65;
      (*(v62 + 16))(v67, v51, v65);
      swift_storeEnumTagMultiPayload();
      *&v74 = v52;
      *(&v74 + 1) = v53;
      v75 = v49;
      v76 = v50;
      swift_getOpaqueTypeConformance2();
      sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
      v38 = v66;
      sub_243B7014C();
      (*(v54 + 8))(v51, v55);
    }

    sub_243B48354(v38, v57);
    swift_storeEnumTagMultiPayload();
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    sub_243B7014C();
    return sub_243B485D0(v38);
  }
}

uint64_t sub_243B4698C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v21 = a1[2];
  v22 = v9;
  v12 = a1[5];
  v20 = a1[4];
  v13 = *(a1 + 48) == 0;
  sub_243B48A30(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_243B48A9C(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v23 = v13;

  result = sub_243B705AC();
  v17 = v24;
  v18 = v25;
  v19 = v21;
  *a3 = v22;
  *(a3 + 8) = v10;
  *(a3 + 16) = v19;
  *(a3 + 24) = v11;
  *(a3 + 32) = v20;
  *(a3 + 40) = v12;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = sub_243B48954;
  *(a3 + 72) = v15;
  return result;
}

uint64_t sub_243B46B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v6 = a4 + *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) + 36);
  v7 = *(v6 + 2);
  v8 = *(v6 + 3);
  v10 = *v6;
  v11 = *(v6 + 1);
  v12 = *(v6 + 4);
  v13 = *(v6 + 5);
  v14 = v6[48];

  sub_243B22C04(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B7069C();

  return sub_243B2B0B0(v7, v8);
}

uint64_t sub_243B46C50(uint64_t a1)
{
  v2 = *(a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29F8, &qword_243B73C30);
  sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0);
  swift_getOpaqueTypeConformance2();
  sub_243B48300();
  return sub_243B706FC();
}

uint64_t sub_243B46D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_243B30AF8();

  result = sub_243B703BC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_243B46E10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v5 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v6 = a3 + v4[10];
  v7 = *v6;
  v8 = *(v6 + 2);
  v17 = v7;
  *&v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705DC();
  v9 = *a3;
  v10 = a3[1];
  v11 = a3 + v4[9];
  v12 = *(v11 + 1);
  v13 = v11[48];
  *&v17 = *v11;
  *(&v17 + 1) = v12;
  v14 = *(v11 + 2);
  v18 = *(v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B706AC();
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_243B25684(v21, *(&v21 + 1), v22, *(&v22 + 1), 1, v9, v10, &v17);

  v15 = v18;

  return sub_243B2B0B0(v15, *(&v15 + 1));
}

uint64_t sub_243B46FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v20 = a1[2];
  v21 = v9;
  v12 = a1[5];
  v19 = a1[4];
  v13 = *(a1 + 48) == 0;
  sub_243B48A30(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_243B48A9C(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v16 = v20;
  *a3 = v21;
  *(a3 + 8) = v10;
  *(a3 + 16) = v16;
  *(a3 + 24) = v11;
  *(a3 + 32) = v19;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = sub_243B4896C;
  *(a3 + 64) = v15;
}

uint64_t sub_243B47124(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v9 = *(v8 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v10 = *a4;
  v11 = a4[1];
  v12 = a4 + *(v8 + 36);
  v13 = *(v12 + 1);
  v14 = v12[48];
  *&v18 = *v12;
  *(&v18 + 1) = v13;
  v15 = *(v12 + 2);
  v19 = *(v12 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B706AC();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  sub_243B26218(a1, a2, a3, v10, v11, &v18);

  v16 = v19;

  return sub_243B2B0B0(v16, *(&v16 + 1));
}

uint64_t sub_243B47270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  return result;
}

uint64_t sub_243B472F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B4738C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243B473E4()
{
  result = qword_27EDA2868;
  if (!qword_27EDA2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2870, &unk_243B73A10);
    sub_243B3EA44();
    sub_243B4738C(&qword_27EDA2878, type metadata accessor for SharingOptionsGroupsView.GroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2868);
  }

  return result;
}

unint64_t sub_243B474F8()
{
  result = qword_27EDA2880;
  if (!qword_27EDA2880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2838, &qword_243B739A0);
    sub_243B2E680(&qword_27EDA2888, &qword_27EDA2890, &qword_243B73A78);
    sub_243B4738C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2880);
  }

  return result;
}

unint64_t sub_243B475E0()
{
  result = qword_27EDA28A0;
  if (!qword_27EDA28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2850, &qword_243B739B8);
    sub_243B2E680(&qword_27EDA28A8, &qword_27EDA28B0, &qword_243B73A80);
    sub_243B4738C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28A0);
  }

  return result;
}

unint64_t sub_243B476D0()
{
  result = qword_27EDA28C0;
  if (!qword_27EDA28C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28B8, &qword_243B73A88);
    sub_243B47788();
    sub_243B2E680(&qword_27EDA2918, &qword_27EDA2920, &qword_243B73AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28C0);
  }

  return result;
}

unint64_t sub_243B47788()
{
  result = qword_27EDA28C8;
  if (!qword_27EDA28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28D0, &qword_243B73A90);
    sub_243B47840();
    sub_243B2E680(&qword_27EDA2908, &qword_27EDA2910, &qword_243B73AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28C8);
  }

  return result;
}

unint64_t sub_243B47840()
{
  result = qword_27EDA28D8;
  if (!qword_27EDA28D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28E0, &qword_243B73A98);
    sub_243B478CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28D8);
  }

  return result;
}

unint64_t sub_243B478CC()
{
  result = qword_27EDA28E8;
  if (!qword_27EDA28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28F0, &qword_243B73AA0);
    sub_243B2E680(&qword_27EDA28F8, &qword_27EDA2900, &qword_243B73AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28E8);
  }

  return result;
}

uint64_t sub_243B479B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_243B47B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_243B47C3C()
{
  sub_243B47D38(319, &qword_27EDA2488, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_243B38C54();
    if (v1 <= 0x3F)
    {
      sub_243B47D38(319, &qword_27EDA2938, type metadata accessor for SharingOptionsObservableModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B47D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_243B47DA0()
{
  result = qword_27EDA2940;
  if (!qword_27EDA2940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2948, &qword_243B73B40);
    sub_243B475E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2838, &qword_243B739A0);
    sub_243B474F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2940);
  }

  return result;
}

uint64_t sub_243B47E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B47F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B48004()
{
  sub_243B481BC(319, &qword_27EDA2960, &type metadata for SharingOptionsObservableModel.Group.Option, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_243B47D38(319, &qword_27EDA2938, type metadata accessor for SharingOptionsObservableModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_243B48158();
      if (v2 <= 0x3F)
      {
        sub_243B481BC(319, &qword_27EDA2278, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B48158()
{
  if (!qword_27EDA2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA1DF0, &qword_243B71F40);
    v0 = sub_243B706BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2968);
    }
  }
}

void sub_243B481BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_243B4822C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B46FA8(a1, v6, a2);
}

unint64_t sub_243B482AC()
{
  result = qword_27EDA29B0;
  if (!qword_27EDA29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29B0);
  }

  return result;
}

unint64_t sub_243B48300()
{
  result = qword_27EDA29B8;
  if (!qword_27EDA29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29B8);
  }

  return result;
}

uint64_t sub_243B48354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B483C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243B48440()
{
  result = qword_27EDA29D8;
  if (!qword_27EDA29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29D8);
  }

  return result;
}

unint64_t sub_243B48494()
{
  result = qword_27EDA29E0;
  if (!qword_27EDA29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2990, &qword_243B73C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2980, &qword_243B73BF8);
    sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8);
    swift_getOpaqueTypeConformance2();
    sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29E0);
  }

  return result;
}

uint64_t sub_243B485D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B48640()
{
  result = qword_27EDA29F0;
  if (!qword_27EDA29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA29E8, &unk_243B73C20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29F0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v1[9]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[3])
  {

    v12 = v9[5];
  }

  v13 = v0 + v3 + v1[10];
  v14 = *(v13 + 8);

  v15 = *(v13 + 16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B48854(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_243B46E10(a1, a2, v6);
}

uint64_t sub_243B488D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B4698C(a1, v6, a2);
}

uint64_t sub_243B48984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

uint64_t sub_243B48A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B48A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_243B48B1C()
{
  result = qword_27EDA2A28;
  if (!qword_27EDA2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2A28);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for SharingOptionsGroupsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243B6FD0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[*(v1 + 20)];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_243B38EE0();
  v12 = *(v1 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  (*(*(v13 - 8) + 8))(&v5[v12], v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B48CE8(double a1, double a2)
{
  v4 = *(*(type metadata accessor for SharingOptionsGroupsView(0) - 8) + 80);

  return sub_243B44690(a1, a2);
}

uint64_t sub_243B48D60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B48DC8(uint64_t a1)
{
  v2 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B48E3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharingOptionsGroupsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_243B48EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243B48F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
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

uint64_t sub_243B48FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243B49008(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_243B49070()
{
  result = qword_27EDA2A48;
  if (!qword_27EDA2A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2A50, qword_243B73DA0);
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2A48);
  }

  return result;
}

uint64_t sub_243B49160()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_243B4922C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243B4927C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243B492D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243B2D5E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243B49314(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243B30B4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243B49360()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_243B49468()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2A78, &qword_243B73F00);
  sub_243B2E680(&qword_27EDA2A90, &qword_27EDA2A78, &qword_243B73F00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243B49574(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for AddressingViewModel();
  v6 = sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t AddressingView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B384D0;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AddressingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for AddressingViewModel();
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel);
  sub_243B6FD3C();
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for AddressingView_iOS() + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGSize(0);
  sub_243B705AC();
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = sub_243B498AC;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = sub_243B6FE1C();
  *(a1 + 48) = result;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_243B49770@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for AddressingViewModel();
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel);
  sub_243B6FD3C();
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for AddressingView_iOS() + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGSize(0);
  sub_243B705AC();
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = sub_243B498AC;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = sub_243B6FE1C();
  *(a1 + 48) = result;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_243B498AC()
{
  v0 = type metadata accessor for KeyboardObserver();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_243B6FBFC();
  return v3;
}

uint64_t sub_243B4990C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for AddressingView_iOS();
  sub_243B2E06C(v1 + *(v12 + 28), v11, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B4E074(v11, a1);
  }

  v14 = *v11;
  sub_243B709DC();
  v15 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_243B49AE4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for AddressingView_iOS();
  v52 = *(v2 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27B0, &qword_243B740D0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AE8, &qword_243B740D8);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v11;
  v12 = sub_243B7008C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AF0, &qword_243B740E0);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AF8, &qword_243B740E8);
  v23 = *(v22 - 8);
  v46 = v22;
  v47 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v43 = &v42 - v25;
  v42 = v1;
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B00, &qword_243B740F0);
  sub_243B4D694(&qword_27EDA2B08, &qword_27EDA2B00, &qword_243B740F0, sub_243B4D664);
  sub_243B6FE9C();
  v26 = *(v1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  (*(v13 + 104))(v16, *MEMORY[0x277CDDDC0], v12);
  v27 = sub_243B2E680(&qword_27EDA2B90, &qword_27EDA2AF0, &qword_243B740E0);
  v28 = sub_243B30AF8();
  v29 = v44;
  sub_243B7047C();
  (*(v13 + 8))(v16, v12);

  (*(v45 + 8))(v21, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v30 = v49;
  sub_243B4DB3C(v42, v49);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = swift_allocObject();
  sub_243B4DBA4(v30, v32 + v31);
  v33 = v50;
  v34 = MEMORY[0x277D837D0];
  sub_243B7062C();
  v35 = sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0);
  v36 = v48;
  v37 = v53;
  sub_243B704AC();
  (*(v54 + 8))(v33, v37);
  v59 = v29;
  v60 = v34;
  v61 = v27;
  v62 = v28;
  swift_getOpaqueTypeConformance2();
  v59 = v37;
  v60 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  v39 = v55;
  v40 = v43;
  sub_243B7046C();
  (*(v56 + 8))(v36, v39);
  return (*(v47 + 8))(v40, v38);
}

uint64_t sub_243B4A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B7008C();
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v4);
  v84 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AddressingView_iOS();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = v9;
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B68, &qword_243B74128);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v13 = &v69 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B38, &qword_243B74110);
  v14 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B30, &qword_243B74108);
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v17);
  v75 = &v69 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B98, &qword_243B74210);
  v81 = *(v83 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v79 = &v69 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B28, &qword_243B74100);
  v22 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v82 = &v69 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B18, &qword_243B740F8);
  v24 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v86 = &v69 - v25;
  v26 = *(a1 + 56);
  type metadata accessor for AddressingViewModel();
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel);

  v27 = sub_243B6FE1C();
  v87 = 0x4034000000000000;
  v88 = v27;
  v89 = v28;
  v29 = *MEMORY[0x277CDF988];
  v30 = sub_243B6FE7C();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  sub_243B4E52C(&qword_27EDA2BA0, MEMORY[0x277CDFA28]);
  result = sub_243B707FC();
  if (result)
  {
    v69 = v4;
    v70 = a2;
    sub_243B4DAD8();
    sub_243B2E680(&qword_27EDA2B78, &qword_27EDA2B68, &qword_243B74128);
    sub_243B7043C();
    sub_243B2E620(v13, &qword_27EDA2B68, &qword_243B74128);

    v71 = a1;
    sub_243B4DB3C(a1, v10);
    v32 = v10;
    v33 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v72 = v33 + v73;
    v34 = swift_allocObject();
    v73 = v32;
    sub_243B4DBA4(v32, v34 + v33);
    v35 = sub_243B7076C();
    v37 = v36;
    v38 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B60, &qword_243B74120) + 36)];
    *v38 = sub_243B52860;
    v38[1] = 0;
    v38[2] = v35;
    v38[3] = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_243B4DC28;
    *(v39 + 24) = v34;
    v40 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B50, &qword_243B74118) + 36)];
    *v40 = sub_243B4DCD8;
    v40[1] = v39;
    v41 = sub_243B6FEAC();
    v42 = sub_243B702FC();
    v43 = v74;
    v44 = &v16[*(v74 + 36)];
    *v44 = v41;
    v44[8] = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    sub_243B700CC();
    v45 = sub_243B4D850();
    v46 = v75;
    sub_243B7044C();

    sub_243B4DD0C(v16);
    v47 = v43;
    v49 = v84;
    v48 = v85;
    v50 = v69;
    (*(v85 + 104))(v84, *MEMORY[0x277CDDDC0], v69);
    v87 = v47;
    v88 = v45;
    swift_getOpaqueTypeConformance2();
    v51 = v79;
    v52 = v77;
    sub_243B7049C();
    (*(v48 + 8))(v49, v50);
    (*(v76 + 8))(v46, v52);
    v53 = v71;
    v54 = *(v71 + 24);
    v55 = *(v71 + 32);
    v56 = *(v71 + 40);
    type metadata accessor for KeyboardObserver();
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    sub_243B6FD3C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    v57 = v87;
    v58 = v73;
    sub_243B4DB3C(v53, v73);
    v59 = swift_allocObject();
    sub_243B4DBA4(v58, v59 + v33);
    v60 = v82;
    (*(v81 + 32))(v82, v51, v83);
    v61 = &v60[*(v78 + 36)];
    *v61 = v57;
    v61[1] = sub_243B4DD7C;
    v61[2] = v59;
    sub_243B4DB3C(v53, v58);
    v62 = swift_allocObject();
    sub_243B4DBA4(v58, v62 + v33);
    v63 = v60;
    v64 = v86;
    sub_243B304EC(v63, v86, &qword_27EDA2B28, &qword_243B74100);
    v65 = (v64 + *(v80 + 36));
    *v65 = sub_243B4DDEC;
    v65[1] = v62;
    v65[2] = 0;
    v65[3] = 0;
    sub_243B4DB3C(v53, v58);
    v66 = swift_allocObject();
    sub_243B4DBA4(v58, v66 + v33);
    v67 = v70;
    sub_243B304EC(v64, v70, &qword_27EDA2B18, &qword_243B740F8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B00, &qword_243B740F0);
    v68 = (v67 + *(result + 36));
    *v68 = 0;
    v68[1] = 0;
    v68[2] = sub_243B4DF8C;
    v68[3] = v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_243B4AB90(__int128 *a1, double a2, double a3)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BA8, &qword_243B742B0);
  sub_243B705CC();
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *(a1 + 40);
  type metadata accessor for KeyboardObserver();
  sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  sub_243B4ACD4(a2, a3, *&v9);
}

void sub_243B4ACD4(double a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_243B701DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (!v19)
  {
    sub_243B4990C(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_243B2E620(v9, &qword_27EDA2270, "LT");
    }

    else
    {
      (*(v11 + 32))(v17, v9, v10);
      v20 = *(v3 + 56);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        if (a3 + 80.0 <= a2)
        {
          v23 = 0;
        }

        else
        {
          (*(v11 + 104))(v14, *MEMORY[0x277CE0558], v10, a3 + 80.0);
          v23 = sub_243B701CC();
          (*(v11 + 8))(v14, v10);
        }

        v24 = [v22 footerView];
        [v24 setHidden_];
      }

      (*(v11 + 8))(v17, v10);
    }
  }
}

void sub_243B4AF84(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BA8, &qword_243B742B0);
  sub_243B705BC();
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  v5 = *(a2 + 40);
  type metadata accessor for KeyboardObserver();
  sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  sub_243B4ACD4(v6, v7, *&v8);
}

uint64_t sub_243B4B0BC(uint64_t a1)
{
  v2 = sub_243B7078C();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_243B707AC();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    type metadata accessor for KeyboardObserver();
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    v15 = sub_243B6FD3C();
    v16 = objc_opt_self();
    v17 = [v16 defaultCenter];
    [v17 addObserver:v15 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v18 = [v16 defaultCenter];
    [v18 addObserver:v15 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  v19 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  if ((aBlock[0] & 1) == 0)
  {
    sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
    v21 = sub_243B70A0C();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = 1;
    aBlock[4] = sub_243B4E050;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B2804C;
    aBlock[3] = &block_descriptor_2;
    v23 = _Block_copy(aBlock);

    sub_243B7079C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_243B4E52C(&qword_27EDA1F38, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
    sub_243B2E680(&qword_27EDA1F48, &qword_27EDA1F40, &qword_243B724A8);
    sub_243B70B2C();
    MEMORY[0x245D49A60](0, v9, v5, v23);
    _Block_release(v23);

    (*(v25 + 8))(v5, v2);
    return (*(v6 + 8))(v9, v24);
  }

  return result;
}

uint64_t sub_243B4B548()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

void sub_243B4B5BC(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    type metadata accessor for KeyboardObserver();
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    v7 = sub_243B6FD3C();
    v8 = objc_opt_self();
    v9 = [v8 defaultCenter];
    [v9 removeObserver:v7 name:*MEMORY[0x277D76C60] object:0];

    v10 = [v8 defaultCenter];
    [v10 removeObserver:v7 name:*MEMORY[0x277D76C50] object:0];
  }
}

uint64_t sub_243B4B748(uint64_t result)
{
  v1 = *(result + 56) + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v2();
    sub_243B2BFCC(v2);
  }

  return result;
}

id sub_243B4B814(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v82 = a2;
  v83 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BD8, &qword_243B744F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v75 - v8;
  v77 = sub_243B70A5C();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B70AAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_243B70ACC();
  v80 = *(v19 - 8);
  v81 = v19;
  v20 = *(v80 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v79 = &v75 - v24;
  v25 = [objc_allocWithZone(MEMORY[0x277CFBC88]) initWithSearchType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BE0, &qword_243B74500);
  v78 = a1;
  sub_243B702BC();
  v26 = v84;
  [v25 setDelegate_];

  result = [v25 view];
  if (result)
  {
    v28 = result;
    [result setClipsToBounds_];

    type metadata accessor for InsetLabel();
    v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v30 = objc_opt_self();
    v75 = v30;
    v31 = v29;
    v32 = [v30 secondaryLabelColor];
    [v31 setTextColor_];

    v33 = [objc_opt_self() preferredFontForTextStyle_];
    [v31 setFont_];

    [v31 setAdjustsFontForContentSizeCategory_];
    v34 = *MEMORY[0x277D767F8];
    v35 = v31;
    [v35 setMaximumContentSizeCategory_];
    [v35 setNumberOfLines_];

    v36 = v25;
    v76 = v36;
    CSSetCNAutocompleteSearchControllerHeaderView(v36, v35);

    v37 = v79;
    sub_243B70A7C();
    (*(v15 + 104))(v18, *MEMORY[0x277D75020], v14);
    sub_243B70A4C();
    (*(v10 + 104))(v13, *MEMORY[0x277D74FD0], v77);
    sub_243B70A6C();
    sub_243B6FBCC();
    v38 = sub_243B6FBBC();
    (*(*(v38 - 8) + 56))(v9, 0, 1, v38);
    sub_243B70A9C();
    sub_243B2E534(0, &qword_27EDA2BE8, 0x277D75220);
    (*(v80 + 16))(v22, v37, v81);
    sub_243B2E534(0, &qword_27EDA2BF0, 0x277D750C8);
    v39 = swift_allocObject();
    *(v39 + 16) = a4;
    *(v39 + 24) = v82;
    *(v39 + 32) = v83;

    sub_243B70A3C();
    v40 = sub_243B70ADC();
    [v40 setTranslatesAutoresizingMaskIntoConstraints_];
    v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    v42 = [v75 systemBackgroundColor];
    [v41 setBackgroundColor_];

    [v41 setClipsToBounds_];
    v43 = [v41 layer];
    [v43 setCornerRadius_];

    v44 = [v41 layer];
    [v44 setCornerCurve_];

    v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v45 addSubview_];
    [v45 addSubview_];
    [v36 setFooterView_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_243B73F20;
    v47 = [v40 topAnchor];
    v48 = [v45 &selRef_searchController_didAddRecipient_];
    v49 = [v47 constraintEqualToAnchor:v48 constant:a4];

    *(v46 + 32) = v49;
    v50 = [v40 leadingAnchor];
    v51 = [v45 &selRef_userInfo + 1];
    v52 = [v50 constraintEqualToAnchor:v51 constant:a4];

    *(v46 + 40) = v52;
    v53 = [v40 bottomAnchor];
    v54 = [v45 bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:-a4];

    *(v46 + 48) = v55;
    v56 = [v40 trailingAnchor];

    v57 = [v45 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:-a4];

    *(v46 + 56) = v58;
    v59 = [v41 topAnchor];
    v60 = [v45 topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:a4];

    *(v46 + 64) = v61;
    v62 = [v41 leadingAnchor];
    v63 = [v45 leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:a4];

    *(v46 + 72) = v64;
    v65 = [v41 bottomAnchor];
    v66 = [v45 bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:-a4];

    *(v46 + 80) = v67;
    v68 = [v41 trailingAnchor];
    v69 = [v45 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:-a4];

    *(v46 + 88) = v70;
    v71 = objc_opt_self();
    sub_243B2E534(0, &qword_27EDA2BF8, 0x277CCAAD0);
    v72 = sub_243B7088C();

    [v71 activateConstraints_];

    (*(v80 + 8))(v79, v81);
    v73 = v83;
    v74 = v76;
    swift_unknownObjectWeakAssign();

    sub_243B4C474(v74, a4, v78, v82, v73);
    return v74;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243B4C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B6FA0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_243B4E614();
  sub_243B6FA1C();
  if (v6)
  {
    sub_243B7033C();
  }

  return sub_243B6FA2C();
}

uint64_t sub_243B4C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  if (v3)
  {
    v4 = *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick + 8);
    *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 1;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v3();

    return sub_243B2BFCC(v3);
  }

  return result;
}

void sub_243B4C474(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BB8, &qword_243B743C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = CSCNAutocompleteSearchControllerHeaderView(a1);
  if (!v24)
  {
    return;
  }

  v65 = v24;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v62 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = a1;
    sub_243B6FC3C();

    v27 = v68;
    v28 = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = a5;
    sub_243B6FC3C();

    sub_243B4E360(v27, v28, v68, v69);

    v29 = sub_243B7080C();

    [v26 setText_];

    [v26 sizeToFit];
    v30 = [v64 footerView];
    if (!v30)
    {

      return;
    }

    v31 = v30;
    sub_243B4CC94();
    v33 = v32;

    if (v33 >> 62)
    {
      if (sub_243B70C0C())
      {
LABEL_6:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x245D49BC0](0, v33);
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v34 = *(v33 + 32);
        }

        v35 = v34;

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243B6FC3C();

        v37 = v68;
        v36 = v69;

        v38 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v38 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          sub_243B70AEC();
          v39 = sub_243B70ACC();
          v40 = *(*(v39 - 8) + 48);
          if (v40(v14, 1, v39))
          {
            sub_243B2E06C(v14, v62, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            sub_243B2E620(v14, &qword_27EDA2BB8, &qword_243B743C8);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243B6FC3C();

            sub_243B70ABC();
            sub_243B70AFC();
          }

          sub_243B70AEC();
          if (v40(v11, 1, v39))
          {
            sub_243B2E06C(v11, v62, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            v44 = v11;
LABEL_27:
            sub_243B2E620(v44, &qword_27EDA2BB8, &qword_243B743C8);
            goto LABEL_29;
          }
        }

        else
        {
          sub_243B70AEC();
          v42 = sub_243B70ACC();
          v43 = *(*(v42 - 8) + 48);
          if (v43(v23, 1, v42))
          {
            sub_243B2E06C(v23, v62, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            sub_243B2E620(v23, &qword_27EDA2BB8, &qword_243B743C8);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243B6FC3C();

            sub_243B70ABC();
            sub_243B70AFC();
          }

          sub_243B70AEC();
          if (v43(v20, 1, v42))
          {
            sub_243B2E06C(v20, v62, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            v44 = v20;
            goto LABEL_27;
          }
        }

        sub_243B70A8C();
        sub_243B70AFC();
LABEL_29:
        v45 = v64;
        v46 = v35;
        [v46 setEnabled_];

        v47 = [v45 view];
        if (v47)
        {
          v48 = v47;
          [v47 frame];
          v50 = v49;
          v52 = v51;

          type metadata accessor for UILayoutPriority(0);
          v67 = 1144750080;
          v66 = 1065353216;
          sub_243B4E52C(&qword_27EDA2BC0, type metadata accessor for UILayoutPriority);
          sub_243B6FBAC();
          LODWORD(v53) = v68;
          LODWORD(v54) = 1148846080;
          [v46 systemLayoutSizeFittingSize:v50 withHorizontalFittingPriority:v52 verticalFittingPriority:{v54, v53}];
          v56 = v55;
          v58 = v57;
          v59 = [v45 &selRef_setTextColor_];
          if (v59)
          {
            v60 = v59;
            v71.origin.x = 0.0;
            v71.origin.y = 0.0;
            v71.size.width = v56;
            v71.size.height = v58;
            v72 = CGRectInset(v71, -a2, -a2);
            [v60 setFrame_];
          }

          return;
        }

LABEL_38:
        __break(1u);
        return;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return;
  }

  v41 = v65;
}

void sub_243B4CC94()
{
  v9 = MEMORY[0x277D84F90];
  v1 = [v0 subviews];
  sub_243B2E534(0, &qword_27EDA2BC8, 0x277D75D18);
  v2 = sub_243B7089C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v3 = sub_243B70C0C();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D49BC0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v7 = v6;
        MEMORY[0x245D498C0]();
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_243B708BC();
        }

        sub_243B708CC();
      }

      else
      {
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_243B4CE5C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AutocompleteSearchCoordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v5[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_243B4CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B4E2FC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243B4CF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B4E2FC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243B4CFB4()
{
  sub_243B4E2FC();
  sub_243B7029C();
  __break(1u);
}

double sub_243B4D008@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_243B4D088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t type metadata accessor for AddressingView_iOS()
{
  result = qword_27EDA2AB8;
  if (!qword_27EDA2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243B4D194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_243B4D1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_243B4D28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B4D35C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B4D40C()
{
  sub_243B4D4C0();
  if (v0 <= 0x3F)
  {
    sub_243B4D518();
    if (v1 <= 0x3F)
    {
      sub_243B4D5AC();
      if (v2 <= 0x3F)
      {
        sub_243B3312C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B4D4C0()
{
  if (!qword_27EDA2AC8)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_243B705EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2AC8);
    }
  }
}

void sub_243B4D518()
{
  if (!qword_27EDA2AD0)
  {
    type metadata accessor for KeyboardObserver();
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    v0 = sub_243B6FD5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2AD0);
    }
  }
}

void sub_243B4D5AC()
{
  if (!qword_27EDA2AE0)
  {
    type metadata accessor for AddressingViewModel();
    sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel);
    v0 = sub_243B6FE4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2AE0);
    }
  }
}

uint64_t sub_243B4D694(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243B4D718()
{
  result = qword_27EDA2B20;
  if (!qword_27EDA2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B28, &qword_243B74100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B30, &qword_243B74108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B38, &qword_243B74110);
    sub_243B4D850();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243B2E680(&qword_27EDA2B80, &qword_27EDA2B88, &qword_243B74130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B20);
  }

  return result;
}

unint64_t sub_243B4D850()
{
  result = qword_27EDA2B40;
  if (!qword_27EDA2B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B38, &qword_243B74110);
    sub_243B4D8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B40);
  }

  return result;
}

unint64_t sub_243B4D8DC()
{
  result = qword_27EDA2B48;
  if (!qword_27EDA2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B50, &qword_243B74118);
    sub_243B4D994();
    sub_243B2E680(&qword_27EDA2918, &qword_27EDA2920, &qword_243B73AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B48);
  }

  return result;
}

unint64_t sub_243B4D994()
{
  result = qword_27EDA2B58;
  if (!qword_27EDA2B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B60, &qword_243B74120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B68, &qword_243B74128);
    sub_243B4DAD8();
    sub_243B2E680(&qword_27EDA2B78, &qword_27EDA2B68, &qword_243B74128);
    swift_getOpaqueTypeConformance2();
    sub_243B2E680(&qword_27EDA2908, &qword_27EDA2910, &qword_243B73AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B58);
  }

  return result;
}

unint64_t sub_243B4DAD8()
{
  result = qword_27EDA2B70;
  if (!qword_27EDA2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B70);
  }

  return result;
}

uint64_t sub_243B4DB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressingView_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B4DBA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressingView_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243B4DC28(double a1, double a2)
{
  v5 = *(type metadata accessor for AddressingView_iOS() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_243B4AB90(v6, a1, a2);
}

uint64_t sub_243B4DCA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B4DCD8(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_243B4DD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B38, &qword_243B74110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243B4DD7C(uint64_t a1)
{
  v3 = *(type metadata accessor for AddressingView_iOS() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_243B4AF84(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for AddressingView_iOS() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);
  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  sub_243B386E0();
  v10 = *(v0 + v3 + 56);

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_243B701DC();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B4DFA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddressingView_iOS() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243B4E018()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_243B4E050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_243B4B548();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B4E074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B4E0E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_243B4E12C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_243B4E17C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AF8, &qword_243B740E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AE8, &qword_243B740D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AF0, &qword_243B740E0);
  sub_243B2E680(&qword_27EDA2B90, &qword_27EDA2AF0, &qword_243B740E0);
  sub_243B30AF8();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA27B0, &qword_243B740D0);
  sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243B4E2FC()
{
  result = qword_27EDA2BB0;
  if (!qword_27EDA2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2BB0);
  }

  return result;
}

void sub_243B4E360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = sub_243B7080C();
    v10 = [objc_opt_self() bundleWithIdentifier_];

    if (v10)
    {
      sub_243B6F9FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_243B71ED0;
      v12 = MEMORY[0x277D837D0];
      *(v11 + 56) = MEMORY[0x277D837D0];
      v13 = sub_243B4E57C();
      *(v11 + 32) = a1;
      *(v11 + 40) = a2;
      *(v11 + 96) = v12;
      *(v11 + 104) = v13;
      *(v11 + 64) = v13;
      *(v11 + 72) = a3;
      *(v11 + 80) = a4;

      sub_243B7081C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_243B4E52C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243B4E57C()
{
  result = qword_27EDA2BD0;
  if (!qword_27EDA2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2BD0);
  }

  return result;
}

uint64_t sub_243B4E5D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_243B4E614()
{
  result = qword_27EDA2C00;
  if (!qword_27EDA2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C00);
  }

  return result;
}

uint64_t sub_243B4E678@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for CreateiCloudLinkView();
  sub_243B2E06C(v1 + *(v12 + 20), v11, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v11, a1, &qword_27EDA2270, "LT");
  }

  v14 = *v11;
  sub_243B709DC();
  v15 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t CreateiCloudLinkView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CreateiCloudLinkView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = sub_243B498AC;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = a2 + v4[6];
  *v8 = sub_243B384D0;
  *(v8 + 1) = a1;
  v8[16] = 0;
  return result;
}

uint64_t CreateiCloudLinkView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for CreateiCloudLinkView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C08, &qword_243B74578);
  v37 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C10, &qword_243B74580);
  sub_243B51980();
  sub_243B6FE9C();
  v32 = type metadata accessor for CreateiCloudLinkView;
  sub_243B52450(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_243B51A68(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C30, &qword_243B74598) + 36)];
  *v13 = sub_243B51ACC;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v30 = v2;
  sub_243B52450(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v14 = swift_allocObject();
  sub_243B51A68(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  v15 = &v10[*(v7 + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_243B51AE4;
  *(v15 + 3) = v14;
  v16 = v2 + *(v4 + 32);
  v17 = *v16;
  v35 = *(v16 + 8);
  v36 = v17;
  v34 = *(v16 + 16);
  v33 = type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
  v18 = sub_243B6FD3C();
  swift_getKeyPath();
  v44 = v18;
  v31 = sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v19 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LOBYTE(v19) = *(v18 + v19);

  LOBYTE(v43) = v19;
  sub_243B52450(v30, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v20 = swift_allocObject();
  sub_243B51A68(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v11);
  sub_243B51BA8();
  v21 = v38;
  sub_243B704DC();

  sub_243B2E620(v10, &qword_27EDA2C08, &qword_243B74578);
  v22 = sub_243B6FD3C();
  swift_getKeyPath();
  v43 = v22;
  sub_243B6FAFC();

  v23 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  v24 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C58, &unk_243B745F8) + 36);
  sub_243B2E06C(v22 + v23, v24, &qword_27EDA1E00, &unk_243B73660);

  sub_243B6FD4C();
  swift_getKeyPath();
  sub_243B6FE3C();

  v25 = v40;
  v26 = v41;
  LOBYTE(v21) = v42;
  result = type metadata accessor for AlertViewModelAlert(0);
  v28 = v24 + *(result + 20);
  *v28 = v25;
  *(v28 + 8) = v26;
  *(v28 + 16) = v21;
  return result;
}

uint64_t sub_243B4EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B700EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C80, ":y");
  sub_243B4EF08(a1, a2 + *(v4 + 44));
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_243B7054C();
  v7 = sub_243B702FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C10, &qword_243B74580);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_243B4EF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C88, &qword_243B746B8);
  v3 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v164 = (v134 - v4);
  v163 = type metadata accessor for PermissionsView();
  v5 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v136 = (v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C90, &qword_243B746C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v166 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = v134 - v11;
  v158 = sub_243B7008C();
  v157 = *(v158 - 8);
  v12 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v156 = v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_243B7016C();
  v171 = *(v151 - 8);
  v14 = *(v171 + 64);
  MEMORY[0x28223BE20](v151);
  v170 = v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C98, &qword_243B746C8);
  v169 = *(v173 - 8);
  v16 = *(v169 + 64);
  MEMORY[0x28223BE20](v173);
  v168 = v134 - v17;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CA0, &qword_243B746D0);
  v145 = *(v149 - 8);
  v18 = *(v145 + 64);
  MEMORY[0x28223BE20](v149);
  v172 = v134 - v19;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CA8, &qword_243B746D8);
  v150 = *(v152 - 8);
  v20 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v147 = v134 - v21;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB0, &qword_243B746E0);
  v146 = *(v148 - 8);
  v22 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v144 = v134 - v23;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB8, &qword_243B746E8);
  v24 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v153 = v134 - v25;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CC0, &qword_243B746F0);
  v26 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v154 = v134 - v27;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CC8, &qword_243B746F8);
  v160 = *(v161 - 8);
  v28 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v175 = v134 - v31;
  v32 = sub_243B701DC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v135 = v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v134 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v137 = v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = v134 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = v134 - v48;
  v142 = sub_243B706DC();
  v141 = *(v142 - 8);
  v50 = *(v141 + 8);
  MEMORY[0x28223BE20](v142);
  v52 = v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2620, &qword_243B734D8);
  v53 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v174 = v134 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = v134 - v56;
  MEMORY[0x28223BE20](v58);
  v177 = v134 - v59;
  v140 = v52;
  sub_243B706CC();
  v138 = sub_243B7030C();
  v176 = a1;
  sub_243B4E678(v49);
  (*(v33 + 104))(v46, *MEMORY[0x277CE0558], v32);
  (*(v33 + 56))(v46, 0, 1, v32);
  v60 = *(v37 + 56);
  sub_243B2E06C(v49, v40, &qword_27EDA2270, "LT");
  sub_243B2E06C(v46, &v40[v60], &qword_27EDA2270, "LT");
  v61 = *(v33 + 48);
  if (v61(v40, 1, v32) == 1)
  {
    sub_243B2E620(v46, &qword_27EDA2270, "LT");
    sub_243B2E620(v49, &qword_27EDA2270, "LT");
    if (v61(&v40[v60], 1, v32) == 1)
    {
      sub_243B2E620(v40, &qword_27EDA2270, "LT");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_243B2E06C(v40, v137, &qword_27EDA2270, "LT");
  if (v61(&v40[v60], 1, v32) == 1)
  {
    sub_243B2E620(v46, &qword_27EDA2270, "LT");
    sub_243B2E620(v49, &qword_27EDA2270, "LT");
    (*(v33 + 8))(v137, v32);
LABEL_6:
    sub_243B2E620(v40, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_8;
  }

  v62 = v135;
  (*(v33 + 32))(v135, &v40[v60], v32);
  sub_243B5251C(&qword_27EDA22E0, MEMORY[0x277CE0570]);
  v63 = v137;
  v134[1] = sub_243B707FC();
  v64 = *(v33 + 8);
  v64(v62, v32);
  sub_243B2E620(v46, &qword_27EDA2270, "LT");
  sub_243B2E620(v49, &qword_27EDA2270, "LT");
  v64(v63, v32);
  sub_243B2E620(v40, &qword_27EDA2270, "LT");
LABEL_8:
  sub_243B6FCCC();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  (*(v141 + 4))(v57, v140, v142);
  v73 = &v57[*(v139 + 36)];
  *v73 = v138;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  sub_243B304EC(v57, v177, &qword_27EDA2620, &qword_243B734D8);
  v142 = sub_243B700CC();
  v140 = v74;
  v75 = (v176 + *(type metadata accessor for CreateiCloudLinkView() + 24));
  v76 = *v75;
  v77 = v75[1];
  v78 = *(v75 + 16);
  v79 = type metadata accessor for CreateiCloudLinkViewModel();
  v141 = type metadata accessor for CreateiCloudLinkViewModel;
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FD4C();
  swift_getKeyPath();
  sub_243B6FE3C();

  v182 = v178;
  v183 = v179;
  v184 = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CD0, &qword_243B74700);
  sub_243B2E680(&qword_27EDA2CD8, &qword_27EDA2CD0, &qword_243B74700);
  v80 = v168;
  sub_243B7064C();
  v81 = v170;
  sub_243B7015C();
  v82 = sub_243B2E680(&qword_27EDA2CE0, &qword_27EDA2C98, &qword_243B746C8);
  v83 = v173;
  v84 = v151;
  v140 = v82;
  sub_243B7040C();
  (*(v171 + 8))(v81, v84);
  (*(v169 + 8))(v80, v83);
  v170 = v77;
  v171 = v76;
  LODWORD(v169) = v78;
  v142 = v79;
  v85 = sub_243B6FD3C();
  swift_getKeyPath();
  v178 = v85;
  v168 = sub_243B5251C(&qword_27EDA20B8, v141);
  sub_243B6FAFC();

  v86 = *(v85 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);

  if (v86 == 4)
  {
    if (qword_27EDA1D88 != -1)
    {
      swift_once();
    }

    v87 = &qword_27EDA4FC0;
  }

  else
  {
    if (qword_27EDA1D80 != -1)
    {
      swift_once();
    }

    v87 = &qword_27EDA4FB0;
  }

  v88 = v173;
  v90 = *v87;
  v89 = v87[1];

  v182 = v90;
  v183 = v89;
  v178 = v88;
  v179 = v84;
  v180 = v140;
  v181 = MEMORY[0x277CDE058];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = sub_243B30AF8();
  v93 = MEMORY[0x277D837D0];
  v94 = v147;
  v95 = v149;
  v96 = v172;
  sub_243B7045C();

  (*(v145 + 8))(v96, v95);
  v97 = v157;
  v98 = v156;
  v99 = v158;
  (*(v157 + 104))(v156, *MEMORY[0x277CDDDC0], v158);
  v178 = v95;
  v179 = v93;
  v180 = OpaqueTypeConformance2;
  v181 = v92;
  swift_getOpaqueTypeConformance2();
  v100 = v144;
  v101 = v152;
  sub_243B7049C();
  (*(v97 + 8))(v98, v99);
  (*(v150 + 8))(v94, v101);
  LOBYTE(v99) = sub_243B702EC();
  v102 = v153;
  (*(v146 + 32))(v153, v100, v148);
  v103 = &v102[*(v143 + 36)];
  *v103 = v99;
  *(v103 + 8) = 0u;
  *(v103 + 24) = 0u;
  v103[40] = 1;
  v104 = sub_243B6FD3C();
  swift_getKeyPath();
  v178 = v104;
  sub_243B6FAFC();

  v105 = *(v104 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);

  LOBYTE(v100) = v105 == 2;
  KeyPath = swift_getKeyPath();
  v107 = swift_allocObject();
  *(v107 + 16) = v100;
  v108 = v102;
  v109 = v154;
  v110 = sub_243B52170(v108, v154);
  v111 = (v109 + *(v155 + 36));
  *v111 = KeyPath;
  v111[1] = sub_243B307DC;
  v111[2] = v107;
  MEMORY[0x28223BE20](v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CE8, &unk_243B74760);
  sub_243B521E8();
  sub_243B2E680(&qword_27EDA2D00, &qword_27EDA2CE8, &unk_243B74760);
  sub_243B704CC();
  sub_243B2E620(v109, &qword_27EDA2CC0, &qword_243B746F0);
  v112 = sub_243B6FD3C();
  swift_getKeyPath();
  v178 = v112;
  sub_243B6FAFC();

  v113 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LODWORD(v113) = *(v112 + v113);

  v114 = sub_243B6FD3C();
  if (v113 == 1)
  {
    v115 = v136;
    sub_243B333E8(*&v114, v136);
    sub_243B52450(v115, v164, type metadata accessor for PermissionsView);
    swift_storeEnumTagMultiPayload();
    sub_243B5251C(&qword_27EDA2D08, type metadata accessor for PermissionsView);
    sub_243B371EC();
    v116 = v165;
    sub_243B7014C();
    sub_243B524B8(v115);
  }

  else
  {
    v117 = sub_243B6FE1C();
    v119 = v118;
    type metadata accessor for HostingControllerConstraintWrapper();
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    v121 = v164;
    *v164 = v117;
    v121[1] = v119;
    v121[2] = v120;
    swift_storeEnumTagMultiPayload();
    sub_243B5251C(&qword_27EDA2D08, type metadata accessor for PermissionsView);
    sub_243B371EC();
    v116 = v165;
    sub_243B7014C();
  }

  v122 = v174;
  sub_243B2E06C(v177, v174, &qword_27EDA2620, &qword_243B734D8);
  v123 = v160;
  v124 = *(v160 + 16);
  v125 = v159;
  v126 = v175;
  v127 = v161;
  v124(v159, v175, v161);
  v128 = v166;
  sub_243B2E06C(v116, v166, &qword_27EDA2C90, &qword_243B746C0);
  v129 = v167;
  sub_243B2E06C(v122, v167, &qword_27EDA2620, &qword_243B734D8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D10, &qword_243B74770);
  v124((v129 + v130[12]), v125, v127);
  v131 = v129 + v130[16];
  *v131 = 0x4020000000000000;
  *(v131 + 8) = 0;
  sub_243B2E06C(v128, v129 + v130[20], &qword_27EDA2C90, &qword_243B746C0);
  sub_243B2E620(v116, &qword_27EDA2C90, &qword_243B746C0);
  v132 = *(v123 + 8);
  v132(v126, v127);
  sub_243B2E620(v177, &qword_27EDA2620, &qword_243B734D8);
  sub_243B2E620(v128, &qword_27EDA2C90, &qword_243B746C0);
  v132(v125, v127);
  return sub_243B2E620(v174, &qword_27EDA2620, &qword_243B734D8);
}

uint64_t sub_243B505FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243B506E8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D48, &qword_243B74798);
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  if (qword_27EDA1DB8 != -1)
  {
    swift_once();
  }

  v26 = qword_27EDA5020;
  v27 = *algn_27EDA5028;
  sub_243B30AF8();

  *v15 = sub_243B703BC();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 16) = 257;
  if (qword_27EDA1DC0 != -1)
  {
    swift_once();
  }

  v26 = qword_27EDA5030;
  v27 = *algn_27EDA5038;

  *v12 = sub_243B703BC();
  *(v12 + 1) = v19;
  v12[16] = v20 & 1;
  *(v12 + 3) = v21;
  *(v12 + 16) = 256;
  v22 = v3[2];
  v22(v9, v15, v2);
  v22(v6, v12, v2);
  v22(a1, v9, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D50, &unk_243B747A0);
  v22(&a1[*(v23 + 48)], v6, v2);
  v24 = v3[1];
  v24(v12, v2);
  v24(v15, v2);
  v24(v6, v2);
  return (v24)(v9, v2);
}

uint64_t sub_243B509D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D18, &qword_243B74778);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D20, &qword_243B74780);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = sub_243B7019C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D28, &qword_243B74788);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_243B7018C();
  v26 = a1;
  type metadata accessor for CopyLinkButtonView();
  sub_243B5251C(&qword_27EDA2D30, type metadata accessor for CopyLinkButtonView);
  sub_243B6FD6C();
  sub_243B7017C();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D38, &qword_243B74790);
  sub_243B2E680(&qword_27EDA2D40, &qword_27EDA2D38, &qword_243B74790);
  sub_243B6FD6C();
  v17 = *(v23 + 48);
  (*(v13 + 16))(v5, v16, v12);
  v18 = &v5[v17];
  v19 = v22;
  (*(v6 + 16))(v18, v9, v22);
  sub_243B7012C();
  (*(v6 + 8))(v9, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_243B50D3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_243B6FACC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = (a1 + *(type metadata accessor for CreateiCloudLinkView() + 24));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FD3C();
  *a2 = sub_243B6FE1C();
  a2[1] = v16;
  LODWORD(v13) = *(type metadata accessor for CopyLinkButtonView() + 20);
  sub_243B6FABC();
  (*(v5 + 16))(v8, v11, v4);
  sub_243B705AC();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_243B50EFC(uint64_t a1)
{
  v2 = type metadata accessor for CreateiCloudLinkView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_243B6FCBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FC9C();
  sub_243B52450(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_243B51A68(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return MEMORY[0x245D49660](v8, sub_243B527B8, v10);
}

uint64_t sub_243B51064(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CreateiCloudLinkView() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
  v5 = sub_243B6FD3C();
  v7 = *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction);
  v6 = *(v5 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction + 8);

  v7(v8);
}

void sub_243B51140(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v4 = (a1 + *(type metadata accessor for CreateiCloudLinkView() + 28));
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 16);
    type metadata accessor for KeyboardObserver();
    sub_243B5251C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    v8 = sub_243B6FD3C();
    v9 = objc_opt_self();
    v10 = [v9 defaultCenter];
    [v10 addObserver:v8 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v11 = [v9 defaultCenter];
    [v11 addObserver:v8 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }
}

void sub_243B512EC(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v4 = (a1 + *(type metadata accessor for CreateiCloudLinkView() + 28));
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 16);
    type metadata accessor for KeyboardObserver();
    sub_243B5251C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver);
    v8 = sub_243B6FD3C();
    v9 = objc_opt_self();
    v10 = [v9 defaultCenter];
    [v10 removeObserver:v8 name:*MEMORY[0x277D76C60] object:0];

    v11 = [v9 defaultCenter];
    [v11 removeObserver:v8 name:*MEMORY[0x277D76C50] object:0];
  }
}

uint64_t sub_243B51488(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for CreateiCloudLinkView() + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for CreateiCloudLinkViewModel();
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FD3C();
  sub_243B5D470(v3);
}

uint64_t sub_243B51550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert);
  return result;
}

uint64_t sub_243B5162C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  return sub_243B2E06C(v3 + v4, a2, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B51704(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_243B2E06C(a1, &v10[-v6], &qword_27EDA1E00, &unk_243B73660);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  return sub_243B2E620(v7, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B51878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B2E06C(a1, &v6 - v4, &qword_27EDA2270, "LT");
  return sub_243B6FF9C();
}

uint64_t type metadata accessor for CreateiCloudLinkView()
{
  result = qword_27EDA2C60;
  if (!qword_27EDA2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243B51980()
{
  result = qword_27EDA2C18;
  if (!qword_27EDA2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C10, &qword_243B74580);
    sub_243B2E680(&qword_27EDA2C20, &qword_27EDA2C28, &unk_243B74588);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C18);
  }

  return result;
}

uint64_t sub_243B51A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreateiCloudLinkView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B51B28(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for CreateiCloudLinkView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B51488(a1, a2, v6);
}

unint64_t sub_243B51BA8()
{
  result = qword_27EDA2C38;
  if (!qword_27EDA2C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C08, &qword_243B74578);
    sub_243B51C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C38);
  }

  return result;
}

unint64_t sub_243B51C34()
{
  result = qword_27EDA2C40;
  if (!qword_27EDA2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C30, &qword_243B74598);
    sub_243B2E680(&qword_27EDA2C48, &qword_27EDA2C50, &qword_243B745C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C40);
  }

  return result;
}

uint64_t sub_243B51D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_243B51E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = -a2;
  }

  return result;
}

void sub_243B51EF4()
{
  sub_243B3312C();
  if (v0 <= 0x3F)
  {
    sub_243B51F90();
    if (v1 <= 0x3F)
    {
      sub_243B4D518();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B51F90()
{
  if (!qword_27EDA2C70)
  {
    type metadata accessor for CreateiCloudLinkViewModel();
    sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel);
    v0 = sub_243B6FD5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2C70);
    }
  }
}

unint64_t sub_243B52028()
{
  result = qword_27EDA2C78;
  if (!qword_27EDA2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C58, &unk_243B745F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C08, &qword_243B74578);
    sub_243B51BA8();
    swift_getOpaqueTypeConformance2();
    sub_243B5251C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C78);
  }

  return result;
}

uint64_t sub_243B52170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB8, &qword_243B746E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243B521E8()
{
  result = qword_27EDA2CF0;
  if (!qword_27EDA2CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CC0, &qword_243B746F0);
    sub_243B522A0();
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2CF0);
  }

  return result;
}

unint64_t sub_243B522A0()
{
  result = qword_27EDA2CF8;
  if (!qword_27EDA2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CB8, &qword_243B746E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CA8, &qword_243B746D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CA0, &qword_243B746D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C98, &qword_243B746C8);
    sub_243B7016C();
    sub_243B2E680(&qword_27EDA2CE0, &qword_27EDA2C98, &qword_243B746C8);
    swift_getOpaqueTypeConformance2();
    sub_243B30AF8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2CF8);
  }

  return result;
}

uint64_t sub_243B52450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B524B8(uint64_t a1)
{
  v2 = type metadata accessor for PermissionsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B5251C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CreateiCloudLinkView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243B701DC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_243B701DC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v5[v9], 1, v10))
    {
      (*(v11 + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v12 = *&v5[v9];
  }

  v13 = &v5[v1[6]];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_243B386E0();
  v17 = &v5[v1[7]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v17[16];
  sub_243B386E0();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B527D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CreateiCloudLinkView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243B52860@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_243B7050C();
  result = sub_243B6FDDC();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_243B528B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v5;
  return result;
}

uint64_t sub_243B52930(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_243B6FC4C();
}

uint64_t sub_243B529A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B52A24()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B52A94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B52B38;
}

uint64_t sub_243B52B3C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B52CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B52E14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B52FDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B53080(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B53220(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53358(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

double sub_243B534C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_243B53550(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B535EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B5366C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B536FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B537A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B53940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53A78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__yourNameAndEmail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B53C40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B53CE4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B53E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53FBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__inputText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B54184(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B54228(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_243B543C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54500(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
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

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__loadingText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B546C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}