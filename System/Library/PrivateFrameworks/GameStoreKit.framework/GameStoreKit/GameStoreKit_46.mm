uint64_t Uber.title.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Uber.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t Uber.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EAB1E7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Uber();
  v7 = swift_allocObject();
  result = Uber.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s12GameStoreKit4UberC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x253052150](a1 + 80, a2 + 80) & 1) == 0)
  {
    return 0;
  }

  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (*(a1 + 16) != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65766F6261;
  }

  if (*(a1 + 16))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E696C6E69;
  if (*(a2 + 16) != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEA0000000000646ELL;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x65766F6261;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_24F92CE08();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x6F65646976;
  if (*(a1 + 17) != 1)
  {
    v14 = 1852793705;
    v13 = 0xE400000000000000;
  }

  if (*(a1 + 17))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6B726F77747261;
  }

  if (*(a1 + 17))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  v17 = 0xE500000000000000;
  v18 = 0x6F65646976;
  if (*(a2 + 17) != 1)
  {
    v18 = 1852793705;
    v17 = 0xE400000000000000;
  }

  if (*(a2 + 17))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6B726F77747261;
  }

  if (*(a2 + 17))
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_24F92CE08();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v22, v23);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = *(a1 + 32);
  v26 = *(a2 + 32);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v25, v26);

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v28 = *(a1 + 40);
  v29 = *(a2 + 40);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    if ((sub_24F91F418() & 1) == 0)
    {
      goto LABEL_63;
    }

    v30 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v28 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v29 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = *(a1 + 48);
  v32 = *(a2 + 48);
  if (!v31)
  {
    if (v32)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (!v32)
  {
    return 0;
  }

  if ((sub_24F91F418() & 1) == 0)
  {
LABEL_63:

    return 0;
  }

  v33 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v31 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v32 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v35 = *(a1 + 56);
  v36 = *(a2 + 56);
  if (!v35)
  {
    if (!v36)
    {
      goto LABEL_72;
    }

    return 0;
  }

  if (!v36)
  {
    return 0;
  }

  v37 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v35, v36);

  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v38 = *(a1 + 72);
  v39 = *(a2 + 72);
  result = (v38 | v39) == 0;
  if (v38 && v39)
  {
    if (*(a1 + 64) == *(a2 + 64) && v38 == v39)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

unint64_t sub_24EAB2314()
{
  result = qword_27F227060;
  if (!qword_27F227060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227060);
  }

  return result;
}

unint64_t sub_24EAB236C()
{
  result = qword_27F227068;
  if (!qword_27F227068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227068);
  }

  return result;
}

uint64_t sub_24EAB2408(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id DynamicTypeButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v10 = sub_24F922378();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DynamicTypeButton();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t type metadata accessor for DynamicTypeButton()
{
  result = qword_27F227088;
  if (!qword_27F227088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DynamicTypeButton.__allocating_init(useCase:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v9 = v5;
  sub_24E934304(v4, v5 + v8);
  swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v9) + 0x108))(a1);

  (*(v7 + 8))(a1, v6);
  return v9;
}

id DynamicTypeButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DynamicTypeButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v2 = sub_24F922378();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F92CA88();
  __break(1u);
}

id sub_24EAB2B60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_24F92B0D8();
  v5 = v4;
  if (v3 == sub_24F92B0D8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_24E69A5C4(0, &qword_27F227080);
  v10 = sub_24F92BFA8();

  return v10;
}

void sub_24EAB2C6C(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = *&v2[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory];
  *&v2[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = v6;

  sub_24E69A5C4(0, &qword_27F217E58);
  v8 = v4();
  v9 = MEMORY[0x253051BF0](a1, v8);

  [v2 _setFont_];
}

uint64_t sub_24EAB2D88(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_24E934D5C(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x118))(v6);
}

uint64_t sub_24EAB2E60(uint64_t a1)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227098);
  MEMORY[0x28223BE20](v34);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = sub_24F922378();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v33 = v1;
  sub_24E934D5C(v1 + v19, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    return sub_24E601704(v12, &qword_27F222038);
  }

  v30 = *(v14 + 32);
  v30(v18, v12, v13);
  v22 = *(v14 + 16);
  v31 = v18;
  v22(v9, v18, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v23 = *(v34 + 48);
  sub_24E934D5C(v9, v3);
  sub_24E934D5C(v35, &v3[v23]);
  if (v20(v3, 1, v13) == 1)
  {
    sub_24E601704(v9, &qword_27F222038);
    if (v20(&v3[v23], 1, v13) == 1)
    {
      sub_24E601704(v3, &qword_27F222038);
      return (*(v14 + 8))(v31, v13);
    }

    goto LABEL_8;
  }

  v24 = v6;
  sub_24E934D5C(v3, v6);
  if (v20(&v3[v23], 1, v13) == 1)
  {
    sub_24E601704(v9, &qword_27F222038);
    (*(v14 + 8))(v6, v13);
LABEL_8:
    sub_24E601704(v3, &qword_27F227098);
LABEL_9:
    v25 = v31;
    (*((*MEMORY[0x277D85000] & *v33) + 0x108))(v31);
    return (*(v14 + 8))(v25, v13);
  }

  v26 = v32;
  v30(v32, &v3[v23], v13);
  sub_24EAB3D68();
  v27 = sub_24F92AFF8();
  v28 = *(v14 + 8);
  v28(v26, v13);
  sub_24E601704(v9, &qword_27F222038);
  v28(v24, v13);
  sub_24E601704(v3, &qword_27F222038);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v28)(v31, v13);
}

uint64_t sub_24EAB333C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  return sub_24E934D5C(v1 + v3, a1);
}

uint64_t sub_24EAB3394(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  sub_24E934D5C(v1 + v6, v5);
  swift_beginAccess();
  sub_24E934DCC(a1, v1 + v6);
  swift_endAccess();
  sub_24EAB2E60(v5);
  sub_24E601704(a1, &qword_27F222038);
  return sub_24E601704(v5, &qword_27F222038);
}

void (*sub_24EAB3498(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_24E934D5C(v1 + v9, v8);
  return sub_24EAB35B8;
}

void sub_24EAB35B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_24E934D5C(*(*a1 + 96), v6);
    sub_24E934D5C(v7 + v4, v5);
    swift_beginAccess();
    sub_24E934DCC(v6, v7 + v4);
    swift_endAccess();
    sub_24EAB2E60(v5);
    sub_24E601704(v5, &qword_27F222038);
  }

  else
  {
    sub_24E934D5C(v7 + v4, v6);
    swift_beginAccess();
    sub_24E934DCC(v3, v7 + v4);
    swift_endAccess();
    sub_24EAB2E60(v6);
  }

  sub_24E601704(v6, &qword_27F222038);
  sub_24E601704(v3, &qword_27F222038);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_24EAB36F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeButton();
  v21.receiver = v1;
  v21.super_class = v10;
  v11 = objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24E601704(v5, &qword_27F222038);
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = [v1 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory))
  {

    goto LABEL_9;
  }

  v16 = sub_24F92B0D8();
  v18 = v17;
  if (v16 != sub_24F92B0D8() || v18 != v19)
  {
    v20 = sub_24F92CE08();

    if (v20)
    {
      return (*(v7 + 8))(v9, v6);
    }

LABEL_9:
    (*((*v12 & *v1) + 0x108))(v9);
    return (*(v7 + 8))(v9, v6);
  }

  return (*(v7 + 8))(v9, v6);
}

id DynamicTypeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24EAB3B88()
{
  sub_24E935B08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24EAB3D68()
{
  result = qword_27F2270A0;
  if (!qword_27F2270A0)
  {
    sub_24F922378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270A0);
  }

  return result;
}

uint64_t sub_24EAB3DE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EAB3EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GamesHeroCarousel()
{
  result = qword_27F2270A8;
  if (!qword_27F2270A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAB3FB0()
{
  sub_24EAB40D4(319, &qword_27F21BF38, sub_24E735CA0, &type metadata for ComponentKinds, MEMORY[0x277D21F10]);
  if (v0 <= 0x3F)
  {
    sub_24EAB40D4(319, &qword_27F2270B8, sub_24EAB413C, &type metadata for AutoScrollConfiguration, MEMORY[0x277D21958]);
    if (v1 <= 0x3F)
    {
      sub_24E61C7D0();
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EAB40D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_24EAB413C()
{
  result = qword_27F2270C0;
  if (!qword_27F2270C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270C0);
  }

  return result;
}

uint64_t sub_24EAB4190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2270F8);
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GamesHeroCarousel();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EAB4EFC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v23 = v12;
  v24 = v7;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE90);
  v30 = 0;
  sub_24E602068(&qword_27F21BEF0, &qword_27F21BE90);
  v14 = v26;
  sub_24F92CC68();
  v15 = v23;
  v21 = *v28;
  *v23 = *v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227108);
  v30 = 1;
  sub_24E602068(&qword_27F227110, &qword_27F227108);
  sub_24F92CC68();
  v16 = v24;
  v17 = *&v28[24];
  *(v15 + 8) = v28[0];
  *(v15 + 16) = *&v28[8];
  *(v15 + 32) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v30 = 2;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v18 = *&v28[16];
  *(v15 + 40) = *v28;
  *(v15 + 56) = v18;
  *(v15 + 72) = v29;
  sub_24F929608();
  v28[0] = 3;
  sub_24EAB4F50(&qword_27F213F48, MEMORY[0x277D21F70]);
  v19 = v22;
  sub_24F92CC18();
  (*(v16 + 8))(v9, v14);
  sub_24E65E0D4(v19, v15 + *(v10 + 28));
  sub_24EAB4F98(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24EAB4FFC(v15, type metadata accessor for GamesHeroCarousel);
}

unint64_t sub_24EAB4640()
{
  v1 = 0x736D657469;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EAB46B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EAB525C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EAB46D8(uint64_t a1)
{
  v2 = sub_24EAB4EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAB4714(uint64_t a1)
{
  v2 = sub_24EAB4EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24EAB4750@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 40, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_24EAB4870()
{
  result = qword_27F2270D0;
  if (!qword_27F2270D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270D0);
  }

  return result;
}

uint64_t sub_24EAB48C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_24F929B38();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for HeroCarouselView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2270E8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32[-v14];
  v16 = *a1;
  if (*(*a1 + 16))
  {
    v33 = *v2;
    v17 = a1[2];
    v18 = a1[3];
    v37 = 0;
    v36 = v12;
    sub_24F926F28();
    *(v10 + 1) = v38;
    v37 = 0;
    sub_24F926F28();
    v19 = *(&v38 + 1);
    *(v10 + 4) = v38;
    *(v10 + 5) = v19;
    type metadata accessor for HeroPageControlProgressCoordinator();
    v34 = a2;
    swift_allocObject();
    v37 = sub_24F7130F0();
    sub_24F926F28();
    v20 = *(&v38 + 1);
    *(v10 + 6) = v38;
    *(v10 + 7) = v20;
    v21 = v8[9];
    *&v10[v21] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v22 = v8[10];
    *&v10[v22] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v23 = &v10[v8[11]];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v24 = &v10[v8[12]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v24[32] = 0;
    v25 = &v10[v8[13]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = &v10[v8[14]];
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24EAB4F50(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v26 = sub_24F9243D8();
    v26[1] = v27;
    *v10 = v16;
    v10[8] = v33;
    v28 = &v10[v8[15]];
    *v28 = *(v16 + 16) > 1uLL;
    *(v28 + 1) = v17;
    *(v28 + 2) = v18;
    type metadata accessor for GamesHeroCarousel();

    sub_24F929B28();
    sub_24EAB4F50(&qword_27F2270F0, type metadata accessor for HeroCarouselView);
    sub_24F925E88();
    (*(v5 + 8))(v7, v35);
    sub_24EAB4FFC(v10, type metadata accessor for HeroCarouselView);
    v29 = v34;
    (*(v36 + 32))(v34, v15, v11);
    return (*(v36 + 56))(v29, 0, 1, v11);
  }

  else
  {
    v31 = *(v12 + 56);

    return v31(a2, 1, 1, v11, v13);
  }
}

unint64_t sub_24EAB4DD8()
{
  result = qword_27F2270D8;
  if (!qword_27F2270D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270D8);
  }

  return result;
}

unint64_t sub_24EAB4EFC()
{
  result = qword_27F227100;
  if (!qword_27F227100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227100);
  }

  return result;
}

uint64_t sub_24EAB4F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAB4F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesHeroCarousel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAB4FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAB5070()
{
  result = qword_27F227118;
  if (!qword_27F227118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227120);
    type metadata accessor for HeroCarouselView(255);
    sub_24EAB4F50(&qword_27F2270F0, type metadata accessor for HeroCarouselView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227118);
  }

  return result;
}

unint64_t sub_24EAB5158()
{
  result = qword_27F227128;
  if (!qword_27F227128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227128);
  }

  return result;
}

unint64_t sub_24EAB51B0()
{
  result = qword_27F227130;
  if (!qword_27F227130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227130);
  }

  return result;
}

unint64_t sub_24EAB5208()
{
  result = qword_27F227138;
  if (!qword_27F227138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227138);
  }

  return result;
}

uint64_t sub_24EAB525C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA51B50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t FlowAction.destination.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v10[4] = &protocol witness table for FlowAction;
  v5 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v10[3] = v3;
  v10[0] = v1;
  v6 = (v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v1 + v4, &v11, v1 + v5, v10, v8, v7, a1);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v246 = a6;
  v247 = a5;
  v268 = a4;
  v269 = a2;
  v264 = a1;
  v265 = a3;
  v270 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v262 = *(v7 - 8);
  v263 = v7;
  MEMORY[0x28223BE20](v7);
  v245 = &v236 - v8;
  v239 = type metadata accessor for ArcadePageUrls();
  MEMORY[0x28223BE20](v239);
  v240 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x28223BE20](v261);
  v260 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v244 = &v236 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v257 = &v236 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v256 = &v236 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v255 = &v236 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v254 = &v236 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v253 = &v236 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v252 = &v236 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v251 = &v236 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v250 = &v236 - v29;
  MEMORY[0x28223BE20](v28);
  v249 = &v236 - v30;
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  v266 = v31;
  v267 = v32;
  v33 = MEMORY[0x28223BE20](v31);
  v248 = &v236 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v236 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v242 = &v236 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v258 = &v236 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v236 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v243 = &v236 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v236 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v236 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v237 = &v236 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v238 = &v236 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v236 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v241 = &v236 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v236 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v259 = &v236 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v236 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140);
  v70 = MEMORY[0x28223BE20](v69 - 8);
  v71 = MEMORY[0x28223BE20](v70);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v236 - v73;
  MEMORY[0x28223BE20](v72);
  v78 = &v236 - v77;
  switch(*v269)
  {
    case 0:
    case 0x23:
    case 0x35:
      type metadata accessor for FlowAction.Destination();

      return swift_storeEnumTagMultiPayload();
    case 1:
      v137 = v255;
      sub_24E60169C(v265, v255, &qword_27F228530);
      v138 = v266;
      v139 = v267;
      if ((*(v267 + 48))(v137, 1, v266) == 1)
      {
        goto LABEL_38;
      }

      v140 = v258;
      (*(v139 + 32))(v258, v137, v138);
      sub_24E65864C(v264, &v281);
      v141 = *(v139 + 16);
      v142 = v259;
      v141(v259, v140, v138);
      v143 = v260;
      sub_24E65864C(&v281, v260);
      v141((v143 + *(v261 + 20)), v142, v138);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
      v144 = v245;
      sub_24F929188();
      v145 = *(v139 + 8);
      v267 = v139 + 8;
      v269 = v145;
      v145(v142, v138);
      sub_24E6585F8(&v281);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158);
      v147 = (v270 + *(v146 + 64));
      v148 = v262;
      v149 = v263;
      (*(v262 + 16))(v270, v144, v263);
      v150 = *(v268 + 3);
      v151 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v150);
      v152 = type metadata accessor for ShelfBasedProductPage();
      (*(v151 + 8))(v152, sub_24EAB9DC0, 0, v152, v150, v151);
      (*(v148 + 8))(v144, v149);
      v269(v258, v266);
      v153 = v246;
      *v147 = v247;
      v147[1] = v153;
      type metadata accessor for FlowAction.Destination();
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    case 2:
      v126 = v253;
      sub_24E60169C(v265, v253, &qword_27F228530);
      v127 = v266;
      v128 = v267;
      if ((*(v267 + 48))(v126, 1, v266) == 1)
      {
        sub_24E601704(v126, &qword_27F228530);
        goto LABEL_69;
      }

      v213 = *(v128 + 32);
      v214 = v243;
      v213(v243, v126, v127);
      v215 = *(v268 + 3);
      v216 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v215);
      v217 = type metadata accessor for DynamicUIRequestInfo();
      (*(v216 + 8))(&v281, v217, sub_24EAB9DC0, 0, v217, v215, v216);
      v218 = v281;
      v219 = v270;
      if (v281)
      {
        v213(v270, v214, v127);
        *(v219 + *(type metadata accessor for DynamicUIIntent() + 20)) = v218;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

      (*(v128 + 8))(v214, v127);
      goto LABEL_69;
    case 3:
      v170 = v257;
      sub_24E60169C(v265, v257, &qword_27F228530);
      v171 = v266;
      v172 = v267;
      if ((*(v267 + 48))(v170, 1, v266) == 1)
      {
        goto LABEL_40;
      }

      v173 = *(v172 + 32);
      v173(v37, v170, v171);
      v173(v270, v37, v171);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xC:
      v137 = v256;
      sub_24E60169C(v265, v256, &qword_27F228530);
      v186 = v266;
      v187 = v267;
      if ((*(v267 + 48))(v137, 1, v266) == 1)
      {
        goto LABEL_38;
      }

      v223 = *(v187 + 32);
      v224 = v242;
      v223(v242, v137, v186);
      v225 = v270;
      sub_24E65864C(v264, v270);
      v226 = type metadata accessor for TodayPageIntent();
      v223(&v225[v226[5]], v224, v186);
      *&v225[v226[6]] = MEMORY[0x277D84F90];
      v225[v226[7]] = 0;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xD:
      v129 = v252;
      sub_24E60169C(v265, v252, &qword_27F228530);
      v130 = v266;
      v131 = v267;
      if ((*(v267 + 48))(v129, 1, v266) == 1)
      {
        v132 = &qword_27F228530;
        v133 = v129;
        goto LABEL_63;
      }

      v220 = *(v131 + 32);
      v220(v49, v129, v130);
      v221 = v270;
      sub_24E65864C(v264, v270);
      v222 = type metadata accessor for ArticlePageIntent();
      v220(&v221[*(v222 + 20)], v49, v130);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0xE:
      v155 = *(v268 + 3);
      v156 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v155);
      v157 = sub_24E69A5C4(0, &qword_27F227150);
      (*(v156 + 8))(&v281, v157, sub_24EAB9DC0, 0, v157, v155, v156);
      *v270 = v281;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x11:
      v158 = *(v268 + 3);
      v159 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v158);
      v160 = type metadata accessor for ReviewsPage(0);
      (*(v159 + 8))(&v281, v160, sub_24EAB9DC0, 0, v160, v158, v159);
      v93 = v281;
      if (v281)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x12:
      v190 = v250;
      sub_24E60169C(v265, v250, &qword_27F228530);
      v191 = v266;
      v192 = v267;
      if ((*(v267 + 48))(v190, 1, v266) == 1)
      {
        sub_24E601704(v190, &qword_27F228530);
      }

      else
      {
        v228 = *(v192 + 32);
        v228(v64, v190, v191);
        v228(v270, v64, v191);
      }

      goto LABEL_69;
    case 0x13:
      v170 = v254;
      sub_24E60169C(v265, v254, &qword_27F228530);
      v188 = v266;
      v189 = v267;
      if ((*(v267 + 48))(v170, 1, v266) == 1)
      {
LABEL_40:
        v132 = &qword_27F228530;
        v133 = v170;
        goto LABEL_63;
      }

      v227 = *(v189 + 32);
      v227(v44, v170, v188);
      v227(v270, v44, v188);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x18:
      v90 = *(v268 + 3);
      v91 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v90);
      v92 = type metadata accessor for Review(0);
      (*(v91 + 8))(&v281, v92, sub_24EAB9DC0, 0, v92, v90, v91);
      v93 = v281;
      if (v281)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x19:
      v134 = *(v268 + 3);
      v135 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v134);
      v136 = type metadata accessor for EditorsChoice();
      (*(v135 + 8))(&v281, v136, sub_24EAB9DC0, 0, v136, v134, v135);
      v93 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

LABEL_28:
      *v270 = v93;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x1A:
      v94 = *(v268 + 3);
      v95 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v94);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227168);
      (*(v95 + 8))(&v281, v96, sub_24EAB9DC0, 0, v96, v94, v95);
      v97 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

      if (*(v281 + 16) && (v98 = sub_24E76D758(2u), (v99 & 1) != 0))
      {
        v101 = v266;
        v100 = v267;
        v102 = *(v267 + 72);
        v103 = *(v267 + 16);
        v103(v59, *(v97 + 56) + v102 * v98, v266);
        v104 = *(v100 + 32);
        v105 = v241;
        v106 = v59;
        v107 = v101;
        v104(v241, v106, v101);
        if (*(v97 + 16))
        {
          v108 = sub_24E76D758(1u);
          if (v109)
          {
            v110 = *(v97 + 56) + v108 * v102;
            v111 = v237;
            v103(v237, v110, v101);

            v112 = v238;
            v104(v238, v111, v107);
            v113 = v240;
            v104(v240, v105, v107);
            v114 = *(v267 + 56);
            v114(v113, 0, 1, v107);
            v115 = *(v239 + 20);
            v104((v113 + v115), v112, v107);
            v114(v113 + v115, 0, 1, v107);
            sub_24EAB97A8(v113, v270, type metadata accessor for ArcadePageUrls);
            type metadata accessor for FlowAction.Destination();
            return swift_storeEnumTagMultiPayload();
          }
        }

        (*(v267 + 8))(v105, v101);
      }

      else
      {
      }

      goto LABEL_69;
    case 0x1C:
      v85 = *(v268 + 3);
      v86 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v85);
      v87 = type metadata accessor for MarketingItemRequestInfo();
      (*(v86 + 8))(&v281, v87, sub_24EAB9DC0, 0, v87, v85, v86);
      v88 = v281;
      if (!v281)
      {
        goto LABEL_69;
      }

      v89 = v270;
      sub_24E65864C(v264, v270);
      *(v89 + 5) = v88;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x1D:
      v137 = v251;
      sub_24E60169C(v265, v251, &qword_27F228530);
      v161 = v266;
      v162 = v267;
      if ((*(v267 + 48))(v137, 1, v266) != 1)
      {
        v163 = *(v162 + 32);
        v163(v52, v137, v161);
        v164 = *(v268 + 3);
        v165 = *(v268 + 4);
        __swift_project_boxed_opaque_existential_1(v268, v164);
        v166 = type metadata accessor for ArcadeSeeAllGamesPage();
        (*(v165 + 8))(&v281, v166, sub_24EAB9DC0, 0, v166, v164, v165);
        v167 = v281;
        v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227160) + 48);
        v169 = v270;
        *v270 = v167;
        v163(&v169[v168], v52, v161);
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_38:
      v132 = &qword_27F228530;
      v133 = v137;
      goto LABEL_63;
    case 0x25:
      v200 = *(v268 + 3);
      v201 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v200);
      v202 = type metadata accessor for GameCenterPlayerProfileAction();
      (*(v201 + 8))(&v281, v202, sub_24EAB9DC0, 0, v202, v200, v201);
      if (!v281)
      {
        goto LABEL_69;
      }

      v204 = *(v281 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
      v203 = *(v281 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId + 8);

      v205 = v270;
      if (!v203)
      {
        goto LABEL_69;
      }

      *v270 = v204;
      *(v205 + 1) = v203;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x28:
      v193 = *(v268 + 3);
      v194 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v193);
      v195 = type metadata accessor for ShareSheetAction();
      (*(v194 + 8))(&v281, v195, sub_24EAB9DC0, 0, v195, v193, v194);
      if (!v281)
      {
        goto LABEL_69;
      }

      v196 = *(v281 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data);
      v197 = *(v281 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities);
      v198 = *(v281 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle);

      v199 = v270;
      *v270 = v196;
      *(v199 + 1) = v197;
      *(v199 + 16) = v198;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x2C:
      v79 = v249;
      sub_24E60169C(v265, v249, &qword_27F228530);
      v80 = v266;
      v81 = v267;
      if ((*(v267 + 48))(v79, 1, v266) == 1)
      {
        sub_24E601704(v79, &qword_27F228530);
        v82 = 1;
      }

      else
      {
        (*(v81 + 32))(v68, v79, v80);
        sub_24E65864C(v264, &v281);
        v206 = *(v81 + 16);
        v207 = v259;
        v206(v259, v68, v80);
        v208 = v260;
        sub_24E65864C(&v281, v260);
        v206((v208 + *(v261 + 20)), v207, v80);
        sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
        sub_24F929188();
        v209 = *(v81 + 8);
        v209(v207, v80);
        sub_24E6585F8(&v281);
        v209(v68, v80);
        v82 = 0;
      }

      (*(v262 + 56))(v74, v82, 1, v263);
      sub_24EAB9588(v74, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);
      sub_24E60169C(v78, v270, &qword_27F227140);
      v210 = *(v268 + 3);
      v211 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v210);
      v212 = type metadata accessor for GenericPage();
      (*(v211 + 8))(v212, sub_24EAB9DC0, 0, v212, v210, v211);
      sub_24E601704(v78, &qword_27F227140);
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    case 0x31:
      v116 = *(v268 + 3);
      v117 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v116);
      (*(v117 + 8))(&v271, &type metadata for Annotation, sub_24EAB9DC0, 0, &type metadata for Annotation, v116, v117);
      if (*(&v271 + 1))
      {
        v287 = v277;
        v288 = v278;
        v289 = v279;
        v290 = v280;
        v118 = v273;
        v283 = v273;
        v284 = v274;
        v285 = v275;
        v286 = v276;
        v281 = v271;
        v282 = v272;
        v119 = v278;
        v120 = v279;
        v121 = v270;
        v270[6] = v277;
        v121[7] = v119;
        v121[8] = v120;
        *(v121 + 18) = v290;
        v122 = v284;
        v123 = v285;
        v121[2] = v118;
        v121[3] = v122;
        v124 = v286;
        v121[4] = v123;
        v121[5] = v124;
        v125 = v282;
        *v121 = v281;
        v121[1] = v125;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }

      v132 = &qword_27F2147D8;
      goto LABEL_62;
    case 0x36:
      v83 = *(v268 + 3);
      v84 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v83);
      (*(v84 + 8))(&v271, MEMORY[0x277D84F70] + 8, sub_24EAB9DC0, 0, MEMORY[0x277D84F70] + 8, v83, v84);
      if (*(&v272 + 1))
      {
        sub_24E612B0C(&v271, &v281);
        sub_24E612B0C(&v281, v270);
        type metadata accessor for FlowAction.Destination();
      }

      else
      {
        v132 = &qword_27F2129B0;
LABEL_62:
        v133 = &v271;
LABEL_63:
        sub_24E601704(v133, v132);
LABEL_69:
        type metadata accessor for FlowAction.Destination();
      }

      return swift_storeEnumTagMultiPayload();
    default:
      v269 = v76;
      v174 = v75;
      v175 = *(v268 + 3);
      v176 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v175);
      v177 = type metadata accessor for GenericPage();
      (*(v176 + 8))(&v281, v177, sub_24EAB9DC0, 0, v177, v175, v176);
      v178 = v281;
      v179 = v266;
      v180 = v267;
      v181 = *(v267 + 48);
      v182 = v265;
      if (v181(v265, 1, v266) == 1 && !v178)
      {
        goto LABEL_69;
      }

      v268 = *(v262 + 56);
      v268(v174, 1, 1, v263);
      v183 = v244;
      sub_24E60169C(v182, v244, &qword_27F228530);
      v184 = v181(v183, 1, v179);
      v185 = v270;
      if (v184 == 1)
      {
        sub_24E601704(v183, &qword_27F228530);
      }

      else
      {
        v229 = v248;
        (*(v180 + 32))(v248, v183, v179);
        sub_24E65864C(v264, &v281);
        v230 = *(v180 + 16);
        v231 = v259;
        v230(v259, v229, v179);
        v265 = v178;
        v232 = v260;
        sub_24E65864C(&v281, v260);
        v230((v232 + *(v261 + 20)), v231, v179);
        sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
        v233 = v269;
        v178 = v265;
        sub_24F929188();
        v234 = *(v180 + 8);
        v234(v231, v179);
        sub_24E6585F8(&v281);
        v234(v248, v179);
        v185 = v270;
        sub_24E601704(v174, &qword_27F227140);
        v268(v233, 0, 1, v263);
        sub_24EAB9588(v233, v174);
      }

      v235 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148) + 48);
      sub_24EAB9588(v174, v185);
      *(v185 + v235) = v178;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t FlowAction.tabRole.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - v9);
  v11 = _UISolariumEnabled();
  v12 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  LOBYTE(v20) = *(v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v21[4] = &protocol witness table for FlowAction;
  v13 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v21[3] = v4;
  v21[0] = v2;
  v14 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v2 + v12, &v20, v2 + v13, v21, v16, v15, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (swift_getEnumCaseMultiPayload() != 27)
  {
    goto LABEL_7;
  }

  sub_24EAB9610(v10, v7);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return sub_24EAB9700(v10, type metadata accessor for FlowAction.Destination);
  }

  v17 = v20;
  if (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 3 && (sub_24E60169C((v20 & 0xFFFFFFFFFFFFFFBLL) + 16, v21, &qword_27F227170), sub_24E601704(v21, &qword_27F227178), v11))
  {
    *(a1 + 24) = sub_24F927328();
    *(a1 + 32) = sub_24EAB9760(&qword_27F227180, MEMORY[0x277CDF0C0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_24F927318();
    sub_24EAB9674(v17);
  }

  else
  {
    sub_24EAB9674(v17);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return sub_24EAB9700(v10, type metadata accessor for FlowAction.Destination);
}

unint64_t FlowAction.Destination.destinationIdentifier.getter()
{
  v1 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAB9610(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x746E756F636361;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6956626557736D61;
      break;
    case 2:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000010;
      break;
    case 3:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656C6369747261;
      break;
    case 4:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656461637261;
      break;
    case 5:

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227160) + 48);
      v8 = sub_24F91F4A8();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      result = 0xD000000000000011;
      break;
    case 6:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x5563696D616E7964;
      break;
    case 7:
    case 18:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000013;
      break;
    case 8:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656D656761676E65;
      break;
    case 9:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x65636E616E6966;
      break;
    case 10:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000017;
      break;
    case 11:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x41636972656E6567;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);

      sub_24E601704(v3, &qword_27F227140);
      result = 0x676E6970756F7267;
      break;
    case 13:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6E6974656B72616DLL;
      break;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);

      sub_24E601704(v3, &qword_27F227140);
      result = 1701273968;
      break;
    case 15:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6563614665676170;
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);

      sub_24E601704(v3, &qword_27F227140);
      result = 0x4479636176697270;
      break;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158);

      swift_unknownObjectRelease();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
      (*(*(v9 - 8) + 8))(v3, v9);
      result = 0x746375646F7270;
      break;
    case 19:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6573616863727570;
      break;
    case 20:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6F4374726F706572;
      break;
    case 21:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6544776569766572;
      break;
    case 22:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73776569766572;
      break;
    case 23:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6568536572616873;
      break;
    case 24:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6472614374786574;
      break;
    case 25:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x7961646F74;
      break;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227188);

      v6 = sub_24F91F4A8();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x7665526574697277;
      break;
    case 27:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73656D6167;
      break;
    case 28:
      return result;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0x686372616573;
      break;
    case 32:
      result = 0x6E776F6E6B6E75;
      break;
    case 33:
      result = 0x75506E6564646968;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);

      sub_24E601704(v3, &qword_27F227140);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t FlowAction.Destination.automationIdentifier.getter()
{
  v1 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAB9610(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v13 = 0x676E6970756F7267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);

    sub_24EAB9588(v12, v9);
    sub_24E60169C(v9, v6, &qword_27F227140);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_24E601704(v9, &qword_27F227140);
      sub_24E601704(v6, &qword_27F227140);
    }

    else
    {
      sub_24F929168();
      sub_24E65864C(v3, v20);
      sub_24EAB9700(v3, type metadata accessor for ClosedGenericPageIntent);
      (*(v15 + 8))(v6, v14);
      v22[0] = v20[0];
      v22[1] = v20[1];
      v23 = v21;
      strcpy(v20, "groupingView=");
      HIWORD(v20[0]) = -4864;
      v17 = sub_24F92C7A8();
      MEMORY[0x253050C20](v17);

      v13 = *&v20[0];
      sub_24E6585F8(v22);
      sub_24E601704(v9, &qword_27F227140);
    }
  }

  else
  {
    *&v22[0] = FlowAction.Destination.destinationIdentifier.getter();
    *(&v22[0] + 1) = v16;
    MEMORY[0x253050C20](2003134806, 0xE400000000000000);
    v13 = *&v22[0];
    sub_24EAB9700(v12, type metadata accessor for FlowAction.Destination);
  }

  return v13;
}

uint64_t FlowAction.Destination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v156 = a2;
  v151 = a3;
  v4 = type metadata accessor for DynamicUIIntent();
  MEMORY[0x28223BE20](v4 - 8);
  v135 = v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x28223BE20](v6);
  v140 = v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v143 = v131 - v9;
  MEMORY[0x28223BE20](v10);
  v148 = v131 - v11;
  v12 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x28223BE20](v12 - 8);
  v150 = v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_24F9285B8();
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v134 = v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v137 = v131 - v16;
  MEMORY[0x28223BE20](v17);
  v139 = v131 - v18;
  MEMORY[0x28223BE20](v19);
  v142 = v131 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = v131 - v22;
  MEMORY[0x28223BE20](v23);
  v149 = v131 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v131 - v26;
  v28 = type metadata accessor for TodayPageIntent();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F928388();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v136 = v131 - v35;
  MEMORY[0x28223BE20](v36);
  v138 = v131 - v37;
  MEMORY[0x28223BE20](v38);
  v141 = v131 - v39;
  MEMORY[0x28223BE20](v40);
  v146 = v131 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = v131 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v131 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = v131 - v49;
  v158 = a1;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v55 = *(v32 + 8);
  v54 = v32 + 8;
  v56 = v50;
  v57 = v31;
  v58 = v55;
  v55(v56, v57);
  if (!v53)
  {
    v66 = sub_24F92AC38();
    sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548]);
    v132 = v58;
    v67 = swift_allocError();
    v69 = v68;
    v70 = type metadata accessor for FlowAction.Destination();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_24F93DE60;
    *(v71 + 32) = swift_allocError();
    *v72 = 1701869940;
    v72[1] = 0xE400000000000000;
    v72[2] = v70;
    v73 = *(*(v66 - 8) + 104);
    v73(v72, *MEMORY[0x277D22530], v66);
    *v69 = v70;
    v69[1] = v71;
    v73(v69, *MEMORY[0x277D22538], v66);
    v154 = v67;
    swift_willThrow();
    (*(v155 + 8))(v156, v153);
    return v132(v158, v57);
  }

  v152 = v57;
  v59 = v153;
  if (v51 == 0x7961646F74 && v53 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {
    v60 = v58;

    v61 = v158;
    sub_24F928398();
    v63 = v155;
    v62 = v156;
    (*(v155 + 16))(v27, v156, v59);
    v64 = v154;
    TodayPageIntent.init(deserializing:using:)(v47, v27, v30);
    v154 = v64;
    if (v64)
    {
      (*(v63 + 8))(v62, v59);
      return v60(v61, v152);
    }

    (*(v63 + 8))(v62, v59);
    v60(v61, v152);
    sub_24EAB97A8(v30, v151, type metadata accessor for TodayPageIntent);
    type metadata accessor for FlowAction.Destination();
    return swift_storeEnumTagMultiPayload();
  }

  v74 = v59;
  if ((v51 != 0x656C6369747261 || v53 != 0xE700000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    v131[1] = v54;
    if (v51 == 0x676E6970756F7267 && v53 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      sub_24F928398();
      v81 = v155;
      v82 = v156;
      (*(v155 + 16))(v147, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
      v83 = v148;
      v84 = v154;
      sub_24F929178();
      v154 = v84;
      if (v84)
      {
        (*(v81 + 8))(v82, v59);
        return v58(v158, v152);
      }

      (*(v81 + 8))(v82, v59);
      v58(v158, v152);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);
      v86 = v83;
      v87 = *(v85 + 48);
      v89 = v144;
      v88 = v145;
      v90 = v151;
      (*(v144 + 32))(v151, v86, v145);
      (*(v89 + 56))(v90, 0, 1, v88);
      *(v90 + v87) = 0;
      type metadata accessor for FlowAction.Destination();
      return swift_storeEnumTagMultiPayload();
    }

    v132 = v58;
    if (v51 == 1701273968 && v53 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v91 = v158;
      sub_24F928398();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v142, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
      v94 = v143;
      v95 = v154;
      sub_24F929178();
      v154 = v95;
      if (!v95)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148);
        v97 = v94;
        v98 = *(v96 + 48);
        v100 = v144;
        v99 = v145;
        v101 = v151;
        (*(v144 + 32))(v151, v97, v145);
        (*(v100 + 56))(v101, 0, 1, v99);
        *(v101 + v98) = 0;
        type metadata accessor for FlowAction.Destination();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      if ((v51 != 0x746375646F7270 || v53 != 0xE700000000000000) && (sub_24F92CE08() & 1) == 0)
      {
        if (v51 == 0x686372616573 && v53 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
        {
          v109 = sub_24F92AC38();
          sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548]);
          v110 = swift_allocError();
          v111 = v58;
          v113 = v112;
          v114 = type metadata accessor for FlowAction.Destination();
          *v113 = v51;
          v113[1] = v53;
          v113[2] = v114;
          (*(*(v109 - 8) + 104))(v113, *MEMORY[0x277D22520], v109);
          v154 = v110;
          swift_willThrow();
          (*(v155 + 8))(v156, v59);
        }

        else
        {
          v111 = v58;
          if (v51 == 0x6E6974656B72616DLL && v53 == 0xED00006D65744967 || (sub_24F92CE08() & 1) != 0)
          {

            v115 = v136;
            v116 = v158;
            sub_24F928398();
            v118 = v155;
            v117 = v156;
            v119 = v137;
            (*(v155 + 16))(v137, v156, v59);
            v120 = v154;
            MarketingIntent.init(deserializing:using:)(v115, v119, v157);
            v154 = v120;
            if (v120)
            {
              (*(v118 + 8))(v117, v59);
              return v111(v116, v152);
            }

            (*(v118 + 8))(v117, v59);
            v111(v116, v152);
            v121 = v157[1];
            v122 = v151;
            *v151 = v157[0];
            v122[1] = v121;
            v122[2] = v157[2];
            type metadata accessor for FlowAction.Destination();
            return swift_storeEnumTagMultiPayload();
          }

          if (v51 == 0x5563696D616E7964 && v53 == 0xE900000000000049 || (sub_24F92CE08() & 1) != 0)
          {

            v123 = v133;
            sub_24F928398();
            v124 = v134;
            (*(v155 + 16))(v134, v156, v59);
            v125 = v154;
            DynamicUIIntent.init(deserializing:using:)(v123, v124, v135);
            v154 = v125;
            if (!v125)
            {
              (*(v155 + 8))(v156, v59);
              v58(v158, v152);
              sub_24EAB97A8(v135, v151, type metadata accessor for DynamicUIIntent);
              type metadata accessor for FlowAction.Destination();
              return swift_storeEnumTagMultiPayload();
            }
          }

          else
          {
            v126 = sub_24F92AC38();
            sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548]);
            v127 = swift_allocError();
            v129 = v128;
            v130 = type metadata accessor for FlowAction.Destination();
            *v129 = v51;
            v129[1] = v53;
            v129[2] = v130;
            (*(*(v126 - 8) + 104))(v129, *MEMORY[0x277D22520], v126);
            v154 = v127;
            swift_willThrow();
          }

          (*(v155 + 8))(v156, v59);
        }

        return v111(v158, v152);
      }

      v91 = v158;
      sub_24F928398();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v139, v156, v59);
      type metadata accessor for ClosedGenericPageIntent();
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent);
      v102 = v140;
      v103 = v154;
      sub_24F929178();
      v154 = v103;
      if (!v103)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158);
        v105 = v102;
        v106 = *(v104 + 48);
        v107 = v151;
        v108 = (v151 + *(v104 + 64));
        (*(v144 + 32))(v151, v105, v145);
        *(v107 + v106) = 0;
        type metadata accessor for FlowAction.Destination();
        *v108 = 0;
        v108[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }
    }

    (*(v93 + 8))(v92, v59);
    return v132(v91, v152);
  }

  v75 = v158;
  sub_24F928398();
  v77 = v155;
  v76 = v156;
  v78 = v149;
  (*(v155 + 16))(v149, v156, v74);
  v79 = v150;
  v80 = v154;
  ArticlePageIntent.init(deserializing:using:)(v44, v78, v150);
  v154 = v80;
  if (!v80)
  {
    (*(v77 + 8))(v76, v74);
    v58(v75, v152);
    sub_24EAB97A8(v79, v151, type metadata accessor for ArticlePageIntent);
    type metadata accessor for FlowAction.Destination();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v77 + 8))(v76, v74);
  return v58(v75, v152);
}

uint64_t type metadata accessor for FlowAction.Destination()
{
  result = qword_27F227198;
  if (!qword_27F227198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAB9588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAB9610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EAB9674(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EAB9700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EAB9760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAB97A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24EAB9810()
{
  sub_24EAB9A28();
  if (v0 <= 0x3F)
  {
    sub_24F91F4A8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ArticlePageIntent();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ArcadePageUrls();
        if (v3 <= 0x3F)
        {
          sub_24EAB9AB0();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DynamicUIIntent();
            if (v5 <= 0x3F)
            {
              type metadata accessor for EditorsChoice();
              if (v6 <= 0x3F)
              {
                sub_24E69A5C4(319, &qword_27F2271C8);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PageFacetsPresenter();
                  if (v8 <= 0x3F)
                  {
                    sub_24EAB9B30();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for ProductMediaGalleryPage();
                      if (v10 <= 0x3F)
                      {
                        sub_24EAB9BDC();
                        if (v11 <= 0x3F)
                        {
                          sub_24EAB9C44();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for Review(319);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for ReviewsPage(319);
                              if (v14 <= 0x3F)
                              {
                                sub_24EAB9CC0();
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for TextCard();
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for TodayPageIntent();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_24EAB9D44();
                                      if (v18 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EAB9A28()
{
  if (!qword_27F2271A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271A8);
    }
  }
}

void sub_24EAB9AB0()
{
  if (!qword_27F2271B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271C0);
    sub_24F91F4A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271B8);
    }
  }
}

void sub_24EAB9B30()
{
  if (!qword_27F2271D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F2271D0);
    }
  }
}

void sub_24EAB9BDC()
{
  if (!qword_27F2271E8)
  {
    sub_24E69A5C4(255, &qword_27F227150);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2271E8);
    }
  }
}

void sub_24EAB9C44()
{
  if (!qword_27F2271F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271F8);
    type metadata accessor for HttpTemplateAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271F0);
    }
  }
}

void sub_24EAB9CC0()
{
  if (!qword_27F227200)
  {
    type metadata accessor for ShareSheetData();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227208);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F227200);
    }
  }
}

void sub_24EAB9D44()
{
  if (!qword_27F227210)
  {
    sub_24F91F4A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F227210);
    }
  }
}

GameStoreKit::SearchResultType_optional __swiftcall SearchResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x746E657645707061;
  if (v1 != 6)
  {
    v3 = 0x6553646564697567;
  }

  v4 = 0x656C646E7562;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6169726F74696465;
  if (v1 != 2)
  {
    v5 = 0x7275507070416E69;
  }

  if (*v0)
  {
    v2 = 0x747265766461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_24EAB9F64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  v5 = 0xE800000000000000;
  v6 = 0x746E657645707061;
  if (v2 != 6)
  {
    v6 = 0x6553646564697567;
    v5 = 0xEC00000068637261;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C646E7562;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000024FA42070;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE90000000000006CLL;
  v10 = 0x6169726F74696465;
  if (v2 != 2)
  {
    v10 = 0x7275507070416E69;
    v9 = 0xED00006573616863;
  }

  if (*v1)
  {
    v4 = 0x747265766461;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t SearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResult.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchResult.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = sub_24F9285B8();
  v52 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v48 - v8;
  v9 = sub_24F91F6B8();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  v53 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v64 = a2;
  if (v22)
  {
    v59 = v21;
    v60 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    v55[1](v11, v9);
    v59 = v23;
    v60 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v13 + 8);
  v27 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v26)(v20, v12);
  v28 = v62;
  *(v3 + 24) = v61;
  *(v3 + 40) = v28;
  *(v3 + 56) = v63;
  v29 = type metadata accessor for Action();
  v30 = v53;
  sub_24F928398();
  v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v64);
  (v26)(v17, v12);
  v55 = v26;
  v56 = v12;
  v54 = v27;
  if (v31)
  {
    v32 = sub_24EABB894(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v29 = 0;
    v32 = 0;
  }

  *(v3 + 64) = v31;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = v29;
  *(v3 + 96) = v32;
  sub_24F929608();
  v33 = v30;
  sub_24F928398();
  v34 = v52;
  v48 = *(v52 + 16);
  v48(v57, v64, v58);
  v35 = v49;
  sub_24F929548();
  v36 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics;
  sub_24E65E0D4(v35, v3 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  v37 = v50;
  sub_24F928398();
  sub_24EABA7D4();
  v38 = v51;
  sub_24F928218();
  v51 = v38;
  if (v38)
  {
    (*(v34 + 8))(v64, v58);
    v40 = v55;
    v39 = v56;
    (v55)(v33, v56);
    (v40)(v37, v39);
    sub_24E6585F8(v3 + 24);
    sub_24E601704(v3 + 64, qword_27F21B590);
    sub_24E601704(v3 + v36, &qword_27F213E68);

    type metadata accessor for SearchResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v55;
    v42 = v56;
    (v55)(v37, v56);
    *(v3 + 17) = v61;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    (v41)(v17, v42);
    *(v3 + 16) = v61;
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v43 = v58;
    v44 = v64;
    v48(v57, v64, v58);
    sub_24EABB894(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    (*(v34 + 8))(v44, v43);
    (v55)(v33, v56);
    v45 = v59;
    v46 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v3 + v46) = v45;
  }

  return v3;
}

unint64_t sub_24EABA7D4()
{
  result = qword_27F227218;
  if (!qword_27F227218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227218);
  }

  return result;
}

uint64_t type metadata accessor for SearchResult()
{
  result = qword_27F227240;
  if (!qword_27F227240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EABA874()
{
  result = qword_27F227220;
  if (!qword_27F227220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227220);
  }

  return result;
}

char *static SearchResult.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EABA7D4();
  sub_24F928218();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_24EABB1CC(v11, a1, a2);
}

char *sub_24EABAA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EABA7D4();
  sub_24F928218();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_24EABB1CC(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t sub_24EABAC38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EABACE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t SearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EABAEE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24F92AC28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v6, &qword_27F2213B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F2213B0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F92ABF8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  type metadata accessor for SearchResult();
  v13 = sub_24F92ABB8();
  (*(v8 + 8))(v10, v7);
  return v13;
}

char *sub_24EABB1CC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v69 = a1;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v72 = v3;
  v73 = v4;
  MEMORY[0x28223BE20](v3);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - v7;
  MEMORY[0x28223BE20](v8);
  v66 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v61 = &v60 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v60 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v60 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v60 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v60 - v40;
  v45 = MEMORY[0x28223BE20](v42);
  v46 = (&v60 - v44);
  v47 = *v69;
  if (v47 > 3)
  {
    if (*v69 > 5u)
    {
      if (v47 == 6)
      {
        v53 = v43;
        type metadata accessor for AppEventSearchResult();
        (*(v21 + 16))(v26, v70, v53);
        v54 = v67;
        (*(v73 + 16))(v67, v71, v72);
        return AppEventSearchResult.__allocating_init(deserializing:using:)(v26, v54);
      }

      else
      {
        (*(v21 + 16))(v23, v70, v45);
        v59 = v68;
        (*(v73 + 16))(v68, v71, v72);
        return sub_24F889600(v23, v59);
      }
    }

    else if (v47 == 4)
    {
      (*(v21 + 16))(v32, v70, v45);
      v50 = v65;
      (*(v73 + 16))(v65, v71, v72);
      return sub_24EE81274(v32, v50);
    }

    else
    {
      v56 = v43;
      type metadata accessor for LockupCollectionSearchResult();
      (*(v21 + 16))(v29, v70, v56);
      v57 = v66;
      (*(v73 + 16))(v66, v71, v72);
      return LockupCollectionSearchResult.__allocating_init(deserializing:using:)(v29, v57);
    }
  }

  else if (*v69 > 1u)
  {
    if (v47 == 2)
    {
      v51 = v43;
      type metadata accessor for EditorialSearchResult();
      (*(v21 + 16))(v38, v70, v51);
      v52 = v62;
      (*(v73 + 16))(v62, v71, v72);
      return EditorialSearchResult.__allocating_init(deserializing:using:)(v38, v52);
    }

    else
    {
      (*(v21 + 16))(v35, v70, v45);
      v58 = v63;
      (*(v73 + 16))(v63, v71, v72);
      return sub_24F0A236C(v35, v58);
    }
  }

  else if (*v69)
  {
    (*(v21 + 16))(v41, v70, v45);
    v55 = v64;
    (*(v73 + 16))(v64, v71, v72);
    type metadata accessor for AdvertsSearchResult();
    swift_allocObject();
    return AdvertsSearchResult.init(deserializing:using:)(v41, v55);
  }

  else
  {
    (*(v21 + 16))(&v60 - v44, v70, v45);
    v48 = v61;
    (*(v73 + 16))(v61, v71, v72);
    return sub_24F134150(v46, v48);
  }
}

unint64_t sub_24EABB7F8()
{
  result = qword_27F227230;
  if (!qword_27F227230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227230);
  }

  return result;
}

uint64_t sub_24EABB894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EABB8DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24EABB954()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

const char *Feature.iOS.feature.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = "todayWidget";
    v8 = "arcade_choose_your_favorites_brick_Future";
    v9 = "arcade_see_all_games_uplift_navigation_bar_Future";
    if (v1 != 3)
    {
      v9 = "arcade_see_all_games_uplift_ribbon_bar_Future";
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = "today_tab_largest_ax_support";
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = "mini_today_cards_product";
    v3 = "mini_today_cards_grouping";
    if (v1 != 9)
    {
      v3 = "mini_today_cards_article";
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = "arcade_see_all_games_menu_uplift";
    v5 = "arcade_hero_video_page_timer";
    if (v1 != 6)
    {
      v5 = "app_genome_2025A";
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t Feature.iOS.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t Feature.iOS.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6469577961646F74;
    v7 = 0xD000000000000029;
    v8 = 0xD000000000000031;
    if (v1 != 3)
    {
      v8 = 0xD00000000000002DLL;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    v3 = 0xD000000000000019;
    if (v1 != 9)
    {
      v3 = 0xD000000000000018;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000020;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24EABBDE0()
{
  result = qword_27F227250;
  if (!qword_27F227250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227250);
  }

  return result;
}

uint64_t sub_24EABBE34()
{
  sub_24F92D068();
  sub_24F203148();
  return sub_24F92D0B8();
}

uint64_t sub_24EABBE84()
{
  sub_24F92D068();
  sub_24F203148();
  return sub_24F92D0B8();
}

unint64_t sub_24EABBED4@<X0>(unint64_t *a1@<X8>)
{
  result = Feature.iOS.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::StringCharacteristics __swiftcall StringCharacteristics.init(byAnalyzing:)(Swift::String_optional byAnalyzing)
{
  object = byAnalyzing.value._object;
  countAndFlagsBits = byAnalyzing.value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_24F91EAA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    v28 = v4;
    v30 = countAndFlagsBits;
    v31 = object;
    sub_24F91EA78();
    v10 = sub_24E600AEC();
    sub_24F92C508();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v9, v5);
    v14 = (v12 & 1) == 0;
    v30 = countAndFlagsBits;
    v31 = object;
    if (qword_27F2104D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_27F22C288);
    sub_24F92C508();
    if ((v15 & 1) == 0)
    {
      v14 |= 8uLL;
    }

    v30 = countAndFlagsBits;
    v31 = object;
    sub_24F91EA18();
    v29 = v10;
    v16 = v14;
    sub_24F92C508();
    v18 = v17;
    v13(v9, v5);
    if ((v18 & 1) == 0 || (v30 = countAndFlagsBits, v31 = object, sub_24F91EA48(), sub_24F92C508(), v20 = v19, v13(v9, v5), (v20 & 1) == 0))
    {
      v16 = v14 | 2;
    }

    v21 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v21 = countAndFlagsBits;
    }

    v22 = 7;
    if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v23 = v22 | (v21 << 16);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v30 = countAndFlagsBits;
    v31 = object;
    v32 = 15;
    v33 = v23;
    v25 = swift_allocObject();
    v25[2] = countAndFlagsBits;
    v25[3] = object;
    v25[4] = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227258);
    sub_24E602068(&qword_27F227260, &qword_27F227258);
    sub_24F92C548();

    swift_beginAccess();
    LODWORD(v23) = *(v24 + 16);

    v26 = v16 | 4;
    if (!v23)
    {
      v26 = v16;
    }

    v4 = v28;
  }

  else
  {
    v26 = 0;
  }

  *v4 = v26;
  return result;
}

uint64_t StringCharacteristics.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24E615CF4(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24E615CF4((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x800000024FA51C20;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24E615CF4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24E615CF4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000013;
    *(v8 + 5) = 0x800000024FA51C00;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
  v9 = sub_24F92AF68();
  v11 = v10;

  MEMORY[0x253050C20](v9, v11);

  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_24EABC510()
{

  return swift_deallocObject();
}

uint64_t sub_24EABC550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(v7 + 32);
  result = sub_24F92B318();
  if (result >= 9)
  {
    result = swift_beginAccess();
    *(v9 + 16) = 1;
    *a7 = 1;
  }

  return result;
}

unint64_t sub_24EABC5C0()
{
  result = qword_27F227268;
  if (!qword_27F227268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227268);
  }

  return result;
}

unint64_t sub_24EABC618()
{
  result = qword_27F227270;
  if (!qword_27F227270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227270);
  }

  return result;
}

unint64_t sub_24EABC670()
{
  result = qword_27F227278;
  if (!qword_27F227278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227278);
  }

  return result;
}

unint64_t sub_24EABC6C8()
{
  result = qword_27F227280;
  if (!qword_27F227280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227280);
  }

  return result;
}

uint64_t sub_24EABC7A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v353) = a1;
  v356 = a6;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v333);
  v317 = &v251 - v10;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227290);
  MEMORY[0x28223BE20](v331);
  v332 = &v251 - v11;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227298);
  MEMORY[0x28223BE20](v342);
  v334 = &v251 - v12;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD8);
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v271 = &v251 - v13;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE0);
  MEMORY[0x28223BE20](v330);
  v287 = &v251 - v14;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A0);
  MEMORY[0x28223BE20](v315);
  v284 = (&v251 - v15);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A8);
  MEMORY[0x28223BE20](v339);
  v341 = &v251 - v16;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272B0);
  MEMORY[0x28223BE20](v312);
  v314 = &v251 - v17;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272B8);
  MEMORY[0x28223BE20](v340);
  v316 = &v251 - v18;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272C0);
  MEMORY[0x28223BE20](v346);
  v20 = &v251 - v19;
  v313 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v313);
  v305 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v321);
  v303 = &v251 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272C8);
  MEMORY[0x28223BE20](v319);
  v320 = &v251 - v23;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272D0);
  MEMORY[0x28223BE20](v336);
  v322 = &v251 - v24;
  v302 = type metadata accessor for HeroCardGameHeadingView();
  v301 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v266 = &v251 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v318);
  v304 = &v251 - v26;
  v270 = sub_24F924B38();
  v264 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v263 = &v251 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_24F921AF8();
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v265 = &v251 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20);
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v269 = &v251 - v29;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272D8);
  MEMORY[0x28223BE20](v310);
  v292 = &v251 - v30;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E0);
  MEMORY[0x28223BE20](v306);
  v308 = &v251 - v31;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v276 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v256 = &v251 - v32;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E8);
  MEMORY[0x28223BE20](v307);
  v278 = &v251 - v33;
  v343 = sub_24F9289E8();
  v344 = *(v343 - 8);
  MEMORY[0x28223BE20](v343);
  v260 = &v251 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v261 = &v251 - v36;
  MEMORY[0x28223BE20](v37);
  v262 = &v251 - v38;
  MEMORY[0x28223BE20](v39);
  v255 = &v251 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v41 - 8);
  v274 = &v251 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v275 = &v251 - v44;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272F0);
  MEMORY[0x28223BE20](v327);
  v309 = &v251 - v45;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272F8);
  MEMORY[0x28223BE20](v348);
  v350 = &v251 - v46;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227300);
  MEMORY[0x28223BE20](v337);
  v335 = &v251 - v47;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227308);
  MEMORY[0x28223BE20](v324);
  v325 = &v251 - v48;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227310);
  MEMORY[0x28223BE20](v338);
  v326 = &v251 - v49;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227318);
  MEMORY[0x28223BE20](v349);
  v51 = &v251 - v50;
  v300 = type metadata accessor for ActivityCardVisualView();
  MEMORY[0x28223BE20](v300);
  v279 = (&v251 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227320);
  MEMORY[0x28223BE20](v297);
  v298 = &v251 - v53;
  v295 = type metadata accessor for CardCompactAvatarView();
  v283 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v259 = &v251 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  MEMORY[0x28223BE20](v55 - 8);
  v273 = &v251 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v282 = &v251 - v58;
  v294 = type metadata accessor for PlayerAvatar(0);
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v254 = &v251 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v258 = &v251 - v61;
  MEMORY[0x28223BE20](v62);
  v280 = &v251 - v63;
  MEMORY[0x28223BE20](v64);
  v257 = &v251 - v65;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA10);
  MEMORY[0x28223BE20](v296);
  v281 = &v251 - v66;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227330);
  MEMORY[0x28223BE20](v323);
  v299 = &v251 - v67;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227338);
  v68 = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v347 = &v251 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v70 - 8);
  v289 = &v251 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v288 = &v251 - v73;
  MEMORY[0x28223BE20](v74);
  v272 = &v251 - v75;
  MEMORY[0x28223BE20](v76);
  v78 = &v251 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v251 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v251 - v83;
  v311 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v311);
  v355 = &v251 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v354) = a3;
  v329 = a4;
  sub_24EAC009C(a2, a3, a4, v355);
  v328 = a5;
  sub_24EAC0600(a2, v84);
  v86 = type metadata accessor for ActivityInviteCard();
  v87 = a2 + *(v86 + 32);
  v88 = type metadata accessor for CommonCardAttributes(0);
  v89 = *(v87 + *(v88 + 36));
  v351 = v87;
  v345 = v88;
  if (v89)
  {
    v90 = 1;
    v91 = a2;
  }

  else
  {
    sub_24E60169C(v87 + *(v88 + 32), v81, &qword_27F213FB8);
    v92 = type metadata accessor for GSKVideo();
    v90 = 1;
    v93 = v20;
    v94 = (*(*(v92 - 8) + 48))(v81, 1, v92);
    v95 = v81;
    v91 = a2;
    sub_24E601704(v95, &qword_27F213FB8);
    _ZF = v94 == 1;
    v20 = v93;
    if (_ZF)
    {
      sub_24E60169C(v351 + v345[7], v78, &qword_27F213FB0);
      v90 = (*(v344 + 48))(v78, 1, v343) != 1;
      v91 = a2;
      v20 = v93;
      sub_24E601704(v78, &qword_27F213FB0);
    }
  }

  v97 = v353;
  v98 = v354;
  if (sub_24EAC1F64(v353, v91, v354))
  {
    if (v97 > 5u)
    {
      if (v97 <= 7u)
      {
        if (v97 != 6)
        {
          if (v97 == 7)
          {
            v99 = v305;
            sub_24EAC2710(v351, v305, type metadata accessor for CommonCardAttributes);
            v100 = v313;
            sub_24EAC2710(v355, v99 + *(v313 + 20), type metadata accessor for CardLayoutMetrics);
            *(v99 + *(v100 + 24)) = v98;
            sub_24EAC2710(v99, v314, type metadata accessor for DefaultCardTitleView);
            swift_storeEnumTagMultiPayload();
            sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
            sub_24E602068(&qword_27F227348, &qword_27F2272A0);
            v101 = v316;
            sub_24F924E28();
            sub_24E60169C(v101, v341, &qword_27F2272B8);
            swift_storeEnumTagMultiPayload();
            sub_24EAC207C();
            sub_24EAC2164();
            sub_24F924E28();
            sub_24E601704(v101, &qword_27F2272B8);
            sub_24E60169C(v20, v350, &qword_27F2272C0);
            swift_storeEnumTagMultiPayload();
            sub_24EAC2248();
            sub_24EAC25BC();
            v102 = v347;
            sub_24F924E28();
            sub_24E601704(v20, &qword_27F2272C0);
            v103 = type metadata accessor for DefaultCardTitleView;
            v104 = v99;
LABEL_23:
            sub_24EAC27E0(v104, v103);
            v106 = v352;
LABEL_69:
            sub_24E601704(v84, &qword_27F2190D8);
            sub_24EAC27E0(v355, type metadata accessor for CardLayoutMetrics);
            sub_24E6009C8(v102, v356, &qword_27F227338);
            v105 = 0;
            return (*(v68 + 56))(v356, v105, 1, v106);
          }

          goto LABEL_64;
        }

        if (v98 > 2u && v98 == 3)
        {

LABEL_60:
          v209 = sub_24F924C98();
          v210 = v284;
          *v284 = v209;
          *(v210 + 8) = 0x4000000000000000;
          *(v210 + 16) = 0;
          v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A0);
          sub_24EAC0F70(v91, v98, v329, v210 + *(v211 + 44));
          sub_24E60169C(v210, v314, &qword_27F2272A0);
          swift_storeEnumTagMultiPayload();
          sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
          sub_24E602068(&qword_27F227348, &qword_27F2272A0);
          v212 = v316;
          sub_24F924E28();
          sub_24E60169C(v212, v341, &qword_27F2272B8);
          swift_storeEnumTagMultiPayload();
          sub_24EAC207C();
          sub_24EAC2164();
          sub_24F924E28();
          sub_24E601704(v212, &qword_27F2272B8);
          sub_24E60169C(v20, v350, &qword_27F2272C0);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2248();
          sub_24EAC25BC();
          v102 = v347;
          v106 = v352;
          sub_24F924E28();
          sub_24E601704(v20, &qword_27F2272C0);
          v213 = v210;
          v214 = &qword_27F2272A0;
LABEL_65:
          sub_24E601704(v213, v214);
          goto LABEL_69;
        }

        v208 = sub_24F92CE08();

        v98 = v354;
        if (v208)
        {
          goto LABEL_60;
        }

LABEL_64:
        v247 = v317;
        sub_24E9239A8(v353, v91, v98, v329, v328, v317);
        sub_24E60169C(v247, v332, &qword_27F214A20);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
        sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v248 = v334;
        sub_24F924E28();
        sub_24E60169C(v248, v341, &qword_27F227298);
        swift_storeEnumTagMultiPayload();
        sub_24EAC207C();
        sub_24EAC2164();
        sub_24F924E28();
        sub_24E601704(v248, &qword_27F227298);
        sub_24E60169C(v20, v350, &qword_27F2272C0);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2248();
        sub_24EAC25BC();
        v102 = v347;
        v106 = v352;
        sub_24F924E28();
        sub_24E601704(v20, &qword_27F2272C0);
        v213 = v247;
        v214 = &qword_27F214A20;
        goto LABEL_65;
      }

      if (v97 != 8)
      {
        if (v97 == 11)
        {
          v117 = v303;
          sub_24EAC0AC4(v98, v90, v84, v303);
          sub_24EAC2710(v117, v320, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E7179AC();
          sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          v118 = v322;
          sub_24F924E28();
          sub_24E60169C(v118, v335, &qword_27F2272D0);
          swift_storeEnumTagMultiPayload();
          sub_24EAC22D4();
          sub_24EAC2500();
          sub_24F924E28();
          sub_24E601704(v118, &qword_27F2272D0);
          sub_24E60169C(v51, v350, &qword_27F227318);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2248();
          sub_24EAC25BC();
          v102 = v347;
          sub_24F924E28();
          sub_24E601704(v51, &qword_27F227318);
          v103 = type metadata accessor for CardContentBackgroundStyle;
          v104 = v117;
          goto LABEL_23;
        }

        goto LABEL_64;
      }

      v121 = v351;
      if (v98)
      {
        v215 = sub_24F92CE08();

        v98 = v354;
        if ((v215 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
      }

      v252 = v84;
      v253 = v68;
      v216 = (v121 + v345[15]);
      v217 = v216[1];
      if (v217)
      {
        *&v357 = *v216;
        *(&v357 + 1) = v217;
        sub_24E600AEC();

        v218 = sub_24F925E18();
        v220 = v219;
        v222 = v221;
        sub_24F925A08();
        v223 = sub_24F925C98();
        v224 = v20;
        v226 = v225;
        v228 = v227;
        v230 = v229;

        sub_24E600B40(v218, v220, v222 & 1);

        *&v357 = v223;
        *(&v357 + 1) = v226;
        LOBYTE(v358) = v228 & 1;
        *(&v358 + 1) = v230;
        v231 = v271;
        sub_24F9268B8();
        v232 = v226;
        v20 = v224;
        sub_24E600B40(v223, v232, v228 & 1);

        LODWORD(v218) = sub_24F9251C8();
        *(v231 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)) = v218;
        v233 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8) + 36);
        v234 = *MEMORY[0x277CE13B8];
        v235 = sub_24F927748();
        (*(*(v235 - 8) + 104))(v231 + v233, v234, v235);
        v236 = *(v355 + *(v311 + 112));
        KeyPath = swift_getKeyPath();
        v238 = v231 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8) + 36);
        *v238 = KeyPath;
        *(v238 + 8) = v236;
        *(v238 + 16) = 0;
        LOBYTE(KeyPath) = sub_24F925818();
        sub_24F923318();
        v239 = v286;
        v240 = v231 + *(v286 + 36);
        *v240 = KeyPath;
        *(v240 + 8) = v241;
        *(v240 + 16) = v242;
        *(v240 + 24) = v243;
        *(v240 + 32) = v244;
        *(v240 + 40) = 0;
        v245 = v287;
        sub_24E6009C8(v231, v287, &qword_27F219FD8);
        v246 = 0;
      }

      else
      {
        v246 = 1;
        v245 = v287;
        v239 = v286;
      }

      (*(v285 + 56))(v245, v246, 1, v239);
      v139 = &qword_27F219FE0;
      sub_24E60169C(v245, v332, &qword_27F219FE0);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
      sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v249 = v334;
      sub_24F924E28();
      sub_24E60169C(v249, v341, &qword_27F227298);
      swift_storeEnumTagMultiPayload();
      sub_24EAC207C();
      sub_24EAC2164();
      sub_24F924E28();
      sub_24E601704(v249, &qword_27F227298);
      sub_24E60169C(v20, v350, &qword_27F2272C0);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v347;
      sub_24F924E28();
      sub_24E601704(v20, &qword_27F2272C0);
      v141 = v245;
LABEL_68:
      sub_24E601704(v141, v139);
      v106 = v352;
      v68 = v253;
      v84 = v252;
      goto LABEL_69;
    }

    v107 = v351;
    if (v97 != 2)
    {
      if (v97 == 3)
      {
        v122 = v98;
        v123 = v344;
        v124 = (v344 + 48);
        v253 = v68;
        v252 = v84;
        v251 = v51;
        if (v122)
        {
          v125 = v288;
          sub_24E60169C(v351 + v345[10], v288, &qword_27F213FB0);
          v126 = v343;
          if ((*v124)(v125, 1, v343) == 1)
          {
            sub_24E601704(v125, &qword_27F213FB0);
            v127 = v292;
            (*(v290 + 56))(v292, 1, 1, v291);
          }

          else
          {
            v142 = v344;
            v143 = v262;
            (*(v344 + 32))(v262, v125, v126);
            v144 = v261;
            sub_24F9289C8();
            LODWORD(v354) = *MEMORY[0x277CE0118];
            v145 = v264;
            v353 = *(v264 + 104);
            v146 = v263;
            v147 = v270;
            v353(v263);
            v148 = v265;
            sub_24F9219A8();
            (*(v145 + 8))(v146, v147);
            sub_24EAC26C8(&qword_27F214C28, MEMORY[0x277D21C48]);
            sub_24EAC26C8(&qword_27F214C30, MEMORY[0x277D7EBE8]);
            v149 = v269;
            v150 = v268;
            sub_24F925ED8();
            (*(v267 + 8))(v148, v150);
            v151 = *(v142 + 8);
            v151(v144, v126);
            v152 = sub_24F927618();
            v154 = v153;
            v151(v143, v126);
            v155 = v291;
            v156 = (v149 + *(v291 + 36));
            v157 = sub_24F924258();
            (v353)(v156 + *(v157 + 20), v354, v147);
            __asm { FMOV            V0.2D, #8.0 }

            *v156 = _Q0;
            v162 = (v355 + *(v311 + 128));
            v163 = *v162;
            v164 = v162[1];
            v165 = v162[2];
            v166 = v162[3];
            v167 = (v156 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36));
            *v167 = v166;
            v167[1] = v165;
            v167[2] = v163;
            v167[3] = v164;
            v168 = (v156 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36));
            *v168 = v152;
            v168[1] = v154;
            v127 = v292;
            sub_24E6009C8(v149, v292, &qword_27F214C20);
            (*(v290 + 56))(v127, 0, 1, v155);
          }

          v169 = v325;
          sub_24E60169C(v127, v308, &qword_27F2272D8);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
          sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &unk_24F97E250, sub_24E63CC18);
          v170 = v309;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F2272D8);
        }

        else
        {
          v354 = v86;
          v128 = v272;
          sub_24E60169C(v91 + *(v86 + 36), v272, &qword_27F213FB0);
          v129 = v343;
          if ((*v124)(v128, 1, v343) == 1)
          {
            sub_24E601704(v128, &qword_27F213FB0);
            v130 = type metadata accessor for PlayerAvatar.Overlay(0);
            v131 = v274;
            (*(*(v130 - 8) + 56))(v274, 1, 1, v130);
          }

          else
          {
            v171 = *(v123 + 32);
            v172 = v255;
            v171(v255, v128, v129);
            v173 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
            v174 = v274;
            v171(v274, v172, v129);
            v131 = v174;
            *&v174[v173] = 0xC024000000000000;
            v175 = type metadata accessor for PlayerAvatar.Overlay(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
          }

          v176 = v277;
          v177 = v276;
          v178 = v275;
          v179 = v293;
          v180 = v273;
          sub_24E6009C8(v131, v275, &qword_27F22DF80);
          sub_24E60169C(v91 + *(v354 + 44), v180, &qword_27F227328);
          v181 = v294;
          if ((*(v179 + 48))(v180, 1, v294) == 1)
          {
            sub_24E601704(v180, &qword_27F227328);
            v182 = 1;
            v169 = v325;
            v183 = v278;
          }

          else
          {
            v184 = v254;
            sub_24EAC2778(v180, v254, type metadata accessor for PlayerAvatar);
            v185 = v280;
            sub_24EAC2710(v184, v280, type metadata accessor for PlayerAvatar);
            sub_24EAC2650(v178, v185 + *(v181 + 20));
            LOBYTE(v357) = 7;
            v186 = v256;
            sub_24F8319B8(v185, &v357, v256);
            sub_24F927618();
            sub_24F9238C8();
            sub_24EAC27E0(v184, type metadata accessor for PlayerAvatar);
            v187 = (v186 + *(v176 + 36));
            v188 = v358;
            *v187 = v357;
            v187[1] = v188;
            v187[2] = v359;
            v183 = v278;
            sub_24E6009C8(v186, v278, &qword_27F2233D0);
            v182 = 0;
            v169 = v325;
          }

          (*(v177 + 56))(v183, v182, 1, v176);
          sub_24E60169C(v183, v308, &qword_27F2272E8);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
          sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &unk_24F97E250, sub_24E63CC18);
          v170 = v309;
          sub_24F924E28();
          sub_24E601704(v183, &qword_27F2272E8);
          sub_24E601704(v178, &qword_27F22DF80);
        }

        v139 = &qword_27F2272F0;
        sub_24E60169C(v170, v169, &qword_27F2272F0);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2360();
        sub_24EAC241C();
        v189 = v326;
        sub_24F924E28();
        sub_24E60169C(v189, v335, &qword_27F227310);
        swift_storeEnumTagMultiPayload();
        sub_24EAC22D4();
        sub_24EAC2500();
        v190 = v251;
        sub_24F924E28();
        sub_24E601704(v189, &qword_27F227310);
        sub_24E60169C(v190, v350, &qword_27F227318);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2248();
        sub_24EAC25BC();
        v102 = v347;
        sub_24F924E28();
        sub_24E601704(v190, &qword_27F227318);
        v141 = v170;
        goto LABEL_68;
      }

      if (v97 != 4)
      {
        goto LABEL_64;
      }

      v108 = (v351 + v345[11]);
      v109 = v108[1];
      v253 = v68;
      v252 = v84;
      if (v109)
      {
        v110 = *v108;
        v111 = v91 + *(v86 + 36);
        v112 = v289;
        sub_24E60169C(v111, v289, &qword_27F213FB0);
        v113 = v344;
        v114 = v343;
        if ((*(v344 + 48))(v112, 1, v343) != 1)
        {
          v115 = v51;
          v132 = v112;
          v133 = v114;
          v134 = *(v113 + 32);
          v135 = v260;
          v134(v260, v132, v133);
          v136 = v266;
          v134(v266, v135, v133);
          v137 = v302;
          v138 = (v136 + *(v302 + 20));
          *v138 = v110;
          v138[1] = v109;
          v116 = v304;
          sub_24EAC2778(v136, v304, type metadata accessor for HeroCardGameHeadingView);
          (*(v301 + 56))(v116, 0, 1, v137);

          goto LABEL_40;
        }

        sub_24E601704(v112, &qword_27F213FB0);
      }

      v115 = v51;
      v116 = v304;
      (*(v301 + 56))(v304, 1, 1, v302);
LABEL_40:
      v139 = &qword_27F219E50;
      sub_24E60169C(v116, v320, &qword_27F219E50);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
      v140 = v322;
      sub_24F924E28();
      sub_24E60169C(v140, v335, &qword_27F2272D0);
      swift_storeEnumTagMultiPayload();
      sub_24EAC22D4();
      sub_24EAC2500();
      sub_24F924E28();
      sub_24E601704(v140, &qword_27F2272D0);
      sub_24E60169C(v115, v350, &qword_27F227318);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v347;
      sub_24F924E28();
      sub_24E601704(v115, &qword_27F227318);
      v141 = v116;
      goto LABEL_68;
    }

    v119 = v86;
    v253 = v68;
    v252 = v84;
    if (v98 > 2u)
    {
      v120 = v295;
    }

    else
    {
      v120 = v295;
      if (v98 == 1)
      {

        goto LABEL_53;
      }
    }

    v191 = sub_24F92CE08();

    if ((v191 & 1) == 0)
    {
      v195 = v51;
      v196 = v300;
      v197 = v279;
      sub_24EAC2710(v107, v279 + *(v300 + 24), type metadata accessor for CommonCardAttributes);
      *v197 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
      swift_storeEnumTagMultiPayload();
      v198 = v197 + *(v196 + 20);
      type metadata accessor for CardSafeArea(0);
      sub_24EAC26C8(&qword_27F214D10, type metadata accessor for CardSafeArea);
      *v198 = sub_24F923598();
      v198[8] = v199 & 1;
      *(v197 + *(v196 + 28)) = v354;
      sub_24EAC2710(v197, v298, type metadata accessor for ActivityCardVisualView);
      swift_storeEnumTagMultiPayload();
      sub_24E81828C();
      sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
      v200 = v299;
      sub_24F924E28();
      sub_24EAC27E0(v197, type metadata accessor for ActivityCardVisualView);
LABEL_58:
      v139 = &qword_27F227330;
      sub_24E60169C(v200, v325, &qword_27F227330);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2360();
      sub_24EAC241C();
      v207 = v326;
      sub_24F924E28();
      sub_24E60169C(v207, v335, &qword_27F227310);
      swift_storeEnumTagMultiPayload();
      sub_24EAC22D4();
      sub_24EAC2500();
      sub_24F924E28();
      sub_24E601704(v207, &qword_27F227310);
      sub_24E60169C(v195, v350, &qword_27F227318);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v347;
      sub_24F924E28();
      sub_24E601704(v195, &qword_27F227318);
      v141 = v200;
      goto LABEL_68;
    }

LABEL_53:
    v192 = v282;
    sub_24E60169C(v91 + *(v119 + 44), v282, &qword_27F227328);
    if ((*(v293 + 48))(v192, 1, v294) == 1)
    {
      sub_24E601704(v192, &qword_27F227328);
      v193 = 1;
      v194 = v281;
    }

    else
    {
      v201 = v257;
      sub_24EAC2778(v192, v257, type metadata accessor for PlayerAvatar);
      v202 = v280;
      sub_24EAC2710(v201, v280, type metadata accessor for PlayerAvatar);
      v203 = v259;
      v204 = &v259[*(v120 + 20)];
      type metadata accessor for CardSafeArea(0);
      sub_24EAC26C8(&qword_27F214D10, type metadata accessor for CardSafeArea);
      *v204 = sub_24F923598();
      v204[8] = v205 & 1;
      v206 = v258;
      sub_24EAC2710(v202, v258, type metadata accessor for PlayerAvatar);
      LOBYTE(v357) = 7;
      sub_24F8319B8(v206, &v357, v203);
      sub_24EAC27E0(v202, type metadata accessor for PlayerAvatar);
      sub_24EAC27E0(v201, type metadata accessor for PlayerAvatar);
      v194 = v281;
      sub_24EAC2778(v203, v281, type metadata accessor for CardCompactAvatarView);
      v193 = 0;
    }

    v195 = v51;
    (*(v283 + 56))(v194, v193, 1, v120);
    sub_24E60169C(v194, v298, &qword_27F21EA10);
    swift_storeEnumTagMultiPayload();
    sub_24E81828C();
    sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
    v200 = v299;
    sub_24F924E28();
    sub_24E601704(v194, &qword_27F21EA10);
    goto LABEL_58;
  }

  sub_24E601704(v84, &qword_27F2190D8);
  sub_24EAC27E0(v355, type metadata accessor for CardLayoutMetrics);
  v105 = 1;
  v106 = v352;
  return (*(v68 + 56))(v356, v105, 1, v106);
}

uint64_t sub_24EAC009C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F9259C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_24F4E9558(a3, v14);
      v16 = 0;
LABEL_22:
      sub_24EAC2778(v14, a4, type metadata accessor for CardLayoutMetrics);
      *(a4 + v12[17]) = v16;
      v18 = v12[30];
      v19 = 26.0;
      goto LABEL_23;
    }

    if (a2 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v12, qword_27F39E610);
      sub_24EAC2710(v15, v14, type metadata accessor for CardLayoutMetrics);
      v16 = 0;
      goto LABEL_22;
    }

    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39E658;
    goto LABEL_20;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      sub_24F4E9E44(a3, v14);
LABEL_21:
      v16 = 1;
      goto LABEL_22;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39E628;
LABEL_20:
    v21 = __swift_project_value_buffer(v12, v20);
    sub_24EAC2710(v21, v14, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (qword_27F211300 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_27F39E640);
  sub_24EAC2710(v17, v14, type metadata accessor for CardLayoutMetrics);
  sub_24EAC2778(v14, a4, type metadata accessor for CardLayoutMetrics);
  *(a4 + v12[17]) = 1;
  v18 = v12[30];
  v19 = *(a4 + v18);
LABEL_23:
  *(a4 + v18) = v19;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v29 = xmmword_27F254460;
  v22 = qword_27F254470;
  v23 = qword_27F254478;
  v24 = a4 + v12[32];

  *v24 = v29;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  if (*(a1 + *(type metadata accessor for ActivityInviteCard() + 48)) == 1)
  {
    if (a2 == 3)
    {

      *(a4 + v12[13]) = 1;
      goto LABEL_33;
    }

    v25 = sub_24F92CE08();
  }

  else
  {
    v25 = 0;
  }

  *(a4 + v12[13]) = v25 & 1;
  if (((1 << a2) & 0x36) != 0)
  {
LABEL_34:
    v27 = v12[20];

    goto LABEL_35;
  }

  if (a2)
  {
LABEL_33:
    *(a4 + v12[16]) = 0x4024000000000000;
    goto LABEL_34;
  }

  sub_24F925898();
  sub_24F9258E8();

  (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v8);
  v26 = sub_24F9259F8();

  (*(v9 + 8))(v11, v8);
  v27 = v12[20];
LABEL_35:

  *(a4 + v27) = v26;
  return result;
}

uint64_t sub_24EAC0600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKVideo();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for ActivityInviteCard() + 32);
  v16 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v15 + *(v16 + 32), v10, &qword_27F213FB8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB8);
    sub_24E60169C(v15 + *(v16 + 28), v5, &qword_27F213FB0);
    v17 = v35;
    if ((*(v35 + 48))(v5, 1, v6) == 1)
    {
      sub_24E601704(v5, &qword_27F213FB0);
LABEL_14:
      v30 = type metadata accessor for ColorGroup();
      return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    }

    v24 = v34;
    (*(v17 + 32))(v34, v5, v6);
    v25 = sub_24F9289A8();
    if (!v25)
    {
      (*(v17 + 8))(v24, v6);
      goto LABEL_14;
    }

    v26 = qword_27F20FEE0;
    v27 = v25;
    if (v26 != -1)
    {
      v32 = v27;
      swift_once();
      v27 = v32;
    }

    v28 = v27;
    v29 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v29);

    return (*(v17 + 8))(v24, v6);
  }

  else
  {
    sub_24EAC2778(v10, v14, type metadata accessor for GSKVideo);
    v18 = sub_24F9289A8();
    if (!v18)
    {
      sub_24EAC27E0(v14, type metadata accessor for GSKVideo);
      goto LABEL_14;
    }

    v19 = qword_27F20FEE0;
    v20 = v18;
    if (v19 != -1)
    {
      v31 = v20;
      swift_once();
      v20 = v31;
    }

    v21 = v20;
    v22 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v22);

    return sub_24EAC27E0(v14, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24EAC0AC4@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24EAC2778(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24EAC27E0(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24EAC2778(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v31 = *(v30 + 48);
        sub_24EAC2778(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24EAC0F70@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v110 = a3;
  v112 = a2;
  v137 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v135);
  v136 = &v106 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8);
  MEMORY[0x28223BE20](v126);
  v129 = &v106 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98);
  MEMORY[0x28223BE20](v118);
  v120 = &v106 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20);
  MEMORY[0x28223BE20](v128);
  v127 = &v106 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  MEMORY[0x28223BE20](v132);
  v131 = &v106 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  MEMORY[0x28223BE20](v117);
  v124 = &v106 - v13;
  v138 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v138);
  v114 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v141 = &v106 - v16;
  v113 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v113);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v119 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A8);
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  v34 = type metadata accessor for ActivityInviteCard();
  v35 = (a1 + *(v34 + 40));
  v36 = v35[1];
  v37 = MEMORY[0x277CE13B8];
  v139 = v33;
  v140 = v18;
  if (v36)
  {
    v142 = *v35;
    v143 = v36;
    sub_24E600AEC();

    v38 = sub_24F925E18();
    v40 = v39;
    v42 = v41;
    v108 = v26;
    sub_24F925A08();
    v43 = sub_24F925C98();
    v107 = v25;
    v44 = v43;
    v46 = v45;
    v109 = a1;
    v48 = v47;
    v106 = v49;

    sub_24E600B40(v38, v40, v42 & 1);

    v142 = v44;
    v143 = v46;
    v50 = v48 & 1;
    a1 = v109;
    v144 = v50;
    v145 = v106;
    sub_24F9268B8();
    v37 = MEMORY[0x277CE13B8];
    v51 = v50;
    v52 = v139;
    sub_24E600B40(v44, v46, v51);

    LODWORD(v38) = sub_24F9251C8();
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)] = v38;
    v53 = v107;
    v54 = *(v107 + 36);
    v55 = *v37;
    v56 = sub_24F927748();
    v57 = &v28[v54];
    v18 = v140;
    (*(*(v56 - 8) + 104))(v57, v55, v56);
    sub_24E6009C8(v28, v52, &qword_27F21A1A8);
    (*(v108 + 56))(v52, 0, 1, v53);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v25);
  }

  sub_24EAC2710(a1 + *(v34 + 32), v18, type metadata accessor for CommonCardAttributes);
  if (v112 > 2u)
  {
    v58 = v141;
    v59 = v138;
    v60 = v114;
    if (v112 == 3)
    {
      sub_24F4E9558(v110, v114);
      goto LABEL_24;
    }

    if (v112 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E658;
    }

LABEL_23:
    v62 = __swift_project_value_buffer(v59, v61);
    sub_24EAC2710(v62, v60, type metadata accessor for CardLayoutMetrics);
    goto LABEL_24;
  }

  v58 = v141;
  v59 = v138;
  v60 = v114;
  if (!v112)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E640;
    goto LABEL_23;
  }

  if (v112 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E628;
    goto LABEL_23;
  }

  sub_24F4E9E44(v110, v114);
LABEL_24:
  sub_24EAC2778(v60, v58, type metadata accessor for CardLayoutMetrics);
  v63 = &v18[*(v113 + 52)];
  v64 = *(v63 + 1);
  if (!v64)
  {
    goto LABEL_29;
  }

  v65 = *v63;
  v66 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v66 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v142 = v65;
    v143 = v64;
    sub_24E600AEC();

    v67 = sub_24F925E18();
    v69 = v68;
    v71 = v70;
    v72 = sub_24F925C98();
    v74 = v73;
    v76 = v75;
    sub_24E600B40(v67, v69, v71 & 1);

    LODWORD(v142) = sub_24F9251C8();
    v77 = sub_24F925C58();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24E600B40(v72, v74, v76 & 1);

    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
    v85 = *v37;
    v86 = sub_24F927748();
    v87 = v111;
    (*(*(v86 - 8) + 104))(&v111[v84], v85, v86);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81 & 1;
    *(v87 + 24) = v83;
    v88 = *(v58 + *(v138 + 104));
    KeyPath = swift_getKeyPath();
    v90 = v116;
    v91 = v87 + *(v116 + 36);
    *v91 = KeyPath;
    *(v91 + 8) = v88;
    *(v91 + 16) = 0;
    v92 = v124;
    sub_24E6009C8(v87, v124, &qword_27F214B98);
    v93 = 0;
  }

  else
  {
LABEL_29:
    v93 = 1;
    v92 = v124;
    v90 = v116;
  }

  (*(v115 + 56))(v92, v93, 1, v90);
  sub_24E60169C(v92, v120, &qword_27F214B88);
  swift_storeEnumTagMultiPayload();
  sub_24EAC2884(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
  v94 = v122;
  sub_24F924E28();
  sub_24E60169C(v94, v129, &qword_27F214BB8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30);
  sub_24E63C434();
  sub_24E63C8B0();
  v95 = v127;
  sub_24F924E28();
  sub_24E601704(v94, &qword_27F214BB8);
  sub_24E60169C(v95, v134, &qword_27F214B20);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8);
  sub_24E63C3A8();
  sub_24E63C960();
  v96 = v131;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F214B20);
  sub_24E60169C(v96, v136, &qword_27F214B10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
  sub_24E63C31C();
  sub_24E63CD80();
  v97 = v119;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F214B10);
  sub_24E601704(v92, &qword_27F214B88);
  sub_24EAC27E0(v140, type metadata accessor for CommonCardAttributes);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
  (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
  v99 = v125;
  sub_24E6009C8(v97, v125, &qword_27F214A20);
  sub_24EAC27E0(v141, type metadata accessor for CardLayoutMetrics);
  v100 = v139;
  v101 = v121;
  sub_24E60169C(v139, v121, &qword_27F2273A8);
  v102 = v130;
  sub_24E60169C(v99, v130, &qword_27F214A20);
  v103 = v137;
  sub_24E60169C(v101, v137, &qword_27F2273A8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273B0);
  sub_24E60169C(v102, v103 + *(v104 + 48), &qword_27F214A20);
  sub_24E601704(v99, &qword_27F214A20);
  sub_24E601704(v100, &qword_27F2273A8);
  sub_24E601704(v102, &qword_27F214A20);
  return sub_24E601704(v101, &qword_27F2273A8);
}

uint64_t sub_24EAC1F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    if (a3 < 4u || a3 == 4)
    {
      v4 = sub_24F92CE08();

      return v4 & 1;
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return sub_24E92D030(a1, a2, a3);
  }
}

unint64_t sub_24EAC207C()
{
  result = qword_27F227340;
  if (!qword_27F227340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272B8);
    sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
    sub_24E602068(&qword_27F227348, &qword_27F2272A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227340);
  }

  return result;
}

unint64_t sub_24EAC2164()
{
  result = qword_27F227350;
  if (!qword_27F227350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227298);
    sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
    sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227350);
  }

  return result;
}

unint64_t sub_24EAC2248()
{
  result = qword_27F227358;
  if (!qword_27F227358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227318);
    sub_24EAC22D4();
    sub_24EAC2500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227358);
  }

  return result;
}

unint64_t sub_24EAC22D4()
{
  result = qword_27F227360;
  if (!qword_27F227360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227310);
    sub_24EAC2360();
    sub_24EAC241C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227360);
  }

  return result;
}

unint64_t sub_24EAC2360()
{
  result = qword_27F227368;
  if (!qword_27F227368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227330);
    sub_24E81828C();
    sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227368);
  }

  return result;
}

unint64_t sub_24EAC241C()
{
  result = qword_27F227378;
  if (!qword_27F227378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272F0);
    sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
    sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &unk_24F97E250, sub_24E63CC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227378);
  }

  return result;
}

unint64_t sub_24EAC2500()
{
  result = qword_27F227390;
  if (!qword_27F227390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272D0);
    sub_24E7179AC();
    sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227390);
  }

  return result;
}

unint64_t sub_24EAC25BC()
{
  result = qword_27F227398;
  if (!qword_27F227398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272C0);
    sub_24EAC207C();
    sub_24EAC2164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227398);
  }

  return result;
}

uint64_t sub_24EAC2650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC26C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAC2710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC2778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC27E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EAC2884(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAC2900()
{
  result = qword_27F2273C8;
  if (!qword_27F2273C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227338);
    sub_24EAC2248();
    sub_24EAC25BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273C8);
  }

  return result;
}

uint64_t ScreenshotsLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v27 = sub_24F9285B8();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_24F928388();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273D0);
  sub_24F928398();
  v29 = v4;
  v13 = *(v4 + 16);
  v14 = a2;
  v15 = a2;
  v16 = v27;
  v13(v8, v15, v27);
  sub_24EAC2CBC();
  sub_24F929548();
  v17 = v32;
  v18 = v25[1];
  swift_beginAccess();
  *(v18 + v12) = v17;
  v19 = v16;
  v20 = v25[0];

  v21 = v26;
  (*(v30 + 16))(v26, v20, v31);
  v22 = v28;
  v13(v28, v14, v19);
  v23 = Lockup.init(deserializing:using:)(v21, v22);
  (*(v29 + 8))(v14, v19);
  (*(v30 + 8))(v20, v31);
  return v23;
}

unint64_t sub_24EAC2CBC()
{
  result = qword_27F2273D8;
  if (!qword_27F2273D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2273D0);
    sub_24EAC2D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273D8);
  }

  return result;
}

unint64_t sub_24EAC2D40()
{
  result = qword_27F2273E0;
  if (!qword_27F2273E0)
  {
    type metadata accessor for Screenshots();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273E0);
  }

  return result;
}

uint64_t ScreenshotsLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v83 = a27;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v30 = sub_24F91F6B8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v59 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v61 = *a1;
  v60 = v38;
  v39 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v37 + v39) = a29;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_24E60169C(a28, v36, &qword_27F213E68);
  *(v37 + 424) = 4;
  sub_24E60169C(v93, &v90, &qword_27F235830);
  if (*(&v91 + 1))
  {
    v40 = v91;
    *(v37 + 448) = v90;
    *(v37 + 464) = v40;
    *(v37 + 480) = v92;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v31 + 8))(v33, v30);
    v88 = v41;
    v89 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830);
  }

  sub_24E60169C(v36, v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v44 = v60;
  *(v37 + 16) = v61;
  *(v37 + 24) = v44;
  v45 = v69;
  *(v37 + 32) = v68;
  *(v37 + 40) = v45;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v46 = v65;
  *(v37 + 64) = v64;
  *(v37 + 72) = v46;
  v47 = v76;
  *(v37 + 80) = v75;
  *(v37 + 88) = v47;
  v48 = v78;
  *(v37 + 96) = v77;
  *(v37 + 104) = v48;
  v49 = v63;
  *(v37 + 112) = v62;
  *(v37 + 120) = v49;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v50 = v67;
  *(v37 + 144) = v66;
  *(v37 + 152) = v50;
  v51 = v72;
  *(v37 + 192) = v70;
  *(v37 + 200) = v51;
  v52 = v74;
  *(v37 + 208) = v73;
  *(v37 + 216) = v52;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v83;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x277D84FA0];
  v53 = v82;
  *(v37 + 160) = v80;
  *(v37 + 168) = v53;
  v54 = v79;
  *(v37 + 176) = v84;
  *(v37 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v37 + 224) = v81;
  *(v37 + 232) = v56;
  *(v37 + 240) = v55;
  *(v37 + 248) = 0;
  v57 = v87;
  *(v37 + 256) = 0;
  *(v37 + 264) = v57;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68);
  sub_24E601704(v36, &qword_27F213E68);
  sub_24E601704(v93, &qword_27F235830);
  *(v37 + 344) = MEMORY[0x277D84F90];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t ScreenshotsLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v83 = a27;
  v87 = a26;
  v86 = a25;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_24F91F6B8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  v40 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v30 + v40) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_24E60169C(a28, v38, &qword_27F213E68);
  *(v30 + 424) = 4;
  sub_24E60169C(v96, &v90, &qword_27F235830);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v33 + 8))(v35, v32);
    v88 = v41;
    v89 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830);
  }

  v44 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v44;
  *(v30 + 480) = v95;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v45 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v45;
  v46 = v69;
  *(v30 + 32) = v68;
  *(v30 + 40) = v46;
  *(v30 + 48) = v71;
  *(v30 + 56) = 0;
  v47 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v47;
  v48 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v48;
  v49 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v49;
  v50 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v50;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v51 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v51;
  v52 = v72;
  *(v30 + 192) = v70;
  *(v30 + 200) = v52;
  v53 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v53;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  v54 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v54;
  v55 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v55;
  v56 = v85;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v86;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68);
  sub_24E601704(v38, &qword_27F213E68);
  sub_24E601704(v96, &qword_27F235830);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t sub_24EAC37C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EAC3870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ScreenshotsLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t ScreenshotsLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EAC3A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ScreenshotsLockup()
{
  result = qword_27F2273E8;
  if (!qword_27F2273E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC3CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EAC3D44@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24EAC3DA4(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x746E65636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EAC3DE8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAC3E60()
{
  sub_24F92B218();
}

uint64_t sub_24EAC3EC4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EAC3FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 1701667182;
  if (!*v2)
  {
    v5 = 0x746E65636572;
  }

  v6 = 0xE600000000000000;
  if (*v2)
  {
    v6 = 0xE400000000000000;
  }

  v10 = v5;
  v11 = v6;
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v10, v11}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_24EAC40C0()
{
  swift_getKeyPath();
  sub_24EAC45B0();
  sub_24F91FD88();

  return *(v0 + 24);
}

uint64_t sub_24EAC4130(char a1)
{
  if (*(v1 + 24))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (*(v1 + 24))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a1)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24EAC45B0();
      sub_24F91FD78();
    }
  }

  *(v1 + 24) = a1 & 1;
  return sub_24F9280C8();
}

uint64_t sub_24EAC429C()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit28FriendsPlayingOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FriendsPlayingOptionProvider()
{
  result = qword_27F227400;
  if (!qword_27F227400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC4394()
{
  result = sub_24F91FDC8();
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

unint64_t sub_24EAC4450()
{
  result = qword_27F227410;
  if (!qword_27F227410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227410);
  }

  return result;
}

unint64_t sub_24EAC44A8()
{
  result = qword_27F227418;
  if (!qword_27F227418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227418);
  }

  return result;
}

unint64_t sub_24EAC450C()
{
  result = qword_27F227428;
  if (!qword_27F227428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227428);
  }

  return result;
}

unint64_t sub_24EAC45B0()
{
  result = qword_27F227430;
  if (!qword_27F227430)
  {
    type metadata accessor for FriendsPlayingOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227430);
  }

  return result;
}

unint64_t sub_24EAC4620()
{
  result = qword_27F227438;
  if (!qword_27F227438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227438);
  }

  return result;
}

uint64_t sub_24EAC4674(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = qword_24F97E760[v2];
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v4)
      {
        result = sub_24F92C738();
        v4 = result;
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        goto LABEL_28;
      }

      v9 = 0;
      v10 = v3 + 32;
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v9 % v4 < v11)
      {
        v3 = *(v10 + 8 * (v9 % v4));

        MEMORY[0x253050F00](v12);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        ++v9;
        v2 = &v13;
        sub_24F92B638();
        if (v6 == v9)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_24:
      result = sub_24F92C738();
      if (!result)
      {
        goto LABEL_25;
      }
    }

    if (v4)
    {
      result = sub_24F92C738();
      v7 = result;
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      MEMORY[0x253052270](v8 % v7, v3);
      MEMORY[0x253050F00]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      ++v8;
      sub_24F92B638();
    }

    while (v6 != v8);
    return v13;
  }

  else
  {
LABEL_25:
  }

  return v3;
}

uint64_t sub_24EAC4868(uint64_t a1)
{
  if (a1 <= 4)
  {
    v1 = 0x302010004uLL >> (8 * a1);
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 1)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

unint64_t sub_24EAC48AC()
{
  result = qword_27F227440;
  if (!qword_27F227440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227440);
  }

  return result;
}

BOOL CornerStyle.apply(withRadius:to:)(void *a1, double a2)
{
  v5 = *v2;
  v6 = sel__setCornerRadius_;
  if (v5)
  {
    v6 = sel__setContinuousCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setContinuousCornerRadius_];
  }

  else
  {
    [a1 v6];
  }

  v7 = sel__setContinuousCornerRadius_;
  if (v5)
  {
    v7 = sel__setCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setCornerRadius_];
  }

  else
  {
    [a1 v7];
  }

  v9 = [a1 layer];
  [v9 setAllowsEdgeAntialiasing_];

  return a2 >= COERCE_DOUBLE(1);
}

uint64_t sub_24EAC4A6C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsMediaPreview();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_24EAC4C04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsMediaPreview();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_24EAC4DA8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24EAC4F64(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24EAC4F64(319, &qword_27F227460, type metadata accessor for GameDetailsMediaItem, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GameDetailsMediaPreview();
          if (v4 <= 0x3F)
          {
            sub_24EAC4F64(319, &qword_27F227468, type metadata accessor for GameDetailsSummaryCard, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EAC4F1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EAC4F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EAC4FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - v4;
  v33 = type metadata accessor for GameDetailsMediaPreview();
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227488);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v39 = v15 + 40;
  sub_24E61DA68(&v42, (v15 + 40), qword_27F21B590);
  v38 = v13;
  v16 = *(v13 + 24);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v40 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24EAC7570();
  v36 = v12;
  v20 = v37;
  sub_24F92D108();
  if (v20)
  {
    v21 = v39;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v22 = v40;
    sub_24E601704(v21, qword_27F24EC90);
    return sub_24E601704(&v15[v22], &qword_27F213E68);
  }

  else
  {
    v37 = v9;
    v30 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v45 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v43;
    *v15 = v42;
    *(v15 + 1) = v24;
    *(v15 + 4) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v45 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v25 = v38;
    sub_24E61DA68(&v42, v39, qword_27F24EC90);
    LOBYTE(v42) = 2;
    sub_24EAC4F1C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v26 = v37;
    sub_24F92CC18();
    v27 = v34;
    sub_24E61DA68(v26, &v15[v40], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498);
    v45 = 3;
    sub_24EAC7624();
    sub_24F92CC68();
    *&v15[v25[7]] = v42;
    LOBYTE(v42) = 4;
    sub_24EAC4F1C(&qword_27F2274B0, type metadata accessor for GameDetailsMediaPreview);
    v28 = v30;
    sub_24F92CC68();
    sub_24EAC76D8(v28, &v15[v25[8]], type metadata accessor for GameDetailsMediaPreview);
    type metadata accessor for GameDetailsSummaryCard();
    LOBYTE(v42) = 5;
    sub_24EAC4F1C(&qword_27F2274B8, type metadata accessor for GameDetailsSummaryCard);
    v29 = v32;
    sub_24F92CC18();
    (*(v27 + 8))(v36, v35);
    sub_24EAC7740(v29, &v15[v25[9]]);
    sub_24EAC7508(v15, v31, type metadata accessor for GameDetailsMediaPreviewCard);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24EAC75C4(v15, type metadata accessor for GameDetailsMediaPreviewCard);
  }
}

uint64_t sub_24EAC5740()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x657449616964656DLL;
  v4 = 0x657250616964656DLL;
  if (v1 != 4)
  {
    v4 = 0x7972616D6D7573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EAC57FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EAC7B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EAC5824(uint64_t a1)
{
  v2 = sub_24EAC7570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAC5860(uint64_t a1)
{
  v2 = sub_24EAC7570();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EAC5904()
{
  result = qword_27F227470;
  if (!qword_27F227470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227470);
  }

  return result;
}

uint64_t sub_24EAC5958(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24F924848();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameDetailsMediaItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for GameDetailsMediaPreviewCard(0) + 28));
  if (!*(v17 + 16) || (sub_24EAC7508(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v16, type metadata accessor for GameDetailsMediaItem), _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0(), sub_24EAC75C4(v16, type metadata accessor for GameDetailsMediaItem), sub_24F9222C8(), v19 = v18, sub_24F922338(), v21 = v20, (*(v10 + 8))(v12, v9), v19 >= v21))
  {
    if (a3)
    {
      v23 = *&a2;
    }

    else
    {

      sub_24F92BDC8();
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(a2, 0);
      (*(v30 + 8))(v8, v31);
      v23 = v32;
    }

    v25 = sub_24E6B00B4(v23);
    if (v25 > 6u)
    {
      return 3;
    }

    v26 = &unk_24F97EE00;
    return v26[v25];
  }

  if (a3)
  {
    v22 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v30 + 8))(v8, v31);
    v22 = v32;
  }

  v25 = sub_24E6B00B4(v22);
  if (v25 < 7u)
  {
    v26 = &unk_24F97EDC8;
    return v26[v25];
  }

  return 5;
}

uint64_t sub_24EAC5D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAC7508(a1, v14, type metadata accessor for GameDetailsMediaPreviewCard);
  if (a3)
  {
    v15 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v9 + 8))(v11, v8);
    v15 = v23;
  }

  v17 = sub_24E6B00B4(v15) < 4u;
  v18 = sub_24EAC5958(a1, a2, a3 & 1);
  v22[1] = 0;
  sub_24F926F28();
  v19 = v24;
  *a4 = v23;
  a4[1] = v19;
  v20 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  result = sub_24EAC76D8(v14, a4 + v20[5], type metadata accessor for GameDetailsMediaPreviewCard);
  *(a4 + v20[6]) = v17;
  *(a4 + v20[7]) = v18;
  return result;
}

uint64_t sub_24EAC5F7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2274F0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2274F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227500);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (*(v0 + *(type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0) + 24)))
  {
    *v3 = sub_24F924C88();
    *(v3 + 1) = 0x4034000000000000;
    v3[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227508);
    sub_24EAC6944(v0, &v3[*(v10 + 44)]);
    sub_24E60169C(v3, v6, &qword_27F2274F0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F227510, &qword_27F227500);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0);
    sub_24F924E28();
    v11 = v3;
    v12 = &qword_27F2274F0;
  }

  else
  {
    *v9 = sub_24F9249A8();
    *(v9 + 1) = 0x4028000000000000;
    v9[16] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227520);
    sub_24EAC62AC(v0, &v9[*(v13 + 44)]);
    sub_24E60169C(v9, v6, &qword_27F227500);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F227510, &qword_27F227500);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0);
    sub_24F924E28();
    v11 = v9;
    v12 = &qword_27F227500;
  }

  return sub_24E601704(v11, v12);
}

uint64_t sub_24EAC62AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227528);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v49 = type metadata accessor for GameDetailsSummaryCard();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227530);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v45 - v14;
  v15 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227538);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v51 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  v25 = a1 + *(v16 + 28);
  v26 = *(a1 + *(v16 + 36));
  sub_24EAC7508(v25, &v45 - v23, type metadata accessor for GameDetailsMediaPreviewCard);
  *&v24[*(type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0) + 20)] = v26;
  v47 = a1;
  sub_24EAC7508(a1, &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = swift_allocObject();
  sub_24EAC76D8(&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard);
  v29 = &v24[*(v20 + 44)];
  *v29 = sub_24E7BC238;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_24EAC81F8;
  *(v29 + 3) = v28;
  v30 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  sub_24E60169C(v25 + *(v30 + 36), v8, &qword_27F227448);
  if ((*(v9 + 48))(v8, 1, v49) == 1)
  {
    sub_24E601704(v8, &qword_27F227448);
    v31 = 1;
    v32 = v53;
    v33 = v50;
  }

  else
  {
    v34 = v46;
    sub_24EAC76D8(v8, v46, type metadata accessor for GameDetailsSummaryCard);
    *&v56 = 0;
    BYTE8(v56) = 1;
    *&v57 = 0x7FF0000000000000;
    BYTE8(v57) = 0;
    sub_24EAC8268();
    v35 = v48;
    sub_24F921D38();
    v36 = v47[1];
    *&v56 = *v47;
    *(&v56 + 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    sub_24F927618();
    sub_24F9238C8();
    sub_24EAC75C4(v34, type metadata accessor for GameDetailsSummaryCard);
    v37 = v53;
    v38 = (v35 + *(v53 + 36));
    v39 = v57;
    *v38 = v56;
    v38[1] = v39;
    v38[2] = v58;
    v33 = v50;
    sub_24EAC82BC(v35, v50);
    v31 = 0;
    v32 = v37;
  }

  (*(v54 + 56))(v33, v31, 1, v32);
  v40 = v51;
  sub_24E60169C(v24, v51, &qword_27F227538);
  v41 = v52;
  sub_24E60169C(v33, v52, &qword_27F227530);
  v42 = v55;
  sub_24E60169C(v40, v55, &qword_27F227538);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227540);
  sub_24E60169C(v41, v42 + *(v43 + 48), &qword_27F227530);
  sub_24E601704(v33, &qword_27F227530);
  sub_24E601704(v24, &qword_27F227538);
  sub_24E601704(v41, &qword_27F227530);
  return sub_24E601704(v40, &qword_27F227538);
}

uint64_t sub_24EAC6944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227550);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for GameDetailsSummaryCard();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227558);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  v25 = a1 + *(v24 + 20);
  v26 = *(a1 + *(v24 + 28));
  sub_24EAC7508(v25, v23, type metadata accessor for GameDetailsMediaPreviewCard);
  *&v23[*(v18 + 28)] = v26;
  v27 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  sub_24E60169C(v25 + *(v27 + 36), v7, &qword_27F227448);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F227448);
    v28 = 1;
    v30 = v42;
    v29 = v43;
  }

  else
  {
    v31 = v40;
    sub_24EAC76D8(v7, v40, type metadata accessor for GameDetailsSummaryCard);
    v45 = 4;
    v46 = 0;
    v47 = 0;
    v48 = 1;
    sub_24EAC8268();
    v32 = v41;
    sub_24F921D38();
    sub_24EAC75C4(v31, type metadata accessor for GameDetailsSummaryCard);
    v33 = v42;
    v34 = v32;
    v35 = v43;
    (*(v42 + 32))(v16, v34, v43);
    v28 = 0;
    v29 = v35;
    v30 = v33;
  }

  (*(v30 + 56))(v16, v28, 1, v29);
  sub_24EAC7508(v23, v20, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  sub_24E60169C(v16, v13, &qword_27F227558);
  v36 = v44;
  sub_24EAC7508(v20, v44, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227560);
  sub_24E60169C(v13, v36 + *(v37 + 48), &qword_27F227558);
  sub_24E601704(v16, &qword_27F227558);
  sub_24EAC75C4(v23, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  sub_24E601704(v13, &qword_27F227558);
  return sub_24EAC75C4(v20, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
}

uint64_t sub_24EAC6E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227598);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v31 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v10 = *(a1 + *(v31 + 28));
  v11 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0);
  v13 = sub_24E6B7C8C(*(a1 + *(v11 + 20)), v10);
  v15 = v14;
  v17 = v16;
  if ((v16 & 1) == 0)
  {
    v18 = v12;

    v19 = v18;
LABEL_3:
    sub_24E6B8B3C(v13, v19, v15, v17);
    v21 = v20;
    v22 = v32;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v30 = v12;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(v17 >> 1, v15))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v24 != (v17 >> 1) - v15)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v19 = v30;
    goto LABEL_3;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v22 = v32;
  if (!v21)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  v34 = 0;
  sub_24E62A190();
  sub_24F921D38();

  v25 = *(v4 + 16);
  v25(v6, v9, v3);
  *v22 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275A0);
  v25(v22 + *(v26 + 48), v6, v3);
  v27 = *(v4 + 8);

  v27(v9, v3);
  v27(v6, v3);
}

double sub_24EAC70CC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227588);
  sub_24EAC6E00(v1, (a1 + *(v3 + 44)));
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227590) + 36);
  v5 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v6 = type metadata accessor for GradientBackground(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  result = 26.0;
  *(v4 + 16) = xmmword_24F93CFD0;
  *(v4 + 32) = 0x4030000000000000;
  *(v4 + 40) = 256;
  return result;
}

uint64_t sub_24EAC7218@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275C0);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275C8);
  sub_24E602068(&qword_27F2275D0, &qword_27F227498);
  sub_24E6207C4();
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EAC7380()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24EAC5904();
  return sub_24F9218E8();
}

unint64_t sub_24EAC742C()
{
  result = qword_27F227480;
  if (!qword_27F227480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227480);
  }

  return result;
}

uint64_t sub_24EAC7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EAC7570()
{
  result = qword_27F227490;
  if (!qword_27F227490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227490);
  }

  return result;
}

uint64_t sub_24EAC75C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAC7624()
{
  result = qword_27F2274A0;
  if (!qword_27F2274A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227498);
    sub_24EAC4F1C(&qword_27F2274A8, type metadata accessor for GameDetailsMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274A0);
  }

  return result;
}

uint64_t sub_24EAC76D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC7740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC77D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for GameDetailsMediaPreviewCard(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EAC78A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for GameDetailsMediaPreviewCard(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAC7944()
{
  sub_24EAC79E0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameDetailsMediaPreviewCard(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EAC79E0()
{
  if (!qword_27F236310)
  {
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F236310);
    }
  }
}

unint64_t sub_24EAC7A98()
{
  result = qword_27F2274D8;
  if (!qword_27F2274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274D8);
  }

  return result;
}

unint64_t sub_24EAC7AF0()
{
  result = qword_27F2274E0;
  if (!qword_27F2274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274E0);
  }

  return result;
}

unint64_t sub_24EAC7B48()
{
  result = qword_27F2274E8;
  if (!qword_27F2274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274E8);
  }

  return result;
}

uint64_t sub_24EAC7B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657449616964656DLL && a2 == 0xEA0000000000736DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657250616964656DLL && a2 == 0xEC00000077656976 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24EAC7DC0()
{
  v1 = (type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0) - 8);
  v22 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v2 = v0 + v22 + v1[7];
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v4 = v3[6];
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v2 + v3[8];
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (*(v8 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v8 + 40);
  }

  v9 = *(type metadata accessor for GameDetailsMediaPreview() + 24);
  if (!v7(v8 + v9, 1, v5))
  {
    (*(v6 + 8))(v8 + v9, v5);
  }

  v10 = v2 + v3[9];
  v11 = type metadata accessor for GameDetailsSummaryCard();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (*(v10 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 40);
    }

    v12 = v11[6];
    if (!v7(v10 + v12, 1, v5))
    {
      (*(v6 + 8))(v10 + v12, v5);
    }

    v13 = v10 + v11[7];
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (*(v13 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 40);
    }

    v14 = *(type metadata accessor for GameDetailsSummary() + 24);
    if (!v7(v13 + v14, 1, v5))
    {
      (*(v6 + 8))(v13 + v14, v5);
    }

    v15 = v10 + v11[8];
    v16 = type metadata accessor for GameDetailsDeveloper();
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      if (*(v15 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1(v15 + 40);
      }

      v17 = *(v16 + 24);
      if (!v7(v15 + v17, 1, v5))
      {
        (*(v6 + 8))(v15 + v17, v5);
      }

      v18 = *(v16 + 32);
      v19 = sub_24F9289E8();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v15 + v18, 1, v19))
      {
        (*(v20 + 8))(v15 + v18, v19);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24EAC81F8()
{
  type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);

  return sub_24EAC68E8();
}

unint64_t sub_24EAC8268()
{
  result = qword_27F227548;
  if (!qword_27F227548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227548);
  }

  return result;
}

uint64_t sub_24EAC82BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC8340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EAC83C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EAC8430()
{
  result = type metadata accessor for GameDetailsMediaPreviewCard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EAC84A8()
{
  result = qword_27F227578;
  if (!qword_27F227578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227580);
    sub_24E602068(&qword_27F227510, &qword_27F227500);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227578);
  }

  return result;
}

unint64_t sub_24EAC85CC()
{
  result = qword_27F2275A8;
  if (!qword_27F2275A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227590);
    sub_24E602068(&qword_27F2275B0, &qword_27F2275B8);
    sub_24EAC4F1C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2275A8);
  }

  return result;
}

double sub_24EAC86D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24EAC876C(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #1.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x4000000000000000;
  *(v2 + 416) = xmmword_24F97EE40;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4008000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F97EE50;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4010000000000000;
  *(v2 + 736) = xmmword_24F97EE60;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x4014000000000000;
  *(v2 + 896) = xmmword_24F97EE70;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4018000000000000;
  *(v2 + 1056) = xmmword_24F97EE80;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x401C000000000000;
  *(v2 + 1216) = xmmword_24F97EE90;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

char *SearchSegmentChangeAction.__allocating_init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *SearchSegmentChangeAction.init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t SearchSegmentChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x6553746567726174;
    v25 = v27;
    v24[1] = 0xEF6449746E656D67;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t SearchSegmentChangeAction.targetSegmentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);

  return v1;
}

uint64_t SearchSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t SearchSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchSegmentChangeAction()
{
  result = qword_27F2275E8;
  if (!qword_27F2275E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC9888(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SmallBrickAccessoryType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_24EAC9A94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SmallBrickAccessoryType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_24EAC9C8C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SmallBrickAccessoryType(319);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E7CA640();
          if (v4 <= 0x3F)
          {
            sub_24EAC9E40(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
            if (v5 <= 0x3F)
            {
              sub_24EAC9E40(319, &qword_27F21C940, type metadata accessor for GradientBackground);
              if (v6 <= 0x3F)
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

uint64_t sub_24EAC9DF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EAC9E40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EAC9E94()
{
  sub_24EAC9F1C();
  if (v0 <= 0x3F)
  {
    sub_24EAC9FA8();
    if (v1 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24EAC9F1C()
{
  if (!qword_27F227620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227628);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F227620);
    }
  }
}

void sub_24EAC9FA8()
{
  if (!qword_27F21F908)
  {
    v0 = sub_24F9289E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F908);
    }
  }
}

uint64_t sub_24EAC9FF0()
{
  result = qword_27F227630;
  if (!qword_27F227630)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F227630);
  }

  return result;
}

uint64_t sub_24EACA020(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227730);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EACFC50();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for SmallBrick(0);
    v8[13] = 2;
    type metadata accessor for SmallBrickAccessoryType(0);
    sub_24EAC9DF8(&qword_27F227738, type metadata accessor for SmallBrickAccessoryType);
    sub_24F92CD48();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CCB8();
    v8[9] = 6;
    sub_24F929608();
    sub_24EAC9DF8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[8] = 7;
    type metadata accessor for GradientBackground(0);
    sub_24EAC9DF8(&qword_27F227740, type metadata accessor for GradientBackground);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EACA440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v44 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v51);
  v49 = v44 - v7;
  v50 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v50);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227718);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v14 = type metadata accessor for SmallBrick(0);
  MEMORY[0x28223BE20](v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 28)];
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v57 = v18;
  sub_24E61DA68(&v61, v18, qword_27F21B590);
  v19 = v14[8];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v56 = v19;
  v21(&v16[v19], 1, 1, v20);
  v22 = v14[10];
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v58 = v22;
  v24(&v16[v22], 1, 1, v23);
  v25 = v14[11];
  v26 = type metadata accessor for GradientBackground(0);
  v27 = *(*(v26 - 8) + 56);
  v59 = v25;
  v27(&v16[v25], 1, 1, v26);
  v28 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24EACFC50();
  v54 = v13;
  v29 = v55;
  sub_24F92D108();
  if (v29)
  {
    v31 = v56;
    v30 = v57;
    __swift_destroy_boxed_opaque_existential_1(v60);
    v32 = v58;
    sub_24E601704(v30, qword_27F24EC90);
    sub_24E601704(&v16[v31], &qword_27F215440);
    sub_24E601704(&v16[v32], &qword_27F213E68);
    return sub_24E601704(&v16[v59], &qword_27F21C920);
  }

  else
  {
    v45 = v9;
    v44[1] = v23;
    v44[0] = v26;
    v55 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v64 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v33 = v62;
    *v16 = v61;
    *(v16 + 1) = v33;
    *(v16 + 4) = v63;
    LOBYTE(v61) = 1;
    v34 = sub_24F92CC28();
    v36 = v56;
    v35 = v57;
    *(v16 + 5) = v34;
    *(v16 + 6) = v37;
    LOBYTE(v61) = 2;
    sub_24EAC9DF8(&qword_27F227728, type metadata accessor for SmallBrickAccessoryType);
    v38 = v45;
    sub_24F92CC68();
    v39 = v58;
    sub_24EACFCA4(v38, &v16[v55[6]], type metadata accessor for SmallBrickAccessoryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v64 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    v50 = 0;
    sub_24F92CC68();
    sub_24E61DA68(&v61, v35, qword_27F24EC90);
    LOBYTE(v61) = 4;
    sub_24E65CAA0();
    v40 = v49;
    sub_24F92CC68();
    sub_24E61DA68(v40, &v16[v36], &qword_27F215440);
    LOBYTE(v61) = 5;
    v16[v55[9]] = sub_24F92CBD8();
    LOBYTE(v61) = 6;
    sub_24EAC9DF8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v41 = v48;
    sub_24F92CC18();
    sub_24E61DA68(v41, &v16[v39], &qword_27F213E68);
    LOBYTE(v61) = 7;
    sub_24EAC9DF8(&qword_27F21CAC0, type metadata accessor for GradientBackground);
    v42 = v47;
    sub_24F92CC18();
    (*(v53 + 8))(v54, v52);
    sub_24E61DA68(v42, &v16[v59], &qword_27F21C920);
    sub_24EACFD0C(v16, v46, type metadata accessor for SmallBrick);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_24EACFD74(v16, type metadata accessor for SmallBrick);
  }
}

unint64_t sub_24EACADB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x4D747865746E6F63;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x726F737365636361;
    if (v1 != 2)
    {
      v3 = 0x6575676573;
    }

    if (*v0)
    {
      v2 = 0x656C746974;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24EACAEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EAD07C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EACAED4(uint64_t a1)
{
  v2 = sub_24EACFC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACAF10(uint64_t a1)
{
  v2 = sub_24EACFC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACAF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24EACB03C()
{
  result = sub_24F925A28();
  qword_27F2275F8 = result;
  return result;
}

uint64_t sub_24EACB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227650);
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227658);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9 - 8];
  *v6 = sub_24F9275F8();
  v6[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227660);
  sub_24EACB320(a1, v6 + *(v12 + 44));
  v13 = v6 + *(v4 + 36);
  *v13 = 0x3FFC71C71C71C71CLL;
  *(v13 + 4) = 0;
  v14 = type metadata accessor for SmallBrick(0);
  sub_24E60169C(a1 + *(v14 + 28), v21, qword_27F24EC90);
  sub_24E601704(v21, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v15 = sub_24F9248C8();
  __swift_project_value_buffer(v15, qword_27F39F078);
  sub_24EACF798();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v6, &qword_27F227650);
  v16 = *(v14 + 44);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227680) + 36);
  v18 = type metadata accessor for ComponentBackgroundModifier(0);
  sub_24E60169C(a1 + v16, v17 + *(v18 + 40), &qword_27F21C920);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0x402C000000000000;
  *(v17 + 40) = 0;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24EACB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227688);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227690) - 8;
  MEMORY[0x28223BE20](v56);
  v53 = &v51 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227698) - 8;
  MEMORY[0x28223BE20](v57);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v11;
  v12 = type metadata accessor for SmallBrickAccessoryView(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276A0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276A8);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v52 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  v29 = type metadata accessor for SmallBrick(0);
  sub_24EACFD0C(a1 + *(v29 + 24), v15, type metadata accessor for SmallBrickAccessoryType);
  *&v15[*(v13 + 28)] = 0x404F000000000000;
  sub_24F9275B8();
  sub_24F9242E8();
  sub_24EACFCA4(v15, v19, type metadata accessor for SmallBrickAccessoryView);
  v30 = &v19[*(v17 + 44)];
  v31 = v65;
  *(v30 + 4) = v64;
  *(v30 + 5) = v31;
  *(v30 + 6) = v66;
  v32 = v61;
  *v30 = v60;
  *(v30 + 1) = v32;
  v33 = v63;
  *(v30 + 2) = v62;
  *(v30 + 3) = v33;
  sub_24F9275B8();
  sub_24F9238C8();
  sub_24E6009C8(v19, v25, &qword_27F2276A0);
  v34 = &v25[*(v21 + 44)];
  v35 = v68;
  *v34 = v67;
  *(v34 + 1) = v35;
  *(v34 + 2) = v69;
  sub_24E6009C8(v25, v28, &qword_27F2276A8);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276B0);
  sub_24EACB944(a1, &v5[*(v36 + 44)]);
  sub_24F9275C8();
  sub_24F9242E8();
  v37 = v53;
  sub_24E6009C8(v5, v53, &qword_27F227688);
  v38 = (v37 + *(v56 + 44));
  v39 = v75;
  v38[4] = v74;
  v38[5] = v39;
  v38[6] = v76;
  v40 = v71;
  *v38 = v70;
  v38[1] = v40;
  v41 = v73;
  v38[2] = v72;
  v38[3] = v41;
  LOBYTE(v5) = sub_24F925808();
  v42 = v37;
  v43 = v54;
  sub_24E6009C8(v42, v54, &qword_27F227690);
  v44 = v43 + *(v57 + 44);
  *v44 = v5;
  *(v44 + 8) = xmmword_24F97EEF0;
  *(v44 + 24) = xmmword_24F958350;
  *(v44 + 40) = 0;
  v45 = v55;
  sub_24E6009C8(v43, v55, &qword_27F227698);
  v46 = v52;
  sub_24E60169C(v28, v52, &qword_27F2276A8);
  v47 = v58;
  sub_24E60169C(v45, v58, &qword_27F227698);
  v48 = v59;
  sub_24E60169C(v46, v59, &qword_27F2276A8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276B8);
  sub_24E60169C(v47, v48 + *(v49 + 48), &qword_27F227698);
  sub_24E601704(v45, &qword_27F227698);
  sub_24E601704(v28, &qword_27F2276A8);
  sub_24E601704(v47, &qword_27F227698);
  return sub_24E601704(v46, &qword_27F2276A8);
}

uint64_t sub_24EACB944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v67 = sub_24F9297D8();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F929888();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276C0);
  MEMORY[0x28223BE20](v71);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C08);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v62 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276C8);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = *(a1 + *(type metadata accessor for SmallBrick(0) + 36));
  if (v18 == 2 || (v18 & 1) == 0)
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  else
  {
    v68 = sub_24F927618();
    v63 = v19;
    v20 = sub_24F9251C8();
    v21 = v12 + *(v9 + 36);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    *v21 = v20;
    v25 = v68;
    *v12 = 0x4022000000000000;
    v12[1] = v25;
    v12[2] = v63;
    sub_24E6009C8(v12, v17, &qword_27F221C08);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  v68 = v17;
  v26 = *(a1 + 48);
  *&v84 = *(a1 + 40);
  *(&v84 + 1) = v26;
  sub_24E600AEC();

  v27 = sub_24F925E18();
  v29 = v28;
  v31 = v30;
  if (qword_27F210158 != -1)
  {
    swift_once();
  }

  v32 = sub_24F925C98();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_24E600B40(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v41 = v36 & 1;
  LOBYTE(v78) = v36 & 1;
  v42 = swift_getKeyPath();
  LOBYTE(v84) = 0;
  v43 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *&v78 = v32;
  *(&v78 + 1) = v34;
  LOBYTE(v79) = v41;
  *(&v79 + 1) = v38;
  *&v80 = KeyPath;
  BYTE8(v80) = 1;
  *&v81 = v40;
  BYTE8(v81) = 0;
  *&v82 = v42;
  *(&v82 + 1) = 2;
  LOBYTE(v83) = 0;
  *(&v83 + 1) = v43;
  v45 = v64;
  v44 = v65;
  v46 = v67;
  (*(v65 + 104))(v64, *MEMORY[0x277D22050], v67);
  memset(v77, 0, 32);
  v76[3] = MEMORY[0x277D84030];
  v47 = swift_allocObject();
  v76[0] = v47;
  sub_24E60169C(a1, &v84, &qword_27F213F18);
  v48 = v85;
  *(v47 + 16) = v84;
  *(v47 + 32) = v48;
  *(v47 + 48) = v86;
  v49 = v66;
  sub_24F929818();
  sub_24E601704(v77, &qword_27F2129B0);
  (*(v44 + 8))(v45, v46);
  sub_24E601704(v76, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276D0);
  sub_24EACF970();
  v50 = v73;
  sub_24F925EE8();
  (*(v69 + 8))(v49, v70);
  v86 = v80;
  v87 = v81;
  v88 = v82;
  v89 = v83;
  v84 = v78;
  v85 = v79;
  sub_24E601704(&v84, &qword_27F2276D0);
  LOBYTE(v47) = sub_24F925858();
  sub_24F923318();
  v51 = v72;
  v52 = v50 + *(v71 + 36);
  *v52 = v47;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v68;
  sub_24E60169C(v68, v51, &qword_27F2276C8);
  v58 = v74;
  sub_24E60169C(v50, v74, &qword_27F2276C0);
  v59 = v75;
  sub_24E60169C(v51, v75, &qword_27F2276C8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227710);
  sub_24E60169C(v58, v59 + *(v60 + 48), &qword_27F2276C0);
  sub_24E601704(v50, &qword_27F2276C0);
  sub_24E601704(v57, &qword_27F2276C8);
  sub_24E601704(v58, &qword_27F2276C0);
  return sub_24E601704(v51, &qword_27F2276C8);
}

uint64_t sub_24EACC090(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227790);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227798);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = sub_24F9289E8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2277A0);
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v35 - v10;
  v12 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2277A8);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EACFDD4();
  sub_24F92D128();
  sub_24EACFD0C(v45, v14, type metadata accessor for SmallBrickAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v36;
      v19 = v37;
      (*(v36 + 32))(v9, v14, v37);
      LOBYTE(v49) = 1;
      sub_24EACFE7C();
      v21 = v48;
      sub_24F92CC98();
      sub_24EAC9DF8(&qword_27F214060, MEMORY[0x277D21C48]);
      v22 = v41;
      sub_24F92CD48();
      (*(v40 + 8))(v6, v22);
      (*(v20 + 8))(v9, v19);
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_24EACFE28();
      v31 = v38;
      v21 = v48;
      sub_24F92CC98();
      v32 = v43;
      sub_24F92CD08();

      (*(v42 + 8))(v31, v32);
    }

    return (*(v47 + 8))(v17, v21);
  }

  else
  {
    v24 = *v14;
    v23 = v14[1];
    v25 = v14[2];
    v26 = v14[3];
    v27 = v14[5];
    v42 = v14[4];
    v43 = v27;
    v45 = v14[6];
    LOBYTE(v49) = 0;
    sub_24EACFED0();
    v28 = v48;
    sub_24F92CC98();
    v49 = v24;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
    sub_24EACFF24(&qword_27F2277B0, &qword_27F214060);
    v29 = v46;
    sub_24F92CD48();
    if (v29)
    {
      sub_24E6E8664(v23, v25, v26, v42);
      (*(v39 + 8))(v11, v44);
      (*(v47 + 8))(v17, v28);
    }

    else
    {

      v38 = v23;
      v49 = v23;
      v50 = v25;
      v40 = v25;
      v41 = v26;
      v33 = v42;
      v51 = v26;
      v52 = v42;
      v53 = v43;
      v54 = v45;
      v55 = 1;
      sub_24E6E8610();
      v34 = v44;
      sub_24F92CCF8();
      (*(v39 + 8))(v11, v34);
      (*(v47 + 8))(v17, v28);
      return sub_24E6E8664(v38, v40, v41, v33);
    }
  }
}

uint64_t sub_24EACC764@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227748);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v55 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227750);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v66 = &v55 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227758);
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227760);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24EACFDD4();
  v22 = v70;
  sub_24F92D108();
  if (!v22)
  {
    v56 = v11;
    v70 = v14;
    v55 = v17;
    v24 = v65;
    v23 = v66;
    v57 = v20;
    v25 = v67;
    v26 = v69;
    v27 = sub_24F92CC78();
    v28 = (2 * *(v27 + 16)) | 1;
    v76 = v27;
    v77 = v27 + 32;
    v78 = 0;
    v79 = v28;
    v29 = sub_24E643434();
    if (v29 == 3 || v78 != v79 >> 1)
    {
      v34 = v8;
      v35 = v26;
      v36 = sub_24F92C918();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v38 = v9;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v68 + 8))(v34, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v30 = v9;
          LOBYTE(v73) = 1;
          sub_24EACFE7C();
          sub_24F92CBA8();
          v31 = v68;
          v65 = v30;
          sub_24F9289E8();
          sub_24EAC9DF8(&qword_27F214018, MEMORY[0x277D21C48]);
          v32 = v70;
          v33 = v60;
          sub_24F92CC68();
          (*(v59 + 8))(v23, v33);
          (*(v31 + 8))(v8, v26);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v32;
        }

        else
        {
          LOBYTE(v73) = 2;
          sub_24EACFE28();
          v40 = v64;
          sub_24F92CBA8();
          v41 = v68;
          v42 = v62;
          v43 = sub_24F92CC28();
          v44 = v40;
          v49 = v48;
          v50 = v43;
          (*(v61 + 8))(v44, v42);
          (*(v41 + 8))(v8, v26);
          swift_unknownObjectRelease();
          v51 = v56;
          *v56 = v50;
          v51[1] = v49;
          swift_storeEnumTagMultiPayload();
          v46 = v51;
        }
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_24EACFED0();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
        LOBYTE(v73) = 0;
        sub_24EACFF24(&qword_27F227788, &qword_27F214018);
        v45 = v58;
        sub_24F92CC68();
        v47 = v80;
        v72 = 1;
        sub_24E6E8474();
        sub_24F92CC18();
        (*(v63 + 8))(v24, v45);
        (*(v68 + 8))(v8, v69);
        swift_unknownObjectRelease();
        v52 = v55;
        *v55 = v47;
        v53 = v74;
        *(v52 + 1) = v73;
        *(v52 + 3) = v53;
        *(v52 + 5) = v75;
        swift_storeEnumTagMultiPayload();
        v46 = v52;
      }

      v54 = v57;
      sub_24EACFCA4(v46, v57, type metadata accessor for SmallBrickAccessoryType);
      sub_24EACFCA4(v54, v25, type metadata accessor for SmallBrickAccessoryType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_24EACD0B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  v6 = sub_24F924258();
  *(a1 + 64) = v6;
  *(a1 + 72) = sub_24EAC9DF8(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  (*(v3 + 16))(boxed_opaque_existential_1 + *(v6 + 20), v5, v2);
  __asm { FMOV            V0.2D, #14.0 }

  *boxed_opaque_existential_1 = _Q0;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EACD230()
{
  sub_24EACD72C();

  return sub_24F9218E8();
}

uint64_t sub_24EACD274()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6349656D6167;
  }
}

uint64_t sub_24EACD2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EAD0A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EACD2FC(uint64_t a1)
{
  v2 = sub_24EACFDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD338(uint64_t a1)
{
  v2 = sub_24EACFDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD374(uint64_t a1)
{
  v2 = sub_24EACFE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD3B0(uint64_t a1)
{
  v2 = sub_24EACFE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD3EC()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24EACD42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EACD510(uint64_t a1)
{
  v2 = sub_24EACFED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD54C(uint64_t a1)
{
  v2 = sub_24EACFED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EACD634(uint64_t a1)
{
  v2 = sub_24EACFE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD670(uint64_t a1)
{
  v2 = sub_24EACFE28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EACD72C()
{
  result = qword_27F227638;
  if (!qword_27F227638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227638);
  }

  return result;
}

unint64_t sub_24EACD7CC()
{
  result = qword_27F227648;
  if (!qword_27F227648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227648);
  }

  return result;
}

uint64_t sub_24EACD884@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227848);
  MEMORY[0x28223BE20](v141);
  v131 = &v112 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v4 - 8);
  v130 = &v112 - v5;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227850);
  MEMORY[0x28223BE20](v140);
  v144 = &v112 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227858);
  MEMORY[0x28223BE20](v136);
  v137 = &v112 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227860);
  MEMORY[0x28223BE20](v142);
  v138 = &v112 - v8;
  v124 = sub_24F929888();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v119 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v132 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](*(&v132 + 1));
  v129 = &v112 - v10;
  *&v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227868);
  MEMORY[0x28223BE20](v132);
  v128 = &v112 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227870);
  v120 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v118 = &v112 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227878);
  v122 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v112 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227880);
  MEMORY[0x28223BE20](v125);
  v15 = &v112 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227888);
  MEMORY[0x28223BE20](v16);
  v18 = &v112 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227890);
  v117 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v112 - v20;
  v134 = sub_24F9289E8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = &v112 - v25;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227898);
  MEMORY[0x28223BE20](v135);
  v27 = &v112 - v26;
  v28 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EACFD0C(v2, v30, type metadata accessor for SmallBrickAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v133;
      v33 = v134;
      (*(v133 + 32))();
      type metadata accessor for SmallBrickAccessoryView(0);
      sub_24F9289C8();
      sub_24EAC9DF8(&qword_27F214C28, MEMORY[0x277D21C48]);
      sub_24EAD0B88();
      v34 = v131;
      sub_24F925ED8();
      v35 = *(v32 + 8);
      v35(v23, v33);
      v36 = sub_24F925808();
      sub_24F923318();
      v37 = v34 + *(v141 + 36);
      *v37 = v36;
      *(v37 + 8) = v38;
      *(v37 + 16) = v39;
      *(v37 + 24) = v40;
      *(v37 + 32) = v41;
      *(v37 + 40) = 0;
      sub_24E60169C(v34, v144, &qword_27F227848);
      swift_storeEnumTagMultiPayload();
      sub_24EAD0BDC();
      sub_24EAD10D4();
      sub_24F924E28();
      sub_24E601704(v34, &qword_27F227848);
      return (v35)(v139, v33);
    }

    sub_24F926E48();
    v82 = v138;
    v83 = v130;
    sub_24F924CF8();
    v84 = sub_24F924D08();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    v85 = sub_24F926E58();

    sub_24E601704(v83, &qword_27F214410);
    v86 = sub_24F925988();
    KeyPath = swift_getKeyPath();
    sub_24F927638();
    sub_24F9238C8();
    *&v147 = v85;
    *(&v147 + 1) = KeyPath;
    *&v148 = v86;
    v88 = v150;
    v89 = v137;
    *(v137 + 32) = v149;
    *(v89 + 48) = v88;
    *(v89 + 64) = v151;
    v90 = v148;
    *v89 = v147;
    *(v89 + 16) = v90;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v147, &v145, &qword_27F2128C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8);
    sub_24EAD0C68();
    sub_24EAD1048();
    sub_24F924E28();
    sub_24E60169C(v82, v144, &qword_27F227860);
    swift_storeEnumTagMultiPayload();
    sub_24EAD0BDC();
    sub_24EAD10D4();
    sub_24F924E28();
    sub_24E601704(&v147, &qword_27F2128C8);
    v91 = v82;
    v92 = &qword_27F227860;
    return sub_24E601704(v91, v92);
  }

  v113 = v18;
  v114 = v21;
  v43 = v128;
  v44 = v129;
  v115 = v16;
  v130 = v19;
  v116 = v15;
  v131 = v27;
  v45 = *v30;
  v46 = v30[4];
  if (v46)
  {
    v47 = v30[5];
    v48 = v30[6];
    v49 = v30[2];
    v50 = v30[3];
    v51 = v30[1];

    sub_24E6E8664(v51, v49, v50, v46);
    if (v48)
    {

      sub_24F8188E0(v47, v48);

      sub_24F3E5448(MEMORY[0x277D84F90]);
      v52 = v139;
      sub_24F928948();
      sub_24F927618();
      sub_24F9238C8();
      v53 = v113;
      (*(v133 + 16))(v113, v52, v134);
      v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8) + 36));
      v55 = v148;
      *v54 = v147;
      v54[1] = v55;
      v54[2] = v149;
      v56 = sub_24F925838();
      sub_24F923318();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC0) + 36);
      *v65 = v56;
      *(v65 + 8) = v58;
      *(v65 + 16) = v60;
      *(v65 + 24) = v62;
      *(v65 + 32) = v64;
      *(v65 + 40) = 0;
      v66 = sub_24F925818();
      sub_24F923318();
      v67 = v115;
      v68 = v53 + *(v115 + 36);
      *v68 = v66;
      *(v68 + 8) = v69;
      *(v68 + 16) = v70;
      *(v68 + 24) = v71;
      *(v68 + 32) = v72;
      *(v68 + 40) = 0;
      v73 = sub_24EAD0E24();
      v74 = sub_24EAD0F3C();
      v75 = v114;
      sub_24F925ED8();
      sub_24E601704(v53, &qword_27F227888);
      v76 = v117;
      v77 = v130;
      (*(v117 + 16))(v116, v75, v130);
      swift_storeEnumTagMultiPayload();
      *&v145 = v67;
      *(&v145 + 1) = &type metadata for SmallBrickMediaArtworkStyle;
      *&v146 = v73;
      *(&v146 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v78 = sub_24EAD0F90();
      v79 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      v145 = v132;
      *&v146 = v78;
      *(&v146 + 1) = v79;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v145 = v126;
      *(&v145 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v81 = v131;
      sub_24F924E28();
      (*(v76 + 8))(v75, v77);
      (*(v133 + 8))(v139, v134);
LABEL_10:
      sub_24E60169C(v81, v137, &qword_27F227898);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8);
      sub_24EAD0C68();
      sub_24EAD1048();
      v111 = v138;
      sub_24F924E28();
      sub_24E60169C(v111, v144, &qword_27F227860);
      swift_storeEnumTagMultiPayload();
      sub_24EAD0BDC();
      sub_24EAD10D4();
      sub_24F924E28();
      sub_24E601704(v111, &qword_27F227860);
      v91 = v81;
      v92 = &qword_27F227898;
      return sub_24E601704(v91, v92);
    }
  }

  v93 = v43;
  *v43 = sub_24F9249A8();
  *(v43 + 1) = 0xC024000000000000;
  v43[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F0);
  sub_24EACEC20(v45);

  v94 = sub_24F925808();
  v95 = v132;
  v96 = v93 + *(v132 + 36);
  *v96 = v94;
  *(v96 + 8) = 0x4028000000000000;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  *(v96 + 32) = 0x402C000000000000;
  *(v96 + 40) = 0;
  v97 = *MEMORY[0x277CDFA10];
  v98 = sub_24F923E98();
  (*(*(v98 - 8) + 104))(v44, v97, v98);
  sub_24EAC9DF8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  v99 = *(&v132 + 1);
  if (result)
  {
    v100 = sub_24EAD0F90();
    v101 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v102 = v118;
    sub_24F9263F8();
    sub_24E601704(v44, &qword_27F21CCC8);
    sub_24E601704(v93, &qword_27F227868);
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    v145 = 0u;
    v103 = v119;
    sub_24F929828();
    sub_24E601704(&v145, &qword_27F2129B0);
    sub_24E601704(&v147, &qword_27F2129B0);
    *&v147 = v95;
    *(&v147 + 1) = v99;
    *&v148 = v100;
    *(&v148 + 1) = v101;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = v121;
    v106 = v126;
    sub_24F925EE8();
    (*(v123 + 8))(v103, v124);
    (*(v120 + 8))(v102, v106);
    v107 = v122;
    v108 = v127;
    (*(v122 + 16))(v116, v105, v127);
    swift_storeEnumTagMultiPayload();
    v109 = sub_24EAD0E24();
    v110 = sub_24EAD0F3C();
    *&v147 = v115;
    *(&v147 + 1) = &type metadata for SmallBrickMediaArtworkStyle;
    *&v148 = v109;
    *(&v148 + 1) = v110;
    swift_getOpaqueTypeConformance2();
    *&v147 = v106;
    *(&v147 + 1) = v104;
    swift_getOpaqueTypeConformance2();
    v81 = v131;
    sub_24F924E28();
    (*(v107 + 8))(v105, v108);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EACEC20(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F8);
  sub_24E62A6CC();
  sub_24EAD1224();
  return sub_24F927228();
}

uint64_t sub_24EACED20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *a1;
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 >= *(a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = sub_24F9289E8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11);
  v3 = 1;
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = type metadata accessor for GameIcon(0);
  v14 = v13[8];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v9[v13[5]] = 1;
  v9[v13[6]] = 1;
  v9[v13[7]] = 0;
  if (qword_27F211968 != -1)
  {
LABEL_7:
    swift_once();
  }

  v15 = xmmword_27F254460;
  v16 = qword_27F254470;
  v17 = qword_27F254478;
  v18 = sub_24F927618();
  v20 = v19;
  LOBYTE(v29) = v3;
  *(&v29 + 1) = 0;
  *&v30 = 0;
  *(&v30 + 1) = v17;
  *v31 = v16;
  *&v31[8] = v15;
  *&v31[24] = v18;
  v32 = v19;
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598) + 36)];
  v22 = *&v31[16];
  *(v21 + 2) = *v31;
  *(v21 + 3) = v22;
  *(v21 + 8) = v32;
  v23 = v30;
  *v21 = v29;
  *(v21 + 1) = v23;
  v33[0] = v3;
  v34 = 0;
  v35 = 0;
  v36 = v17;
  v37 = v16;
  v38 = v15;
  v39 = v18;
  v40 = v20;

  sub_24E60169C(&v29, v28, &qword_27F2195A8);
  sub_24E601704(v33, &qword_27F2195A8);
  sub_24F927618();
  sub_24F9238C8();
  v24 = &v9[*(v7 + 36)];
  v25 = v28[1];
  *v24 = v28[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v28[2];
  sub_24EACF088(v10, v9, a3);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F8) + 36)) = -v10;
  return sub_24E601704(v9, &qword_27F219588);
}

uint64_t sub_24EACF088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227950);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227958);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227960);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227930);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227940);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  if (a1 == 1)
  {
    sub_24F9278A8();
    v26 = v25;
    v28 = v27;
    sub_24E60169C(v32, v6, &qword_27F219588);
    v29 = &v6[*(v15 + 36)];
    *v29 = 0x3FC657184AE74487;
    *(v29 + 1) = v26;
    *(v29 + 2) = v28;
    *&v6[*(v4 + 36)] = xmmword_24F97EF00;
    sub_24E60169C(v6, v11, &qword_27F227950);
    swift_storeEnumTagMultiPayload();
    sub_24EAD1478();
    sub_24EAD1504();
    sub_24F924E28();
    sub_24E60169C(v14, v8, &qword_27F227930);
    swift_storeEnumTagMultiPayload();
    sub_24EAD13EC();
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F227930);
    v23 = v6;
    v24 = &qword_27F227950;
    return sub_24E601704(v23, v24);
  }

  if (!a1)
  {
    sub_24F9278A8();
    v19 = v18;
    v21 = v20;
    sub_24E60169C(v32, v17, &qword_27F219588);
    v22 = &v17[*(v15 + 36)];
    *v22 = 0xBFC657184AE74487;
    *(v22 + 1) = v19;
    *(v22 + 2) = v21;
    sub_24E60169C(v17, v11, &qword_27F227940);
    swift_storeEnumTagMultiPayload();
    sub_24EAD1478();
    sub_24EAD1504();
    sub_24F924E28();
    sub_24E60169C(v14, v8, &qword_27F227930);
    swift_storeEnumTagMultiPayload();
    sub_24EAD13EC();
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F227930);
    v23 = v17;
    v24 = &qword_27F227940;
    return sub_24E601704(v23, v24);
  }

  swift_storeEnumTagMultiPayload();
  sub_24EAD13EC();
  return sub_24F924E28();
}

uint64_t sub_24EACF51C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F921C08();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v7 = sub_24F926E88();

    result = (*(v3 + 8))(v5, v2);
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_24EACF658@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F921C08();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v7 = sub_24F926E88();

    result = (*(v3 + 8))(v5, v2);
    v8 = 16777217;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return result;
}

unint64_t sub_24EACF798()
{
  result = qword_27F227668;
  if (!qword_27F227668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227650);
    sub_24E602068(&qword_27F227670, &qword_27F227678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227668);
  }

  return result;
}

uint64_t sub_24EACF878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9245E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EACF8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9245E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EACF938()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24EACF970()
{
  result = qword_27F2276D8;
  if (!qword_27F2276D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276D0);
    sub_24EACFA28();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276D8);
  }

  return result;
}

unint64_t sub_24EACFA28()
{
  result = qword_27F2276E0;
  if (!qword_27F2276E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276E8);
    sub_24EACFAE0();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276E0);
  }

  return result;
}

unint64_t sub_24EACFAE0()
{
  result = qword_27F2276F0;
  if (!qword_27F2276F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276F8);
    sub_24EACFB98();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276F0);
  }

  return result;
}

unint64_t sub_24EACFB98()
{
  result = qword_27F227700;
  if (!qword_27F227700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227708);
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227700);
  }

  return result;
}

unint64_t sub_24EACFC50()
{
  result = qword_27F227720;
  if (!qword_27F227720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227720);
  }

  return result;
}

uint64_t sub_24EACFCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EACFD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EACFD74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EACFDD4()
{
  result = qword_27F227768;
  if (!qword_27F227768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227768);
  }

  return result;
}

unint64_t sub_24EACFE28()
{
  result = qword_27F227770;
  if (!qword_27F227770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227770);
  }

  return result;
}

unint64_t sub_24EACFE7C()
{
  result = qword_27F227778;
  if (!qword_27F227778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227778);
  }

  return result;
}