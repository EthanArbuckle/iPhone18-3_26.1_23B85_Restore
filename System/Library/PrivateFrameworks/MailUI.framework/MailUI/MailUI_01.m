uint64_t sub_214A84F00(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = sub_214CCD254();
    v3 = *(*(v2 - 8) + 8);
    v3(a1);
    (v3)(a1 + *(v5 + 48), v2);
  }

  return a1;
}

uint64_t IndexPath.mui_next.getter()
{
  result = sub_214CCD354();
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_214CCD364();
    return MEMORY[0x21605B5F0](v3, v2);
  }

  return result;
}

id sub_214A85334(uint64_t a1, uint64_t a2)
{
  v4 = [v2 initWithFirst:a1 second:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_214A8539C()
{
  v2 = qword_280C7C5E8;
  if (!qword_280C7C5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_214A854B4(void *a1)
{
  if (a1[1])
  {
    MEMORY[0x277D82BD8](a1[1]);
    MEMORY[0x277D82BD8](a1[2]);
    MEMORY[0x277D82BD8](a1[4]);
    MEMORY[0x277D82BD8](a1[5]);
    MEMORY[0x277D82BD8](a1[7]);
    MEMORY[0x277D82BD8](a1[8]);
    MEMORY[0x277D82BD8](a1[10]);
    MEMORY[0x277D82BD8](a1[11]);
    MEMORY[0x277D82BD8](a1[13]);
    MEMORY[0x277D82BD8](a1[14]);
  }

  return a1;
}

void *sub_214A85640(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v3 = a1[1];
    MEMORY[0x277D82BE0](v3);
    a2[1] = v3;
    v4 = a1[2];
    MEMORY[0x277D82BE0](v4);
    a2[2] = v4;
    *(a2 + 24) = *(a1 + 24);
    v5 = a1[4];
    MEMORY[0x277D82BE0](v5);
    a2[4] = v5;
    v6 = a1[5];
    MEMORY[0x277D82BE0](v6);
    a2[5] = v6;
    *(a2 + 48) = *(a1 + 48);
    v7 = a1[7];
    MEMORY[0x277D82BE0](v7);
    a2[7] = v7;
    v8 = a1[8];
    MEMORY[0x277D82BE0](v8);
    a2[8] = v8;
    *(a2 + 72) = *(a1 + 72);
    v9 = a1[10];
    MEMORY[0x277D82BE0](v9);
    a2[10] = v9;
    v10 = a1[11];
    MEMORY[0x277D82BE0](v10);
    a2[11] = v10;
    *(a2 + 96) = *(a1 + 96);
    v11 = a1[13];
    MEMORY[0x277D82BE0](v11);
    a2[13] = v11;
    v12 = a1[14];
    MEMORY[0x277D82BE0](v12);
    a2[14] = v12;
  }

  else
  {
    memcpy(a2, a1, 0x78uLL);
  }

  return a2;
}

Swift::Bool __swiftcall MUIAvatarImageGeneratorResult.needsBorder(for:)(UIUserInterfaceStyle a1)
{
  v11 = 0;
  v16 = a1;
  v15 = v1;
  if (([v1 canShowBorder] & 1) == 0)
  {
    return 0;
  }

  sub_214A866E0(v12);
  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v14, __dst, sizeof(v14));
  if (!v14[1])
  {
    return 0;
  }

  v11 = v14;
  if (a1 < UIUserInterfaceStyleDark)
  {
    memcpy(v8, v14, sizeof(v8));
    v7 = 0;
    v4 = ArtworkColorAnalyzer.Analysis.needsBorder(in:)(&v7);
    sub_214A86594(v14);
    return v4;
  }

  else
  {
    if (a1 != UIUserInterfaceStyleDark)
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      return 0;
    }

    memcpy(v10, v14, sizeof(v10));
    v9 = 1;
    v3 = ArtworkColorAnalyzer.Analysis.needsBorder(in:)(&v9);
    sub_214A86594(v14);
    return v3;
  }
}

_BYTE *sub_214A85A28(_BYTE *a1, _BYTE *a2)
{
  if (*(a1 + 1) < 2uLL)
  {
    memcpy(a2, a1, 0x78uLL);
  }

  else
  {
    *a2 = *a1;
    v3 = *(a1 + 1);
    MEMORY[0x277D82BE0](v3);
    *(a2 + 1) = v3;
    v4 = *(a1 + 2);
    MEMORY[0x277D82BE0](v4);
    *(a2 + 2) = v4;
    a2[24] = a1[24];
    v5 = *(a1 + 4);
    MEMORY[0x277D82BE0](v5);
    *(a2 + 4) = v5;
    v6 = *(a1 + 5);
    MEMORY[0x277D82BE0](v6);
    *(a2 + 5) = v6;
    a2[48] = a1[48];
    v7 = *(a1 + 7);
    MEMORY[0x277D82BE0](v7);
    *(a2 + 7) = v7;
    v8 = *(a1 + 8);
    MEMORY[0x277D82BE0](v8);
    *(a2 + 8) = v8;
    a2[72] = a1[72];
    v9 = *(a1 + 10);
    MEMORY[0x277D82BE0](v9);
    *(a2 + 10) = v9;
    v10 = *(a1 + 11);
    MEMORY[0x277D82BE0](v10);
    *(a2 + 11) = v10;
    a2[96] = a1[96];
    v11 = *(a1 + 13);
    MEMORY[0x277D82BE0](v11);
    *(a2 + 13) = v11;
    v12 = *(a1 + 14);
    MEMORY[0x277D82BE0](v12);
    *(a2 + 14) = v12;
  }

  return a2;
}

uint64_t MUIAvatarImageGeneratorResult.description.getter()
{
  v14[7] = 0;
  v14[5] = sub_214CD03B4();
  v14[6] = v0;
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  v10 = *&v12[OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress];
  v11 = *&v12[OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress + 8];

  v14[3] = v10;
  v14[4] = v11;
  sub_214CD0394();
  sub_214A61B48();
  v2 = sub_214CCF614();
  MEMORY[0x21605E650](v2);

  v14[2] = [v12 avatarStyle];
  type metadata accessor for MUIAvatarStyle();
  sub_214A86928();
  sub_214CD0384();
  v3 = sub_214CCF614();
  MEMORY[0x21605E650](v3);

  v14[1] = [v12 avatarType];
  type metadata accessor for MUIAvatarType();
  sub_214A86BE4();
  sub_214CD0384();
  v4 = sub_214CCF614();
  MEMORY[0x21605E650](v4);

  v13 = *&v12[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  MEMORY[0x277D82BE0](v13);
  v14[0] = v13;
  sub_214A671E8(v14);
  sub_214CD0384();
  v5 = sub_214CCF614();
  MEMORY[0x21605E650](v5);

  v9 = *&v12[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  *&v6 = MEMORY[0x277D82BE0](v9).n128_u64[0];
  if (v9)
  {
    [v9 imageDataAvailable];
    MEMORY[0x277D82BD8](v9);
  }

  sub_214CD0384();
  v7 = sub_214CCF614();
  MEMORY[0x21605E650](v7);

  sub_214A61B48();
  return sub_214CCF5F4();
}

Swift::Bool __swiftcall ArtworkColorAnalyzer.Analysis.needsBorder(in:)(MailUI::ArtworkColorAnalyzer::Analysis::ColorScheme in)
{
  v10 = *in;
  v11 = *(v1 + 8);
  if (*v1)
  {
    return 1;
  }

  else
  {
    MEMORY[0x277D82BE0](v11);
    sub_214B2374C(v11, v12);
    if (v10)
    {
      v4 = sub_214B23CE0();
      memcpy(v14, v4, sizeof(v14));
      v7 = sub_214A86FC4();
      v5 = sub_214A6BC90();
      return sub_214B238B8(v14, v5 & 1, v7);
    }

    else
    {
      v2 = sub_214B23858();
      memcpy(__dst, v2, sizeof(__dst));
      v8 = sub_214A86FC4();
      v3 = sub_214A6BC90();
      return sub_214B238B8(__dst, v3 & 1, v8);
    }
  }
}

id MUIAvatarImageGeneratorResult.contact.getter()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BFD5A8(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = &v6[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

void *sub_214A86594(void *a1)
{
  MEMORY[0x277D82BD8](a1[1]);
  MEMORY[0x277D82BD8](a1[2]);
  MEMORY[0x277D82BD8](a1[4]);
  MEMORY[0x277D82BD8](a1[5]);
  MEMORY[0x277D82BD8](a1[7]);
  MEMORY[0x277D82BD8](a1[8]);
  MEMORY[0x277D82BD8](a1[10]);
  MEMORY[0x277D82BD8](a1[11]);
  MEMORY[0x277D82BD8](a1[13]);
  MEMORY[0x277D82BD8](a1[14]);
  return a1;
}

uint64_t MUIAvatarImageGeneratorResult.style.getter()
{
  v2 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_style);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void *sub_214A866E0@<X0>(void *a1@<X8>)
{
  v15 = 0;
  __src = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis);
  swift_beginAccess();
  memcpy(__dst, __src, sizeof(__dst));
  sub_214A85A28(__dst, v14);
  swift_endAccess();
  memcpy(v17, __dst, sizeof(v17));
  if (v17[1] == 1)
  {
    sub_214A87F7C(v5, v10);
    memcpy(v11, v10, sizeof(v11));
    sub_214A85640(v11, v9);
    memcpy(v12, v11, sizeof(v12));
    v3 = (v5 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis);
    swift_beginAccess();
    memcpy(v13, v3, sizeof(v13));
    memcpy(v3, v12, 0x78uLL);
    sub_214A8FC3C(v13);
    swift_endAccess();
    sub_214A85640(v11, v8);
    memcpy(a1, v11, 0x78uLL);
    return sub_214A854B4(v11);
  }

  else
  {
    sub_214A85640(v17, v7);
    memcpy(a1, v17, 0x78uLL);
    return sub_214A854B4(v17);
  }
}

uint64_t type metadata accessor for MUIAvatarStyle()
{
  v4 = qword_280C7CC58;
  if (!qword_280C7CC58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7CC58);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A86928()
{
  v2 = qword_280C7CC60;
  if (!qword_280C7CC60)
  {
    type metadata accessor for MUIAvatarStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CC60);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIAvatarImageGeneratorResult.type.getter()
{
  v2 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_type);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t type metadata accessor for MUIAvatarType()
{
  v4 = qword_280C7CCF0;
  if (!qword_280C7CCF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7CCF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A86BE4()
{
  v2 = qword_280C7CCF8;
  if (!qword_280C7CCF8)
  {
    type metadata accessor for MUIAvatarType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A86DE8()
{
  v2 = qword_280C7CC70;
  if (!qword_280C7CC70)
  {
    type metadata accessor for MUIAvatarStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A86F4C()
{
  v2 = qword_280C7EAA0;
  if (!qword_280C7EAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A871C0(uint64_t a1)
{
  v3 = sub_214CCD254();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t MUILastSeenBucketHelper.lastSeenDate(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a1;
  v8 = v2;
  MEMORY[0x277D82BE0](v2);
  v7 = v2;
  sub_214C511F4(a1, sub_214A87390, v6, a2);
  return (MEMORY[0x277D82BD8])();
}

uint64_t EMCategoryTypeForBucket(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_214A87308()
{
  v2 = qword_280C7CFB0;
  if (!qword_280C7CFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFB0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214A87398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12 = a4;
  v29 = a1;
  v23 = a2;
  v21 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v18 = 0;
  v13 = sub_214CCD254();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v17 = &v9 - v16;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v20 = &v9 - v19;
  v26 = sub_214CCD154();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v22 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v5 = &v9 - v22;
  v27 = &v9 - v22;
  v34 = v4;
  v33 = v6;
  v32 = v7;
  v30 = *(v7 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 16);
  MEMORY[0x277D82BE0](v30);
  MEMORY[0x277D82BE0](v29);
  (*(v24 + 16))(v5, v23, v26);
  v28 = sub_214CCD104();
  (*(v24 + 8))(v27, v26);
  v31 = [v30 lastSeenDateForCategoryType:v29 inMailboxWithExternalURL:v28];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  if (v31)
  {
    v11 = v31;
    v10 = v31;
    sub_214CCD224();
    (*(v14 + 32))(v20, v17, v13);
    (*(v14 + 56))(v20, 0, 1, v13);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v14 + 56))(v20, 1, 1, v13);
  }

  return sub_214A87704(v20, v12);
}

void *sub_214A87704(const void *a1, void *a2)
{
  v6 = sub_214CCD254();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_214A8782C(const void *a1, void *a2)
{
  v6 = sub_214CCD254();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_214A87954(const void *a1, void *a2)
{
  v7 = sub_214CCD254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t MUILastSeenBucketHelper.lastSeenDisplayDate(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a1;
  v8 = v2;
  MEMORY[0x277D82BE0](v2);
  v7 = v2;
  sub_214C511F4(a1, sub_214A87F74, v6, a2);
  return (MEMORY[0x277D82BD8])();
}

void *sub_214A87C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12 = a4;
  v29 = a1;
  v23 = a2;
  v21 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v18 = 0;
  v13 = sub_214CCD254();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v17 = &v9 - v16;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v20 = &v9 - v19;
  v26 = sub_214CCD154();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v22 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v5 = &v9 - v22;
  v27 = &v9 - v22;
  v34 = v4;
  v33 = v6;
  v32 = v7;
  v30 = *(v7 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 16);
  MEMORY[0x277D82BE0](v30);
  MEMORY[0x277D82BE0](v29);
  (*(v24 + 16))(v5, v23, v26);
  v28 = sub_214CCD104();
  (*(v24 + 8))(v27, v26);
  v31 = [v30 lastSeenDisplayDateForCategoryType:v29 inMailboxWithExternalURL:v28];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  if (v31)
  {
    v11 = v31;
    v10 = v31;
    sub_214CCD224();
    (*(v14 + 32))(v20, v17, v13);
    (*(v14 + 56))(v20, 0, 1, v13);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    (*(v14 + 56))(v20, 1, 1, v13);
  }

  return sub_214A87704(v20, v12);
}

double sub_214A87F7C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v12 = 0;
  __src[15] = a1;
  v7 = sub_214BFDE10();
  if (v7)
  {
    v24 = v7;
    MEMORY[0x277D82BE0](v7);
    ArtworkColorAnalyzer.init(image:)(v7, &v21);
    v5 = v21;
    v3 = v22;
    v4 = v23;
    v18 = v21;
    v19 = v22;
    v20 = v23;
    MEMORY[0x277D82BE0](v21);
    if (v5)
    {
      v8[0] = v5;
      v8[1] = v3;
      v8[2] = v4;
      ArtworkColorAnalyzer.analyze()(&v17);
      sub_214A671E8(v8);
      memcpy(v9, &v17, sizeof(v9));
      memcpy(v10, v9, sizeof(v10));
      memcpy(v25, v10, sizeof(v25));
    }

    else
    {
      memset(v16, 0, sizeof(v16));
      memcpy(v25, v16, sizeof(v25));
    }

    memcpy(v15, v25, sizeof(v15));
    if (v15[1])
    {
      v12 = v15;
      sub_214A8FA8C(v15, v11);
      memcpy(v13, v15, sizeof(v13));
      memcpy(a2, v13, 0x78uLL);
      sub_214A86594(v15);
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      memcpy(a2, v14, 0x78uLL);
    }

    MEMORY[0x277D82BD8](v5);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  else
  {
    memset(__src, 0, 120);
    memcpy(a2, __src, 0x78uLL);
  }

  return result;
}

void ArtworkColorAnalyzer.init(image:)(void *a1@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8 = 0;
  v9 = a1;
  v6 = [a1 CGImage];
  if (v6)
  {
    v8 = v6;
    [a1 size];
    ArtworkColorAnalyzer.init(sourceImage:preferredImageSize:)(v6, v7, v2, v3);
    v10 = v7[0];
    v11 = v7[1];
    v12 = v7[2];
    sub_214A88434(&v10, a2);
    MEMORY[0x277D82BD8](a1);
    sub_214A671E8(&v10);
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void *ArtworkColorAnalyzer.init(sourceImage:preferredImageSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = 0;
  v10 = 0.0;
  v11 = 0.0;
  MEMORY[0x277D82BE0](a1);
  v9 = a1;
  v10 = a3;
  v11 = a4;
  sub_214A88434(&v9, a2);
  MEMORY[0x277D82BD8](a1);
  return sub_214A671E8(&v9);
}

__n128 sub_214A88434(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  return result;
}

void __swiftcall ArtworkColorAnalyzer.analyze()(MailUI::ArtworkColorAnalyzer::Analysis *__return_ptr retstr)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  bzero(__dst, 0x211uLL);
  v2 = v1[1];
  v3 = v1[2];
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v5 = sub_214A886AC();
  sub_214A899AC(v5, v10);
  memcpy(__dst, v10, 0x211uLL);
  sub_214A89E50(retstr);
  sub_214A89DEC(__dst);
}

uint64_t sub_214A886AC()
{
  v72 = 0;
  v103 = 0.0;
  v102 = 0.0;
  v101 = 0;
  v95 = 0;
  v92 = 0;
  v86 = 0;
  v73 = sub_214CCCE34();
  v74 = *(v73 - 8);
  v75 = v74;
  MEMORY[0x28223BE20](0);
  v76 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_214CCDA74();
  v78 = *(v77 - 8);
  v79 = v78;
  v80 = *(v78 + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = v18 - v82;
  MEMORY[0x28223BE20](v18 - v82);
  v83 = v18 - v82;
  v84 = *v0;
  v2 = *(v0 + 8);
  v85 = *(v0 + 16);
  v101 = v84;
  v102 = v2;
  v103 = v85;
  if (v2 <= 0.0 || v85 <= 0.0)
  {
    v14 = v81;
    v15 = sub_214B22F80();
    (*(v79 + 16))(v14, v15, v77);
    v37 = sub_214CCDA54();
    v34 = v37;
    v36 = sub_214CCFBA4();
    v35 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v38 = sub_214CD03C4();
    if (os_log_type_enabled(v37, v36))
    {
      v33 = v71;
      v25 = sub_214CCFF24();
      v21 = v25;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v23 = 0;
      v26 = sub_214A632C4(0);
      v24 = v26;
      v27 = sub_214A632C4(v23);
      v99 = v25;
      v98 = v26;
      v97 = v27;
      v28 = 0;
      v29 = &v99;
      sub_214A6627C(0, &v99);
      sub_214A6627C(v28, v29);
      v96 = v38;
      v30 = v18;
      MEMORY[0x28223BE20](v18);
      v31 = &v18[-6];
      v18[-4] = v16;
      v18[-3] = &v98;
      v18[-2] = &v97;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      v17 = v33;
      sub_214CCF764();
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v34, v35, "Zero-sized image being analyzed", v21, 2u);
        v20 = 0;
        sub_214A669DC(v24);
        sub_214A669DC(v27);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    (*(v79 + 8))(v81, v77);
    v100 = 22;
    v18[1] = sub_214B23DA4();
    sub_214B23D78();
    sub_214CCD054();
    v19 = sub_214CCCE24();
    swift_willThrow();
    (*(v75 + 8))(v76, v73, 0);
    result = v19;
    v41 = v19;
  }

  else
  {
    v69 = *sub_214A89248();
    v68 = v69;
    v3 = v69;
    v95 = v69;
    v4 = v84;
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v84, v69);

    v93 = CopyWithColorSpace;
    v5 = v84;
    if (v93)
    {
      v94 = v93;
    }

    else
    {
      v6 = v84;
      v94 = v84;
      if (v93)
      {
        sub_214A671E8(&v93);
      }
    }

    v65 = v94;
    v92 = v94;
    v66 = sub_214A89938(0x2000);
    v7 = sub_214A89938(2);
    result = (v66 + v7);
    v9 = __CFADD__(v66, v7);
    v67 = result;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v64 = __CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0x58uLL, v68, v67);
      if (v64)
      {
        v63 = v64;
        v61 = v64;
        v62 = v71;
        v86 = v64;
        sub_214A6BC90();
        sub_214CCFB44();

        return v61;
      }

      else
      {
        v10 = v83;
        v11 = sub_214B22F80();
        (*(v79 + 16))(v10, v11, v77);
        v59 = sub_214CCDA54();
        v56 = v59;
        v58 = sub_214CCFBA4();
        v57 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
        v60 = sub_214CD03C4();
        if (os_log_type_enabled(v59, v58))
        {
          v55 = v71;
          v47 = sub_214CCFF24();
          v43 = v47;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
          v45 = 0;
          v48 = sub_214A632C4(0);
          v46 = v48;
          v49 = sub_214A632C4(v45);
          v90 = v47;
          v89 = v48;
          v88 = v49;
          v50 = 0;
          v51 = &v90;
          sub_214A6627C(0, &v90);
          sub_214A6627C(v50, v51);
          v87 = v60;
          v52 = v18;
          MEMORY[0x28223BE20](v18);
          v53 = &v18[-6];
          v18[-4] = v12;
          v18[-3] = &v89;
          v18[-2] = &v88;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
          sub_214A810E0();
          v13 = v55;
          sub_214CCF764();
          if (v13)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_214A5E000, v56, v57, "Failed to create CGBitmapContext", v43, 2u);
            v42 = 0;
            sub_214A669DC(v46);
            sub_214A669DC(v49);
            sub_214CCFF04();
          }
        }

        else
        {
        }

        (*(v79 + 8))(v83, v77);
        v91 = 22;
        v39 = sub_214B23DA4();
        sub_214B23D78();
        sub_214CCD054();
        v40 = sub_214CCCE24();
        swift_willThrow();
        (*(v75 + 8))(v76, v73, 0);

        result = v40;
        v41 = v40;
      }
    }
  }

  return result;
}

uint64_t sub_214A89228()
{
  result = sub_214A892A8();
  qword_280C7CC30 = result;
  return result;
}

uint64_t *sub_214A89248()
{
  if (qword_280C7CC28 != -1)
  {
    swift_once();
  }

  return &qword_280C7CC30;
}

uint64_t sub_214A892A8()
{
  v45 = 0;
  v44 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v46 = sub_214CCDA74();
  v47 = *(v46 - 8);
  v48 = v47;
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v10 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277CBCA68];
  v51 = &v61;
  swift_beginAccess();
  v53 = *v50;
  v52 = v53;
  swift_endAccess();
  if (v53)
  {
    v43 = v52;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v40 = v43;
  v1 = v43;
  v42 = ColorSyncProfileCreateWithName(v40);
  v41 = v42;

  if (v42 && (v39 = v41, v36 = v41, v56 = v41, v2 = v41, v38 = ColorSyncProfileCopyData(v36, 0), v37 = v38, v36, v38 && (v35 = v37, v32 = v37, v55 = v37, v3 = v37, v34 = CGColorSpaceCreateWithICCData(v32), v33 = v34, swift_unknownObjectRelease(), v34)))
  {
    v31 = v33;
    v30 = v33;
    v54 = v33;
    v4 = v32;

    v5 = v36;
    return v30;
  }

  else
  {
    v7 = v49;
    v8 = sub_214B22F80();
    (*(v48 + 16))(v7, v8, v46);
    v28 = sub_214CCDA54();
    v25 = v28;
    v27 = sub_214CCFBA4();
    v26 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v29 = sub_214CD03C4();
    if (os_log_type_enabled(v28, v27))
    {
      v9 = v44;
      v16 = sub_214CCFF24();
      v12 = v16;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v14 = 0;
      v17 = sub_214A632C4(0);
      v15 = v17;
      v18 = sub_214A632C4(v14);
      v60 = v16;
      v59 = v17;
      v58 = v18;
      v19 = 0;
      v20 = &v60;
      sub_214A6627C(0, &v60);
      sub_214A6627C(v19, v20);
      v57 = v29;
      v21 = &v10;
      MEMORY[0x28223BE20](&v10);
      v22 = &v10 - 6;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v24 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v25, v26, "failed to create sRGB profile", v12, 2u);
        v10 = 0;
        sub_214A669DC(v15);
        sub_214A669DC(v18);
        sub_214CCFF04();

        v11 = v24;
      }
    }

    else
    {

      v11 = v44;
    }

    (*(v48 + 8))(v49, v46);
    sub_214B11080();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

void *sub_214A899AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  bzero(v6, 0x211uLL);
  v5[67] = a1;
  v6[1] = sub_214CD03C4();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = sub_214CD03C4();
  v6[5] = sub_214CD03C4();
  v6[6] = sub_214CD03C4();
  memset(&v6[7], 0, 40);
  LOBYTE(v6[12]) = 1;
  memset(&v6[13], 0, 40);
  LOBYTE(v6[18]) = 1;
  memset(&v6[19], 0, 40);
  LOBYTE(v6[24]) = 1;
  memset(&v6[25], 0, 40);
  LOBYTE(v6[30]) = 1;
  memset(&v6[31], 0, 40);
  LOBYTE(v6[36]) = 1;
  memset(&v6[37], 0, 40);
  LOBYTE(v6[42]) = 1;
  memset(&v6[43], 0, 40);
  LOBYTE(v6[48]) = 1;
  memset(&v6[49], 0, 40);
  LOBYTE(v6[54]) = 1;
  memset(&v6[55], 0, 40);
  LOBYTE(v6[60]) = 1;
  memset(&v6[61], 0, 40);
  LOBYTE(v6[66]) = 1;
  MEMORY[0x277D82BE0](a1);
  v6[0] = a1;
  memcpy(__dst, v6, 0x211uLL);
  sub_214A89C30(__dst, v5);
  MEMORY[0x277D82BD8](a1);
  sub_214A89DEC(v6);
  return memcpy(a2, __dst, 0x211uLL);
}

void *sub_214A89C30(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  a2[2] = a1[2];
  a2[3] = a1[3];
  v5 = a1[4];

  a2[4] = v5;
  v6 = a1[5];

  a2[5] = v6;
  v7 = a1[6];

  a2[6] = v7;
  memcpy(a2 + 7, a1 + 7, 0x29uLL);
  memcpy(a2 + 13, a1 + 13, 0x29uLL);
  memcpy(a2 + 19, a1 + 19, 0x29uLL);
  memcpy(a2 + 25, a1 + 25, 0x29uLL);
  memcpy(a2 + 31, a1 + 31, 0x29uLL);
  memcpy(a2 + 37, a1 + 37, 0x29uLL);
  memcpy(a2 + 43, a1 + 43, 0x29uLL);
  memcpy(a2 + 49, a1 + 49, 0x29uLL);
  memcpy(a2 + 55, a1 + 55, 0x29uLL);
  memcpy(a2 + 61, a1 + 61, 0x29uLL);
  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214A89DEC(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
}

void sub_214A89E50(uint64_t a1@<X8>)
{
  v57 = v1;
  sub_214A8A8EC();
  if (!v2)
  {
    sub_214A8C228();
    sub_214A8CDE4();
    sub_214A8D70C();
    sub_214A8E014();
    sub_214A8F1B0();
    if (*(v32 + 96))
    {
      v30 = 0;
    }

    else
    {
      memcpy(__dst, (v32 + 56), sizeof(__dst));
      v30 = sub_214B25678();
    }

    v55 = v30;
    if (v30)
    {
      v56 = v55;
    }

    else
    {
      v56 = [objc_opt_self() blackColor];
    }

    v29 = v56;
    if (*(v32 + 144))
    {
      v28 = 0;
    }

    else
    {
      memcpy(v70, (v32 + 104), sizeof(v70));
      v28 = sub_214B25678();
    }

    v53 = v28;
    if (v28)
    {
      v54 = v53;
    }

    else
    {
      v54 = [objc_opt_self() blackColor];
    }

    v26 = v54;
    v27 = *(v32 + 24) > 10.0;
    if (*(v32 + 192))
    {
      v25 = 0;
    }

    else
    {
      memcpy(v69, (v32 + 152), sizeof(v69));
      v25 = sub_214B25678();
    }

    v51 = v25;
    if (v25)
    {
      v52 = v51;
    }

    else
    {
      v52 = [objc_opt_self() whiteColor];
    }

    v24 = v52;
    if (*(v32 + 240))
    {
      v23 = 0;
    }

    else
    {
      memcpy(v68, (v32 + 200), sizeof(v68));
      v23 = sub_214B25678();
    }

    v49 = v23;
    if (v23)
    {
      v50 = v49;
    }

    else
    {
      v50 = [objc_opt_self() grayColor];
    }

    v22 = v50;
    if (*(v32 + 288))
    {
      v21 = 0;
    }

    else
    {
      memcpy(v67, (v32 + 248), sizeof(v67));
      v21 = sub_214B25678();
    }

    v47 = v21;
    if (v21)
    {
      v48 = v47;
    }

    else
    {
      v48 = [objc_opt_self() grayColor];
    }

    v20 = v48;
    if (*(v32 + 336))
    {
      v19 = 0;
    }

    else
    {
      memcpy(v66, (v32 + 296), sizeof(v66));
      v19 = sub_214B25678();
    }

    v45 = v19;
    if (v19)
    {
      v46 = v45;
    }

    else
    {
      v46 = [objc_opt_self() grayColor];
    }

    v18 = v46;
    if (*(v32 + 144))
    {
      v17 = 2;
    }

    else
    {
      memcpy(v65, (v32 + 104), sizeof(v65));
      v17 = sub_214B25028();
    }

    v44 = v17;
    if (v17 == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v44;
    }

    if (*(v32 + 192))
    {
      v15 = 2;
    }

    else
    {
      memcpy(v64, (v32 + 152), sizeof(v64));
      v15 = sub_214B25028();
    }

    v43 = v15;
    if (v15 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = v43;
    }

    if (*(v32 + 240))
    {
      v13 = 2;
    }

    else
    {
      memcpy(v63, (v32 + 200), sizeof(v63));
      v13 = sub_214B25028();
    }

    v42 = v13;
    if (v13 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = v42;
    }

    if (*(v32 + 288))
    {
      v11 = 2;
    }

    else
    {
      memcpy(v62, (v32 + 248), sizeof(v62));
      v11 = sub_214B25028();
    }

    v41 = v11;
    if (v11 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v41;
    }

    if (*(v32 + 384))
    {
      v9 = 0;
    }

    else
    {
      memcpy(v61, (v32 + 344), sizeof(v61));
      v9 = sub_214B25678();
    }

    v39 = v9;
    if (v9)
    {
      v40 = v39;
    }

    else
    {
      v40 = [objc_opt_self() grayColor];
    }

    v8 = v40;
    if (*(v32 + 432))
    {
      v7 = 0;
    }

    else
    {
      memcpy(v60, (v32 + 392), sizeof(v60));
      v7 = sub_214B25678();
    }

    v37 = v7;
    if (v7)
    {
      v38 = v37;
    }

    else
    {
      v38 = [objc_opt_self() grayColor];
    }

    v6 = v38;
    if (*(v32 + 480))
    {
      v5 = 0;
    }

    else
    {
      memcpy(v59, (v32 + 440), sizeof(v59));
      v5 = sub_214B25678();
    }

    v35 = v5;
    if (v5)
    {
      v36 = v35;
    }

    else
    {
      v36 = [objc_opt_self() grayColor];
    }

    v4 = v36;
    if (*(v32 + 528))
    {
      v3 = 0;
    }

    else
    {
      memcpy(v58, (v32 + 488), sizeof(v58));
      v3 = sub_214B25678();
    }

    v33 = v3;
    if (v3)
    {
      v34 = v33;
    }

    else
    {
      v34 = [objc_opt_self() grayColor];
    }

    sub_214A8F748(v29, v26, v27, v24, v22, v20, v18, v16 & 1, a1, v14 & 1, v12 & 1, v10 & 1, v8, v6, v4, v34);
  }
}

void sub_214A8A8EC()
{
  v199 = v289;
  v203 = 0;
  v288 = 0;
  v287 = 0;
  v286 = 0;
  v202 = 0;
  v279 = 0;
  v278 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v266 = 0.0;
  v265 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v246 = 0;
  v245 = 0;
  v243 = 0.0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v234 = 0;
  v233 = 0;
  v231 = 0.0;
  v229 = 0.0;
  v227 = 0.0;
  v225 = 0.0;
  v223 = 0.0;
  v204 = sub_214CCCE34();
  v205 = *(v204 - 8);
  v206 = v205;
  MEMORY[0x28223BE20](0);
  v207 = v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_214CCDA74();
  v209 = *(v208 - 8);
  v210 = v209;
  v211 = *(v209 + 64);
  MEMORY[0x28223BE20](v208 - 8);
  v213 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
  v212 = v62 - v213;
  MEMORY[0x28223BE20](v62 - v213);
  v214 = v62 - v213;
  v288 = v0;
  v215 = *v0;
  v2 = v215;
  Height = CGBitmapContextGetHeight(v215);
  v216 = Height;
  v287 = Height;

  v217 = *v0;
  v3 = v217;
  Width = CGBitmapContextGetWidth(v217);
  v286 = Width;

  if (Height != 22 || Width != 22)
  {
    v39 = v212;
    v40 = sub_214B22F80();
    (*(v210 + 16))(v39, v40, v208);
    v112 = sub_214CCDA54();
    v86 = v112;
    v111 = sub_214CCFBA4();
    v87 = v111;
    v93 = 17;
    v99 = 7;
    v102 = swift_allocObject();
    v88 = v102;
    v92 = 0;
    *(v102 + 16) = 0;
    v103 = swift_allocObject();
    v89 = v103;
    v95 = 8;
    *(v103 + 16) = 8;
    v98 = 32;
    v41 = swift_allocObject();
    v90 = v41;
    *(v41 + 16) = sub_214B25778;
    v97 = 0;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v90;
    v104 = v42;
    v91 = v42;
    *(v42 + 16) = sub_214B26858;
    *(v42 + 24) = v43;
    v105 = swift_allocObject();
    v94 = v105;
    *(v105 + 16) = v92;
    v106 = swift_allocObject();
    v96 = v106;
    *(v106 + 16) = v95;
    v44 = swift_allocObject();
    v45 = v97;
    v100 = v44;
    *(v44 + 16) = sub_214B25778;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v100;
    v109 = v46;
    v101 = v46;
    *(v46 + 16) = sub_214B26858;
    *(v46 + 24) = v47;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v107 = sub_214CD03C4();
    v108 = v48;

    v49 = v102;
    v50 = v108;
    *v108 = sub_214A662DC;
    v50[1] = v49;

    v51 = v103;
    v52 = v108;
    v108[2] = sub_214A662DC;
    v52[3] = v51;

    v53 = v104;
    v54 = v108;
    v108[4] = sub_214A662E4;
    v54[5] = v53;

    v55 = v105;
    v56 = v108;
    v108[6] = sub_214A662DC;
    v56[7] = v55;

    v57 = v106;
    v58 = v108;
    v108[8] = sub_214A662DC;
    v58[9] = v57;

    v59 = v108;
    v60 = v109;
    v108[10] = sub_214A662E4;
    v59[11] = v60;
    sub_214A63280();

    if (os_log_type_enabled(v112, v111))
    {
      v83 = v200;
      v79 = sub_214CCFF24();
      v75 = v79;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v77 = 0;
      v80 = sub_214A632C4(0);
      v78 = v80;
      v81 = sub_214A632C4(v77);
      v284 = v79;
      v283 = v80;
      v282 = v81;
      v82 = &v284;
      sub_214A6627C(0, &v284);
      sub_214A6627C(2, v82);
      v61 = v83;
      v280 = sub_214A662DC;
      v281 = v88;
      sub_214A66290(&v280, v82, &v283, &v282);
      v84 = v61;
      v85 = v61;
      if (v61)
      {
        v74 = 0;

        __break(1u);
      }

      else
      {
        v280 = sub_214A662DC;
        v281 = v89;
        sub_214A66290(&v280, &v284, &v283, &v282);
        v72 = 0;
        v73 = 0;
        v280 = sub_214A662E4;
        v281 = v91;
        sub_214A66290(&v280, &v284, &v283, &v282);
        v70 = 0;
        v71 = 0;
        v280 = sub_214A662DC;
        v281 = v94;
        sub_214A66290(&v280, &v284, &v283, &v282);
        v68 = 0;
        v69 = 0;
        v280 = sub_214A662DC;
        v281 = v96;
        sub_214A66290(&v280, &v284, &v283, &v282);
        v66 = 0;
        v67 = 0;
        v280 = sub_214A662E4;
        v281 = v101;
        sub_214A66290(&v280, &v284, &v283, &v282);
        v65 = 0;
        _os_log_impl(&dword_214A5E000, v86, v87, "Image must be %ld x %ld for analysis", v75, 0x16u);
        v64 = 0;
        sub_214A669DC(v78);
        sub_214A669DC(v81);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    (*(v210 + 8))(v212, v208);
    v285 = 22;
    v62[1] = sub_214B23DA4();
    sub_214B23D78();
    sub_214CCD054();
    v63 = sub_214CCCE24();
    swift_willThrow();
    (*(v206 + 8))(v207, v204, 0);
    v115 = v63;
    return;
  }

  v196 = *v201;
  v4 = v196;
  BitmapInfo = CGBitmapContextGetBitmapInfo(v196);
  v197 = BitmapInfo;
  v279 = BitmapInfo;

  v195 = sub_214A8C054(4096, BitmapInfo) || sub_214A8C054(0x2000, v197);
  v191 = v195;
  v278 = v195;
  v193 = *v201;
  v192 = v193;
  v5 = v193;
  Data = CGBitmapContextGetData(v193);
  if (!Data)
  {
    v36 = v214;

    v37 = sub_214B22F80();
    (*(v210 + 16))(v36, v37, v208);
    v133 = sub_214CCDA54();
    v130 = v133;
    v132 = sub_214CCFBA4();
    v131 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v134 = sub_214CD03C4();
    if (os_log_type_enabled(v133, v132))
    {
      v129 = v200;
      v121 = sub_214CCFF24();
      v117 = v121;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v119 = 0;
      v122 = sub_214A632C4(0);
      v120 = v122;
      v123 = sub_214A632C4(v119);
      v276 = v121;
      v275 = v122;
      v274 = v123;
      v124 = 0;
      v125 = &v276;
      sub_214A6627C(0, &v276);
      sub_214A6627C(v124, v125);
      v273 = v134;
      v126 = v62;
      MEMORY[0x28223BE20](v62);
      v127 = &v62[-6];
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      v38 = v129;
      sub_214CCF764();
      if (v38)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v130, v131, "Failed to get data from CGBitmapContext", v117, 2u);
        v116 = 0;
        sub_214A669DC(v120);
        sub_214A669DC(v123);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    (*(v210 + 8))(v214, v208);
    v277 = 22;
    v113 = sub_214B23DA4();
    sub_214B23D78();
    sub_214CCD054();
    v114 = sub_214CCCE24();
    swift_willThrow();
    (*(v206 + 8))(v207, v204, 0);
    v115 = v114;
    return;
  }

  v190 = Data;
  v186 = Data;
  v272 = Data;

  v187 = *v201;
  v6 = v187;
  BytesPerRow = CGBitmapContextGetBytesPerRow(v187);
  v271 = BytesPerRow;

  v189 = v216 * Width;
  if ((v216 * Width) >> 64 != (v216 * Width) >> 63)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((v189 * BytesPerRow) >> 64 != (v189 * BytesPerRow) >> 63)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v270 = v186;
  v7 = __OFSUB__(v216, 1);
  v185 = v216 - 1;
  if (v7)
  {
    goto LABEL_52;
  }

  v269 = v185;
  v8 = __OFSUB__(Width, 1);
  v184 = Width - 1;
  if (v8)
  {
    goto LABEL_53;
  }

  v268 = v184;
  v267 = v216;
  v181 = sub_214A63208();
  v182 = sub_214A76BB8(&v267, MEMORY[0x277D83B88], v181) * 0.5;
  v266 = v182;
  v265 = 0;
  v9 = sub_214B23CE0();
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v260 = *v9;
  v261 = v10;
  v262 = v11;
  v263 = v12;
  v264 = v13;
  v183 = v216 * Width;
  if ((v216 * Width) >> 64 == (v216 * Width) >> 63)
  {
    *(v201 + 8) = sub_214CCF8C4();

    if (v185 <= 0)
    {
      sub_214CD01F4();
      __break(1u);
    }

    v250 = 1;
    v251 = v185;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35288);
    v176 = v177;
    v178 = sub_214A8C094();
    sub_214CCFAC4();
    v179 = 0;
    for (i = v200; ; i = v161)
    {
      v172 = i;
      v173 = v179;
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35290);
      sub_214CD01B4();
      v175 = v248[1];
      if (v249)
      {
        break;
      }

      v171 = v175;
      v169 = v175;
      v246 = v175;
      v170 = v175 * BytesPerRow;
      if ((v171 * BytesPerRow) >> 64 != (v171 * BytesPerRow) >> 63)
      {
        goto LABEL_55;
      }

      v167 = &v186[v170];
      v245 = &v186[v170];
      v244 = v169;
      v14 = sub_214A76BB8(&v244, MEMORY[0x277D83B88], v181);
      v168 = v14 - v182;
      v243 = v14 - v182;
      if (v184 <= 0)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v237 = 1;
      v238 = v184;
      sub_214CCFAC4();
      v165 = v173;
      for (j = v172; ; j = v161)
      {
        v161 = j;
        v162 = v165;
        sub_214CD01B4();
        v163 = v235;
        v164 = v162;
        if (v236)
        {
          break;
        }

        v160 = v163;
        v158 = v163;
        v234 = v163;
        v159 = 4 * v163;
        if ((v160 * 4) >> 64 != (4 * v160) >> 63)
        {
          goto LABEL_56;
        }

        v156 = &v167[v159];
        v233 = &v167[v159];
        v232 = v158;
        v15 = sub_214A76BB8(&v232, MEMORY[0x277D83B88], v181);
        v157 = v15 - v182;
        v231 = v15 - v182;
        if (v191)
        {
          v256 = v156[3];
          v259 = v156[2];
          v258 = v156[1];
          v257 = *v156;
        }

        else
        {
          v256 = *v156;
          v259 = v156[1];
          v258 = v156[2];
          v257 = v156[3];
        }

        v152 = v256;
        v153 = v257;
        v154 = v258;
        v155 = v259;
        v138 = v258;
        v139 = v257;
        v140 = v256;
        v230 = v259;
        v142 = sub_214A8C1B0();
        v141 = MEMORY[0x277D84B78];
        v16 = sub_214A76BB8(&v230, MEMORY[0x277D84B78], v142);
        v143 = 255.0;
        v146 = v16 / 255.0;
        v229 = v16 / 255.0;
        v228 = v138;
        v17 = sub_214A76BB8(&v228, v141, v142);
        v144 = v17 / v143;
        v227 = v17 / v143;
        v226 = v139;
        v18 = sub_214A76BB8(&v226, v141, v142);
        v145 = v18 / v143;
        v225 = v18 / v143;
        v224 = v140;
        v19 = sub_214A76BB8(&v224, v141, v142);
        v148 = v19 / v143;
        v223 = v19 / v143;
        sub_214B23E80(v289, v146, v144, v145, v19 / v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
        v147 = &v222;
        v20 = sub_214CCF904();
        v21 = v147;
        v22 = *v199;
        v23 = v199[1];
        *(v24 + 32) = v291;
        *(v24 + 16) = v23;
        *v24 = v22;
        v20(v21, 0);
        v25 = v148;
        v26 = v157;
        v27 = v168;
        v292 = v290;
        v293 = v290;
        *(v201 + 16) = *(v201 + 16) + v290;
        v150 = 1.0 - v25;
        v220 = v27 * v26;
        v149 = sub_214A75FAC();
        sub_214A86F4C();
        sub_214CD0424();
        v28 = v162;
        *(v201 + 24) = *(v201 + 24) + v150 * v221;
        v29 = v28 + 1;
        v30 = __OFADD__(v28, 1);
        v151 = v29;
        if (v30)
        {
          goto LABEL_57;
        }

        v265 = v151;
        v165 = v151;
      }

      v179 = v164;
    }

    v137 = v172;
    v135 = 400;
    v248[0] = 400;
    v136 = MEMORY[0x277D83B88];
    v31 = sub_214A76BB8(v248, MEMORY[0x277D83B88], v181);
    v32 = v135;
    v33 = v136;
    v34 = v181;
    *(v201 + 16) = *(v201 + 16) / v31;
    v247 = v32;
    v35 = sub_214A76BB8(&v247, v33, v34);
    *(v201 + 24) = *(v201 + 24) / v35;
    return;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

unint64_t sub_214A8C094()
{
  v2 = qword_280C7CFD8;
  if (!qword_280C7CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35288);
    sub_214A8C138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A8C138()
{
  v2 = qword_280C7D020;
  if (!qword_280C7D020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A8C1B0()
{
  v2 = qword_280C7C408;
  if (!qword_280C7C408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C408);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A8C228()
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v57 = v0;
  v56[1] = 0;
  *(v0 + 32) = sub_214CCF8C4();

  v55 = 0;
  v56[0] = sub_214CCF8C4();
  v50 = 0;
  v51 = 400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
  sub_214A8C7F4();
  sub_214CCFAC4();
  while (1)
  {
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367B0);
      sub_214CD01B4();
      v27 = v48;
      if (v49)
      {
        result = v56;
        sub_214A62278();
        return result;
      }

      v47 = v48;
      result = sub_214CCF914();
    }

    while ((v46 & 1) != 0);
    v25 = v27 / 20;
    v45 = v27 / 20;
    v26 = 20 * (v27 / 20);
    if ((v27 / 20 * 20) >> 64 != v26 >> 63)
    {
      break;
    }

    if (__OFSUB__(v27, v26))
    {
      goto LABEL_29;
    }

    v44 = v27 % 20;
    sub_214CCF914();
    memcpy(__dst, v43, 0x28uLL);
    __dst[5] = __dst[4];
    sub_214A8C898(v27 % 20, v25, __dst[4]);
    v24 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35750);
    v4 = sub_214CCF904();
    *v5 = v24;
    v4(v42, 0, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352A0);
    v7 = sub_214CCF904();
    *v8 = 1;
    result = v7(v41, 0, v9);
    if (__OFADD__(v27, 1))
    {
      goto LABEL_30;
    }

    if (v27 + 1 > 400)
    {
      sub_214CD01F4();
      __break(1u);
    }

    v36 = v27 + 1;
    v37 = 400;
    sub_214CCFAC4();
    while (1)
    {
      sub_214CD01B4();
      v23 = v34;
      if (v35)
      {
        break;
      }

      v33 = v34;
      sub_214CCF914();
      if ((v32[47] & 1) == 0)
      {
        sub_214CCF914();
        memcpy(v58, v32, sizeof(v58));
        v22 = sub_214A86FC4();
        v11 = sub_214A6BC90();
        result = sub_214B238B8(v58, v11 & 1, v22);
        if (result)
        {
          v31 = v23 / 20;
          v21 = 20 * v25;
          if ((v25 * 20) >> 64 != (20 * v25) >> 63)
          {
            goto LABEL_31;
          }

          if (__OFSUB__(v23, v21))
          {
            goto LABEL_32;
          }

          v30 = v23 - v21;
          __dst[6] = v58[4];
          sub_214A8C898(v23 - v21, v23 / 20, v58[4]);
          v20 = v13;
          v14 = sub_214CCF904();
          *v15 = *v15 + v20;
          v14(v29, 0, v16);
          v17 = sub_214CCF904();
          *v18 = 1;
          v17(v28, 0, v19);
        }
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_214A8C7F4()
{
  v2 = qword_280C7CD70;
  if (!qword_280C7CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38620);
    sub_214A8C138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A8C898(uint64_t result, uint64_t a2, double a3)
{
  v55 = 0;
  v50 = 0;
  v46 = 0;
  v38 = 0;
  v33 = 0;
  v29 = 0;
  v64 = result;
  v63 = a2;
  v62 = a3;
  v61 = 1.0;
  if (result > 4 || a2 > 4)
  {
    if (result <= 4)
    {
      v40 = 1;
      if (!__OFSUB__(4, result))
      {
        v39 = 4 - result;
        v18 = MEMORY[0x277D83B88];
        sub_214CD0444();
        v38 = v41;
        v37 = v41;
        v6 = sub_214A63208();
        v61 = sub_214A76BB8(&v37, v18, v6) * 0.75;
        v19 = v61;
LABEL_42:
        v23 = v19;
        goto LABEL_43;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (result >= 16 && a2 <= 4)
    {
      v52 = 1;
      if (!__OFSUB__(16, result))
      {
        v51 = 16 - result;
        result = sub_214CD0444();
        v50 = v53;
        v48 = 1;
        if (!__OFSUB__(4, a2))
        {
          v47 = 4 - a2;
          v14 = MEMORY[0x277D83B88];
          sub_214CD0444();
          v13 = v49;
          v46 = v49;
          v44 = v53;
          v15 = sub_214A63208();
          *&v43[1] = sub_214A76BB8(&v44, v14, v15) * 0.75;
          v43[0] = v13;
          v42 = sub_214A76BB8(v43, v14, v15) * 0.75;
          sub_214A75FAC();
          sub_214CD0444();
          v61 = v45;
          v16 = v45;
LABEL_41:
          v19 = v16;
          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (result < 16)
    {
      v12 = 1.0;
    }

    else
    {
      v57 = 1;
      if (__OFSUB__(16, result))
      {
        __break(1u);
        goto LABEL_45;
      }

      v56 = 16 - result;
      v11 = MEMORY[0x277D83B88];
      sub_214CD0444();
      v55 = v58;
      v54 = v58;
      v10 = sub_214A63208();
      v61 = sub_214A76BB8(&v54, v11, v10) * 0.75;
      v12 = v61;
    }

    v16 = v12;
    goto LABEL_41;
  }

  v35 = 1;
  if (__OFSUB__(4, result))
  {
    goto LABEL_48;
  }

  v34 = 4 - result;
  result = sub_214CD0444();
  v33 = v36;
  v31 = 1;
  if (!__OFSUB__(4, a2))
  {
    v30 = 4 - a2;
    v21 = MEMORY[0x277D83B88];
    sub_214CD0444();
    v20 = v32;
    v29 = v32;
    v27 = v36;
    v22 = sub_214A63208();
    *&v26[1] = sub_214A76BB8(&v27, v21, v22) * 0.75;
    v26[0] = v20;
    sub_214A76BB8(v26, v21, v22);
    sub_214A75FAC();
    sub_214CD0444();
    v61 = v28;
    v23 = v28;
LABEL_43:
    v60 = 1.0;
    v59 = v23;
    return sub_214CD0444();
  }

LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_214A8CDE4()
{
  v28[0] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v17 = 0;
  v29 = v0;
  v12 = *(v0 + 40);

  v28[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
  sub_214B26864();
  v13 = sub_214CCFA94();

  result = v13;
  if (v13)
  {
    v28[0] = sub_214CD03C4();
    v23 = 0;
    v24 = 400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
    sub_214A8C7F4();
    sub_214CCFAC4();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367B0);
      sub_214CD01B4();
      if (v22)
      {
        break;
      }

      v17 = v21;
      sub_214CCF914();
      if (v16 >= 1.0)
      {
        sub_214CCF914();
        v10 = v15;
        sub_214CCF914();
        memcpy(__dst, v14, sizeof(__dst));
        sub_214B25820(__dst, v30, v10);
        sub_214A8D200(v30, v28);
      }
    }

    v8 = v28[0];

    v20 = v8;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352A8);
    v7 = sub_214A8D448();
    v9 = sub_214CCFA94();

    if ((v9 & 1) == 0)
    {
      sub_214A8D5B4();
      sub_214A8D63C();
      sub_214CCF484();
      v3 = v28[0];

      v19 = v3;
      v5 = sub_214A6E4F4(sub_214B2595C, 0, v6, &unk_2826E3170, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v4);
      sub_214A62278();
      *(v11 + 40) = v5;

      v18 = v3;
      v2 = sub_214A6E4F4(sub_214A8D6F0, 0, v6, MEMORY[0x277D85048], MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v4);
      sub_214A62278();
      *(v11 + 48) = v2;
    }

    result = v28;
    sub_214A62278();
  }

  return result;
}

uint64_t sub_214A8D200(double *a1, void *a2)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  memset(__b, 0, sizeof(__b));
  v23 = a1;
  v22 = a2;
  v13 = *a2;

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352A8);
  sub_214A8D448();
  sub_214CCFA54();
  sub_214A62278();
  v17 = v20;
  v18 = v21 & 1;
  if (v21)
  {
    memcpy(__dst, a1, sizeof(__dst));
    return sub_214CCF884();
  }

  else
  {
    v15 = v20;
    sub_214CCF914();
    v24 = *a1;
    v25 = v24;
    __b[0] = __b[0] + v24;
    v5 = __b[0];
    v6 = __b[1];
    v7 = __b[2];
    v8 = __b[3];
    v9 = __b[4];
    v10 = __b[5];
    v2 = sub_214CCF904();
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    v3[4] = v9;
    v3[5] = v10;
    return v2();
  }
}

unint64_t sub_214A8D448()
{
  v2 = qword_280C7CF00;
  if (!qword_280C7CF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF00);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_214A8D500(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 8), sizeof(__dst));
  memcpy(v4, (a2 + 8), sizeof(v4));
  return sub_214B252B8(__dst);
}

unint64_t sub_214A8D5B4()
{
  v2 = qword_280C7CF10;
  if (!qword_280C7CF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A8D63C()
{
  v2 = qword_280C7CF08;
  if (!qword_280C7CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF08);
    return WitnessTable;
  }

  return v2;
}

double sub_214A8D6F0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_214A8D70C()
{
  v81 = 0;
  v73 = 0.0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v62 = 0;
  v60 = 0.0;
  v82 = v0;
  v40 = *(v0 + 16) < 0.18;
  v81 = v40;
  v42 = *(v0 + 40);

  v80 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
  sub_214B26864();
  sub_214CCFA74();
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v46 = v78;
  v47 = v79;

  *(v41 + 56) = v74;
  *(v41 + 64) = v43;
  *(v41 + 72) = v44;
  *(v41 + 80) = v45;
  *(v41 + 88) = v46;
  *(v41 + 96) = v47 & 1;
  v48 = *(v41 + 64);
  v49 = *(v41 + 72);
  v50 = *(v41 + 80);
  v51 = *(v41 + 88);
  if ((*(v41 + 96) & 1) == 0)
  {
    v95 = *(v41 + 56);
    v96 = v48;
    v97 = v49;
    v98 = v50;
    v99 = v51;
    if (sub_214B25304())
    {
      v38 = sub_214B24ED4(0.18);
      v73 = v38;
      v68 = 3;

      v39 = sub_214CCF854();

      v67 = v39;
      sub_214CD0464();
      if (v69 < 1)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v65 = 1;
      v66 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
      sub_214A8C7F4();
      sub_214CCFAC4();
      for (i = v38; ; i = v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367B0);
        sub_214CD01B4();
        if (v64)
        {
          break;
        }

        v62 = v63;
        sub_214CCF914();
        if (v61 <= 0.0)
        {
          v36 = 0.0;
        }

        else
        {
          sub_214CCF914();
          sub_214CCF914();
          v36 = v53 / v52;
        }

        v60 = v36;
        if (v36 <= 0.9 || v36 >= 1.112)
        {
          break;
        }

        sub_214CCF914();
        memcpy(__dst, v59, sizeof(__dst));
        v1 = sub_214B24ED4(0.18);
        v34 = v1;
        if (i >= v1)
        {
          v33 = i;
        }

        else
        {
          v73 = v1;
          sub_214CCF914();
          *(v41 + 56) = v54;
          *(v41 + 64) = v55;
          *(v41 + 72) = v56;
          *(v41 + 80) = v57;
          *(v41 + 88) = v58;
          *(v41 + 96) = 0;
          v33 = v34;
        }
      }
    }
  }

  v29 = *(v41 + 64);
  result = *(v41 + 72);
  v30 = result;
  v31 = *(v41 + 80);
  v32 = *(v41 + 88);
  if ((*(v41 + 96) & 1) == 0)
  {
    v28 = *(v41 + 56);
    v89 = v28;
    v90 = v29;
    v91 = result;
    v92 = v31;
    v93 = v32;
    if (sub_214B25304())
    {
      if (v40)
      {
        LOBYTE(v27) = 1;
      }

      else
      {
        v27 = !sub_214B25028();
      }

      if (v27)
      {
        v4 = sub_214B23E78();
        sub_214B24D50(v83, v28, v29 * 1.1, v30 * 0.8, v4);
        v5 = v83[1];
        v6 = v83[2];
        v7 = v83[3];
        result = v83[4];
        *(v41 + 56) = v83[0];
        *(v41 + 64) = v5;
        *(v41 + 72) = v6;
        *(v41 + 80) = v7;
        *(v41 + 88) = result;
        *(v41 + 96) = 0;
      }
    }
  }

  v23 = *(v41 + 64);
  v24 = *(v41 + 72);
  v25 = *(v41 + 80);
  v26 = *(v41 + 88);
  if ((*(v41 + 96) & 1) == 0)
  {
    v87[0] = *(v41 + 56);
    v87[1] = v23;
    v87[2] = v24;
    v87[3] = v25;
    v87[4] = v26;
    v8 = sub_214B23858();
    memcpy(v88, v8, sizeof(v88));
    sub_214B25114(v84, 0.3);
    v9 = v84[1];
    v10 = v84[2];
    v11 = v84[3];
    result = v84[4];
    *(v41 + 104) = v84[0];
    *(v41 + 112) = v9;
    *(v41 + 120) = v10;
    *(v41 + 128) = v11;
    *(v41 + 136) = result;
    *(v41 + 144) = 0;
    v19 = *(v41 + 112);
    v20 = *(v41 + 120);
    v21 = *(v41 + 128);
    v22 = *(v41 + 136);
    if ((*(v41 + 144) & 1) == 0)
    {
      v87[5] = *(v41 + 104);
      v87[6] = v19;
      v87[7] = v20;
      v87[8] = v21;
      v87[9] = v22;
      v18 = sub_214A86FC4();
      v12 = sub_214A6BC90();
      if (sub_214B238B8(v87, v12 & 1, v18))
      {
        v14 = sub_214B23CE0();
        memcpy(v86, v14, sizeof(v86));
        sub_214B25114(v85, 0.8);
        v15 = v85[1];
        v16 = v85[2];
        v17 = v85[3];
        result = v85[4];
        *(v41 + 104) = v85[0];
        *(v41 + 112) = v15;
        *(v41 + 120) = v16;
        *(v41 + 128) = v17;
        *(v41 + 136) = result;
        *(v41 + 144) = 0;
      }
    }
  }

  return result;
}

double sub_214A8E014()
{
  result = 0.05;
  v122 = 0;
  v121 = 0.0;
  v119 = 0.0;
  memset(&v118[1], 0, 24);
  v139 = v0;
  v98 = *(v0 + 112);
  v99 = *(v0 + 120);
  v100 = *(v0 + 128);
  v101 = *(v0 + 136);
  if ((*(v0 + 144) & 1) == 0)
  {
    v148[0] = *(v0 + 104);
    v148[1] = v98;
    v148[2] = v99;
    v148[3] = v100;
    v148[4] = v101;

    v96 = sub_214CCF854();

    if (v96 > 1)
    {
      v122 = 1;
      sub_214CCF914();
      memcpy(__dst, v120, sizeof(__dst));
      v92 = sub_214B24E98(v148);
      v121 = v92;
      v119 = v92;
      v90 = *(v97 + 40);

      v117 = v90;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
      v2 = sub_214B268EC();
      MEMORY[0x21605D9B0](v118, v91, v2);
      sub_214A62278();
      v116 = v118[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352B0);
      sub_214CD0244();
      v93 = 1;
      v94 = v92;
      for (i = v92; ; i = v83)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352B8);
        sub_214CD0254();
        v89 = v109;
        if (v115)
        {
          break;
        }

        v148[5] = v110;
        v148[6] = v111;
        v148[7] = v112;
        v148[8] = v113;
        v148[9] = v114;
        if ((*(v97 + 192) & 1) != 0 && sub_214B24F80(v148))
        {
          v3 = sub_214B25108();
          sub_214B25114(v140, v3);
          v4 = v140[1];
          v5 = v140[2];
          v6 = v140[3];
          v7 = v140[4];
          *(v97 + 152) = v140[0];
          *(v97 + 160) = v4;
          *(v97 + 168) = v5;
          *(v97 + 176) = v6;
          *(v97 + 184) = v7;
          *(v97 + 192) = 0;
        }

        v8 = sub_214B24E98(v148);
        if (i >= v8)
        {
          v81 = v93;
          v82 = v94;
          v83 = i;
        }

        else
        {
          if (v94 >= v8)
          {
            if (i >= v8)
            {
              v84 = i;
            }

            else
            {
              v119 = v8;
              v84 = v8;
            }

            v85 = v93;
            v86 = v94;
            v87 = v84;
          }

          else
          {
            v119 = v94;
            v122 = v89;
            v121 = v8;
            v85 = v89;
            v86 = v8;
            v87 = v94;
          }

          v81 = v85;
          v82 = v86;
          v83 = v87;
        }

        v93 = v81;
        v94 = v82;
      }

      sub_214A62278();
      v9 = *(v97 + 160);
      v10 = *(v97 + 168);
      v11 = *(v97 + 176);
      v12 = *(v97 + 184);
      v13 = *(v97 + 192);
      v103 = *(v97 + 152);
      v104 = v9;
      v105 = v10;
      v106 = v11;
      v107 = v12;
      v108 = v13 & 1;
      if (v13)
      {
        sub_214CCF914();
        memcpy(v163, v102, sizeof(v163));
        sub_214B25114(v141, 0.2);
        if (sub_214B25064(v148))
        {
          v14 = sub_214B25108();
          sub_214B25114(v142, v14);
          v15 = v142[1];
          v16 = v142[2];
          v17 = v142[3];
          result = v142[4];
          *(v97 + 152) = v142[0];
          *(v97 + 160) = v15;
          *(v97 + 168) = v16;
          *(v97 + 176) = v17;
          *(v97 + 184) = result;
          *(v97 + 192) = 0;
        }
      }
    }

    v77 = *(v97 + 160);
    v78 = *(v97 + 168);
    v79 = *(v97 + 176);
    v80 = *(v97 + 184);
    if ((*(v97 + 192) & 1) == 0)
    {
      v158 = *(v97 + 152);
      v159 = v77;
      v160 = v78;
      v161 = v79;
      v162 = v80;
      v76 = sub_214B25028();
      v18 = sub_214B25028();
      if (v76 == v18)
      {
        *(v97 + 152) = 0;
        *(v97 + 160) = 0;
        *(v97 + 168) = 0;
        *(v97 + 176) = 0;
        *(v97 + 184) = 0;
        *(v97 + 192) = 1;
      }
    }

    v72 = *(v97 + 208);
    v73 = *(v97 + 216);
    v74 = *(v97 + 224);
    v75 = *(v97 + 232);
    if ((*(v97 + 240) & 1) == 0)
    {
      v153 = *(v97 + 200);
      v154 = v72;
      v155 = v73;
      v156 = v74;
      v157 = v75;
      v71 = sub_214B25028();
      v19 = sub_214B25028();
      if (v71 == v19)
      {
        *(v97 + 200) = 0;
        *(v97 + 208) = 0;
        *(v97 + 216) = 0;
        *(v97 + 224) = 0;
        *(v97 + 232) = 0;
        *(v97 + 240) = 1;
      }
    }

    v20 = *(v97 + 160);
    v21 = *(v97 + 168);
    v22 = *(v97 + 176);
    v23 = *(v97 + 184);
    v24 = *(v97 + 192);
    v133 = *(v97 + 152);
    v134 = v20;
    v135 = v21;
    v136 = v22;
    v137 = v23;
    v138 = v24 & 1;
    if (v24)
    {
      if (sub_214B25028())
      {
        v69 = *(v97 + 40);

        v123 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
        sub_214B26864();
        v70 = sub_214CCFA94();

        v25 = sub_214B23CE0();
        if (v70)
        {
          memcpy(v151, v25, sizeof(v151));
          sub_214B25348(v148, v143, 0.05);
          v64 = v143[0];
          v65 = v143[1];
          v66 = v143[2];
          v67 = v143[3];
          v68 = v143[4];
        }

        else
        {
          v64 = *v25;
          v65 = v25[1];
          v66 = v25[2];
          v67 = v25[3];
          v68 = v25[4];
        }

        result = v68;
        *(v97 + 152) = v64;
        *(v97 + 160) = v65;
        *(v97 + 168) = v66;
        *(v97 + 176) = v67;
        *(v97 + 184) = v68;
        *(v97 + 192) = 0;
      }

      else
      {
        v62 = *(v97 + 40);

        v124 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
        sub_214B26864();
        v63 = sub_214CCFA94();

        v26 = sub_214B23858();
        if (v63)
        {
          memcpy(v152, v26, sizeof(v152));
          sub_214B25348(v148, v144, 0.05);
          v57 = v144[0];
          v58 = v144[1];
          v59 = v144[2];
          v60 = v144[3];
          v61 = v144[4];
        }

        else
        {
          v57 = *v26;
          v58 = v26[1];
          v59 = v26[2];
          v60 = v26[3];
          v61 = v26[4];
        }

        result = v61;
        *(v97 + 152) = v57;
        *(v97 + 160) = v58;
        *(v97 + 168) = v59;
        *(v97 + 176) = v60;
        *(v97 + 184) = v61;
        *(v97 + 192) = 0;
      }
    }

    v27 = *(v97 + 208);
    v28 = *(v97 + 216);
    v29 = *(v97 + 224);
    v30 = *(v97 + 232);
    v31 = *(v97 + 240);
    v127 = *(v97 + 200);
    v128 = v27;
    v129 = v28;
    v130 = v29;
    v131 = v30;
    v132 = v31 & 1;
    if (v31)
    {
      if (sub_214B25028())
      {
        v55 = *(v97 + 40);

        v125 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
        sub_214B26864();
        v56 = sub_214CCFA94();

        v32 = sub_214B23CE0();
        if (v56)
        {
          v50 = *v32;
          v51 = v32[1];
          v52 = v32[2];
          v53 = v32[3];
          v54 = v32[4];
        }

        else
        {
          memcpy(v149, v32, sizeof(v149));
          sub_214B25348(v148, v145, 0.1);
          v50 = v145[0];
          v51 = v145[1];
          v52 = v145[2];
          v53 = v145[3];
          v54 = v145[4];
        }

        result = v54;
        *(v97 + 200) = v50;
        *(v97 + 208) = v51;
        *(v97 + 216) = v52;
        *(v97 + 224) = v53;
        *(v97 + 232) = v54;
        *(v97 + 240) = 0;
      }

      else
      {
        v48 = *(v97 + 40);

        v126 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35298);
        sub_214B26864();
        v49 = sub_214CCFA94();

        v33 = sub_214B23858();
        if (v49)
        {
          v43 = *v33;
          v44 = v33[1];
          v45 = v33[2];
          v46 = v33[3];
          v47 = v33[4];
        }

        else
        {
          memcpy(v150, v33, sizeof(v150));
          sub_214B25348(v148, v146, 0.7);
          v43 = v146[0];
          v44 = v146[1];
          v45 = v146[2];
          v46 = v146[3];
          v47 = v146[4];
        }

        result = v47;
        *(v97 + 200) = v43;
        *(v97 + 208) = v44;
        *(v97 + 216) = v45;
        *(v97 + 224) = v46;
        *(v97 + 232) = v47;
        *(v97 + 240) = 0;
      }

      v39 = *(v97 + 208);
      v40 = *(v97 + 216);
      v41 = *(v97 + 224);
      v42 = *(v97 + 232);
      if ((*(v97 + 240) & 1) == 0)
      {
        v148[10] = *(v97 + 200);
        v148[11] = v39;
        v148[12] = v40;
        v148[13] = v41;
        v148[14] = v42;
        if (sub_214B25064(v148))
        {
          v35 = sub_214B25108();
          sub_214B25114(v147, v35);
          v36 = v147[1];
          v37 = v147[2];
          v38 = v147[3];
          result = v147[4];
          *(v97 + 200) = v147[0];
          *(v97 + 208) = v36;
          *(v97 + 216) = v37;
          *(v97 + 224) = v38;
          *(v97 + 232) = result;
          *(v97 + 240) = 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_214A8EF30()
{
  v2 = qword_280C7EAB8;
  if (!qword_280C7EAB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A8F038(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6[1] = a1;
  v8 = a4;
  v15 = a2;
  v9 = a3;
  v16 = a2;
  v11 = *(a2 - 8);
  v12 = a2 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v14 = v6 - v7;
  (*(v11 + 16))(v4);
  v10 = *(v9 + 8);
  sub_214CD0234();
  sub_214CCE3D4();
  sub_214CD0224();
  (*(v11 + 8))(v13, v15);
  return (*(v11 + 32))(v13, v14, v15);
}

double sub_214A8F1B0()
{
  v40 = *(v0 + 112);
  v41 = *(v0 + 120);
  v42 = *(v0 + 128);
  v43 = *(v0 + 136);
  if ((*(v0 + 144) & 1) == 0)
  {
    v51[0] = *(v0 + 104);
    v51[1] = v40;
    v51[2] = v41;
    v51[3] = v42;
    v51[4] = v43;
    v35 = *(v39 + 160);
    v36 = *(v39 + 168);
    v37 = *(v39 + 176);
    v38 = *(v39 + 184);
    if ((*(v39 + 192) & 1) == 0)
    {
      v54[0] = *(v39 + 152);
      v54[1] = v35;
      v54[2] = v36;
      v54[3] = v37;
      v54[4] = v38;
      v31 = *(v39 + 208);
      v32 = *(v39 + 216);
      v33 = *(v39 + 224);
      v34 = *(v39 + 232);
      if ((*(v39 + 240) & 1) == 0)
      {
        v53[0] = *(v39 + 200);
        v53[1] = v31;
        v53[2] = v32;
        v53[3] = v33;
        v53[4] = v34;
        sub_214B25DC0(v51, v44);
        v1 = v44[1];
        v2 = v44[2];
        v3 = v44[3];
        v4 = v44[4];
        *(v39 + 248) = v44[0];
        *(v39 + 256) = v1;
        *(v39 + 264) = v2;
        *(v39 + 272) = v3;
        *(v39 + 280) = v4;
        *(v39 + 288) = 0;
        sub_214B25DC0(v51, v45);
        v5 = v45[1];
        v6 = v45[2];
        v7 = v45[3];
        v8 = v45[4];
        *(v39 + 296) = v45[0];
        *(v39 + 304) = v5;
        *(v39 + 312) = v6;
        *(v39 + 320) = v7;
        *(v39 + 328) = v8;
        *(v39 + 336) = 0;
        sub_214B25E30(v54, v51, v46);
        v9 = v46[1];
        v10 = v46[2];
        v11 = v46[3];
        v12 = v46[4];
        *(v39 + 344) = v46[0];
        *(v39 + 352) = v9;
        *(v39 + 360) = v10;
        *(v39 + 368) = v11;
        *(v39 + 376) = v12;
        *(v39 + 384) = 0;
        sub_214B25E30(v53, v51, v47);
        v13 = v47[1];
        v14 = v47[2];
        v15 = v47[3];
        result = *&v47[4];
        *(v39 + 392) = v47[0];
        *(v39 + 400) = v13;
        *(v39 + 408) = v14;
        *(v39 + 416) = v15;
        *(v39 + 424) = result;
        *(v39 + 432) = 0;
        v27 = *(v39 + 256);
        v28 = *(v39 + 264);
        v29 = *(v39 + 272);
        v30 = *(v39 + 280);
        if ((*(v39 + 288) & 1) == 0)
        {
          v52[0] = *(v39 + 248);
          v52[1] = v27;
          v52[2] = v28;
          v52[3] = v29;
          v52[4] = v30;
          sub_214B25E30(v52, v51, v48);
          v17 = v48[1];
          v18 = v48[2];
          v19 = v48[3];
          result = *&v48[4];
          *(v39 + 440) = v48[0];
          *(v39 + 448) = v17;
          *(v39 + 456) = v18;
          *(v39 + 464) = v19;
          *(v39 + 472) = result;
          *(v39 + 480) = 0;
        }

        v23 = *(v39 + 304);
        v24 = *(v39 + 312);
        v25 = *(v39 + 320);
        v26 = *(v39 + 328);
        if ((*(v39 + 336) & 1) == 0)
        {
          v50[0] = *(v39 + 296);
          v50[1] = v23;
          v50[2] = v24;
          v50[3] = v25;
          v50[4] = v26;
          sub_214B25E30(v50, v51, v49);
          v20 = v49[1];
          v21 = v49[2];
          v22 = v49[3];
          result = *&v49[4];
          *(v39 + 488) = v49[0];
          *(v39 + 496) = v20;
          *(v39 + 504) = v21;
          *(v39 + 512) = v22;
          *(v39 + 520) = result;
          *(v39 + 528) = 0;
        }
      }
    }
  }

  return result;
}

void *sub_214A8F748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  memset(__b, 0, sizeof(__b));
  MEMORY[0x277D82BE0](a1);
  __b[1] = a1;
  LOBYTE(__b[0]) = a3;
  MEMORY[0x277D82BE0](a2);
  __b[2] = a2;
  MEMORY[0x277D82BE0](a4);
  __b[4] = a4;
  MEMORY[0x277D82BE0](a5);
  __b[7] = a5;
  MEMORY[0x277D82BE0](a6);
  __b[10] = a6;
  MEMORY[0x277D82BE0](a7);
  __b[13] = a7;
  MEMORY[0x277D82BE0](a13);
  __b[5] = a13;
  MEMORY[0x277D82BE0](a14);
  __b[8] = a14;
  MEMORY[0x277D82BE0](a15);
  __b[11] = a15;
  MEMORY[0x277D82BE0](a16);
  __b[14] = a16;
  LOBYTE(__b[3]) = a8;
  LOBYTE(__b[6]) = a10;
  LOBYTE(__b[9]) = a11;
  LOBYTE(__b[12]) = a12;
  sub_214A8FA8C(__b, a9);
  MEMORY[0x277D82BD8](a16);
  MEMORY[0x277D82BD8](a15);
  MEMORY[0x277D82BD8](a14);
  MEMORY[0x277D82BD8](a13);
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return sub_214A86594(__b);
}

uint64_t sub_214A8FA8C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  MEMORY[0x277D82BE0](v3);
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  MEMORY[0x277D82BE0](v4);
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  v5 = *(a1 + 32);
  MEMORY[0x277D82BE0](v5);
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);
  MEMORY[0x277D82BE0](v6);
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  v7 = *(a1 + 56);
  MEMORY[0x277D82BE0](v7);
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  MEMORY[0x277D82BE0](v8);
  *(a2 + 64) = v8;
  *(a2 + 72) = *(a1 + 72);
  v9 = *(a1 + 80);
  MEMORY[0x277D82BE0](v9);
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  MEMORY[0x277D82BE0](v10);
  *(a2 + 88) = v10;
  *(a2 + 96) = *(a1 + 96);
  v11 = *(a1 + 104);
  MEMORY[0x277D82BE0](v11);
  *(a2 + 104) = v11;
  v13 = *(a1 + 112);
  MEMORY[0x277D82BE0](v13);
  result = a2;
  *(a2 + 112) = v13;
  return result;
}

void *sub_214A8FC3C(void *a1)
{
  if (a1[1] >= 2uLL)
  {
    MEMORY[0x277D82BD8](a1[1]);
    MEMORY[0x277D82BD8](a1[2]);
    MEMORY[0x277D82BD8](a1[4]);
    MEMORY[0x277D82BD8](a1[5]);
    MEMORY[0x277D82BD8](a1[7]);
    MEMORY[0x277D82BD8](a1[8]);
    MEMORY[0x277D82BD8](a1[10]);
    MEMORY[0x277D82BD8](a1[11]);
    MEMORY[0x277D82BD8](a1[13]);
    MEMORY[0x277D82BD8](a1[14]);
  }

  return a1;
}

uint64_t sub_214A8FFC8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_214CCE814();
  }

  else
  {
    sub_214CCE3B4();
    swift_getWitnessTable();
    sub_214CCE754();
    sub_214CCE2F4();
    sub_214CCFF34();
    swift_getWitnessTable();
    sub_214CCE3B4();
    swift_getWitnessTable();
    sub_214CCE754();
  }

  return sub_214CCE2F4();
}

uint64_t sub_214A90140()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_214CCE814();
    sub_214CCE2F4();
  }

  else
  {
    sub_214CCE3B4();
    swift_getWitnessTable();
    sub_214CCE754();
    sub_214CCE2F4();
    sub_214CCFF34();
    swift_getWitnessTable();
    sub_214CCE3B4();
    swift_getWitnessTable();
    sub_214CCE754();
    sub_214CCE2F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_214A903C0()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_214CCE2D4();
  }

  else
  {
    sub_214CCE214();
  }

  return sub_214CCE2F4();
}

uint64_t sub_214A90450()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_214CCE2D4();
    sub_214CCE2F4();
    sub_214AFEC10();
  }

  else
  {
    sub_214CCE214();
    sub_214CCE2F4();
    sub_214AFEC88();
  }

  return swift_getWitnessTable();
}

uint64_t sub_214A9056C()
{

  return swift_deallocObject();
}

uint64_t sub_214A905CC()
{

  return swift_deallocObject();
}

uint64_t sub_214A9064C()
{

  return swift_deallocObject();
}

uint64_t sub_214A90694()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_214A90734()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_214A90794()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_214A9098C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34F80);
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC8) + 44);
    sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

    v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD0) + 48);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD8);
    (*(*(v1 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_214A90AE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34F80);
    (*(*(v2 - 8) + 8))(a1);
  }

  else
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC8) + 44);
    sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

    v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD0) + 48);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD8);
    (*(*(v1 - 8) + 8))(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34F28);

  return a1;
}

uint64_t sub_214A90C58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34F80);
    (*(*(v5 - 8) + 32))(a2, a1);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC8);
    v7 = (a2 + *(v2 + 44));
    v8 = (a1 + *(v2 + 44));
    memcpy(v7, v8, 0x59uLL);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD0);
    v10 = &v7[*(v3 + 48)];
    v9 = &v8[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD8);
    (*(*(v4 - 8) + 32))(v10, v9);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214A90DF8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34F80);
    (*(*(v5 - 8) + 16))(a2, a1);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FC8);
    v12 = a2 + *(v2 + 44);
    v13 = a1 + *(v2 + 44);
    v7 = *v13;
    v8 = *(v13 + 8);
    v9 = *(v13 + 16);
    sub_214B0755C(*v13, v8, v9 & 1);
    *v12 = v7;
    *(v12 + 8) = v8;
    *(v12 + 16) = v9 & 1;
    v10 = *(v13 + 24);

    *(v12 + 24) = v10;
    v11 = *(v13 + 32);

    *(v12 + 32) = v11;
    *(v12 + 40) = *(v13 + 40);
    memcpy((v12 + 48), (v13 + 48), 0x29uLL);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD0);
    v15 = v12 + *(v3 + 48);
    v14 = v13 + *(v3 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FD8);
    (*(*(v4 - 8) + 16))(v15, v14);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214A91024(uint64_t a1)
{
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350A8) + 44);
  sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350B0) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350B8);
  (*(*(v1 - 8) + 8))(v4 + v3);

  return a1;
}

uint64_t sub_214A91148(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350A8) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_214B0755C(v6, v7, v8 & 1);
  v12 = a2 + v5;
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);

  *(v12 + 24) = v9;
  v10 = *(a1 + v5 + 32);

  *(v12 + 32) = v10;
  *(v12 + 40) = *(a1 + v5 + 40);
  memcpy((a2 + v5 + 48), (a1 + v5 + 48), 0x29uLL);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350B0);
  v11 = *(v13 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA350B8);
  (*(*(v2 - 8) + 16))(a2 + v5 + v11, a1 + v5 + v11);
  v19 = a1 + v5 + *(v13 + 64);
  v20 = a2 + v5 + *(v13 + 64);
  *v20 = *v19;
  *(v20 + 16) = *(v19 + 16);
  *(v20 + 24) = *(v19 + 24);
  v14 = *(v19 + 32);

  *(v20 + 32) = v14;
  *(v20 + 40) = *(v19 + 40);
  v15 = *(v19 + 48);
  v16 = *(v19 + 56);

  *(v20 + 48) = v15;
  *(v20 + 56) = v16;
  *(v20 + 64) = *(v19 + 64);
  v17 = *(v19 + 72);

  *(v20 + 72) = v17;
  *(v20 + 80) = *(v19 + 80);
  v18 = *(v19 + 88);

  *(v20 + 88) = v18;
  memcpy((v20 + 96), (v19 + 96), 0x29uLL);
  memcpy((v20 + 144), (v19 + 144), 0x29uLL);
  return a2;
}

uint64_t sub_214A92574()
{
  v2 = *(sub_214CCD374() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A92BA8()
{
  v2 = *(sub_214CCD374() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A92F98()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_214A93078()
{

  MEMORY[0x277D82BD8](*(v0 + 24));
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A93118()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A93248()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A932E4()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A93B80()
{
  v2 = *(sub_214CCF264() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A942C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 16) < 0x100000000uLL)
    {
      v6 = *(a1 + 16);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_214CCD2B4();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_214A943DC(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = a2 - 1;
  }

  else
  {
    result = sub_214CCD2B4();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A944CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_214CCD2B4();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 20));
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_214CCD154();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_214A94688(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    result = sub_214CCD154();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A94870()
{
  if (*(v0 + 16) > 2uLL)
  {
  }

  if (*(v2 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A94904(uint64_t a1)
{
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF0) + 44);
  sub_214B072EC(*(v8 + 48), *(v8 + 56), *(v8 + 64) & 1);

  sub_214B072EC(*(v8 + 120), *(v8 + 128), *(v8 + 136) & 1);

  sub_214B072EC(*(v8 + 176), *(v8 + 184), *(v8 + 192) & 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF8) + 36);
  v7 = *(sub_214CCE374() + 20);
  v1 = sub_214CCE4D4();
  (*(*(v1 - 8) + 8))(v8 + v6 + v7);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D00) + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D08) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D10);
  v14 = v8 + v9 + v10;
  (*(*(v2 - 8) + 8))();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D18);
  v11 = *(v12 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D20);
  (*(*(v3 - 8) + 8))(v14 + v11);
  v13 = *(v12 + 96);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D28);
  (*(*(v4 - 8) + 8))(v14 + v13);
  return a1;
}

uint64_t sub_214A94BB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF0);
  v37 = a1 + *(v2 + 44);
  v38 = a2 + *(v2 + 44);
  *v38 = *v37;
  *(v38 + 16) = *(v37 + 16);
  *(v38 + 24) = *(v37 + 24);
  *(v38 + 40) = *(v37 + 40);
  v18 = *(v37 + 48);
  v19 = *(v37 + 56);
  v20 = *(v37 + 64);
  sub_214B0755C(v18, v19, v20 & 1);
  *(v38 + 48) = v18;
  *(v38 + 56) = v19;
  *(v38 + 64) = v20 & 1;
  v21 = *(v37 + 72);

  *(v38 + 72) = v21;
  v22 = *(v37 + 80);

  *(v38 + 80) = v22;
  *(v38 + 88) = *(v37 + 88);
  *(v38 + 96) = *(v37 + 96);
  *(v38 + 104) = *(v37 + 104);
  *(v38 + 112) = *(v37 + 112);
  v23 = *(v37 + 120);
  v24 = *(v37 + 128);
  v25 = *(v37 + 136);
  sub_214B0755C(v23, v24, v25 & 1);
  *(v38 + 120) = v23;
  *(v38 + 128) = v24;
  *(v38 + 136) = v25 & 1;
  v26 = *(v37 + 144);

  *(v38 + 144) = v26;
  v27 = *(v37 + 152);

  *(v38 + 152) = v27;
  *(v38 + 160) = *(v37 + 160);
  *(v38 + 168) = *(v37 + 168);
  v28 = *(v37 + 176);
  v29 = *(v37 + 184);
  v30 = *(v37 + 192);
  sub_214B0755C(v28, v29, v30 & 1);
  *(v38 + 176) = v28;
  *(v38 + 184) = v29;
  *(v38 + 192) = v30 & 1;
  v31 = *(v37 + 200);

  *(v38 + 200) = v31;
  v32 = *(v37 + 208);

  *(v38 + 208) = v32;
  *(v38 + 216) = *(v37 + 216);
  *(v38 + 224) = *(v37 + 224);
  memcpy((v38 + 232), (v37 + 232), 0x29uLL);
  v33 = *(v37 + 280);

  *(v38 + 280) = v33;
  *(v38 + 288) = *(v37 + 288);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF8);
  v35 = (v37 + *(v3 + 36));
  v36 = (v38 + *(v3 + 36));
  *v36 = *v35;
  v34 = *(sub_214CCE374() + 20);
  v4 = sub_214CCE4D4();
  (*(*(v4 - 8) + 16))(&v36[v34], &v35[v34]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  *&v36[*(v5 + 36)] = *&v35[*(v5 + 36)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D00);
  v7 = v37 + *(v6 + 48);
  v8 = v38 + *(v6 + 48);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 8);
  v41 = v37 + *(v6 + 64);
  v39 = v38 + *(v6 + 64);
  *v39 = *v41;
  *(v39 + 16) = *(v41 + 16);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D08) + 44);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D10);
  (*(*(v9 - 8) + 16))();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D18);
  v10 = v41 + v40 + v43[12];
  v11 = v39 + v40 + v43[12];
  *v11 = *v10;
  *(v11 + 8) = *(v10 + 8);
  v42 = v43[16];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D20);
  (*(*(v12 - 8) + 16))(v39 + v40 + v42, v41 + v40 + v42);
  v13 = v43[20];
  v14 = v39 + v40 + v13;
  *v14 = *(v41 + v40 + v13);
  *(v14 + 8) = *(v41 + v40 + v13 + 8);
  v44 = v43[24];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D28);
  (*(*(v15 - 8) + 16))(v39 + v40 + v44, v41 + v40 + v44);
  return a2;
}

uint64_t sub_214A9522C(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D08) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D10);
  (*(*(v1 - 8) + 8))();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D18);
  v6 = *(v7 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D20);
  (*(*(v2 - 8) + 8))(a1 + v5 + v6);
  v8 = *(v7 + 96);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D28);
  (*(*(v3 - 8) + 8))(a1 + v5 + v8);
  return a1;
}

uint64_t sub_214A95380(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D08) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D10);
  (*(*(v2 - 8) + 16))();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D18);
  v3 = a1 + v10 + v13[12];
  v4 = a2 + v10 + v13[12];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  v12 = v13[16];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D20);
  (*(*(v5 - 8) + 16))(a2 + v10 + v12, a1 + v10 + v12);
  v6 = a1 + v10 + v13[20];
  v7 = a2 + v10 + v13[20];
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  v14 = v13[24];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D28);
  (*(*(v8 - 8) + 16))(a2 + v10 + v14, a1 + v10 + v14);
  return a2;
}

uint64_t sub_214A95578()
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 80));
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A95614()
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 80));
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A956B0()
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 80));
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A958CC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 88));
  return swift_deallocObject();
}

uint64_t sub_214A95974()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A95AD0()
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 80));
  return swift_deallocObject();
}

uint64_t sub_214A962D0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36230) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A96518(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_214CCD2B4();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_214A96630(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_214CCD2B4();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A969B0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = type metadata accessor for SearchItem();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_214A96AC8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = type metadata accessor for SearchItem();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A96C28(uint64_t a1, unsigned int a2, int *a3)
{
  v13 = sub_214CCD2B4();
  if (a2 == *(*(v13 - 8) + 84))
  {
    return (*(*(v13 - 8) + 48))(a1, a2, v13);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v8 = -1;
    if (*(a1 + a3[7] + 8) < 0x100000000uLL)
    {
      v8 = *(a1 + a3[7] + 8);
    }

    return (v8 + 1);
  }

  else
  {
    v7 = sub_214CCCEB4();
    if (a2 == *(*(v7 - 8) + 84))
    {
      return (*(*(v7 - 8) + 48))(a1 + a3[9], a2, v7);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
      if (a2 == *(*(v6 - 8) + 84))
      {
        return (*(*(v6 - 8) + 48))(a1 + a3[12], a2, v6);
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
        if (a2 == *(*(v5 - 8) + 84))
        {
          return (*(*(v5 - 8) + 48))(a1 + a3[13], a2, v5);
        }

        else
        {
          v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
          if (a2 == *(*(v4 - 8) + 84))
          {
            return (*(*(v4 - 8) + 48))(a1 + a3[21], a2, v4);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_214A96FC8(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = a2 - 1;
  }

  else
  {
    v7 = sub_214CCCEB4();
    if (a3 == *(*(v7 - 8) + 84))
    {
      return (*(*(v7 - 8) + 56))(a1 + a4[9], a2, a2, v7);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
      if (a3 == *(*(v6 - 8) + 84))
      {
        return (*(*(v6 - 8) + 56))(a1 + a4[12], a2, a2, v6);
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
        if (a3 == *(*(v5 - 8) + 84))
        {
          return (*(*(v5 - 8) + 56))(a1 + a4[13], a2, a2, v5);
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
          if (a3 == *(*(result - 8) + 84))
          {
            return (*(*(result - 8) + 56))(a1 + a4[21], a2, a2, result);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_214A97358(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_214CCD2B4();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_214A97470(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214A97560(uint64_t a1, unsigned int a2, int *a3)
{
  v10 = sub_214CCD2B4();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1 + a3[5], a2, v10);
  }

  else
  {
    v5 = sub_214CCD154();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + a3[6], a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + a3[7] + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + a3[7] + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_214A97720(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v9 = sub_214CCD2B4();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1 + a4[5], a2, a2, v9);
  }

  result = sub_214CCD154();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[6], a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214A978B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_214CCD2B4();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 2147483646)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v5 = *(a1 + *(a3 + 20) + 8);
    }

    v3 = v5 - 1;
    if (v5 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_214A979E0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214A97FF4()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_214A9804C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A98254()
{
  v2 = *(sub_214CCD8D4() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A98670(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_214A98760(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_214A98A24(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 32) < 0x100000000uLL)
    {
      v6 = *(a1 + 32);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 32), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_214A98B48(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A99004(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A28) + 44);
  v12 = a1 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30) + 44);
  v7 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  sub_214B072EC(*v7, *(v7 + 8), *(v7 + 16) & 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(v7 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  sub_214B072EC(*(v12 + v10[12]), *(v12 + v10[12] + 8), *(v12 + v10[12] + 16) & 1);

  v9 = v10[16];
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 8))(v12 + v9);
  v11 = v10[20];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v3 - 8) + 8))(v12 + v11 + v13);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0) + 36);
  v15 = *(sub_214CCE374() + 20);
  v4 = sub_214CCE4D4();
  (*(*(v4 - 8) + 8))(a1 + v6 + v14 + v15);
  return a1;
}

uint64_t sub_214A992F8(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A28) + 44);
  v12 = a1 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30) + 44);
  v7 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  sub_214B072EC(*v7, *(v7 + 8), *(v7 + 16) & 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(v7 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  sub_214B072EC(*(v12 + v10[12]), *(v12 + v10[12] + 8), *(v12 + v10[12] + 16) & 1);

  v9 = v10[16];
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 8))(v12 + v9);
  v11 = v10[20];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v3 - 8) + 8))(v12 + v11 + v13);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0) + 36);
  v15 = *(sub_214CCE374() + 20);
  v4 = sub_214CCE4D4();
  (*(*(v4 - 8) + 8))(a1 + v6 + v14 + v15);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D8) + 36);
  if (*(a1 + v17))
  {
  }

  if (*(a1 + v17 + 16))
  {
  }

  return a1;
}

uint64_t sub_214A99624(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A28);
  v57 = a1 + *(v2 + 44);
  v58 = a2 + *(v2 + 44);
  *v58 = *v57;
  *(v58 + 16) = *(v57 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30);
  v52 = v57 + *(v3 + 44);
  v53 = v58 + *(v3 + 44);
  *v53 = *v52;
  *(v53 + 16) = *(v52 + 16);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  v36 = *(v52 + v35);
  v37 = *(v52 + v35 + 8);
  v38 = *(v52 + v35 + 16);
  sub_214B0755C(v36, v37, v38 & 1);
  v40 = v53 + v35;
  *v40 = v36;
  *(v40 + 8) = v37;
  *(v40 + 16) = v38 & 1;
  v39 = *(v52 + v35 + 24);

  *(v40 + 24) = v39;
  memcpy((v53 + v35 + 32), (v52 + v35 + 32), 0x29uLL);
  memcpy((v53 + v35 + 80), (v52 + v35 + 80), 0x29uLL);
  *(v40 + 128) = *(v52 + v35 + 128);
  *(v40 + 136) = *(v52 + v35 + 136);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  v43 = v53 + v35 + v41;
  v42 = v52 + v35 + v41;
  (*(*(v4 - 8) + 16))();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70);
  *(v43 + *(v5 + 36)) = *(v42 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78);
  memcpy((v43 + *(v6 + 36)), (v42 + *(v6 + 36)), 0x29uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80);
  memcpy((v43 + *(v7 + 36)), (v42 + *(v7 + 36)), 0x29uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88);
  memcpy((v43 + *(v8 + 36)), (v42 + *(v8 + 36)), 0x29uLL);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  v44 = v51[12];
  v45 = *(v52 + v44);
  v46 = *(v52 + v44 + 8);
  v47 = *(v52 + v44 + 16);
  sub_214B0755C(v45, v46, v47 & 1);
  v49 = v53 + v44;
  *v49 = v45;
  *(v49 + 8) = v46;
  *(v49 + 16) = v47 & 1;
  v48 = *(v52 + v44 + 24);

  *(v49 + 24) = v48;
  memcpy((v53 + v44 + 32), (v52 + v44 + 32), 0x70uLL);
  memcpy((v53 + v44 + 144), (v52 + v44 + 144), 0x29uLL);
  memcpy((v53 + v44 + 192), (v52 + v44 + 192), 0x29uLL);
  memcpy((v53 + v44 + 240), (v52 + v44 + 240), 0x29uLL);
  v50 = v51[16];
  v9 = sub_214CCF0C4();
  (*(*(v9 - 8) + 16))();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90);
  memcpy((v53 + v50 + *(v10 + 36)), (v52 + v50 + *(v10 + 36)), 0x29uLL);
  v55 = v52 + v51[20];
  v56 = v53 + v51[20];
  *v56 = *v55;
  *(v56 + 16) = *(v55 + 16);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v11 - 8) + 16))();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98);
  memcpy((v56 + v54 + *(v12 + 36)), (v55 + v54 + *(v12 + 36)), 0x30uLL);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA0);
  v14 = v55 + v54 + *(v13 + 48);
  v15 = v56 + v54 + *(v13 + 48);
  *v15 = *v14;
  *(v15 + 8) = *(v14 + 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8);
  memcpy((v56 + *(v16 + 36)), (v55 + *(v16 + 36)), 0x29uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0);
  memcpy((v56 + *(v17 + 36)), (v55 + *(v17 + 36)), 0x29uLL);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8);
  memcpy((v56 + *(v18 + 36)), (v55 + *(v18 + 36)), 0x29uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0);
  memcpy((v56 + *(v19 + 36)), (v55 + *(v19 + 36)), 0x29uLL);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369F8);
  v21 = v57 + *(v20 + 36);
  v22 = v58 + *(v20 + 36);
  *v22 = *v21;
  *(v22 + 8) = *(v21 + 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0);
  v60 = (v57 + *(v23 + 36));
  v61 = (v58 + *(v23 + 36));
  *v61 = *v60;
  v59 = *(sub_214CCE374() + 20);
  v24 = sub_214CCE4D4();
  (*(*(v24 - 8) + 16))(&v61[v59], &v60[v59]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  *&v61[*(v25 + 36)] = *&v60[*(v25 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D0);
  memcpy((a2 + *(v26 + 36)), (a1 + *(v26 + 36)), 0x29uLL);
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D8) + 36);
  if (*(a1 + v64))
  {
    v33 = *(a1 + v64);
    v34 = *(a1 + v64 + 8);

    v27 = (a2 + v64);
    *v27 = v33;
    v27[1] = v34;
  }

  else
  {
    *(a2 + v64) = *(a1 + v64);
  }

  v31 = a2 + v64;
  v32 = a1 + v64;
  if (*(a1 + v64 + 16))
  {
    v29 = *(v32 + 16);
    v30 = *(a1 + v64 + 24);

    *(v31 + 16) = v29;
    *(a2 + v64 + 24) = v30;
  }

  else
  {
    *(v31 + 16) = *(v32 + 16);
  }

  return a2;
}

uint64_t sub_214A9A188(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30) + 44);
  v6 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  sub_214B072EC(*v6, *(v6 + 8), *(v6 + 16) & 1);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(v6 + v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  v8 = a1 + v5 + v10[12];
  sub_214B072EC(*v8, *(v8 + 8), *(v8 + 16) & 1);

  v9 = v10[16];
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 8))(a1 + v5 + v9);
  v11 = v10[20];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v3 - 8) + 8))(a1 + v5 + v11 + v12);
  return a1;
}

uint64_t sub_214A9A394(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30) + 44);
  v7 = a1 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  sub_214B072EC(*v7, *(v7 + 8), *(v7 + 16) & 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(v7 + v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  v9 = a1 + v6 + v11[12];
  sub_214B072EC(*v9, *(v9 + 8), *(v9 + 16) & 1);

  v10 = v11[16];
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 8))(a1 + v6 + v10);
  v12 = v11[20];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v3 - 8) + 8))(a1 + v6 + v12 + v13);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0) + 36);
  v15 = *(sub_214CCE374() + 20);
  v4 = sub_214CCE4D4();
  (*(*(v4 - 8) + 8))(a1 + v14 + v15);
  return a1;
}

uint64_t sub_214A9A620(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A30);
  v43 = a1 + *(v2 + 44);
  v44 = a2 + *(v2 + 44);
  *v44 = *v43;
  *(v44 + 16) = *(v43 + 16);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  v27 = *(v43 + v26);
  v28 = *(v43 + v26 + 8);
  v29 = *(v43 + v26 + 16);
  sub_214B0755C(v27, v28, v29 & 1);
  v31 = v44 + v26;
  *v31 = v27;
  *(v31 + 8) = v28;
  *(v31 + 16) = v29 & 1;
  v30 = *(v43 + v26 + 24);

  *(v31 + 24) = v30;
  memcpy((v44 + v26 + 32), (v43 + v26 + 32), 0x29uLL);
  memcpy((v44 + v26 + 80), (v43 + v26 + 80), 0x29uLL);
  *(v31 + 128) = *(v43 + v26 + 128);
  *(v31 + 136) = *(v43 + v26 + 136);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  v34 = v44 + v26 + v32;
  v33 = v43 + v26 + v32;
  (*(*(v3 - 8) + 16))();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70);
  *(v34 + *(v4 + 36)) = *(v33 + *(v4 + 36));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78);
  memcpy((v34 + *(v5 + 36)), (v33 + *(v5 + 36)), 0x29uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80);
  memcpy((v34 + *(v6 + 36)), (v33 + *(v6 + 36)), 0x29uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88);
  memcpy((v34 + *(v7 + 36)), (v33 + *(v7 + 36)), 0x29uLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A50);
  v35 = v42[12];
  v36 = *(v43 + v35);
  v37 = *(v43 + v35 + 8);
  v38 = *(v43 + v35 + 16);
  sub_214B0755C(v36, v37, v38 & 1);
  v40 = v44 + v35;
  *v40 = v36;
  *(v40 + 8) = v37;
  *(v40 + 16) = v38 & 1;
  v39 = *(v43 + v35 + 24);

  *(v40 + 24) = v39;
  memcpy((v44 + v35 + 32), (v43 + v35 + 32), 0x70uLL);
  memcpy((v44 + v35 + 144), (v43 + v35 + 144), 0x29uLL);
  memcpy((v44 + v35 + 192), (v43 + v35 + 192), 0x29uLL);
  memcpy((v44 + v35 + 240), (v43 + v35 + 240), 0x29uLL);
  v41 = v42[16];
  v8 = sub_214CCF0C4();
  (*(*(v8 - 8) + 16))();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90);
  memcpy((v44 + v41 + *(v9 + 36)), (v43 + v41 + *(v9 + 36)), 0x29uLL);
  v46 = v43 + v42[20];
  v47 = v44 + v42[20];
  *v47 = *v46;
  *(v47 + 16) = *(v46 + 16);
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v10 - 8) + 16))();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98);
  memcpy((v47 + v45 + *(v11 + 36)), (v46 + v45 + *(v11 + 36)), 0x30uLL);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA0);
  v13 = v46 + v45 + *(v12 + 48);
  v14 = v47 + v45 + *(v12 + 48);
  *v14 = *v13;
  *(v14 + 8) = *(v13 + 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8);
  memcpy((v47 + *(v15 + 36)), (v46 + *(v15 + 36)), 0x29uLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0);
  memcpy((v47 + *(v16 + 36)), (v46 + *(v16 + 36)), 0x29uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8);
  memcpy((v47 + *(v17 + 36)), (v46 + *(v17 + 36)), 0x29uLL);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0);
  memcpy((v47 + *(v18 + 36)), (v46 + *(v18 + 36)), 0x29uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369F8);
  v20 = a1 + *(v19 + 36);
  v21 = a2 + *(v19 + 36);
  *v21 = *v20;
  *(v21 + 8) = *(v20 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0);
  v50 = (a1 + *(v22 + 36));
  v51 = (a2 + *(v22 + 36));
  *v51 = *v50;
  v49 = *(sub_214CCE374() + 20);
  v23 = sub_214CCE4D4();
  (*(*(v23 - 8) + 16))(&v51[v49], &v50[v49]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  result = a2;
  *&v51[*(v24 + 36)] = *&v50[*(v24 + 36)];
  return result;
}

uint64_t sub_214A9AD9C(uint64_t a1)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  sub_214B072EC(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

uint64_t sub_214A9AE70(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A38) + 44);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = *(a1 + v9 + 16);
  sub_214B0755C(v10, v11, v12 & 1);
  v14 = a2 + v9;
  *v14 = v10;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12 & 1;
  v13 = *(a1 + v9 + 24);

  *(v14 + 24) = v13;
  memcpy((a2 + v9 + 32), (a1 + v9 + 32), 0x29uLL);
  memcpy((a2 + v9 + 80), (a1 + v9 + 80), 0x29uLL);
  *(v14 + 128) = *(a1 + v9 + 128);
  *(v14 + 136) = *(a1 + v9 + 136);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A40) + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  v17 = a2 + v9 + v15;
  v16 = a1 + v9 + v15;
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70);
  *(v17 + *(v3 + 36)) = *(v16 + *(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78);
  memcpy((v17 + *(v4 + 36)), (v16 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80);
  memcpy((v17 + *(v5 + 36)), (v16 + *(v5 + 36)), 0x29uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88);
  memcpy((v17 + *(v6 + 36)), (v16 + *(v6 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214A9B15C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214A9B1C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70);
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214A9B314(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BF8);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0);

  return a1;
}

uint64_t sub_214A9B3B8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BF8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);

  result = a2;
  *(a2 + v5 + 8) = v8;
  return result;
}

uint64_t sub_214A9B794(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_214A9BB24()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[5]);
  MEMORY[0x277D82BD8](v0[6]);

  return swift_deallocObject();
}

uint64_t sub_214A9C70C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_214A9C76C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_214A9C7CC()
{
  v2 = *(sub_214CCD804() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A9C970()
{
  v2 = *(sub_214CCD804() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A9CB14()
{
  v2 = *(sub_214CCD154() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214A9CF30()
{
  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_214A9D0F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_214A9D218(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214A9D314()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EF8);
  sub_214C155BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214A9D384()
{
  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_214A9D540()
{
  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_214A9D96C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A9DC3C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A9DF0C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A9E21C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_214A9E4A4()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214A9E504()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214A9E54C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214A9E59C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_214A9E5F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214A9E65C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370D0) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_214A9E720()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370D8);
  sub_214C20054();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214A9E790(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_214A9E8B4(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A9EA10()
{
  v6 = type metadata accessor for MUIHighlightedMessagesRowView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;
  MEMORY[0x277D82BD8](*(v0 + v5));

  v7 = *(v6 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 8))(v4 + v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214A9EBA4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_214A9ECC8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214A9EDC4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_214CCCF24();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 254)
  {
    v4 = *(a1 + *(a3 + 24));
    v5 = -1;
    if ((v4 & 0xFFFFFFFE) != 0)
    {
      v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
    }

    return (v5 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_214A9EEE8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCCF24();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214A9EFF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372E0);
  sub_214C2915C();
  sub_214C29204();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214A9F0F0(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37440) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v1 - 8) + 8))();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(a1 + v5 + v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37458) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  (*(*(v3 - 8) + 8))(a1 + v5 + v7);
  return a1;
}

uint64_t sub_214A9F244(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37440) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v1 - 8) + 8))();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(a1 + v5 + v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37458) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  (*(*(v3 - 8) + 8))(a1 + v5 + v7);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400) + 36);

  MEMORY[0x277D82BD8](*(v8 + 16));
  return a1;
}

uint64_t sub_214A9F3DC(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37440) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v1 - 8) + 8))();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(a1 + v6 + v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37458) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  (*(*(v3 - 8) + 8))(a1 + v6 + v8);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400) + 36);

  MEMORY[0x277D82BD8](*(v9 + 16));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37408) + 36);
  v11 = *(sub_214CCE7B4() + 20);
  v4 = sub_214CCE4D4();
  (*(*(v4 - 8) + 8))(a1 + v10 + v11);
  return a1;
}

uint64_t sub_214A9F5F4(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37440) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v1 - 8) + 8))();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v12 = sub_214CCE854();
  v13 = *(*(v12 - 8) + 8);
  v13(a1 + v6 + v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37458) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  (*(*(v2 - 8) + 8))(a1 + v6 + v8);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400) + 36);

  MEMORY[0x277D82BD8](*(v9 + 16));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37408) + 36);
  v11 = *(sub_214CCE7B4() + 20);
  v3 = sub_214CCE4D4();
  (*(*(v3 - 8) + 8))(a1 + v10 + v11);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37410);
  (v13)(a1 + *(v4 + 36), v12);
  return a1;
}

uint64_t sub_214A9F854(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37440) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v2 - 8) + 16))();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v21 = sub_214CCE854();
  v22 = *(*(v21 - 8) + 16);
  v22(a2 + v9 + v10, a1 + v9 + v10);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37458) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  (*(*(v3 - 8) + 16))(a2 + v9 + v11, a1 + v9 + v11);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400) + 36);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);

  v16 = a2 + v12;
  *v16 = v13;
  *(v16 + 8) = v14 & 1;
  v15 = *(a1 + v12 + 16);
  MEMORY[0x277D82BE0](v15);
  *(v16 + 16) = v15;
  *(v16 + 24) = *(a1 + v12 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37408);
  v18 = (a1 + *(v4 + 36));
  v19 = (a2 + *(v4 + 36));
  *v19 = *v18;
  *(v19 + 1) = *(v18 + 1);
  v17 = *(sub_214CCE7B4() + 20);
  v5 = sub_214CCE4D4();
  (*(*(v5 - 8) + 16))(&v19[v17], &v18[v17]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37498);
  *&v19[*(v6 + 36)] = *&v18[*(v6 + 36)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37410);
  (v22)(a2 + *(v7 + 36), a1 + *(v7 + 36), v21);
  return a2;
}

uint64_t sub_214A9FBD0()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A9FC20()
{
  type metadata accessor for MUIHighlightedMessagesViewModel();
  sub_214C2B53C();
  sub_214C2B5B8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214A9FCF0()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A9FD40()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A9FD90(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_214A9FE84(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374E0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214A9FEEC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450) + 36);
  v3 = sub_214CCE854();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_214AA003C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37598);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37548) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37568) + 28);
  v2 = sub_214CCE6E4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_214AA0130(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375A0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214AA0198(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375A0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37530);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x21uLL);
  return a2;
}

uint64_t sub_214AA0EC4()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_214AA0F5C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214AA1104()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 24));
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_214AA1284()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214AA12DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214AA1324()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214AA136C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214AA17AC()
{
  v6 = sub_214CCD254();
  v3 = *(v6 - 8);
  v1 = *(v3 + 80);
  v4 = (v1 + 32) & ~v1;
  v5 = (v4 + *(v3 + 64) + v1) & ~v1;

  v7 = *(v3 + 8);
  v7(v0 + v4, v6);
  v7(v0 + v5, v6);
  return swift_deallocObject();
}

uint64_t sub_214AA18DC()
{

  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_214AA1984()
{
  v2 = *(sub_214CCD254() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214AA1A90()
{
  v2 = *(sub_214CCD254() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214AA1E24()
{

  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_214AA23FC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214AA2450()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_214AA29B4()
{
  MEMORY[0x277D82BD8](*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214AA2A4C()
{

  return swift_deallocObject();
}

uint64_t sub_214AA2A94()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_214AA2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(*(a2 - 8) + 8))(a1 + *(a5 + 44));
  (*(*(*(*(*(a12 + 24) + 16) + 16) - 8) + 8))(a1 + *(a12 + 36));
  return a1;
}

uint64_t sub_214AA2BD8()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA2C88()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA2D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  v6 = *(a3 + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  return a1;
}

uint64_t sub_214AA2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  v15 = *(a4 + 36);
  if (*(a1 + v15))
  {
    v10 = *(a1 + v15);
    v11 = *(a1 + v15 + 8);

    v4 = (a2 + v15);
    *v4 = v10;
    v4[1] = v11;
  }

  else
  {
    *(a2 + v15) = *(a1 + v15);
  }

  v8 = a2 + v15;
  v9 = a1 + v15;
  if (*(a1 + v15 + 16))
  {
    v6 = *(v9 + 16);
    v7 = *(a1 + v15 + 24);

    *(v8 + 16) = v6;
    *(a2 + v15 + 24) = v7;
  }

  else
  {
    *(v8 + 16) = *(v9 + 16);
  }

  return a2;
}

uint64_t sub_214AA2F50(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D58) + 44);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D60);
  v5 = *(v6 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00);
  (*(*(v1 - 8) + 8))(a1 + v4 + v5);
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v4 + v7, 1))
  {
    (*(v9 + 8))(a1 + v4 + v7, v8);
  }

  return a1;
}

uint64_t sub_214AA314C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98);
  sub_214CCF0C4();
  sub_214CCF8D4();
  swift_getAssociatedTypeWitness();
  type metadata accessor for MailboxView();
  swift_getWitnessTable();
  sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  sub_214CCE2F4();
  swift_getWitnessTable();
  sub_214C200FC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_214CCF0F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214CCF074();
  sub_214CCE2F4();
  sub_214CCE2F4();
  sub_214CCFF34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_214CCE394();
  swift_getWitnessTable();
  sub_214CCE0A4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCE1B4();
  sub_214CCE2F4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  sub_214CCFF34();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCF074();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0);
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28);
  sub_214CCE2F4();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0);
  sub_214CCE2F4();
  swift_getWitnessTable();
  sub_214B070E8();
  swift_getWitnessTable();
  sub_214B07170();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214C69780();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCF074();
  sub_214CCE2F4();
  sub_214CCE2F4();
  sub_214CCE2F4();
  sub_214CCEF24();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CF0);
  sub_214CCE2F4();
  sub_214CCE2F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214C69808();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_214AA3C14()
{
  sub_214CCF8D4();
  swift_getAssociatedTypeWitness();
  type metadata accessor for MailboxView();
  swift_getWitnessTable();
  sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  sub_214CCE2F4();
  swift_getWitnessTable();
  sub_214C200FC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_214CCF0F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214CCF074();
  sub_214CCE2F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_214AA4010()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA40C0()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_214AA41C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a2 - 8) + 8))();
  v8 = *(a5 + 36);
  v9 = *(*(*(*(a5 + 24) + 16) + 16) + 20);
  v5 = sub_214CCE4D4();
  (*(*(v5 - 8) + 8))(a1 + v8 + v9);

  return a1;
}

__n128 sub_214AA4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a3 - 8) + 16))();
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x29uLL);
  memcpy((a2 + *(a5 + 36)), (a1 + *(a5 + 36)), 0x29uLL);
  v18 = (a1 + *(a6 + 36));
  v19 = (a2 + *(a6 + 36));
  *v19 = *v18;
  v17 = *(a6 + 24);
  v16 = *(v17 + 16);
  v12 = *(*(v16 + 16) + 20);
  v6 = sub_214CCE4D4();
  (*(*(v6 - 8) + 16))(&v19[v12], &v18[v12]);
  v14 = *(v16 + 52);
  v15 = *&v18[v14];

  *&v19[v14] = v15;
  *&v19[*(v16 + 56)] = *&v18[*(v16 + 56)];
  result = *&v18[*(v17 + 36)];
  *&v19[*(v17 + 36)] = result;
  return result;
}

uint64_t sub_214AA4454()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA4504()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA45B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38098) + 52);
  v2 = sub_214CCFC94();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t sub_214AA4694(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_214AA4748(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_214AA487C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214AA49B0()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA4A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v15 = a2 + *(a6 + 44);
  v14 = a1 + *(a6 + 44);
  (*(*(a3 - 8) + 16))();
  v10 = v14 + *(a4 + 48);
  v11 = v15 + *(a4 + 48);
  *v11 = *v10;
  *(v11 + 8) = *(v10 + 8);
  memcpy((a2 + *(a8 + 36)), (a1 + *(a8 + 36)), 0x30uLL);
  memcpy((a2 + *(a9 + 36)), (a1 + *(a9 + 36)), 0x70uLL);
  memcpy((a2 + *(a10 + 36)), (a1 + *(a10 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214AA4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = *(a18 + 44);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  (*(*(v18 - 8) + 8))();
  v28 = *(a16 + 48);
  if (!(*(*(a14 - 8) + 48))(a1 + v26 + v28, 1))
  {
    v19 = sub_214CCF0C4();
    (*(*(v19 - 8) + 8))();
    v21 = a1 + v26 + v28 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v21 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v21 + *(a8 + 48));
  }

  return a1;
}

uint64_t sub_214AA4D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = *(a18 + 44);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  (*(*(v18 - 8) + 8))();
  v28 = *(a16 + 48);
  if (!(*(*(a14 - 8) + 48))(a1 + v26 + v28, 1))
  {
    v19 = sub_214CCF0C4();
    (*(*(v19 - 8) + 8))();
    v21 = a1 + v26 + v28 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v21 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v21 + *(a8 + 48));
  }

  return a1;
}

uint64_t sub_214AA4FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v31 = *(a18 + 44);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  (*(*(v21 - 8) + 8))();
  v33 = *(a16 + 48);
  if (!(*(*(a14 - 8) + 48))(a1 + v31 + v33, 1))
  {
    v22 = sub_214CCF0C4();
    (*(*(v22 - 8) + 8))();
    v26 = a1 + v31 + v33 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v26 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v26 + *(a8 + 48));
  }

  v25 = a1 + *(a21 + 36) + *(*(*(a21 + 24) + 16) + 20);
  v23 = sub_214CCE4D4();
  (*(*(v23 - 8) + 8))(v25);
  return a1;
}

uint64_t sub_214AA5230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v31 = *(a18 + 44);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  (*(*(v21 - 8) + 8))();
  v33 = *(a16 + 48);
  if (!(*(*(a14 - 8) + 48))(a1 + v31 + v33, 1))
  {
    v22 = sub_214CCF0C4();
    (*(*(v22 - 8) + 8))();
    v26 = a1 + v31 + v33 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v26 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v26 + *(a8 + 48));
  }

  v25 = a1 + *(a21 + 36) + *(*(*(a21 + 24) + 16) + 20);
  v23 = sub_214CCE4D4();
  (*(*(v23 - 8) + 8))(v25);

  return a1;
}

uint64_t sub_214AA54D0()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA5580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v31 = *(a18 + 44);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  (*(*(v21 - 8) + 8))();
  v33 = *(a16 + 48);
  if (!(*(*(a14 - 8) + 48))(a1 + v31 + v33, 1))
  {
    v22 = sub_214CCF0C4();
    (*(*(v22 - 8) + 8))();
    v26 = a1 + v31 + v33 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v26 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v26 + *(a8 + 48));
  }

  v25 = a1 + *(a21 + 36) + *(*(*(a21 + 24) + 16) + 20);
  v23 = sub_214CCE4D4();
  (*(*(v23 - 8) + 8))(v25);

  return a1;
}

uint64_t sub_214AA583C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA58EC()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!(*(*(a14 - 8) + 48))(a1, 1))
  {
    v14 = sub_214CCF0C4();
    (*(*(v14 - 8) + 8))(a1);
    v16 = a1 + *(a13 + 48) + *(a10 + 44);
    (*(*(a2 - 8) + 8))(v16 + *(a3 + 44));

    (*(*(a7 - 8) + 8))(v16 + *(a8 + 48));
  }

  return a1;
}

char *sub_214AA5B04(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v31 = *(a15 - 8);
  if ((*(v31 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a16 - 8) + 64));
  }

  else
  {
    v16 = sub_214CCF0C4();
    (*(*(v16 - 8) + 32))(a2, a1);
    v17 = *(a14 + 48);
    v22 = &a2[v17];
    v23 = &a1[v17];
    *v22 = a1[v17];
    v18 = *(a11 + 44);
    v20 = &a2[v17 + v18];
    v21 = &a1[v17 + v18];
    *v20 = *v21;
    v20[16] = v21[16];
    (*(*(a3 - 8) + 32))(&v20[*(a4 + 44)], &v21[*(a4 + 44)]);
    memcpy(&v20[*(a6 + 36)], &v21[*(a6 + 36)], 0x29uLL);
    *&v20[*(a7 + 36)] = *&v21[*(a7 + 36)];
    (*(*(a8 - 8) + 32))(&v20[*(a9 + 48)], &v21[*(a9 + 48)]);
    memcpy(&v22[*(a13 + 36)], &v23[*(a13 + 36)], 0x29uLL);
    (*(v31 + 56))(a2, 0, 1, a15);
  }

  return a2;
}

char *sub_214AA5D94(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v35 = *(a15 - 8);
  if ((*(v35 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a16 - 8) + 64));
  }

  else
  {
    v16 = sub_214CCF0C4();
    (*(*(v16 - 8) + 16))(a2, a1);
    v17 = *(a14 + 48);
    v26 = &a2[v17];
    v27 = &a1[v17];
    *v26 = a1[v17];
    v18 = *(a11 + 44);
    v24 = &a2[v17 + v18];
    v25 = &a1[v17 + v18];
    *v24 = *v25;
    v24[16] = v25[16];
    (*(*(a3 - 8) + 16))(&v24[*(a4 + 44)], &v25[*(a4 + 44)]);
    memcpy(&v24[*(a6 + 36)], &v25[*(a6 + 36)], 0x29uLL);
    v19 = *(a7 + 36);
    v22 = &v24[v19];
    v21 = *&v25[v19];
    v23 = *&v25[v19 + 8];

    *v22 = v21;
    *(v22 + 1) = v23;
    (*(*(a8 - 8) + 16))(&v24[*(a9 + 48)], &v25[*(a9 + 48)]);
    memcpy(&v26[*(a13 + 36)], &v27[*(a13 + 36)], 0x29uLL);
    (*(v35 + 56))(a2, 0, 1, a15);
  }

  return a2;
}

uint64_t sub_214AA6060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a1 + *(a10 + 44);
  (*(*(a2 - 8) + 8))(v12 + *(a3 + 44));

  (*(*(a7 - 8) + 8))(v12 + *(a8 + 48));
  return a1;
}

_BYTE *sub_214AA6124(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a2 = *a1;
  v13 = *(a11 + 44);
  v22 = &a1[v13];
  v21 = &a2[v13];
  *v21 = *&a1[v13];
  v21[16] = a1[v13 + 16];
  (*(*(a3 - 8) + 16))(&a2[v13 + *(a4 + 44)], &a1[v13 + *(a4 + 44)]);
  memcpy(&v21[*(a6 + 36)], &v22[*(a6 + 36)], 0x29uLL);
  v18 = *(a7 + 36);
  v19 = *&v22[v18];
  v20 = *&v22[v18 + 8];

  v14 = &v21[v18];
  *v14 = v19;
  v14[1] = v20;
  (*(*(a8 - 8) + 16))(&v21[*(a9 + 48)], &v22[*(a9 + 48)]);
  memcpy(&a2[*(a13 + 36)], &a1[*(a13 + 36)], 0x29uLL);
  return a2;
}

uint64_t sub_214AA62B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = sub_214CCF0C4();
  (*(*(v14 - 8) + 16))(a2, a1);
  v30 = (a1 + *(a14 + 48));
  v31 = (a2 + *(a14 + 48));
  *v31 = *v30;
  v15 = *(a11 + 44);
  v28 = &v30[v15];
  v16 = &v31[v15];
  v27 = &v31[v15];
  *v16 = *&v30[v15];
  v16[16] = v30[v15 + 16];
  (*(*(a3 - 8) + 16))(&v31[v15 + *(a4 + 44)], &v30[v15 + *(a4 + 44)]);
  memcpy(&v27[*(a6 + 36)], &v28[*(a6 + 36)], 0x29uLL);
  v24 = *(a7 + 36);
  v25 = *&v28[v24];
  v26 = *&v28[v24 + 8];

  v17 = &v27[v24];
  *v17 = v25;
  v17[1] = v26;
  (*(*(a8 - 8) + 16))(&v27[*(a9 + 48)], &v28[*(a9 + 48)]);
  memcpy(&v31[*(a13 + 36)], &v30[*(a13 + 36)], 0x29uLL);
  return a2;
}

uint64_t sub_214AA64C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = sub_214CCF0C4();
  (*(*(v13 - 8) + 8))(a1);
  v18 = a1 + *(a13 + 48) + *(a10 + 44);
  (*(*(a2 - 8) + 8))(v18 + *(a3 + 44));

  (*(*(a7 - 8) + 8))(v18 + *(a8 + 48));
  return a1;
}

uint64_t sub_214AA65F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))(a1 + *(a3 + 44));

  return a1;
}

uint64_t sub_214AA6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  (*(*(a3 - 8) + 16))(a2 + *(a4 + 44), a1 + *(a4 + 44));
  memcpy((a2 + *(a6 + 36)), (a1 + *(a6 + 36)), 0x29uLL);
  v13 = *(a7 + 36);
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);

  result = a2;
  v8 = (a2 + v13);
  *v8 = v14;
  v8[1] = v15;
  return result;
}

uint64_t sub_214AA674C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_214AA67FC()
{
  v4 = sub_214CCE324();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 201) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 168));

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_214AA6AFC()
{

  return swift_deallocObject();
}

uint64_t sub_214AA6B44()
{

  return swift_deallocObject();
}

uint64_t sub_214AA6BCC()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_214AA6C6C()
{

  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_214AA6CFC()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_214AA6D6C()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_214AA6DC4()
{
  sub_214C86BE8(*(v0 + 16), *(v0 + 24) & 1);

  MEMORY[0x277D82BD8](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_214AA6E2C()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_214AA7384()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38248) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214AA745C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_214CCD2B4();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_214AA7578(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214AA76E0()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[5]);
  MEMORY[0x277D82BD8](v0[7]);

  return swift_deallocObject();
}

uint64_t sub_214AA7A70()
{

  return swift_deallocObject();
}

uint64_t sub_214AA7AF8()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38470);
  v6 = *(v5 - 8);
  v4 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v2 = v4 + *(v6 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38468);
  v7 = *(v9 - 8);
  v8 = (v2 + *(v7 + 80)) & ~*(v7 + 80);
  v3 = v8 + *(v7 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38460);
  v10 = *(v12 - 8);
  v11 = (v3 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v6 + 8))(v0 + v4, v5);
  (*(v7 + 8))(v0 + v8, v9);
  (*(v10 + 8))(v0 + v11, v12);
  return swift_deallocObject();
}

uint64_t sub_214AA7D5C()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38478);
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v1 = MEMORY[0x277D82BD8](*(v0 + 16));
  (*(v3 + 8))(v0 + v4, v5, v1);
  return swift_deallocObject();
}

uint64_t sub_214AA7EF0()
{
  v2 = *(sub_214CCD374() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_214AA81A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214AA829C()
{
  v4 = sub_214CCD374();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_214AA8464()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 64));
  return swift_deallocObject();
}

uint64_t sub_214AA851C()
{
  MEMORY[0x277D82BD8](*(v0 + 48));
  MEMORY[0x277D82BD8](*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_214AA85D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_214CCFEA4();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 20), a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_214AA86FC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCFEA4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214AA8858(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_214CCD2B4();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_214AA8970(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_214CCD2B4();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214AA8AD8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

id createButton(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D75220];
  v6 = MEMORY[0x277D755B8];
  v7 = a2;
  v8 = [v6 systemImageNamed:a1];
  v9 = [v5 systemButtonWithImage:v8 target:v7 action:a3];

  return v9;
}

id DayToStringMap()
{
  if (DayToStringMap_onceToken != -1)
  {
    DayToStringMap_cold_1();
  }

  v1 = DayToStringMap_map;

  return v1;
}

void __DayToStringMap_block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_282705920;
  v2[1] = &unk_282705938;
  v3[0] = @"Sunday";
  v3[1] = @"Monday";
  v2[2] = &unk_282705950;
  v2[3] = &unk_282705968;
  v3[2] = @"Tuesday";
  v3[3] = @"Wednesday";
  v2[4] = &unk_282705980;
  v2[5] = &unk_282705998;
  v3[4] = @"Thursday";
  v3[5] = @"Friday";
  v2[6] = &unk_2827059B0;
  v3[6] = @"Saturday";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = DayToStringMap_map;
  DayToStringMap_map = v0;
}

long double ProjectedOffsetForOffsetWithVelocity(double a1, double a2, double a3, double a4, long double a5, long double a6)
{
  v7 = a1 - a3 / 1000.0 / log(a5);
  log(a6);
  return v7;
}

id _ef_log_MessageListCellHelper()
{
  if (_ef_log_MessageListCellHelper_onceToken != -1)
  {
    _ef_log_MessageListCellHelper_cold_1();
  }

  v1 = _ef_log_MessageListCellHelper_log;

  return v1;
}

void sub_214AAD074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AAE1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AB18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_214AB3C60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_214AB4E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB6410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB6924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB7300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AB7894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MUITitleFromSection(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MessageListSectionServerSearch"])
  {
    v2 = _EFLocalizedString();
LABEL_6:
    v3 = v2;
    goto LABEL_7;
  }

  if (([v1 isEqualToString:@"MessageListSectionGroupedSenderUnseen"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"MessageListSectionRecentUnseen") || (objc_msgSend(v1, "isEqualToString:", @"MessageListSectionGroupedSender") & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"MessageListSectionRecent"))
  {
    v2 = _EFLocalizedStringFromTable();
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_214ABCB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, id a42)
{
  objc_destroyWeak((v42 + 80));
  objc_destroyWeak((v42 + 72));
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v43 - 168));
  objc_destroyWeak((v43 - 160));
  _Unwind_Resume(a1);
}

void sub_214ABE28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AC1244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 240), 8);
  _Block_object_dispose((v51 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_214AC1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMessageListSelectionType(uint64_t a1)
{
  v1 = &stru_2826EE5B8;
  if (a1 == 1)
  {
    v1 = @"AllMessages";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"SelectedMessages";
  }
}

id _ef_log_MessageListSelectionModel()
{
  if (_ef_log_MessageListSelectionModel_onceToken != -1)
  {
    _ef_log_MessageListSelectionModel_cold_1();
  }

  v1 = _ef_log_MessageListSelectionModel_log;

  return v1;
}

void sub_214AC61EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AC682C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ef_log_MessageSelectionStrategy()
{
  if (_ef_log_MessageSelectionStrategy_onceToken != -1)
  {
    _ef_log_MessageSelectionStrategy_cold_1();
  }

  v1 = _ef_log_MessageSelectionStrategy_log;

  return v1;
}

void sub_214ACDFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214ACE4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_214AD02A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AD0AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MUIStringFromBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_27818A328[a1 - 1];
  }
}

id MUILocalizedStringSingularFromCategory(void *a1)
{
  if (a1 <= 3)
  {
    a1 = _EFLocalizedString();
  }

  return a1;
}

id MUICategorizeSenderMenuAccessibilityIdentifierForBucket(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_27818A3C8 + a1);
  }

  return v2;
}

__CFString *MUIUnseenImageNameForBucket(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v4 = MUISolariumFeatureEnabled();
      v3 = MFImageGlyphCategoryPrimaryUnseenFill;
      v5 = MFImageGlyphCategoryPrimaryUnseen;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_15;
      }

      v4 = MUISolariumFeatureEnabled();
      v3 = MFImageGlyphCategoryTransactionsUnseenFill;
      v5 = MFImageGlyphCategoryTransactionsUnseen;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v4 = MUISolariumFeatureEnabled();
        v3 = MFImageGlyphCategoryUpdatesUnseenFill;
        v5 = MFImageGlyphCategoryUpdatesUnseen;
        break;
      case 4:
        v4 = MUISolariumFeatureEnabled();
        v3 = MFImageGlyphCategoryPromotionsUnseenFill;
        v5 = MFImageGlyphCategoryPromotionsUnseen;
        break;
      case 5:
        v3 = MFImageGlyphCategoryAllMailUnseen;
        goto LABEL_14;
      default:
        goto LABEL_15;
    }
  }

  if (!v4)
  {
    v3 = v5;
  }

LABEL_14:
  v2 = *v3;
LABEL_15:

  return v2;
}

uint64_t MUIBucketFromEMCategoryType(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 1;
  }
}

id MUIPlatformTextColorForBucket(uint64_t a1)
{
  if (a1 == 5)
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    MUIPlatformColorForBucket(a1);
  }
  v1 = ;

  return v1;
}

id MUIPlatformColorForCategory(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return MUIPlatformColorForBucket(a1 + 1);
  }

  else
  {
    return MUIPlatformColorForBucket(1);
  }
}

__CFString *MUIImageNameForCategory(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return MUIImageNameForBucket(a1 + 1);
  }

  else
  {
    return MUIImageNameForBucket(1);
  }
}

__CFString *MUITimeSensitiveImageNameForCategoryType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_27818A468[a1 - 1];
  }

  return v2;
}

void sub_214AD24E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_214AD2DD4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_214AD3D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AD4B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AD4D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

Class __getMCCSecretAgentControllerClass_block_invoke(uint64_t a1)
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!icloudMCCKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __icloudMCCKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/icloudMCCKit.framework/icloudMCCKit";
    icloudMCCKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!icloudMCCKitLibraryCore_frameworkLibrary)
  {
    __getMCCSecretAgentControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MCCSecretAgentController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCCSecretAgentControllerClass_block_invoke_cold_1();
  }

  getMCCSecretAgentControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __icloudMCCKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  icloudMCCKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPKMapsIconForMerchantCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/PassKitUIFoundation.framework/PassKitUIFoundation";
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PassKitUIFoundationLibraryCore_frameworkLibrary;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    __getPKMapsIconForMerchantCategorySymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "PKMapsIconForMerchantCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKMapsIconForMerchantCategorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUIFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

id MUILocalizedTokenAndStringSeparator()
{
  if (MUILocalizedTokenAndStringSeparator_onceToken != -1)
  {
    MUILocalizedTokenAndStringSeparator_cold_1();
  }

  v1 = MUILocalizedTokenAndStringSeparator___result;

  return v1;
}

void sub_214AD6014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MUILocalizedTokenSeparator()
{
  if (MUILocalizedTokenSeparator_onceToken != -1)
  {
    MUILocalizedTokenSeparator_cold_1();
  }

  v1 = MUILocalizedTokenSeparator___result;

  return v1;
}

uint64_t __MUILocalizedTokenSeparator_block_invoke()
{
  v0 = _EFLocalizedString();
  v1 = MUILocalizedTokenSeparator___result;
  MUILocalizedTokenSeparator___result = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __MUILocalizedTokenAndStringSeparator_block_invoke()
{
  v0 = _EFLocalizedString();
  v1 = MUILocalizedTokenAndStringSeparator___result;
  MUILocalizedTokenAndStringSeparator___result = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id MUIGeometryLog()
{
  if (MUIGeometryLog_onceToken != -1)
  {
    MUIGeometryLog_cold_1();
  }

  v1 = MUIGeometryLog_os_log;

  return v1;
}

uint64_t __MUIGeometryLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MUIGeometry");
  v1 = MUIGeometryLog_os_log;
  MUIGeometryLog_os_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

double MUICGRectFromNSDictionary(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *MEMORY[0x277CBF3A0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v17}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v15 = MUIGeometryLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            MUICGRectFromNSDictionary_cold_1(v3, v8, v15);
          }

          v14 = v3;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([v3 count] == 4)
  {
    v11 = [v3 objectForKeyedSubscript:@"x"];
    [v11 floatValue];
    v2 = v12;
    v13 = [v3 objectForKeyedSubscript:@"y"];
    [v13 floatValue];

    v14 = [v3 objectForKeyedSubscript:@"width"];
    [v14 floatValue];
    v15 = [v3 objectForKeyedSubscript:@"height"];
    [v15 floatValue];
LABEL_14:
  }

  return v2;
}

__CFString *NSStringFromMUIMailboxFilterType(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_27818A750[a1];
  }
}

id _ef_log_MUIMailboxFilterPersistedStore()
{
  if (_ef_log_MUIMailboxFilterPersistedStore_onceToken != -1)
  {
    _ef_log_MUIMailboxFilterPersistedStore_cold_1();
  }

  v1 = _ef_log_MUIMailboxFilterPersistedStore_log;

  return v1;
}

void sub_214ADD650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADD81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADDB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADE748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADF1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ADF454(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_214AE044C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AE0688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_214AE2598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AE27D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214AE2F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, id a45)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v45 - 168));
  objc_destroyWeak((v45 - 160));
  _Unwind_Resume(a1);
}

void sub_214AE4450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 136));
  objc_destroyWeak((v33 - 128));
  _Unwind_Resume(a1);
}

void sub_214AE82D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MUIOnboardingTipFromBucket(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v4 = [MEMORY[0x277CBEBD0] em_userDefaults];
      v5 = MUIOnboardingTipKeyForBucket(1);
      v6 = [v4 integerForKey:v5];

      if (v6 == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = 5;
    v2 = 6;
    if (a1 != 5)
    {
      v2 = 0;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    if (a1 == 3)
    {
      return 4;
    }

    else
    {
      return v1;
    }
  }
}

id MUIOnboardingTipKeyForTip(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_27818AE30 + a1 - 1);
  }

  return v2;
}

id _ef_log_UIImage()
{
  if (_ef_log_UIImage_onceToken[0] != -1)
  {
    _ef_log_UIImage_cold_1();
  }

  v1 = _ef_log_UIImage_log;

  return v1;
}

void sub_214AEC9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_214AEE8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214AEF2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMUISearchSuggestionCategory(void *a1)
{
  v1 = a1;
  v2 = +[MUISearchSuggestionCategory contactCategory];

  if (v2 == v1)
  {
    v13 = @"Contact";
  }

  else
  {
    v3 = +[MUISearchSuggestionCategory suggestedSearchCategory];

    if (v3 == v1)
    {
      v13 = @"Suggested Search";
    }

    else
    {
      v4 = +[MUISearchSuggestionCategory genericCategory];

      if (v4 == v1)
      {
        v13 = @"Generic";
      }

      else
      {
        v5 = +[MUISearchSuggestionCategory documentCategory];

        if (v5 == v1)
        {
          v13 = @"Document";
        }

        else
        {
          v6 = +[MUISearchSuggestionCategory locationCategory];

          if (v6 == v1)
          {
            v13 = @"Location";
          }

          else
          {
            v7 = +[MUISearchSuggestionCategory linkCategory];

            if (v7 == v1)
            {
              v13 = @"Link";
            }

            else
            {
              v8 = +[MUISearchSuggestionCategory allMailboxesCategory];

              if (v8 == v1)
              {
                v13 = @"All Mailboxes";
              }

              else
              {
                v9 = +[MUISearchSuggestionCategory topHitsCategory];

                if (v9 == v1)
                {
                  v13 = @"Top Hits";
                }

                else
                {
                  v10 = +[MUISearchSuggestionCategory instantAnswersCategory];

                  if (v10 == v1)
                  {
                    v13 = @"Instant Answers";
                  }

                  else
                  {
                    v11 = +[MUISearchSuggestionCategory recentSearchCategory];

                    if (v11 == v1)
                    {
                      v13 = @"Recent Searches";
                    }

                    else
                    {
                      v12 = +[MUISearchSuggestionCategory recentGenericCategory];

                      if (v12 == v1)
                      {
                        v13 = @"Recent Generic";
                      }

                      else
                      {
                        v13 = 0;
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

  return v13;
}

void signpostEndEnqueueInterval(void *a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = signpostLog();
    v5 = os_signpost_enabled(v4);

    if (v5)
    {
      v6 = [v3[4] phraseKind];
      v7 = signpostLog();
      v8 = [v3[4] signpostID];
      v9 = v8;
      if (v6)
      {
        if ((v8 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
        {
          goto LABEL_11;
        }

        v11 = 67109120;
        v12 = a2;
        v10 = "com.apple.mail.search.suggestion.zkw.queue";
      }

      else
      {
        if ((v8 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
        {
          goto LABEL_11;
        }

        v11 = 67109120;
        v12 = a2;
        v10 = "com.apple.mail.search.suggestion.ayt.queue";
      }

      _os_signpost_emit_with_name_impl(&dword_214A5E000, v7, OS_SIGNPOST_INTERVAL_END, v9, v10, "cancelled=%d", &v11, 8u);
LABEL_11:
    }
  }
}

void sub_214AF2924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void signpostEndRunInterval(void *a1)
{
  v1 = a1;
  v2 = signpostLog();
  v3 = os_signpost_enabled(v2);

  if (v3)
  {
    signpostEndRunInterval_cold_1(v1);
  }
}

id signpostLog()
{
  if (signpostLog_onceToken_1 != -1)
  {
    signpostLog_cold_1();
  }

  v1 = signpostLog_log_1;

  return v1;
}

uint64_t __signpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.email.signposts", "_MUISearchSuggestionsOperation");
  v1 = signpostLog_log_1;
  signpostLog_log_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void OUTLINED_FUNCTION_7(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, a5, a6, &buf, 0x12u);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t IntentPerson.emailAddress.getter()
{
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v37 = 0;
  v27 = sub_214CCCC74();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v31 = (&v7 - v30);
  v50 = sub_214CCCC94();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v32 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v33 = &v7 - v32;
  v63 = &v7 - v32;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34200);
  v34 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v35 = &v7 - v34;
  v36 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v34);
  v49 = &v7 - v36;
  v38 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34208) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = (&v7 - v38);
  v45 = sub_214CCCC34();
  v41 = *(v45 - 8);
  v42 = v45 - 8;
  v40 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v43 = &v7 - v40;
  v62 = v0;
  sub_214CCCC44();
  v44 = IntentPerson.Name.displayString.getter();
  v46 = v3;
  v60 = v44;
  v61 = v3;
  (*(v41 + 8))(v43, v45);
  sub_214CCCCC4();
  v51 = *(v47 + 48);
  v52 = v47 + 48;
  if (v51(v49, 1, v50) == 1)
  {
    sub_214AF6914(v49);
    (*(v28 + 56))(v39, 1, 1, v27);
  }

  else
  {
    sub_214CCCC84();
    (*(v47 + 8))(v49, v50);
    (*(v28 + 56))(v39, 0, 1, v27);
  }

  if ((*(v28 + 48))(v39, 1, v27) == 1)
  {
    sub_214AF69BC(v39);
  }

  else
  {
    if ((*(v28 + 88))(v39, v27) == *MEMORY[0x277CB9D90])
    {
      (*(v28 + 96))(v39, v27);
      v17 = *v39;
      v22 = v39[1];
      v53 = v17;
      v54 = v22;
      v18 = objc_opt_self();

      v20 = sub_214CCF544();

      v19 = sub_214CCF544();

      v21 = [v18 formattedAddressWithName:v20 email:v19 useQuotes:1];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v23 = sub_214CCF564();
      v24 = v4;
      MEMORY[0x277D82BD8](v21);

      v25 = v23;
      v26 = v24;
      return v25;
    }

    (*(v28 + 8))(v39, v27);
  }

  v57 = sub_214CCCCD4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34210);
  sub_214AF6A64();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34220);
    sub_214CD01B4();
    if (v51(v35, 1, v50) == 1)
    {
      break;
    }

    (*(v47 + 32))(v33, v35, v50);
    sub_214CCCC84();
    if ((*(v28 + 88))(v31, v27) == *MEMORY[0x277CB9D90])
    {
      (*(v28 + 96))(v31, v27);
      v8 = *v31;
      v13 = v31[1];
      v55 = v8;
      v56 = v13;
      v9 = objc_opt_self();

      v11 = sub_214CCF544();

      v10 = sub_214CCF544();

      v12 = [v9 formattedAddressWithName:v11 email:v10 useQuotes:1];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v14 = sub_214CCF564();
      v15 = v5;
      MEMORY[0x277D82BD8](v12);

      (*(v47 + 8))(v33, v50);
      sub_214A62278();

      v25 = v14;
      v26 = v15;
      return v25;
    }

    (*(v28 + 8))(v31, v27);
    (*(v47 + 8))(v33, v50);
  }

  sub_214A62278();

  v25 = 0;
  v26 = 0;
  return v25;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t IntentPerson.Name.displayString.getter()
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v14 = 0;
  v15 = sub_214CCCFC4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v19 = &v7 - v18;
  v29 = &v7 - v18;
  v23 = sub_214CCCC34();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v20 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v23);
  v24 = (&v7 - v20);
  v28 = v1;
  (*(v21 + 16))(v0);
  v25 = (*(v21 + 88))(v24, v23);
  if (v25 == *MEMORY[0x277CB9CF8])
  {
    (*(v21 + 96))(v24, v23);
    v2 = v24[1];
    v26 = *v24;
    v27 = v2;
    v12 = v26;
    v13 = v2;
  }

  else if (v25 == *MEMORY[0x277CB9D08])
  {
    v3 = v19;
    (*(v21 + 96))(v24, v23);
    (*(v16 + 32))(v3, v24, v15);
    v29 = v3;
    v10 = sub_214CCCFB4();
    v11 = v4;
    (*(v16 + 8))(v19, v15);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v8 = sub_214CCF614();
    v9 = v5;
    (*(v21 + 8))(v24, v23);
    v12 = v8;
    v13 = v9;
  }

  return v12;
}

uint64_t sub_214AF6914(uint64_t a1)
{
  v3 = sub_214CCCC94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_214AF69BC(uint64_t a1)
{
  v3 = sub_214CCCC74();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214AF6A64()
{
  v2 = qword_27CA34218;
  if (!qword_27CA34218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA34218);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

uint64_t IntentPerson.rawEmailAddress.getter()
{
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v11 = 0;
  v12 = sub_214CCCC74();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = (&v6 - v15);
  v27 = sub_214CCCC94();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v17 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v18 = &v6 - v17;
  v38 = &v6 - v17;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34200);
  v19 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v20 = &v6 - v19;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v19);
  v26 = &v6 - v21;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34208);
  v22 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v23 = (&v6 - v22);
  v37 = v0;
  sub_214CCCCC4();
  v28 = *(v24 + 48);
  v29 = v24 + 48;
  if (v28(v26, 1, v27) == 1)
  {
    sub_214AF6914(v26);
    (*(v13 + 56))(v23, 1, 1, v12);
  }

  else
  {
    sub_214CCCC84();
    (*(v24 + 8))(v26, v27);
    (*(v13 + 56))(v23, 0, 1, v12);
  }

  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_214AF69BC(v23);
  }

  else
  {
    if ((*(v13 + 88))(v23, v12) == *MEMORY[0x277CB9D90])
    {
      (*(v13 + 96))(v23, v12);
      v4 = v23[1];
      v30 = *v23;
      v31 = v4;
      v9 = v30;
      v10 = v4;
      return v9;
    }

    (*(v13 + 8))(v23, v12);
  }

  v34 = sub_214CCCCD4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34210);
  sub_214AF6A64();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34220);
    sub_214CD01B4();
    if (v28(v20, 1, v27) == 1)
    {
      break;
    }

    (*(v24 + 32))(v18, v20, v27);
    sub_214CCCC84();
    if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277CB9D90])
    {
      (*(v13 + 96))(v16, v12);
      v6 = *v16;
      v7 = v16[1];
      v32 = v6;
      v33 = v7;
      (*(v24 + 8))(v18, v27);
      sub_214A62278();
      v9 = v6;
      v10 = v7;
      return v9;
    }

    (*(v13 + 8))(v16, v12);
    (*(v24 + 8))(v18, v27);
  }

  sub_214A62278();
  v9 = 0;
  v10 = 0;
  return v9;
}

uint64_t Array<A>.emailAddresses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34228);
  sub_214AF7510();
  return sub_214CCF6F4();
}

uint64_t sub_214AF7298@<X0>(uint64_t *a1@<X8>)
{
  result = IntentPerson.emailAddress.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1)
{

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34228);
    sub_214AF7598();
    v2 = sub_214CCFA94();

    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

{

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34240);
    sub_214AF7620();
    v2 = sub_214CCFA94();

    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    v3 = sub_214CCF664();

    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

unint64_t sub_214AF7510()
{
  v2 = qword_27CA34230;
  if (!qword_27CA34230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34228);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA34230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214AF7598()
{
  v2 = qword_27CA34238;
  if (!qword_27CA34238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34228);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA34238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214AF7620()
{
  v2 = qword_27CA34248;
  if (!qword_27CA34248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34240);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA34248);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntentPerson.displayString.getter()
{
  v33 = 0;
  v34 = 0;
  v27 = 0;
  v28 = 0;
  v15 = 0;
  v16 = sub_214CCCFC4();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v8 - v19;
  v34 = &v8 - v19;
  v25 = sub_214CCCC34();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v21 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = (&v8 - v21);
  v33 = v0;
  sub_214CCCC44();
  v26 = (*(v22 + 88))(v24, v25);
  if (v26 == *MEMORY[0x277CB9CF8])
  {
    (*(v22 + 96))(v24, v25);
    v1 = v24[1];
    v27 = *v24;
    v28 = v1;
    v13 = v27;
    v14 = v1;
  }

  else if (v26 == *MEMORY[0x277CB9D08])
  {
    v2 = v20;
    (*(v22 + 96))(v24, v25);
    (*(v17 + 32))(v2, v24, v16);
    v34 = v2;
    v11 = sub_214CCCFB4();
    v12 = v3;
    (*(v17 + 8))(v20, v16);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v4 = IntentPerson.rawEmailAddress.getter();
    v29 = v4;
    v30 = v5;
    if (v5)
    {
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v31 = sub_214CCF614();
      v32 = v6;
      if (v30)
      {
        sub_214A61B48();
      }
    }

    v9 = v31;
    v10 = v32;
    (*(v22 + 8))(v24, v25);
    v13 = v9;
    v14 = v10;
  }

  return v13;
}

uint64_t Optional<A>.htmlString.getter()
{
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250);
  v25 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v34 = &v10 - v25;
  v33 = sub_214CCCF24();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v27 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v28 = &v10 - v27;
  v29 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v30 = &v10 - v29;
  v39 = &v10 - v29;
  v38 = v3;
  sub_214AF7DFC(v3, v4);
  if ((*(v31 + 48))(v34, 1, v33) == 1)
  {
    sub_214AF7F24(v34);
LABEL_9:
    v14 = 0;
    v15 = 0;
    return v14;
  }

  (*(v31 + 32))(v30, v34, v33);
  sub_214AF7FCC();
  (*(v31 + 16))(v28, v30, v33);
  v22 = sub_214CCFC84();
  v23 = sub_214AF8030();
  v24 = v5;
  v6 = MEMORY[0x277D82BD8](v22);
  if ((v24 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v31 + 8))(v30, v33, v6);
    goto LABEL_9;
  }

  v20 = v23;
  v21 = v24;
  v18 = v24;
  v17 = v23;
  v36 = v23;
  v37 = v24;
  sub_214AF82CC();
  sub_214AF8330(v17, v18);
  v7 = sub_214AF83AC(v17, v18);
  v19 = v7;
  if (!v7)
  {
    sub_214AF83FC(v17, v18);
    (*(v31 + 8))(v30, v33);
    goto LABEL_9;
  }

  v16 = v19;
  v11 = v19;
  v35 = v19;
  v10 = [v19 stringValue];
  v12 = sub_214CCF564();
  v13 = v8;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  sub_214AF83FC(v17, v18);
  (*(v31 + 8))(v30, v33);
  v14 = v12;
  v15 = v13;
  return v14;
}

void *sub_214AF7DFC(const void *a1, void *a2)
{
  v6 = sub_214CCCF24();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214AF7F24(uint64_t a1)
{
  v3 = sub_214CCCF24();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214AF7FCC()
{
  v2 = qword_280C7CB10;
  if (!qword_280C7CB10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CB10);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214AF8030()
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = v0;
  v16 = 0;
  v10 = [v0 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34258);
  sub_214CD03C4();
  v8 = v1;
  sub_214A671A8(MEMORY[0x277D74090], v1);
  v9 = *MEMORY[0x277D740C8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D740C8]);
  v8[4] = type metadata accessor for DocumentType();
  v8[1] = v9;
  sub_214A63280();
  type metadata accessor for DocumentAttributeKey();
  sub_214AF85A8();
  sub_214CCF344();
  v12 = sub_214CCF304();

  v14 = v16;
  v13 = [v0 dataFromRange:0 documentAttributes:v10 error:{v12, &v14}];
  v11 = v14;
  MEMORY[0x277D82BE0](v14);
  v2 = v16;
  v16 = v11;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v6 = sub_214CCD184();
    MEMORY[0x277D82BD8](v13);
    return v6;
  }

  else
  {
    v4 = v16;
    v5 = sub_214CCD084();
    MEMORY[0x277D82BD8](v4);
    swift_willThrow();

    return 0;
  }
}

unint64_t sub_214AF82CC()
{
  v2 = qword_280C7EB30;
  if (!qword_280C7EB30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7EB30);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214AF8330(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_214AF83FC(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for DocumentType()
{
  v4 = qword_27CA346C0;
  if (!qword_27CA346C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27CA346C0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for DocumentAttributeKey()
{
  v4 = qword_27CA346C8;
  if (!qword_27CA346C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27CA346C8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214AF85A8()
{
  v2 = qword_27CA34260;
  if (!qword_27CA34260)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA34260);
    return WitnessTable;
  }

  return v2;
}

void *sub_214AF8644@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a6;
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v63 = a1;
  v64 = a7;
  v65 = a2;
  v70 = a3;
  v69 = a4;
  if (sub_214AFE80C(26, 0, 0))
  {
    v57 = sub_214CCE814();
    v7 = *(*(v57 - 8) + 64);
    v58 = v20;
    v51 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v20);
    v56 = v20 - v51;
    v52 = *(v8 - 8);
    v53 = v52;
    v55 = v20;
    v9 = MEMORY[0x28223BE20](v20);
    v54 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v9);
    sub_214AFEAB4(v54, v65 & 1, v61, v56);
    MEMORY[0x21605D040](v56, v62, v57, v60);
    sub_214AFEB48(v56, v61);
    return v58;
  }

  else
  {
    v41 = 255;
    v36 = sub_214CCE3B4();
    WitnessTable = swift_getWitnessTable();
    v23 = sub_214CCE754();
    v44 = 0;
    v24 = sub_214CCE2F4();
    v12 = *(*(v24 - 8) + 64);
    v25 = v20;
    v26 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](0);
    v35 = v20 - v26;
    v27 = v20 - v26;
    v39 = sub_214CCE3A4();
    v28 = v39;
    v13 = *(*(v39 - 8) + 64);
    v40 = v20;
    v29 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14.n128_f64[0] = MEMORY[0x28223BE20](v20);
    v38 = v20 - v29;
    v32 = *(v15 - 8);
    v30 = *(v32 + 16);
    v31 = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v14);
    v33 = *(v32 + 56);
    v34 = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    (v33)(v38, 0, 1, v61);
    sub_214CCED24();
    sub_214AFE844(v38, v61);
    v45 = sub_214CCFF34();
    v42 = v45;
    v68 = v59;
    v43 = swift_getWitnessTable();
    v46 = sub_214CCE3B4();
    v47 = sub_214CCE3A4();
    v16 = *(*(v47 - 8) + 64);
    v48 = v20;
    v49 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v17 = MEMORY[0x28223BE20](v20);
    v50 = v20 - v49;
    if (v18)
    {
      (v30)(v50, v63, v61, v17);
      v21 = 0;
      v22 = 1;
      v33(v50);
      (*(*(v42 - 8) + 56))(v50, v21, v22);
    }

    else
    {
      (*(*(v42 - 8) + 56))(v50, 1, v17);
    }

    v19 = swift_getWitnessTable();
    v66 = v60;
    v67 = v19;
    v20[1] = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_214CCED24();
    sub_214AFE8E8(v50, v61, v42);
    sub_214AFE9C4(v27, v62, v61, v28, v23, v24);
    return v25;
  }
}

uint64_t *sub_214AF8FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v52 = a7;
  v53 = a6;
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v59 = a9;
  v60 = a11;
  v61 = a10;
  if (sub_214AFE80C(26, 4, 0))
  {
    v46 = sub_214CCE2D4();
    v47 = *(v46 - 8);
    v48 = v47;
    v49 = &v26;
    MEMORY[0x28223BE20](v57);
    v50 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

    if (v57)
    {
      v39 = v58;
      v40 = v57;
    }

    else
    {
      v63 = sub_214AFE794(17);
      v64 = v17;
      v33 = 1;
      v63 = sub_214CCF614();
      v64 = v18;

      v35 = &v63;
      MEMORY[0x21605D900](v55, v54);
      v19 = sub_214CCF614();
      v34 = v20;
      MEMORY[0x21605D900](v19);

      v62 = v53;
      v21 = sub_214CD0354();
      v36 = v22;
      MEMORY[0x21605D900](v21);

      v37 = sub_214CCF5F4();
      v38 = v23;

      v39 = v37;
      v40 = v38;
    }

    v29 = v40;
    v28 = v39;
    v30 = 0;
    v26 = *(sub_214CCF994() - 8);
    v27 = v26;
    v32 = &v26;
    v24 = MEMORY[0x28223BE20](&v26);
    v31 = &v26 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v24);

    sub_214CCE2C4();
    MEMORY[0x21605D040](v50, v61, v46, v60);

    (*(v48 + 8))(v50, v46);
    return v49;
  }

  else
  {
    v41 = 0;
    v43 = sub_214CCE214();
    v45 = &v26;
    MEMORY[0x28223BE20](v51);
    v44 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));

    v42 = v44 + *(v43 + 20);
    v13 = sub_214CCF994();
    (*(*(v13 - 8) + 16))(v42, v56);
    v14 = v51;
    v15 = v44;
    *v44 = v52;
    v15[1] = v14;
    MEMORY[0x21605D040]();

    sub_214AFED08(v44);
    return v45;
  }
}

id sub_214AF978C(uint64_t a1, unint64_t a2)
{
  v4 = sub_214CCD174();
  v7 = [v3 initWithData_encoding_];
  MEMORY[0x277D82BD8](v4);
  sub_214AF83FC(a1, a2);
  return v7;
}

uint64_t sub_214AF9800()
{
  sub_214B03928();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AF983C()
{
  sub_214B03928();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AF9888()
{
  sub_214B03928();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AF98D8()
{
  sub_214B03928();
  sub_214B04128();
  return sub_214CD0324();
}

uint64_t sub_214AF9924()
{
  sub_214B04798();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AF9960()
{
  sub_214B04798();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AF99AC()
{
  sub_214B04798();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AF99FC()
{
  sub_214B04798();
  sub_214B04128();
  return sub_214CD0324();
}

uint64_t sub_214AF9B18()
{
  sub_214B04518();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AF9B54()
{
  sub_214B04518();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AF9BA0()
{
  sub_214B04518();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AF9BF0()
{
  sub_214B04518();
  sub_214B04128();
  return sub_214CD0324();
}

void sub_214AF9C3C(uint64_t a1@<X8>)
{
  sub_214A706A8();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_214AF9E38()
{
  sub_214A704F4();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AF9E7C()
{
  sub_214A704F4();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AF9EC0()
{
  sub_214A704F4();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AF9FA4()
{
  sub_214B05038();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFA1A8()
{
  sub_214B05038();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFA1EC()
{
  sub_214B05038();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFA230()
{
  sub_214B05038();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFA274()
{
  sub_214B039A8();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFA478()
{
  sub_214B039A8();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFA4BC()
{
  sub_214B039A8();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFA500()
{
  sub_214B039A8();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFA544()
{
  sub_214B03A28();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFA748()
{
  sub_214B03A28();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFA78C()
{
  sub_214B03A28();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFA7D0()
{
  sub_214B03A28();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFA814()
{
  sub_214B03C28();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFAA18()
{
  sub_214B03C28();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFAA5C()
{
  sub_214B03C28();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFAAA0()
{
  sub_214B03C28();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFAAE4()
{
  result = *v0;
  sub_214AFAB00(*v0);
  return result;
}

uint64_t sub_214AFAB30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_214AFAB5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_214AFAB5C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t sub_214AFABE8()
{
  sub_214B03CA8();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AFAC24()
{
  sub_214B03CA8();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AFAC70()
{
  sub_214B03CA8();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AFACC0()
{
  sub_214B03CA8();
  sub_214B04128();
  return sub_214CD0324();
}

uint64_t sub_214AFADDC()
{
  sub_214B04618();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AFAE18()
{
  sub_214B04618();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AFAE64()
{
  sub_214B04618();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AFAEB4()
{
  sub_214B04618();
  sub_214B04128();
  return sub_214CD0324();
}

uint64_t sub_214AFB2AC()
{
  sub_214A7CB0C();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFB2F0()
{
  sub_214A7CB0C();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFB334()
{
  sub_214A7CB0C();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFB578()
{
  sub_214A6E38C();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFB5BC()
{
  sub_214A6E38C();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFB600()
{
  sub_214A6E38C();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFB644()
{
  sub_214B04418();
  sub_214B04128();
  return sub_214CD0334();
}

uint64_t sub_214AFB680()
{
  sub_214B04418();
  sub_214B04128();
  return sub_214CD0304();
}

uint64_t sub_214AFB6CC()
{
  sub_214B04418();
  sub_214B04128();
  return sub_214CD0314() & 1;
}

uint64_t sub_214AFB71C()
{
  sub_214B04418();
  sub_214B04128();
  return sub_214CD0324();
}

uint64_t sub_214AFB7B4()
{
  sub_214B03B28();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFB9B8()
{
  sub_214B03B28();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFB9FC()
{
  sub_214B03B28();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFBA40()
{
  sub_214B03B28();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFBA84()
{
  sub_214B03E28();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFBC88()
{
  sub_214B03E28();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFBCCC()
{
  sub_214B03E28();
  sub_214A69208();
  return sub_214CD0614();
}

uint64_t sub_214AFBD10()
{
  sub_214B03E28();
  sub_214A69208();
  return sub_214CD0624();
}

uint64_t sub_214AFBD54()
{
  sub_214B03BA8();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t sub_214AFBF58()
{
  sub_214B03BA8();
  sub_214A69208();
  return sub_214CD0634();
}

uint64_t sub_214AFBF9C()
{
  sub_214B03BA8();
  sub_214A69208();
  return sub_214CD0614();
}