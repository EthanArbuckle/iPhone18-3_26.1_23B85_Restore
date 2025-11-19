double sub_24ED18C64@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924C98();
  v25 = 0;
  sub_24ED1822C(v2, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_24E60169C(&v26, &v12, &qword_27F22E658);
  sub_24E601704(v37, &qword_27F22E658);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v5 = *&v24[96];
  *(a1 + 129) = *&v24[112];
  v6 = *&v24[144];
  *(a1 + 145) = *&v24[128];
  *(a1 + 161) = v6;
  v7 = *&v24[32];
  *(a1 + 65) = *&v24[48];
  v8 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v24;
  v10 = *&v24[16];
  *(a1 + 17) = *v24;
  *(a1 + 33) = v10;
  v24[167] = v36;
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v11;
  *(a1 + 177) = *&v24[160];
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_24ED18DFC()
{
  MEMORY[0x28223BE20](v0);
  sub_24ED192B4(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrickView);
  sub_24ED18F1C(&qword_27F215C18, type metadata accessor for BrickView);
  return sub_24F9218E8();
}

uint64_t sub_24ED18F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED19010()
{
  v1 = type metadata accessor for BrickView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24ED1919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED19200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for BrickView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24ED1624C(a1, v6, v7, a2);
}

uint64_t sub_24ED192B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED1931C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24ED1932C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24ED1933C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24ED1934C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_24ED193BC()
{
  result = qword_27F22E5A0;
  if (!qword_27F22E5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E598);
    sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack);
    sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E5A0);
  }

  return result;
}

uint64_t sub_24ED194A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED1951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED19638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24ED1974C()
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24ED1984C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED198D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24ED19954()
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED19A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED19A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24ED19B0C()
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED19BA8(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24ED19C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_24ED19C78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_24ED19D54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24ED19E04()
{
  sub_24ED19F18(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24ED19F7C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24ED19F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24ED19F7C()
{
  if (!qword_27F22E608)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22E608);
    }
  }
}

unint64_t sub_24ED19FD0()
{
  result = qword_27F22E610;
  if (!qword_27F22E610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E540);
    sub_24ED1A08C();
    sub_24ED18F1C(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E610);
  }

  return result;
}

unint64_t sub_24ED1A08C()
{
  result = qword_27F22E618;
  if (!qword_27F22E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E620);
    sub_24ED1A118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E618);
  }

  return result;
}

unint64_t sub_24ED1A118()
{
  result = qword_27F22E628;
  if (!qword_27F22E628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E630);
    sub_24E602068(&qword_27F22E638, &qword_27F22E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E628);
  }

  return result;
}

uint64_t sub_24ED1A264(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24E5FD138(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24ED1A2B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24E600B40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_24ED1A304()
{
  result = qword_27F22E650;
  if (!qword_27F22E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E650);
  }

  return result;
}

unint64_t sub_24ED1A35C()
{
  result = qword_27F22E668;
  if (!qword_27F22E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E670);
    sub_24ED1A3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E668);
  }

  return result;
}

unint64_t sub_24ED1A3E0()
{
  result = qword_27F22E678;
  if (!qword_27F22E678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E680);
    sub_24E67283C();
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E678);
  }

  return result;
}

uint64_t sub_24ED1A5AC()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_24ED1A664();
    v6 = v5;
    MEMORY[0x2530543E0](v10);
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_24E71CBC0(v4, v6);
    sub_24E71CBAC(v7, v8);
  }

  sub_24E781610(v2, v3);
  return v4;
}

uint64_t sub_24ED1A664()
{
  v44 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    inited = swift_initStackObject();
    v39 = xmmword_24F93DE60;
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata;
    v11 = *&v8[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata];
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v13;
    *(inited + 56) = v12;

    v15 = sub_24E608448(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F2135C0);
    sub_24E99091C(*&v8[v10] + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url, v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_24E601704(v2, &qword_27F228530);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v43 = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
      sub_24E612B0C(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_24E81C1D4(v41, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v15 = v40;
    }

    v18 = *&v8[v10];
    v19 = *(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer + 8);
    if (v19)
    {
      v20 = *(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
      v43 = v14;
      *&v42 = v20;
      *(&v42 + 1) = v19;
      sub_24E612B0C(&v42, v41);

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_24E81C1D4(v41, 0x796E61706D6F63, 0xE700000000000000, v21);
      v15 = v40;
      v18 = *&v8[v10];
    }

    v22 = *(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category + 8);
    if (v22)
    {
      v23 = *(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
      v43 = v14;
      *&v42 = v23;
      *(&v42 + 1) = v22;
      sub_24E612B0C(&v42, v41);

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_24E81C1D4(v41, 0x79726F6765746163, 0xE800000000000000, v24);
      v15 = v40;
      v18 = *&v8[v10];
    }

    if ((*(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize + 8) & 1) == 0)
    {
      v25 = *(v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize);
      v43 = MEMORY[0x277D84A28];
      *&v42 = v25;
      sub_24E612B0C(&v42, v41);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_24E81C1D4(v41, 0x7A69735F656C6966, 0xE900000000000065, v26);
      v15 = v40;
      v18 = *&v8[v10];
    }

    v27 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27;
      v43 = v14;
      *&v42 = v29;
      *(&v42 + 1) = v28;
      sub_24E612B0C(&v42, v41);

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      sub_24E81C1D4(v41, 0x79745F616964656DLL, 0xEA00000000006570, v30);
    }

    v31 = objc_opt_self();
    v32 = sub_24F92AE28();

    *&v42 = 0;
    v33 = [v31 archivedDataWithRootObject:v32 requiringSecureCoding:0 error:&v42];

    v34 = v42;
    if (v33)
    {
      v35 = sub_24F91F4E8();

      return v35;
    }

    else
    {
      v36 = v34;
      v37 = sub_24F91F278();

      swift_willThrow();
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v38 = sub_24F92AAE8();
      __swift_project_value_buffer(v38, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v39;
      sub_24F9283A8();
      sub_24F92A5A8();

      return 0;
    }
  }

  return result;
}

void sub_24ED1AD98(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = MEMORY[0x277D837D0];
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_24ED1A5AC();
  v13 = v12;
  a1[3] = MEMORY[0x277CC9318];

  *a1 = v11;
  a1[1] = v13;
}

void sub_24ED1AE94(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

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
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_24ED1A5AC();
  *(a2 + 24) = MEMORY[0x277CC9318];
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_24ED1B1A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24ED1B250(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_24F92B0D8();
    v4 = v3;
    if (v2 == sub_24F92B0D8() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_24F92CE08();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

BOOL ProductTopLockup.wantsInlineUberPresentationStyle.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    swift_bridgeObjectRelease_n();
    return *(v1 + 40) || *(v1 + 24) != 0;
  }

  v2 = sub_24F92CE08();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return *(v1 + 40) || *(v1 + 24) != 0;
}

uint64_t ProductTopLockup.PrimaryBanner.hideCriteria.getter@<X0>(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v5 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
    v3 = *(v5 + 0x50);
    v4 = *(v5 + 88);
    result = sub_24E6AD46C(*(v5 + 80), v4);
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

void ProductTopLockup.init(deserializing:using:)()
{
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  v2 = sub_24F929608();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F92CA88();
  __break(1u);
}

uint64_t ProductTopLockup.title.getter()
{
  v1 = *(*(v0 + 16) + 96);

  return v1;
}

uint64_t ProductTopLockup.subtitle.getter()
{
  v1 = *(v0 + 16);
  if (v1[19])
  {
    v2 = v1[18];
  }

  else
  {
    v2 = v1[14];
  }

  return v2;
}

uint64_t ProductTopLockup.developerTagline.getter()
{
  v1 = *(*(v0 + 16) + 144);

  return v1;
}

uint64_t ProductTopLockup.editorialTagline.getter()
{
  v1 = *(*(v0 + 16) + 184);

  return v1;
}

uint64_t ProductTopLockup.developerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProductTopLockup.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

void ProductTopLockup.iconStyle.getter(_BYTE *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 48);
  if (v2)
  {
    *a1 = *(v2 + 64);
  }

  else
  {
    *a1 = 9;
  }
}

uint64_t ProductTopLockup.expandedOfferTitles.getter()
{
  v1 = *(v0 + 88);
  sub_24E680354(v1, *(v0 + 96));
  return v1;
}

BOOL ProductTopLockup.invalidatesPrimaryBannerOnAppStateChange.getter()
{
  if (v0[16])
  {
    return 0;
  }

  if (v0[17])
  {
    return 0;
  }

  return v0[18] != 0;
}

uint64_t ProductTopLockup.primaryBanner(for:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2[16];
  if (!v3)
  {
    v4 = v2[17];
    if (v4)
    {
LABEL_3:
      v3 = v4 | 0x8000000000000000;
      v5 = a2;

      a2 = v5;
      goto LABEL_4;
    }

    v7 = v2[18];
    if (v7)
    {
      v8 = a1[6];
      v9 = v8 >> 60;
      v3 = 0xF000000000000007;
      if ((v8 >> 60) > 6)
      {
        if (v9 == 7)
        {
          v4 = v7[6];
          if (v4)
          {
            goto LABEL_3;
          }
        }

        else if (v9 == 8)
        {
          v10 = *a1;
          v11 = a1[3];
          v12 = a1[2] | a1[1];
          v13 = a1[4] | a1[5] | a1[7];
          if (v8 != 0x8000000000000000 || v12 | v10 | v11 | v13)
          {
            if (v8 == 0x8000000000000000 && v10 == 4 && !(v12 | v11 | v13))
            {
              v4 = v7[2];
              if (v4)
              {
                goto LABEL_3;
              }
            }
          }

          else
          {
            v4 = v7[3];
            if (v4)
            {
              goto LABEL_3;
            }
          }
        }
      }

      else if (v9 == 2)
      {
        v4 = v7[5];
        if (v4)
        {
          goto LABEL_3;
        }
      }

      else if (v9 == 3)
      {
        v4 = v7[4];
        if (v4)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v3 = 0xF000000000000007;
    }
  }

LABEL_4:
  *a2 = v3;
}

uint64_t ProductTopLockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ProductTopLockup.segue.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + 216, qword_27F21B590);
  return swift_endAccess();
}

uint64_t ProductTopLockup.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F213E68);
}

uint64_t ProductTopLockup.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F213E68);
  return swift_endAccess();
}

uint64_t ProductTopLockup.deinit()
{

  sub_24E680460(*(v0 + 88), *(v0 + 96));

  sub_24E6585F8(v0 + 176);
  sub_24E601704(v0 + 216, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t ProductTopLockup.__deallocating_deinit()
{
  ProductTopLockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24ED1BD14()
{
  result = qword_27F22E6D0;
  if (!qword_27F22E6D0)
  {
    type metadata accessor for ProductTopLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E6D0);
  }

  return result;
}

uint64_t type metadata accessor for ProductTopLockup()
{
  result = qword_27F22E6D8;
  if (!qword_27F22E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED1BDC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 216, a1, qword_27F21B590);
}

uint64_t sub_24ED1BE24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F213E68);
}

void sub_24ED1BE98()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED1BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 240);
  if (v7)
  {
    if (*(v7 + 121) == 1)
    {
      v8 = *(a1 + 304);
      if (v8)
      {
        if (v8 >> 62)
        {
          v16 = a5;
          v17 = a4;
          v18 = sub_24F92C738();
          a4 = v17;
          a5 = v16;
          v9 = v18;
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = Lockup.numberOfPurchasedChildren(using:)(a4, a5);
        if ((v11 & 1) == 0 && v10 >= 1 && v9 > v10)
        {
          return _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000002CLL, 0x800000024FA5B080, v9 - v10);
        }
      }
    }
  }

  if (a3)
  {

    v12._countAndFlagsBits = 0xD00000000000002FLL;
    v12._object = 0x800000024FA5B050;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    localizedString(_:comment:)(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93DE60;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_24E90A06C();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    a2 = sub_24F92B118();
  }

  return a2;
}

void *DynamicTypeLabel.__allocating_init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = sub_24ED1F418(a1, a2, a3, a4 & 1, a5, a6, a7, a8);
  sub_24E824448(a7);
  return v18;
}

void *DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_24ED1F418(a1, a2, a3, a4 & 1, a5, a6, a7, a8);
  sub_24E824448(a7);
  return v9;
}

id DynamicTypeLabel.__allocating_init(customTextStyle:numberOfLines:lineBreakMode:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24[-v16 - 8];
  LOBYTE(a5) = *a5;
  v18 = sub_24F922378();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v24[0] = a5;
  v19 = (*(v7 + 144))(v17, a2, a3, a4 & 1, 0, v24, a6, a7);
  v20 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  v21 = v19;
  sub_24ED1FA98(a1, v19 + v20);
  swift_endAccess();

  return v21;
}

id DynamicTypeLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t DynamicTypeLabel.init(frame:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  ObjectType = swift_getObjectType();
  v4 = sub_24F922378();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = 0;
  v5 = (*(ObjectType + 144))(v2, 2, 0, 1, 0, &v8, 0, 0);
  swift_deallocPartialClassInstance();
  return v5;
}

id DynamicTypeLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_24ED1C748(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24ED1C7A8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24ED1C7F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24ED1C8AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24ED20B94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24ED1C94C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24ED20B8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_24E5FCA4C(v3);
  sub_24E5FCA4C(v6);
  sub_24E824448(v8);
  sub_24ED1CA30();
  return sub_24E824448(v6);
}

uint64_t sub_24ED1CA30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_24F922378();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v0 + v8, v3, &qword_27F222038);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F222038);
    v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
    swift_beginAccess();
    sub_24E60169C(v0 + v9, &v12, &qword_27F22E6E8);
    if (v13)
    {
      sub_24E612C80(&v12, v14);
      (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v14);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      return sub_24E601704(&v12, &qword_27F22E6E8);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*((*MEMORY[0x277D85000] & *v0) + 0xD8))(v7);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24ED1CCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1);
  return v2;
}

uint64_t sub_24ED1CD20(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_24E5FCA4C(a1);
  sub_24E824448(v6);
  sub_24ED1CA30();
  return sub_24E824448(a1);
}

uint64_t (*sub_24ED1CDAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED1CE10;
}

uint64_t sub_24ED1CE10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24ED1CA30();
  }

  return result;
}

void sub_24ED1CE44(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_24F92BFB8();

  sub_24E69A5C4(0, &qword_27F217E58);
  v11 = MEMORY[0x253051BF0](a1, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

void sub_24ED1D008(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_24F92BFB8();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_24F9225B8();
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

uint64_t sub_24ED1D1C8(uint64_t a1, void *a2)
{
  v4 = (a2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *((*MEMORY[0x277D85000] & *a2) + 0xC8);

    v9 = v7(v8);
    v10 = [v9 preferredContentSizeCategory];

    v6(v10);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F922D48();
    return sub_24E824448(v6);
  }

  return result;
}

void sub_24ED1D2D8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x277D741F0];
      if (v3)
      {
        v5 = sub_24F92BB08();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

uint64_t sub_24ED1D464(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  sub_24E60169C(a1, &v13[-v8], &qword_27F222038);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v6, &qword_27F222038);
  swift_beginAccess();
  sub_24E9CBF30(v9, v10 + v11, &qword_27F222038);
  swift_endAccess();
  sub_24ED1D5B8(v6);
  sub_24E601704(v6, &qword_27F222038);
  return sub_24E601704(v9, &qword_27F222038);
}

uint64_t sub_24ED1D5B8(uint64_t a1)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227098);
  MEMORY[0x28223BE20](v40);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_24F922378();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v39 = v1;
  v19 = v13;
  sub_24E60169C(v1 + v18, v11, &qword_27F222038);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F222038);
  }

  v22 = *(v19 + 32);
  v22(v17, v11, v12);
  v23 = *(v19 + 16);
  v35 = v17;
  v23(v8, v17, v12);
  v36 = v19;
  (*(v19 + 56))(v8, 0, 1, v12);
  v24 = *(v40 + 48);
  sub_24E60169C(v8, v3, &qword_27F222038);
  sub_24E60169C(v41, &v3[v24], &qword_27F222038);
  if (v20(v3, 1, v12) == 1)
  {
    sub_24E601704(v8, &qword_27F222038);
    v25 = v20(&v3[v24], 1, v12);
    v26 = v36;
    if (v25 == 1)
    {
      sub_24E601704(v3, &qword_27F222038);
      return (*(v26 + 8))(v35, v12);
    }

    goto LABEL_8;
  }

  v27 = v22;
  v28 = v38;
  sub_24E60169C(v3, v38, &qword_27F222038);
  if (v20(&v3[v24], 1, v12) == 1)
  {
    sub_24E601704(v8, &qword_27F222038);
    v26 = v36;
    (*(v36 + 8))(v28, v12);
LABEL_8:
    sub_24E601704(v3, &qword_27F227098);
LABEL_9:
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v29 = v39;
    sub_24ED1DF7C(v42);
    v30 = v35;
    (*((*MEMORY[0x277D85000] & *v29) + 0xD8))(v35);
    return (*(v26 + 8))(v30, v12);
  }

  v31 = v37;
  v27(v37, &v3[v24], v12);
  sub_24EAB3D68();
  v32 = sub_24F92AFF8();
  v26 = v36;
  v33 = *(v36 + 8);
  v33(v31, v12);
  sub_24E601704(v8, &qword_27F222038);
  v33(v28, v12);
  sub_24E601704(v3, &qword_27F222038);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v33)(v35, v12);
}

uint64_t sub_24ED1DAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222038);
}

uint64_t sub_24ED1DB5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F222038);
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F222038);
  swift_endAccess();
  sub_24ED1D5B8(v5);
  sub_24E601704(a1, &qword_27F222038);
  return sub_24E601704(v5, &qword_27F222038);
}

void (*sub_24ED1DC70(uint64_t *a1))(uint64_t a1, char a2)
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
  v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F222038);
  return sub_24ED1DDA0;
}

void sub_24ED1DDA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_24E60169C(*(*a1 + 96), v6, &qword_27F222038);
    sub_24E60169C(v7 + v4, v5, &qword_27F222038);
    swift_beginAccess();
    sub_24E9CBF30(v6, v7 + v4, &qword_27F222038);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038);
  }

  else
  {
    sub_24E60169C(v7 + v4, v6, &qword_27F222038);
    swift_beginAccess();
    sub_24E9CBF30(v3, v7 + v4, &qword_27F222038);
    swift_endAccess();
    sub_24ED1D5B8(v6);
  }

  sub_24E601704(v6, &qword_27F222038);
  sub_24E601704(v3, &qword_27F222038);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_24ED1DF14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22E6E8);
}

uint64_t sub_24ED1DF7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v9, &qword_27F22E6E8);
  swift_endAccess();
  sub_24E60169C(v1 + v9, &v14, &qword_27F22E6E8);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = sub_24F922378();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(v1 + v11, v5, &qword_27F222038);
    swift_beginAccess();
    sub_24E9CBF30(v8, v1 + v11, &qword_27F222038);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038);
    sub_24E601704(v8, &qword_27F222038);
    (*((*MEMORY[0x277D85000] & *v1) + 0xE0))(v16);
    sub_24E601704(a1, &qword_27F22E6E8);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24E601704(a1, &qword_27F22E6E8);
    return sub_24E601704(&v14, &qword_27F22E6E8);
  }
}

void (*sub_24ED1E200(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 152) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038) - 8) + 64);
  if (v3)
  {
    v5[20] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[20] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  v5[21] = v7;
  v5[22] = v8;
  swift_beginAccess();
  return sub_24ED1E2F4;
}

void sub_24ED1E2F4(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E60169C(*(v3 + 152) + *(v3 + 176), v3 + 40, &qword_27F22E6E8);
    if (*(v3 + 64))
    {
      v5 = *(v3 + 160);
      v4 = *(v3 + 168);
      v6 = *(v3 + 152);
      sub_24E612C80((v3 + 40), v3);
      v7 = sub_24F922378();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
      swift_beginAccess();
      sub_24E60169C(v6 + v8, v5, &qword_27F222038);
      swift_beginAccess();
      sub_24E9CBF30(v4, v6 + v8, &qword_27F222038);
      swift_endAccess();
      sub_24ED1D5B8(v5);
      sub_24E601704(v5, &qword_27F222038);
      sub_24E601704(v4, &qword_27F222038);
      (*((*MEMORY[0x277D85000] & *v6) + 0xE0))(v3);
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      sub_24E601704(v3 + 40, &qword_27F22E6E8);
    }
  }

  v9 = *(v3 + 160);
  free(*(v3 + 168));
  free(v9);

  free(v3);
}

uint64_t sub_24ED1E53C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24ED1E580(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = [v1 font];
  if (v4)
  {
    v5 = v4;
    if (![v1 lineSpacing] && ((v1[v3] & 1) != 0 || v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_24ED1E650(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24ED1E6D8;
}

void sub_24ED1E6D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(v3 + 24) font];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [*(v3 + 24) lineSpacing];
    v7 = *(v3 + 24);
    if (!v6 && ((*(v7 + *(v3 + 32)) & 1) != 0 || *(v7 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v7 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v7 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  free(v3);
}

void sub_24ED1E7A0(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText;
  v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] = a1;
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v5] & 1) != 0) || v1[v2] == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_24ED1EA64(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_24ED1EAFC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v6, sel_setLineSpacing_, a1);
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (*(v1 + v5) & 1) != 0) || *(v1 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_24ED1EBF4(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeLabel();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_24ED1ECE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24ED1ED4C(&v7);
}

id sub_24ED1ED4C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  if (v5 != v2 && v5 != 0)
  {
    if (v5 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

uint64_t sub_24ED1EE64@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_24ED1EEB8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = v2;
  if (v2 != v5 && v2 != 0)
  {
    if (v2 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

void (*sub_24ED1EFD0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24ED1F064;
}

void sub_24ED1F064(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24ED1ED4C(v6);

  free(v2);
}

void sub_24ED1F0D4(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v5 = sub_24F92B098();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x277D741F0];
      v8 = sub_24F92BB08();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_24F92B098();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_24ED1F214(void *a1)
{
  v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x277D741F0];
    v7 = sub_24F92BB08();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24ED1F418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  *&v59 = a8;
  v56 = a5;
  v53 = a4;
  v54 = a3;
  v57 = a1;
  v11 = a2 != 0;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_24F922378();
  v55 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v51 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F922D68();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = *a6;
  *&v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory] = 0;
  v21 = &v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping];
  *v21 = 0;
  v21[1] = 0;
  (*(v16 + 56))(&v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase], 1, 1, v15, v19);
  v22 = &v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement] = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] = 1;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment] = 0;
  v23 = type metadata accessor for DynamicTypeLabel();
  v63.receiver = v8;
  v63.super_class = v23;
  v52 = v23;
  v24 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v24 setNumberOfLines_];
  if (v53)
  {
    v25 = 4 * v11;
  }

  else
  {
    v25 = v54;
  }

  [v24 setLineBreakMode_];
  v26 = v24;
  sub_24F92C2A8();
  sub_24F922D58();
  sub_24F92C2B8();

  [v26 setUserInteractionEnabled_];
  v27 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  *(v26 + v27) = v20;
  v28 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v29 = v57;
  sub_24E9CBF30(v57, v26 + v28, &qword_27F222038);
  swift_endAccess();
  v30 = (v26 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v31 = *v30;
  v32 = v58;
  v33 = v59;
  *v30 = v58;
  v30[1] = v33;
  sub_24E5FCA4C(v32);
  sub_24E824448(v31);
  v34 = v55;
  sub_24E60169C(v29, v14, &qword_27F222038);
  if ((*(v16 + 48))(v14, 1, v34) == 1)
  {
    sub_24E601704(v14, &qword_27F222038);
    v35 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v36 = v51;
    (*(v16 + 32))(v51, v14, v34);
    (*((*MEMORY[0x277D85000] & *v26) + 0xD8))(v36);
    (*(v16 + 8))(v36, v34);
    v35 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  if (v35 == 1)
  {
    v37 = [v26 traitCollection];
    v38 = sub_24F92BF88();

    if (v38)
    {
      v39 = 2;
    }

    else
    {
      v39 = 0;
    }

    v61.receiver = v26;
    v61.super_class = v52;
    objc_msgSendSuper2(&v61, sel_setTextAlignment_, v39);
  }

  else
  {
    v40 = [v26 traitCollection];
    v41 = sub_24F92BF88();

    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = 2;
    }

    v62.receiver = v26;
    v62.super_class = v52;
    objc_msgSendSuper2(&v62, sel_setTextAlignment_, v42);
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E720);
  v43 = swift_allocObject();
  v59 = xmmword_24F93DE60;
  *(v43 + 16) = xmmword_24F93DE60;
  v44 = sub_24F922D78();
  v45 = MEMORY[0x277D74B90];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v46 = swift_allocObject();
  *(v46 + 16) = v59;
  v47 = sub_24F922E88();
  v48 = MEMORY[0x277D74DB8];
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:sel_buttonShapesDidChange name:*MEMORY[0x277D76450] object:0];

  sub_24E601704(v29, &qword_27F222038);
  return v26;
}

uint64_t sub_24ED1FA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E6E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_24ED1FB08(void *a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  if (*(a1 + v2))
  {
    if (*(a1 + v2) == 1)
    {
      v4 = [a1 traitCollection];
      v5 = sub_24F92BF88();

      if (v5)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v6);
    }

    else
    {
      v7 = [a1 traitCollection];
      v8 = sub_24F92BF88();

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 2;
      }

      v11.receiver = a1;
      v11.super_class = type metadata accessor for DynamicTypeLabel();
      return objc_msgSendSuper2(&v11, sel_setTextAlignment_, v9);
    }
  }

  return result;
}

uint64_t sub_24ED1FC08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_24F922378();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(a1 + v11, v4, &qword_27F222038);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_24E601704(v4, &qword_27F222038);
      v12 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
      swift_beginAccess();
      sub_24E60169C(a1 + v12, &v14, &qword_27F22E6E8);
      if (v15)
      {
        sub_24E612C80(&v14, v16);
        (*((*MEMORY[0x277D85000] & *a1) + 0xE0))(v16);
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        return sub_24E601704(&v14, &qword_27F22E6E8);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      (*((*MEMORY[0x277D85000] & *a1) + 0xD8))(v9);
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void _s12GameStoreKit16DynamicTypeLabelC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  v3 = sub_24F922378();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) = 1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment) = 0;
  sub_24F92CA88();
  __break(1u);
}

uint64_t type metadata accessor for DynamicTypeLabel()
{
  result = qword_27F22E710;
  if (!qword_27F22E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24ED20028(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7 + 16;
  v9 = type metadata accessor for DynamicTypeLabel();
  v20.receiver = v1;
  v20.super_class = v9;
  result = objc_msgSendSuper2(&v20, sel_setFont_, a1);
  if (a1)
  {
    v11 = a1;
    if (![v1 lineSpacing] && ((v12 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v12] & 1) != 0) || v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v11 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }

    v13 = sub_24F922378();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(&v1[v14], v5, &qword_27F222038);
    swift_beginAccess();
    sub_24E9CBF30(v8, &v1[v14], &qword_27F222038);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038);
    sub_24E601704(v8, &qword_27F222038);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_24ED1DF7C(v18);
    v15 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
    swift_beginAccess();
    v16 = *&v1[v15];
    *&v1[v15] = 0;

    return [v1 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24ED202A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24ED20314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F222038);
}

uint64_t sub_24ED20384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22E6E8);
}

uint64_t sub_24ED2043C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED204BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24ED20520()
{
  sub_24E935B08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DynamicTypeLabel.updateFont(to:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
}

uint64_t sub_24ED20B54()
{

  return swift_deallocObject();
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED20CDC()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (v6 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      swift_getKeyPath();
      sub_24F928A48();

      v5 = sub_24E803D38(inited);
      swift_setDeallocating();
      sub_24E6585F8(inited + 32);
      (*(v2 + 8))(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t _s12GameStoreKit47OnDemandShelfFetchingCollectionElementsObserverC13prefetchCells2in14collectionView8asPartOfySayAA17ItemLayoutContextVG_So012UICollectionO0C9JetEngine15BaseObjectGraphCtF_0(uint64_t a1)
{
  v2 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = MEMORY[0x277D84FA0];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_24E8E7F4C(v7, v5);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
      sub_24F928A48();

      if (v15[0])
      {
        swift_getKeyPath();
        sub_24F928A48();

        sub_24ED7D5A0(v15, v14);
        sub_24E6585F8(v15);
      }

      sub_24E8E7FB0(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = v13;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v10 = *(v9 + 24);
  ObjectType = swift_getObjectType();
  (*(v10 + 8))(v16, ObjectType, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_24ED21098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24ED78AB0();
  *a1 = result & 1;
  return result;
}

uint64_t NewToAppStoreCardTrigger.__allocating_init(adamId:numberOfPurchasesThreshold:purchaseHistory:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  v8 = a1[1];
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  *(v6 + 72) = v7;
  *(v6 + 80) = v8;
  *(v6 + 16) = a2;
  sub_24E612C80(a3, v6 + 24);
  return v6;
}

uint64_t NewToAppStoreCardTrigger.init(adamId:numberOfPurchasesThreshold:purchaseHistory:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = a1[1];
  *(v3 + 64) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = v4;
  *(v3 + 80) = v5;
  *(v3 + 16) = a2;
  sub_24E612C80(a3, v3 + 24);
  return v3;
}

uint64_t NewToAppStoreCardTrigger.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t sub_24ED21180(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  if (!v6)
  {
    return a1(0);
  }

  v7 = [v6 ams_DSID];

  if (!v7)
  {
    return a1(0);
  }

  v8 = [v7 longLongValue];

  v9 = v2[6];
  v10 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v12 = v2[6];
  v13 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v12);
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v2;
  v15 = *(v13 + 32);

  v15(v11, 0, sub_24ED21414, v14, v12, v13);
}

uint64_t sub_24ED21340(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BOOL8), uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v8 = sub_24E7728CC(a2), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
    if (v10 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(a5 + 16) >= v11;
  }

  else
  {
    v12 = 0;
  }

  return a3(v12);
}

uint64_t sub_24ED213D4()
{

  return swift_deallocObject();
}

void sub_24ED21424(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24F92B098();
    [v1 setObject:v2 forKey:?];
  }

  else
  {
    v3 = sub_24F92B098();
    [v1 removeObjectForKey_];
  }
}

void sub_24ED214E0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  [v0 removeObjectForKey_];
}

uint64_t sub_24ED21578()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_24E69A5C4(0, &qword_27F22BD50);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 0;
}

uint64_t NewToAppStoreCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return v0;
}

uint64_t NewToAppStoreCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED216EC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 80);
  *a1 = *(*v1 + 72);
  a1[1] = v2;
}

void sub_24ED21720()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v4 = [objc_opt_self() standardUserDefaults];
      v3 = v2;
      sub_24ED21424(v2);
    }
  }
}

uint64_t sub_24ED21818()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_24ED21578();

      if (v4)
      {
        sub_24E69A5C4(0, &qword_27F21BCB0);
        LOBYTE(v1) = sub_24F92C408();

        v2 = v4;
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit32ActionImplementationPerformErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24ED21A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24ED21A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_24ED21AC8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24ED21B08()
{
  result = qword_27F22E728;
  if (!qword_27F22E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E728);
  }

  return result;
}

__n128 TitleEffectUpdate.init(effect:isAnimated:animationDuration:timingFunction:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  *(a6 + 41) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = a5;
  return result;
}

id TitleEffectUpdate.effect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_24ED21BB0(v2, v3, v4, v5, v6, v7);
}

id sub_24ED21BB0(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = result;
  if (a6 == 2 || a6 == 1)
  {

    v8 = v7;
    v7 = a2;
    v10 = a3;
  }

  else
  {
    if (a6)
    {
      return result;
    }

    v10 = a2;
  }

  v9 = v7;

  return v10;
}

void *TitleEffectUpdate.timingFunction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11TitleEffectO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_24ED21C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24ED21CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t FontSource.hash(into:)()
{
  v1 = sub_24F922378();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F922118();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, v0, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D22620])
  {
    (*(v6 + 96))(v9, v5);
    v11 = *v9;
    MEMORY[0x253052A00](0);
    sub_24F92B0D8();
    sub_24F92B218();
  }

  else if (v10 == *MEMORY[0x277D22618])
  {
    (*(v6 + 96))(v9, v5);
    (*(v2 + 32))(v4, v9, v1);
    MEMORY[0x253052A00](1);
    sub_24ED22140(&qword_27F22E730, MEMORY[0x277D22690]);
    sub_24F92AEF8();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t FontSource.hashValue.getter()
{
  sub_24F92D068();
  FontSource.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED22078()
{
  sub_24F92D068();
  FontSource.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED220BC()
{
  sub_24F92D068();
  FontSource.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED22140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED221AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for AchievementBadgeModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24ED22344(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AchievementBadgeModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for AchievementRow()
{
  result = qword_27F22E740;
  if (!qword_27F22E740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED22514()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AchievementBadgeModel();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

double sub_24ED22628@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for AchievementRow() + 32));
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v7 = sub_24F4DBA88();
      v14 = sub_24F925908();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v8 = 10.0;
      v12 = sub_24F925968();
      sub_24E601704(v5, &qword_27F214698);
      v10 = xmmword_24F9993F0;
      v11 = xmmword_24F999400;
      goto LABEL_9;
    }

    v17 = xmmword_24F999410;
    v16 = xmmword_24F999420;
    v8 = 10.0;
    goto LABEL_7;
  }

  if (v6)
  {
    v17 = xmmword_24F9993D0;
    v16 = xmmword_24F9993E0;
    v8 = 15.0;
LABEL_7:
    v7 = sub_24F4DBA88();
    v13 = sub_24F925908();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v12 = sub_24F925968();
    sub_24E601704(v5, &qword_27F214698);
    v11 = v16;
    v10 = v17;
    goto LABEL_9;
  }

  v7 = sub_24F4DBA88();
  v17 = xmmword_24F999430;
  v16 = xmmword_24F999440;
  v8 = 10.0;
  v9 = sub_24F9258F8();
  v11 = v16;
  v10 = v17;
  v12 = v9;
LABEL_9:
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v12;
  result = 0.02;
  *(a1 + 56) = xmmword_24F999450;
  return result;
}

uint64_t sub_24ED22874(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED253CC();
  sub_24F92D128();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v11[14] = 1;
    sub_24F92CD08();
    v11[13] = 2;
    sub_24F92CD08();
    v9 = type metadata accessor for AchievementRow();
    v11[12] = 3;
    type metadata accessor for AchievementBadgeModel();
    sub_24ED255F4(&qword_27F22E898, type metadata accessor for AchievementBadgeModel);
    sub_24F92CD48();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_24ED255A0();
    sub_24F92CD48();
    v11[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v11[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v11[7] = 7;
    sub_24F929608();
    sub_24ED255F4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ED22C94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v44);
  v6 = v41 - v5;
  v7 = type metadata accessor for AchievementBadgeModel();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E870);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  v14 = type metadata accessor for AchievementRow();
  MEMORY[0x28223BE20](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 36)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v52 = v18;
  sub_24E61DA68(&v54, v18, qword_27F21B590);
  v19 = *(v14 + 40);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v49 = v19;
  v21(&v16[v19], 1, 1, v20);
  v22 = *(v14 + 44);
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v50 = v22;
  v53 = v16;
  v24(&v16[v22], 1, 1, v23);
  v25 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24ED253CC();
  v47 = v13;
  v26 = v48;
  sub_24F92D108();
  if (v26)
  {
    v29 = v49;
    v30 = v53;
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v52, qword_27F24EC90);
    sub_24E601704(v30 + v29, &qword_27F215440);
    return sub_24E601704(v30 + v50, &qword_27F213E68);
  }

  else
  {
    v41[1] = v23;
    v27 = v6;
    v48 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v28 = v45;
    sub_24F92CC68();
    v31 = v55;
    v32 = v53;
    *v53 = v54;
    v32[1] = v31;
    *(v32 + 4) = v56;
    LOBYTE(v54) = 1;
    v33 = sub_24F92CC28();
    v34 = v49;
    *(v32 + 5) = v33;
    *(v32 + 6) = v35;
    LOBYTE(v54) = 2;
    *(v32 + 7) = sub_24F92CC28();
    *(v32 + 8) = v36;
    LOBYTE(v54) = 3;
    sub_24ED255F4(&qword_27F22E880, type metadata accessor for AchievementBadgeModel);
    sub_24F92CC68();
    v41[0] = 0;
    v37 = v48;
    sub_24ED25420(v9, v32 + *(v48 + 28));
    v57 = 4;
    sub_24ED25484();
    sub_24F92CC68();
    *(v32 + *(v37 + 32)) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v52, qword_27F24EC90);
    LOBYTE(v54) = 6;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v27, v53 + v34, &qword_27F215440);
    LOBYTE(v54) = 7;
    sub_24ED255F4(&qword_27F213F48, MEMORY[0x277D21F70]);
    v38 = v43;
    sub_24F92CC18();
    (*(v46 + 8))(v47, v28);
    v39 = v53;
    sub_24E61DA68(v38, v53 + v50, &qword_27F213E68);
    sub_24ED254D8(v39, v42, type metadata accessor for AchievementRow);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24ED25540(v39, type metadata accessor for AchievementRow);
  }
}

unint64_t sub_24ED2354C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x4F79616C70736964;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7470697263736564;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_24ED2365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED25820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED23684(uint64_t a1)
{
  v2 = sub_24ED253CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED236C0(uint64_t a1)
{
  v2 = sub_24ED253CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED236FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24ED2382C()
{
  result = qword_27F22E750;
  if (!qword_27F22E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E750);
  }

  return result;
}

uint64_t sub_24ED23880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E768);
  v51[1] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E770);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = v51 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E778);
  MEMORY[0x28223BE20](v59);
  v54 = v51 - v12;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E780) + 44)];
  v60 = a1;
  sub_24ED23F00(a1, v2, v13);
  v14 = v2[4];
  v15 = &v9[*(v7 + 36)];
  v16 = sub_24F924258();
  v17 = *MEMORY[0x277CE0118];
  v18 = *(v5 + 104);
  v18(&v15[*(v16 + 20)], v17, v4);
  *v15 = v14;
  *(v15 + 1) = v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v20 = *(v19 + 36);
  v21 = type metadata accessor for GradientBackground(0);
  (*(*(v21 - 8) + 56))(&v15[v20], 1, 1, v21);
  *&v15[*(v19 + 40)] = 0;
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E788);
  sub_24ED250CC();
  sub_24E6A4C1C();
  sub_24ED251B0();
  v22 = v55;
  v24 = v56;
  v23 = v57;
  sub_24F926B08();
  v25 = v9;
  v26 = v54;
  sub_24E601704(v25, &qword_27F22E768);
  v27 = v58;
  v28 = v52;
  v18(v58, v17, v52);
  v63[3] = v16;
  v63[4] = sub_24ED255F4(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v30 = *(v16 + 20);
  v31 = v53;
  (*(v53 + 16))(boxed_opaque_existential_1 + v30, v27, v28);
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v14;
  (*(v31 + 8))(v27, v28);
  sub_24E60169C(v63, v26, &qword_27F22E7C8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7D0);
  (*(v24 + 16))(v26 + v32[9], v22, v23);
  v33 = v26 + v32[10];
  *v33 = sub_24F923398() & 1;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35 & 1;
  v36 = v26 + v32[11];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  v38 = sub_24F923398();
  v40 = v39;
  v42 = v41;
  v43 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7D8) + 36);
  *v43 = v37;
  *(v43 + 8) = v38 & 1;
  *(v43 + 16) = v40;
  *(v43 + 24) = v42 & 1;
  LOBYTE(v37) = sub_24F923398();
  v45 = v44;
  LOBYTE(v40) = v46;
  sub_24E601704(v63, &qword_27F22E7C8);
  (*(v24 + 8))(v22, v23);
  v47 = v26 + *(v59 + 36);
  *v47 = v37 & 1;
  *(v47 + 8) = v45;
  *(v47 + 16) = v40 & 1;
  v48 = type metadata accessor for AchievementRow();
  sub_24E60169C(v60 + *(v48 + 36), v63, qword_27F24EC90);
  sub_24E601704(v63, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v49 = sub_24F9248C8();
  __swift_project_value_buffer(v49, qword_27F39F078);
  sub_24ED25270();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v26, &qword_27F22E778);
}

uint64_t sub_24ED23F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E818);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E820);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - v17);
  v19 = *(type metadata accessor for AchievementRow() + 28);
  v20 = type metadata accessor for AchievementBadge();
  v21 = *(v20 + 20);
  v50 = a1;
  sub_24ED254D8(a1 + v19, v18 + v21, type metadata accessor for AchievementBadgeModel);
  sub_24ED22628(v52);
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v22 = v18 + *(v20 + 24);
  v23 = v52[3];
  *(v22 + 2) = v52[2];
  *(v22 + 3) = v23;
  *(v22 + 8) = v53;
  v24 = v52[1];
  *v22 = v52[0];
  *(v22 + 1) = v24;
  v25 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v27 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E828) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  LOBYTE(v25) = sub_24F925808();
  v28 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E830) + 36);
  *v28 = v25;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = *a2;
  sub_24F927618();
  sub_24F9238C8();
  v30 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E838) + 36));
  v31 = v55;
  *v30 = v54;
  v30[1] = v31;
  v30[2] = v56;
  v32 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E840) + 36);
  v33 = *(sub_24F924258() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24F924B38();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  *v32 = v29;
  *(v32 + 1) = v29;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  LOBYTE(v34) = sub_24F925808();
  sub_24F923318();
  v36 = v18 + *(v13 + 44);
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  *v11 = sub_24F924C88();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E848);
  sub_24ED24394(v50, a2, &v11[*(v41 + 44)]);
  LOBYTE(v33) = sub_24F925858();
  sub_24F923318();
  v42 = &v11[*(v6 + 44)];
  *v42 = v33;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_24E60169C(v18, v15, &qword_27F22E820);
  sub_24E60169C(v11, v8, &qword_27F22E818);
  v47 = v51;
  sub_24E60169C(v15, v51, &qword_27F22E820);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E850);
  sub_24E60169C(v8, v47 + *(v48 + 48), &qword_27F22E818);
  sub_24E601704(v11, &qword_27F22E818);
  sub_24E601704(v18, &qword_27F22E820);
  sub_24E601704(v8, &qword_27F22E818);
  return sub_24E601704(v15, &qword_27F22E820);
}

uint64_t sub_24ED24394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v101 = a3;
  v4 = sub_24F9259C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E858) - 8;
  MEMORY[0x28223BE20](v103);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v84 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E860) - 8;
  MEMORY[0x28223BE20](v104);
  v100 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v84 - v13;
  MEMORY[0x28223BE20](v14);
  v97 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v98 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v87 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v102 = &v84 - v21;
  v94 = a1;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  *&v112 = v22;
  *(&v112 + 1) = v23;
  v93 = sub_24E600AEC();

  v24 = sub_24F925E18();
  v26 = v25;
  v28 = v27;
  sub_24F9258D8();
  v92 = *MEMORY[0x277CE0A10];
  v29 = *(v5 + 104);
  v90 = v5 + 104;
  v91 = v29;
  v86 = v4;
  v29(v7);
  v85 = v7;
  sub_24F9259F8();

  v30 = *(v5 + 8);
  v88 = v5 + 8;
  v89 = v30;
  v30(v7, v4);
  v31 = sub_24F925C98();
  v33 = v32;
  LOBYTE(v5) = v34;
  v36 = v35;

  sub_24E600B40(v24, v26, v28 & 1);

  *&v112 = v31;
  *(&v112 + 1) = v33;
  LOBYTE(v5) = v5 & 1;
  LOBYTE(v113) = v5;
  *(&v113 + 1) = v36;
  v37 = v84;
  sub_24F9268B8();
  sub_24E600B40(v31, v33, v5);

  KeyPath = swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70);
  v40 = v37 + *(v39 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = 2;
  *(v40 + 16) = 0;
  LOBYTE(KeyPath) = sub_24F925828();
  sub_24F923318();
  v41 = v37 + *(v103 + 44);
  *v41 = KeyPath;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v46 = v87;
  sub_24E6009C8(v37, v87, &qword_27F22E858);
  v47 = (v46 + *(v104 + 44));
  v48 = v110;
  v47[4] = v109;
  v47[5] = v48;
  v47[6] = v111;
  v49 = v106;
  *v47 = v105;
  v47[1] = v49;
  v50 = v108;
  v47[2] = v107;
  v47[3] = v50;
  sub_24E6009C8(v46, v102, &qword_27F22E860);
  v51 = *(v94 + 64);
  *&v112 = *(v94 + 56);
  *(&v112 + 1) = v51;

  v52 = sub_24F925E18();
  v54 = v53;
  LOBYTE(v37) = v55;
  sub_24F9258D8();
  v56 = v85;
  v57 = v86;
  v91(v85, v92, v86);
  sub_24F9259F8();

  v89(v56, v57);
  v58 = sub_24F925C98();
  v60 = v59;
  LOBYTE(v56) = v61;
  v63 = v62;

  sub_24E600B40(v52, v54, v37 & 1);

  *&v112 = v58;
  *(&v112 + 1) = v60;
  LOBYTE(v113) = v56 & 1;
  *(&v113 + 1) = v63;
  v64 = v96;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v56 & 1);

  v65 = swift_getKeyPath();
  v66 = v64 + *(v39 + 36);
  *v66 = v65;
  *(v66 + 8) = 2;
  *(v66 + 16) = 0;
  LOBYTE(v52) = sub_24F925828();
  sub_24F923318();
  v67 = v64 + *(v103 + 44);
  *v67 = v52;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v72 = v97;
  sub_24E6009C8(v64, v97, &qword_27F22E858);
  v73 = (v72 + *(v104 + 44));
  v74 = v117;
  v73[4] = v116;
  v73[5] = v74;
  v73[6] = v118;
  v75 = v113;
  *v73 = v112;
  v73[1] = v75;
  v76 = v115;
  v73[2] = v114;
  v73[3] = v76;
  v77 = v98;
  sub_24E6009C8(v72, v98, &qword_27F22E860);
  v78 = v102;
  v79 = v99;
  sub_24E60169C(v102, v99, &qword_27F22E860);
  v80 = v100;
  sub_24E60169C(v77, v100, &qword_27F22E860);
  v81 = v101;
  sub_24E60169C(v79, v101, &qword_27F22E860);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E868);
  sub_24E60169C(v80, v81 + *(v82 + 48), &qword_27F22E860);
  sub_24E601704(v77, &qword_27F22E860);
  sub_24E601704(v78, &qword_27F22E860);
  sub_24E601704(v80, &qword_27F22E860);
  return sub_24E601704(v79, &qword_27F22E860);
}

uint64_t sub_24ED24C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924258();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F927618();
  v12 = v11;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E788) + 36);
  v14 = *(a2 + 32);
  v15 = *(v7 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v9[v15], v16, v17);
  *v9 = v14;
  *(v9 + 1) = v14;
  LODWORD(v16) = sub_24F925188();
  sub_24F923658();
  v18 = MEMORY[0x277CDFC08];
  sub_24ED254D8(v9, v13, MEMORY[0x277CDFC08]);
  v19 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36);
  v20 = v32;
  *v19 = *&v31[8];
  *(v19 + 16) = v20;
  *(v19 + 32) = v33;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800);
  *(v13 + *(v21 + 52)) = v16;
  *(v13 + *(v21 + 56)) = 256;
  v22 = sub_24F927618();
  v24 = v23;
  sub_24ED25540(v9, v18);
  v25 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810) + 36);
  v27 = *MEMORY[0x277CE13B8];
  v28 = sub_24F927748();
  (*(*(v28 - 8) + 104))(v13 + v26, v27, v28);
  v29 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7C0) + 36));
  *v29 = v10;
  v29[1] = v12;
  return sub_24E60169C(a1, a3, &qword_27F22E768);
}

unint64_t sub_24ED24FC4()
{
  result = qword_27F22E760;
  if (!qword_27F22E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E760);
  }

  return result;
}

unint64_t sub_24ED250CC()
{
  result = qword_27F22E790;
  if (!qword_27F22E790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E768);
    sub_24E602068(&qword_27F22E798, &qword_27F22E7A0);
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E790);
  }

  return result;
}

unint64_t sub_24ED251B0()
{
  result = qword_27F22E7B0;
  if (!qword_27F22E7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E788);
    sub_24ED250CC();
    sub_24E602068(&qword_27F22E7B8, &qword_27F22E7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7B0);
  }

  return result;
}

unint64_t sub_24ED25270()
{
  result = qword_27F22E7E0;
  if (!qword_27F22E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E778);
    sub_24ED252FC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7E0);
  }

  return result;
}

unint64_t sub_24ED252FC()
{
  result = qword_27F22E7E8;
  if (!qword_27F22E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E7D8);
    sub_24E602068(&qword_27F22E7F0, &qword_27F22E7D0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7E8);
  }

  return result;
}

unint64_t sub_24ED253CC()
{
  result = qword_27F22E878;
  if (!qword_27F22E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E878);
  }

  return result;
}

uint64_t sub_24ED25420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementBadgeModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED25484()
{
  result = qword_27F22E888;
  if (!qword_27F22E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E888);
  }

  return result;
}

uint64_t sub_24ED254D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED25540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ED255A0()
{
  result = qword_27F22E8A0;
  if (!qword_27F22E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8A0);
  }

  return result;
}

uint64_t sub_24ED255F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED2564C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ED2566C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t sub_24ED256B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E778);
  sub_24ED25270();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24ED2571C()
{
  result = qword_27F22E8A8;
  if (!qword_27F22E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8A8);
  }

  return result;
}

unint64_t sub_24ED25774()
{
  result = qword_27F22E8B0;
  if (!qword_27F22E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8B0);
  }

  return result;
}

unint64_t sub_24ED257CC()
{
  result = qword_27F22E8B8;
  if (!qword_27F22E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8B8);
  }

  return result;
}

uint64_t sub_24ED25820(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA5B320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t SmallBreakoutLayout.init(metrics:iconView:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[11];
  a4[10] = a1[10];
  a4[11] = v6;
  v7 = a1[13];
  a4[12] = a1[12];
  a4[13] = v7;
  v8 = a1[7];
  a4[6] = a1[6];
  a4[7] = v8;
  v9 = a1[9];
  a4[8] = a1[8];
  a4[9] = v9;
  v10 = a1[3];
  a4[2] = a1[2];
  a4[3] = v10;
  v11 = a1[5];
  a4[4] = a1[4];
  a4[5] = v11;
  v12 = a1[1];
  *a4 = *a1;
  a4[1] = v12;
  sub_24E612C80(a2, (a4 + 14));

  return sub_24E612C80(a3, a4 + 264);
}

uint64_t SmallBreakoutLayout.Metrics.init(iconSize:iconRotation:iconBottomOffset:detailsTrailingMargin:detailsWidth:layoutMargins:height:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>)
{
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 24) = 0u;
  *(a5 + 16) = a8;
  sub_24EA63A70(a1, a5 + 24);
  sub_24E612C80(a2, a5 + 64);
  v20 = a3[1];
  *(a5 + 104) = *a3;
  *(a5 + 120) = v20;
  *(a5 + 129) = *(a3 + 25);
  *(a5 + 152) = a9;
  *(a5 + 160) = a10;
  *(a5 + 168) = a11;
  *(a5 + 176) = a12;

  return sub_24E612C80(a4, a5 + 184);
}

uint64_t SmallBreakoutLayout.Metrics.detailsTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 64);

  return sub_24E612C80(a1, v1 + 64);
}

void SmallBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t SmallBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 184);

  return sub_24E612C80(a1, v1 + 184);
}

__n128 SmallBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

__n128 sub_24ED25EB8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

double static SmallBreakoutLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 184), *(a1 + 208));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t SmallBreakoutLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  sub_24F92C1C8();
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v17 = CGRectGetWidth(v51);
  sub_24E9D43B0(v17);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  CGRectGetHeight(v52);
  __swift_project_boxed_opaque_existential_1((v4 + 264), *(v4 + 288));
  sub_24F922288();
  v44 = v18;
  v43 = v19;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  MinX = CGRectGetMinX(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v35 = width;
  v54.size.width = width;
  v34 = height;
  v54.size.height = height;
  MidY = CGRectGetMidY(v54);
  v20 = *(v4 + 8);
  v21 = *v4;
  CGAffineTransformMakeRotation(&v50, *(v4 + 16) * 0.0174532925);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = v21;
  v55.size.height = v20;
  v56 = CGRectApplyAffineTransform(v55, &v50);
  v22 = v56.origin.x;
  v23 = v56.origin.y;
  v24 = v56.size.width;
  v25 = v56.size.height;
  v37 = CGRectGetWidth(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = v21;
  v57.size.height = v20;
  v36 = CGRectGetWidth(v57);
  v58.origin.x = v22;
  v58.origin.y = v23;
  v58.size.width = v24;
  v58.size.height = v25;
  v26 = CGRectGetHeight(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v39 = v21;
  v59.size.width = v21;
  v46 = v20;
  v59.size.height = v20;
  v27 = CGRectGetHeight(v59);
  sub_24E930DFC(v4 + 24, &v48);
  if (v49)
  {
    v28 = (v26 - v27) * -0.5;
    sub_24E612C80(&v48, &v50);
    v60.origin.x = v45;
    v60.origin.y = v40;
    v60.size.width = v41;
    v60.size.height = v42;
    v29 = CGRectGetMaxY(v60) - v46;
    __swift_project_boxed_opaque_existential_1(&v50, *&v50.d);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v31 = v30;
    (*(v10 + 8))(v12, v9);
    v35 = v29 - v31 + v28;
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    sub_24E930E6C(&v48);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = v35;
    v61.size.height = v34;
    v35 = floor(CGRectGetMidY(v61) + v46 * -0.5);
  }

  v62.origin.y = floor(MidY - v43 * 0.5);
  v42 = v62.origin.y;
  v62.origin.x = MinX;
  v62.size.width = v44;
  v62.size.height = v43;
  CGRectGetMaxX(v62);
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v4 + 224), *(v4 + 248));
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v4 + 264), *(v4 + 288));
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

double static SmallBreakoutLayout.rotatedIconFrameOffsets(rotation:iconSize:)(double a1, CGFloat a2, CGFloat a3)
{
  CGAffineTransformMakeRotation(&v12, a1 * 0.0174532925);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = a2;
  v13.size.height = a3;
  v14 = CGRectApplyAffineTransform(v13, &v12);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  v10 = (v9 - CGRectGetWidth(v15)) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetHeight(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  CGRectGetHeight(v17);
  return v10;
}

uint64_t sub_24ED26654(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24ED26A0C();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24ED266C4()
{
  result = qword_27F22E8C0;
  if (!qword_27F22E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8C0);
  }

  return result;
}

double sub_24ED26718(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 184), *(a1 + 208));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t sub_24ED26854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED2689C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ED2693C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED26984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ED26A0C()
{
  result = qword_27F22E8C8;
  if (!qword_27F22E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8C8);
  }

  return result;
}

uint64_t sub_24ED26AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922378();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24ED26B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED26E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles()
{
  result = qword_27F22E8D0;
  if (!qword_27F22E8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED26ED4()
{
  result = sub_24F922378();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v48 = sub_24F928388();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v36 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v36 - v22;
  sub_24F929608();
  sub_24F928398();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_24F929548();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_24F928398();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_24E601704(v43, &qword_27F213E68);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_24E601704(v43, &qword_27F213E68);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__allocating_init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = a1;
  v13 = sub_24F929608();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v27, &qword_27F235830);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 12;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithScreenshots()
{
  result = qword_27F22E8E0;
  if (!qword_27F22E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfBasedCollectionViewController.makeShelfComponentTypeMappingProvider()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_24F92C888();
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](0xD00000000000007CLL, 0x800000024FA5B3C0);
  v6[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v6);
  sub_24F92A5B8();

  v4 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  *a1 = result;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makePageGridProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_24F92C888();
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](0xD00000000000005ALL, 0x800000024FA5B440);
  v5[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v5);
  sub_24F92A5B8();

  *(a1 + 24) = &type metadata for EmptyPageGridProvider;
  *(a1 + 32) = &protocol witness table for EmptyPageGridProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeShelfLayoutSpacingProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_24F92C888();
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B4A0);
  v5[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v5);
  sub_24F92A5B8();

  *(a1 + 24) = &type metadata for EmptyShelfLayoutSpacingProvider;
  *(a1 + 32) = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeLayoutSectionProvider()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_24F92C888();
  v3 = sub_24F92D1E8();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](0xD000000000000064, 0x800000024FA5B510);
  v5[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v5);
  sub_24F92A5B8();

  *(a1 + 24) = &type metadata for EmptyLayoutSectionProvider;
  *(a1 + 32) = &protocol witness table for EmptyLayoutSectionProvider;
  return result;
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE09makeStateB09JetEngine09TransientjB0Cys11AnyHashableVGyF_0()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_24F92C888();
  v1 = sub_24F92D1E8();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0xD000000000000053, 0x800000024FA5B6D0);
  v3[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v3);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  swift_allocObject();
  return sub_24F929978();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE04makeD21SupplementaryProviderAA0djK0_pyF_0()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_24F92C888();
  v1 = sub_24F92D1E8();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B660);
  v3[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v3);
  sub_24F92A5B8();

  type metadata accessor for EmptyShelfSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE29makeItemSupplementaryProviderAA0jkL0_pyF_0()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_24F92C888();
  v1 = sub_24F92D1E8();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0xD00000000000006CLL, 0x800000024FA5B5F0);
  v3[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v3);
  sub_24F92A5B8();

  type metadata accessor for EmptyItemSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE04makeF16ElementsObserverAA0fjK0_pyF_0()
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_24F92C888();
  v1 = sub_24F92D1E8();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B580);
  v3[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v3);
  sub_24F92A5B8();

  type metadata accessor for EmptyCollectionElementsObserver();
  return swift_allocObject();
}

uint64_t EditorsChoiceLayout.init(metrics:badgeView:titleView:bodyView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v10 = (a5 + 120);
  v11 = *(a1 + 160);
  v10[11] = *(a1 + 176);
  v10[12] = v8;
  v10[13] = v9;
  v12 = *(a1 + 96);
  *(a5 + 232) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(a5 + 248) = *(a1 + 128);
  v10[9] = v13;
  v10[10] = v11;
  v14 = *(a1 + 32);
  *(a5 + 168) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(a5 + 184) = *(a1 + 64);
  *(a5 + 200) = v15;
  *(a5 + 216) = v12;
  v16 = *(a1 + 16);
  *(a5 + 120) = *a1;
  *(a5 + 136) = v16;
  *(a5 + 344) = *(a1 + 224);
  *(a5 + 152) = v14;
  sub_24E612C80(a2, a5);
  sub_24E612C80(a3, a5 + 40);

  return sub_24E612C80(a4, a5 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.init(badgeTopSpace:badgeBottomSpace:titleTopSpace:titleBottomSpace:bodyBottomSpace:marginInsets:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_24E612C80(a1, a6);
  sub_24E612C80(a2, (a6 + 5));
  sub_24E612C80(a3, (a6 + 10));
  sub_24E612C80(a4, (a6 + 15));
  result = sub_24E612C80(a5, (a6 + 20));
  a6[25] = a7;
  a6[26] = a8;
  a6[27] = a9;
  a6[28] = a10;
  return result;
}

uint64_t EditorsChoiceLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorsChoiceLayout.Metrics.badgeBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorsChoiceLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.titleBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t EditorsChoiceLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

void EditorsChoiceLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

__n128 EditorsChoiceLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_24ED28D48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

double EditorsChoiceLayout.measurements(fitting:in:)(double a1)
{
  v17 = sub_24F92CDB8();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C228();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v6 = sub_24F922238();
  v7 = 15;
  if (v6)
  {
    v7 = 25;
  }

  v8 = 18;
  if (v6)
  {
    v8 = 28;
  }

  v9 = 160;
  if (v6)
  {
    v9 = 240;
  }

  v16 = v9;
  v10 = 184;
  if (v6)
  {
    v10 = 264;
  }

  v15 = v10;
  __swift_project_boxed_opaque_existential_1(&v1[v7], v1[v8]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v11 = *(v3 + 8);
  v12 = v17;
  v11(v5, v17);
  __swift_project_boxed_opaque_existential_1((v1 + v16), *(v1 + v15));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v11(v5, v12);
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v1 + 35, v1[38]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v11(v5, v12);
  return a1;
}

uint64_t EditorsChoiceLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v52 = a1;
  v55 = sub_24F922C28();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - v12;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v54 = a3;
  v49 = a4;
  v50 = a5;
  sub_24F92C1C8();
  v18 = v17;
  v20 = v19;
  v56 = v21;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v24 = sub_24F922238();
  v25 = (v14 + 8);
  v45 = v20;
  v46 = v18;
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(v5 + 25, v5[28]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v27 = v26;
    v28 = *v25;
    (*v25)(v16, v13);
    __swift_project_boxed_opaque_existential_1(v5 + 30, v5[33]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v43 = v29;
    v28(v16, v13);
    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    v30 = v56;
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    v57.origin.x = v18;
    v57.origin.y = v20;
    v57.size.width = v30;
    v31 = v23;
    v57.size.height = v23;
    CGRectGetMinX(v57);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v27 = v32;
    v28 = *v25;
    (*v25)(v16, v13);
    __swift_project_boxed_opaque_existential_1(v5 + 20, v5[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v43 = v33;
    v28(v16, v13);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v34 = v56;
    sub_24F922288();
    v36 = v35;
    v58.origin.x = v18;
    v58.origin.y = v20;
    v58.size.width = v34;
    v31 = v23;
    v58.size.height = v23;
    floor(CGRectGetMidX(v58) + v36 * -0.5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  }

  sub_24F922228();
  v44 = v27;
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  v37 = v56;
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  v59.origin.y = v45;
  v59.origin.x = v46;
  v59.size.width = v37;
  v59.size.height = v31;
  CGRectGetMinX(v59);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v5 + 35, v5[38]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v28(v16, v13);
  v60.origin.x = v53;
  v60.origin.y = v54;
  v60.size.width = v49;
  v60.size.height = v50;
  CGRectGetWidth(v60);
  v38 = v47;
  sub_24F922C08();
  v39 = v51;
  v40 = v55;
  (*(v51 + 16))(v48, v38, v55);
  sub_24F922188();
  return (*(v39 + 8))(v38, v40);
}

uint64_t sub_24ED296C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_24ED2970C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

GameStoreKit::TitledParagraphStyle_optional __swiftcall TitledParagraphStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TitledParagraphStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 0x776569767265766FLL;
  }
}

uint64_t sub_24ED29864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6961746564;
  }

  else
  {
    v3 = 0x776569767265766FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6961746564;
  }

  else
  {
    v5 = 0x776569767265766FLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_24ED29908()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED29988()
{
  sub_24F92B218();
}

uint64_t sub_24ED299F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED29A70@<X0>(char *a1@<X8>)
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

void sub_24ED29AD0(uint64_t *a1@<X8>)
{
  v2 = 0x776569767265766FLL;
  if (*v1)
  {
    v2 = 0x6C6961746564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_24ED29B14()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_24ED29B70(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*sub_24ED29B7C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24ED29B14();
  return sub_24ED29BC4;
}

void sub_24ED29BC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id sub_24ED29BDC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_24ED29C38(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*sub_24ED29C44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24ED29BDC();
  return sub_24ED29C8C;
}

void sub_24ED29C8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t TitledParagraph.primarySubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TitledParagraph.secondarySubtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TitledParagraph.__allocating_init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  LODWORD(v45) = a3;
  v44 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v46 = *a8;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 160) = 0;
  v47 = a1;
  sub_24E60169C(a1, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v19 = v51;
    *(v18 + 88) = v50;
    *(v18 + 104) = v19;
    *(v18 + 120) = v52;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  swift_beginAccess();
  v27 = byte_27F236A29;
  v28 = type metadata accessor for LanguageAwareString();
  v29 = objc_allocWithZone(v28);
  v30 = v44;
  v31 = sub_24EFF0E44(v30, 0, v27);

  *(v18 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_24F92B098();
    v39 = sub_24F92B098();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_27F236A29;
    v40 = objc_allocWithZone(v28);
    v41 = sub_24EFF0E44(v33, 0, v35);

    a4 = v45;
    sub_24E601704(v47, &qword_27F235830);
  }

  else
  {
    sub_24E601704(v47, &qword_27F235830);

    v41 = v31;
  }

  *(v18 + 32) = v41;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  *(v18 + 72) = a7;
  *(v18 + 80) = v46;
  return v18;
}

uint64_t TitledParagraph.init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v9 = v8;
  LODWORD(v45) = a3;
  v44 = a2;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a8;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0;
  v46 = a1;
  sub_24E60169C(a1, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  v27 = v54;
  *(v9 + 88) = v53;
  *(v9 + 104) = v27;
  *(v9 + 120) = v55;
  swift_beginAccess();
  v28 = byte_27F236A29;
  v29 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v29);
  v30 = v44;
  v31 = sub_24EFF0E44(v30, 0, v28);

  *(v9 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_24F92B098();
    v39 = sub_24F92B098();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_27F236A29;
    v40 = objc_allocWithZone(v29);
    v41 = sub_24EFF0E44(v33, 0, v35);

    a4 = v45;
    sub_24E601704(v46, &qword_27F235830);
  }

  else
  {
    sub_24E601704(v46, &qword_27F235830);

    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = v47;
  return v9;
}

uint64_t sub_24ED2A440(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 136);
  return swift_endAccess();
}

uint64_t sub_24ED2A504(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 136);
  return swift_endAccess();
}

id *TitledParagraph.deinit()
{

  sub_24E6585F8((v0 + 11));

  sub_24E601704((v0 + 17), &qword_27F2129B0);
  return v0;
}

uint64_t TitledParagraph.__deallocating_deinit()
{
  TitledParagraph.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED2A658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24ED2A6F0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24ED2A684@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 136, a1, &qword_27F2129B0);
}

uint64_t sub_24ED2A6F0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v66 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  sub_24F928398();
  v72 = sub_24F928348();
  v73 = v19;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v18, v5);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v22(v18, v5);
  LODWORD(v71) = v82[0];
  v77 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v66 = v4;
  if (v24)
  {
    *&v79 = v23;
    *(&v79 + 1) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v67 + 8))(v4, v68);
    *&v79 = v25;
    *(&v79 + 1) = v27;
  }

  sub_24F92C7F8();
  v21(v15, v5);
  v28 = v21;
  LOBYTE(v79) = v71;
  LOBYTE(v78[0]) = 0;
  v70 = _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v72, v73, &v79, v78);

  v29 = v77;
  sub_24F928398();
  v30 = sub_24F928278();
  v28(v12, v5);
  v31 = v5;
  v32 = v28;
  v69 = (v30 == 2) | v30;
  v33 = v74;
  sub_24F928398();
  v34 = sub_24F928348();
  v72 = v35;
  v28(v33, v31);
  v36 = v75;
  sub_24F928398();
  v37 = sub_24F928348();
  v71 = v38;
  v32(v36, v31);
  sub_24F928398();
  sub_24ED2B3B8();
  sub_24F928208();
  v74 = v20;
  v75 = v31;
  v73 = v32;
  v32(v18, v31);
  v83 = v84;
  type metadata accessor for TitledParagraph();
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 40) = 0;
  *(v39 + 128) = 0u;
  *(v39 + 144) = 0u;
  *(v39 + 160) = 0;
  sub_24E60169C(v82, &v79, &qword_27F235830);
  if (*(&v80 + 1))
  {
    v40 = v80;
    *(v39 + 88) = v79;
    *(v39 + 104) = v40;
    *(v39 + 120) = v81;
  }

  else
  {
    v41 = v37;
    v42 = v66;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    v46 = v42;
    v37 = v41;
    (*(v67 + 8))(v46, v68);
    v78[0] = v43;
    v78[1] = v45;
    sub_24F92C7F8();
    sub_24E601704(&v79, &qword_27F235830);
  }

  swift_beginAccess();
  v47 = byte_27F236A29;
  v48 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v48);
  v49 = v70;
  v50 = sub_24EFF0E44(v49, 0, v47);

  *(v39 + 16) = v50;
  if (v69)
  {
    v51 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v70 = v34;
    v52 = v51;
    v53 = [v51 length];
    v54 = [v52 mutableString];
    v55 = sub_24F92B098();
    v56 = v37;
    v57 = sub_24F92B098();
    [v54 replaceOccurrencesOfString:v55 withString:v57 options:1024 range:{0, v53}];

    LOBYTE(v57) = byte_27F236A29;
    v58 = objc_allocWithZone(v48);
    v59 = v57;
    v37 = v56;
    v60 = sub_24EFF0E44(v52, 0, v59);

    v34 = v70;
    v61 = sub_24F9285B8();
    (*(*(v61 - 8) + 8))(v76, v61);
    v73(v77, v75);
    sub_24E601704(v82, &qword_27F235830);
  }

  else
  {

    v62 = sub_24F9285B8();
    (*(*(v62 - 8) + 8))(v76, v62);
    v73(v29, v75);
    sub_24E601704(v82, &qword_27F235830);
    v60 = v50;
  }

  *(v39 + 32) = v60;
  v63 = v71;
  v64 = v72;
  *(v39 + 48) = v34;
  *(v39 + 56) = v64;
  *(v39 + 64) = v37;
  *(v39 + 72) = v63;
  *(v39 + 80) = v83;
  return v39;
}

unint64_t sub_24ED2AF00()
{
  result = qword_27F22E8F0;
  if (!qword_27F22E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8F0);
  }

  return result;
}

unint64_t sub_24ED2AF58()
{
  result = qword_27F22E8F8;
  if (!qword_27F22E8F8)
  {
    type metadata accessor for TitledParagraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8F8);
  }

  return result;
}

id sub_24ED2AFD0@<X0>(void *a1@<X8>)
{
  result = sub_24ED29B14();
  *a1 = result;
  return result;
}

void sub_24ED2AFFC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_24ED2B044@<X0>(void *a1@<X8>)
{
  result = sub_24ED29BDC();
  *a1 = result;
  return result;
}

void sub_24ED2B070(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_24ED2B0B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_24ED2B108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 136, a2, &qword_27F2129B0);
}

unint64_t sub_24ED2B3B8()
{
  result = qword_27F22E900;
  if (!qword_27F22E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E900);
  }

  return result;
}

uint64_t EdgeInsetsDimension.init(top:left:bottom:right:source:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24E612E28(a1, a6);
  sub_24E612E28(a2, a6 + 40);
  sub_24E612E28(a3, a6 + 80);
  sub_24E612E28(a4, a6 + 120);
  v11 = *(type metadata accessor for EdgeInsetsDimension() + 32);
  v12 = sub_24F922118();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a5, v12);
}

uint64_t type metadata accessor for EdgeInsetsDimension()
{
  result = qword_27F22E908;
  if (!qword_27F22E908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EdgeInsetsDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EdgeInsetsDimension() + 32);
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double EdgeInsetsDimension.value(in:rounded:)()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_24F9223A8();
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  sub_24F9223A8();
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24F9223A8();
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24F9223A8();
  return v3;
}

uint64_t EdgeInsetsDimension.debugDescription.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA5B810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E28);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x203A7466656C202CLL, 0xE800000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x3A7468676972202CLL, 0xE900000000000020);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
  type metadata accessor for EdgeInsetsDimension();
  sub_24F922118();
  sub_24F92CA38();
  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ED2B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F922118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ED2B96C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24ED2BA10()
{
  result = sub_24ED2BA98();
  if (v1 <= 0x3F)
  {
    result = sub_24F922118();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24ED2BA98()
{
  result = qword_27F237A40;
  if (!qword_27F237A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F237A40);
  }

  return result;
}

uint64_t AccountAction.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

void *AccountAction.__allocating_init(kind:title:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit13AccountAction_kind) = *a1;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12 + v13, a4, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 4) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v8;
    v23 = a4;
    v24 = a2;
    v25 = a3;
    v26 = v21;
    v27 = v9;
    v29 = v28;
    (*(v27 + 8))(v11, v22);
    v31[1] = v26;
    v31[2] = v29;
    a3 = v25;
    a2 = v24;
    a4 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = 0;
  v12[5] = 0;
  return v12;
}

void *AccountAction.init(kind:title:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13AccountAction_kind) = *a1;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
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
    v22 = sub_24F91F668();
    v30 = a4;
    v23 = a2;
    v24 = a3;
    v26 = v25;
    (*(v31 + 8))(v12, v32);
    v33 = v22;
    v34 = v26;
    a3 = v24;
    a2 = v23;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v41, &qword_27F235830);
  v27 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t AccountAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t AccountAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

unint64_t sub_24ED2C434()
{
  result = qword_27F22E918;
  if (!qword_27F22E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E918);
  }

  return result;
}

uint64_t type metadata accessor for AccountAction()
{
  result = qword_27F22E920;
  if (!qword_27F22E920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED2C590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED2C61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayTogetherPageIntent()
{
  result = qword_27F22E930;
  if (!qword_27F22E930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED2C6E4()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED2C750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E940);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PlayTogetherPageIntent();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED2CCB4();
  sub_24F92D108();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E38);
    sub_24F92CC18();
    (*(v17 + 8))(v9, v7);
    sub_24E6365D4(v6, v12);
    sub_24ED2CD08(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24ED2C98C(uint64_t a1)
{
  v2 = sub_24ED2CCB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED2C9C8(uint64_t a1)
{
  v2 = sub_24ED2CCB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED2CA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E950);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED2CCB4();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CCF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24ED2CBA0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24ED2CCB4()
{
  result = qword_27F22E948;
  if (!qword_27F22E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E948);
  }

  return result;
}

uint64_t sub_24ED2CD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayTogetherPageIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED2CD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ED2CDE8()
{
  result = qword_27F22E958;
  if (!qword_27F22E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E958);
  }

  return result;
}

unint64_t sub_24ED2CE40()
{
  result = qword_27F22E960;
  if (!qword_27F22E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E960);
  }

  return result;
}

unint64_t sub_24ED2CE98()
{
  result = qword_27F22E968;
  if (!qword_27F22E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E968);
  }

  return result;
}

uint64_t sub_24ED2CEEC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_24ED2F6DC(&v5, &v7) & 1;
}

uint64_t static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F22E970 = a1;
}

uint64_t sub_24ED2D028(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_27F22E970 = v1;
}

uint64_t static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  swift_beginAccess();
  qword_27F22E970 = a1;
}

uint64_t sub_24ED2D120(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_24ED30548(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_24ED30548(a1, a2);

  return swift_unknownObjectRelease();
}

void (*StreamlinedInAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_24ED2D240;
}

void sub_24ED2D240(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_24ED30548(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24ED30548(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id StreamlinedInAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void StreamlinedInAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void StreamlinedInAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v85 = *a6;
  v11 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v83 = a6[5];
  v80 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = -258;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0;
  *(v7 + 248) = -258;
  *(v7 + 272) = 1;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  v69 = v7 + 280;
  *(v7 + 312) = 0x2000;
  *(v7 + 314) = 0;
  swift_beginAccess();
  v87 = qword_27F22E970;
  v76 = v13;
  v73 = v14;
  if (!qword_27F22E970)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v85;
  v71 = v11;
  *(v7 + 151) = v11;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v83;
  *(v7 + 256) = a3;
  *(v7 + 264) = a4;
  ObjectType = swift_getObjectType();
  v88 = v7;
  v17 = *(a1 + 32);
  *&v92 = *(a1 + 24);
  *(&v92 + 1) = v17;
  v18 = *(a4 + 56);

  v19 = a1;

  swift_unknownObjectRetain();

  v70 = v18;
  v20 = v18(&v92, ObjectType, a4);
  v22 = v21;

  *(v7 + 104) = v20;
  *(v7 + 112) = v22;
  v24 = v80;
  if (v80 == 3)
  {
    LOBYTE(v90[0]) = v85;
    BYTE1(v90[0]) = v71;
    BYTE2(v90[0]) = v12;
    BYTE3(v90[0]) = v76;
    BYTE4(v90[0]) = v73;
    BYTE5(v90[0]) = v83;
    sub_24E9536D8(v90, &v92, v23);
    v24 = v92;
    v25.i32[0] = *(&v92 + 1);
    v26 = vmovl_u8(v25).u64[0];
    v27 = BYTE5(v92);
  }

  else
  {
    v28.i64[0] = 0xFFFFFFFFFFFFLL;
    v28.i64[1] = 0xFFFFFFFFFFFFLL;
    v29 = vandq_s8(vdupq_n_s64(v80), v28);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_24F99A2D0), vshlq_u64(v29, xmmword_24F99A2C0)));
    v27 = BYTE5(v80);
  }

  *(v7 + 144) = v24;
  *(v7 + 145) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 149) = v27;
  v30 = v19;
  v32 = *(v19 + 104);
  v31 = *(v19 + 112);
  *(v88 + 120) = *(v19 + 96);
  *(v88 + 128) = v32;
  *(v88 + 136) = v31;
  if (v87)
  {
    v33 = *(v19 + 64);
    if (v33)
    {
      v84 = *(v19 + 56);
      v34 = *(v19 + 176);
      v35 = *(v19 + 184);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v87;
      v37[4] = v19;
      v37[5] = v34;
      v77 = v34;
      v86 = v37;
      v37[6] = v35;
      *&v92 = v84;
      *(&v92 + 1) = v33;

      sub_24E9534EC(v32, v31);

      v74 = v36;

      v38 = v70(&v92, ObjectType, a4);
      v40 = v39;

      *(v88 + 88) = v38;
      *(v88 + 96) = v40;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*(v88 + 88))
      {
        v41 = *(v88 + 96);
        v42 = swift_getObjectType();
        v43 = *(v41 + 16);
        swift_unknownObjectRetain();
        v43(v90, v42, v41);
        swift_unknownObjectRelease();
        v92 = v90[0];
        v93 = v90[1];
        v94 = v90[2];
        v95 = v91;
        if (v91 >> 60)
        {
          if (v91 >> 60 != 8)
          {
            goto LABEL_22;
          }

          v44 = *(&v94 + 1) | *(&v95 + 1);
          v45 = *(&v93 + 1) | v93 | *(&v92 + 1);
          if (v91 == 0x8000000000000000 && !(v44 | *&v90[0] | v94 | v45))
          {
            goto LABEL_15;
          }

          if (v91 != 0x8000000000000000 || *&v90[0] != 4 || (v46 = v44 | v94 | v45) != 0)
          {
LABEL_22:
            sub_24E88D2AC(&v92);
            LOBYTE(v46) = 1;
          }
        }

        else
        {
          LOBYTE(v46) = LOBYTE(v90[0]) != 1;
        }

LABEL_23:
        *(v88 + 314) = v46;
        v47 = swift_getObjectType();
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = sub_24ED306C4;
        v49[4] = v86;
        v50 = *(v40 + 72);

        v50(v88, sub_24ED30714, v49, v47, v40);

        v51 = swift_allocObject();
        *(v51 + 16) = sub_24ED306C4;
        *(v51 + 24) = v86;

        InAppPurchaseStateDataSource.addObserver(_:action:)(v88, sub_24E97225C, v51);

        v52 = *(v88 + 112);
        v53 = swift_getObjectType();
        v54 = swift_allocObject();
        *(v54 + 16) = sub_24ED306C4;
        *(v54 + 24) = v86;
        v55 = *(v52 + 72);

        swift_unknownObjectRetain();
        v55(v88, sub_24E97225C, v54, v53, v52);
        swift_unknownObjectRelease();

        sub_24ED2DE04(v74, v87, v30, v77, v35);

        if (sub_24ED2E338())
        {
          v56 = *(v88 + 96);
          v57 = swift_unknownObjectRetain();
          sub_24ED2E538(v57, v56, &v92);
          v82 = v92;
          v78 = v93;
          v79 = *(&v92 + 1);
          v75 = *(&v93 + 1);
          v72 = v94;
          v58 = WORD4(v94);
          swift_unknownObjectRelease();
          v60 = *(v88 + 272);
          v59 = *(v88 + 280);
          v61 = *(v88 + 288);
          v62 = *(v88 + 296);
          v63 = *(v88 + 304);
          v64 = *(v88 + 312);
          if ((~v58 & 0xFEFE) != 0)
          {
            v65 = v93;
            *(v88 + 272) = v92;
            *(v88 + 288) = v65;
            *(v88 + 304) = v94;
            *(v88 + 312) = v58;
            sub_24ED307F0(v82, v79, v78, v75, v72, v58);
            sub_24ED30758(v60, v59, v61, v62, v63, v64);
            sub_24E601704(&v92, &qword_27F22E978);
            if (*(v30 + 136))
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }

          *(v88 + 272) = 1;
          *v69 = 0u;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0;
          sub_24ED30758(v60, v59, v61, v62, v63, v64);
        }

        if (*(v30 + 136))
        {
LABEL_27:
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          goto LABEL_30;
        }

LABEL_29:
        v66 = [objc_opt_self() defaultCenter];

        v67 = sub_24F92B098();

        [v66 addObserver:v88 selector:sel_restrictionsDidChange_ name:v67 object:a5];

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        goto LABEL_30;
      }

LABEL_15:
      LOBYTE(v46) = 0;
      goto LABEL_23;
    }

    sub_24E9534EC(v32, v31);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_24E9534EC(v32, v31);
    swift_unknownObjectRelease();
  }

LABEL_30:

  return v88;
}

uint64_t sub_24ED2DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(a3 + 24);
    v12 = *(a3 + 32);
    swift_beginAccess();
    sub_24E615E00(a2 + 16, &v29);
    v13 = *&v30[8];
    __swift_project_boxed_opaque_existential_1(&v29, *&v30[8]);
    v27[0] = v11;
    v27[1] = v12;
    (*(*(&v13 + 1) + 32))(v28, v27, a4, a5, v13, *(&v13 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v29);
    sub_24ED2DFD4(v28, &v29);
    v14 = *(v10 + 272);
    v15 = *(v10 + 280);
    v16 = *(v10 + 288);
    v17 = *(v10 + 296);
    v18 = *(v10 + 304);
    v19 = *v30;
    *(v10 + 272) = v29;
    *(v10 + 288) = v19;
    v20 = *(v10 + 312);
    *(v10 + 298) = *&v30[10];
    sub_24ED307F0(v14, v15, v16, v17, v18, v20);
    sub_24ED30BE4(&v29, v27);
    sub_24ED30758(v14, v15, v16, v17, v18, v20);
    v21 = *(v10 + 160);
    v22 = *(v10 + 168);
    v23 = *(v10 + 176);
    v24 = *(v10 + 184);
    v25 = *(v10 + 192);
    *(v10 + 160) = v14;
    *(v10 + 168) = v15;
    *(v10 + 176) = v16;
    *(v10 + 184) = v17;
    *(v10 + 192) = v18;
    v26 = *(v10 + 200);
    *(v10 + 200) = v20;
    sub_24ED30888(v21, v22, v23, v24, v25, v26);
    sub_24ED307F0(v14, v15, v16, v17, v18, v20);
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    sub_24ED30758(v14, v15, v16, v17, v18, v20);
    sub_24ED30C1C(&v29);
  }

  return result;
}

uint64_t sub_24ED2DFD4@<X0>(unsigned __int8 *a1@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 96);
  v6 = swift_unknownObjectRetain();
  sub_24ED2E538(v6, v5, v22);
  v19 = v22[1];
  v20 = v22[0];
  v7 = v23;
  v8 = v24;
  swift_unknownObjectRelease();
  v9 = *(v2 + 112);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  v11(v25, ObjectType, v9);
  result = swift_unknownObjectRelease();
  if (v4 > 0x3F)
  {
    v14 = v4 >> 6;
    if (v26 >> 60)
    {
      if (v26 >> 60 == 1)
      {
        v15 = vdup_n_s32((v8 & 0xFEFEFEFE) == 65278);
        v16.i64[0] = v15.u32[0];
        v16.i64[1] = v15.u32[1];
        v17 = vcgezq_s64(vshlq_n_s64(v16, 0x3FuLL));
        v18 = vandq_s8(v19, v17);
        v13 = vandq_s8(v20, v17);
        if ((v8 & 0xFEFEFEFE) == 0xFEFE)
        {
          v7 = 0;
          LOWORD(v8) = 0x4000;
        }

        goto LABEL_17;
      }

      sub_24E8B9478(v25, v21);
      sub_24E601704(v22, &qword_27F22E978);
      if (v14 == 1)
      {
        sub_24E88D2AC(v25);
        result = sub_24E88D2AC(v25);
        v7 = 0;
        v18 = 0uLL;
        v13 = (v4 & 1);
        LOWORD(v8) = 0x2000;
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_24E601704(v22, &qword_27F22E978);
      if (v14 == 1)
      {
        goto LABEL_3;
      }
    }

    if (v14 != 2)
    {
      sub_24E88D2AC(v25);
      result = sub_24E88D2AC(v25);
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = -16384;
      goto LABEL_16;
    }

    sub_24E88D2AC(v25);
    result = sub_24E88D2AC(v25);
    v7 = 0;
    v18 = 0uLL;
    v13 = (v4 & 1);
    LOWORD(v8) = 0x4000;
  }

  else
  {
    result = sub_24E88D2AC(v25);
    if ((~v8 & 0xFEFE) == 0)
    {
LABEL_3:
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = 0x4000;
LABEL_16:
      v18 = 0uLL;
      goto LABEL_17;
    }

    v18 = v19;
    v13 = v20;
  }

LABEL_17:
  *a2 = v13;
  a2[1] = v18;
  a2[2].i64[0] = v7;
  a2[2].i16[4] = v8;
  return result;
}

uint64_t sub_24ED2E1F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v12, ObjectType, a2);
    if (v15 >> 60)
    {
      if (v15 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v12);
LABEL_12:
        LOBYTE(v11) = 1;
        goto LABEL_13;
      }

      v9 = v14 | v16;
      v10 = v12[3] | v12[2] | v12[1];
      if (v15 != 0x8000000000000000 || v9 | v12[0] | v13 | v10)
      {
        if (v15 == 0x8000000000000000 && v12[0] == 4)
        {
          v11 = v9 | v13 | v10;
          if (!v11)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v12[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v11) = 0;
LABEL_13:
    *(v7 + 314) = v11;
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    a4();
  }

  return result;
}

BOOL sub_24ED2E338()
{
  v1 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v3(v21, ObjectType, v1);
  swift_unknownObjectRelease();
  if (v24 >> 60)
  {
    if (v24 >> 60 != 8 || ((v4 = v23 | v25, v5 = v21[3] | v21[2] | v21[1], v24 != 0x8000000000000000) || v4 | v21[0] | v22 | v5) && (v24 != 0x8000000000000000 || v21[0] != 4 || v4 | v22 | v5))
    {
      sub_24E88D2AC(v21);
      return 1;
    }
  }

  else if (LOBYTE(v21[0]) != 1)
  {
    return 1;
  }

  swift_beginAccess();
  v6 = *(v0 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = qword_27F22E970;
  if (!qword_27F22E970)
  {
    return 0;
  }

  v8 = v6[22];
  v9 = v6[23];
  v11 = v6[3];
  v10 = v6[4];
  swift_beginAccess();
  sub_24E615E00(v7 + 16, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v16[0] = v11;
  v16[1] = v10;
  v14 = *(v13 + 32);

  v14(&v20, v16, v8, v9, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v20 < 0x40u;
}

uint64_t sub_24ED2E538@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  swift_unknownObjectRetain();
  v6(&v24, 0, ObjectType, a2);
  if (!sub_24ED2E338())
  {
    goto LABEL_12;
  }

  v7 = v32 | (v33 << 16);
  v8 = v7 >> 20;
  if (v7 >> 20 <= 3)
  {
    if (v7 >> 20 <= 1)
    {
LABEL_13:
      result = swift_unknownObjectRelease();
LABEL_14:
      v9 = 0;
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -258;
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      sub_24E88D2AC(&v24);
      result = swift_unknownObjectRelease();
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -16384;
      v9 = 2;
      goto LABEL_15;
    }

LABEL_12:
    sub_24E88D2AC(&v24);
    goto LABEL_13;
  }

  v9 = v24;
  v10 = v26;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  if (v7 >> 20 <= 5)
  {
    if (v8 != 4)
    {
      swift_unknownObjectRelease();
      v22 = v11;
      v23 = v10;
      result = sub_24E88D2AC(&v24);
      v14 = 0;
      v16 = v13 & 1 | 0x6000;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v14 = v27;
  if (v8 == 6)
  {
    swift_unknownObjectRelease();
    v17 = v11;
    v18 = v10;
    v19 = v14;
    result = sub_24E88D2AC(&v24);
    v16 = v13 & 1 | 0x8000;
    goto LABEL_15;
  }

  if (v8 != 7)
  {
    v20 = v30 | ((v31 | ((*&v7 & 0xFFFFFFLL) << 32)) << 8);
    v21 = v20 == 0x8000000000000000 && (v26 | v25 | v24 | v27 | v28 | v29 | v34) == 0;
    if (v21 || v24 != 1 || v26 | v25 | v27 | v28 | v29 || v20 != 0x8000000000000000 || v34)
    {
      goto LABEL_13;
    }
  }

  v9 = sub_24ED2ED44();
  v10 = v15;
  sub_24E88D2AC(&v24);
  result = swift_unknownObjectRelease();
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v16 = -24576;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v16;
  return result;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (qword_27F22E970)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_24E883630(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E97D004(*(v1 + 128), *(v1 + 136));
  sub_24ED30888(*(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200));
  sub_24ED30888(*(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248));
  swift_unknownObjectRelease();
  sub_24ED30758(*(v1 + 272), *(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312));
  return v1;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  StreamlinedInAppPurchaseOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED2E8FC()
{
  result = 0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 200);
  if ((~v3 & 0xFEFE) == 0 || (v3 & 0xE000) != 0x8000)
  {
    return result;
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (*&v4 >= 0.97 || (*(v0 + 312) & 0xE000) != 0xA000)
  {
    sub_24ED307F0(v4, *(v0 + 168), *(v0 + 176), *(v0 + 184), v7, v3);
    goto LABEL_10;
  }

  v8 = v3 & 0x100;
  *(v0 + 160) = 0x3FF0000000000000;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = v3 & 0x100 | 0x8000;
  v9 = v4;
  v10 = v7;
  v11 = v3;
  sub_24ED307F0(v4, v2, v6, v5, v7, v3);
  sub_24ED30888(v9, v2, v6, v5, v10, v11);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_10:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v0 + 148);
    v28 = *(v0 + 144);
    v29 = v14;
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    LOWORD(aBlock) = *(v0 + 120);
    v23 = v15;
    v24 = v16;
    v17 = *(v13 + 64);
    sub_24E9534EC(v15, v16);
    v17(0, 0, &v28, &aBlock, v8 != 0, ObjectType, v13, 1.0);
    swift_unknownObjectRelease();
    sub_24E97D004(v23, v24);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3FD6666666666666;
  *(v19 + 24) = v18;
  v26 = sub_24ED30C4C;
  v27 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_24EAF8248;
  v25 = &block_descriptor_70;
  v20 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v20);
  [v12 commit];

  return 1;
}

uint64_t sub_24ED2EBD8(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_24ED2EEA0(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_24E76DB58(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x800000024FA5BAC0;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_24ED2ECB4(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_24ED2EF58(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ED2ED44()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_24E76DB58(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {

    goto LABEL_10;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
LABEL_10:
    v9 = 0xD00000000000001DLL;
    v8 = 0x800000024FA5BA20;
    goto LABEL_11;
  }

LABEL_8:
  v8 = 0x800000024FA5BA00;
  v9 = 0xD000000000000016;
LABEL_11:
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v9, v10)._countAndFlagsBits;
}

uint64_t sub_24ED2EEA0()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_24ED2EF58()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_24ED2F010()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && ((*(v0 + 156) >> 13) | 4) == 5)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E601704(v7, &qword_27F2129B0);
    }
  }
}

uint64_t sub_24ED2F1C8(uint64_t a1)
{
  v20 = a1;
  v1 = sub_24F927D88();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DE8();
  v19 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_24E69A5C4(0, &qword_27F222300);
  v14 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v15 = *(v8 + 8);
  v15(v10, v7);
  aBlock[4] = sub_24ED30C70;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_25_0;
  v16 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x253051820](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v15)(v13, v19);
}

uint64_t sub_24ED2F538()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24ED2F5D8(uint64_t a1, uint64_t a2)
{
  sub_24ED30548(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24ED2F614(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24ED2D240;
}

uint64_t sub_24ED2F6DC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = a1;
    v5 = a2;
    sub_24E69A5C4(0, &qword_27F22E980);
    v6 = v3;
    v7 = v2;
    v8 = sub_24F92C408();

    a1 = v4;
    a2 = v5;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v3)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = a1;
    v13 = a2;
    sub_24E69A5C4(0, &qword_27F22E980);
    v14 = v11;
    v15 = v10;
    v16 = sub_24F92C408();

    a1 = v12;
    a2 = v13;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = a1;
  v20 = a2;
  sub_24E69A5C4(0, &qword_27F22E980);
  v21 = v18;
  v22 = v17;
  v23 = sub_24F92C408();

  a1 = v19;
  a2 = v20;
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_20;
  }

  v24 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v24 & 1;
}

void _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  if (sub_24ED2E8FC())
  {
    return;
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 312);
  v3 = v2 >> 13;
  if (v2 >> 13 <= 2)
  {
    if (!v3)
    {
      v34 = 0xD00000000000001CLL;
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v37._object = 0x800000024FA5BA80;
          v37._countAndFlagsBits = 0xD00000000000001CLL;
          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          v39 = localizedString(_:comment:)(v37, v38);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_27F222780;
          v125 = qword_27F222788;
          v126 = qword_27F222790;
          v40 = *(v35 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v40(v39._countAndFlagsBits, v39._object, 0, 0, &v124, ObjectType, v35);
          swift_unknownObjectRelease();

          sub_24E97D004(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "OfferButton.Title.Purchased";
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v55 = *(v0 + 24);
          v56 = swift_getObjectType();
          v57._countAndFlagsBits = 0xD00000000000001BLL;
          v57._object = 0x800000024FA5BA60;
          v58._countAndFlagsBits = 0;
          v58._object = 0xE000000000000000;
          v59 = localizedString(_:comment:)(v57, v58);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_27F222780;
          v125 = qword_27F222788;
          v126 = qword_27F222790;
          v60 = *(v55 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v60(v59._countAndFlagsBits, v59._object, 0, 0, &v124, v56, v55);
          swift_unknownObjectRelease();

          sub_24E97D004(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "OfferButton.Hint.Downloading";
        v34 = 0xD00000000000001BLL;
      }

      v61 = *(v0 + 24);
      v62 = swift_getObjectType();
      v63._object = (v41 | 0x8000000000000000);
      v63._countAndFlagsBits = v34;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v65 = localizedString(_:comment:)(v63, v64);
      (*(v61 + 128))(v65._countAndFlagsBits, v65._object, v62, v61);
      goto LABEL_50;
    }

    if (v3 != 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v42 = *(v0 + 24);
      v43 = swift_getObjectType();
      v44 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v44;
      v45 = *(v0 + 128);
      v46 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v45;
      v126 = v46;
      v47 = *(v42 + 56);
      sub_24E9534EC(v45, v46);
      v48 = v1 & 1;
      goto LABEL_26;
    }

    v15 = sub_24ED2EBD8(v1 & 1);
    v17 = v16;
    v18 = sub_24ED2ECB4(v1 & 1);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v0 + 24);
        v23 = swift_getObjectType();
        v24 = *(v0 + 154);
        v122 = *(v0 + 150);
        v123 = v24;
        v25 = *(v0 + 128);
        v26 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v25;
        v126 = v26;
        v27 = *(v22 + 24);
        sub_24E9534EC(v25, v26);
        v27(v15, v17, v20, v21, &v122, 0, 0, &v124, v23, v22);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v0 + 24);
        v29 = swift_getObjectType();
        v124 = v15;
        v125 = v17;
        MEMORY[0x253050C20](8236, 0xE200000000000000);
        MEMORY[0x253050C20](v20, v21);

        (*(v28 + 128))(v124, v125, v29, v28);
LABEL_50:
        swift_unknownObjectRelease();
LABEL_73:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v108 = *(v0 + 24);
        if ((*(v0 + 312) & 0xE000) == 0x2000)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
          LOBYTE(v122) = 0;
          v109 = RestrictionsProtocol.doesAllow(_:properties:)(&v122, *(v0 + 40));
        }

        else
        {
          v109 = 1;
        }

        v110 = swift_getObjectType();
        (*(v108 + 16))(v109, v110, v108);
        goto LABEL_78;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v0 + 24);
        v70 = swift_getObjectType();
        v71 = *(v0 + 128);
        v72 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v71;
        v126 = v72;
        v73 = *(v69 + 32);
        sub_24E9534EC(v71, v72);
        v73(v15, v17, 0, 0, &v124, v70, v69);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v0 + 24);
        v75 = swift_getObjectType();
        (*(v74 + 128))(v15, v17, v75, v74);
        goto LABEL_50;
      }
    }

    goto LABEL_73;
  }

  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  if (v2 >> 13 > 4)
  {
    if (v3 == 5)
    {
      v118 = *(v0 + 288);
      v121 = *(v0 + 296);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 24);
        v31 = swift_getObjectType();
        v33 = *(v0 + 128);
        v32 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v33;
        v126 = v32;
        v115 = *(v30 + 32);
        v117 = v31;
        sub_24ED307F0(v1, v5, v118, v121, v7, v2);
        sub_24E9534EC(v33, v32);
        v115(v1, v5, 0, 0, &v124, v117, v30);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v86 = *(v0 + 24);
        v87 = swift_getObjectType();
        (*(v86 + 128))(v1, v5, v87, v86);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_24ED30758(v1, v5, v118, v121, v7, v2);
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v98 = *(v0 + 24);
      v99 = swift_getObjectType();
      (*(v98 + 144))(1852141679, 0xE400000000000000, v99, v98);
LABEL_78:
      swift_unknownObjectRelease();
      return;
    }

    if (!(v4 | v5 | v1 | v6 | v7) && v2 == 49152)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v53 = *(v0 + 24);
      v54 = swift_getObjectType();
      (*(v53 + 16))(0, v54, v53);
      goto LABEL_78;
    }

    if (v2 != 49152 || v1 != 1 || v4 | v5 | v6 | v7)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v100 = *(v0 + 24);
      v101 = swift_getObjectType();
      v102._countAndFlagsBits = 0xD000000000000018;
      v102._object = 0x800000024FA5BAA0;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      v104 = localizedString(_:comment:)(v102, v103);
      v105 = *(v0 + 128);
      v106 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v105;
      v126 = v106;
      v107 = *(v100 + 32);
      sub_24E9534EC(v105, v106);
      v107(v104._countAndFlagsBits, v104._object, 0, 0, &v124, v101, v100);
      swift_unknownObjectRelease();

LABEL_27:
      sub_24E97D004(v125, v126);
      return;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v42 = *(v0 + 24);
    v43 = swift_getObjectType();
    v66 = *(v0 + 148);
    v122 = *(v0 + 144);
    v123 = v66;
    v67 = *(v0 + 128);
    v68 = *(v0 + 136);
    LOWORD(v124) = *(v0 + 120);
    v125 = v67;
    v126 = v68;
    v47 = *(v42 + 56);
    sub_24E9534EC(v67, v68);
    v48 = 0;
LABEL_26:
    v47(0, 0, &v122, &v124, v48, v43, v42);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v120 = *(v0 + 280);
  if (v3 == 3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      v114 = swift_getObjectType();
      v9 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v9;
      v10 = v4;
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v12;
      v126 = v11;
      v112 = *(v8 + 64);
      v13 = v5;
      v14 = v10;
      sub_24ED307F0(v1, v13, v10, v6, v7, v2);
      sub_24E9534EC(v12, v11);
      v112(0, 0, &v122, &v124, (v2 >> 8) & 1, v114, v8, *&v1);
      swift_unknownObjectRelease();
      sub_24E97D004(v125, v126);
    }

    else
    {
      v76 = v6;
      v77 = v5;
      v14 = v4;
      v78 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = *(v0 + 24);
      v80 = swift_getObjectType();
      v81._object = 0x800000024FA5BA40;
      v81._countAndFlagsBits = 0xD00000000000001CLL;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      v83 = localizedString(_:comment:)(v81, v82);
      (*(v79 + 128))(v83._countAndFlagsBits, v83._object, v80, v79);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v84 = *(v0 + 24);
      v85 = swift_getObjectType();
      (*(v84 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v85, v84);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v119 = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v111 = v7;
      v49 = *(v0 + 24);
      v116 = swift_getObjectType();
      v50 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v50;
      v51 = *(v0 + 128);
      v52 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v51;
      v126 = v52;
      v113 = *(v49 + 64);
      sub_24ED307F0(v1, v5, v4, v6, v111, v2);
      sub_24E9534EC(v51, v52);
      v113(0, 0, &v122, &v124, (v2 >> 8) & 1, v116, v49, *&v1);
      swift_unknownObjectRelease();
      sub_24E97D004(v125, v126);
    }

    else
    {
      v88 = v6;
      v89 = v5;
      v90 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v91 = *(v0 + 24);
      v92 = swift_getObjectType();
      v93._object = 0x800000024FA5BA40;
      v93._countAndFlagsBits = 0xD00000000000001CLL;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v95 = localizedString(_:comment:)(v93, v94);
      (*(v91 + 128))(v95._countAndFlagsBits, v95._object, v92, v91);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v96 = *(v0 + 24);
      v97 = swift_getObjectType();
      (*(v96 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v97, v96);
      swift_unknownObjectRelease();
    }
  }
}

void sub_24ED30548(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24ED3063C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED30674()
{

  return swift_deallocObject();
}

uint64_t sub_24ED306D4()
{

  return swift_deallocObject();
}

uint64_t sub_24ED30720()
{

  return swift_deallocObject();
}

void sub_24ED30758(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v6 = a6 >> 13;
  if (v6 == 5)
  {
  }

  else if (v6 == 4 || v6 == 3)
  {
  }
}

void sub_24ED307F0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v7 = a6 >> 13;
  if (v7 == 5)
  {
  }

  else if (v7 == 4 || v7 == 3)
  {
    v8 = a4;
    v9 = a2;

    v10 = a3;
  }
}

void sub_24ED30888(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6)
{
  if ((~a6 & 0xFEFE) != 0)
  {
    sub_24ED30758(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_24ED3089C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_27F22E970;
}

uint64_t sub_24ED308F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit24StreamlinedPurchaseStateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >> 14 <= 2)
  {
    return v1 >> 13;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ED309C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFA && *(a1 + 42))
  {
    return (*a1 + 16378);
  }

  v3 = ((*(a1 + 40) >> 13) | (8 * ((*(a1 + 40) >> 2) & 0x780 | (*(a1 + 40) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FF9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ED30A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16378;
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_24ED30AC0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0x101 | (a2 << 13);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = -16384;
  }

  return result;
}

uint64_t sub_24ED30B08()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 312) & 0xE000) == 0x2000)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED30CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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

uint64_t sub_24ED30D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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

uint64_t type metadata accessor for ImageLockupView()
{
  result = qword_27F22E988;
  if (!qword_27F22E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED30EAC()
{
  sub_24E6CAF48();
  if (v0 <= 0x3F)
  {
    sub_24ED30F30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED30F30()
{
  if (!qword_27F218018)
  {
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218018);
    }
  }
}

uint64_t sub_24ED31000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v4 = sub_24F923E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v26 = v2;
  sub_24F769788(v7);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v18 = v4;
  v19 = v25;
  (*(v5 + 8))(v7, v18);
  if (*(v19 + 24))
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v20 = *(v9 + 32);
    v20(v14, v11, v8);
  }

  else
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v20 = *(v9 + 32);
  }

  v20(v17, v14, v8);
  sub_24F9222E8();
  v22 = v21;
  (*(v9 + 8))(v17, v8);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9A8);
  return sub_24ED31290(v19, v26, (a2 + *(v23 + 44)), v22);
}

uint64_t sub_24ED31290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9B0);
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v48 - v10);
  if (*(a1 + 40) != 1)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v18 = 0;
    v54 = 0;
    v17 = 1;
    goto LABEL_23;
  }

  v48 = a2;
  v49 = v7;
  v12 = *(a1 + 16);
  v13 = v12[3];
  v14 = v12[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  if (v15)
  {

    v16 = v13;
    v17 = v14;
    v18 = v12[6];
    if (!v18)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:
    v16 = 0;
    v17 = 0;
    v18 = v12[6];
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v19 = v12[5];
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    v21 = 1;
    goto LABEL_16;
  }

  v19 = 0;
  v18 = 0;
LABEL_15:
  v21 = 2;
LABEL_16:
  v52 = v19;
  v53 = v16;
  v51 = v21;
  if (!v14)
  {
    goto LABEL_21;
  }

  v22 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v14) & 0xF;
  }

  if (v22)
  {
    v23 = 1;
  }

  else
  {
LABEL_21:
    v23 = 2;
  }

  v54 = v23;
  a2 = v48;
  v7 = v49;
LABEL_23:
  *v11 = sub_24F927608();
  v11[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9B8);
  sub_24ED31658(a1, a2, v11 + *(v25 + 44), a4);
  v26 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9C0) + 36);
  v27 = *(sub_24F924258() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_24F924B38();
  v30 = *(*(v29 - 8) + 104);
  v30(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #28.0 }

  *v26 = _Q0;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9C8) + 36)) = 0x403C000000000000;
  v36 = v11 + *(v7 + 36);
  v37 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v30(&v36[v37[6]], v28, v29);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0x403C000000000000;
  v36[v37[7]] = 1;
  v38 = &v36[v37[8]];
  *v38 = 0;
  v38[8] = 1;
  v39 = v55;
  sub_24E60169C(v11, v55, &qword_27F22E9B0);
  v41 = v52;
  v40 = v53;
  v42 = v11;
  v43 = v50;
  v44 = v51;
  *v50 = v53;
  v43[1] = v17;
  v43[2] = v44;
  v43[3] = v41;
  v45 = v54;
  v43[4] = v18;
  v43[5] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D0);
  sub_24E60169C(v39, v43 + *(v46 + 48), &qword_27F22E9B0);
  sub_24ED33418(v40, v17);
  sub_24E601704(v42, &qword_27F22E9B0);
  sub_24E601704(v39, &qword_27F22E9B0);
  return sub_24ED33460(v40, v17);
}

uint64_t sub_24ED31658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v168 = a2;
  v163 = a1;
  v157 = a3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v138);
  v151 = &v133 - v6;
  v149 = sub_24F9234D8();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for LockupContentView(0);
  MEMORY[0x28223BE20](v140);
  v141 = (&v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D8);
  MEMORY[0x28223BE20](v142);
  v144 = &v133 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9E0);
  MEMORY[0x28223BE20](v143);
  v145 = &v133 - v10;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9E8);
  MEMORY[0x28223BE20](v148);
  v150 = &v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9F0);
  v136 = *(v12 - 8);
  v137 = v12;
  MEMORY[0x28223BE20](v12);
  v135 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9F8);
  v154 = *(v14 - 8);
  v155 = v14;
  MEMORY[0x28223BE20](v14);
  v134 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v133 = &v133 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA00);
  MEMORY[0x28223BE20](v18 - 8);
  v156 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v153 = &v133 - v21;
  v22 = type metadata accessor for ImageLockupView();
  v23 = *(v22 - 8);
  v159 = v22 - 8;
  v165 = v23;
  v166 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v167 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SwiftUIArtworkView(0);
  v26 = (v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA08);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v133 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA10);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v158 = &v133 - v35;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA18) - 8;
  MEMORY[0x28223BE20](v161);
  v160 = &v133 - v36;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA20) - 8;
  MEMORY[0x28223BE20](v164);
  v152 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v162 = &v133 - v39;
  MEMORY[0x28223BE20](v40);
  v169 = &v133 - v41;
  v42 = *(a1 + 16);
  v43 = *(v42 + 16);
  v44 = v26[8];
  v45 = *MEMORY[0x277CE1010];
  v46 = sub_24F926E68();
  (*(*(v46 - 8) + 104))(&v28[v44], v45, v46);
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = v43;
  v47 = 1;
  v28[24] = 1;
  v48 = &v28[v26[9]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v48[16] = 1;
  v28[v26[10]] = 2;
  v49 = v168;
  v28[v26[11]] = 0;

  sub_24F927618();
  sub_24F9242E8();
  sub_24ED33598(v28, v32, type metadata accessor for SwiftUIArtworkView);
  v50 = &v32[*(v30 + 44)];
  v51 = v173[12];
  *(v50 + 4) = v173[11];
  *(v50 + 5) = v51;
  *(v50 + 6) = v173[13];
  v52 = v173[8];
  *v50 = v173[7];
  *(v50 + 1) = v52;
  v53 = v173[10];
  *(v50 + 2) = v173[9];
  *(v50 + 3) = v53;
  v54 = v158;
  sub_24E6009C8(v32, v158, &qword_27F22EA08);
  v55 = v54 + *(v34 + 44);
  *v55 = a4;
  *(v55 + 8) = 256;
  v139 = v42;
  LOBYTE(v34) = *(v42 + 64);
  v56 = v159;
  v57 = (v49 + *(v159 + 28));
  v58 = *v57;
  v59 = v57[1];
  *&v173[0] = v58;
  *(&v173[0] + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v60 = *v171;
  v61 = (v49 + *(v56 + 32));
  v62 = *v61;
  v63 = v61[1];
  *&v173[0] = v62;
  *(&v173[0] + 1) = v63;
  sub_24F926F38();
  sub_24EEF3C58(v34, v171, v60, *v171);
  v170 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F926F28();
  v64 = v173[0];
  *(&v173[3] + 6) = v171[3];
  *(&v173[4] + 6) = v171[4];
  *(&v173[5] + 6) = v172[0];
  *(&v173[5] + 15) = *(v172 + 9);
  *(v173 + 6) = v171[0];
  *(&v173[1] + 6) = v171[1];
  *(&v173[2] + 6) = v171[2];
  v65 = v160;
  sub_24E6009C8(v54, v160, &qword_27F22EA10);
  v66 = v65 + *(v161 + 44);
  v67 = v173[2];
  *(v66 + 50) = v173[3];
  v68 = v173[5];
  *(v66 + 66) = v173[4];
  *(v66 + 82) = v68;
  *(v66 + 97) = *(&v173[5] + 15);
  v69 = v173[1];
  *(v66 + 2) = v173[0];
  *(v66 + 18) = v69;
  *v66 = 257;
  *(v66 + 34) = v67;
  *(v66 + 120) = v64;
  v70 = v167;
  sub_24ED334A8(v49, v167);
  v71 = *(v165 + 80);
  v72 = swift_allocObject();
  sub_24ED33598(v70, v72 + ((v71 + 16) & ~v71), type metadata accessor for ImageLockupView);
  v73 = v162;
  sub_24E6009C8(v65, v162, &qword_27F22EA18);
  v74 = (v73 + *(v164 + 44));
  *v74 = sub_24E8D4880;
  v74[1] = 0;
  v74[2] = sub_24ED33510;
  v74[3] = v72;
  sub_24E6009C8(v73, v169, &qword_27F22EA20);
  v75 = *(v163 + 32);
  if (!v75)
  {
    v122 = v155;
    v127 = v153;
    goto LABEL_11;
  }

  v164 = v71;
  v165 = (v71 + 16) & ~v71;
  v170 = 0x4044000000000000;
  sub_24E66ED98();
  swift_retain_n();
  v76 = v141;
  sub_24F9237C8();
  v170 = 0x404B000000000000;
  sub_24F9237C8();
  v170 = 0x4051800000000000;
  sub_24F9237C8();
  v170 = 0x4055800000000000;
  sub_24F9237C8();
  type metadata accessor for LockupViewModel();
  sub_24ED33808(&qword_27F2282E0, type metadata accessor for LockupViewModel);
  v163 = v75;
  *v76 = sub_24F923C28();
  v76[1] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v79 = sub_24F9257F8();
  *(inited + 32) = v79;
  v80 = sub_24F925828();
  *(inited + 33) = v80;
  v81 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v79)
  {
    v81 = sub_24F925848();
  }

  sub_24F925848();
  v82 = sub_24F925848();
  v83 = v148;
  if (v82 != v80)
  {
    v81 = sub_24F925848();
  }

  v84 = v150;
  v85 = v151;
  sub_24F923318();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v144;
  sub_24ED33598(v76, v144, type metadata accessor for LockupContentView);
  v95 = v94 + *(v142 + 36);
  *v95 = v81;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  v96 = sub_24F925818();
  sub_24F923318();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v145;
  sub_24E6009C8(v94, v145, &qword_27F22E9D8);
  v106 = v105 + *(v143 + 36);
  *v106 = v96;
  *(v106 + 8) = v98;
  *(v106 + 16) = v100;
  *(v106 + 24) = v102;
  *(v106 + 32) = v104;
  *(v106 + 40) = 0;
  v107 = v146;
  v108 = v147;
  v109 = MEMORY[0x277CDF3C0];
  if (!*(v139 + 64))
  {
    v109 = MEMORY[0x277CDF3D0];
  }

  v110 = v149;
  (*(v147 + 104))(v146, *v109, v149);
  KeyPath = swift_getKeyPath();
  v112 = (v84 + *(v83 + 36));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858);
  (*(v108 + 32))(v112 + *(v113 + 28), v107, v110);
  *v112 = KeyPath;
  sub_24E6009C8(v105, v84, &qword_27F22E9E0);
  v114 = *MEMORY[0x277CDF998];
  v115 = sub_24F923E98();
  (*(*(v115 - 8) + 104))(v85, v114, v115);
  sub_24ED33808(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24ED33608();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v117 = v135;
    sub_24F9263F8();

    sub_24E601704(v85, &qword_27F21CCC8);
    sub_24E601704(v84, &qword_27F22E9E8);
    v118 = v167;
    sub_24ED334A8(v168, v167);
    v119 = v165;
    v120 = swift_allocObject();
    sub_24ED33598(v118, v120 + v119, type metadata accessor for ImageLockupView);
    v121 = v134;
    (*(v136 + 32))(v134, v117, v137);
    v122 = v155;
    v123 = &v121[*(v155 + 36)];
    *v123 = sub_24E8D4880;
    *(v123 + 1) = 0;
    *(v123 + 2) = sub_24ED33984;
    *(v123 + 3) = v120;
    v124 = v121;
    v125 = v133;
    sub_24E6009C8(v124, v133, &qword_27F22E9F8);
    v126 = v125;
    v127 = v153;
    sub_24E6009C8(v126, v153, &qword_27F22E9F8);
    v47 = 0;
LABEL_11:
    (*(v154 + 56))(v127, v47, 1, v122);
    v128 = v169;
    v129 = v152;
    sub_24ED33528(v169, v152);
    v130 = v156;
    sub_24E60169C(v127, v156, &qword_27F22EA00);
    v131 = v157;
    sub_24ED33528(v129, v157);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA28);
    sub_24E60169C(v130, v131 + *(v132 + 48), &qword_27F22EA00);
    sub_24E601704(v127, &qword_27F22EA00);
    sub_24E601704(v128, &qword_27F22EA20);
    sub_24E601704(v130, &qword_27F22EA00);
    return sub_24E601704(v129, &qword_27F22EA20);
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED326EC(double *a1)
{
  v1 = *a1;
  type metadata accessor for ImageLockupView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  result = sub_24F926F38();
  if (v1 != v3)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24ED32790(double *a1)
{
  v1 = *a1;
  type metadata accessor for ImageLockupView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  result = sub_24F926F38();
  if (v1 != v3)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24ED32834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA68);
  MEMORY[0x28223BE20](v100);
  v103 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA70);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA78);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA80);
  v108 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v107 = &v96 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA88);
  MEMORY[0x28223BE20](v105);
  v16 = &v96 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA90);
  MEMORY[0x28223BE20](v106);
  v18 = &v96 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA98);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EAA0);
  MEMORY[0x28223BE20](v25 - 8);
  v109 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = a1[1];
  v110 = v12;
  v115 = &v96 - v28;
  v99 = v30;
  if (v30)
  {
    v96 = v13;
    v97 = v20;
    v98 = v19;
    v31 = *a1;
  }

  else
  {
    v59 = a1[4];
    if (v59)
    {
      (*(v20 + 56))(&v96 - v28, 1, 1, v19, v29);
      goto LABEL_7;
    }

    v96 = v13;
    v97 = v20;
    v98 = v19;
    v31 = 0;
    v30 = 0xE000000000000000;
  }

  v32 = a1;
  v116 = v31;
  v117 = v30;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v116 = v33;
  v117 = v34;
  v37 = v36 & 1;
  v118 = v36 & 1;
  v119 = v38;
  v39 = v107;
  sub_24F926B88();
  sub_24E600B40(v33, v35, v37);

  v40 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  (*(v108 + 32))(v16, v39, v96);
  v42 = &v16[*(v105 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = sub_24F926D38();
  v44 = swift_getKeyPath();
  sub_24E6009C8(v16, v18, &qword_27F22EA88);
  v45 = &v18[*(v106 + 36)];
  *v45 = v44;
  v45[1] = v43;
  LOBYTE(v43) = sub_24F925828();
  sub_24F923318();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E6009C8(v18, v22, &qword_27F22EA90);
  v54 = v98;
  v55 = &v22[*(v98 + 36)];
  *v55 = v43;
  *(v55 + 1) = v47;
  *(v55 + 2) = v49;
  *(v55 + 3) = v51;
  *(v55 + 4) = v53;
  v55[40] = 0;
  v56 = v22;
  v57 = v104;
  sub_24E6009C8(v56, v104, &qword_27F22EA98);
  v58 = v115;
  sub_24E6009C8(v57, v115, &qword_27F22EA98);
  (*(v97 + 56))(v58, 0, 1, v54);
  v59 = v32[4];
  a1 = v32;
  if (v59)
  {
LABEL_7:
    v116 = a1[3];
    v117 = v59;
    sub_24E600AEC();

    v63 = sub_24F925E18();
    v65 = v64;
    v67 = v66;
    sub_24F9258D8();
    v68 = sub_24F925C98();
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_24E600B40(v63, v65, v67 & 1);

    v116 = v68;
    v117 = v70;
    v118 = v72 & 1;
    v119 = v74;
    v75 = v103;
    sub_24F926B88();
    sub_24E600B40(v68, v70, v72 & 1);
    v58 = v115;

    v76 = sub_24F926D18();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v100 + 36));
    *v78 = v77;
    v78[1] = v76;
    LOBYTE(v76) = sub_24F925828();
    sub_24F923318();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v102;
    sub_24E6009C8(v75, v102, &qword_27F22EA68);
    v60 = v112;
    v88 = v87 + *(v112 + 36);
    *v88 = v76;
    *(v88 + 8) = v80;
    *(v88 + 16) = v82;
    *(v88 + 24) = v84;
    *(v88 + 32) = v86;
    *(v88 + 40) = 0;
    v89 = v87;
    v90 = v101;
    sub_24E6009C8(v89, v101, &qword_27F22EA70);
    v61 = v110;
    sub_24E6009C8(v90, v110, &qword_27F22EA70);
    v62 = 0;
    goto LABEL_8;
  }

  v60 = v112;
  v61 = v110;
  v62 = 1;
LABEL_8:
  (*(v111 + 56))(v61, v62, 1, v60);
  v91 = v109;
  sub_24E60169C(v58, v109, &qword_27F22EAA0);
  v92 = v113;
  sub_24E60169C(v61, v113, &qword_27F22EA78);
  v93 = v114;
  sub_24E60169C(v91, v114, &qword_27F22EAA0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EAA8);
  sub_24E60169C(v92, v93 + *(v94 + 48), &qword_27F22EA78);
  sub_24E601704(v61, &qword_27F22EA78);
  sub_24E601704(v58, &qword_27F22EAA0);
  sub_24E601704(v92, &qword_27F22EA78);
  return sub_24E601704(v91, &qword_27F22EAA0);
}