uint64_t sub_24F07B0B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F07B0FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OverlaySocialPageIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverlaySocialPageIntent() + 20));

  return v1;
}

uint64_t type metadata accessor for OverlaySocialPageIntent()
{
  result = qword_27F238390;
  if (!qword_27F238390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlaySocialPageIntent.commonOnboardingStatus.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for OverlaySocialPageIntent();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t OverlaySocialPageIntent.init(_:for:commonOnboardingStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  sub_24E6364A0(a3, a5);
  v10 = type metadata accessor for OverlaySocialPageIntent();
  v11 = (a5 + v10[5]);
  *v11 = a1;
  v11[1] = a2;
  v14 = &_s14descr2861AC041O5GamesON;
  v15 = sub_24EDA569C();
  v13[0] = 0;
  LOBYTE(a2) = sub_24F91FE68();
  sub_24E637048(a3);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *(a5 + v10[6]) = a2 & 1;
  *(a5 + v10[7]) = v9;
  return result;
}

unint64_t OverlaySocialPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v6 = type metadata accessor for OverlaySocialPageIntent();
  v7 = (v2 + v6[5]);
  v9 = *v7;
  v8 = v7[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v10 = sub_24E605DB4();
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA46670;
  v11 = *(v2 + v6[6]);
  v12 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v12;
  *(inited + 160) = v11;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000024FA55B30;
  v13 = *(v2 + v6[7]);
  *(inited + 240) = &type metadata for CommonOnboardingStatus;
  *(inited + 248) = sub_24EBB9898();
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

unint64_t sub_24F07B5BC()
{
  v1 = 0x726579616C70;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_24F07B638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F07C164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F07B660(uint64_t a1)
{
  v2 = sub_24F07BCD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F07B69C(uint64_t a1)
{
  v2 = sub_24F07BCD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlaySocialPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07BCD4();
  sub_24F92D128();
  v15 = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for OverlaySocialPageIntent();
    v14 = 1;
    sub_24F92CCA8();
    v13 = 2;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_24EBB9844();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t OverlaySocialPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238388);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for OverlaySocialPageIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07BCD4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v19;
  type metadata accessor for Player(0);
  v25 = 0;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC18();
  sub_24E6365D4(v6, v12);
  v24 = 1;
  v14 = sub_24F92CBC8();
  v15 = &v12[v10[5]];
  *v15 = v14;
  v15[1] = v16;
  v23 = 2;
  v12[v10[6]] = sub_24F92CC38() & 1;
  v22 = 3;
  sub_24EBB96D8();
  sub_24F92CC68();
  (*(v13 + 8))(v9, v20);
  *&v12[v10[7]] = v21;
  sub_24F07BD28(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F07BD8C(v12);
}

unint64_t sub_24F07BCD4()
{
  result = qword_27F238380;
  if (!qword_27F238380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238380);
  }

  return result;
}

uint64_t sub_24F07BD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlaySocialPageIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F07BD8C(uint64_t a1)
{
  v2 = type metadata accessor for OverlaySocialPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F07BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F07BEE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F07BFB0()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F07C060()
{
  result = qword_27F2383A0;
  if (!qword_27F2383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383A0);
  }

  return result;
}

unint64_t sub_24F07C0B8()
{
  result = qword_27F2383A8;
  if (!qword_27F2383A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383A8);
  }

  return result;
}

unint64_t sub_24F07C110()
{
  result = qword_27F2383B0;
  if (!qword_27F2383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383B0);
  }

  return result;
}

uint64_t sub_24F07C164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
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

id static AppleSilicon.makeEnableAlmondFeatureFlag()()
{
  v0 = sub_24F92B098();
  v1 = sub_24F92B098();
  v2 = [objc_opt_self() flagForFeature:v0 domain:v1];

  return v2;
}

id sub_24F07C3A0()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  result = swift_beginAccess();
  if (*(v0 + v5) == 1)
  {
    v7 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    [*(v0 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lock];
    v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isRosettaAvailableBox);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v11[2] = v9;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v10 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v10);
    v11[-4] = sub_24F07C930;
    v11[-3] = 0;
    v11[-2] = v8;
    sub_24F92BF08();
    (*(v2 + 8))(v4, v1);

    return [*(v0 + v7) unlockWithCondition_];
  }

  return result;
}

uint64_t AppleSilicon.isSupportEnabled.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AppleSilicon.isSupportEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AppleSilicon.isRosettaAvailable.getter()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  sub_24F92BF18();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock) lockWhenCondition_];
    MEMORY[0x28223BE20](v4);

    sub_24F92BF18();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

id AppleSilicon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleSilicon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24F07CA54@<X0>(void *(*a1)(uint64_t *__return_ptr, char *)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  result = a1(&v8, &v7);
  *a3 = v8;
  return result;
}

uint64_t WidgetKind.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_24F07CBC0()
{
  result = qword_27F2383D8;
  if (!qword_27F2383D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383D8);
  }

  return result;
}

uint64_t sub_24F07CC14()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F07CC88()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F07CCDC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t ProductCapability.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *ProductCapability.artworkTintColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t ProductCapability.__allocating_init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *(v19 + 72) = v38;
    *(v19 + 88) = v20;
    *(v19 + 104) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v14 = v31;
    a6 = v32;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v38);
  }

  sub_24E9BBAA8(a1);
  v28 = v34;
  *(v19 + 32) = v33;
  *(v19 + 40) = v28;
  *(v19 + 112) = a6;
  v29 = v35;
  *(v19 + 16) = a7;
  *(v19 + 24) = v29;
  *(v19 + 48) = a5;
  *(v19 + 56) = a8;
  *(v19 + 64) = v14;
  return v19;
}

uint64_t ProductCapability.init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v40);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v33 = a9;
    v34 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v16 = v33;
    a6 = v34;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v40);
  }

  sub_24E9BBAA8(a1);
  v28 = v44;
  *(v10 + 72) = v43;
  *(v10 + 88) = v28;
  v29 = v45;
  v30 = v36;
  *(v10 + 32) = v35;
  *(v10 + 40) = v30;
  *(v10 + 104) = v29;
  *(v10 + 112) = a6;
  v31 = v37;
  *(v10 + 16) = a7;
  *(v10 + 24) = v31;
  *(v10 + 48) = a5;
  *(v10 + 56) = a8;
  *(v10 + 64) = v16;
  return v10;
}

uint64_t ProductCapability.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F9285B8();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v8 + 8);
  v63 = v8 + 8;
  v64 = v7;
  v62 = v19;
  v19(v15, v7);
  v60 = v18;
  v61 = v4;
  if (!v18)
  {
    v29 = v65;
    v22 = v72;
    v20 = 0x656C746974;
    v30 = 0xE500000000000000;
LABEL_7:
    v31 = sub_24F92AC38();
    sub_24F07DAD8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v32 = v20;
    v32[1] = v30;
    v32[2] = v59;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v61 + 8))(v22, v29);
    v62(a1, v64);
    return v29;
  }

  v53 = v16;
  v20 = 0x6E6F6974706163;
  type metadata accessor for LinkableText();
  sub_24F928398();
  v21 = a1;
  v22 = v72;
  v23 = v65;
  v58 = *(v4 + 16);
  v58(v6, v72, v65);
  sub_24F07DAD8(&qword_27F21C360, 255, type metadata accessor for LinkableText);
  sub_24F929548();
  if (!v71[0])
  {
    v29 = v23;

    v30 = 0xE700000000000000;
    a1 = v21;
    goto LABEL_7;
  }

  v59 = v71[0];
  type metadata accessor for Artwork();
  sub_24F928398();
  v58(v6, v22, v23);
  sub_24F07DAD8(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v52 = v71[0];
  sub_24F928398();
  v58(v6, v22, v23);
  sub_24F929548();
  v58 = v71[0];
  sub_24F928398();
  v51 = JSONObject.appStoreColor.getter();
  v24 = v64;
  v25 = v62;
  v62(v12, v64);
  v26 = v57;
  sub_24F928398();
  v27 = sub_24F928348();
  if (v28)
  {
    *&v68 = v27;
    *(&v68 + 1) = v28;
  }

  else
  {
    v33 = v54;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v55 + 8))(v33, v56);
    *&v68 = v34;
    *(&v68 + 1) = v36;
  }

  sub_24F92C7F8();
  v25(v26, v24);
  type metadata accessor for Action();
  sub_24F928398();
  v37 = v72;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v72);
  v25(v12, v24);
  v38 = v21;
  sub_24F928398();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v37);
  v25(v12, v24);
  type metadata accessor for ProductCapability();
  v29 = swift_allocObject();
  sub_24E65E064(v71, &v68);
  v40 = v65;
  if (*(&v69 + 1))
  {
    v41 = v69;
    *(v29 + 72) = v68;
    *(v29 + 88) = v41;
    *(v29 + 104) = v70;
  }

  else
  {
    v42 = v54;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v55 + 8))(v42, v56);
    v66 = v43;
    v67 = v45;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v68);
  }

  (*(v61 + 8))(v37, v40);
  v62(v38, v64);
  sub_24E9BBAA8(v71);
  v46 = v59;
  *(v29 + 32) = v60;
  *(v29 + 40) = v46;
  *(v29 + 112) = v57;
  v47 = v53;
  *(v29 + 16) = v39;
  *(v29 + 24) = v47;
  v48 = v58;
  *(v29 + 48) = v52;
  *(v29 + 56) = v48;
  *(v29 + 64) = v51;
  return v29;
}

uint64_t sub_24F07D9C4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v1;
}

uint64_t ProductCapability.deinit()
{

  sub_24E6585F8(v0 + 72);

  return v0;
}

uint64_t ProductCapability.__deallocating_deinit()
{
  ProductCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F07DAD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24F07DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductCapability.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F07DB78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v3;
}

uint64_t type metadata accessor for AchievementsByGameShelfConstructionIntent()
{
  result = qword_27F238420;
  if (!qword_27F238420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AchievementsByGameShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AchievementsByGameShelfConstructionIntent() + 24));

  return v1;
}

uint64_t AchievementsByGameShelfConstructionIntent.sortOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AchievementsByGameShelfConstructionIntent.platformFilterOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

unint64_t AchievementsByGameShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x73656D6167;
  v4 = 0xE500000000000000;
  *(inited + 40) = 0xE500000000000000;
  v5 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v6 = sub_24F07EA58(&qword_27F219830, &qword_27F217960);
  *(inited + 48) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F07EC44(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x444965676170;
  *(inited + 152) = 0xE600000000000000;
  v10 = (v1 + v7[6]);
  v11 = MEMORY[0x277D837D0];
  v12 = *v10;
  v13 = v10[1];
  v14 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v14;
  *(inited + 160) = v12;
  *(inited + 168) = v13;
  *(inited + 200) = 0x6974704F74726F73;
  *(inited + 208) = 0xEA00000000006E6FLL;
  v15 = 1701667182;
  if (!*(v1 + v7[7]))
  {
    v15 = 0x796C746E65636572;
  }

  v16 = 0xEE00646579616C50;
  if (*(v1 + v7[7]))
  {
    v16 = 0xE400000000000000;
  }

  *(inited + 240) = v11;
  *(inited + 248) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000024FA6A4F0;
  v17 = *(v1 + v7[8]);
  if (v17 <= 1)
  {
    v4 = 0xE300000000000000;
    if (*(v1 + v7[8]))
    {
      v18 = 5459817;
    }

    else
    {
      v18 = 7105633;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0x534F63616DLL;
  }

  else if (v17 == 3)
  {
    v4 = 0xE400000000000000;
    v18 = 1397716596;
  }

  else
  {
    v4 = 0xE800000000000000;
    v18 = 0x534F6E6F69736976;
  }

  *(inited + 296) = v11;
  *(inited + 304) = v14;
  *(inited + 272) = v18;
  *(inited + 280) = v4;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F07E0DC()
{
  v1 = *v0;
  v2 = 0x73656D6167;
  v3 = 0x444965676170;
  v4 = 0x6974704F74726F73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
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

uint64_t sub_24F07E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F07F03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F07E19C(uint64_t a1)
{
  v2 = sub_24F07EA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F07E1D8(uint64_t a1)
{
  v2 = sub_24F07EA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsByGameShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07EA04();
  sub_24F92D128();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  sub_24F07EA58(&qword_27F219848, &qword_27F214950);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for AchievementsByGameShelfConstructionIntent();
    v11[6] = 1;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v11[5] = 2;
    sub_24F92CD08();
    v11[4] = *(v3 + *(v9 + 28));
    v11[3] = 3;
    sub_24F07EAF4();
    sub_24F92CD48();
    v11[2] = *(v3 + *(v9 + 32));
    v11[1] = 4;
    sub_24F07EB48();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AchievementsByGameShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238408);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for AchievementsByGameShelfConstructionIntent();
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F07EA04();
  v25 = v8;
  v12 = v26;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v33 = 0;
  sub_24F07EA58(&qword_27F219858, &qword_27F214968);
  v15 = v24;
  sub_24F92CC68();
  v21[1] = v34;
  v26 = v14;
  *v14 = v34;
  v32 = 1;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  v16 = v26;
  sub_24E61C0A8(v5, v26 + v9[5]);
  v31 = 2;
  v17 = sub_24F92CC28();
  v18 = (v16 + v9[6]);
  *v18 = v17;
  v18[1] = v19;
  v29 = 3;
  sub_24F07EB9C();
  sub_24F92CC68();
  *(v16 + v9[7]) = v30;
  v27 = 4;
  sub_24F07EBF0();
  sub_24F92CC68();
  (*(v13 + 8))(v25, v15);
  *(v16 + v9[8]) = v28;
  sub_24F07EC44(v16, v22, type metadata accessor for AchievementsByGameShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F07ECAC(v16, type metadata accessor for AchievementsByGameShelfConstructionIntent);
}

unint64_t sub_24F07EA04()
{
  result = qword_27F2383F0;
  if (!qword_27F2383F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383F0);
  }

  return result;
}

uint64_t sub_24F07EA58(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FD0);
    sub_24E81A5FC(a2, type metadata accessor for Game);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F07EAF4()
{
  result = qword_27F2383F8;
  if (!qword_27F2383F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2383F8);
  }

  return result;
}

unint64_t sub_24F07EB48()
{
  result = qword_27F238400;
  if (!qword_27F238400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238400);
  }

  return result;
}

unint64_t sub_24F07EB9C()
{
  result = qword_27F238410;
  if (!qword_27F238410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238410);
  }

  return result;
}

unint64_t sub_24F07EBF0()
{
  result = qword_27F238418;
  if (!qword_27F238418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238418);
  }

  return result;
}

uint64_t sub_24F07EC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F07ECAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F07ED20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F07EDE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F07EE84()
{
  sub_24E7B7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F07EF38()
{
  result = qword_27F238430;
  if (!qword_27F238430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238430);
  }

  return result;
}

unint64_t sub_24F07EF90()
{
  result = qword_27F238438;
  if (!qword_27F238438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238438);
  }

  return result;
}

unint64_t sub_24F07EFE8()
{
  result = qword_27F238440;
  if (!qword_27F238440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238440);
  }

  return result;
}

uint64_t sub_24F07F03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974704F74726F73 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA6A4F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id UIColor.rgbaComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  result = [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v5 = v10;
    v4 = v11[0];
    v7 = v8;
    v6 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = result ^ 1;
  return result;
}

float64x2_t static UIColor.RGBAComponents.solvedValue(between:and:forInput:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v8 = *MEMORY[0x277CDA7C8];
  v9 = objc_opt_self();
  v10 = [v9 functionWithName_];
  v11 = [v9 functionWithName_];
  v12 = [v9 functionWithName_];
  v13 = [v9 functionWithName_];
  *&a4 = a4;
  LODWORD(v14) = LODWORD(a4);
  [v10 _solveForInput_];
  v34 = v15;
  LODWORD(v16) = LODWORD(a4);
  [v11 _solveForInput_];
  v33 = v17;
  LODWORD(v18) = LODWORD(a4);
  [v12 _solveForInput_];
  v32 = v19;
  LODWORD(v20) = LODWORD(a4);
  [v13 _solveForInput_];
  v31 = v21;

  v22 = vcvtq_f64_f32(__PAIR64__(v31, v32));
  v23 = vcvtq_f64_f32(__PAIR64__(v33, v34));
  __asm { FMOV            V6.2D, #1.0 }

  result = vaddq_f64(vmulq_f64(*a2, v23), vmulq_f64(*a1, vsubq_f64(_Q6, v23)));
  v30 = vaddq_f64(vmulq_f64(a2[1], v22), vmulq_f64(a1[1], vsubq_f64(_Q6, v22)));
  *a3 = result;
  a3[1] = v30;
  return result;
}

id static UIColor.RGBAComponents.interpolator(fromValue:toValue:curve:)@<X0>(__int128 *a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (a1[2])
  {
    v5 = xmmword_24F98B440;
    v6 = 0uLL;
  }

  else
  {
    v6 = *a1;
    v5 = a1[1];
  }

  v7 = vdup_n_s32(a2[2].u8[0]);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  v9 = vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL));
  v10 = vandq_s8(a2[1], v9);
  *(a3 + 8) = v6;
  *(a3 + 24) = v5;
  *(a3 + 40) = vandq_s8(v4, v9);
  *(a3 + 56) = v10;
  result = TimingCurve.caMediaTimingFunction.getter();
  *a3 = result;
  return result;
}

id UIColor.RGBAComponents.color.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

uint64_t sub_24F07F548(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F07F618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F07F6E8()
{
  sub_24E6C55A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F07F79C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FadeOutTruncationTextView(0);
  sub_24F07FCA8(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F07F98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76940];
  v4 = *MEMORY[0x277D74410];
  v5 = v1;
  *(inited + 40) = [v2 _preferredFontForTextStyle_weight_];
  v6 = sub_24E60FE74(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F238468);
  v7 = sub_24F92B098();
  sub_24E954FE0(v6);

  type metadata accessor for Key(0);
  sub_24F08105C(&qword_27F212318, type metadata accessor for Key);
  v8 = sub_24F92AE28();

  [v7 sizeWithAttributes_];
  v10 = v9;

  return v10;
}

uint64_t sub_24F07FB44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F925C98();
  v20 = v4;
  v21 = v3;
  v19 = v5;
  v22 = v6;
  v7 = *(v1 + 72);
  v18 = *(v1 + 64);
  v8 = sub_24F07F98C();
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238458) + 36);
  v14 = type metadata accessor for FadeOutRenderer(0);
  v15 = v14[7];
  sub_24E5FD138(v9, v10, v11);

  sub_24F07F79C(v13 + v15);
  v16 = *(v1 + 88);
  *(v13 + v14[9]) = 0x4046800000000000;
  *v13 = v8;
  *(v13 + 8) = v9;
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = v18;
  *(v13 + 48) = v7;
  *(v13 + v14[8]) = v16;
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
}

uint64_t sub_24F07FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F07FD18(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384A0);
  MEMORY[0x28223BE20](v5);
  v7 = v91 - v6;
  v99 = sub_24F923F28();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384A8);
  MEMORY[0x28223BE20](v102);
  v103 = v91 - v9;
  v10 = sub_24F923F78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F925CF8();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = v91 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v91 - v20;
  if (sub_24F925CC8())
  {
    v22 = sub_24F925CD8();
    v23 = __OFSUB__(v22, 1);
    result = v22 - 1;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v25 = a1;
      sub_24F925D18();
      sub_24F925CE8();
      v26 = *(v101 + 8);
      v95 = v101 + 8;
      v94 = v26;
      v26(v21, v14);
      v27 = v107[0];
      v28 = v107[2];
      v29 = v107[1] - v108;
      v30 = v108 + v109;
      v31 = type metadata accessor for FadeOutRenderer(0);
      (*(v11 + 104))(v13, *MEMORY[0x277CDFA88], v10);
      v32 = sub_24F923F68();
      (*(v11 + 8))(v13, v10);
      v33 = v27;
      v34 = v29;
      v35 = v28;
      v36 = v30;
      if (v32)
      {
        MaxX = CGRectGetMaxX(*&v33);
        v38 = *v3;
        v39 = *(v3 + *(v31 + 36));
        MinX = MaxX - *v3 + v39 * -0.25;
        v113.origin.x = v27;
        v113.origin.y = v29;
        v113.size.width = v28;
        v113.size.height = v30;
        MinY = CGRectGetMinY(v113);
        v42 = v38 + v39;
        v114.origin.x = v27;
        v114.origin.y = v29;
        v114.size.width = v28;
        v114.size.height = v30;
        Height = CGRectGetHeight(v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v44 + 32) = sub_24F9273C8();
        *(v44 + 40) = v45;
        sub_24F926C88();
        sub_24F926D08();

        *(v44 + 48) = sub_24F9273C8();
        *(v44 + 56) = v46;
        v47 = sub_24F9273D8();
        v115.origin.x = MinX;
        v115.origin.y = MinY;
        v115.size.width = v42;
        v115.size.height = Height;
        CGRectGetMinX(v115);
        v116.origin.x = MinX;
        v116.origin.y = MinY;
        v116.size.width = v42;
        v116.size.height = Height;
        v48 = CGRectGetMinY(v116);
        v49 = 0x6F6761206432;
        v50 = 0xE600000000000000;
      }

      else
      {
        MinX = CGRectGetMinX(*&v33);
        v117.origin.x = v27;
        v117.origin.y = v29;
        v117.size.width = v28;
        v117.size.height = v30;
        MinY = CGRectGetMinY(v117);
        v42 = *v3 + *(v3 + *(v31 + 36));
        v118.origin.x = v27;
        v118.origin.y = v29;
        v118.size.width = v28;
        v118.size.height = v30;
        Height = CGRectGetHeight(v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_24F93A400;
        sub_24F926C88();
        *(v56 + 32) = sub_24F9273C8();
        *(v56 + 40) = v57;
        sub_24F926C88();
        sub_24F926D08();

        *(v56 + 48) = sub_24F9273C8();
        *(v56 + 56) = v58;
        v47 = sub_24F9273D8();
        v119.origin.x = MinX;
        v119.origin.y = MinY;
        v119.size.width = v42;
        v119.size.height = Height;
        CGRectGetMaxX(v119);
        v120.origin.x = MinX;
        v120.origin.y = MinY;
        v120.size.width = v42;
        v120.size.height = Height;
        CGRectGetWidth(v120);
        v121.origin.x = MinX;
        v121.origin.y = MinY;
        v121.size.width = v42;
        v121.size.height = Height;
        v48 = CGRectGetMinY(v121);
        v49 = *(v3 + 40);
        v50 = *(v3 + 48);
      }

      v59 = v48 - sub_24F080A04(v49, v50, v107);
      v122.origin.x = MinX;
      v122.origin.y = MinY;
      v122.size.width = v42;
      v122.size.height = Height;
      Width = CGRectGetWidth(v122);
      v123.origin.x = MinX;
      v123.origin.y = MinY;
      v123.size.width = v42;
      v123.size.height = Height;
      v61 = CGRectGetHeight(v123);
      v62 = v25;
      result = sub_24F925CD8();
      if ((result & 0x8000000000000000) == 0)
      {
        v63 = result;
        v93 = v31;
        v111 = 0;
        v112 = result;
        v64 = sub_24F925D08();
        sub_24F08105C(&qword_27F2384B0, MEMORY[0x277CE0B80]);
        sub_24F92BB88();
        result = sub_24F92BC08();
        if (v106 >= v104)
        {
          *v91 = v61;
          *&v91[1] = Width;
          v91[2] = v47;
          *&v91[3] = v59;
          v92 = v3;
          v110[0] = v104;
          v110[1] = v106;
          sub_24F92BBB8();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384B8);
          v66 = v103;
          (*(*(v64 - 8) + 16))(&v103[*(v65 + 40)], v62, v64);
          v67 = v66;
          *v66 = 0;
          v66[1] = v63;
          v68 = *(v102 + 36);
          *(v66 + v68) = 0;
          v69 = v96;
          v70 = v95;
          v71 = v94;
          if (v63)
          {
            v72 = v14;
            v73 = 0;
            v102 = *v100;
            v101 += 16;
            do
            {
              v110[0] = v73;
              v111 = 0;
              v112 = v63;
              v74 = v63;
              v75 = v71;
              v76 = v70;
              v77 = v68;
              sub_24F92BBA8();
              v78 = sub_24F92BC88();
              (*v101)(v69);
              v78(&v111, 0);
              sub_24F92BC18();
              v70 = v76;
              v71 = v75;
              v63 = v74;
              sub_24F923ED8();
              v71(v69, v72);
              v68 = v77;
              v67 = v103;
              v73 = *&v103[v77];
            }

            while (v73 != v74);
          }

          sub_24E601704(v67, &qword_27F2384A8);
          v106 = *v100;

          sub_24F925B38();
          sub_24F923EA8();
          sub_24F0810A4(v110);
          sub_24F923F48();
          sub_24F925B38();
          v124.origin.x = MinX;
          v124.origin.y = MinY;
          v124.size.width = v42;
          v124.size.height = Height;
          CGRectGetMinX(v124);
          v125.origin.x = MinX;
          v125.origin.y = MinY;
          v125.size.width = v42;
          v125.size.height = Height;
          CGRectGetMidY(v125);
          v126.origin.x = MinX;
          v126.origin.y = MinY;
          v126.size.width = v42;
          v126.size.height = Height;
          CGRectGetMaxX(v126);
          v127.origin.x = MinX;
          v127.origin.y = MinY;
          v127.size.width = v42;
          v127.size.height = Height;
          CGRectGetMidY(v127);
          v79 = v97;
          sub_24F923F18();

          sub_24F923EE8();
          sub_24F0810A4(&v111);
          (*(v98 + 8))(v79, v99);
          v80 = *(v92 + 48);
          v104 = *(v92 + 40);
          v105 = v80;
          sub_24E600AEC();

          v81 = sub_24F925E18();
          v83 = v82;
          v85 = v84;
          v86 = sub_24F925C98();
          v88 = v87;
          v90 = v89;
          sub_24E600B40(v81, v83, v85 & 1);

          sub_24F923EC8();
          sub_24E600B40(v86, v88, v90 & 1);
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v51 = sub_24F925D08();
  (*(*(v51 - 8) + 16))(v7, a1, v51);
  v52 = *(v5 + 36);
  sub_24F08105C(&qword_27F2384B0, MEMORY[0x277CE0B80]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v7[v52] != *&v107[0])
  {
    v53 = (v101 + 16);
    v54 = (v101 + 8);
    do
    {
      v55 = sub_24F92BC88();
      (*v53)(v16);
      v55(v107, 0);
      sub_24F92BC18();
      sub_24F923ED8();
      (*v54)(v16, v14);
      sub_24F92BC08();
    }

    while (*&v7[v52] != *&v107[0]);
  }

  return sub_24E601704(v7, &qword_27F2384A0);
}

CGFloat sub_24F080A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ascent[10] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 24);
  descent = 0.0;
  ascent[0] = 0.0;
  leading = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76940];
  v8 = *MEMORY[0x277D74410];
  v9 = v5;
  v10 = [v6 _preferredFontForTextStyle_weight_];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2227E0);
  *(inited + 40) = v10;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F221890);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_24F92B098();
  type metadata accessor for Key(0);
  sub_24F08105C(&qword_27F212318, type metadata accessor for Key);
  v13 = sub_24F92AE28();

  v14 = [v11 initWithString:v12 attributes:v13];

  v15 = CTLineCreateWithAttributedString(v14);
  CTLineGetTypographicBounds(v15, ascent, &descent, &leading);

  return ascent[0] - v3;
}

void (*sub_24F080C7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F080D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F923F78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F080DD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F923F78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F080E7C()
{
  result = sub_24F923F78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F080F24()
{
  result = qword_27F238480;
  if (!qword_27F238480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238458);
    sub_24F080FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238480);
  }

  return result;
}

unint64_t sub_24F080FB0()
{
  result = qword_27F238488;
  if (!qword_27F238488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238488);
  }

  return result;
}

uint64_t sub_24F08105C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F0810F8(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &qword_27F220358);
    sub_24E890DCC();
    sub_24F92BAE8();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &qword_27F220358), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_24E6586B4();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x253050F00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id CommerceDialogHandler.presentingSceneIdentifier.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = sub_24F084238();
    if (!result)
    {
      return result;
    }

    Strong = result;
  }

  result = [Strong view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 _sceneIdentifier];

      v6 = sub_24F92B0D8();
      return v6;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F081480(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x253052270](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_24E69A5C4(0, &qword_27F216450);
      v8 = sub_24F92B5A8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_24F92C738();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C738();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_24F92C738();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C8F8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_24F92C738();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_24E602068(&qword_27F2385A8, &qword_27F2385A0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385A0);
              v19 = sub_24E951AFC(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_24F92C738();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void CommerceDialogHandler.isActive.setter(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = v4;
  if (a1)
  {
    [v4 setDialogObserver_];
  }

  else
  {
    v7 = [v4 dialogObserver];

    if (!v7)
    {
      return;
    }

    swift_unknownObjectRelease();
    if (v7 != v1)
    {
      return;
    }

    v5 = [v3 defaultCenter];
    [v5 setDialogObserver_];
  }

  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  v9 = MEMORY[0x277D839B0];
  v8[0] = a1 & 1;
  sub_24F928438();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F92A598();
}

id CommerceDialogHandler.__allocating_init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a2, v8);
  (*(v9 + 56))(&v6[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

id CommerceDialogHandler.init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

void CommerceDialogHandler.sheetPresentationViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*CommerceDialogHandler.sheetPresentationViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_sheetPresentationViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24F081EB8;
}

void sub_24F081EB8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

BOOL CommerceDialogHandler.isActive.getter()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [v1 dialogObserver];

  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return v2 == v0;
}

void sub_24F081FB4(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() defaultCenter];
  v5 = [v4 dialogObserver];

  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = v5 == v3;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void (*CommerceDialogHandler.isActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [objc_opt_self() defaultCenter];
  v4 = [v3 dialogObserver];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = v4 == v1;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_24F0820F4;
}

uint64_t CommerceDialogHandler.handle(_:resultHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_24F08271C(a1, a2, a3, &unk_286206F60, sub_24F084420, &block_descriptor_109);
}

{
  return sub_24F08271C(a1, a2, a3, &unk_286206FB0, sub_24F084444, &block_descriptor_10_0);
}

{
  return sub_24F08271C(a1, a2, a3, &unk_286207028, sub_24F0845B4, &block_descriptor_20_1);
}

void sub_24F082144(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, swift_beginAccess(), v9 = swift_unknownObjectWeakLoadStrong(), v8, v9) || (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0) && (v11 = v10, v9 = sub_24F084238(), v11, v9))
  {
    v12 = [v9 frontmostViewController];
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 window];

      if (v15)
      {

        v23 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithRequest:a4 presentingViewController:v12];
        v16 = [v23 performAuthentication];
        v17 = swift_allocObject();
        *(v17 + 16) = a4;
        v28 = sub_24F085204;
        v29 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24E955CC4;
        v27 = &block_descriptor_79_0;
        v18 = _Block_copy(&aBlock);
        v19 = a4;

        [v16 addErrorBlock_];
        _Block_release(v18);
        v28 = a2;
        v29 = a3;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24F13C6AC;
        v27 = &block_descriptor_82_4;
        v20 = _Block_copy(&aBlock);

        [v16 addFinishBlock_];
        _Block_release(v20);
      }

      else
      {
        sub_24F0845C8();
        v22 = swift_allocError();
        (a2)(0, v22);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_24F084450();
    v21 = swift_allocError();
    (a2)(0, v21);
  }
}

uint64_t sub_24F082478(uint64_t a1, void *a2)
{
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v9 = sub_24E69A5C4(0, &unk_27F238580);
  v8[0] = a2;
  v4 = a2;
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F92A5A8();
}

uint64_t sub_24F08271C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a2;
  v8 = sub_24F927D88();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F927DC8();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  v14 = sub_24F92BEF8();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v18 = v23;
  v17 = v24;
  v16[2] = v15;
  v16[3] = v18;
  v16[4] = a3;
  v16[5] = a1;
  aBlock[4] = v17;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v13, v10, v19);
  _Block_release(v19);

  (*(v27 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v26);
}

void sub_24F082A10(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v10 = sub_24F082C7C();
    v16 = [objc_allocWithZone(MEMORY[0x277CEE868]) initWithRequest:a4 presentingViewController:v10];
    v11 = [v16 present];
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    v21 = sub_24F0851FC;
    v22 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_24E955CC4;
    v20 = &block_descriptor_70_0;
    v13 = _Block_copy(&aBlock);
    v14 = a4;

    [v11 addErrorBlock_];
    _Block_release(v13);
    v21 = a2;
    v22 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_24F13C6AC;
    v20 = &block_descriptor_73;
    v15 = _Block_copy(&aBlock);

    [v11 addFinishBlock_];

    _Block_release(v15);
  }

  else
  {
    sub_24F084450();
    v9 = swift_allocError();
    (a2)(0, v9);
  }
}

id sub_24F082C7C()
{
  v1 = v0;
  v2 = sub_24F927E38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E69A5C4(0, &qword_27F222300);
  *v5 = sub_24F92BEF8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_24F927E68();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        Strong = sub_24F084238();
        if (!Strong)
        {
          sub_24F084450();
          swift_allocError();
          swift_willThrow();
          return v1;
        }
      }
    }

    v9 = Strong;
    v1 = [Strong frontmostViewController];
    result = [v1 view];
    if (result)
    {
      v10 = result;
      v11 = [result window];

      if (v11)
      {
      }

      else
      {
        sub_24F0845C8();
        swift_allocError();
        swift_willThrow();
      }

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F082ECC(uint64_t a1, void *a2)
{
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v9 = sub_24E69A5C4(0, &qword_27F238578);
  v8[0] = a2;
  v4 = a2;
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283B8();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F92A5A8();
}

void CommerceDialogHandler.handle(_:resultHandler:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong || (Strong = sub_24F084238()) != 0)
  {
    v45 = v9;
    v51 = a2;
    v52 = a3;
    v22 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
    sub_24F0844A4(v4 + OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag, v21);
    v23 = *(v11 + 48);
    if (v23(v21, 1, v10) == 1)
    {
      sub_24E601704(v21, &qword_27F2384D0);
      v49 = [objc_opt_self() createBagForSubProfile];
      if (!v49)
      {
        sub_24F084514();
        v24 = swift_allocError();
        v51(0, v24);

        return;
      }
    }

    else
    {
      v49 = sub_24F92A328();
      (*(v11 + 8))(v21, v10);
    }

    sub_24F0844A4(v4 + v22, v18);
    if (v23(v18, 1, v10) == 1)
    {
      sub_24E601704(v18, &qword_27F2384D0);
      v26 = v51;
      v25 = v52;
      v27 = v50;
    }

    else
    {
      v28 = *(v11 + 32);
      v29 = v46;
      v28();
      (*(v11 + 16))(v13, v29, v10);
      type metadata accessor for ASKBagContract();
      v30 = swift_allocObject();
      (v28)(v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v13, v10);
      v31 = v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 1;
      if (qword_27F210B80 != -1)
      {
        swift_once();
      }

      v32 = v45;
      sub_24F92A3B8();
      v33 = v48;
      sub_24F92A408();
      (*(v47 + 8))(v32, v33);
      swift_setDeallocating();
      v34 = *(v11 + 8);
      v34(v30 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v10);
      swift_deallocClassInstance();
      v27 = v50;
      [v50 setAnonymousMetrics_];
      v34(v29, v10);
      v26 = v51;
      v25 = v52;
    }

    v35 = objc_allocWithZone(MEMORY[0x277CEE8D8]);
    v36 = Strong;
    v37 = [v35 initWithRequest:v27 bag:v49 presentingViewController:Strong];
    if (qword_27F211090 != -1)
    {
      swift_once();
    }

    v38 = qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId;
    swift_beginAccess();
    if (*(v38 + 8))
    {
      v39 = objc_opt_self();

      v40 = [v39 currentProcess];
      v41 = sub_24F92B098();

      [v40 setProxyAppBundleID_];

      [v37 setClientInfo_];
    }

    v42 = [v37 presentEngagement];
    aBlock[4] = v26;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E6251C8;
    aBlock[3] = &block_descriptor_13_2;
    v43 = _Block_copy(aBlock);

    [v42 addFinishBlock_];
    _Block_release(v43);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F084450();
    v44 = swift_allocError();
    a2(0, v44);
  }
}

uint64_t sub_24F083914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_24F92B7F8();

  v13 = a4;
  v14 = sub_24F92B7E8();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v13;

  sub_24EA998B8(0, 0, v9, &unk_24F9C4658, v15);
}

uint64_t sub_24F083AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_24F92B7F8();
  v7[11] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x2822009F8](sub_24F083B60, v9, v8);
}

uint64_t sub_24F083B60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_24F082C7C();
    *(v0 + 112) = v3;
    v8 = *(v0 + 80);
    v9 = v3;

    v10 = type metadata accessor for ViewPresentationTask();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC12GameStoreKit20ViewPresentationTask_request] = v8;
    *(v0 + 40) = v11;
    *(v0 + 48) = v10;
    v12 = v8;
    *(v0 + 120) = objc_msgSendSuper2((v0 + 40), sel_init);
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_24F083D44;

    return sub_24ED739E0(v9);
  }

  else
  {
    v4 = *(v0 + 64);

    sub_24F084450();
    v5 = swift_allocError();
    v4(0, v5);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24F083D44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24F083F10;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24F083E6C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24F083E6C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];

  v5 = v1;
  v4(v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F083F10()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[8];
  v5 = v3;
  v4(0, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F083FE8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_24F084090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24F91F268();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id CommerceDialogHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommerceDialogHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F084238()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24E69A5C4(0, &qword_27F220358);
  sub_24E890DCC();
  v2 = sub_24F92BAA8();

  sub_24F0810F8(v2);
  v4 = v3;

  v5 = sub_24F081480(v4);

  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253052270](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isKeyWindow])
      {
        goto LABEL_16;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v9 = 0;
LABEL_16:

  v11 = [v9 rootViewController];

  return v11;
}

uint64_t sub_24F0843E8()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F084450()
{
  result = qword_27F2384D8;
  if (!qword_27F2384D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384D8);
  }

  return result;
}

uint64_t sub_24F0844A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F084514()
{
  result = qword_27F2384E0;
  if (!qword_27F2384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384E0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_24F0845C8()
{
  result = qword_27F2384E8;
  if (!qword_27F2384E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2384E8);
  }

  return result;
}

uint64_t keypath_getTm_5@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CommerceDialogHandler()
{
  result = qword_27F238558;
  if (!qword_27F238558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F084780()
{
  sub_24F084848();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F084848()
{
  if (!qword_27F238568)
  {
    sub_24F92A498();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F238568);
    }
  }
}

void sub_24F0848D0(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - v7;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  if (!Strong)
  {
    v22 = sub_24F084238();
    if (!v22)
    {
      sub_24F084450();
      v45 = swift_allocError();
      v46 = sub_24F91F268();
      (a3)[2](a3, 0, v46);

      return;
    }

    Strong = v22;
  }

  v47 = v11;
  v53 = a1;
  v54 = Strong;
  v55 = v20;
  v23 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  sub_24F0844A4(a2 + OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag, v19);
  v24 = *(v9 + 48);
  if (v24(v19, 1, v8) == 1)
  {
    sub_24E601704(v19, &qword_27F2384D0);
    v52 = [objc_opt_self() createBagForSubProfile];
    if (!v52)
    {
      sub_24F084514();
      v25 = swift_allocError();
      v26 = sub_24F91F268();
      (a3)[2](a3, 0, v26);

      return;
    }
  }

  else
  {
    v52 = sub_24F92A328();
    (*(v9 + 8))(v19, v8);
  }

  sub_24F0844A4(a2 + v23, v16);
  if (v24(v16, 1, v8) == 1)
  {
    sub_24E601704(v16, &qword_27F2384D0);
    v28 = v54;
    v27 = v55;
    v29 = v53;
  }

  else
  {
    v30 = *(v9 + 32);
    v31 = v49;
    v30(v49, v16, v8);
    v32 = v47;
    (*(v9 + 16))(v47, v31, v8);
    type metadata accessor for ASKBagContract();
    v33 = swift_allocObject();
    v30((v33 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag), v32, v8);
    v34 = v33 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v29 = v53;
    if (qword_27F210B80 != -1)
    {
      swift_once();
    }

    v35 = v48;
    sub_24F92A3B8();
    v36 = v51;
    sub_24F92A408();
    (*(v50 + 8))(v35, v36);
    swift_setDeallocating();
    v37 = *(v9 + 8);
    v37(v33 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v8);
    swift_deallocClassInstance();
    [v29 setAnonymousMetrics_];
    v37(v31, v8);
    v28 = v54;
    v27 = v55;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277CEE8D8]) initWithRequest:v29 bag:v52 presentingViewController:v28];
  if (qword_27F211090 != -1)
  {
    swift_once();
  }

  v39 = qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId;
  swift_beginAccess();
  if (*(v39 + 8))
  {
    v40 = objc_opt_self();

    v41 = [v40 currentProcess];
    v42 = sub_24F92B098();

    [v41 setProxyAppBundleID_];

    [v38 setClientInfo_];
  }

  v43 = [v38 presentEngagement];
  aBlock[4] = sub_24F085090;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_49_2;
  v44 = _Block_copy(aBlock);

  [v43 addFinishBlock_];
  _Block_release(v44);

  swift_unknownObjectRelease();
}

uint64_t sub_24F085058()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F0850A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F0850F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E614970;

  return sub_24F083AC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24F0851C4()
{

  return swift_deallocObject();
}

id _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  sub_24F08578C(a1, &v28 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_24F0857FC(v4);
    v6 = 1.0;
    v7 = &selRef_fractionalWidthDimension_;
  }

  else
  {
    v8 = &v4[*(v5 + 28)];
    v9 = v8[3];
    v10 = v8[42];
    v11 = v8[44];
    sub_24F085864(v4);
    v6 = v9 - (v10 + v11);
    v7 = &selRef_absoluteDimension_;
  }

  v12 = [objc_opt_self() *v7];
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 absoluteDimension_];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 sizeWithWidthDimension:v18 heightDimension:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F941C80;
  v21 = [v14 absoluteDimension_];
  v22 = [v17 sizeWithWidthDimension:v18 heightDimension:v21];

  v23 = [objc_opt_self() itemWithLayoutSize_];
  *(v20 + 32) = v23;
  sub_24EE1E790();
  v24 = sub_24F92B588();

  v25 = [v13 verticalGroupWithLayoutSize:v19 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  return v26;
}

id _sSo23NSCollectionLayoutGroupC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext();
  v3 = *(a1 + *(v2 + 28) + 24) - (*(a1 + *(v2 + 28) + 336) + *(a1 + *(v2 + 28) + 352));
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = [v5 absoluteDimension_];
  v7 = [v5 absoluteDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F941C80;
  v11 = [v5 absoluteDimension_];
  v12 = [v5 absoluteDimension_];
  v13 = [v8 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = [objc_opt_self() itemWithLayoutSize_];
  *(v10 + 32) = v14;
  sub_24EE1E790();
  v15 = sub_24F92B588();

  v16 = [v4 verticalGroupWithLayoutSize:v9 subitems:v15];

  return v16;
}

uint64_t sub_24F08578C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0857FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F085864(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0858D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameActivityDraftGameInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Player(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_24F085AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GameActivityDraftGameInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Player(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for CreateChallengeRematchAction()
{
  result = qword_27F2385B0;
  if (!qword_27F2385B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F085CCC()
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D837D0];
    sub_24F085E8C(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F085E8C(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F085E8C(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24F085E8C(319, &qword_27F254DE0, v1, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24F085EDC();
            if (v6 <= 0x3F)
            {
              sub_24F085F40();
              if (v7 <= 0x3F)
              {
                type metadata accessor for Player(319);
                if (v8 <= 0x3F)
                {
                  sub_24F928AD8();
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

void sub_24F085E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F085EDC()
{
  if (!qword_27F2349E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2349E8);
    }
  }
}

void sub_24F085F40()
{
  if (!qword_27F2349F0)
  {
    sub_24F920A88();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2349F0);
    }
  }
}

unint64_t sub_24F085F98(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F666E49656D6167;
    v7 = 0xD000000000000010;
    v8 = 0x6E6F697461727564;
    if (a1 != 3)
    {
      v8 = 0x5473726579616C70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F6272656461656CLL;
    }

    if (a1 <= 1u)
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
    v1 = 0x4C74706D65747461;
    v2 = 0x6F74616974696E69;
    if (a1 != 9)
    {
      v2 = 0x654D6E6F69746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    v4 = 0x6974696E69666564;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461727564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F086140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_24F928AD8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385C0);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  MEMORY[0x28223BE20](ChallengeRematchAction);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F086BB0();
  v45 = v13;
  v18 = v46;
  sub_24F92D108();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v19 = v8;
  LOBYTE(v49) = 0;
  sub_24F086DC8(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo);
  v20 = v42;
  sub_24F92CC68();
  sub_24F086D60(v20, v16, type metadata accessor for GameActivityDraftGameInfo);
  LOBYTE(v49) = 1;
  v21 = sub_24F92CC28();
  v22 = &v16[ChallengeRematchAction[5]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v49) = 2;
  v46 = 0;
  v24 = sub_24F92CC08();
  v25 = &v16[ChallengeRematchAction[6]];
  *v25 = v24;
  v25[8] = v26 & 1;
  LOBYTE(v49) = 3;
  v27 = sub_24F92CBE8();
  v28 = &v16[ChallengeRematchAction[7]];
  *v28 = v27;
  v28[8] = v29 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90);
  v48 = 4;
  sub_24F086C6C();
  sub_24F92CC68();
  *&v16[ChallengeRematchAction[8]] = v49;
  LOBYTE(v49) = 5;
  v30 = sub_24F92CC28();
  v31 = &v16[ChallengeRematchAction[9]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v49) = 6;
  v33 = sub_24F92CBC8();
  v34 = &v16[ChallengeRematchAction[10]];
  *v34 = v33;
  v34[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0);
  v48 = 7;
  sub_24EE88870();
  sub_24F92CC18();
  *&v16[ChallengeRematchAction[11]] = v49;
  sub_24F920A88();
  LOBYTE(v49) = 8;
  sub_24F086DC8(&qword_27F2325B8, MEMORY[0x277D0D0F8]);
  v46 = 0;
  sub_24F92CC18();
  sub_24F086CF0(v19, &v16[ChallengeRematchAction[12]]);
  LOBYTE(v49) = 9;
  sub_24F086DC8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24F086D60(v5, &v16[ChallengeRematchAction[13]], type metadata accessor for Player);
  LOBYTE(v49) = 10;
  sub_24F086DC8(&qword_27F254CB0, MEMORY[0x277D21C88]);
  sub_24F92CC68();
  (*(v43 + 8))(v45, v44);
  (*(v37 + 32))(&v16[ChallengeRematchAction[14]], v40, v39);
  sub_24F086E10(v16, v38);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_24F086E74(v16, type metadata accessor for CreateChallengeRematchAction);
}

uint64_t sub_24F086A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F086FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F086AAC(uint64_t a1)
{
  v2 = sub_24F086BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F086AE8(uint64_t a1)
{
  v2 = sub_24F086BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F086B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F086BB0()
{
  result = qword_27F2385C8;
  if (!qword_27F2385C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385C8);
  }

  return result;
}

uint64_t sub_24F086C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F086C6C()
{
  result = qword_27F212FE8;
  if (!qword_27F212FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F90);
    sub_24E607FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212FE8);
  }

  return result;
}

uint64_t sub_24F086CF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F086D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F086DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F086E10(uint64_t a1, uint64_t a2)
{
  ChallengeRematchAction = type metadata accessor for CreateChallengeRematchAction();
  (*(*(ChallengeRematchAction - 8) + 16))(a2, a1, ChallengeRematchAction);
  return a2;
}

uint64_t sub_24F086E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F086EE8()
{
  result = qword_27F2385D0;
  if (!qword_27F2385D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385D0);
  }

  return result;
}

unint64_t sub_24F086F40()
{
  result = qword_27F2385D8;
  if (!qword_27F2385D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385D8);
  }

  return result;
}

unint64_t sub_24F086F98()
{
  result = qword_27F2385E0;
  if (!qword_27F2385E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385E0);
  }

  return result;
}

uint64_t sub_24F086FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6A840 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA6A860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEC000000656C7552 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F74616974696E69 && a2 == 0xE900000000000072 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24F0873BC(uint64_t a1)
{
  v2 = sub_24F087598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0873F8(uint64_t a1)
{
  v2 = sub_24F087598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryRefsDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F087598()
{
  result = qword_27F2385F0;
  if (!qword_27F2385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2385F0);
  }

  return result;
}

uint64_t GameLibraryRefsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385F8);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameLibraryRefsDataIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F087898(v13, v11, type metadata accessor for Player);
    sub_24F087898(v11, v12, type metadata accessor for GameLibraryRefsDataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for GameLibraryRefsDataIntent()
{
  result = qword_27F238600;
  if (!qword_27F238600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F087898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F087938(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2385E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F087598();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F087AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F087B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F087BB4()
{
  result = qword_27F238610;
  if (!qword_27F238610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238610);
  }

  return result;
}

unint64_t sub_24F087C0C()
{
  result = qword_27F238618;
  if (!qword_27F238618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238618);
  }

  return result;
}

unint64_t sub_24F087C64()
{
  result = qword_27F238620;
  if (!qword_27F238620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238620);
  }

  return result;
}

uint64_t EditorialCard.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t EditorialCard.caption.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialCard.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EditorialCard.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_24F087D64()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_24F089820(&qword_27F2289F8, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_24F087E14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 128);
  *(a2 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24F087E70(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 104);
  v12 = *(v6 + 96);
  v9 = *(v6 + 112);
  v10 = *(v6 + 120);
  *(v6 + 96) = v2;
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;
  *(v6 + 120) = v5;
  v11 = *(v6 + 128);
  *(v6 + 128) = v7;
  sub_24E951F10(v2, v3, v4, v5, v7);
  sub_24E951FEC(v12, v8, v9, v10, v11);
}

id sub_24F087F24@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 128);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

__n128 sub_24F087F7C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v8;
  v9 = *(v1 + 128);
  *(v1 + 128) = v3;
  sub_24E951FEC(v4, v5, v6, v7, v9);
  return result;
}

uint64_t sub_24F08804C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
}

uint64_t sub_24F0880E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t EditorialCard.__allocating_init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v42 = a12;
  v19 = sub_24F91F6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v25 = *a2;
  v24 = a2[1];
  v26 = *a10;
  v39 = a10[1];
  v40 = v26;
  v38 = *(a10 + 16);
  v41 = *a16;
  v43 = a1;
  sub_24E60169C(a1, &v52, &qword_27F235830);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(v23 + 176) = v52;
    *(v23 + 192) = v27;
    *(v23 + 208) = v54;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v20 + 8))(v22, v19);
    v50 = v28;
    v51 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830);
  }

  v31 = v42;
  sub_24E60169C(v42, v23 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68);
  if (!v24)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v25 = qword_27F23E358;
    v24 = qword_27F23E360;
  }

  sub_24E601704(v31, &qword_27F213E68);
  sub_24E601704(v43, &qword_27F235830);
  *(v23 + 16) = v25;
  *(v23 + 24) = v24;
  v32 = v45;
  *(v23 + 32) = v44;
  *(v23 + 40) = v32;
  v33 = v47;
  *(v23 + 48) = v46;
  *(v23 + 56) = v33;
  v34 = v49;
  *(v23 + 64) = v48;
  *(v23 + 72) = v34;
  v35 = v39;
  *(v23 + 96) = v40;
  *(v23 + 112) = v35;
  *(v23 + 128) = v38;
  *(v23 + 80) = a9;
  *(v23 + 88) = a11;
  *(v23 + 136) = a13;
  *(v23 + 160) = a14;
  *(v23 + 168) = a15;
  *(v23 + 144) = v41;
  *(v23 + 152) = a17;
  return v23;
}

uint64_t EditorialCard.init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v18 = v17;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v21 = sub_24F91F6B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v25 = a2[1];
  v27 = *a10;
  v39 = a10[1];
  v40 = v27;
  v38 = *(a10 + 16);
  v41 = *a16;
  v42 = a1;
  sub_24E60169C(a1, &v51, &qword_27F235830);
  if (*(&v52 + 1))
  {
    v54 = v51;
    v55 = v52;
    v56 = v53;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v22 + 8))(v24, v21);
    v49 = v28;
    v50 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v51, &qword_27F235830);
  }

  v31 = v55;
  *(v18 + 176) = v54;
  *(v18 + 192) = v31;
  *(v18 + 208) = v56;
  sub_24E60169C(a12, v18 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68);
  if (!v25)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v26 = qword_27F23E358;
    v25 = qword_27F23E360;
  }

  sub_24E601704(a12, &qword_27F213E68);
  sub_24E601704(v42, &qword_27F235830);
  *(v18 + 16) = v26;
  *(v18 + 24) = v25;
  v32 = v44;
  *(v18 + 32) = v43;
  *(v18 + 40) = v32;
  v33 = v46;
  *(v18 + 48) = v45;
  *(v18 + 56) = v33;
  v34 = v48;
  *(v18 + 64) = v47;
  *(v18 + 72) = v34;
  v35 = v39;
  *(v18 + 96) = v40;
  *(v18 + 112) = v35;
  *(v18 + 128) = v38;
  *(v18 + 80) = a9;
  *(v18 + 88) = a11;
  *(v18 + 136) = a13;
  *(v18 + 160) = a14;
  *(v18 + 168) = a15;
  *(v18 + 144) = v41;
  *(v18 + 152) = a17;
  return v18;
}

uint64_t EditorialCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EditorialCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t EditorialCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v84 - v4;
  v101 = sub_24F9285B8();
  v5 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v84 - v10;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v84 - v20;
  MEMORY[0x28223BE20](v21);
  v91 = &v84 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  v107 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v99 = v16;
  if (v27)
  {
    v102 = v26;
    v103 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v29 = v13;
    v30 = v5;
    v32 = v31;
    (*(v29 + 8))(v15, v12);
    v102 = v28;
    v103 = v32;
    v5 = v30;
  }

  sub_24F92C7F8();
  v33 = *(v17 + 8);
  v98 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96 = v33;
  v33(v25, v16);
  v34 = v105;
  v35 = v93;
  *(v93 + 176) = v104;
  *(v35 + 192) = v34;
  *(v35 + 208) = v106;
  sub_24F929608();
  sub_24F928398();
  v89 = v5;
  v36 = *(v5 + 16);
  v37 = v95;
  v38 = v101;
  v36(v94, v95, v101);
  sub_24F929548();
  v85 = OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics;
  sub_24E65E0D4(v11, v35 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics);
  v92 = v5 + 16;
  v97 = v36;
  v36(v100, v37, v38);
  v39 = v86;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  v43 = v98;
  v44 = v99;
  v45 = v96;
  v96(v39, v99);
  if (!v42)
  {
    if (qword_27F2110C8 != -1)
    {
      swift_once();
    }

    v40 = qword_27F23E358;
    v42 = qword_27F23E360;
  }

  v46 = v93;
  *(v93 + 16) = v40;
  *(v46 + 24) = v42;
  v47 = v91;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v45(v47, v44);
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v45(v47, v44);
  v96 = v45;
  *(v46 + 48) = v51;
  *(v46 + 56) = v53;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v45(v47, v44);
  *(v46 + 64) = v54;
  *(v46 + 72) = v56;
  type metadata accessor for Artwork();
  sub_24F928398();
  v57 = v94;
  v58 = v100;
  v59 = v101;
  v98 = v43;
  v60 = v97;
  v97(v94, v100, v101);
  sub_24F089820(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  *(v46 + 80) = v104;
  sub_24F928398();
  v60(v57, v58, v59);
  sub_24EAFF164(v47, v57, &v104);
  v61 = v106;
  v62 = v105;
  *(v46 + 96) = v104;
  *(v46 + 112) = v62;
  *(v46 + 128) = v61;
  type metadata accessor for Action();
  sub_24F928398();
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v47, v58);
  v64 = v96;
  v96(v47, v99);
  *(v46 + 88) = v63;
  type metadata accessor for Lockup();
  sub_24F928398();
  v97(v57, v95, v101);
  sub_24F089820(&qword_27F221FB8, type metadata accessor for Lockup);
  sub_24F929548();
  *(v46 + 136) = v104;
  v65 = v87;
  sub_24F928398();
  v66 = v88;
  sub_24F9282B8();
  v64(v65, v99);
  v67 = sub_24F92AC28();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    sub_24E601704(v66, &qword_27F2213B0);
    v69 = MEMORY[0x277D84F90];
LABEL_12:
    v72 = sub_24F45D7F4(v69);

    v73 = v93;
    *(v93 + 160) = v72;
    type metadata accessor for FlowPreviewActionsConfiguration();
    v74 = v91;
    sub_24F928398();
    v75 = v94;
    v76 = v101;
    v97(v94, v100, v101);
    sub_24F089820(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_24F929548();
    *(v73 + 168) = v104;
    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v77 = v99;
    v78 = v96;
    v96(v74, v99);
    *(v73 + 144) = v104;
    sub_24F928398();
    v79 = v100;
    v97(v75, v100, v76);
    type metadata accessor for AppEventFormattedDate();
    sub_24F089820(&qword_27F22D450, type metadata accessor for AppEventFormattedDate);
    v80 = sub_24F92B698();
    v81 = *(v89 + 8);
    v81(v95, v76);
    v78(v107, v77);
    v81(v79, v76);
    *(v73 + 152) = v80;
    return v73;
  }

  v70 = v90;
  v71 = sub_24F92ABB8();
  if (!v70)
  {
    v69 = v71;
    v90 = 0;
    (*(v68 + 8))(v66, v67);
    goto LABEL_12;
  }

  v83 = v93;

  sub_24E951FEC(*(v83 + 96), *(v83 + 104), *(v83 + 112), *(v83 + 120), *(v83 + 128));

  sub_24E6585F8(v83 + 176);
  sub_24E601704(v83 + v85, &qword_27F213E68);
  type metadata accessor for EditorialCard();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F089398@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialCard();
  *a1 = v1;
}

uint64_t EditorialCard.deinit()
{

  sub_24E951FEC(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_24E6585F8(v0 + 176);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13EditorialCard_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t EditorialCard.__deallocating_deinit()
{
  EditorialCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0894E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialCard();
  v7 = swift_allocObject();
  result = EditorialCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F089550@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for EditorialCard();
  *a1 = v3;
}

uint64_t sub_24F089598()
{
  v1 = *(*v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24F93DE60;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_24F089820(&qword_27F2289F8, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_24F08964C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 128);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for EditorialCard()
{
  result = qword_27F238630;
  if (!qword_27F238630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0897C8(uint64_t a1)
{
  result = sub_24F089820(&qword_27F232898, type metadata accessor for EditorialCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F089820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F089870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);
}

void sub_24F0898C8()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void AnnotationImagesLayout.Metrics.init(horizontalSpacing:verticalSpacing:artworkSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

__n128 AnnotationImagesLayout.init(views:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  return result;
}

__n128 AnnotationImagesLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void AnnotationImagesLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  r1 = v4[1];
  v43 = v4[2];
  MinX = CGRectGetMinX(*&a1);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v52.size.height = a4;
  MinY = CGRectGetMinY(v52);
  v12 = *(*&v9 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = MinY;
  *&v49[0] = MEMORY[0x277D84F90];
  sub_24F45820C(0, v12, 0);
  v14 = *&v49[0];
  v15 = *&v9 + 32;
  v16 = *&v9 + 32;
  v48 = a4;
  do
  {
    sub_24E615E00(v16, v50);
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F922218();
    v17 = MinX + CGRectGetWidth(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = a3;
    v54.size.height = a4;
    Width = CGRectGetWidth(v54);
    v55.origin.x = a1;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    if (Width + CGRectGetMinX(v55) < v17)
    {
      v56.origin.x = a1;
      v56.origin.y = a2;
      v56.size.width = a3;
      v56.size.height = a4;
      MinX = CGRectGetMinX(v56);
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_24F922218();
      v13 = v13 + v43 + CGRectGetHeight(v57);
    }

    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F922288();
    v20 = v19;
    v22 = v21;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F922218();
    v23 = CGRectGetWidth(v58);
    __swift_destroy_boxed_opaque_existential_1(v50);
    *&v49[0] = v14;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_24F45820C((v24 > 1), v25 + 1, 1);
      v14 = *&v49[0];
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 32 * v25;
    *(v26 + 32) = MinX;
    *(v26 + 40) = v13;
    *(v26 + 48) = v20;
    *(v26 + 56) = v22;
    v16 += 40;
    MinX = MinX + r1 + v23;
    --v12;
    a4 = v48;
  }

  while (v12);
  v27 = *(*&v9 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v14 + 56;
    height = 0.0;
    v31 = 0.0;
    y = 0.0;
    x = 0.0;
    while (v28 < *(*&v9 + 16))
    {
      sub_24E615E00(v15, v49);
      v34 = *(v14 + 16);
      if (v28 == v34)
      {

        __swift_destroy_boxed_opaque_existential_1(v49);
        goto LABEL_15;
      }

      if (v28 >= v34)
      {
        goto LABEL_18;
      }

      ++v28;
      v45 = v31;
      r1a = height;
      v44 = x;
      sub_24E612E28(v49, v50);
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_24F922218();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v50);
      v59.origin.x = v44;
      v59.size.width = v45;
      v59.origin.y = y;
      v59.size.height = r1a;
      v61.origin.x = v36;
      v61.origin.y = v38;
      v61.size.width = v40;
      v61.size.height = v42;
      v60 = CGRectUnion(v59, v61);
      x = v60.origin.x;
      y = v60.origin.y;
      v31 = v60.size.width;
      height = v60.size.height;
      v15 += 40;
      v29 += 32;
      if (v27 == v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

LABEL_15:
    sub_24F922128();
  }
}

double AnnotationImagesLayout.measurements(fitting:in:)(CGFloat a1, CGFloat a2)
{
  v3 = *v2;
  v4 = *(v2 + 24);
  v6[0] = *(v2 + 8);
  v6[1] = v4;
  return _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(v3, v6, a1, a2);
}

double sub_24F089FF4(CGFloat a1, CGFloat a2)
{
  v3 = *v2;
  v4 = *(v2 + 24);
  v6[0] = *(v2 + 8);
  v6[1] = v4;
  return _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(v3, v6, a1, a2);
}

__n128 sub_24F08A02C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double _s12GameStoreKit22AnnotationImagesLayoutV12measurements3for7fitting7metrics2inSo14JUMeasurementsVSay5JetUI0F4View_pG_So6CGSizeVAC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, double *a2, CGFloat a3, CGFloat a4)
{
  v31 = a2[1];
  v32 = *a2;
  v7 = 0.0;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = a3;
  v36.size.height = a4;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = a3;
  v37.size.height = a4;
  MinY = CGRectGetMinY(v37);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = MinY;
    v35 = MEMORY[0x277D84F90];
    sub_24F45820C(0, v10, 0);
    v12 = v35;
    v13 = a1 + 32;
    do
    {
      sub_24E615E00(v13, v33);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_24F922218();
      v14 = MinX + CGRectGetWidth(v38);
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      v39.size.width = a3;
      v39.size.height = a4;
      Width = CGRectGetWidth(v39);
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = a3;
      v40.size.height = a4;
      if (Width + CGRectGetMinX(v40) < v14)
      {
        v41.origin.x = 0.0;
        v41.origin.y = 0.0;
        v41.size.width = a3;
        v41.size.height = a4;
        MinX = CGRectGetMinX(v41);
        __swift_project_boxed_opaque_existential_1(v33, v34);
        sub_24F922218();
        v11 = v11 + v31 + CGRectGetHeight(v42);
      }

      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_24F922288();
      v17 = v16;
      v19 = v18;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_24F922218();
      v20 = CGRectGetWidth(v43);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v35 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_24F45820C((v21 > 1), v22 + 1, 1);
        v12 = v35;
      }

      *(v12 + 16) = v23;
      v24 = v12 + 32 * v22;
      *(v24 + 32) = MinX;
      *(v24 + 40) = v11;
      *(v24 + 48) = v17;
      *(v24 + 56) = v19;
      v13 += 40;
      MinX = MinX + v32 + v20;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v23 = *(MEMORY[0x277D84F90] + 16);
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  v25 = v12 + 56;
  v26 = 0.0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  do
  {
    *&v28 = CGRectUnion(*&v28, *(v25 - 24));
    v25 += 32;
    --v23;
  }

  while (v23);
  v7 = v26;
LABEL_13:

  return v7;
}

uint64_t sub_24F08A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (!v11)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v14 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v17, v41);
      *(&v42 + 1) = *(*(a1 + 56) + 8 * v17);
      v38 = v41[0];
      v39 = v41[1];
      v40 = v42;
      v18 = *(&v42 + 1);

      v19 = sub_24F08CA10(v18, a2, a3, a4, a5);
      if (v19)
      {
        break;
      }

      result = sub_24E601704(&v38, &qword_27F222718);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v20 = v19;
    v36 = v39;
    v37 = v40;
    v35 = v38;
    v21 = *(v7 + 16);
    if (*(v7 + 24) <= v21)
    {
      sub_24E899884(v21 + 1, 1);
      v7 = v43;
    }

    result = sub_24F92C7B8();
    v22 = v7 + 64;
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 64 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v22 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v7 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v7 + 48) + 40 * v26;
    *v31 = v35;
    *(v31 + 16) = v36;
    *(v31 + 32) = v37;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
  }

  while (v11);
LABEL_7:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      swift_unknownObjectRelease();
      return v7;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t SearchResultsDiffablePageContentPresenter.__allocating_init(objectGraph:request:sponsoredSearchSessionManager:guidedSearchPresenter:appStateController:pendingPageRender:pageRenderMetrics:impressionsAppendixDataProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v95 = a8;
  v88 = a7;
  v92 = a5;
  v89 = a4;
  v91 = a3;
  v85 = a1;
  v94 = a10;
  v93 = a9;
  v90 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v84 - v15;
  v86 = &v84 - v15;
  v17 = swift_allocObject();
  v18 = a2[9];
  v104 = a2[8];
  v105 = v18;
  v106 = a2[10];
  v19 = a2[5];
  v100 = a2[4];
  v101 = v19;
  v20 = a2[7];
  v102 = a2[6];
  v103 = v20;
  v21 = a2[1];
  v96 = *a2;
  v22 = a2[2];
  v99 = a2[3];
  v97 = v21;
  v98 = v22;
  v23 = qword_27F238640;
  v24 = MEMORY[0x277D84F90];
  *(v17 + v23) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v25 = (v17 + qword_27F238648);
  v87 = a6;
  *v25 = a6;
  v25[1] = a7;
  v26 = sub_24F91F4A8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  *(v17 + qword_27F22F198) = 0;
  *(v17 + qword_27F22F1A0) = v24;
  v27 = qword_27F39C780;

  swift_unknownObjectRetain();

  *(v17 + v27) = sub_24E60986C(v24);
  v28 = (v17 + qword_27F22F1A8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v17 + qword_27F22F1B0);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v17 + qword_27F22F1B8);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v17 + qword_27F22F1C0);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v17 + qword_27F22F1C8);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v17 + qword_27F39C788);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v17 + qword_27F39C790) = 0;
  *(v17 + qword_27F22F1D0) = 0;
  *(v17 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v17 + qword_27F39C798) = 0;
  v34 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78);
  swift_allocObject();
  *(v17 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v17 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90);
  swift_allocObject();
  *(v17 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B8;
  swift_allocObject();
  *(v17 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v17 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v17 + v39) = sub_24F92ADA8();
  v40 = qword_27F22F1E0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v42 = *(*(v41 - 8) + 56);
  v43 = v17 + v40;
  v44 = v85;
  v42(v43, 1, 1, v41);
  v42(v17 + qword_27F22F1E8, 1, 1, v41);
  *(v17 + 16) = v44;
  sub_24E911D90(v86, v17 + qword_27F39C7D0);
  v45 = *v28;
  *v28 = 0;
  v28[1] = 0;
  sub_24E824448(v45);
  v46 = *v30;
  *v30 = 0;
  v30[1] = 0;
  sub_24E824448(v46);
  v47 = *v29;
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v47);
  v48 = *v31;
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v48);
  v49 = *v32;
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v49);
  *(v17 + qword_27F22F1F0) = v95;
  v50 = v93;
  *(v17 + qword_27F39C7D8) = v93;
  v51 = swift_allocObject();
  *(v51 + 24) = v89;
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v52;
  *(v53 + 32) = v44;
  *(v53 + 40) = v50;
  v54 = v105;
  *(v53 + 176) = v104;
  *(v53 + 192) = v54;
  *(v53 + 208) = v106;
  v55 = v101;
  *(v53 + 112) = v100;
  *(v53 + 128) = v55;
  v56 = v103;
  *(v53 + 144) = v102;
  *(v53 + 160) = v56;
  v58 = v97;
  v57 = v98;
  *(v53 + 48) = v96;
  *(v53 + 64) = v58;
  v59 = v99;
  *(v53 + 80) = v57;
  *(v53 + 96) = v59;
  v60 = v88;
  *(v53 + 224) = v87;
  *(v53 + 232) = v60;
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  v63 = v94;
  v62[2] = v61;
  v62[3] = v63;
  v62[4] = v90;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_24F08D6D0;
  *(v64 + 24) = v44;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_24F08D6CC;
  *(v65 + 24) = v53;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24E94DEE8;
  *(v66 + 24) = v65;
  v67 = (v17 + qword_27F22F1A8);
  v68 = *(v17 + qword_27F22F1A8);
  *v67 = sub_24E965630;
  v67[1] = v66;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_24E824448(v68);
  v69 = (v17 + qword_27F22F1B0);
  v71 = *(v17 + qword_27F22F1B0);
  v70 = *(v17 + qword_27F22F1B0 + 8);
  if (v71)
  {
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_24E94DF50;
    *(v73 + 24) = v72;
    v74 = sub_24E965648;
  }

  else
  {
    v74 = 0;
    v73 = *(v17 + qword_27F22F1B0 + 8);
  }

  *v69 = v74;
  v69[1] = v73;
  sub_24E5FCA4C(v71);
  sub_24E824448(v71);
  v75 = swift_allocObject();
  *(v75 + 16) = sub_24F08D6DC;
  *(v75 + 24) = v62;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_24E94DFB8;
  *(v76 + 24) = v75;
  v77 = (v17 + qword_27F22F1B8);
  v78 = *(v17 + qword_27F22F1B8);
  *v77 = sub_24E965640;
  v77[1] = v76;

  sub_24E824448(v78);
  v79 = swift_allocObject();
  *(v79 + 16) = sub_24ECF3DB0;
  *(v79 + 24) = v64;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_24E94DEE8;
  *(v80 + 24) = v79;
  v81 = (v17 + qword_27F22F1C8);
  v82 = *(v17 + qword_27F22F1C8);
  *v81 = sub_24E965630;
  v81[1] = v80;

  sub_24E824448(v82);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v17;
}

uint64_t SearchResultsDiffablePageContentPresenter.init(objectGraph:request:sponsoredSearchSessionManager:guidedSearchPresenter:appStateController:pendingPageRender:pageRenderMetrics:impressionsAppendixDataProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v96 = a8;
  v89 = a7;
  v93 = a5;
  v90 = a4;
  v92 = a3;
  v86 = a1;
  v95 = a10;
  v94 = a9;
  v91 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v85 - v17;
  v87 = &v85 - v17;
  v19 = a2[9];
  v105 = a2[8];
  v106 = v19;
  v107 = a2[10];
  v20 = a2[5];
  v101 = a2[4];
  v102 = v20;
  v21 = a2[7];
  v103 = a2[6];
  v104 = v21;
  v22 = a2[1];
  v97 = *a2;
  v23 = a2[2];
  v100 = a2[3];
  v98 = v22;
  v99 = v23;
  v24 = qword_27F238640;
  v25 = MEMORY[0x277D84F90];
  *(v12 + v24) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v26 = (v12 + qword_27F238648);
  v88 = a6;
  *v26 = a6;
  v26[1] = a7;
  v27 = sub_24F91F4A8();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  *(v12 + qword_27F22F198) = 0;
  *(v12 + qword_27F22F1A0) = v25;
  v28 = qword_27F39C780;

  swift_unknownObjectRetain();

  *(v12 + v28) = sub_24E60986C(v25);
  v29 = (v12 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v12 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v12 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v12 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v12 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v12 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78);
  swift_allocObject();
  *(v12 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v12 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90);
  swift_allocObject();
  *(v12 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v12 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v12 + v40) = sub_24F92ADA8();
  v41 = qword_27F22F1E0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v43 = *(*(v42 - 8) + 56);
  v44 = v12 + v41;
  v45 = v86;
  v43(v44, 1, 1, v42);
  v43(v12 + qword_27F22F1E8, 1, 1, v42);
  *(v12 + 16) = v45;
  sub_24E911D90(v87, v12 + qword_27F39C7D0);
  v46 = *v29;
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v46);
  v47 = *v31;
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v47);
  v48 = *v30;
  *v30 = 0;
  v30[1] = 0;
  sub_24E824448(v48);
  v49 = *v32;
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v49);
  v50 = *v33;
  *v33 = 0;
  v33[1] = 0;
  sub_24E824448(v50);
  *(v12 + qword_27F22F1F0) = v96;
  v51 = v94;
  *(v12 + qword_27F39C7D8) = v94;
  v52 = swift_allocObject();
  *(v52 + 24) = v90;
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  *(v54 + 32) = v45;
  *(v54 + 40) = v51;
  v55 = v106;
  *(v54 + 176) = v105;
  *(v54 + 192) = v55;
  *(v54 + 208) = v107;
  v56 = v102;
  *(v54 + 112) = v101;
  *(v54 + 128) = v56;
  v57 = v104;
  *(v54 + 144) = v103;
  *(v54 + 160) = v57;
  v59 = v98;
  v58 = v99;
  *(v54 + 48) = v97;
  *(v54 + 64) = v59;
  v60 = v100;
  *(v54 + 80) = v58;
  *(v54 + 96) = v60;
  v61 = v89;
  *(v54 + 224) = v88;
  *(v54 + 232) = v61;
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  v64 = v95;
  v63[2] = v62;
  v63[3] = v64;
  v63[4] = v91;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_24F08DCCC;
  *(v65 + 24) = v45;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24F08DCC8;
  *(v66 + 24) = v54;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_24EC02BC0;
  *(v67 + 24) = v66;
  v68 = (v12 + qword_27F22F1A8);
  v69 = *(v12 + qword_27F22F1A8);
  *v68 = sub_24EC02BFC;
  v68[1] = v67;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_24E824448(v69);
  v70 = (v12 + qword_27F22F1B0);
  v72 = *(v12 + qword_27F22F1B0);
  v71 = *(v12 + qword_27F22F1B0 + 8);
  if (v72)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v71;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_24EC02BC4;
    *(v74 + 24) = v73;
    v75 = sub_24EC02BC8;
  }

  else
  {
    v75 = 0;
    v74 = *(v12 + qword_27F22F1B0 + 8);
  }

  *v70 = v75;
  v70[1] = v74;
  sub_24E5FCA4C(v72);
  sub_24E824448(v72);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_24F08DCC4;
  *(v76 + 24) = v63;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_24EC02B74;
  *(v77 + 24) = v76;
  v78 = (v12 + qword_27F22F1B8);
  v79 = *(v12 + qword_27F22F1B8);
  *v78 = sub_24EC02C00;
  v78[1] = v77;

  sub_24E824448(v79);
  v80 = swift_allocObject();
  *(v80 + 16) = sub_24ECF4148;
  *(v80 + 24) = v65;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_24EC02BC0;
  *(v81 + 24) = v80;
  v82 = (v12 + qword_27F22F1C8);
  v83 = *(v12 + qword_27F22F1C8);
  *v82 = sub_24EC02BFC;
  v82[1] = v81;

  sub_24E824448(v83);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_24F08B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v64 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v60 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600);
  v15 = sub_24F92A9E8();
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v65 = v67;
  if (qword_27F210888 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v12 + 8))(v14, v11);
  if (v67 == 1 && (swift_beginAccess(), (v16 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v17 = *(a2 + 24);
    v60[1] = v16;
    ObjectType = swift_getObjectType();
    v62 = (*(v17 + 16))(*(a6 + 16), *(a6 + 24), v61, v62, ObjectType, v17);
    v19 = swift_allocObject();
    v20 = *(a6 + 96);
    *(v19 + 168) = *(a6 + 112);
    v21 = *(a6 + 144);
    *(v19 + 184) = *(a6 + 128);
    *(v19 + 200) = v21;
    *(v19 + 216) = *(a6 + 160);
    v22 = *(a6 + 32);
    *(v19 + 104) = *(a6 + 48);
    v23 = *(a6 + 80);
    *(v19 + 120) = *(a6 + 64);
    *(v19 + 136) = v23;
    *(v19 + 152) = v20;
    v24 = *(a6 + 16);
    *(v19 + 56) = *a6;
    *(v19 + 72) = v24;
    v26 = v63;
    v25 = v64;
    *(v19 + 16) = a2;
    *(v19 + 24) = v25;
    *(v19 + 32) = a4;
    *(v19 + 40) = v26;
    *(v19 + 48) = v15;
    *(v19 + 88) = v22;
    v27 = swift_allocObject();
    v28 = *(a6 + 96);
    *(v27 + 168) = *(a6 + 112);
    v29 = *(a6 + 144);
    *(v27 + 184) = *(a6 + 128);
    *(v27 + 200) = v29;
    *(v27 + 216) = *(a6 + 160);
    v30 = *(a6 + 32);
    *(v27 + 104) = *(a6 + 48);
    v31 = *(a6 + 80);
    *(v27 + 120) = *(a6 + 64);
    *(v27 + 136) = v31;
    *(v27 + 152) = v28;
    v32 = *(a6 + 16);
    *(v27 + 56) = *a6;
    *(v27 + 72) = v32;
    *(v27 + 16) = a2;
    *(v27 + 24) = v25;
    *(v27 + 32) = a4;
    *(v27 + 40) = v26;
    *(v27 + 48) = v15;
    *(v27 + 88) = v30;
    v33 = sub_24E74EC40();

    sub_24E7B6680(a6, &v67);

    sub_24E7B6680(a6, &v67);
    v34 = sub_24F92BEF8();
    *(&v68 + 1) = v33;
    *&v69 = MEMORY[0x277D225C0];
    *&v67 = v34;
    sub_24F92A958();
    swift_unknownObjectRelease();

    v35 = &v67;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = v64;
    if (Strong)
    {
      v38 = *(a2 + 24);
      v39 = swift_getObjectType();
      (*(v38 + 24))(0, v39, v38);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v40 = *(a6 + 144);
      v75 = *(a6 + 128);
      v76 = v40;
      v77 = *(a6 + 160);
      v41 = *(a6 + 80);
      v71 = *(a6 + 64);
      v72 = v41;
      v42 = *(a6 + 112);
      v73 = *(a6 + 96);
      v74 = v42;
      v43 = *(a6 + 16);
      v67 = *a6;
      v68 = v43;
      v44 = *(a6 + 48);
      v69 = *(a6 + 32);
      v70 = v44;
      GuidedSearchPresenter.searchWillBegin(for:)(&v67);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F92A758();
    v45 = *(a6 + 144);
    v76 = *(a6 + 128);
    v77 = v45;
    v78 = *(a6 + 160);
    v46 = *(a6 + 80);
    v72 = *(a6 + 64);
    v73 = v46;
    v47 = *(a6 + 112);
    v74 = *(a6 + 96);
    v75 = v47;
    v48 = *(a6 + 16);
    v68 = *a6;
    v69 = v48;
    v49 = *(a6 + 48);
    v70 = *(a6 + 32);
    v71 = v49;
    *&v67 = 0xD000000000000017;
    *(&v67 + 1) = 0x800000024FA6A9E0;
    sub_24F929C28();

    sub_24E7B6680(a6, v66);
    sub_24F928FE8();
    sub_24F929BF8();

    v50 = sub_24F929C08();

    sub_24EB48ED0(&v67, v50, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
    sub_24F08DA50(&v67);
    v51 = swift_allocObject();
    *(v51 + 16) = v15;
    *(v51 + 24) = v37;
    v52 = *(a6 + 144);
    *(v51 + 160) = *(a6 + 128);
    *(v51 + 176) = v52;
    *(v51 + 192) = *(a6 + 160);
    v53 = *(a6 + 80);
    *(v51 + 96) = *(a6 + 64);
    *(v51 + 112) = v53;
    v54 = *(a6 + 112);
    *(v51 + 128) = *(a6 + 96);
    *(v51 + 144) = v54;
    v55 = *(a6 + 16);
    *(v51 + 32) = *a6;
    *(v51 + 48) = v55;
    v56 = *(a6 + 48);
    *(v51 + 64) = *(a6 + 32);
    *(v51 + 80) = v56;
    *(v51 + 208) = a2;
    *(v51 + 216) = 0;
    v57 = sub_24E74EC40();
    swift_retain_n();

    sub_24E7B6680(a6, v66);
    v58 = sub_24F92BEF8();
    v66[3] = v57;
    v66[4] = MEMORY[0x277D225C0];
    v66[0] = v58;
    sub_24F92A958();

    v35 = v66;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v15;
}

uint64_t sub_24F08BEE4(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  *&v18[0] = *a1;
  sub_24F92A9C8();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a4[9];
    v18[8] = a4[8];
    v18[9] = v10;
    v18[10] = a4[10];
    v11 = a4[5];
    v18[4] = a4[4];
    v18[5] = v11;
    v12 = a4[7];
    v18[6] = a4[6];
    v18[7] = v12;
    v13 = a4[1];
    v18[0] = *a4;
    v18[1] = v13;
    v14 = a4[3];
    v18[2] = a4[2];
    v18[3] = v14;
    GuidedSearchPresenter.searchDidReturn(for:with:queries:)(v18, *(v9 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens), *(v9 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries));
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(a5 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 32))(a6, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F08C01C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v13 = *(*a1 + 48);
  v12 = *(*a1 + 56);
  v14 = *(*a1 + 72);
  v15 = *(*a1 + 88);
  v39 = *(*a1 + 64);
  v40 = *(*a1 + 80);

  *&v67 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v16 = v10;
  v17 = a2;
  sub_24E988E4C(v16, v11, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v13, v12, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v67;
  sub_24E81D324(v39, v14, 0x6974756F52644169, 0xEE006F666E49676ELL, v19);
  sub_24E988E4C(v40, v15, 0x7972616E6163, 0xE600000000000000);
  v20 = *(a7 + 168);
  v54 = *(a7 + 160);
  v55 = v20;
  v21 = v67;
  v22 = *(a7 + 144);
  v52 = *(a7 + 128);
  v53 = v22;
  v23 = *(a7 + 80);
  v48 = *(a7 + 64);
  v49 = v23;
  v24 = *(a7 + 112);
  v50 = *(a7 + 96);
  v51 = v24;
  v25 = *(a7 + 16);
  v44 = *a7;
  v45 = v25;
  v26 = *(a7 + 48);
  v46 = *(a7 + 32);
  v47 = v26;
  sub_24E7B6680(a7, &v67);
  sub_24E601704(&v55, &qword_27F225228);
  v64 = v52;
  v65 = v53;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  *&v66 = v54;
  *(&v66 + 1) = v21;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v27 + 24))(v9, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v67 = v56;
    v68 = v57;
    v69 = v58;
    v70 = v59;
    GuidedSearchPresenter.searchWillBegin(for:)(&v67);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  *&v67 = 0xD000000000000017;
  *(&v67 + 1) = 0x800000024FA6A9E0;
  sub_24F929C28();
  sub_24E7B6680(&v56, v43);

  sub_24F928FE8();
  sub_24F929BF8();

  v29 = sub_24F929C08();

  sub_24EB48ED0(&v67, v29, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
  sub_24F08DA50(&v67);
  v30 = swift_allocObject();
  *(v30 + 16) = a6;
  *(v30 + 24) = a3;
  v31 = v65;
  *(v30 + 160) = v64;
  *(v30 + 176) = v31;
  *(v30 + 192) = v66;
  v32 = v61;
  *(v30 + 96) = v60;
  *(v30 + 112) = v32;
  v33 = v63;
  *(v30 + 128) = v62;
  *(v30 + 144) = v33;
  v34 = v57;
  *(v30 + 32) = v56;
  *(v30 + 48) = v34;
  v35 = v59;
  *(v30 + 64) = v58;
  *(v30 + 80) = v35;
  *(v30 + 208) = v17;
  *(v30 + 216) = v9;
  v36 = sub_24E74EC40();

  sub_24E7B6680(&v56, v43);

  v37 = sub_24F92BEF8();
  v43[3] = v36;
  v43[4] = MEMORY[0x277D225C0];
  v43[0] = v37;
  sub_24F92A958();
  sub_24EB38BC8(&v56);

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24F08C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = a7[9];
    v42 = a7[8];
    v43 = v13;
    v44 = a7[10];
    v14 = a7[5];
    v38 = a7[4];
    v39 = v14;
    v15 = a7[7];
    v40 = a7[6];
    v41 = v15;
    v16 = a7[1];
    v34 = *a7;
    v35 = v16;
    v17 = a7[3];
    v36 = a7[2];
    v37 = v17;
    GuidedSearchPresenter.searchWillBegin(for:)(&v34);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v18 = a7[9];
  v43 = a7[8];
  v44 = v18;
  v45 = a7[10];
  v19 = a7[5];
  v39 = a7[4];
  v40 = v19;
  v20 = a7[7];
  v41 = a7[6];
  v42 = v20;
  v21 = a7[1];
  v35 = *a7;
  v36 = v21;
  v22 = a7[3];
  v37 = a7[2];
  v38 = v22;
  *&v34 = 0xD000000000000017;
  *(&v34 + 1) = 0x800000024FA6A9E0;
  sub_24F929C28();
  sub_24E7B6680(a7, v33);

  sub_24F928FE8();
  sub_24F929BF8();

  v23 = sub_24F929C08();

  sub_24EB48ED0(&v34, v23, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
  sub_24F08DA50(&v34);
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = a3;
  v25 = a7[9];
  *(v24 + 160) = a7[8];
  *(v24 + 176) = v25;
  *(v24 + 192) = a7[10];
  v26 = a7[5];
  *(v24 + 96) = a7[4];
  *(v24 + 112) = v26;
  v27 = a7[7];
  *(v24 + 128) = a7[6];
  *(v24 + 144) = v27;
  v28 = a7[1];
  *(v24 + 32) = *a7;
  *(v24 + 48) = v28;
  v29 = a7[3];
  *(v24 + 64) = a7[2];
  *(v24 + 80) = v29;
  *(v24 + 208) = a2;
  *(v24 + 216) = 0;
  v30 = sub_24E74EC40();

  sub_24E7B6680(a7, v33);

  v31 = sub_24F92BEF8();
  v33[3] = v30;
  v33[4] = MEMORY[0x277D225C0];
  v33[0] = v31;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_24F08C7F8(uint64_t a1, uint64_t a2)
{
  sub_24E94E17C(a1, &v6);
  if (v7[1])
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, v7);
    *&v6 = 0xD00000000000001BLL;
    *(&v6 + 1) = 0x800000024FA6A980;
    v3 = sub_24EB490CC(&v6, a2, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);

    sub_24F08D9FC(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238668);
    sub_24F08D998();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24F08C94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v9 = *(a1 + v8);
  swift_unknownObjectRetain();

  v10 = sub_24F08A32C(v9, a2, a1, a3, a4);

  *(a1 + v8) = v10;
}

uint64_t sub_24F08CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v48 = a3;
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_62:
    LOBYTE(v60) = 104;
    v45 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v7, &v60, 1, 2);

    return v45;
  }

  v46[1] = a1;
  v68[0] = MEMORY[0x277D84F90];
  sub_24F457A9C(0, v6, 0);
  v53 = v5;
  v10 = v5 + 32;
  v7 = v68[0];
  v47 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  swift_beginAccess();
  v52 = a2;
  result = swift_beginAccess();
  v12 = 0;
  v49 = a5 + 32;
  v50 = a5;
  while (v12 < *(v53 + 16))
  {
    sub_24E615E00(v10, v67);
    sub_24E615E00(v67, v66);
    sub_24E615E00(v67, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v13 = type metadata accessor for AppSearchResult();
    if (swift_dynamicCast())
    {
      v14 = v64;
      if (swift_weakLoadStrong())
      {
        if (*(v14 + 16))
        {
          if (*(v14 + 16) != 1)
          {
LABEL_24:

            goto LABEL_25;
          }
        }

        else if (*(v48 + v47))
        {
          v20 = *(v14 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
          v21 = *(v20 + 24);
          v54 = *(v20 + 16);
          v55 = v21;

          sub_24F08D22C(&v54, &v56);

          v60 = v56;
          v61 = v57;
          v62 = v58;
          v63 = v59;
          v22 = v59 >> 60;
          if (v59 >> 60 == 2 || v22 == 7 || v22 == 8 && !*(&v63 + 1) && v59 == 0x8000000000000000 && v60 == 1 && (v23 = vorrq_s8(v61, v62), !(*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | *(&v60 + 1))))
          {
            sub_24E88D2AC(&v60);
            goto LABEL_24;
          }

          sub_24E88D2AC(&v60);
        }

        v24 = 1;
      }

      else
      {
LABEL_25:
        v24 = v51;
        if (v51)
        {
          ObjectType = swift_getObjectType();
          (*(v50 + 32))(v14, ObjectType);
          v24 = 0;
        }
      }

      v34 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
      swift_beginAccess();
      *(v14 + v34) = v24;
LABEL_54:

      goto LABEL_55;
    }

    type metadata accessor for AppEventSearchResult();
    if (swift_dynamicCast())
    {
      v15 = v64;
      if (!swift_weakLoadStrong())
      {
        goto LABEL_35;
      }

      if (*(v15 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) != 1)
      {
        v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
        v17 = *(v16 + 24);
        v54 = *(v16 + 16);
        v55 = v17;

        sub_24F08D22C(&v54, &v56);

        v60 = v56;
        v61 = v57;
        v62 = v58;
        v63 = v59;
        v18 = v59 >> 60;
        if (v59 >> 60 != 3 && v18 != 2 && v18 != 7)
        {
          if (v18 != 8 || *(&v63 + 1) || v59 != 0x8000000000000000 || v60 != 1 || (v26 = vorrq_s8(v61, v62), *&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | *(&v60 + 1)))
          {
            sub_24E88D2AC(&v60);

LABEL_35:
            v27 = sub_24EBEB168();
            if (swift_weakLoadStrong())
            {
              if (*(v27 + 16))
              {
                if (*(v27 + 16) != 1)
                {
LABEL_48:

                  goto LABEL_49;
                }
              }

              else if (*(v48 + v47))
              {
                v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
                v29 = *(v28 + 24);
                v54 = *(v28 + 16);
                v55 = v29;

                sub_24F08D22C(&v54, &v56);

                v60 = v56;
                v61 = v57;
                v62 = v58;
                v63 = v59;
                v30 = v59 >> 60;
                if (v59 >> 60 == 2 || v30 == 7 || v30 == 8 && !*(&v63 + 1) && v59 == 0x8000000000000000 && v60 == 1 && (v31 = vorrq_s8(v61, v62), !(*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | *(&v60 + 1))))
                {
                  sub_24E88D2AC(&v60);
                  goto LABEL_48;
                }

                sub_24E88D2AC(&v60);
              }

              v32 = 1;
            }

            else
            {
LABEL_49:
              v32 = v51;
              if (v51)
              {
                v33 = swift_getObjectType();
                (*(v50 + 32))(v27, v33);
                v32 = 0;
              }
            }

            v44 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
            swift_beginAccess();
            *(v27 + v44) = v32;
            v61.i64[1] = v13;
            v62.i64[0] = sub_24F08D940();

            *&v60 = v27;
            __swift_destroy_boxed_opaque_existential_1(v66);
            sub_24E612C80(&v60, v66);
            goto LABEL_55;
          }
        }

        sub_24E88D2AC(&v60);
      }

      v19 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
      swift_beginAccess();
      *(v15 + v19) = 1;
      goto LABEL_54;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(v65);
    sub_24E612C80(v66, &v60);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v68[0] = v7;
    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_24F457A9C((v35 > 1), v36 + 1, 1);
    }

    ++v12;
    v37 = v61.i64[1];
    v38 = v62.i64[0];
    v39 = __swift_mutable_project_boxed_opaque_existential_1(&v60, v61.i64[1]);
    v40 = MEMORY[0x28223BE20](v39);
    v42 = v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v40);
    sub_24ED8F474(v36, v42, v68, v37, v38);
    result = __swift_destroy_boxed_opaque_existential_1(&v60);
    v7 = v68[0];
    v10 += 40;
    if (v6 == v12)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F08D12C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent))
  {
    return 1;
  }

  v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
  v3 = *(v2 + 24);
  v8[0] = *(v2 + 16);
  v8[1] = v3;

  sub_24F08D22C(v8, v9);

  v4 = v10 >> 60;
  if (v10 >> 60 == 3)
  {
    sub_24E88D2AC(v9);
    return 1;
  }

  else
  {
    v5 = v4 == 2 || v4 == 7;
    v7 = 1;
    if (!v5)
    {
      if (v4 != 8 || v11 || v10 != 0x8000000000000000 || *&v9[0] != 1 || (v6 = vorrq_s8(v9[1], v9[2]), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(&v9[0] + 1)))
      {
        v7 = 0;
      }
    }

    sub_24E88D2AC(v9);
    return v7;
  }
}

double sub_24F08D22C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  v7 = qword_27F238640;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_24E7728F0(v6, v5);
  if ((v10 & 1) == 0)
  {

    v15 = *(v3 + v7);
    if (*(v15 + 16))
    {

      v16 = sub_24E7728F0(v6, v5);
      if (v17)
      {
        v18 = (*(v15 + 56) + (v16 << 6));
        v20 = v18[2];
        v19 = v18[3];
        v21 = v18[1];
        v37 = *v18;
        v38 = v21;
        v39 = v20;
        v40 = v19;
        sub_24E8B9478(&v37, v34);

        *v35 = v37;
        *&v35[16] = v38;
        v22 = v39;
        v23 = v40;
        goto LABEL_10;
      }
    }

LABEL_8:
    if (!*(v3 + qword_27F238648))
    {
      memset(&v35[8], 0, 40);
      *v35 = 4;
      v36 = xmmword_24F966510;
      goto LABEL_12;
    }

    v24 = *(v3 + qword_27F238648 + 8);
    ObjectType = swift_getObjectType();
    *&v37 = v6;
    *(&v37 + 1) = v5;
    (*(v24 + 56))(&v37, ObjectType, v24);
    v27 = v26;
    v28 = swift_getObjectType();
    (*(v27 + 16))(v33, v28, v27);
    swift_unknownObjectRelease();
    *v35 = v33[0];
    *&v35[16] = v33[1];
    v22 = v33[2];
    v23 = v33[3];
LABEL_10:
    *&v35[32] = v22;
    v36 = v23;
LABEL_12:
    v37 = *v35;
    v38 = *&v35[16];
    v39 = *&v35[32];
    v40 = v36;
    swift_beginAccess();

    sub_24E8B9478(v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_24E820174(&v37, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v34[0];
    swift_endAccess();
    goto LABEL_13;
  }

  v11 = (*(v8 + 56) + (v9 << 6));
  v13 = v11[2];
  v12 = v11[3];
  v14 = v11[1];
  v37 = *v11;
  v38 = v14;
  v39 = v13;
  v40 = v12;
  sub_24E8B9478(&v37, v35);

LABEL_13:
  v30 = v38;
  *a2 = v37;
  a2[1] = v30;
  result = *&v39;
  v32 = v40;
  a2[2] = v39;
  a2[3] = v32;
  return result;
}

uint64_t sub_24F08D4D4()
{
  swift_unknownObjectRelease();
}

uint64_t SearchResultsDiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_24F08D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F08D65C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F08D694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F08D6E8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{

  if (*(v0 + 160) != 1)
  {

    sub_24E7B6564(*(v0 + 184), *(v0 + 192));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchResultsDiffablePageContentPresenter()
{
  result = qword_27F238650;
  if (!qword_27F238650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F08D940()
{
  result = qword_27F238660;
  if (!qword_27F238660)
  {
    type metadata accessor for AppSearchResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238660);
  }

  return result;
}

unint64_t sub_24F08D998()
{
  result = qword_27F238670;
  if (!qword_27F238670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238670);
  }

  return result;
}

uint64_t objectdestroy_139Tm()
{

  if (*(v0 + 168) != 1)
  {

    sub_24E7B6564(*(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_136Tm()
{

  if (*(v0 + 144) != 1)
  {

    sub_24E7B6564(*(v0 + 168), *(v0 + 176));
  }

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for ComponentMargin(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 65286 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65286 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65286;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ComponentMargin(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24F08DE54()
{
  type metadata accessor for GSKShelf();
  if (v0 <= 0x3F)
  {
    sub_24F09B380(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E6C5550();
      if (v2 <= 0x3F)
      {
        sub_24E6CAEE4(319, &qword_27F22EB18, &unk_27F22EB20, &unk_24F9C4E60, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F09B380(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24F09B380(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24F09B32C(319, &qword_27F238700, MEMORY[0x277CDE160]);
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

uint64_t sub_24F08E028(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[9];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[16];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F08E170(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GSKShelf();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[9];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[16];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_24F08E300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = type metadata accessor for GSKShelf();
  sub_24E60169C(v0 + *(v4 + 20), v3, &qword_27F213E68);
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_24E601704(v3, &qword_27F213E68);
LABEL_11:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_12;
  }

  v7 = sub_24F9295F8();
  (*(v6 + 8))(v3, v5);
  if (!*(v7 + 16) || (v8 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL), (v9 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_24E643A9C(*(v7 + 56) + 32 * v8, &v12);

  if (!*(&v13 + 1))
  {
LABEL_12:
    sub_24E601704(&v12, &qword_27F2129B0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v11[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F08E504()
{
  v1 = *(v0 + *(type metadata accessor for CommonCardAttributes(0) + 84));
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_24F924218();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
    sub_24F924218();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F924208();
  }

  sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  return sub_24F92C6A8();
}

uint64_t sub_24F08E6B0()
{
  v1 = *(v0 + *(type metadata accessor for HeaderPresentation(0) + 44));
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_24F924218();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
    sub_24F924218();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F924208();
  }

  sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  return sub_24F92C6A8();
}

uint64_t sub_24F08E85C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a1;
  v18 = type metadata accessor for GSKShelfView();
  v19 = &a9[v18[14]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &a9[v18[15]];
  sub_24F926F28();
  *v20 = v29;
  *(v20 + 1) = v30;
  v21 = v18[16];
  *&a9[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *a9 = v17;
  sub_24E64346C(&a9[v18[9]]);
  result = sub_24F09B734(a2, type metadata accessor for GSKShelf);
  v23 = &a9[v18[10]];
  *v23 = a3;
  v23[8] = a4 & 1;
  v24 = &a9[v18[11]];
  *v24 = a5;
  v24[1] = a6;
  v25 = &a9[v18[12]];
  *v25 = a7;
  v25[1] = a8;
  v26 = &a9[v18[13]];
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t sub_24F08EA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X6>, uint64_t a7@<X8>)
{
  v13 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a5) + 36));
  v14 = type metadata accessor for ZoomableViewModifier(0);
  sub_24E60169C(a2, v13 + v14[6], &qword_27F2171D0);
  sub_24E60169C(a3, v13 + v14[7], qword_27F21B590);
  sub_24E60169C(a4, v13 + v14[8], &qword_27F2171C8);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v15 = v13 + v14[5];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  return sub_24E60169C(a1, a7, a6);
}

uint64_t sub_24F08EB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238870) + 36));
  v11 = type metadata accessor for ZoomableViewModifier(0);
  sub_24E60169C(a2, v10 + v11[6], &qword_27F2171D0);
  sub_24E60169C(a3, v10 + v11[7], qword_27F21B590);
  sub_24E60169C(a4, v10 + v11[8], &qword_27F2171C8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v11[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;

  return sub_24F0A10E8(a1, a5);
}

uint64_t sub_24F08EC88@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = a1 - 2;
  v51 = *(a1 - 1);
  MEMORY[0x28223BE20](a1);
  v48 = v6;
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 3);
  v53 = *(v5 + 4);
  v54 = v9;
  v10 = type metadata accessor for SizedShelfGridView();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v49 = sub_24F924038();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - v13;
  v14 = &v2[v5[11]];
  sub_24F09F69C(v14, v8, type metadata accessor for GSKShelf);
  v15 = &v2[v5[13]];
  v16 = v15[1];
  v42 = *v15;
  LOBYTE(v57) = *v2;

  v17 = sub_24F08E300();
  if (v18)
  {
    v19 = &v2[a1[10]];
    v20 = *v19;
    v21 = v19[8];
  }

  else
  {
    v20 = v17;
    v21 = 0;
  }

  v22 = a1[13];
  v23 = &v2[a1[12]];
  v24 = *v23;
  v25 = v23[1];
  v43 = a1;
  v26 = *(v3 + v22);
  sub_24F08F114(v8, v42, v16, &v57, v20, v21, v24, v25, v12, v26, *(v3 + v22 + 8));
  v42 = v3;
  v27 = v45;
  v28 = v14 + *(v45 + 36);
  v29 = *(v28 + 16);
  v57 = *v28;
  v58 = v29;
  sub_24E5FCA4C(v24);
  sub_24E5FCA4C(v26);
  WitnessTable = swift_getWitnessTable();
  v31 = v46;
  View.shelfDisplayStyle(for:)(&v57, v10, WitnessTable);
  (*(v44 + 8))(v12, v10);
  LOBYTE(v57) = *(v14 + *(v27 + 68));
  v33 = v50;
  v32 = v51;
  v34 = v43;
  (*(v51 + 16))(v50, v42, v43);
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v53;
  *(v36 + 16) = v54;
  *(v36 + 24) = v37;
  (*(v32 + 32))(v36 + v35, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  v38 = sub_24EB68EB4();
  v55 = WitnessTable;
  v56 = v38;
  v39 = v49;
  swift_getWitnessTable();
  sub_24F0904D0();
  sub_24F926AB8();

  return (*(v47 + 8))(v31, v39);
}

uint64_t sub_24F08F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a4;
  v18 = type metadata accessor for SizedShelfGridView();
  v19 = a9 + v18[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a9 + v18[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  v21 = a9 + v18[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v18[17];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v23 = v18[18];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v24 = v18[19];
  *(a9 + v24) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v18[20];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v18[21];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  result = sub_24E67C3EC(a1, a9);
  v28 = (a9 + v18[9]);
  *v28 = a2;
  v28[1] = a3;
  *(a9 + v18[10]) = v17;
  v29 = a9 + v18[11];
  *v29 = a5;
  *(v29 + 8) = a6 & 1;
  v30 = (a9 + v18[12]);
  *v30 = a7;
  v30[1] = a8;
  v31 = (a9 + v18[13]);
  *v31 = a10;
  v31[1] = a11;
  return result;
}

void sub_24F08F314(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_24F925168();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v10 = (a3 + *(type metadata accessor for GSKShelfView() + 60));
    v11 = *v10;
    v12 = *(v10 + 1);
    v15 = *v10;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    if ((v14 & 1) == 0)
    {
      v15 = v11;
      v16 = v12;
      v14 = 1;
      sub_24F926F48();
      sub_24F76A218(v8);
      sub_24F925158();
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_24F08F494@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  type metadata accessor for SizedShelfGridView();
  v4 = sub_24F924038();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8);
  WitnessTable = swift_getWitnessTable();
  v189 = sub_24EB68EB4();
  v139 = swift_getWitnessTable();
  v140 = v4;
  v184 = v4;
  v185 = v5;
  v138 = v5;
  v186 = v139;
  v187 = sub_24F0904D0();
  v141 = v187;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = sub_24F924E38();
  v118 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v124 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v123 = &v115 - v10;
  v137 = v11;
  v12 = sub_24F924E38();
  v126 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v125 = &v115 - v13;
  v129 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v14);
  v121 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v115 - v17;
  v18 = sub_24F924848();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = OpaqueTypeMetadata2;
  v22 = sub_24F924E38();
  v117 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v120 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v115 - v25;
  v132 = v27;
  v28 = sub_24F924E38();
  v122 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v119 = &v115 - v29;
  v134 = v12;
  v133 = sub_24F924E38();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v136 = &v115 - v30;
  v31 = v2 + a1[9];
  v32 = *(v31 + *(type metadata accessor for GSKShelf() + 32));
  v33 = MEMORY[0x277CE1410];
  v130 = v28;
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v44 = v121;
      sub_24F08EC88(a1, v121);
      v184 = v140;
      v185 = v138;
      v186 = v139;
      v187 = v141;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v47 = v127;
      v46 = v128;
      sub_24E7896B8(v44, v127, OpaqueTypeConformance2);
      v48 = *(v129 + 8);
      v129 += 8;
      v124 = v48;
      v48(v44, v47);
      sub_24E7896B8(v46, v47, OpaqueTypeConformance2);
      v164 = OpaqueTypeConformance2;
      v165 = v33;
      v49 = swift_getWitnessTable();
      v50 = v125;
      sub_24ECCCBA0(v44, v47);
      v162 = v33;
      v163 = OpaqueTypeConformance2;
      v51 = swift_getWitnessTable();
      v160 = v33;
      v161 = v51;
      v52 = v130;
      v123 = swift_getWitnessTable();
      v158 = OpaqueTypeConformance2;
      v159 = v49;
      v53 = v134;
      swift_getWitnessTable();
      v54 = v136;
      sub_24ECCCC98(v50, v52, v53);
      (*(v126 + 8))(v50, v53);
      v55 = v124;
      v124(v44, v47);
      v55(v128, v47);
      v43 = v54;
      v42 = v141;
      v41 = v138;
      goto LABEL_19;
    }

    v67 = v2 + a1[14];
    v68 = *v67;
    if (*(v67 + 8) == 1)
    {
      v69 = v141;
      if ((v68 & 1) == 0)
      {
LABEL_11:
        v70 = v69;
        v71 = v139;
        v72 = v140;
        v73 = v138;
        v184 = v140;
        v185 = v138;
        v186 = v139;
        v187 = v70;
        v74 = swift_getOpaqueTypeConformance2();
        v75 = v123;
        v76 = v127;
        sub_24ECCCC98(v74, v127, MEMORY[0x277CE1428]);
LABEL_17:
        v184 = v72;
        v185 = v73;
        v186 = v71;
        v187 = v141;
        v93 = swift_getOpaqueTypeConformance2();
        v182 = v93;
        v33 = MEMORY[0x277CE1410];
        v183 = MEMORY[0x277CE1410];
        v94 = v137;
        v95 = swift_getWitnessTable();
        v96 = v124;
        sub_24E7896B8(v75, v94, v95);
        v97 = v125;
        v98 = v76;
        v99 = v94;
        sub_24ECCCC98(v96, v98, v94);
        v180 = v33;
        v181 = v93;
        v100 = swift_getWitnessTable();
        v178 = v33;
        v179 = v100;
        v101 = v130;
        v129 = swift_getWitnessTable();
        v176 = v93;
        v177 = v95;
        v102 = v101;
        v41 = v138;
        v103 = v134;
        swift_getWitnessTable();
        v104 = v136;
        sub_24ECCCC98(v97, v102, v103);
        v105 = v97;
        v43 = v104;
        (*(v126 + 8))(v105, v103);
        v106 = *(v118 + 8);
        v106(v124, v99);
        v106(v123, v99);
        goto LABEL_18;
      }
    }

    else
    {

      sub_24F92BDC8();
      v87 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v68, 0);
      (*(v19 + 8))(v21, v18);
      v69 = v141;
      if (v184 != 1)
      {
        goto LABEL_11;
      }
    }

    v88 = v121;
    sub_24F08EC88(a1, v121);
    v89 = v139;
    v73 = v138;
    v184 = v140;
    v185 = v138;
    v186 = v139;
    v187 = v69;
    v90 = swift_getOpaqueTypeConformance2();
    v76 = v127;
    v91 = v128;
    sub_24E7896B8(v88, v127, v90);
    v92 = *(v129 + 8);
    v92(v88, v76);
    sub_24E7896B8(v91, v76, v90);
    v75 = v123;
    sub_24ECCCBA0(v88, v76);
    v71 = v89;
    v92(v88, v76);
    v92(v91, v76);
    v72 = v140;
    goto LABEL_17;
  }

  if (v32)
  {
    v56 = v2 + a1[14];
    v57 = *v56;
    if (*(v56 + 8) == 1)
    {
      v43 = v136;
      if ((v57 & 1) == 0)
      {
LABEL_8:
        v58 = v121;
        sub_24F08EC88(a1, v121);
        v59 = v139;
        v60 = v138;
        v184 = v140;
        v185 = v138;
        v186 = v139;
        v187 = v141;
        v61 = swift_getOpaqueTypeConformance2();
        v63 = v127;
        v62 = v128;
        sub_24E7896B8(v58, v127, v61);
        v64 = *(v129 + 8);
        v64(v58, v63);
        sub_24E7896B8(v62, v63, v61);
        sub_24ECCCC98(v58, MEMORY[0x277CE1428], v63);
        v64(v58, v63);
        v65 = v63;
        v43 = v136;
        v64(v62, v65);
        v66 = v140;
LABEL_14:
        v116 = v26;
        v184 = v66;
        v185 = v60;
        v186 = v59;
        v187 = v141;
        v79 = swift_getOpaqueTypeConformance2();
        v33 = MEMORY[0x277CE1410];
        v156 = MEMORY[0x277CE1410];
        v157 = v79;
        v80 = v132;
        v81 = swift_getWitnessTable();
        v82 = v120;
        sub_24E7896B8(v26, v80, v81);
        v83 = v119;
        sub_24ECCCC98(v82, MEMORY[0x277CE1428], v80);
        v154 = v33;
        v155 = v81;
        v84 = v130;
        swift_getWitnessTable();
        v152 = v79;
        v153 = v33;
        v85 = swift_getWitnessTable();
        v150 = v79;
        v151 = v85;
        swift_getWitnessTable();
        v41 = v138;
        sub_24ECCCBA0(v83, v84);
        (*(v122 + 8))(v83, v84);
        v86 = *(v117 + 8);
        v86(v120, v80);
        v86(v116, v80);
LABEL_18:
        v42 = v141;
        goto LABEL_19;
      }
    }

    else
    {

      sub_24F92BDC8();
      v77 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v57, 0);
      (*(v19 + 8))(v21, v18);
      v43 = v136;
      if (v184 != 1)
      {
        goto LABEL_8;
      }
    }

    v59 = v139;
    v66 = v140;
    v60 = v138;
    v184 = v140;
    v185 = v138;
    v186 = v139;
    v187 = v141;
    v78 = swift_getOpaqueTypeConformance2();
    sub_24ECCCBA0(v78, MEMORY[0x277CE1428]);
    goto LABEL_14;
  }

  v34 = v138;
  v184 = v140;
  v185 = v138;
  v186 = v139;
  v187 = v141;
  v35 = swift_getOpaqueTypeConformance2();
  v148 = v33;
  v149 = v35;
  v36 = swift_getWitnessTable();
  v37 = v119;
  sub_24ECCCBA0(v36, MEMORY[0x277CE1428]);
  v146 = v33;
  v147 = v36;
  v38 = v130;
  swift_getWitnessTable();
  v144 = v35;
  v145 = v33;
  v39 = swift_getWitnessTable();
  v142 = v35;
  v143 = v39;
  swift_getWitnessTable();
  v40 = v136;
  v41 = v34;
  sub_24ECCCBA0(v37, v38);
  v42 = v141;
  v43 = v40;
  (*(v122 + 8))(v37, v38);
LABEL_19:
  v184 = v140;
  v185 = v41;
  v186 = v139;
  v187 = v42;
  v107 = swift_getOpaqueTypeConformance2();
  v174 = v33;
  v175 = v107;
  v108 = swift_getWitnessTable();
  v172 = v33;
  v173 = v108;
  v109 = swift_getWitnessTable();
  v170 = v107;
  v171 = v33;
  v110 = swift_getWitnessTable();
  v168 = v107;
  v169 = v110;
  v111 = swift_getWitnessTable();
  v166 = v109;
  v167 = v111;
  v112 = v133;
  v113 = swift_getWitnessTable();
  sub_24E7896B8(v43, v112, v113);
  return (*(v131 + 8))(v43, v112);
}

uint64_t sub_24F09045C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24F0C8EE8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24F0C8EE8(v2, v3);
}

unint64_t sub_24F0904D0()
{
  result = qword_27F238708;
  if (!qword_27F238708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238708);
  }

  return result;
}

uint64_t sub_24F09054C()
{
  v1 = type metadata accessor for GSKShelfView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = v3 + v1[9];
  v5 = sub_24F92AA48();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 + 20);
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v93 = v6;
  v92 = v4;
  v10 = v4 + *(v6 + 24);
  v11 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v12 = *(*(v11 - 1) + 48);
  if (!v12(v10, 1, v11))
  {

    v13 = v10 + v11[5];
    v14 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v71 = sub_24F9289E8();
          (*(*(v71 - 8) + 8))(v13, v71);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v15 = v10 + v11[7];
          v16 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v18 = sub_24F928388();
              (*(*(v18 - 8) + 8))(v15, v18);
            }
          }

          v19 = v10 + v11[10];
          if (*(v19 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v19);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v59 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v60 = type metadata accessor for JSColor();
        if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
        {
          v61 = sub_24F928388();
          (*(*(v61 - 8) + 8))(v59, v61);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v68 = sub_24F9289E8();
        v69 = *(v68 - 8);
        if (!(*(v69 + 48))(v13, 1, v68))
        {
          (*(v69 + 8))(v13, v68);
        }

        if (*(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v20 = type metadata accessor for HeaderPresentation(0);
  v21 = v10 + v20[5];
  if (v12(v21, 1, v11))
  {
    goto LABEL_33;
  }

  v22 = v21 + v11[5];
  v23 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    goto LABEL_18;
  }

  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 2)
  {
    if (!v26)
    {

      v62 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v63 = type metadata accessor for JSColor();
      if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
      {
        v64 = sub_24F928388();
        (*(*(v64 - 8) + 8))(v62, v64);
      }

      goto LABEL_18;
    }

    if (v26 == 1)
    {
      v70 = sub_24F9289E8();
      v90 = *(v70 - 8);
      if (!(*(v90 + 48))(v22, 1, v70))
      {
        (*(v90 + 8))(v22, v70);
      }

      if (*(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v26 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v26)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v73 = sub_24F9289E8();
      (*(*(v73 - 8) + 8))(v22, v73);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v24 = v21 + v11[7];
  v25 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v27 = sub_24F928388();
      (*(*(v27 - 8) + 8))(v24, v27);
    }
  }

  v28 = v21 + v11[10];
  if (*(v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

LABEL_33:
  v29 = v10 + v20[6];
  if (v12(v29, 1, v11))
  {
    goto LABEL_50;
  }

  v30 = v29 + v11[5];
  v31 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    goto LABEL_35;
  }

  v34 = swift_getEnumCaseMultiPayload();
  if (v34 <= 2)
  {
    if (!v34)
    {

      v65 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v66 = type metadata accessor for JSColor();
      if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
      {
        v67 = sub_24F928388();
        (*(*(v67 - 8) + 8))(v65, v67);
      }

      goto LABEL_35;
    }

    if (v34 == 1)
    {
      v72 = sub_24F9289E8();
      v91 = *(v72 - 8);
      if (!(*(v91 + 48))(v30, 1, v72))
      {
        (*(v91 + 8))(v30, v72);
      }

      if (*(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v34 != 2)
    {
      goto LABEL_35;
    }

LABEL_88:

    goto LABEL_35;
  }

  switch(v34)
  {
    case 3:
      goto LABEL_88;
    case 4:
      v74 = sub_24F9289E8();
      (*(*(v74 - 8) + 8))(v30, v74);
      break;
    case 5:
      goto LABEL_88;
  }

LABEL_35:
  v32 = v29 + v11[7];
  v33 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v35 = sub_24F928388();
      (*(*(v35 - 8) + 8))(v32, v35);
    }
  }

  v36 = v29 + v11[10];
  if (*(v36 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

LABEL_50:
  v37 = v10 + v20[7];
  if (*(v37 + 56) == 1)
  {
  }

  else if (!*(v37 + 56))
  {

    if (*(v37 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v37 + 16);
    }
  }

  v38 = v10 + v20[8];
  v39 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v40 = v93;
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
      goto LABEL_134;
    }

    if (v47 != 1)
    {
      if (v47)
      {
        goto LABEL_56;
      }

      v48 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v48 - 8) + 48))(v38, 1, v48))
      {
        goto LABEL_56;
      }

      v49 = swift_getEnumCaseMultiPayload();
      if (v49 > 2)
      {
        if (v49 != 3)
        {
          if (v49 == 4)
          {
            v89 = sub_24F9289E8();
            (*(*(v89 - 8) + 8))(v38, v89);
            goto LABEL_56;
          }

          if (v49 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_134;
      }

      if (v49)
      {
        if (v49 == 1)
        {
          v87 = sub_24F9289E8();
          v88 = *(v87 - 8);
          if (!(*(v88 + 48))(v38, 1, v87))
          {
            (*(v88 + 8))(v38, v87);
          }

          if (!*(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v49 != 2)
        {
          goto LABEL_56;
        }

LABEL_134:

        goto LABEL_56;
      }

      v54 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v55 = type metadata accessor for JSColor();
      if ((*(*(v55 - 8) + 48))(v54, 1, v55))
      {
        goto LABEL_56;
      }

LABEL_84:
      v56 = sub_24F928388();
      (*(*(v56 - 8) + 8))(v54, v56);

      goto LABEL_56;
    }

    v50 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v51 = *(*(v50 - 8) + 48);
    if (v51(v38, 1, v50))
    {
LABEL_82:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v53 = v38 + *(v52 + 48);
      if (v51(v53, 1, v50))
      {
        goto LABEL_83;
      }

      v58 = swift_getEnumCaseMultiPayload();
      if (v58 <= 2)
      {
        if (v58)
        {
          if (v58 != 1)
          {
            if (v58 != 2)
            {
              goto LABEL_83;
            }

LABEL_130:

            goto LABEL_83;
          }

          v83 = sub_24F9289E8();
          v84 = *(v83 - 8);
          if (!(*(v84 + 48))(v53, 1, v83))
          {
            (*(v84 + 8))(v53, v83);
          }

          if (*(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v78 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v79 = type metadata accessor for JSColor();
          if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
          {
            v80 = sub_24F928388();
            (*(*(v80 - 8) + 8))(v78, v80);
          }
        }

LABEL_83:
        v54 = v38 + *(v52 + 80);
        v55 = type metadata accessor for JSColor();
        v40 = v93;
        if ((*(*(v55 - 8) + 48))(v54, 1, v55))
        {
          goto LABEL_56;
        }

        goto LABEL_84;
      }

      if (v58 != 3)
      {
        if (v58 == 4)
        {
          v86 = sub_24F9289E8();
          (*(*(v86 - 8) + 8))(v53, v86);
          goto LABEL_83;
        }

        if (v58 != 5)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_130;
    }

    v57 = swift_getEnumCaseMultiPayload();
    if (v57 > 2)
    {
      if (v57 != 3)
      {
        if (v57 == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v38, v85);
          goto LABEL_82;
        }

        if (v57 != 5)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (!v57)
      {

        v75 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v76 = type metadata accessor for JSColor();
        if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
        {
          v77 = sub_24F928388();
          (*(*(v77 - 8) + 8))(v75, v77);
        }

        goto LABEL_82;
      }

      if (v57 == 1)
      {
        v81 = sub_24F9289E8();
        v82 = *(v81 - 8);
        if (!(*(v82 + 48))(v38, 1, v81))
        {
          (*(v82 + 8))(v38, v81);
        }

        if (*(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_82;
      }

      if (v57 != 2)
      {
        goto LABEL_82;
      }
    }

    goto LABEL_82;
  }

LABEL_56:
  v41 = v92 + v40[13];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v92 + v40[14];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v92 + v40[16];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (*(v3 + v1[12]))
  {
  }

  if (*(v3 + v1[13]))
  {
  }

  sub_24E62A5EC(*(v3 + v1[14]), *(v3 + v1[14] + 8));

  v44 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = sub_24F925168();
    (*(*(v45 - 8) + 8))(v3 + v44, v45);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24F091B30(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for GSKShelfView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_24F08F314(a1, a2, v6);
}

uint64_t sub_24F091BDC()
{
  v0 = sub_24F9218F8();
  __swift_allocate_value_buffer(v0, qword_27F39D818);
  *__swift_project_value_buffer(v0, qword_27F39D818) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_24F091C6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9218F8();
  v3 = __swift_project_value_buffer(v2, qword_27F39D818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24F091D14()
{
  sub_24F09F7AC();

  return sub_24F924868();
}

double sub_24F091D5C@<D0>(double *a1@<X8>)
{
  sub_24F091EBC();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_24F091DAC@<D0>(double *a1@<X8>)
{
  sub_24F091EBC();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t sub_24F091EBC()
{
  result = qword_27F238710[0];
  if (!qword_27F238710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F238710);
  }

  return result;
}

uint64_t sub_24F091F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v285 = a2;
  v302 = a1;
  v2 = *(a1 + 24);
  v296 = *(a1 + 16);
  v284 = v2;
  type metadata accessor for ShelfHeaderView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v349 = MEMORY[0x277CDF918];
  v3 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v347 = v3;
  v344 = swift_getWitnessTable();
  v345 = MEMORY[0x277CDF678];
  v342 = swift_getWitnessTable();
  v343 = MEMORY[0x277CDFC60];
  v340 = swift_getWitnessTable();
  v341 = v3;
  v338 = swift_getWitnessTable();
  v339 = v3;
  swift_getWitnessTable();
  *&v4 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  *&v5 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  *&v6 = COERCE_DOUBLE(sub_24E8F20E4());
  v301 = MEMORY[0x277CDFC88];
  v336 = v5;
  v337 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  swift_getWitnessTable();
  v300 = MEMORY[0x277CE0E68];
  v350 = *&v4;
  v351 = COERCE_DOUBLE(&type metadata for IsDebugFocusOverlayEnabled);
  *&v352 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v353 = *&v5;
  v354 = *&v6;
  v355 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A0);
  swift_getTupleTypeMetadata3();
  v256 = sub_24F927808();
  v254 = swift_getWitnessTable();
  v7 = sub_24F927108();
  v257 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v253 = &v216 - v8;
  v9 = sub_24F924038();
  v255 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v252 = &v216 - v10;
  *&v11 = COERCE_DOUBLE(sub_24F924038());
  v281 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v279 = &v216 - v12;
  v263 = v7;
  v250 = swift_getWitnessTable();
  v334 = v250;
  v13 = MEMORY[0x277CDF918];
  v335 = MEMORY[0x277CDF918];
  v262 = v9;
  v251 = swift_getWitnessTable();
  v332 = v251;
  v333 = v13;
  *&v14 = COERCE_DOUBLE(swift_getWitnessTable());
  v350 = *&v11;
  v351 = *&v14;
  v299 = MEMORY[0x277CDEA30];
  swift_getOpaqueTypeMetadata2();
  v15 = sub_24F924E38();
  v268 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v259 = &v216 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A48);
  v295 = sub_24F924038();
  v267 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v258 = &v216 - v17;
  v18 = sub_24F924038();
  v274 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v266 = &v216 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A58);
  v20 = sub_24F924038();
  v271 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v264 = &v216 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A68);
  v22 = sub_24F924038();
  v273 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v265 = &v216 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A78);
  v24 = sub_24F924038();
  v269 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v261 = &v216 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A88);
  *&v26 = COERCE_DOUBLE(sub_24F924038());
  v280 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v278 = &v216 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8);
  *&v298 = COERCE_DOUBLE(sub_24F924038());
  v283 = v11;
  v350 = *&v11;
  v351 = *&v14;
  v330 = swift_getOpaqueTypeConformance2();
  v260 = v14;
  v331 = v14;
  v270 = v15;
  v28 = swift_getWitnessTable();
  v29 = sub_24E602068(&qword_27F215A40, &qword_27F215A48);
  v237 = v28;
  v328 = v28;
  v329 = v29;
  v238 = swift_getWitnessTable();
  v326 = v238;
  v327 = v29;
  v277 = v18;
  v30 = swift_getWitnessTable();
  v31 = sub_24E602068(&qword_27F215A50, &qword_27F215A58);
  v240 = v30;
  v324 = v30;
  v325 = v31;
  v275 = v20;
  v32 = swift_getWitnessTable();
  v33 = sub_24E602068(&qword_27F215A60, &qword_27F215A68);
  v242 = v32;
  v322 = v32;
  v323 = v33;
  v276 = v22;
  v34 = swift_getWitnessTable();
  v35 = sub_24E602068(&qword_27F215A70, &qword_27F215A78);
  v243 = v34;
  v320 = v34;
  v321 = v35;
  v272 = v24;
  v36 = swift_getWitnessTable();
  v37 = sub_24E602068(&qword_27F215A80, &qword_27F215A88);
  v244 = v36;
  v318 = v36;
  v319 = v37;
  *&v38 = COERCE_DOUBLE(swift_getWitnessTable());
  *&v39 = COERCE_DOUBLE(sub_24F09B638());
  v40 = sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
  v316 = v38;
  v317 = v40;
  v41 = v298;
  *&v42 = COERCE_DOUBLE(swift_getWitnessTable());
  v350 = *&v26;
  v351 = COERCE_DOUBLE(&type metadata for IsDebugImpressionIndexOverlayEnabled);
  v352 = v41;
  v353 = *&v38;
  v354 = *&v39;
  v355 = *&v42;
  *&v43 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v247 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v246 = &v216 - v44;
  v282 = v26;
  v350 = *&v26;
  v351 = COERCE_DOUBLE(&type metadata for IsDebugImpressionIndexOverlayEnabled);
  v352 = v41;
  v353 = *&v38;
  v249 = v38;
  v354 = *&v39;
  v355 = *&v42;
  *&v45 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  v350 = *&v43;
  v351 = *&v45;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8);
  *&v46 = COERCE_DOUBLE(sub_24F924038());
  *&v47 = COERCE_DOUBLE(sub_24F09B68C());
  v350 = *&v43;
  v351 = *&v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_24E602068(&qword_27F2387D8, &qword_27F2387C0);
  v314 = v48;
  v315 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_24E602068(&qword_27F2387E0, &qword_27F2387C8);
  v312 = v50;
  v313 = v51;
  *&v52 = COERCE_DOUBLE(swift_getWitnessTable());
  v248 = *&v43;
  v350 = *&v43;
  v351 = COERCE_DOUBLE(&type metadata for IsDebugShelfLayoutOverlayEnabled);
  v53 = v303;
  v241 = v46;
  v352 = v46;
  v353 = *&v45;
  v245 = v45;
  v239 = v47;
  v354 = *&v47;
  v355 = *&v52;
  v234 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v235 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v230 = &v216 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v232 = &v216 - v57;
  v233 = sub_24F921998();
  v231 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v301 = &v216 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387E8);
  MEMORY[0x28223BE20](v59 - 8);
  v226 = &v216 - v60;
  v61 = sub_24F9218F8();
  v293 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v229 = &v216 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v218 = &v216 - v64;
  MEMORY[0x28223BE20](v65);
  v292 = &v216 - v66;
  v67 = sub_24F923E98();
  v223 = *(v67 - 8);
  v224 = v67;
  MEMORY[0x28223BE20](v67);
  v290 = &v216 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for ShelfLayoutEnvironment();
  MEMORY[0x28223BE20](v225);
  v300 = (&v216 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_24F925218();
  v287 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v217 = &v216 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v72);
  v74 = &v216 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v75 - 8);
  v289 = &v216 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v288 = &v216 - v78;
  MEMORY[0x28223BE20](v79);
  v286 = &v216 - v80;
  MEMORY[0x28223BE20](v81);
  v222 = &v216 - v82;
  MEMORY[0x28223BE20](v83);
  v219 = &v216 - v84;
  MEMORY[0x28223BE20](v85);
  v87 = &v216 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v216 - v89;
  v299 = sub_24F924848();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v297 = &v216 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v302[10];
  *&v93 = COERCE_DOUBLE(type metadata accessor for GSKShelf());
  v94 = *(v93 + 36);
  v95 = *(v93 + 40);
  v291 = v93;
  v227 = v95;
  v96 = *(v53 + v95);
  v97 = *(v53 + v94);
  v236 = OpaqueTypeMetadata2;
  if (v96 > 2)
  {
    goto LABEL_2;
  }

  if (v96)
  {
    goto LABEL_6;
  }

  v96 = *(v53 + v92);
  if (v96 > 2)
  {
LABEL_2:
    if (v96 > 4)
    {
      if (v96 == 5)
      {
        v98 = 4;
      }

      else if (v97 >> 62 == 1)
      {
        v98 = 6;
      }

      else
      {
        v98 = 5;
      }
    }

    else if (v96 == 3)
    {
      v98 = 2;
    }

    else
    {
      v98 = 3;
    }

    goto LABEL_17;
  }

  if (*(v53 + v92))
  {
LABEL_6:
    if (v96 == 1)
    {
      LODWORD(v220) = 0;
      goto LABEL_18;
    }
  }

  v98 = 1;
LABEL_17:
  LODWORD(v220) = v98;
LABEL_18:
  v99 = v53 + v302[14];
  v100 = *v99;
  LODWORD(v99) = *(v99 + 8);
  v294 = v61;
  v228 = v92;
  if (v99 == 1)
  {
    v101 = *&v100;
  }

  else
  {

    sub_24F92BDC8();
    v102 = sub_24F9257A8();
    sub_24F921FD8();

    v103 = v297;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v100, 0);
    (*(v298 + 8))(v103, v299);
    v101 = v350;
  }

  v221 = v302[19];
  sub_24F769764(v90);
  v104 = v287;
  (*(v287 + 104))(v87, *MEMORY[0x277CE0558], v70);
  (*(v104 + 56))(v87, 0, 1, v70);
  v105 = *(v72 + 48);
  sub_24E60169C(v90, v74, &qword_27F215598);
  sub_24E60169C(v87, &v74[v105], &qword_27F215598);
  v106 = *(v104 + 48);
  if (v106(v74, 1, v70) == 1)
  {
    sub_24E601704(v87, &qword_27F215598);
    sub_24E601704(v90, &qword_27F215598);
    v107 = v106(&v74[v105], 1, v70);
    v108 = v303;
    if (v107 == 1)
    {
      sub_24E601704(v74, &qword_27F215598);
      v109 = 1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v110 = v219;
  sub_24E60169C(v74, v219, &qword_27F215598);
  if (v106(&v74[v105], 1, v70) == 1)
  {
    sub_24E601704(v87, &qword_27F215598);
    sub_24E601704(v90, &qword_27F215598);
    (*(v287 + 8))(v110, v70);
    v108 = v303;
LABEL_26:
    sub_24E601704(v74, &unk_27F254F20);
    v109 = 0;
    goto LABEL_28;
  }

  v111 = v287;
  v112 = v217;
  (*(v287 + 32))(v217, &v74[v105], v70);
  sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570]);
  v109 = sub_24F92AFF8();
  v113 = *(v111 + 8);
  v113(v112, v70);
  sub_24E601704(v87, &qword_27F215598);
  sub_24E601704(v90, &qword_27F215598);
  v113(v219, v70);
  sub_24E601704(v74, &qword_27F215598);
  v108 = v303;
LABEL_28:
  v114 = v108 + v302[15];
  v116 = *v114;
  v115 = *(v114 + 8);
  v118 = *(v114 + 16);
  v117 = *(v114 + 24);
  LODWORD(v219) = *(v114 + 32);
  if (v219 == 1)
  {
    v119 = *&v115;
    v120 = *&v117;
  }

  else
  {

    sub_24F92BDC8();
    v121 = sub_24F9257A8();
    sub_24F921FD8();

    v122 = v297;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v116, v115, v118, v117, 0);
    (*(v298 + 8))(v122, v299);
    v119 = v351;
    v120 = v353;
  }

  v123 = v119 + v120;
  if (v101 <= 1580.0)
  {
    v124 = v101;
  }

  else
  {
    v124 = 1580.0;
  }

  v125 = 0.0;
  if (LOBYTE(v220) <= 2u)
  {
    if (!LOBYTE(v220))
    {
      goto LABEL_67;
    }

    if (LOBYTE(v220) != 1)
    {
      v126 = 2;
LABEL_54:
      LOBYTE(v350) = v126;
      sub_24F422FFC(v109 & 1, v124);
      v125 = v127;
      goto LABEL_67;
    }

    if (v109)
    {
      if (v123 <= 0.0)
      {
        v125 = 16.0;
      }

      else
      {
        v125 = 0.0;
      }

      goto LABEL_67;
    }

    goto LABEL_63;
  }

  if (LOBYTE(v220) <= 4u)
  {
    if (LOBYTE(v220) == 3)
    {
      if (sub_24E6B00B4(v124) < 4u)
      {
        goto LABEL_67;
      }

      v126 = 3;
      goto LABEL_54;
    }

    if (v109)
    {
      if (v123 <= 0.0)
      {
        v125 = 16.0;
      }

      else
      {
        v125 = 0.0;
      }

      if (v124 + -420.0 > 0.0 && (v124 + -420.0) * 0.5 > v125)
      {
        v125 = (v124 + -420.0) * 0.5;
      }

      goto LABEL_67;
    }

LABEL_63:
    v125 = dbl_24F9C54C8[sub_24E6B00B4(v124)];
    goto LABEL_67;
  }

  if (LOBYTE(v220) != 5)
  {
    v125 = 14.0;
    goto LABEL_67;
  }

  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_27F2301A8 & 1) == 0)
  {
    *&v128 = 40.0;
    goto LABEL_66;
  }

  if ((v109 & 1) == 0)
  {
    if (v124 < 0.0 || v124 >= 376.0)
    {
      if (v124 >= 428.0 || v124 < 376.0)
      {
        v125 = 46.0;
      }

      else
      {
        v125 = 38.0;
      }

      goto LABEL_67;
    }

    *&v128 = 44.0;
LABEL_66:
    v125 = *&v128;
    goto LABEL_67;
  }

  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v125 = *&qword_27F39D300;
LABEL_67:
  v220 = *&v117;
  v350 = v101;
  v351 = 1580.0;
  *&v352 = v124;
  v353 = v124 - (v125 + v125);
  v354 = v125;
  v355 = (v101 - v124) * 0.5 + v125;
  v129 = v108 + v302[16];
  v130 = *v129;
  LODWORD(v129) = *(v129 + 8);
  v216 = v118;
  v217 = v116;
  v131 = v115;
  if (v129 == 1)
  {
    v132 = v130;
  }

  else
  {

    sub_24F92BDC8();
    v133 = sub_24F9257A8();
    sub_24F921FD8();

    v134 = v297;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v130, 0);
    (*(v298 + 8))(v134, v299);
    v124 = *&v352;
    v132 = *&v304;
  }

  v135 = v291;
  v136 = (v108 + *(v291 + 28));
  v137 = *v136;
  LOBYTE(v136) = *(v136 + 8);
  v310 = v137;
  v311 = v136;
  v138 = v222;
  sub_24F769764(v222);
  v139 = v286;
  sub_24F769764(v286);
  sub_24F094650(v138, v139, &v304);
  sub_24E601704(v139, &qword_27F215598);
  sub_24E601704(v138, &qword_27F215598);
  *&v287 = v304;
  LODWORD(v286) = v305;
  v222 = *(v303 + *(v135 + 60));
  v140 = *(v222 + 16);
  sub_24F769788(v290);
  v141 = v303;
  sub_24F769764(v288);
  sub_24F769764(v289);
  if (v219)
  {
    v142 = *&v115;
    v143 = v220;
  }

  else
  {
    v144 = v217;

    sub_24F92BDC8();
    v145 = sub_24F9257A8();
    sub_24F921FD8();

    v146 = v297;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v144, v131, v216, *&v220, 0);
    (*(v298 + 8))(v146, v299);
    v142 = *&v305;
    v143 = v307;
  }

  v147 = v141 + v302[20];
  v148 = *v147;
  v149 = v293;
  v150 = v292;
  if (*(v147 + 8))
  {
    LOBYTE(v304) = v148 & 1;
  }

  else
  {

    sub_24F92BDC8();
    v151 = sub_24F9257A8();
    sub_24F921FD8();

    v152 = v297;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v148, 0);
    (*(v298 + 8))(v152, v299);
    LOBYTE(v148) = LOBYTE(v304);
  }

  v153 = v354;
  v154 = v300;
  *v300 = v124;
  *(v154 + 1) = v132;
  v154[2] = v153;
  *(v154 + 3) = v140;
  v155 = v225;
  (*(v223 + 32))(v154 + *(v225 + 28), v290, v224);
  sub_24E6009C8(v288, v154 + v155[8], &qword_27F215598);
  sub_24E6009C8(v289, v154 + v155[9], &qword_27F215598);
  *(v154 + v155[10]) = v142 + v143 > 0.0;
  *(v154 + v155[11]) = v148 & 1;
  v156 = (v154 + v155[12]);
  *v156 = *&v287;
  *(v156 + 8) = v286;
  v157 = sub_24F4BA954(v154);
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v164 = v154;
  v165 = v141;
  sub_24F4BAB50(v164, v150);
  v166 = v226;
  sub_24F4BAE20(v226);
  v167 = sub_24F921CA8();
  v168 = (*(*(v167 - 8) + 48))(v166, 1, v167);
  sub_24E601704(v166, &qword_27F2387E8);
  if (v168 == 1)
  {
    v169 = *(v222 + 16);
    v170 = v218;
    v171 = v294;
    (*(v149 + 16))(v218, v150, v294);
    v172 = (*(v149 + 88))(v170, v171);
    v173 = v279;
    if (v172 == *MEMORY[0x277D7EB30])
    {
      (*(v149 + 96))(v170, v171);
      v174 = v169 < *v170;
    }

    else
    {
      (*(v149 + 8))(v170, v171);
      v174 = 0;
    }
  }

  else
  {
    v174 = 0;
    v173 = v279;
    v171 = v294;
  }

  v175 = v301;
  sub_24F4BAF84(v300, v301);
  v176 = sub_24F924C98();
  MEMORY[0x28223BE20](v176);
  v177 = v284;
  *(&v216 - 14) = v296;
  *(&v216 - 13) = v177;
  *(&v216 - 12) = v165;
  *(&v216 - 11) = v157;
  *(&v216 - 10) = v159;
  *(&v216 - 9) = v161;
  *(&v216 - 8) = v163;
  *(&v216 - 7) = v124;
  *(&v216 - 6) = v132;
  *(&v216 - 5) = &v350;
  *(&v216 - 4) = v150;
  *(&v216 - 3) = v175;
  *(&v216 - 16) = v174;
  v178 = v253;
  sub_24F9270F8();
  sub_24F925818();
  v179 = v252;
  v180 = v263;
  sub_24F926A48();
  (*(v257 + 8))(v178, v180);
  sub_24F925828();
  v181 = v262;
  sub_24F926A48();
  (*(v255 + 8))(v179, v181);
  v182 = v229;
  (*(v149 + 16))(v229, v150, v171);
  v183 = (*(v149 + 88))(v182, v171);
  v184 = *MEMORY[0x277D7EB20];
  if (v183 == *MEMORY[0x277D7EB20])
  {
    (*(v149 + 96))(v182, v171);
    v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    v186 = sub_24F9219E8();
    (*(*(v186 - 8) + 8))(&v182[v185], v186);
  }

  else
  {
    (*(v149 + 8))(v182, v171);
  }

  v187 = v183 == v184;
  v188 = v259;
  v189 = v283;
  sub_24EC9B6C0(v187, v283, v260, v259);
  (*(v281 + 8))(v173, v189);
  swift_getKeyPath();
  v304 = v124 - v159 - v163;
  v190 = v258;
  v191 = v270;
  sub_24F9261B8();

  (*(v268 + 8))(v188, v191);
  swift_getKeyPath();
  v304 = (v159 + v163) * 0.5;
  v192 = v266;
  v193 = v295;
  sub_24F9261B8();

  (*(v267 + 8))(v190, v193);
  swift_getKeyPath();
  v194 = *(v165 + v227);
  LOBYTE(v304) = *(v165 + v228);
  BYTE1(v304) = v194;
  v195 = v264;
  v196 = v277;
  sub_24F9261B8();

  (*(v274 + 8))(v192, v196);
  swift_getKeyPath();
  v304 = *&v287;
  LOBYTE(v305) = v286;
  v197 = v265;
  v198 = v275;
  sub_24F9261B8();

  (*(v271 + 8))(v195, v198);
  swift_getKeyPath();
  LOBYTE(v304) = sub_24E6B00B4(v124);
  v199 = v261;
  v200 = v276;
  sub_24F9261B8();

  (*(v273 + 8))(v197, v200);
  swift_getKeyPath();
  v201 = v278;
  v202 = v272;
  sub_24F9261B8();

  (*(v269 + 8))(v199, v202);
  v307 = *&v291;
  v308 = sub_24F09F654(&qword_27F21BF08, type metadata accessor for GSKShelf);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v304);
  sub_24F09F69C(v165, boxed_opaque_existential_1, type metadata accessor for GSKShelf);
  sub_24F9275B8();
  sub_24F926C68();
  v204 = v246;
  v205 = v282;
  sub_24F186E28();

  (*(v280 + 8))(v201, v205);
  __swift_destroy_boxed_opaque_existential_1(&v304);
  v206 = v230;
  v207 = v300;
  v208 = v248;
  v209 = v245;
  sub_24F495A88(v165, v300, *&v248, v245);
  (*(v247 + 8))(v204, COERCE_DOUBLE(*&v208));
  sub_24F09B734(v207, type metadata accessor for ShelfLayoutEnvironment);
  v304 = v208;
  *&v305 = COERCE_DOUBLE(&type metadata for IsDebugShelfLayoutOverlayEnabled);
  v306 = v241;
  v307 = *&v209;
  v308 = v239;
  v309 = v234;
  v210 = swift_getOpaqueTypeConformance2();
  v211 = v232;
  v212 = v236;
  sub_24E7896B8(v206, v236, v210);
  v213 = *(v235 + 8);
  v213(v206, v212);
  sub_24E7896B8(v211, v212, v210);
  v213(v211, v212);
  (*(v231 + 8))(v301, v233);
  return (*(v293 + 8))(v292, v294);
}

void sub_24F094650(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v6 = sub_24F925218();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v10);
  v59 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v45[-v18];
  v24 = MEMORY[0x28223BE20](v20);
  v25 = &v45[-v21];
  v26 = *v3;
  v27 = *(v3 + 8);
  if (*(v3 + 8))
  {
    if (v27 != 1)
    {
      goto LABEL_15;
    }

    v56 = v23;
    v57 = a3;
    v47 = v22;
    v49 = v9;
    v50 = v26;
    v28 = *MEMORY[0x277CE0560];
    v29 = v7[13];
    v54 = v7 + 13;
    v52 = v29;
    (v29)(&v45[-v21], v28, v6, v24);
    v30 = v7[7];
    v53 = v7 + 7;
    v51 = v30;
    v30(v25, 0, 1, v6);
    v31 = *(v10 + 48);
    sub_24E60169C(a1, v14, &qword_27F215598);
    sub_24E60169C(v25, &v14[v31], &qword_27F215598);
    v55 = v7;
    v32 = v7[6];
    if (v32(v14, 1, v6) == 1)
    {
      sub_24E601704(v25, &qword_27F215598);
      if (v32(&v14[v31], 1, v6) == 1)
      {
        sub_24E601704(v14, &qword_27F215598);
LABEL_17:
        LOBYTE(v27) = 0;
        a3 = v57;
LABEL_18:
        v26 = v50;
        goto LABEL_19;
      }
    }

    else
    {
      sub_24E60169C(v14, v19, &qword_27F215598);
      if (v32(&v14[v31], 1, v6) != 1)
      {
        v48 = v32;
        v38 = v55;
        v39 = v49;
        (v55[4])(v49, &v14[v31], v6);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570]);
        v46 = sub_24F92AFF8();
        v40 = v38[1];
        v40(v39, v6);
        sub_24E601704(v25, &qword_27F215598);
        v40(v19, v6);
        sub_24E601704(v14, &qword_27F215598);
        if (v46)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

      sub_24E601704(v25, &qword_27F215598);
      (v55[1])(v19, v6);
    }

    v48 = v32;
    sub_24E601704(v14, &unk_27F254F20);
LABEL_9:
    v33 = v56;
    v52(v56, *MEMORY[0x277CE0558], v6);
    v51(v33, 0, 1, v6);
    v34 = *(v10 + 48);
    v35 = v59;
    sub_24E60169C(v58, v59, &qword_27F215598);
    sub_24E60169C(v33, &v35[v34], &qword_27F215598);
    v36 = v48;
    if (v48(v35, 1, v6) == 1)
    {
      sub_24E601704(v33, &qword_27F215598);
      if (v36(&v35[v34], 1, v6) == 1)
      {
        sub_24E601704(v35, &qword_27F215598);
        goto LABEL_17;
      }
    }

    else
    {
      v37 = v47;
      sub_24E60169C(v35, v47, &qword_27F215598);
      if (v36(&v35[v34], 1, v6) != 1)
      {
        v41 = v55;
        v42 = v49;
        (v55[4])(v49, &v35[v34], v6);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570]);
        v43 = sub_24F92AFF8();
        v44 = v41[1];
        v44(v42, v6);
        sub_24E601704(v56, &qword_27F215598);
        v44(v37, v6);
        sub_24E601704(v35, &qword_27F215598);
        a3 = v57;
        if (v43)
        {
          LOBYTE(v27) = 0;
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      sub_24E601704(v56, &qword_27F215598);
      (v55[1])(v37, v6);
    }

    sub_24E601704(v35, &unk_27F254F20);
    a3 = v57;
LABEL_15:
    v26 = 0;
    LOBYTE(v27) = 1;
  }

LABEL_19:
  *a3 = v26;
  *(a3 + 8) = v27;
}

uint64_t sub_24F094D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D1>, double a10@<D3>, double a11@<D4>)
{
  v477 = a5;
  v486 = a4;
  v490 = a3;
  *&v523 = a1;
  v482 = a8;
  v16 = *a2;
  v400 = *(a2 + 16);
  v401 = v16;
  v17 = *(a2 + 32);
  v398 = *(a2 + 40);
  v399 = v17;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387F0);
  v439 = *(v441 - 8);
  MEMORY[0x28223BE20](v441);
  v435 = &v386 - v18;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221370);
  MEMORY[0x28223BE20](v434);
  v437 = &v386 - v19;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221360);
  MEMORY[0x28223BE20](v436);
  v440 = &v386 - v20;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221350);
  MEMORY[0x28223BE20](v438);
  v443 = &v386 - v21;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221340);
  MEMORY[0x28223BE20](v442);
  v445 = &v386 - v22;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221310);
  MEMORY[0x28223BE20](v444);
  v448 = &v386 - v23;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387A0);
  MEMORY[0x28223BE20](v479);
  v481 = &v386 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v480 = &v386 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387E8);
  MEMORY[0x28223BE20](v27 - 8);
  v476 = &v386 - v28;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A0);
  v459 = *(v460 - 8);
  MEMORY[0x28223BE20](v460);
  v458 = &v386 - v29;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318B0);
  MEMORY[0x28223BE20](v455);
  v457 = &v386 - v30;
  *&v525 = type metadata accessor for SizedShelfGridView();
  v518 = *(v525 - 8);
  MEMORY[0x28223BE20](v525);
  v454 = &v386 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = v31;
  MEMORY[0x28223BE20](v32);
  v517 = &v386 - v33;
  v491 = sub_24F921998();
  v451 = *(v491 - 1);
  MEMORY[0x28223BE20](v491);
  v498 = &v386 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F921938();
  MEMORY[0x28223BE20](v35 - 8);
  v497 = &v386 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = sub_24F9218F8();
  v493 = *(v494 - 8);
  MEMORY[0x28223BE20](v494);
  v492 = &v386 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = v37;
  MEMORY[0x28223BE20](v38);
  v496 = &v386 - v39;
  v522 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v522);
  v495 = &v386 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318D8);
  v499 = *(v500 - 8);
  MEMORY[0x28223BE20](v500);
  v513 = &v386 - v41;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387F8);
  MEMORY[0x28223BE20](v485);
  v456 = &v386 - v42;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238800);
  v462 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v502 = &v386 - v43;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238808);
  v463 = *(v469 - 8);
  MEMORY[0x28223BE20](v469);
  v461 = &v386 - v44;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238810);
  v470 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v465 = &v386 - v45;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238818);
  v471 = *(v474 - 8);
  MEMORY[0x28223BE20](v474);
  v467 = &v386 - v46;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238820);
  v473 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v468 = &v386 - v47;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238798);
  MEMORY[0x28223BE20](v511);
  v478 = &v386 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v464 = &v386 - v50;
  MEMORY[0x28223BE20](v51);
  v520 = &v386 - v52;
  v390 = *(a6 - 8);
  MEMORY[0x28223BE20](v53);
  v388 = &v386 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F924038();
  v391 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v389 = &v386 - v56;
  v512 = v57;
  v58 = sub_24F924038();
  v394 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v393 = &v386 - v59;
  v510 = v60;
  v519 = sub_24F924038();
  v397 = *(v519 - 8);
  MEMORY[0x28223BE20](v519);
  v396 = &v386 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v392 = &v386 - v63;
  MEMORY[0x28223BE20](v64);
  v395 = &v386 - v65;
  v484 = sub_24F924218();
  v483 = *(v484 - 8);
  MEMORY[0x28223BE20](v484);
  v433 = &v386 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v430 = &v386 - v68;
  v449 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v449);
  v419 = &v386 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v521 = a6;
  v524 = a7;
  v70 = type metadata accessor for ShelfHeaderView();
  v427 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v425 = &v386 - v71;
  WitnessTable = swift_getWitnessTable();
  *&v588 = v70;
  *(&v588 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v420 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v414 = &v386 - v74;
  v423 = v75;
  v76 = sub_24F924038();
  v417 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v412 = &v386 - v77;
  v78 = sub_24F924038();
  v418 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v413 = &v386 - v79;
  v80 = sub_24F924038();
  v424 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v416 = &v386 - v81;
  v82 = sub_24F924038();
  v431 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  *&v450 = &v386 - v83;
  sub_24F924038();
  v84 = sub_24F924038();
  v428 = v70;
  *&v588 = v70;
  v411 = WitnessTable;
  *(&v588 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = MEMORY[0x277CDF918];
  v404 = OpaqueTypeConformance2;
  v586 = OpaqueTypeConformance2;
  v587 = MEMORY[0x277CDF918];
  v421 = v76;
  v405 = swift_getWitnessTable();
  v584 = v405;
  v585 = v86;
  v422 = v78;
  v406 = swift_getWitnessTable();
  v582 = v406;
  v583 = MEMORY[0x277CDF678];
  v426 = v80;
  v407 = swift_getWitnessTable();
  v580 = v407;
  v581 = MEMORY[0x277CDFC60];
  v432 = v82;
  v429 = swift_getWitnessTable();
  v578 = v429;
  v579 = v86;
  v576 = swift_getWitnessTable();
  v577 = v86;
  v87 = swift_getWitnessTable();
  *&v588 = v84;
  *(&v588 + 1) = v87;
  v88 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v89 = sub_24F924038();
  *&v588 = v84;
  *(&v588 + 1) = v87;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_24E8F20E4();
  v92 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v574 = v90;
  v575 = v92;
  v93 = swift_getWitnessTable();
  *&v588 = v88;
  *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v589 = v89;
  *(&v589 + 1) = v90;
  *&v590[0] = v91;
  *(&v590[0] + 1) = v93;
  v94 = swift_getOpaqueTypeMetadata2();
  *&v588 = v88;
  *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v589 = v89;
  *(&v589 + 1) = v90;
  *&v590[0] = v91;
  *(&v590[0] + 1) = v93;
  v95 = swift_getOpaqueTypeConformance2();
  v509 = v88;
  *&v588 = v88;
  *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v508 = v94;
  *&v589 = v94;
  v96 = v523;
  *(&v508 + 1) = v90;
  *(&v589 + 1) = v90;
  v516 = v91;
  *&v590[0] = v91;
  v505 = v95;
  *(&v590[0] + 1) = v95;
  swift_getOpaqueTypeMetadata2();
  v506 = sub_24F924038();
  v97 = sub_24F924038();
  v415 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v410 = &v386 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v408 = &v386 - v100;
  MEMORY[0x28223BE20](v101);
  v409 = &v386 - v102;
  v103 = sub_24F925218();
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v386 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v402);
  v108 = &v386 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v109 - 8);
  v403 = &v386 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v113 = &v386 - v112;
  MEMORY[0x28223BE20](v114);
  v116 = &v386 - v115;
  v489 = sub_24F924848();
  v488 = *(v489 - 8);
  MEMORY[0x28223BE20](v489);
  v487 = &v386 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = v97;
  v501 = sub_24F924E38();
  v504 = sub_24F92C4A8();
  v503 = *(v504 - 8);
  MEMORY[0x28223BE20](v504);
  v515 = &v386 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v514 = &v386 - v120;
  v121 = v96 + v522[6];
  if (sub_24F31B9B4())
  {
    v122 = *(v121 + *(v449 + 36));
    if (v122 > 3)
    {
      if (*(v121 + *(v449 + 36)) > 5u)
      {
        if (v122 != 6)
        {
          goto LABEL_60;
        }

        v123 = 5;
      }

      else if (v122 == 4)
      {
        v123 = 3;
      }

      else
      {
        v123 = 4;
      }
    }

    else if (*(v121 + *(v449 + 36)) > 1u)
    {
      if (v122 == 2)
      {
        v123 = 1;
      }

      else
      {
        v123 = 2;
      }
    }

    else
    {
      if (*(v121 + *(v449 + 36)))
      {
        v449 = 0;
        goto LABEL_25;
      }

      v123 = 0x5040302010001uLL >> (8 * *(v96 + *(v525 + 40)));
    }

    v449 = v123;
LABEL_25:
    *&v401 = v106;
    v152 = v96 + *(v525 + 56);
    v153 = *v152;
    LODWORD(v152) = *(v152 + 8);
    v387 = v121;
    if (v152 == 1)
    {
      v154 = *&v153;
    }

    else
    {

      sub_24F92BDC8();
      v155 = v104;
      v156 = sub_24F9257A8();
      sub_24F921FD8();

      v104 = v155;
      v157 = v487;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v153, 0);
      (*(v488 + 8))(v157, v489);
      v154 = *&v588;
    }

    sub_24F769764(v116);
    (*(v104 + 104))(v113, *MEMORY[0x277CE0558], v103);
    (*(v104 + 56))(v113, 0, 1, v103);
    v158 = *(v402 + 48);
    sub_24E60169C(v116, v108, &qword_27F215598);
    sub_24E60169C(v113, &v108[v158], &qword_27F215598);
    v159 = *(v104 + 48);
    if (v159(v108, 1, v103) == 1)
    {
      sub_24E601704(v113, &qword_27F215598);
      sub_24E601704(v116, &qword_27F215598);
      v160 = v159(&v108[v158], 1, v103);
      v96 = v523;
      if (v160 == 1)
      {
        sub_24E601704(v108, &qword_27F215598);
        v161 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      sub_24E60169C(v108, v403, &qword_27F215598);
      if (v159(&v108[v158], 1, v103) != 1)
      {
        v162 = v401;
        (*(v104 + 32))(v401, &v108[v158], v103);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570]);
        v163 = v403;
        LODWORD(v402) = sub_24F92AFF8();
        v164 = *(v104 + 8);
        v164(v162, v103);
        sub_24E601704(v113, &qword_27F215598);
        sub_24E601704(v116, &qword_27F215598);
        v164(v163, v103);
        v161 = v402;
        sub_24E601704(v108, &qword_27F215598);
        v96 = v523;
LABEL_35:
        v165 = v96 + *(v525 + 60);
        v166 = *(v165 + 8);
        v167 = *(v165 + 24);
        if (*(v165 + 32) != 1)
        {
          v168 = *v165;
          v169 = *(v165 + 16);

          sub_24F92BDC8();
          v170 = sub_24F9257A8();
          sub_24F921FD8();

          v171 = v487;
          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v168, v166, v169, v167, 0);
          (*(v488 + 8))(v171, v489);
        }

        v121 = v387;
        if (v154 <= 1580.0)
        {
          v172 = v154;
        }

        else
        {
          v172 = 1580.0;
        }

        if (v449 > 2u)
        {
          if (v449 == 3)
          {
            if (sub_24E6B00B4(v172) >= 4u)
            {
              v173 = 3;
LABEL_52:
              LOBYTE(v588) = v173;
              sub_24F422FFC(v161 & 1, v172);
            }
          }

          else
          {
            if (v449 != 4)
            {
              if (qword_27F210748 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if ((byte_27F2301A8 & 1) != 0 && (v161 & 1) != 0 && qword_27F210D60 != -1)
              {
                swift_once();
              }

              goto LABEL_60;
            }

            if ((v161 & 1) == 0)
            {
LABEL_59:
              sub_24E6B00B4(v172);
            }
          }
        }

        else if (v449)
        {
          if (v449 == 1)
          {
            if (v161)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          v173 = 2;
          goto LABEL_52;
        }

LABEL_60:
        v174 = v419;
        sub_24F09F69C(v121, v419, type metadata accessor for HeaderPresentation);
        sub_24E60169C(v96 + v522[13], &v588, &qword_27F213EA8);
        v175 = v525;
        v176 = (v96 + *(v525 + 36));
        v178 = *v176;
        v177 = v176[1];
        v179 = sub_24F92AA48();
        *(&v572 + 1) = v179;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v571);
        (*(*(v179 - 8) + 16))(boxed_opaque_existential_1, v96, v179);
        v181 = v425;
        sub_24F6A4D20(v174, &v588, v178, v177, &v571, v425);

        v182 = v430;
        sub_24F08E6B0();
        v183 = v414;
        v184 = v428;
        sub_24F926AE8();
        (*(v483 + 8))(v182, v484);
        (*(v427 + 8))(v181, v184);
        sub_24F925838();
        v185 = v412;
        v186 = v423;
        sub_24F926A48();
        (*(v420 + 8))(v183, v186);
        sub_24F925858();
        v187 = v413;
        v188 = v421;
        sub_24F926A48();
        (*(v417 + 8))(v185, v188);
        sub_24F927618();
        v189 = v416;
        v190 = v422;
        sub_24F926938();
        (*(v418 + 8))(v187, v190);
        sub_24F927618();
        v191 = v426;
        sub_24F926948();
        (*(v424 + 8))(v189, v191);
        v192 = v96 + *(v175 + 60);
        v193 = *(v192 + 8);
        v194 = *(v192 + 24);
        if (*(v192 + 32) == 1)
        {
          v195 = *(v192 + 24);
        }

        else
        {
          v196 = *v192;
          v449 = *(v192 + 16);
          v197 = v449;

          sub_24F92BDC8();
          v198 = sub_24F9257A8();
          sub_24F921FD8();

          v199 = v487;
          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v196, v193, v197, v194, 0);
          v200 = *(v488 + 8);
          v201 = v489;
          v200(v199, v489);

          sub_24F92BDC8();
          v202 = sub_24F9257A8();
          sub_24F921FD8();

          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v196, v193, v449, v194, 0);
          v200(v199, v201);
          v195 = *(&v589 + 1);
        }

        v203 = v408;
        v204 = v432;
        v205 = v450;
        sub_24EB1EBF0(v429, v408, -v195);
        (*(v431 + 8))(COERCE_DOUBLE(*&v205), v204);
        *&v588 = v509;
        *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
        v589 = v508;
        *&v590[0] = v516;
        *(&v590[0] + 1) = v505;
        v536 = swift_getOpaqueTypeConformance2();
        v206 = MEMORY[0x277CDF918];
        v537 = MEMORY[0x277CDF918];
        v534 = swift_getWitnessTable();
        v535 = v206;
        v207 = v507;
        v208 = swift_getWitnessTable();
        v209 = v409;
        sub_24E7896B8(v203, v207, v208);
        v210 = *(v415 + 8);
        v210(v203, v207);
        v211 = v410;
        sub_24E7896B8(v209, v207, v208);
        v532 = v524;
        v533 = v206;
        v530 = swift_getWitnessTable();
        v531 = v206;
        v528 = swift_getWitnessTable();
        v529 = MEMORY[0x277CDFC60];
        v212 = swift_getWitnessTable();
        v213 = v515;
        sub_24ECCCBA0(v211, v207);
        v210(v211, v207);
        v210(v209, v207);
        (*(*(v501 - 8) + 56))(v213, 0, 1, v501);
        v526 = v208;
        v527 = v212;
        swift_getWitnessTable();
        sub_24E8D5004(v213, v514);
        (*(v503 + 8))(v213, v504);
        v96 = v523;
        goto LABEL_64;
      }

      sub_24E601704(v113, &qword_27F215598);
      sub_24E601704(v116, &qword_27F215598);
      (*(v104 + 8))(v403, v103);
      v96 = v523;
    }

    sub_24E601704(v108, &unk_27F254F20);
    v161 = 0;
    goto LABEL_35;
  }

  v124 = v449;
  sub_24E60169C(v121 + *(v449 + 28), &v571, &qword_27F238828);
  if (BYTE8(v573[1]) == 255)
  {
    sub_24E601704(&v571, &qword_27F238828);
    v128 = v515;
    (*(*(v501 - 8) + 56))(v515, 1, 1, v501);
    *&v588 = v509;
    *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    v589 = v508;
    *&v590[0] = v516;
    *(&v590[0] + 1) = v505;
    v569 = swift_getOpaqueTypeConformance2();
    v129 = MEMORY[0x277CDF918];
    v570 = MEMORY[0x277CDF918];
    v567 = swift_getWitnessTable();
    v568 = v129;
    v130 = swift_getWitnessTable();
    v565 = v524;
    v566 = v129;
    v563 = swift_getWitnessTable();
    v564 = v129;
    v561 = swift_getWitnessTable();
    v562 = MEMORY[0x277CDFC60];
    v131 = swift_getWitnessTable();
    v559 = v130;
    v560 = v131;
    swift_getWitnessTable();
    sub_24E8D5004(v128, v514);
    (*(v503 + 8))(v128, v504);
  }

  else
  {
    v588 = v571;
    v589 = v572;
    v590[0] = v573[0];
    *(v590 + 9) = *(v573 + 9);
    v125 = *(v121 + *(v124 + 36));
    v126 = v524;
    if (v125 == 7)
    {
      v127 = 0;
    }

    else
    {
      v127 = sub_24F0C8EE8(v125, 1u);
    }

    v132 = *(v96 + *(v525 + 36));
    v571 = v401;
    v572 = v400;
    *&v573[0] = v399;
    *(&v573[0] + 1) = v398;
    LOBYTE(v573[1]) = 0;
    v133 = v388;
    v132(&v588, &v571);
    sub_24F925838();
    v134 = a11;
    if (v127)
    {
      v134 = INFINITY;
    }

    v450 = v134;
    v135 = v389;
    v136 = v521;
    sub_24F926A48();
    (*(v390 + 8))(v133, v136);
    sub_24F925858();
    v548 = v126;
    v137 = MEMORY[0x277CDF918];
    v549 = MEMORY[0x277CDF918];
    v138 = v512;
    v139 = swift_getWitnessTable();
    v140 = v393;
    sub_24F926A48();
    (*(v391 + 8))(v135, v138);
    sub_24F927618();
    v546 = v139;
    v547 = v137;
    v384 = v510;
    v385 = swift_getWitnessTable();
    v141 = v392;
    sub_24F926948();
    (*(v394 + 8))(v140, v384);
    v544 = v385;
    v545 = MEMORY[0x277CDFC60];
    v142 = v519;
    v143 = swift_getWitnessTable();
    v144 = v395;
    sub_24E7896B8(v141, v142, v143);
    v145 = *(v397 + 8);
    v145(v141, v142);
    v146 = v396;
    sub_24E7896B8(v144, v142, v143);
    *&v571 = v509;
    *(&v571 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    v572 = v508;
    *&v573[0] = v516;
    *(&v573[0] + 1) = v505;
    v542 = swift_getOpaqueTypeConformance2();
    v147 = MEMORY[0x277CDF918];
    v543 = MEMORY[0x277CDF918];
    v540 = swift_getWitnessTable();
    v541 = v147;
    v148 = v507;
    v149 = swift_getWitnessTable();
    v150 = v515;
    sub_24ECCCC98(v146, v148, v142);
    v145(v146, v142);
    v151 = v144;
    v96 = v523;
    v145(v151, v142);
    sub_24E836C64(&v588);
    (*(*(v501 - 8) + 56))(v150, 0, 1, v501);
    v538 = v149;
    v539 = v143;
    swift_getWitnessTable();
    sub_24E8D5004(v150, v514);
    (*(v503 + 8))(v150, v504);
  }

LABEL_64:
  v214 = *(v96 + v522[15]);
  v215 = *(v214 + 16);
  if (v215)
  {
    sub_24E615E00(v214 + 40 * v215 - 8, &v588);
    __swift_project_boxed_opaque_existential_1(&v588, *(&v589 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v588);
  }

  else
  {
    memset(v557, 0, sizeof(v557));
    v558 = 0;
  }

  sub_24F09F69C(v96, v495, type metadata accessor for GSKShelf);
  v216 = v493;
  v217 = *(v493 + 16);
  v218 = v490;
  v219 = v494;
  v217(v496, v490, v494);
  sub_24F921928();
  (*(v451 + 16))(v498, v486, v491);
  v220 = v96 + *(v525 + 44);
  v451 = *v220;
  LODWORD(v450) = *(v220 + 8);
  v221 = v518;
  v222 = v518 + 16;
  v491 = *(v518 + 16);
  v491(v517, v96);
  sub_24E60169C(v557, &v588, &qword_27F235830);
  v217(v492, v218, v219);
  v223 = *(v221 + 80);
  v224 = (v223 + 32) & ~v223;
  v490 = v224 + v453;
  v225 = v223 | 7;
  v226 = (v224 + v453 + 7) & 0xFFFFFFFFFFFFFFF8;
  v227 = (*(v216 + 80) + v226 + 40) & ~*(v216 + 80);
  v228 = swift_allocObject();
  v229 = v524;
  *(v228 + 16) = v521;
  *(v228 + 24) = v229;
  v230 = *(v221 + 32);
  v231 = v525;
  (v230)(v228 + v224, v517, v525);
  v232 = v228 + v226;
  v233 = v589;
  *v232 = v588;
  *(v232 + 16) = v233;
  *(v232 + 32) = *&v590[0];
  (*(v493 + 32))(v228 + v227, v492, v494);
  v234 = v454;
  v494 = v222;
  (v491)(v454, v523, v231);
  v492 = v225;
  v235 = swift_allocObject();
  v236 = v524;
  *(v235 + 16) = v521;
  *(v235 + 24) = v236;
  v493 = v224;
  v518 = v221 + 32;
  v454 = v230;
  (v230)(v235 + v224, v234, v231);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226110);
  sub_24F09F654(&qword_27F238838, type metadata accessor for GSKShelf);
  sub_24F09D10C();
  sub_24F09F3C0(&qword_27F2388A8, &qword_27F226110, &unk_24F979000, sub_24F09D5C0);
  v237 = v523;
  sub_24F921D58();
  v238 = v237 + *(v231 + 60);
  v240 = *v238;
  v239 = *(v238 + 8);
  v242 = *(v238 + 16);
  v241 = *(v238 + 24);
  LODWORD(v496) = *(v238 + 32);
  v446 = a9;
  v447 = a10;
  v498 = v239;
  v497 = v241;
  v495 = v240;
  v453 = v242;
  if (v496 != 1)
  {

    sub_24F92BDC8();
    v243 = sub_24F9257A8();
    sub_24F921FD8();

    v244 = v487;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v240, v239, v242, v241, 0);
    v452 = *(v488 + 8);
    v245 = v489;
    v452(v244, v489);

    sub_24F92BDC8();
    v246 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v240, v239, v242, v241, 0);
    v452(v244, v245);
  }

  v247 = sub_24F925838();
  sub_24F923318();
  v249 = v248;
  v251 = v250;
  v253 = v252;
  v255 = v254;
  v256 = v457;
  (*(v499 + 16))(v457, v513, v500);
  v257 = v256 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318C8) + 36);
  *v257 = v247;
  *(v257 + 8) = v249;
  *(v257 + 16) = v251;
  *(v257 + 24) = v253;
  *(v257 + 32) = v255;
  *(v257 + 40) = 0;
  v258 = sub_24F925858();
  sub_24F923318();
  v259 = v455;
  v260 = v256 + *(v455 + 36);
  *v260 = v258;
  *(v260 + 8) = v261;
  *(v260 + 16) = v262;
  *(v260 + 24) = v263;
  *(v260 + 32) = v264;
  *(v260 + 40) = 0;
  v265 = sub_24EE50CBC();
  v266 = v458;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388C8);
  *&v588 = v259;
  *(&v588 + 1) = v265;
  v267 = swift_getOpaqueTypeConformance2();
  v268 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8);
  v269 = sub_24EE50E00();
  v270 = v460;
  *&v588 = v460;
  *(&v588 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v589 = v268;
  *(&v589 + 1) = v267;
  *&v590[0] = v516;
  *(&v590[0] + 1) = v269;
  swift_getOpaqueTypeConformance2();
  v271 = v456;
  sub_24F926B08();
  (*(v459 + 8))(v266, v270);
  sub_24E601704(v256, &qword_27F2318B0);
  v272 = sub_24F925838();
  sub_24F923318();
  v274 = v273;
  v276 = v275;
  v278 = v277;
  v280 = v279;
  v281 = v271 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D0) + 36);
  *v281 = v272;
  *(v281 + 8) = v274;
  *(v281 + 16) = v276;
  *(v281 + 24) = v278;
  *(v281 + 32) = v280;
  *(v281 + 40) = 0;
  v282 = sub_24F925858();
  sub_24F923318();
  v283 = v485;
  v284 = v271 + *(v485 + 36);
  *v284 = v282;
  *(v284 + 8) = v285;
  *(v284 + 16) = v286;
  *(v284 + 24) = v287;
  *(v284 + 32) = v288;
  *(v284 + 40) = 0;
  (*(v499 + 8))(v513, v500);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D8);
  v290 = sub_24F09D734();
  v291 = sub_24F09D94C();
  v292 = MEMORY[0x277CE1410];
  v293 = MEMORY[0x277CE1428];
  sub_24F925F58();
  sub_24E601704(v271, &qword_27F2387F8);
  v294 = v523;
  if ((v477 & 1) == 0)
  {
    v295 = v523 + *(v525 + 84);
    v296 = *v295;
    if (*(v295 + 8) != 1)
    {

      sub_24F92BDC8();
      v297 = sub_24F9257A8();
      v283 = v485;
      sub_24F921FD8();

      v294 = v523;
      v298 = v487;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v296, 0);
      (*(v488 + 8))(v298, v489);
    }
  }

  *&v588 = v283;
  *(&v588 + 1) = v293;
  *&v589 = v293;
  *(&v589 + 1) = v289;
  *&v590[0] = v290;
  *(&v590[0] + 1) = v292;
  *&v590[1] = v292;
  *(&v590[1] + 1) = v291;
  v299 = swift_getOpaqueTypeConformance2();
  v300 = v461;
  v301 = v466;
  v302 = v502;
  sub_24F925F68();
  (*(v462 + 8))(v302, v301);
  sub_24F4BB32C();
  *&v588 = v301;
  *(&v588 + 1) = v299;
  v303 = swift_getOpaqueTypeConformance2();
  v304 = v465;
  v305 = v469;
  sub_24F925F88();
  (*(v463 + 8))(v300, v305);
  v306 = v476;
  sub_24F4BAE20(v476);
  *&v588 = v305;
  *(&v588 + 1) = v303;
  v307 = swift_getOpaqueTypeConformance2();
  v308 = v467;
  v309 = v472;
  sub_24F925F98();
  sub_24E601704(v306, &qword_27F2387E8);
  (*(v470 + 8))(v304, v309);
  *&v588 = v309;
  *(&v588 + 1) = v307;
  swift_getOpaqueTypeConformance2();
  v310 = v468;
  v311 = v474;
  sub_24F925F18();
  (*(v471 + 8))(v308, v311);
  v312 = v517;
  v313 = v525;
  (v491)(v517, v294, v525);
  v314 = swift_allocObject();
  v315 = v524;
  *(v314 + 16) = v521;
  *(v314 + 24) = v315;
  (v454)(v314 + v493, v312, v313);
  v316 = v464;
  (*(v473 + 32))(v464, v310, v475);
  v317 = (v316 + *(v511 + 36));
  *v317 = sub_24F09F130;
  v317[1] = v314;
  v317[2] = 0;
  v317[3] = 0;
  sub_24E6009C8(v316, v520, &qword_27F238798);
  v318 = v522;
  sub_24E60169C(v294 + v522[16], &v588, &qword_27F21BE38);
  if (*(&v589 + 1))
  {
    sub_24E612C80(&v588, &v551);
    sub_24E615E00(&v551, &v589);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24F09F654(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    *&v588 = sub_24F923598();
    BYTE8(v588) = v319 & 1;
    if (*(v294 + v318[12]) == 1)
    {
      v320 = v433;
      sub_24F924208();
      v321 = v448;
      v322 = v435;
      v323 = v484;
    }

    else
    {
      *&v571 = MEMORY[0x277D84F90];
      sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
      v320 = v433;
      v323 = v484;
      sub_24F92C6A8();
      v321 = v448;
      v322 = v435;
    }

    sub_24E66C1E0();
    sub_24F926AE8();
    (*(v483 + 8))(v320, v323);
    sub_24E88F154(&v588);
    v326 = sub_24F925818();
    sub_24F921988();
    v328 = v327;
    v329 = 0uLL;
    v330 = 0uLL;
    if ((v327 & 1) == 0)
    {
      sub_24F923318();
      *(&v330 + 1) = v331;
      *(&v329 + 1) = v332;
    }

    v523 = v330;
    v525 = v329;
    v333 = v437;
    (*(v439 + 32))(v437, v322, v441);
    v334 = v333 + *(v434 + 36);
    *v334 = v326;
    *(v334 + 24) = v523;
    *(v334 + 8) = v525;
    *(v334 + 40) = v328 & 1;
    v335 = sub_24F925838();
    sub_24F923318();
    v337 = v336;
    v339 = v338;
    v341 = v340;
    v343 = v342;
    v344 = v440;
    sub_24E6009C8(v333, v440, &qword_27F221370);
    v345 = v344 + *(v436 + 36);
    *v345 = v335;
    *(v345 + 8) = v337;
    *(v345 + 16) = v339;
    *(v345 + 24) = v341;
    *(v345 + 32) = v343;
    *(v345 + 40) = 0;
    v346 = sub_24F925858();
    sub_24F923318();
    v348 = v347;
    v350 = v349;
    v352 = v351;
    v354 = v353;
    v355 = v443;
    sub_24E6009C8(v344, v443, &qword_27F221360);
    v356 = v355 + *(v438 + 36);
    *v356 = v346;
    *(v356 + 8) = v348;
    *(v356 + 16) = v350;
    *(v356 + 24) = v352;
    *(v356 + 32) = v354;
    *(v356 + 40) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v357 = v445;
    sub_24E6009C8(v355, v445, &qword_27F221350);
    v358 = (v357 + *(v442 + 36));
    v359 = v572;
    *v358 = v571;
    v358[1] = v359;
    v358[2] = v573[0];
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v357, v321, &qword_27F221340);
    v360 = (v321 + *(v444 + 36));
    v361 = v590[3];
    v360[4] = v590[2];
    v360[5] = v361;
    v360[6] = v590[4];
    v362 = v589;
    *v360 = v588;
    v360[1] = v362;
    v363 = v590[1];
    v360[2] = v590[0];
    v360[3] = v363;
    if (!v496)
    {
      v364 = v495;

      sub_24F92BDC8();
      v365 = sub_24F9257A8();
      sub_24F921FD8();

      v366 = v487;
      sub_24F924838();
      swift_getAtKeyPath();
      v367 = v498;
      v368 = v453;
      v369 = v497;
      sub_24E669FC4(v364, v498, v453, v497, 0);
      *&v525 = *(v488 + 8);
      v370 = v489;
      (v525)(v366, v489);

      sub_24F92BDC8();
      v371 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      v372 = v364;
      v321 = v448;
      sub_24E669FC4(v372, v367, v368, v369, 0);
      (v525)(v366, v370);
    }

    v325 = v480;
    sub_24E8F1098(v480);
    sub_24E601704(v321, &qword_27F221310);
    __swift_destroy_boxed_opaque_existential_1(&v551);
    v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221398);
    (*(*(v373 - 8) + 56))(v325, 0, 1, v373);
  }

  else
  {
    sub_24E601704(&v588, &qword_27F2171D0);
    v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221398);
    v325 = v480;
    (*(*(v324 - 8) + 56))(v480, 1, 1, v324);
  }

  v374 = v503;
  v375 = v515;
  v376 = v504;
  (*(v503 + 16))(v515, v514, v504);
  v550[0] = v375;
  v377 = v478;
  sub_24E60169C(v520, v478, &qword_27F238798);
  v550[1] = v377;
  v378 = v481;
  sub_24E60169C(v325, v481, &qword_27F2387A0);
  v550[2] = v378;
  v556[0] = v376;
  v556[1] = v511;
  v556[2] = v479;
  v551 = v509;
  v552 = &type metadata for IsDebugFocusOverlayEnabled;
  v553 = v508;
  v554 = v516;
  v555 = v505;
  v550[15] = swift_getOpaqueTypeConformance2();
  v379 = MEMORY[0x277CDF918];
  v550[16] = MEMORY[0x277CDF918];
  v550[13] = swift_getWitnessTable();
  v550[14] = v379;
  v380 = swift_getWitnessTable();
  v550[11] = v524;
  v550[12] = v379;
  v550[9] = swift_getWitnessTable();
  v550[10] = v379;
  v550[7] = swift_getWitnessTable();
  v550[8] = MEMORY[0x277CDFC60];
  v381 = swift_getWitnessTable();
  v550[5] = v380;
  v550[6] = v381;
  v550[4] = swift_getWitnessTable();
  v551 = swift_getWitnessTable();
  v552 = sub_24F09F1B4();
  *&v553 = sub_24F09F3C0(&qword_27F238910, &qword_27F2387A0, &unk_24F9C5168, sub_24F09F43C);
  sub_24F57BA64(v550, 3uLL, v556);
  sub_24E601704(v325, &qword_27F2387A0);
  sub_24E601704(v520, &qword_27F238798);
  sub_24E601704(v557, &qword_27F235830);
  v382 = *(v374 + 8);
  v382(v514, v376);
  sub_24E601704(v378, &qword_27F2387A0);
  sub_24E601704(v377, &qword_27F238798);
  return (v382)(v515, v376);
}