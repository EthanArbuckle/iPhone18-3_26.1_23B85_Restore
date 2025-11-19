uint64_t sub_21695CE98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v33 = a3;
  v38 = a2;
  v41 = a5;
  v6 = type metadata accessor for PlaylistTrackLockupView();
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC30);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v10;
  v30 = type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  WitnessTable = swift_getWitnessTable();
  v37 = sub_217008BC4();
  v11 = sub_2170089F4();
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v30 - v14;
  v15 = *a1;
  v16 = a1[1];
  *v8 = *a1;
  type metadata accessor for PlaybackPresenter();
  sub_2166D56E4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

  *(v8 + 1) = sub_217008CF4();
  *(v8 + 2) = v17;
  *(v8 + 3) = swift_getKeyPath();
  v8[32] = 0;
  *(v8 + 5) = swift_getKeyPath();
  v8[48] = 0;
  v18 = *(v6 + 32);
  *&v8[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v51 = 0x4044000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v51 = 0x4036000000000000;
  sub_2170082B4();
  v51 = 0x4050400000000000;
  sub_2170082B4();
  v51 = 0x404C000000000000;
  sub_2170082B4();
  v47 = v15;
  v48 = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0);
  v20 = sub_2166D56E4(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView);
  v21 = sub_21695EDD0(&qword_27CABB0E0, &qword_27CABB0C0, &unk_2170231B0, sub_2168AE608);
  v22 = v31;
  sub_21700A3B4();
  sub_21695F158(v8, type metadata accessor for PlaylistTrackLockupView);
  v42 = v33;
  v43 = v34;
  v44 = v15;
  v45 = v16;
  v46 = v38;
  v51 = v6;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2166BF464();
  v24 = v32;
  sub_21700AA94();
  (*(v40 + 8))(v22, v9);
  v25 = swift_getWitnessTable();
  v49 = OpaqueTypeConformance2;
  v50 = v25;
  v26 = swift_getWitnessTable();
  v27 = v36;
  sub_2166C24DC(v24, v11, v26);
  v28 = *(v39 + 8);
  v28(v24, v11);
  sub_2166C24DC(v27, v11, v26);
  return (v28)(v27, v11);
}

uint64_t sub_21695D490()
{
  v0 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21700C894();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C045C();
  sub_2168ABF7C();
  sub_21700DF14();
  sub_21695F158(v2, type metadata accessor for PlaylistTrackLockup);
  sub_2169BCA3C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21695D608@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25[3] = a5;
  v9 = type metadata accessor for PlaylistTrackLockup();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a3;
  v25[2] = a4;
  v12 = type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
  result = sub_2166BF3C8(*(a2 + *(v19 + 52)));
  v21 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_2168ABF7C();
    v22 = *&v11[*(v9 + 56) + 8];
    sub_21700DF14();
    sub_21695F158(v11, type metadata accessor for PlaylistTrackLockup);
    if (v22)
    {
    }

    sub_21695D85C(a1 == 0, v21 == a1, v22 != 0, v15);
    WitnessTable = swift_getWitnessTable();
    sub_2166C24DC(v15, v12, WitnessTable);
    v24 = *(v13 + 8);
    v24(v15, v12);
    sub_2166C24DC(v18, v12, WitnessTable);
    return v24(v18, v12);
  }

  return result;
}

uint64_t sub_21695D85C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  return sub_21695E9B8();
}

uint64_t sub_21695D8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v58 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA0);
  MEMORY[0x28223BE20](v51);
  v45 = (&v43 - v2);
  v3 = type metadata accessor for DefaultSectionHeader();
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA8);
  MEMORY[0x28223BE20](v54);
  v55 = &v43 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB0);
  MEMORY[0x28223BE20](v47);
  v49 = &v43 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC68);
  MEMORY[0x28223BE20](v53);
  v50 = &v43 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78);
  MEMORY[0x28223BE20](v48);
  v43 = &v43 - v8;
  v9 = type metadata accessor for ComposerSectionHeader();
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC58);
  MEMORY[0x28223BE20](v57);
  v52 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaylistTrackListSection();
  type metadata accessor for MappedSection(0);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    sub_21695EFF4();
    sub_2166A6EA4();
    v26 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v26) != 1)
    {
      sub_2166A6EA4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v35 = v44;
        sub_21695EFF4();
        v36 = sub_2170091A4();
        v37 = v45;
        *v45 = v36;
        *(v37 + 8) = 0;
        *(v37 + 16) = 1;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC8);
        sub_21695E280(v37 + *(v38 + 44));
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EF0C();
        sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0);
        v39 = v50;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EE54();
        sub_217009554();
        sub_2166997CC(v39, &qword_27CABDC68);
        sub_2166997CC(v37, &qword_27CABDCA0);
        sub_21695F158(v23, _s7SectionV6HeaderVMa);
        v40 = type metadata accessor for DefaultSectionHeader;
        v41 = v35;
LABEL_11:
        sub_21695F158(v41, v40);
        sub_2166997CC(v16, &qword_27CABDCB8);
        v25 = v58;
        sub_2167A4788();
        v24 = 0;
        return __swift_storeEnumTagSinglePayload(v25, v24, 1, v57);
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_21695EFF4();
        v28 = v43;
        sub_21695F04C();
        *(v28 + *(type metadata accessor for ComposerHeaderLockupView() + 20)) = 0;
        v29 = v28 + *(v48 + 36);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC90);
        sub_217008AC4();
        sub_2166A6EA4();
        *(v29 + 40) = 0u;
        *(v29 + 56) = 0u;
        *(v29 + 72) = 0;
        v31 = (v29 + v30[11]);
        *v31 = 0;
        v31[1] = 0;
        v32 = v30[12];
        *(v29 + v32) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
        swift_storeEnumTagMultiPayload();
        v33 = v29 + v30[13];
        *v33 = swift_getKeyPath();
        *(v33 + 40) = 0;
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EF0C();
        sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0);
        v34 = v50;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EE54();
        sub_217009554();
        sub_2166997CC(v34, &qword_27CABDC68);
        sub_2166997CC(v28, &qword_27CABDC78);
        sub_21695F158(v46, type metadata accessor for ComposerSectionHeader);
LABEL_10:
        v40 = _s7SectionV6HeaderVMa;
        v41 = v23;
        goto LABEL_11;
      }

      sub_21695F158(v13, _s7SectionV6HeaderV12HeaderLockupOMa);
    }

    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    goto LABEL_10;
  }

  sub_2166997CC(v20, &qword_27CABDCC0);
  v24 = 1;
  v25 = v58;
  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v57);
}

uint64_t sub_21695E280@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DefaultSectionHeaderView();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_21700B3B4();
  sub_2170083C4();
  v9 = v25;
  v10 = v27;
  v11 = v29;
  v23 = v30;
  v33 = 1;
  v32 = v26;
  v31 = v28;
  sub_21695F04C();
  v12 = v3[7];
  *&v8[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v13 = &v8[v3[8]];
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v13[32] = 0;
  v14 = v3[9];
  *&v8[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v15 = v3[10];
  *&v8[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0);
  swift_storeEnumTagMultiPayload();
  v24 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v24 = 0x402A000000000000;
  sub_2170082B4();
  v24 = 0x4038000000000000;
  sub_2170082B4();
  LOBYTE(v15) = v33;
  v16 = v32;
  v17 = v31;
  sub_21695F04C();
  *a1 = 0;
  *(a1 + 8) = v15;
  *(a1 + 16) = v9;
  *(a1 + 24) = v16;
  *(a1 + 32) = v10;
  *(a1 + 40) = v17;
  v18 = v23;
  *(a1 + 48) = v11;
  *(a1 + 56) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD8);
  sub_21695F04C();
  v20 = a1 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_21695F158(v8, type metadata accessor for DefaultSectionHeaderView);
  return sub_21695F158(v5, type metadata accessor for DefaultSectionHeaderView);
}

uint64_t sub_21695E594@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD68);
  return sub_21695E5F8(v1, a1 + *(v3 + 44));
}

uint64_t sub_21695E5F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD800);
  MEMORY[0x28223BE20](v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v30[-v14];
  v16 = 1;
  if (*a1 == 1)
  {
    sub_21700B124();
    v31 = sub_217009CB4();
    type metadata accessor for PlaylistTrackListSection.DividerOverlay();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_217007F24();
    v17 = &v9[*(v4 + 36)];
    *v17 = v31;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_2167A4788();
    v16 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v4);
  sub_21700B124();
  v22 = sub_217009CB4();
  type metadata accessor for PlaylistTrackListSection.DividerOverlay();
  sub_21695E90C();
  sub_217007F24();
  v23 = &v9[*(v4 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_2166A6EA4();
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD78) + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_2166A6EA4();
  sub_2166997CC(v9, &qword_27CABD800);
  sub_2166997CC(v15, &qword_27CABDD70);
  sub_2166997CC(v6, &qword_27CABD800);
  return sub_2166997CC(v12, &qword_27CABDD70);
}

uint64_t sub_21695E90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  return sub_2170082C4();
}

uint64_t sub_21695EA00@<X0>(uint64_t a1@<X8>)
{
  sub_2167A4788();
  v2 = type metadata accessor for PlaylistTrackListSection();
  sub_21695EFF4();
  v3 = (a1 + v2[10]);
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  *v3 = sub_217008CF4();
  v3[1] = v4;
  v5 = a1 + v2[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[12];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

void sub_21695EB24()
{
  sub_2166D55BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CatalogPagePresenter();
      swift_getWitnessTable();
      sub_217008D04();
      if (v2 <= 0x3F)
      {
        sub_2167B8000();
        if (v3 <= 0x3F)
        {
          sub_21695EC4C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21695EC4C()
{
  if (!qword_280E2B490)
  {
    type metadata accessor for PersistentPageSectionManager();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B490);
    }
  }
}

unint64_t sub_21695ED20()
{
  result = qword_27CABDC48;
  if (!qword_27CABDC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28);
    sub_21695EDD0(&qword_27CABDC50, &qword_27CABDC58, &unk_21702C508, sub_21695EE54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC48);
  }

  return result;
}

uint64_t sub_21695EDD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_21695EE54()
{
  result = qword_27CABDC60;
  if (!qword_27CABDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC68);
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC60);
  }

  return result;
}

unint64_t sub_21695EF0C()
{
  result = qword_27CABDC70;
  if (!qword_27CABDC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC78);
    sub_2166D56E4(&qword_27CABDC80, type metadata accessor for ComposerHeaderLockupView);
    sub_2166D9530(&qword_27CABDC88, &qword_27CABDC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC70);
  }

  return result;
}

uint64_t sub_21695EFF4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21695F04C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21695F0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PlaylistTrackListSection() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_21695CE98(a1, v8, v5, v6, a2);
}

uint64_t sub_21695F158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_21695F1AC()
{
  sub_2167D1C30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21695F2C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v86 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v81 - v17;
  MEMORY[0x28223BE20](v18);
  v88 = &v81 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v90 = v24;
  v91 = v23;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v13 + 16);
  v96 = a1;
  v28(v22, a1, v11, v25);
  (*(v7 + 16))(v10, a2, v5);
  v29 = v92;
  sub_21700D224();
  if (v29)
  {
    (*(v7 + 8))(a2, v5);
    return (*(v13 + 8))(v96, v11);
  }

  v83 = v7;
  v84 = v5;
  v85 = a2;
  v92 = v11;
  v31 = v89;
  (*(v90 + 32))(v89, v27, v91);
  v32 = v88;
  sub_21700CE04();
  if (sub_21700CDA4())
  {
    goto LABEL_9;
  }

  sub_21700CDD4();
  if (!v94)
  {
    sub_216697CFC(&v93);
LABEL_9:
    sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_4();
    v57 = v56;
    v58 = type metadata accessor for SetPersistenceItemAction();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v59 + 32) = swift_allocError();
    *v60 = 2;
    *v57 = 1835365481;
    v57[1] = 0xE400000000000000;
    v57[2] = v58;
    v57[3] = v59;
    OUTLINED_FUNCTION_2_12();
    (*(v61 + 104))(v57);
    swift_willThrow();
    v62 = OUTLINED_FUNCTION_1_73();
    v63(v62);
    v64 = *(v13 + 8);
    v65 = v92;
    v64(v96, v92);
    v64(v32, v65);
    v47 = 0;
    v55 = 0;
    goto LABEL_10;
  }

  sub_2166EF9C4(&v93, v95);
  v82 = type metadata accessor for SetPersistenceItemAction();
  sub_2166A6DF8(v95, v31 + v82[5]);
  v33 = v87;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v37 = *(v13 + 8);
  v38 = v33;
  v39 = v92;
  v37(v38, v92);
  if (v36)
  {
    v40 = (v31 + v82[6]);
    *v40 = v34;
    v40[1] = v36;
    v41 = v86;
    v42 = v96;
    sub_21700CE04();
    sub_21695FB0C();
    sub_21700CD14();
    v87 = v37;
    v37(v41, v39);
    v43 = v93;
    if (v93 != 2)
    {
      v77 = OUTLINED_FUNCTION_1_73();
      v78(v77);
      v79 = v87;
      (v87)(v42, v39);
      v80 = OUTLINED_FUNCTION_4_46();
      result = v79(v80);
      *(v31 + v82[7]) = v43 & 1;
      return result;
    }

    sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_4();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v46 + 32) = swift_allocError();
    v47 = 1;
    *v48 = 1;
    *v45 = 0x65706F6373;
    v49 = v82;
    v45[1] = 0xE500000000000000;
    v45[2] = v49;
    v45[3] = v46;
    OUTLINED_FUNCTION_2_12();
    (*(v50 + 104))(v45);
    swift_willThrow();
    v51 = OUTLINED_FUNCTION_1_73();
    v52(v51);
    v53 = v87;
    (v87)(v42, v39);
    v54 = OUTLINED_FUNCTION_4_46();
    v53(v54);
    v55 = 1;
  }

  else
  {
    sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_4();
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v70 + 32) = swift_allocError();
    *v71 = 0;
    *v69 = 7955819;
    v72 = v82;
    v69[1] = 0xE300000000000000;
    v69[2] = v72;
    v69[3] = v70;
    OUTLINED_FUNCTION_2_12();
    (*(v73 + 104))(v69);
    swift_willThrow();
    v74 = OUTLINED_FUNCTION_1_73();
    v75(v74);
    v37(v96, v39);
    v76 = OUTLINED_FUNCTION_4_46();
    (v37)(v76);
    v55 = 0;
    v47 = 1;
  }

LABEL_10:
  v66 = v89;
  result = (*(v90 + 8))(v89, v91);
  if (v47)
  {
    v67 = type metadata accessor for SetPersistenceItemAction();
    result = __swift_destroy_boxed_opaque_existential_1Tm(v66 + *(v67 + 20));
  }

  if (v55)
  {
    type metadata accessor for SetPersistenceItemAction();
  }

  return result;
}

unint64_t sub_21695FAB8()
{
  result = qword_27CABDD90;
  if (!qword_27CABDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDD90);
  }

  return result;
}

unint64_t sub_21695FB0C()
{
  result = qword_280E45098;
  if (!qword_280E45098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetPersistenceItemAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21695FC40()
{
  result = qword_27CABDD98;
  if (!qword_27CABDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDD98);
  }

  return result;
}

void sub_21695FC94()
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216962BE8(319, qword_280E2B500, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
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

void sub_21695FE9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21695FF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ActionButton();
  v15 = v14[12];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + v14[13];
  *v16 = swift_getKeyPath();
  *(v16 + 40) = 0;
  *(a7 + 32) = *(a1 + 32);
  v17 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v17;
  result = sub_2168D36D4(a2, a7 + v14[11]);
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t sub_21696002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_21700AF54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  sub_2168282D4(v3 + *(a1 + 44), v8, &qword_27CAB70A8);
  sub_216960210(v3, v9, v10);
  sub_21700AF04();
  OUTLINED_FUNCTION_6_43();
  WitnessTable = swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_8();
  sub_2166C24DC(v19, v20, WitnessTable);
  v21 = *(v13 + 8);
  v22 = OUTLINED_FUNCTION_8();
  v21(v22);
  sub_2166C24DC(v17, v11, WitnessTable);
  return (v21)(v17, v11);
}

void (*sub_216960210(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for ActionButton();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_2169606A8;
}

void sub_216960374()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C0C534(&v28);
  if (v30)
  {
    sub_2166A0F18(&v28, v32);
    sub_2168282D4(v0, &v24, &qword_27CAB6DB0);
    if (v26)
    {
      v5 = sub_2166A0F18(&v24, &v28);
      v6 = *(v0 + 56);
      if (v6)
      {
        v6(v5);
      }

      v7 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, *(&v24 + 1), v25, v26, v27, v28, *(&v28 + 1), v29, v30, v31, v32[0]);
      sub_217007544();
      (*(v2 + 8))(v4, v1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      sub_2166997CC(&v24, &qword_27CAB6DB0);
      if (qword_27CAB5AB0 != -1)
      {
        swift_once();
      }

      v19 = sub_217007CA4();
      __swift_project_value_buffer(v19, qword_27CABDDA0);
      v20 = sub_217007C84();
      v21 = sub_21700ED84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_216679000, v20, v21, "Can't perform action, no action present.", v22, 2u);
        MEMORY[0x21CEA1440](v22, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_2166997CC(&v28, &qword_27CAB7310);
    if (qword_27CAB5AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_27CABDDA0);
    v16 = sub_217007C84();
    v17 = sub_21700ED84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "Can't perform action, an actionDispatcher must be set on this view or a view above it.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }
  }
}

void sub_2169606A8()
{
  v0 = type metadata accessor for ActionButton();
  OUTLINED_FUNCTION_36(v0);

  sub_216960348();
}

uint64_t sub_216960728()
{
  v1 = type metadata accessor for SystemActionButton(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_217007F04();
  OUTLINED_FUNCTION_1();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v0 + *(v2 + 32), v6);
  sub_216962EE4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemActionButton);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_216962F40(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SystemActionButton);
  return MEMORY[0x21CE9BD40](v8, sub_216963BCC, v11);
}

void sub_2169608DC()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemActionButton(0);
  sub_216C0C534(&v28);
  if (v30)
  {
    sub_2166A0F18(&v28, v32);
    sub_2168282D4(v0, &v24, &qword_27CAB6DB0);
    if (v26)
    {
      v5 = sub_2166A0F18(&v24, &v28);
      v6 = *(v0 + 40);
      if (v6)
      {
        v6(v5);
      }

      v7 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, *(&v24 + 1), v25, v26, v27, v28, *(&v28 + 1), v29, v30, v31, v32[0]);
      sub_217007544();
      (*(v2 + 8))(v4, v1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      sub_2166997CC(&v24, &qword_27CAB6DB0);
      if (qword_27CAB5AB0 != -1)
      {
        swift_once();
      }

      v19 = sub_217007CA4();
      __swift_project_value_buffer(v19, qword_27CABDDA0);
      v20 = sub_217007C84();
      v21 = sub_21700ED84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_216679000, v20, v21, "Can't perform action, no action present.", v22, 2u);
        MEMORY[0x21CEA1440](v22, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_2166997CC(&v28, &qword_27CAB7310);
    if (qword_27CAB5AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_27CABDDA0);
    v16 = sub_217007C84();
    v17 = sub_21700ED84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "Can't perform action, an actionDispatcher must be set on this view or a view above it.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }
  }
}

uint64_t sub_216960C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  swift_getWitnessTable();
  v6 = a2;
  v7 = sub_2170097A4();
  v8 = *(v7 - 8);
  v53 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - v12;
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for ActionButton();
  v46 = v14;
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v47 = &v43 - v15;
  v16 = *(v6 + 16);
  v17 = swift_getWitnessTable();
  v43 = *(v6 + 24);
  v56 = v14;
  v57 = v16;
  v58 = v17;
  v59 = v43;
  v49 = v17;
  v50 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v45 = &v43 - v20;
  v21 = v6;
  sub_2169610B4(&v56);
  v22 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
  v23 = v10;
  v24 = a1;
  v25 = v7;
  (*(v8 + 16))(v10, v24, v7);
  v26 = v8;
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = v16;
  *(v28 + 16) = v16;
  v30 = v43;
  *(v28 + 24) = v43;
  (*(v26 + 32))(v28 + v27, v23, v25);
  v31 = (v3 + *(v21 + 44));
  v32 = *v31;
  v33 = v47;
  sub_21695FF44(&v56, v13, sub_216963C9C, v28, *v31, v31[1], v47);
  sub_2167759F4(v32);
  v34 = v44;
  v35 = v46;
  v36 = v29;
  v37 = v49;
  sub_21700A364();
  (*(v54 + 8))(v33, v35);
  v56 = v35;
  v57 = v36;
  v58 = v37;
  v59 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v45;
  v40 = OpaqueTypeMetadata2;
  sub_2166C24DC(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v51 + 8);
  v41(v34, v40);
  sub_2166C24DC(v39, v40, OpaqueTypeConformance2);
  return (v41)(v39, v40);
}

uint64_t sub_2169610B4@<X0>(uint64_t a1@<X8>)
{
  sub_2168282D4(v1, &v4, &qword_27CAB6DB0);
  if (v5)
  {
    return sub_2166A0F18(&v4, a1);
  }

  result = sub_2168282D4(v1 + 40, a1, &qword_27CAB6DB0);
  if (v5)
  {
    return sub_2166997CC(&v4, &qword_27CAB6DB0);
  }

  return result;
}

uint64_t sub_21696114C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ActionButtonModifier();
  swift_getWitnessTable();
  v4 = sub_2170097A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_2169611F4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDDA0);
  __swift_project_value_buffer(v0, qword_27CABDDA0);
  return sub_217007C94();
}

uint64_t sub_216961274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v66 = a2;
  v65 = sub_217009C14();
  v63 = *(v65 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActionButtonStyle(0);
  v60 = *(v4 - 8);
  v58 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v54 = sub_217009BE4();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDD8);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v49 - v15;
  sub_217009BF4();
  v16 = *v2;
  v17 = *(v2 + 8);
  v53 = v2;
  LOBYTE(v67) = v16;
  v68 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  v18 = sub_21700AEB4();
  v19 = v71;
  sub_216C0C924(v18, v20, v21, v22, v23, v24, v25, v26, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v27 = *(v7 + 16);
  v51 = v6;
  v27(v9, v12, v6);
  v28 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  (*(v7 + 32))(v29 + v28, v9, v6);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDE0);
  v31 = sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500]);
  v50 = v31;
  v32 = sub_217008CA4();
  v33 = sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0]);
  v67 = v32;
  v68 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v52;
  v36 = v54;
  MEMORY[0x21CE9B2F0](sub_216962D9C, v29, v54, v30, v31, OpaqueTypeConformance2);

  (*(v7 + 8))(v12, v51);
  v37 = v36;
  (*(v56 + 8))(v14, v36);
  v38 = v57;
  sub_216962EE4(v53, v57, type metadata accessor for ActionButtonStyle);
  v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v40 = swift_allocObject();
  sub_216962F40(v38, v40 + v39, type metadata accessor for ActionButtonStyle);
  v42 = v62;
  v41 = v63;
  v43 = v65;
  (*(v63 + 16))(v62, v55, v65);
  v44 = v41;
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v46 = swift_allocObject();
  (*(v44 + 32))(v46 + v45, v42, v43);
  v67 = v37;
  v68 = v30;
  v69 = v50;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v59;
  sub_21700A5F4();

  return (*(v61 + 8))(v35, v47);
}

uint64_t sub_2169618CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2170080D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4, v6);
    sub_2170080C4();
    (*(v5 + 8))(v8, v4);
  }

  sub_217008CA4();
  sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0]);
  return sub_2170083B4();
}

uint64_t sub_216961AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v60 = a2;
  v3 = sub_217008474();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_217009C14();
  v58 = *(v66 - 8);
  v67 = *(v58 + 64);
  MEMORY[0x28223BE20](v66);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionButtonListStyle(0);
  v54 = *(v6 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217009BE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDE8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF0);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v17 = &v49 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF8);
  MEMORY[0x28223BE20](v51);
  v63 = &v49 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE00);
  v20 = *(v19 - 8);
  v55 = v19;
  v56 = v20;
  MEMORY[0x28223BE20](v19);
  v65 = &v49 - v21;
  sub_217009BF4();
  v22 = sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500]);
  sub_21700AB94();
  (*(v9 + 8))(v11, v8);
  v69 = v8;
  v70 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A744();
  (*(v13 + 8))(v15, v12);
  v24 = *(v2 + 8);
  v25 = *(v2 + 16);
  LOBYTE(v69) = *v2;
  v70 = v24;
  v71 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F64();
  v69 = v12;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v63;
  v27 = v49;
  sub_21700AA84();

  (*(v50 + 8))(v17, v27);
  v28 = *(v2 + 32);
  LOBYTE(v69) = *(v2 + 24);
  v70 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  v29 = sub_216962300(v68);
  v30 = sub_217009C84();
  v31 = v51;
  v32 = &v26[*(v51 + 36)];
  *v32 = v29;
  v32[8] = v30;
  v33 = v52;
  sub_216962EE4(v2, v52, type metadata accessor for ActionButtonListStyle);
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_216962F40(v33, v35 + v34, type metadata accessor for ActionButtonListStyle);
  v36 = v57;
  v37 = v58;
  v54 = *(v58 + 16);
  v38 = v66;
  (v54)(v57, v64, v66);
  v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v58 = *(v37 + 32);
  (v58)(v40 + v39, v36, v38);
  v41 = sub_2169630A4();
  v42 = v63;
  sub_21700A5F4();

  sub_216718928(v42);
  v43 = v59;
  sub_217008464();
  v44 = v66;
  (v54)(v36, v64, v66);
  v45 = swift_allocObject();
  (v58)(v45 + v39, v36, v44);
  v69 = v31;
  v70 = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v65;
  sub_21700A314();

  (*(v61 + 8))(v43, v62);
  return (*(v56 + 8))(v47, v46);
}

uint64_t sub_216962300(char a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = &v1[*(type metadata accessor for ActionButtonListStyle(0) + 28)];
  v8 = *v7;
  if (v7[8] != 1)
  {

    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v15 != 1)
    {
      goto LABEL_3;
    }

    return sub_21700ACD4();
  }

  if (v8)
  {
    return sub_21700ACD4();
  }

LABEL_3:
  if (a1)
  {
    if (qword_27CAB5AB8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CABDDB8;
LABEL_14:

    return v9;
  }

  v11 = *(v1 + 1);
  v12 = v1[16];
  v15 = *v1;
  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F44();
  if (v14[7] != 1)
  {
    if (qword_27CAB5AC0 != -1)
    {
      swift_once();
    }

    v9 = qword_27CABDDC0;
    goto LABEL_14;
  }

  sub_21700AC54();
  v9 = sub_21700AD04();

  return v9;
}

uint64_t sub_216962564()
{
  sub_21700B3F4();
  sub_217008564();
}

uint64_t sub_21696262C@<X0>(uint64_t a1@<X8>)
{
  sub_217009C04();
  v2 = *MEMORY[0x277CDF120];
  v3 = sub_21700B294();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2169626D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = sub_217009C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v18[0] = sub_217009BE4();
  v10 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009BF4();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500]);

  v16 = v18[0];
  sub_21700A5F4();

  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_216962950()
{
  sub_21700B3F4();
  sub_217008564();
}

void sub_216962A74()
{
  sub_216962B90();
  if (v0 <= 0x3F)
  {
    sub_2166B3818(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_216962BE8(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2166B3818(319, &qword_280E2B438, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216962B90()
{
  if (!qword_280E2B4E8)
  {
    v0 = sub_217007FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4E8);
    }
  }
}

void sub_216962BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216962C94()
{
  sub_2166B3818(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_216962BE8(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216962D9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2170080D4();
  OUTLINED_FUNCTION_36(v5);
  v6 = *(v2 + 16);

  return sub_2169618CC(a1, a2, v6);
}

uint64_t sub_216962E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216962EE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216962F40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216962FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  OUTLINED_FUNCTION_36(v2);
  return sub_216962564();
}

uint64_t sub_21696303C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  return a2(v4);
}

unint64_t sub_2169630A4()
{
  result = qword_27CABDE10;
  if (!qword_27CABDE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDE8);
    sub_217009BE4();
    sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDE10);
  }

  return result;
}

uint64_t sub_21696323C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217009C14();
  OUTLINED_FUNCTION_36(v2);

  return sub_21696262C(a1);
}

void sub_216963310()
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_217007F04();
      if (v2 <= 0x3F)
      {
        sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2169634A0()
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216963624(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_2170075A4();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if (v7 > 0x7FFFFFFE)
    {

      return __swift_getEnumTagSinglePayload((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v15 + 40) & ~v15, v7, v5);
    }

    else
    {
      v24 = *(a1 + 3);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((v14 + ((v16 + ((*(v6 + 64) + ((v15 + 80) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v17 <= 3)
    {
      v18 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_24:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }

        result = v8 + (v25 | v23) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_216963878(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170075A4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((*(v8 + 64) + ((v13 + 80) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v9 > 0x7FFFFFFE)
          {

            __swift_storeEnumTagSinglePayload((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 4) = 0;
            *a1 = 0u;
            *(a1 + 1) = 0u;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        a1[v15] = v20;
        break;
      case 2:
        *&a1[v15] = v20;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v15] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t objectdestroy_28Tm_0()
{
  sub_217009C14();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_216963C9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActionButtonModifier();
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  v3 = sub_2170097A4();
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_21696114C(v5, a1);
}

uint64_t sub_216963D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v20;
  v28 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v30)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  (*(v27 + 32))(a3, v23, v28);
  v25 = *(type metadata accessor for ReportMusicItemConcernAction() + 20);
  v26 = type metadata accessor for ReportableMusicItem();
  return __swift_storeEnumTagSinglePayload(a3 + v25, 1, 1, v26);
}

void sub_216964018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2170067A4();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for AnyPlayableItemState();
  swift_allocObject();

  sub_216968140();
}

uint64_t sub_216964174@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyPlayableItemState();
  sub_216964CFC(&qword_280E3CC00, type metadata accessor for AnyPlayableItemState);
  sub_2170081B4();
  v3 = sub_2169680CC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_280E2B8F8 != -1)
  {
    result = swift_once();
  }

  if ((byte_280E73A80 & 1) == 0)
  {
    sub_21700ACC4();
    v5 = sub_21700AD04();

    v12 = *(v1 + 24);
    v7 = swift_allocObject();
    v9 = *(v1 + 16);
    *(v7 + 16) = *v1;
    *(v7 + 32) = v9;
    *(v7 + 48) = *(v1 + 32);
    sub_2167759EC();
    sub_216964AE0(&v12, &v11);
    sub_216C6D16C();
    v10 = sub_217006BD4();

    v6 = sub_216964AD8;
    sub_2167759EC();
    sub_2166B8588();

    if (v10)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_216964364()
{
  sub_216C6D16C();
  v0 = sub_217006D94();

  return v0;
}

uint64_t sub_2169643A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_217006BC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v35[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  sub_217006D44();
  sub_216964CFC(&qword_280E4A420, MEMORY[0x277D2A918]);
  v36 = a3;
  v37 = a1;
  v38 = a2;
  sub_2170081B4();
  sub_217006CF4();

  v17 = (*(v8 + 88))(v16, v7);
  if (v17 == *MEMORY[0x277D2A898] || v17 == *MEMORY[0x277D2A890])
  {
    goto LABEL_6;
  }

  v23 = *MEMORY[0x277D2A880];
  if (v17 != v23)
  {
    if (v17 != *MEMORY[0x277D2A878])
    {
      if (v17 == *MEMORY[0x277D2A888])
      {
        goto LABEL_9;
      }

      if (v17 != *MEMORY[0x277D2A870])
      {
        v33 = *MEMORY[0x277D26A58];
        v34 = sub_217006544();
        (*(*(v34 - 8) + 104))(v39, v33, v34);
        return (*(v8 + 8))(v16, v7);
      }
    }

LABEL_6:
    v19 = MEMORY[0x277D26A60];
LABEL_7:
    v20 = *v19;
    v21 = sub_217006544();
    return (*(*(v21 - 8) + 104))(v39, v20, v21);
  }

LABEL_9:
  v24 = v36;
  sub_2170081B4();
  sub_217006CF4();

  (*(v8 + 104))(v10, v23, v7);
  v25 = sub_217006BB4();
  v26 = *(v8 + 8);
  v26(v10, v7);
  v26(v13, v7);
  if (v25)
  {
    sub_2170081B4();
    v27 = sub_217006CD4();

    if ((v27 & 0x17FFFFFFFLL) == 0)
    {
      v19 = MEMORY[0x277D26A70];
      goto LABEL_7;
    }
  }

  v28 = sub_217006534();
  v29 = MEMORY[0x277D26A40];
  if ((v24 & 0x100) != 0)
  {
    v29 = MEMORY[0x277D26A48];
  }

  v30 = v39;
  (*(*(v28 - 8) + 104))(v39, *v29, v28);
  v31 = *MEMORY[0x277D26A68];
  v32 = sub_217006544();
  return (*(*(v32 - 8) + 104))(v30, v31, v32);
}

uint64_t sub_2169647C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v19[0] = a4;
  v7 = sub_217006644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217006544();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217006404();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2169643A0(a1, a2, a3 & 0x101, v13);
  sub_2170063F4();
  sub_217006634();
  sub_216964CFC(&qword_280E4A4B0, MEMORY[0x277D269B8]);
  sub_21700A294();
  (*(v8 + 8))(v10, v7);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2169649F8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2169647C8(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

uint64_t sub_216964A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216964A64(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_216964AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_216964B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216964BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_216964BF8()
{
  result = qword_280E2A488;
  if (!qword_280E2A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDEC8);
    sub_216964C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A488);
  }

  return result;
}

unint64_t sub_216964C7C()
{
  result = qword_280E2A490;
  if (!qword_280E2A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A490);
  }

  return result;
}

uint64_t sub_216964CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216964D60()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDED8);
  __swift_project_value_buffer(v0, qword_27CABDED8);
  return sub_217007C94();
}

void sub_216964DE0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  sub_2169651C4();
  if (v6)
  {
    v7 = v6;
    v8 = sub_216965770(a1);
    if (!v8)
    {
      v8 = sub_21700E384();
    }

    v9 = v8;
    if (qword_27CAB5AC8 != -1)
    {
      OUTLINED_FUNCTION_0_90();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABDED8);
    sub_21700DF14();
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136446210;
      v15 = sub_21700E364();
      v17 = sub_2166A85FC(v15, v16, v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "Additional Parameters: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v18 = objc_opt_self();
    sub_2169FD23C(v9);

    v19 = sub_21700E344();

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v28 = sub_2169657DC;
    v29 = v20;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_2169F0990;
    v27[3] = &block_descriptor_9;
    v21 = _Block_copy(v27);

    [v18 presentFamilyCircleSheet:v7 withParameters:v19 completionHandler:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_27CAB5AC8 != -1)
    {
      OUTLINED_FUNCTION_0_90();
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CABDED8);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2166A85FC(0xD000000000000027, 0x80000002170852A0, v27);
      _os_log_impl(&dword_216679000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_216965530();
    v27[0] = swift_allocError();
    LOBYTE(v28) = 1;
    a2(v27);
    sub_216965584(v27);
  }
}

void sub_2169651C4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_2169657E4();
  sub_2166CB5AC();
  v2 = sub_21700EB84();

  v38 = v2;
  v39 = sub_21696570C;
  v40 = 0;
  v41 = sub_216965B84;
  v42 = 0;
  sub_2169658B0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_216965828(v2);
  v11 = v10;
  v13 = v12;
  v14 = sub_21696587C(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_2166F42E8(v9, v11, v13 & 1);
  if (v14)
  {
    sub_2166F42E8(v4, v6, v8 & 1);

    return;
  }

  sub_216ABE020(v4, v6, v8 & 1, v2, v15, v16, v17, v18, v37, v38);
  v20 = v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_18;
  }

  v22 = [v21 keyWindow];

  if (!v22)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_2166F42E8(v4, v6, v8 & 1);

  v23 = [v22 rootViewController];

  if (v23)
  {
    v24 = v23;
    for (i = v24; ; i = v27)
    {
      v26 = [i presentedViewController];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if ([v26 isBeingDismissed])
      {

        break;
      }
    }

    if (qword_27CAB5AC8 != -1)
    {
      swift_once();
    }

    v28 = sub_217007CA4();
    __swift_project_value_buffer(v28, qword_27CABDED8);
    v29 = i;
    v30 = sub_217007C84();
    v31 = sub_21700ED74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      swift_getObjectType();
      v34 = sub_21700F9C4();
      v36 = sub_2166A85FC(v34, v35, &v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_216679000, v30, v31, "Using topmost controller: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x21CEA1440](v33, -1, -1);
      MEMORY[0x21CEA1440](v32, -1, -1);
    }
  }
}

unint64_t sub_216965530()
{
  result = qword_27CABDEF0;
  if (!qword_27CABDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDEF0);
  }

  return result;
}

uint64_t sub_216965584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2169655EC(void (*a1)(_BYTE *))
{
  if (qword_27CAB5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABDED8);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_216679000, v3, v4, "Dismissed FamilyCircle View", v5, 2u);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v8 = MEMORY[0x277D839B0];
  v7[0] = 1;
  v9 = 0;
  a1(v7);
  return sub_216965584(v7);
}

id sub_21696570C@<X0>(void *a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result keyWindow];
  }

  *a1 = result;
  return result;
}

uint64_t sub_216965770(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_2169657E4()
{
  result = qword_280E29B30;
  if (!qword_280E29B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B30);
  }

  return result;
}

uint64_t sub_216965828(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_21700F304();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

BOOL sub_21696587C(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x21CEA00A0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

void sub_2169658B0()
{
  v1 = *v0;
  v33 = v0[1];
  v32 = v0[3];
  v36 = sub_216ABDFC4(*v0);
  v37 = v2;
  v7 = v1 & 0xC000000000000001;
  v38 = v8 & 1;
  v31 = (v1 + 64);
  while (1)
  {
    if (v7)
    {
      v9 = sub_21700F304();
      if ((v38 & 1) == 0)
      {
        goto LABEL_31;
      }

      v11 = v9;
      v12 = v10;
      v14 = v36;
      v13 = v37;
      v15 = MEMORY[0x21CEA00A0](v36, v37, v9, v10);
      sub_2166F42E8(v11, v12, 1);
      if (v15)
      {
        return;
      }

      goto LABEL_9;
    }

    if (v38)
    {
      goto LABEL_31;
    }

    v13 = v37;
    if (*(v1 + 36) != v37)
    {
      break;
    }

    v14 = v36;
    if (v36 == 1 << *(v1 + 32))
    {
      return;
    }

LABEL_9:
    sub_216ABE020(v14, v13, (v1 & 0xC000000000000001) != 0, v1, v3, v4, v5, v6, v30, v31);
    v17 = v16;
    v35 = v16;
    v33(v34, &v35);

    v18 = v34[0];
    v35 = v34[0];
    v19 = v32(&v35);

    if (v19)
    {
      return;
    }

    if (v7)
    {
      if (sub_21700F274())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEF8);
      v24 = sub_21700EBB4();
      sub_21700F314();
      v24(v34, 0);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v20 = 1 << *(v1 + 32);
      if (v14 >= v20)
      {
        goto LABEL_28;
      }

      v21 = v14 >> 6;
      v22 = *(v1 + 56 + 8 * (v14 >> 6));
      if (((v22 >> v14) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v13)
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v14 & 0x3F));
      if (v23)
      {
        v20 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v21 << 6;
        v26 = v21 + 1;
        v27 = &v31[8 * v21];
        while (v26 < (v20 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_2166F42E8(v14, v13, 0);
            v20 = __clz(__rbit64(v28)) + v25;
            goto LABEL_25;
          }
        }

        sub_2166F42E8(v14, v13, 0);
      }

LABEL_25:
      v36 = v20;
      v37 = v13;
      v38 = 0;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

_BYTE *sub_216965B8C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216965C3C()
{
  result = qword_27CABDF00;
  if (!qword_27CABDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF00);
  }

  return result;
}

uint64_t type metadata accessor for ArtistUploadedVideoDetailPageIntent()
{
  result = qword_27CABDF08;
  if (!qword_27CABDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216965D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for ArtistUploadedVideoDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_2169660E0(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for ArtistUploadedVideoDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2169662B4(uint64_t a1)
{
  result = sub_2166CE474(&qword_27CABDF18, type metadata accessor for ArtistUploadedVideoDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216966354(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE474(&qword_27CABDF18, type metadata accessor for ArtistUploadedVideoDetailPageIntent);
  result = sub_2166CE474(&qword_27CABDF20, type metadata accessor for ArtistUploadedVideoDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CreateArtistStationAction()
{
  result = qword_280E35A80;
  if (!qword_280E35A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21696644C()
{
  result = sub_21700D284();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2169664D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v2 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v40 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v46 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v39 = v13;
  MEMORY[0x28223BE20](v14);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v42 = v16;
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v19 = *(v6 + 16);
  v47 = v4;
  v19(v11, v48, v4);
  v20 = v45;
  sub_21700D224();
  if (v20)
  {
    (*(v6 + 8))(v48, v47);
    v21 = OUTLINED_FUNCTION_1_74();
    return v22(v21);
  }

  else
  {
    v45 = v6;
    (*(v42 + 32))(v44, v18, v43);
    v24 = v39;
    sub_21700CE04();
    v25 = v40;
    v19(v40, v48, v47);
    v26 = v41;
    ContentDescriptor.init(deserializing:using:)(v24, v25, v27, v28, v29, v30, v31, v32, v38, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39));
    v33 = OUTLINED_FUNCTION_2_60();
    v34(v33);
    v35 = OUTLINED_FUNCTION_1_74();
    v36(v35);
    ArtistStationAction = type metadata accessor for CreateArtistStationAction();
    return sub_2168ED900(v26, v44 + *(ArtistStationAction + 20));
  }
}

uint64_t type metadata accessor for InlineUpsellView()
{
  result = qword_280E40FB8;
  if (!qword_280E40FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169668F8()
{
  result = type metadata accessor for InlineUpsell();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216966980@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF28);
  sub_216966AB0(v1, a1 + *(v3 + 44));
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF30) + 36);
  sub_21700B2B4();
  v5 = sub_217009C84();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20) + 36)) = v5;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF38) + 36));
  v7 = *(sub_217008B44() + 20);
  v8 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_9();
  (*(v9 + 104))(&v6[v7], v8);
  __asm { FMOV            V0.2D, #7.0 }

  *v6 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438);
  *&v6[*(result + 36)] = 256;
  return result;
}

uint64_t sub_216966AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF40);
  MEMORY[0x28223BE20](v107);
  v92 = (&v91 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB230);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF48);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF50);
  MEMORY[0x28223BE20](v100);
  v102 = &v91 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB228);
  MEMORY[0x28223BE20](v101);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v113 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB218);
  MEMORY[0x28223BE20](v18 - 8);
  v108 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  *v22 = sub_2170091A4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF58) + 44);
  v106 = v22;
  sub_216967574(a1, &v22[v23]);
  v24 = type metadata accessor for InlineUpsell();
  v25 = (a1 + *(v24 + 24));
  v26 = v25[1];
  v110 = v8;
  v105 = a1;
  v93 = v24;
  if (v26)
  {
    v27 = *v25;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  sub_21700DF14();
  v29 = sub_217009814();
  v30 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  *v143 = v27;
  *&v143[8] = v26;
  *&v143[16] = 0;
  *&v143[24] = v28;
  *&v143[32] = v29;
  *&v143[40] = KeyPath;
  *&v143[48] = v30;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF60);
  sub_216967D30();
  sub_21700A304();
  sub_2167C4DF0(v27, v26, 0, v28);

  v32 = swift_getKeyPath();
  v33 = v102;
  (*(v103 + 32))(v102, v11, v104);
  v34 = &v33[*(v100 + 36)];
  *v34 = v32;
  v34[8] = 1;
  LOBYTE(v32) = sub_217009C74();
  sub_217007F24();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v33;
  v44 = v99;
  sub_2166DDCC0(v43, v99, &qword_27CABDF50);
  v45 = v44 + *(v101 + 36);
  *v45 = v32;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  sub_2166DDCC0(v44, v113, &qword_27CABB228);
  sub_21700B3B4();
  sub_2170083C4();
  v99 = v153;
  v104 = v157;
  v102 = v155;
  v103 = v158;
  v152 = 1;
  v150 = v154;
  v148 = v156;
  v46 = v93;
  v47 = v105;
  v48 = (v105 + *(v93 + 28));
  v49 = v48[1];
  if (v49)
  {
    v100 = *v48;
    v101 = MEMORY[0x277D84F90];
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  sub_21700DF14();
  v98 = sub_217009834();
  v97 = sub_217009D54();
  v96 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v95 = sub_217009C74();
  sub_217007F24();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v146 = 0;
  v58 = (v47 + *(v46 + 32));
  v59 = v58[1];
  if (!v59)
  {
    goto LABEL_11;
  }

  v60 = *v58;
  sub_2166A6F60(v47 + *(v46 + 36), v122, &qword_27CAB6DB0);
  if (!*&v122[24])
  {
    sub_2166997CC(v122, &qword_27CAB6DB0);
LABEL_11:
    v80 = v110;
    v81 = v110;
    v82 = 1;
    v83 = v107;
    goto LABEL_12;
  }

  sub_2166A0F18(v122, v143);
  v61 = v92;
  sub_2167B7D58(v143, v92);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF80);
  v63 = v62[11];
  v64 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v61 + v63, 1, 1, v64);
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  *(v65 + 24) = v59;
  v66 = v62[12];
  *(v61 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v67 = v61 + v62[13];
  *v67 = swift_getKeyPath();
  v67[40] = 0;
  v61[5] = sub_216967EA0;
  v61[6] = v65;
  v61[7] = 0;
  v61[8] = 0;
  v68 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF88) + 36);
  sub_21700DF14();
  sub_217008744();
  v69 = sub_217009C84();
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF90) + 36)] = v69;
  v70 = v107;
  v71 = v61 + *(v107 + 36);
  v72 = *(sub_217008B44() + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_217009294();
  (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
  __asm { FMOV            V0.2D, #5.0 }

  *v71 = _Q0;
  *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  v80 = v110;
  sub_2166DDCC0(v61, v110, &qword_27CABDF40);
  v81 = v80;
  v82 = 0;
  v83 = v70;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v81, v82, 1, v83);
  sub_21700B3B4();
  sub_2170083C4();
  v84 = v159;
  v93 = v161;
  v107 = v163;
  v105 = v164;
  v142 = 1;
  v141 = v160;
  v140 = v162;
  v85 = v106;
  v86 = v108;
  sub_2166A6F60(v106, v108, &qword_27CABB218);
  v134 = v86;
  v87 = v113;
  v88 = v109;
  sub_2166A6F60(v113, v109, &qword_27CABB228);
  v123 = 0;
  v124 = v152;
  *v125 = *v151;
  *&v125[3] = *&v151[3];
  v126 = v99;
  v127 = v150;
  *v128 = *v149;
  *&v128[3] = *&v149[3];
  v129 = v102;
  v130 = v148;
  *v131 = *v147;
  *&v131[3] = *&v147[3];
  v132 = v104;
  v133 = v103;
  v135 = v88;
  v136 = &v123;
  *v122 = v100;
  *&v122[8] = v49;
  *&v122[16] = 0;
  *&v122[24] = v101;
  *&v122[32] = v98;
  *&v122[40] = v96;
  *&v122[48] = v97;
  *&v122[56] = v94;
  v122[64] = 1;
  *&v122[65] = *v145;
  *&v122[68] = *&v145[3];
  v122[72] = v95;
  *&v122[73] = *v144;
  *&v122[76] = *&v144[3];
  *&v122[80] = v51;
  *&v122[88] = v53;
  *&v122[96] = v55;
  *&v122[104] = v57;
  v122[112] = 0;
  v137 = v122;
  v89 = v111;
  sub_2166A6F60(v80, v111, &qword_27CABB230);
  v114 = 0;
  v115 = v142;
  v116 = v84;
  v117 = v141;
  v118 = v93;
  v119 = v140;
  v120 = v107;
  v121 = v105;
  v138 = v89;
  v139 = &v114;
  sub_2168AAAA8();
  sub_2166997CC(v80, &qword_27CABB230);
  sub_2166997CC(v87, &qword_27CABB228);
  sub_2166997CC(v85, &qword_27CABB218);
  sub_2166997CC(v89, &qword_27CABB230);
  memcpy(v143, v122, sizeof(v143));
  sub_2166997CC(v143, &qword_27CABB238);
  sub_2166997CC(v88, &qword_27CABB228);
  return sub_2166997CC(v86, &qword_27CABB218);
}

uint64_t sub_216967574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFB0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFB8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for InlineUpsell();
  sub_2166A6F60(a1 + *(v17 + 44), v7, &qword_27CAB6DB0);
  v18 = v5[13];
  v19 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v7 + v18, 1, 1, v19);
  v20 = v5[14];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v5[15];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[5] = sub_2169678C8;
  v7[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  v23 = sub_217009CD4();
  *(inited + 32) = v23;
  v24 = sub_217009C94();
  *(inited + 33) = v24;
  v25 = sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v23)
  {
    v25 = sub_217009CC4();
  }

  sub_217009CC4();
  if (sub_217009CC4() != v24)
  {
    v25 = sub_217009CC4();
  }

  sub_2166DDCC0(v7, v13, &qword_27CABDFB0);
  v26 = &v13[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_2166DDCC0(v13, v16, &qword_27CABDFB8);
  sub_2166A6F60(v16, v10, &qword_27CABDFB8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFC8);
  sub_2166A6F60(v10, a2 + *(v27 + 48), &qword_27CABDFB8);
  sub_2166997CC(v16, &qword_27CABDFB8);
  return sub_2166997CC(v10, &qword_27CABDFB8);
}

uint64_t sub_2169678C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_21700ADF4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = sub_21700AD34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFD0);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2169679C4@<X0>(uint64_t a1@<X8>)
{
  sub_21700DF14();
  sub_217009D54();
  swift_getKeyPath();
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v2 = sub_21700ACF4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF98) + 36)) = v2;
  LOBYTE(v2) = sub_217009C74();
  sub_217007F24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFA0) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  LOBYTE(v2) = sub_217009CE4();
  sub_217007F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFA8);
  v21 = a1 + *(result + 36);
  *v21 = v2;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_216967BBC(uint64_t a1)
{
  result = sub_216967C14(qword_280E40FF8, type metadata accessor for InlineUpsellView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216967C14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216967C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216967CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216967D30()
{
  result = qword_27CABDF68;
  if (!qword_27CABDF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF60);
    sub_216967DE8();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF68);
  }

  return result;
}

unint64_t sub_216967DE8()
{
  result = qword_27CABDF70;
  if (!qword_27CABDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF78);
    sub_2167C4D74();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF70);
  }

  return result;
}

unint64_t sub_216967EA8()
{
  result = qword_27CABDFD8;
  if (!qword_27CABDFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF38);
    sub_216967F60();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDFD8);
  }

  return result;
}

unint64_t sub_216967F60()
{
  result = qword_27CABDFE0;
  if (!qword_27CABDFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF30);
    sub_2166D9530(&qword_27CABDFE8, &qword_27CABDFF0);
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDFE0);
  }

  return result;
}

uint64_t sub_216968044()
{
  v0 = swift_allocObject();
  sub_216969DE8();
  return v0;
}

uint64_t sub_2169680CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

void sub_216968140()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v28 = v3;
  v29 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  LOBYTE(v30[0]) = 0;
  sub_217007DA4();
  (*(v16 + 32))(v0 + v20, v19, v14);
  v21 = v28;
  v22 = (v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState);
  *v22 = 0u;
  v22[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter) = v21;
  sub_21696CBD8(v2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_2166997CC(v7, &qword_27CAB7088);
    v23 = v29;
    sub_216969428(v29, v30);

    sub_2166997CC(v2, &qword_27CAB7088);
    (*(v10 + 8))(v23, v8);
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);

    v25 = v29;
    sub_216968450(v29, v13, v30);

    sub_2166997CC(v2, &qword_27CAB7088);
    v26 = *(v10 + 8);
    v26(v25, v8);
    v26(v13, v8);
  }

  v24 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState;
  OUTLINED_FUNCTION_120_0();
  sub_216697EC4(v30, v0 + v24);
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216968450@<X0>(unsigned int (*a1)(char *, uint64_t)@<X0>, unsigned int (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  v143 = a1;
  v144 = a3;
  v119 = sub_2170070F4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_217007064();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v117 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2170073D4();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700BA44();
  v136 = *(v7 - 8);
  v137 = v7;
  MEMORY[0x28223BE20](v7);
  v133 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217006B84();
  v141 = *(v9 - 8);
  v142 = v9;
  MEMORY[0x28223BE20](v9);
  v135 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C1E4();
  v131 = *(v11 - 8);
  v132 = v11;
  MEMORY[0x28223BE20](v11);
  v130 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700C924();
  v139 = *(v13 - 8);
  v140 = v13;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700C084();
  v128 = *(v15 - 8);
  v129 = v15;
  MEMORY[0x28223BE20](v15);
  v126 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2170067A4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v116 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v120 = &v115 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v115 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v134 = &v115 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v115 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v115 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFF8);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v115 - v34;
  v36 = *(v33 + 56);
  v37 = v18[2];
  v37(&v115 - v34, v143, v17);
  v37(&v35[v36], a2, v17);
  v38 = v18[11];
  v39 = v38(v35, v17);
  if (v39 != *MEMORY[0x277D2A3B0])
  {
    v143 = v38;
    v52 = v35;
    if (v39 == *MEMORY[0x277D2A3B8])
    {
      v29 = v134;
      v37(v134, v35, v17);
      v53 = v18[12];
      v53(v29, v17);
      v54 = v143(&v35[v36], v17);
      if (v54 == *MEMORY[0x277D2A400])
      {
        v53(&v35[v36], v17);
        v56 = v136;
        v55 = v137;
        v57 = v133;
        (*(v136 + 32))(v133, v29, v137);
        v59 = v130;
        v58 = v131;
        v60 = &v35[v36];
        v61 = v132;
        (*(v131 + 32))(v130, v60, v132);
        sub_21696A54C(v59, v144);
        (*(v58 + 8))(v59, v61);
        (*(v56 + 8))(v57, v55);
      }

      else
      {
        if (v54 != *MEMORY[0x277D2A440])
        {
          v63 = v136;
          v62 = v137;
          goto LABEL_9;
        }

        v53(&v35[v36], v17);
        v77 = v136;
        v78 = v133;
        v79 = v29;
        v80 = v137;
        (*(v136 + 32))(v133, v79, v137);
        v82 = v139;
        v81 = v140;
        v83 = &v35[v36];
        v84 = v138;
        (*(v139 + 32))(v138, v83, v140);
        sub_21696A858(v84, v144);
        (*(v82 + 8))(v84, v81);
        (*(v77 + 8))(v78, v80);
      }

LABEL_32:
      v50 = v18[1];
      v51 = v35;
      return v50(v51, v17);
    }

    if (v39 == *MEMORY[0x277D2A3F8])
    {
      v68 = v17;
      v37(v31, v35, v17);
      v142 = v18;
      v69 = v18[12];
      v69(v31, v17);
      v70 = v143(&v35[v36], v17);
      if (v70 == *MEMORY[0x277D2A400])
      {
        v69(&v35[v36], v17);
        v72 = v128;
        v71 = v129;
        v73 = v126;
        (*(v128 + 32))(v126, v31, v129);
        v75 = v130;
        v74 = v131;
        v76 = v132;
        (*(v131 + 32))(v130, &v35[v36], v132);
        sub_216969FB4();
        (*(v74 + 8))(v75, v76);
        (*(v72 + 8))(v73, v71);
        return (v142[1])(v35, v68);
      }

      v92 = v142;
      if (v70 == *MEMORY[0x277D2A440])
      {
        v93 = v17;
        v69(&v35[v36], v17);
        v95 = v128;
        v94 = v129;
        v96 = v126;
        (*(v128 + 32))(v126, v31, v129);
        v98 = v139;
        v97 = v140;
        v99 = &v35[v36];
        v100 = v138;
        (*(v139 + 32))(v138, v99, v140);
        sub_216969FB4();
        (*(v98 + 8))(v100, v97);
        (*(v95 + 8))(v96, v94);
        return (v92[1])(v35, v93);
      }

      (*(v128 + 8))(v31, v129);
      goto LABEL_11;
    }

    if (v39 == *MEMORY[0x277D2A458])
    {
      v85 = v124;
      v47 = v52;
      v37(v124, v52, v17);
      v86 = v18[12];
      v86(v85, v17);
      if (v143(&v52[v36], v17) == *MEMORY[0x277D2A440])
      {
        v86(&v52[v36], v17);
        v87 = v125;
        v88 = v121;
        (*(v125 + 32))(v121, v85, v127);
        v90 = v138;
        v89 = v139;
        v91 = v140;
        (*(v139 + 32))(v138, &v47[v36], v140);
        sub_21696AB64(v90, v144);
        (*(v89 + 8))(v90, v91);
        (*(v87 + 8))(v88, v127);
        goto LABEL_4;
      }

      (*(v125 + 8))(v85, v127);
      v35 = v52;
LABEL_11:
      v66 = v144;
      *v144 = 0u;
      *(v66 + 1) = 0u;
      return sub_2166997CC(v35, &qword_27CABDFF8);
    }

    if (v39 == *MEMORY[0x277D2A3D8])
    {
      v101 = v120;
      v37(v120, v35, v17);
      v102 = v18[12];
      v102(v101, v17);
      if (v143(&v35[v36], v17) == *MEMORY[0x277D2A440])
      {
        v102(&v35[v36], v17);
        v103 = v122;
        v104 = v117;
        v105 = v123;
        (*(v122 + 32))(v117, v101, v123);
        v107 = v139;
        v106 = v140;
        v108 = &v35[v36];
        v109 = v138;
        (*(v139 + 32))(v138, v108, v140);
        sub_21696AE70(v109, v144);
LABEL_31:
        (*(v107 + 8))(v109, v106);
        (*(v103 + 8))(v104, v105);
        goto LABEL_32;
      }

      v64 = *(v122 + 8);
      v65 = v101;
      v114 = &v146;
    }

    else
    {
      v110 = v143;
      if (v39 != *MEMORY[0x277D2A3E0])
      {
        goto LABEL_11;
      }

      v111 = v116;
      v37(v116, v35, v17);
      v112 = v18[12];
      v112(v111, v17);
      if (v110(&v35[v36], v17) == *MEMORY[0x277D2A440])
      {
        v112(&v35[v36], v17);
        v103 = v118;
        v104 = v115;
        v105 = v119;
        (*(v118 + 32))(v115, v111, v119);
        v107 = v139;
        v106 = v140;
        v113 = &v35[v36];
        v109 = v138;
        (*(v139 + 32))(v138, v113, v140);
        sub_21696B17C(v109, v144);
        goto LABEL_31;
      }

      v64 = *(v118 + 8);
      v65 = v111;
      v114 = &v145;
    }

    v62 = *(v114 - 32);
    goto LABEL_10;
  }

  v37(v29, v35, v17);
  v40 = v18[12];
  v40(v29, v17);
  if (v38(&v35[v36], v17) != *MEMORY[0x277D2A440])
  {
    v63 = v141;
    v62 = v142;
LABEL_9:
    v64 = *(v63 + 8);
    v65 = v29;
LABEL_10:
    v64(v65, v62);
    goto LABEL_11;
  }

  v40(&v35[v36], v17);
  v42 = v141;
  v41 = v142;
  v43 = v35;
  v44 = v135;
  (*(v141 + 32))(v135, v29, v142);
  v45 = v139;
  v46 = &v43[v36];
  v47 = v43;
  v48 = v138;
  v49 = v140;
  (*(v139 + 32))(v138, v46, v140);
  sub_21696A240(v48, v144);
  (*(v45 + 8))(v48, v49);
  (*(v42 + 8))(v44, v41);
LABEL_4:
  v50 = v18[1];
  v51 = v47;
  return v50(v51, v17);
}

uint64_t sub_216969428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v39 = sub_2170070F4();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217007064();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170073D4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700C644();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C084();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700C924();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v52 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700BA44();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217006B84();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21700C1E4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170067A4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27, v58, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D2A400])
  {
    (*(v25 + 96))(v27, v24);
    (*(v21 + 32))(v23, v27, v20);
    sub_21696BD30();
    return (*(v21 + 8))(v23, v20);
  }

  if (v28 == *MEMORY[0x277D2A3B0])
  {
    (*(v25 + 96))(v27, v24);
    v30 = v57;
    (*(v57 + 32))(v19, v27, v17);
    sub_21696B750(a2);
    return (*(v30 + 8))(v19, v17);
  }

  if (v28 != *MEMORY[0x277D2A3B8])
  {
    if (v28 == *MEMORY[0x277D2A440])
    {
      (*(v25 + 96))(v27, v24);
      v36 = v52;
      v35 = v53;
      v31 = v54;
      (*(v53 + 32))(v52, v27, v54);
    }

    else if (v28 == *MEMORY[0x277D2A3F8])
    {
      (*(v25 + 96))(v27, v24);
      v36 = v49;
      v35 = v50;
      v31 = v51;
      (*(v50 + 32))(v49, v27, v51);
    }

    else
    {
      if (v28 != *MEMORY[0x277D2A430])
      {
        if (v28 == *MEMORY[0x277D2A458])
        {
          (*(v25 + 96))(v27, v24);
          v36 = v43;
          v35 = v44;
          v31 = v45;
          (*(v44 + 32))(v43, v27, v45);
          sub_21696BF94(a2);
        }

        else if (v28 == *MEMORY[0x277D2A3D8])
        {
          (*(v25 + 96))(v27, v24);
          v36 = v40;
          v35 = v41;
          v31 = v42;
          (*(v41 + 32))(v40, v27, v42);
          sub_21696C284(a2);
        }

        else
        {
          if (v28 != *MEMORY[0x277D2A3E0])
          {
            *a2 = 0u;
            *(a2 + 16) = 0u;
            return (*(v25 + 8))(v27, v24);
          }

          (*(v25 + 96))(v27, v24);
          v35 = v38;
          v36 = v37;
          v31 = v39;
          (*(v38 + 32))(v37, v27, v39);
          sub_21696C574(a2);
        }

        goto LABEL_14;
      }

      (*(v25 + 96))(v27, v24);
      v36 = v46;
      v35 = v47;
      v31 = v48;
      (*(v47 + 32))(v46, v27, v48);
    }

    sub_21696BD30();
LABEL_14:
    v33 = *(v35 + 8);
    v34 = v36;
    return v33(v34, v31);
  }

  (*(v25 + 96))(v27, v24);
  v32 = v55;
  v31 = v56;
  (*(v55 + 32))(v16, v27, v56);
  sub_21696BA40(a2);
  v33 = *(v32 + 8);
  v34 = v16;
  return v33(v34, v31);
}

void sub_216969DE8()
{
  OUTLINED_FUNCTION_49();
  v23 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  LOBYTE(v25[0]) = 0;
  sub_217007DA4();
  (*(v15 + 32))(v0 + v19, v18, v13);
  v20 = (v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState);
  *v20 = 0u;
  v20[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter) = v12;

  sub_21696B488(v8, v6, v4, v23, v24, v25);

  (*(*(v4 - 8) + 8))(v8, v4);
  (*(*(v6 - 8) + 8))(v10, v6);
  v21 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState;
  OUTLINED_FUNCTION_120_0();
  sub_216697EC4(v25, v0 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

void sub_216969FB4()
{
  OUTLINED_FUNCTION_49();
  v28 = v1;
  v29 = v2;
  v26 = v4;
  v27 = v3;
  v30 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  OUTLINED_FUNCTION_3_66();
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(v15 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_1_75(v19, v25);
  v21(v20);
  (*(v16 + 112))(v15, v16);
  (*(v17 + 8))(v0, v15);
  sub_21700C084();
  v26(0);
  v22 = sub_217006D84();

  sub_21700BAC4();
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v8 + 8))(v14, v6);
  sub_21696C8D4(v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE000);
  v24 = v30;
  v30[3] = v23;
  *v24 = v22;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21696A240@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_217006B84();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB6ED0, MEMORY[0x277D2A7C8]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE008);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696A54C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_21700BA44();
  sub_21700C1E4();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696A858@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_21700BA44();
  sub_21700C924();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696AB64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_2170073D4();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB8E28, MEMORY[0x277D2ADE8]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE018);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696AE70@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_217007064();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB8E20, MEMORY[0x277D2AB98]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE020);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696B17C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v16, v11);
  sub_2170070F4();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB6E10, MEMORY[0x277D2ABF0]);
  v17 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE028);
  v19 = v21;
  v21[3] = result;
  *v19 = v17;
  return result;
}

uint64_t sub_21696B488@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v25[1] = a5;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v25[0] = a1;
  v26 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = *(v6 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v15 = v14[5];
  v16 = v14[6];
  v17 = __swift_project_boxed_opaque_existential_1(v14 + 2, v15);
  v18 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  (*(v18 + 16))(v25 - v20, v19);
  (*(v16 + 112))(v15, v16);
  (*(v18 + 8))(v21, v15);
  v22 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v8 + 8))(v13, v7);
  sub_21696C8D4(v10);
  result = sub_21700BAF4();
  v24 = v26;
  v26[3] = result;
  *v24 = v22;
  return result;
}

uint64_t sub_21696B750@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v10 = v9[5];
  v11 = v9[6];
  v12 = __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14);
  (*(v11 + 112))(v10, v11);
  (*(v13 + 8))(v15, v10);
  sub_217006B84();
  sub_21681D34C(&qword_27CAB6ED0, MEMORY[0x277D2A7C8]);
  v16 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v3 + 8))(v8, v2);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE008);
  v18 = v20;
  v20[3] = result;
  *v18 = v16;
  return result;
}

uint64_t sub_21696BA40@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v10 = v9[5];
  v11 = v9[6];
  v12 = __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14);
  (*(v11 + 112))(v10, v11);
  (*(v13 + 8))(v15, v10);
  sub_21700BA44();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58]);
  v16 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v3 + 8))(v8, v2);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010);
  v18 = v20;
  v20[3] = result;
  *v18 = v16;
  return result;
}

void sub_21696BD30()
{
  OUTLINED_FUNCTION_49();
  v29 = v1;
  v30 = v2;
  v27[1] = v3;
  v27[2] = v4;
  v6 = v5;
  v28 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  OUTLINED_FUNCTION_3_66();
  v18 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v19 = *(v18 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = OUTLINED_FUNCTION_1_75(v21, v27[0]);
  v23(v22);
  (*(v17 + 112))(v18, v17);
  (*(v19 + 8))(v0, v18);
  v6(0);
  v24 = sub_217006D74();

  sub_21700BAC4();
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v10 + 8))(v16, v8);
  sub_21696C8D4(v14);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
  v26 = v28;
  v28[3] = v25;
  *v26 = v24;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21696BF94@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v10 = v9[5];
  v11 = v9[6];
  v12 = __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14);
  (*(v11 + 112))(v10, v11);
  (*(v13 + 8))(v15, v10);
  sub_2170073D4();
  sub_21681D34C(&qword_27CAB8E28, MEMORY[0x277D2ADE8]);
  v16 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v3 + 8))(v8, v2);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE018);
  v18 = v20;
  v20[3] = result;
  *v18 = v16;
  return result;
}

uint64_t sub_21696C284@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v10 = v9[5];
  v11 = v9[6];
  v12 = __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14);
  (*(v11 + 112))(v10, v11);
  (*(v13 + 8))(v15, v10);
  sub_217007064();
  sub_21681D34C(&qword_27CAB8E20, MEMORY[0x277D2AB98]);
  v16 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v3 + 8))(v8, v2);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE020);
  v18 = v20;
  v20[3] = result;
  *v18 = v16;
  return result;
}

uint64_t sub_21696C574@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v10 = v9[5];
  v11 = v9[6];
  v12 = __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14);
  (*(v11 + 112))(v10, v11);
  (*(v13 + 8))(v15, v10);
  sub_2170070F4();
  sub_21681D34C(&qword_27CAB6E10, MEMORY[0x277D2ABF0]);
  v16 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v3 + 8))(v8, v2);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE028);
  v18 = v20;
  v20[3] = result;
  *v18 = v16;
  return result;
}

uint64_t sub_21696C864()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_21696C8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  OUTLINED_FUNCTION_120_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DC4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_21696C9F4()
{
  v1 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState, &unk_27CABF7A0);
  return v0;
}

uint64_t sub_21696CA84()
{
  sub_21696C9F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AnyPlayableItemState()
{
  result = qword_280E3CBF0;
  if (!qword_280E3CBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21696CB30()
{
  sub_2166BF8FC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21696CBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21696CC48()
{
  result = qword_280E484A0;
  if (!qword_280E484A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E484A0);
  }

  return result;
}

uint64_t sub_21696CCD4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v39 = v5;
  (*(v5 + 16))(v8, v42, v41);
  v18 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  v37 = *(v18 + 24);
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v38 = v11 + 8;
  v22(v15, v9);
  if (v21)
  {
    v43 = v19;
    v44 = v21;
    v23 = v18;
    v24 = v45;
    sub_21700F364();
    v25 = v40;
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    v22(v17, v9);
    *v24 = v26;
    v24[1] = v28;
    sub_21700CE04();
    v29 = sub_21700CDB4();
    v31 = v30;
    (*(v39 + 8))(v42, v41);
    v22(v25, v9);
    result = (v22)(v17, v9);
    v33 = (v24 + *(v23 + 28));
    *v33 = v29;
    v33[1] = v31;
  }

  else
  {
    v34 = sub_21700E2E4();
    sub_21696D168(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = v18;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v39 + 8))(v42, v41);
    v22(v40, v9);
    return sub_2167B0250(v45 + v37);
  }

  return result;
}

uint64_t sub_21696D168(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21696D208(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE058);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21696D2E4()
{
  result = qword_27CABE040;
  if (!qword_27CABE040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89C0);
    sub_21696D398(&qword_27CAB9548, MEMORY[0x277D21D20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE040);
  }

  return result;
}

uint64_t sub_21696D398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21696D3E0(uint64_t a1)
{
  *(a1 + 8) = sub_21696D410();
  result = sub_21696D464();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21696D410()
{
  result = qword_27CABE048;
  if (!qword_27CABE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE048);
  }

  return result;
}

unint64_t sub_21696D464()
{
  result = qword_27CABE050;
  if (!qword_27CABE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE050);
  }

  return result;
}

unint64_t sub_21696D4CC()
{
  result = qword_280E3FE68[0];
  if (!qword_280E3FE68[0])
  {
    type metadata accessor for NewPlaylistAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3FE68);
  }

  return result;
}

uint64_t sub_21696D524()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_21700E1F4();
}

uint64_t sub_21696D638@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v73 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v68 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v66 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v24 = *(v73 + 16);
  v71 = v6;
  v25 = v6;
  v26 = v11;
  v24(v10, v74, v25);
  sub_21700D734();
  v72 = a1;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v13 + 8);
  v31 = v13 + 8;
  v30(v21, v26);
  if (!v29)
  {
    v51 = v26;
    v52 = v72;
    v32 = 25705;
    v53 = 0xE200000000000000;
LABEL_7:
    v54 = sub_21700E2E4();
    sub_21696DDA0(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v56 = v55;
    ContextLockup = type metadata accessor for SearchQueryContextLockup();
    *v56 = v32;
    v56[1] = v53;
    v56[2] = ContextLockup;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_1_76();
    v59(v58);
    v30(v52, v51);
    return sub_21669987C(v77, &qword_27CAB6D58);
  }

  v67 = v27;
  v32 = 1954047348;
  v33 = v70;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v30(v33, v26);
  if (!v36)
  {
    v51 = v26;
    v52 = v72;

    v53 = 0xE400000000000000;
    goto LABEL_7;
  }

  v37 = type metadata accessor for SearchQueryContextLockup();
  v75 = v67;
  v76 = v29;
  v38 = v77;
  sub_21700F364();
  v39 = (v38 + v37[6]);
  *v39 = v34;
  v39[1] = v36;
  v40 = v72;
  sub_21700CE04();
  v41 = sub_21700CD44();
  v30(v23, v26);
  *(v38 + v37[7]) = v41;
  sub_21700CE04();
  sub_21700CDB4();
  v42 = OUTLINED_FUNCTION_0_91();
  (v30)(v42);
  v43 = (v38 + v37[8]);
  *v43 = v31;
  v43[1] = v23;
  sub_21700CE04();
  sub_21700CDB4();
  v44 = OUTLINED_FUNCTION_0_91();
  (v30)(v44);
  v45 = (v38 + v37[9]);
  *v45 = v31;
  v45[1] = v23;
  sub_21700CE04();
  sub_21700CDB4();
  v46 = OUTLINED_FUNCTION_0_91();
  (v30)(v46);
  v47 = (v38 + v37[10]);
  *v47 = v31;
  v47[1] = v23;
  v48 = v68;
  sub_21700CE04();
  v49 = v69;
  sub_21700CCB4();
  v70 = v26;
  v30(v48, v26);
  v50 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_21669987C(v49, &qword_27CAB7D20);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0);
    v61 = sub_21700E384();
    v64 = OUTLINED_FUNCTION_1_76();
    v65(v64);
    v30(v40, v70);

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0);
  v61 = sub_21700D3D4();
  (*(*(v50 - 8) + 8))(v49, v50);
  if (!v61)
  {
    goto LABEL_10;
  }

  v62 = OUTLINED_FUNCTION_1_76();
  v63(v62);
  result = (v30)(v40, v70);
LABEL_11:
  *(v38 + v37[11]) = v61;
  return result;
}

uint64_t sub_21696DDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21696DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[12] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[13] = v5;
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for PresentSheetAction();
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[17] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[18] = v7;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_21700DFD4();
  v3[21] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[22] = v9;
  v3[23] = swift_task_alloc();
  sub_21700EA34();
  v3[24] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v3[25] = v11;
  v3[26] = v10;

  return MEMORY[0x2822009F8](sub_21696DFE4, v11, v10);
}

uint64_t sub_21696DFE4()
{
  if (qword_27CAB5AD0 != -1)
  {
    swift_once();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_27CABE060);
  v2 = sub_217007C84();
  v3 = sub_21700ED64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "Performing a subscription purchase action", v4, 2u);
    MEMORY[0x21CEA1440](v4, -1, -1);
  }

  sub_216685F4C(0, &qword_27CABE078);
  v0[27] = type metadata accessor for SubscriptionPurchaseAction();
  sub_21700DF14();
  v0[28] = sub_2169130B0();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216685F4C(0, &qword_280E29D68);
  sub_21700D4B4();
  v5 = v0[7];
  v0[29] = [v5 ams_activeiTunesAccount];

  sub_21700E094();
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700E094();
  v6 = v0[8];
  v0[30] = v6;

  return MEMORY[0x2822009F8](sub_21696E214, v6, 0);
}

uint64_t sub_21696E238()
{
  v25 = *(v0 + 232);
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);
  v7 = *(v0 + 88);
  v28 = *(v0 + 96);
  v29 = *(v0 + 112);
  v8 = *(v0 + 80);
  v24 = *(v0 + 224);
  v23 = sub_21700DF34();
  (*(v4 + 16))(v2, v3, v5);
  v9 = *(v8 + *(v1 + 24));
  v10 = *(v8 + *(v1 + 28));
  v11 = objc_allocWithZone(type metadata accessor for SubscriptionPurchaseViewModel());
  sub_21700DF14();

  v12 = v25;
  sub_21700DF14();
  v13 = sub_216BA24CC(v24, v23, v2, v7, v25, v9, v10);
  *(v0 + 248) = v13;
  *(v6 + *(v26 + 20)) = v13;
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  v14 = sub_21700D284();
  (*(*(v14 - 8) + 16))(v6, v8, v14);
  *(v0 + 40) = v26;
  *(v0 + 48) = sub_21696EA08(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_21696EA50(v6, boxed_opaque_existential_1);
  (*(v27 + 104))(v29, *MEMORY[0x277D21E18], v28);
  v16 = v13;
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_21696E49C;
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 72);

  return MEMORY[0x28217F468](v21, v0 + 16, v19, v20, v18);
}

uint64_t sub_21696E49C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_21696E73C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_21696E61C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21696E61C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[23];
  v5 = v0[22];
  v6 = v0[20];
  v12 = v0[21];
  v7 = v0[18];
  v11 = v0[17];
  v8 = v0[16];

  sub_21696EAB4(v8);
  (*(v7 + 8))(v6, v11);
  (*(v5 + 8))(v4, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21696E73C()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[23];
  v5 = v0[22];
  v6 = v0[20];
  v12 = v0[21];
  v7 = v0[18];
  v11 = v0[17];
  v8 = v0[16];

  sub_21696EAB4(v8);
  (*(v7 + 8))(v6, v11);
  (*(v5 + 8))(v4, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v9 = v0[1];

  return v9();
}

uint64_t sub_21696E864()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE060);
  __swift_project_value_buffer(v0, qword_27CABE060);
  return sub_217007C94();
}

uint64_t sub_21696E8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_21696DDF8(a1, a2, a3);
}

unint64_t sub_21696E994(uint64_t a1)
{
  result = sub_2166DA450();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21696EA08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21696EA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentSheetAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21696EAB4(uint64_t a1)
{
  v2 = type metadata accessor for PresentSheetAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI22ReplayYearListResponseV4ItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21696EB28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21696EB68(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21696EC78@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_216681B04(v6, &v14 - v9, a1);
  if (swift_getEnumCaseMultiPayload())
  {
    v11 = a2(0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
    return sub_216697664(v10, a1);
  }

  else
  {
    sub_2169705F0(v10, a3);
    v13 = a2(0);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  }
}

uint64_t sub_21696ED8C(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = type metadata accessor for MappedReplayYearModel(0);
  OUTLINED_FUNCTION_36(v4);
  v3[118] = swift_task_alloc();
  v5 = type metadata accessor for ReplayYearModel(0);
  OUTLINED_FUNCTION_36(v5);
  v3[119] = swift_task_alloc();
  v6 = type metadata accessor for OpaqueReplayYearIntent();
  v3[120] = v6;
  OUTLINED_FUNCTION_36(v6);
  v3[121] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088);
  OUTLINED_FUNCTION_36(v7);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090);
  OUTLINED_FUNCTION_36(v8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  sub_21700EA34();
  v3[126] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v3[127] = v10;
  v3[128] = v9;

  return MEMORY[0x2822009F8](sub_21696EF2C, v10, v9);
}

uint64_t sub_21696EF2C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 1032) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 928);
    if (*(v2 + *(type metadata accessor for SelectReplayYearAction(0) + 20) + 8))
    {
      v3 = *(v0 + 984);
      v4 = *(v0 + 936);
      *(v0 + 1040) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
      MEMORY[0x21CE9BEE0]();
      sub_216681B04(v4, v0 + 16, &qword_27CABA6D8);
      swift_task_alloc();
      v5 = OUTLINED_FUNCTION_110();
      v6 = type metadata accessor for ReplayModel(v5);
      *(v0 + 1048) = v6;
      *v4 = v6;
      v7 = sub_2169705A8(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
      *(v0 + 1056) = v7;
      v4[1] = v7;
      swift_getKeyPath();

      v8 = swift_task_alloc();
      *v8 = v6;
      v8[1] = v7;
      swift_getKeyPath();

      sub_217007DE4();

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
      *(v0 + 1064) = v9;
      if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
      {
        v10 = *(v0 + 984);
        v11 = &qword_27CABE088;
      }

      else
      {
        v16 = *(v0 + 1000);
        v17 = *(v0 + 984);
        OUTLINED_FUNCTION_2_61();
        sub_21696EC78(&qword_27CABE0A0, type metadata accessor for MappedReplayModel, v16);
        sub_216697664(v17, &qword_27CABE0A0);
        v18 = type metadata accessor for MappedReplayModel(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
        v20 = *(v0 + 1000);
        if (EnumTagSinglePayload != 1)
        {
          v21 = *(v0 + 928);
          sub_21700DF14();
          OUTLINED_FUNCTION_4_47();
          sub_21697013C(v20, v22);
          *(swift_task_alloc() + 16) = v21;
          sub_216C2E88C();

          goto LABEL_14;
        }

        v11 = &unk_27CABE090;
        v10 = *(v0 + 1000);
      }

      sub_216697664(v10, v11);
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
LABEL_14:
      v23 = *(v0 + 968);
      v24 = *(v0 + 960);
      sub_21700B0D4();
      sub_216697664(v0 + 16, &qword_27CABA6D8);
      sub_216FFA31C();
      v25 = type metadata accessor for AnyReplayYearRequest(0);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v25);
      *(v0 + 904) = v24;
      *(v0 + 912) = sub_2169705A8(&qword_27CABE0A8, type metadata accessor for OpaqueReplayYearIntent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 880));
      sub_216970194(v23, boxed_opaque_existential_1);
      v27 = swift_task_alloc();
      *(v0 + 1072) = v27;
      *v27 = v0;
      v27[1] = sub_21696F450;

      return sub_216D0C120();
    }

    sub_21696FD2C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {

    sub_21696FD2C();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_3_67();

  OUTLINED_FUNCTION_3();

  return v14();
}

uint64_t sub_21696F450()
{
  v2 = *v1;
  (*v1)[135] = v0;

  if (v0)
  {
    sub_216697664((v2 + 110), &qword_27CABE0B0);
    v3 = v2[128];
    v4 = v2[127];
    v5 = sub_21696F9E4;
  }

  else
  {
    sub_21697013C(v2[119], type metadata accessor for ReplayYearModel);
    sub_216697664((v2 + 110), &qword_27CABE0B0);
    v3 = v2[128];
    v4 = v2[127];
    v5 = sub_21696F5B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21696F5B8()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 976);

  v5 = swift_task_alloc();
  *v5 = v3;
  v5[1] = v2;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = v3;
  v6[1] = v2;
  swift_getKeyPath();

  sub_217007DE4();

  if (__swift_getEnumTagSinglePayload(v4, 1, v1) == 1)
  {
    v7 = *(v0 + 976);
    v8 = *(v0 + 968);

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v8, v9);
    sub_216697664(v0 + 160, &qword_27CABA690);
    v10 = &qword_27CABE088;
LABEL_5:
    v16 = v7;
    goto LABEL_6;
  }

  v11 = *(v0 + 992);
  v12 = *(v0 + 976);
  OUTLINED_FUNCTION_2_61();
  sub_21696EC78(&qword_27CABE0A0, type metadata accessor for MappedReplayModel, v11);
  sub_216697664(v12, &qword_27CABE0A0);
  v13 = type metadata accessor for MappedReplayModel(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    v7 = *(v0 + 992);
    v14 = *(v0 + 968);

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v14, v15);
    sub_216697664(v0 + 160, &qword_27CABA690);
    v10 = &unk_27CABE090;
    goto LABEL_5;
  }

  v22 = *(v0 + 992);
  v23 = *(v0 + 944);
  sub_216970194(v22 + *(v13 + 20), v23);
  OUTLINED_FUNCTION_4_47();
  sub_21697013C(v22, v24);
  v26 = *v23;
  v25 = v23[1];
  v27 = v23[2];
  v28 = v23[3];
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21697013C(v23, type metadata accessor for MappedReplayYearModel);
  sub_216BF47DC(v26, v25, v27, v28, 0, 0, (v0 + 656));

  v29 = *(v0 + 968);
  if (*(v0 + 664))
  {
    memcpy((v0 + 544), (v0 + 656), 0x70uLL);
    sub_216970008(v0 + 544, v0 + 768);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98);
    sub_21700B0D4();

    sub_216970064(v0 + 544);
    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v29, v30);
    v10 = &qword_27CABA690;
    v16 = v0 + 160;
  }

  else
  {

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v29, v31);
    sub_216697664(v0 + 160, &qword_27CABA690);
    v10 = &unk_27CABA698;
    v16 = v0 + 656;
  }

LABEL_6:
  sub_216697664(v16, v10);
  OUTLINED_FUNCTION_3_67();
  v17 = *(v0 + 920);
  v18 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v19 + 104))(v17, v18);

  OUTLINED_FUNCTION_3();

  return v20();
}

uint64_t sub_21696F9E4()
{
  v1 = *(v0 + 968);

  sub_216681B04(v0 + 160, v0 + 416, &qword_27CABA690);
  sub_21700B0D4();
  swift_willThrow();

  OUTLINED_FUNCTION_0_92();
  sub_21697013C(v1, v2);
  sub_216697664(v0 + 160, &qword_27CABA690);
  OUTLINED_FUNCTION_3_67();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_21696FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = (a2 + *(type metadata accessor for SelectReplayYearAction(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  if (v2 == v5 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21700F7D4();
  }

  sub_21700DF14();

  return v8 & 1;
}

uint64_t sub_21696FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216970194(a1, a3);
  *(a3 + *(type metadata accessor for ReplaceReplayYearUpdate() + 20)) = a2;
}

uint64_t sub_21696FC10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2167AF644;

  return sub_21696ED8C(a1, a2);
}

unint64_t sub_21696FCB8(uint64_t a1)
{
  result = sub_216881080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21696FD2C()
{
  result = qword_27CABE098;
  if (!qword_27CABE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE098);
  }

  return result;
}

uint64_t sub_21696FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_216681B04(a1, v8, &qword_27CABE0B8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CABE0B8);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_2169705F0(v8, v15);
    sub_2169705F0(v15, v12);
    sub_2169700D8(v2, &v12[*(v9 + 20)]);
    sub_216970194(v12, a2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0);
    *(a2 + v17[9]) = 0;
    *(a2 + v17[10]) = 0;
    *(a2 + v17[11]) = 0;
    *(a2 + v17[12]) = 0;
    return sub_21697013C(v12, type metadata accessor for ReplayModel);
  }
}

uint64_t sub_2169700D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayYearModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697013C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216970194(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ReplaceReplayYearUpdate()
{
  result = qword_27CABE0C8;
  if (!qword_27CABE0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216970264()
{
  type metadata accessor for ReplayYearModel(319);
  if (v0 <= 0x3F)
  {
    sub_2169702E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2169702E8()
{
  if (!qword_27CABE0D8)
  {
    type metadata accessor for ReplayModel(255);
    sub_2169705A8(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
    updated = type metadata accessor for PageUpdateMappingCoordinator();
    if (!v1)
    {
      atomic_store(updated, &qword_27CABE0D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SelectReplayYearImplementation.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21697045C()
{
  result = qword_27CABE0E0;
  if (!qword_27CABE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE0E0);
  }

  return result;
}

uint64_t sub_2169704F8(uint64_t a1)
{
  result = sub_2169705A8(&qword_27CABE0E8, type metadata accessor for ReplaceReplayYearUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216970550(uint64_t a1)
{
  result = sub_2169705A8(&qword_27CABE0F0, type metadata accessor for ReplaceReplayYearUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169705A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169705F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_216970674@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v18 = *(v41 + 16);
  v39 = v4;
  v18(v8, v42, v4);
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v38 = v11 + 8;
  v22(v14, v9);
  if (v21)
  {
    v23 = type metadata accessor for LinkComponentModel();
    v43 = v19;
    v44 = v21;
    v24 = v45;
    sub_21700F364();
    v25 = v40;
    sub_21700CE04();
    v26 = v42;
    sub_21700D2E4();
    v22(v17, v9);
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v37 = v28;
    (*(v41 + 8))(v26, v39);
    v22(v25, v9);
    result = (v22)(v17, v9);
    v30 = (v24 + *(v23 + 28));
    v31 = v37;
    *v30 = v27;
    v30[1] = v31;
  }

  else
  {
    v32 = sub_21700E2E4();
    sub_2166D4F74(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v34 = v33;
    v35 = type metadata accessor for LinkComponentModel();
    *v34 = 25705;
    v34[1] = 0xE200000000000000;
    v34[2] = v35;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v41 + 8))(v42, v39);
    v22(v40, v9);
    return sub_2167B0250(v45);
  }

  return result;
}

uint64_t sub_216970AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Link(0);
  if (*(a1 + *(v4 + 20) + 8))
  {
    v5 = v4;
    v6 = type metadata accessor for LinkComponentModel();
    sub_21700DF14();
    sub_21700F364();
    v7 = (a1 + *(v5 + 24));
    v9 = *v7;
    v8 = v7[1];
    sub_21700DF14();
    sub_216970C44(a1);
    v10 = (a2 + *(v6 + 28));
    *v10 = v9;
    v10[1] = v8;
    v11 = a2 + *(v6 + 24);
    v12 = sub_21700D7A4();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58);
    sub_2167880BC();
    swift_allocError();
    *v15 = xmmword_217014E10;
    *(v15 + 16) = v14;
    swift_willThrow();
    return sub_216970C44(a1);
  }
}

uint64_t sub_216970C44(uint64_t a1)
{
  v2 = type metadata accessor for Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216970CA0()
{
  v167 = type metadata accessor for GradientListRowModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v168 = v1;
  OUTLINED_FUNCTION_4_1();
  v165 = type metadata accessor for VerticalArtworkListItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v166 = v3;
  OUTLINED_FUNCTION_4_1();
  v163 = type metadata accessor for Spacer();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v164 = v5;
  OUTLINED_FUNCTION_4_1();
  v161 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v162 = v7;
  OUTLINED_FUNCTION_4_1();
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v160 = v9;
  v10 = OUTLINED_FUNCTION_4_1();
  v157 = type metadata accessor for SocialProfileEditorHeaderLockup(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v158 = v12;
  OUTLINED_FUNCTION_4_1();
  v155 = type metadata accessor for SocialProfileDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v156 = v14;
  OUTLINED_FUNCTION_4_1();
  v153 = type metadata accessor for SocialOnboardingWelcomePageLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v154 = v16;
  OUTLINED_FUNCTION_4_1();
  v151 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v152 = v18;
  OUTLINED_FUNCTION_4_1();
  v149 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v150 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  v22 = OUTLINED_FUNCTION_1_77(v21, &v176);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = type metadata accessor for SocialProfileHorizontalLockupSection();
  v25 = OUTLINED_FUNCTION_1_77(v24, &v173);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v26);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  v28 = OUTLINED_FUNCTION_1_77(FriendsPageSectionLockup, &v174);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  v31 = OUTLINED_FUNCTION_1_77(v30, &v171);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v32);
  v33 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  v34 = OUTLINED_FUNCTION_1_77(v33, &v170);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v35);
  v36 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v37 = OUTLINED_FUNCTION_1_77(v36, &v169);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v38);
  v39 = type metadata accessor for ListSection();
  v40 = OUTLINED_FUNCTION_1_77(v39, &v168);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v42 = OUTLINED_FUNCTION_8_0(v41);
  v43 = type metadata accessor for MappedSearchResultsList(v42);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v44);
  ContextLockup = type metadata accessor for SearchQueryContextLockup();
  v46 = OUTLINED_FUNCTION_1_77(ContextLockup, &v165);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v47);
  v48 = type metadata accessor for PopoverSelector();
  v49 = OUTLINED_FUNCTION_1_77(v48, &v162);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  v142 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
  v52 = OUTLINED_FUNCTION_1_77(v51, &FriendsButtonComponentModel);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_0(&v134[-v53]);
  v54 = type metadata accessor for ParagraphComponentModel();
  v55 = OUTLINED_FUNCTION_1_77(v54, &v160);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v56);
  v57 = type metadata accessor for LandingUpsell();
  v58 = OUTLINED_FUNCTION_1_77(v57, &v156);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v59);
  v60 = type metadata accessor for InlineUpsell();
  v61 = OUTLINED_FUNCTION_1_77(v60, &v154);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = type metadata accessor for GroupedTextListLockup();
  v64 = OUTLINED_FUNCTION_1_77(v63, &v152);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v65);
  v66 = type metadata accessor for EmptyStateLockup();
  v67 = OUTLINED_FUNCTION_1_77(v66, &v150);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v68);
  v69 = type metadata accessor for CuratorDetailHeaderComponentModel();
  v70 = OUTLINED_FUNCTION_1_77(v69, v148);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v71);
  v72 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7();
  v76 = v75 - v74;
  v77 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7();
  v81 = v80 - v79;
  v82 = type metadata accessor for AnimatedTextListItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_7();
  v86 = v85 - v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v87);
  v89 = &v134[-v88];
  type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7();
  v93 = v92 - v91;
  sub_2169728B8(v169, v92 - v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v115 = &qword_27CAB7938;
      sub_216972A6C(v93, v89, &qword_27CAB7938);
      sub_2169F16FC();
      v95 = v119;
      v118 = v89;
      goto LABEL_33;
    case 2u:
      v99 = type metadata accessor for AnimatedTextListItem;
      sub_2169729C8(v93, v86, type metadata accessor for AnimatedTextListItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v82;
      v100 = &qword_27CABE138;
      v101 = type metadata accessor for AnimatedTextListItem;
      goto LABEL_66;
    case 3u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F172C();
      goto LABEL_70;
    case 4u:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB1B0;
      v114 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v114);
      v98 = qword_280E3D9E8;
      goto LABEL_57;
    case 5u:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB7D0;
      v123 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v123);
      v98 = &qword_280E457D8;
      goto LABEL_57;
    case 6u:
      sub_2169729C8(v93, v81, type metadata accessor for MappedArtistLatestReleaseAndTopSongs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v77;
      *(v95 + 64) = sub_216972A24(&qword_27CABE130, type metadata accessor for MappedArtistLatestReleaseAndTopSongs);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v95 + 32));
      v126 = v81;
      v127 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs;
      goto LABEL_68;
    case 7u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1874();
      goto LABEL_70;
    case 8u:
      v99 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      sub_2169729C8(v93, v76, type metadata accessor for ContainerDetailTracklistFooterLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v72;
      *(v95 + 64) = sub_216972A24(&qword_280E2E290, type metadata accessor for ContainerDetailTracklistFooterLockup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v95 + 32));
      v126 = v76;
      goto LABEL_67;
    case 9u:
      v99 = type metadata accessor for CuratorDetailHeaderComponentModel;
      v86 = v135;
      sub_2169729C8(v93, v135, type metadata accessor for CuratorDetailHeaderComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, v148);
      v100 = &unk_280E2F350;
      v101 = type metadata accessor for CuratorDetailHeaderComponentModel;
      goto LABEL_66;
    case 0xAu:
      v99 = type metadata accessor for EmptyStateLockup;
      v86 = v136;
      sub_2169729C8(v93, v136, type metadata accessor for EmptyStateLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v150);
      v100 = &unk_280E41380;
      v101 = type metadata accessor for EmptyStateLockup;
      goto LABEL_66;
    case 0xBu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1AA8();
      goto LABEL_70;
    case 0xCu:
      v99 = type metadata accessor for GroupedTextListLockup;
      v86 = v137;
      sub_2169729C8(v93, v137, type metadata accessor for GroupedTextListLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v152);
      v100 = &unk_280E3A888;
      v101 = type metadata accessor for GroupedTextListLockup;
      goto LABEL_66;
    case 0xDu:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CAB9728;
      v124 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v124);
      v98 = &qword_280E45808;
      goto LABEL_57;
    case 0xEu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1AD8();
      goto LABEL_70;
    case 0xFu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1B08();
      goto LABEL_70;
    case 0x10u:
      v99 = type metadata accessor for InlineUpsell;
      v86 = v138;
      sub_2169729C8(v93, v138, type metadata accessor for InlineUpsell);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v154);
      v100 = &unk_280E44CE0;
      v101 = type metadata accessor for InlineUpsell;
      goto LABEL_66;
    case 0x11u:
      v99 = type metadata accessor for LandingUpsell;
      v86 = v139;
      sub_2169729C8(v93, v139, type metadata accessor for LandingUpsell);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v156);
      v100 = &unk_280E43EB0;
      v101 = type metadata accessor for LandingUpsell;
      goto LABEL_66;
    case 0x12u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1B38();
      goto LABEL_70;
    case 0x13u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1C80();
      goto LABEL_70;
    case 0x14u:
      v120 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v120, v121, &v167);
      sub_2169F1EB8();
      v95 = v122;
      v107 = type metadata accessor for ListSection;
      goto LABEL_47;
    case 0x15u:
      v99 = type metadata accessor for GradientListRowModel;
      v86 = v168;
      sub_2169729C8(v93, v168, type metadata accessor for GradientListRowModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v167;
      v100 = &unk_27CABE108;
      v101 = type metadata accessor for GradientListRowModel;
      goto LABEL_66;
    case 0x16u:
      v99 = type metadata accessor for ParagraphComponentModel;
      v86 = v141;
      sub_2169729C8(v93, v141, type metadata accessor for ParagraphComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v160);
      v100 = &unk_280E37B38;
      v101 = type metadata accessor for ParagraphComponentModel;
      goto LABEL_66;
    case 0x17u:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB7C8;
      v132 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v132);
      v98 = &qword_27CABE120;
      goto LABEL_57;
    case 0x18u:
      v115 = &qword_27CAB7940;
      v116 = v140;
      sub_216972A6C(v93, v140, &qword_27CAB7940);
      sub_2169F1CB0();
      v95 = v117;
      v118 = v116;
LABEL_33:
      sub_216697664(v118, v115);
      return v95;
    case 0x19u:
      v99 = type metadata accessor for PopoverSelector;
      v86 = v142;
      sub_2169729C8(v93, v142, type metadata accessor for PopoverSelector);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v162);
      v100 = &unk_27CAB9C38;
      v101 = type metadata accessor for PopoverSelector;
      goto LABEL_66;
    case 0x1Au:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1CE0();
      goto LABEL_70;
    case 0x1Bu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1E58();
      goto LABEL_70;
    case 0x1Cu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1D10();
      goto LABEL_70;
    case 0x1Du:
      v99 = type metadata accessor for SearchQueryContextLockup;
      v86 = v143;
      sub_2169729C8(v93, v143, type metadata accessor for SearchQueryContextLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v165);
      v100 = &unk_280E36308;
      v101 = type metadata accessor for SearchQueryContextLockup;
      goto LABEL_66;
    case 0x1Eu:
      v128 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v128, v129, &v164);
      sub_2169F1E88();
      v95 = v130;
      v107 = type metadata accessor for MappedSearchResultsList;
      goto LABEL_47;
    case 0x1Fu:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2000();
      goto LABEL_70;
    case 0x20u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2030();
      goto LABEL_70;
    case 0x21u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2178();
      goto LABEL_70;
    case 0x22u:
      v99 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      v86 = v144;
      sub_2169729C8(v93, v144, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v169);
      v100 = &unk_280E2CAC0;
      v101 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      goto LABEL_66;
    case 0x23u:
      v99 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      v86 = v145;
      sub_2169729C8(v93, v145, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v170);
      v100 = &unk_280E2D280;
      v101 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      goto LABEL_66;
    case 0x24u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F22C0();
      goto LABEL_70;
    case 0x25u:
      v99 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      v86 = v152;
      sub_2169729C8(v93, v152, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v151;
      v100 = &unk_280E2D5F8;
      v101 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      goto LABEL_66;
    case 0x26u:
      v99 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      v86 = v154;
      sub_2169729C8(v93, v154, type metadata accessor for SocialOnboardingWelcomePageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v153;
      v100 = &unk_280E2EF10;
      v101 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      goto LABEL_66;
    case 0x27u:
      v99 = type metadata accessor for SocialProfileDetailHeaderLockup;
      v86 = v156;
      sub_2169729C8(v93, v156, type metadata accessor for SocialProfileDetailHeaderLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v155;
      v100 = &unk_280E2FEC8;
      v101 = type metadata accessor for SocialProfileDetailHeaderLockup;
      goto LABEL_66;
    case 0x28u:
      v99 = type metadata accessor for SocialProfileEditorHeaderLockup;
      v86 = v158;
      sub_2169729C8(v93, v158, type metadata accessor for SocialProfileEditorHeaderLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v157;
      v100 = &unk_280E2FE08;
      v101 = type metadata accessor for SocialProfileEditorHeaderLockup;
      goto LABEL_66;
    case 0x29u:
      v99 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      v86 = v160;
      sub_2169729C8(v93, v160, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = FriendsButtonComponentModel;
      v100 = &unk_280E2CDC8;
      v101 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      goto LABEL_66;
    case 0x2Au:
      v99 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      v86 = v162;
      sub_2169729C8(v93, v162, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v161;
      v100 = &unk_280E2CFC0;
      v101 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      goto LABEL_66;
    case 0x2Bu:
      v99 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      v86 = v150;
      sub_2169729C8(v93, v150, type metadata accessor for SocialProfileFollowRequestResponseHeader);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v149;
      v100 = &unk_280E2D540;
      v101 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      goto LABEL_66;
    case 0x2Cu:
      v104 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v104, v105, &v175);
      sub_2169F2468();
      v95 = v106;
      v107 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
      goto LABEL_47;
    case 0x2Du:
      OUTLINED_FUNCTION_7_47();
      sub_2169F22F0();
      goto LABEL_70;
    case 0x2Eu:
      v99 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      v86 = v146;
      sub_2169729C8(v93, v146, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v171);
      v100 = &unk_280E2D6A8;
      v101 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      goto LABEL_66;
    case 0x2Fu:
      v99 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      v86 = v147;
      sub_2169729C8(v93, v147, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v95, &v174);
      v100 = &unk_280E2CE80;
      v101 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      goto LABEL_66;
    case 0x30u:
      v108 = OUTLINED_FUNCTION_10_40();
      OUTLINED_FUNCTION_11_35(v108, v109, &v172);
      sub_2169F2320();
      v95 = v110;
      v107 = type metadata accessor for SocialProfileHorizontalLockupSection;
LABEL_47:
      sub_21697291C(v81, v107);
      return v95;
    case 0x31u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = &type metadata for MappedSongDetailList;
      *(v95 + 64) = sub_216972974();
      OUTLINED_FUNCTION_5_46();
      v112 = swift_allocObject();
      *(v95 + 32) = v112;
      v113 = *(v93 + 16);
      *(v112 + 16) = *v93;
      *(v112 + 32) = v113;
      *(v112 + 48) = *(v93 + 32);
      *(v112 + 64) = *(v93 + 48);
      return v95;
    case 0x32u:
      v99 = type metadata accessor for Spacer;
      v86 = v164;
      sub_2169729C8(v93, v164, type metadata accessor for Spacer);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v163;
      v100 = &unk_280E2C268;
      v101 = type metadata accessor for Spacer;
      goto LABEL_66;
    case 0x33u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F28D0();
      goto LABEL_70;
    case 0x34u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F25B0();
      goto LABEL_70;
    case 0x35u:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CAB97E0;
      v102 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v102);
      v98 = &unk_280E45870;
      goto LABEL_57;
    case 0x36u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F25E0();
      goto LABEL_70;
    case 0x37u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2728();
      goto LABEL_70;
    case 0x38u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F1E88();
      goto LABEL_70;
    case 0x39u:
      OUTLINED_FUNCTION_7_47();
      sub_2169F2870();
      goto LABEL_70;
    case 0x3Au:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB7B0;
      v111 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v111);
      v98 = &unk_27CABE118;
      goto LABEL_57;
    case 0x3Bu:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB7A8;
      v131 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v131);
      v98 = &qword_280E457C0;
      goto LABEL_57;
    case 0x3Cu:
      v99 = type metadata accessor for VerticalArtworkListItem;
      v86 = v166;
      sub_2169729C8(v93, v166, type metadata accessor for VerticalArtworkListItem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      *(v95 + 56) = v165;
      v100 = &unk_27CABE110;
      v101 = type metadata accessor for VerticalArtworkListItem;
LABEL_66:
      *(v95 + 64) = sub_216972A24(v100, v101);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v95 + 32));
      v126 = v86;
LABEL_67:
      v127 = v99;
LABEL_68:
      sub_2169729C8(v126, boxed_opaque_existential_1, v127);
      break;
    case 0x3Du:
      OUTLINED_FUNCTION_7_47();
      sub_2169F28A0();
LABEL_70:
      v95 = v103;

      break;
    default:
      v94 = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      OUTLINED_FUNCTION_5_46();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_217013DA0;
      v96 = &qword_27CABB418;
      v97 = OUTLINED_FUNCTION_8();
      *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v97);
      v98 = &unk_27CABE140;
LABEL_57:
      *(v95 + 64) = sub_2166D9530(v98, v96);
      *(v95 + 32) = v94;
      break;
  }

  return v95;
}

uint64_t sub_2169728B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedSection.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697291C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216972974()
{
  result = qword_27CABE128;
  if (!qword_27CABE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE128);
  }

  return result;
}

uint64_t sub_2169729C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216972A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216972A6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216972AC8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE148);
  __swift_project_value_buffer(v0, qword_27CABE148);
  return sub_217007C94();
}

id sub_216972B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_process] = a1;
  *&v3[OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_accounts] = a2;
  v8 = OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_bag;
  v9 = sub_21700DFD4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a3, v9);
  return v11;
}

uint64_t sub_216972C3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216685F4C(0, &qword_280E29AF8);
  v13 = sub_21700F124();
  v14 = *(v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_process);
  v15 = *(v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_accounts);
  (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtC7MusicUI28JSCampaignAttributionService_bag, v7);
  v19 = a1;
  v20 = a2;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = ObjectType;
  v16 = sub_21700F134();

  (*(v9 + 8))(v12, v7);
  return v16;
}

char *sub_216972DB4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v48 = a1;
  v49 = a7;
  v51 = a5;
  v52 = a6;
  v45 = a4;
  v56 = a2;
  v57 = a3;
  v54 = sub_21700DFD4();
  v46 = *(v54 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700E314();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v58 = sub_217005EF4();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v58);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  sub_21700D904();
  v55 = MEMORY[0x21CE9E710]();
  if (v55)
  {
    sub_217005ED4();
    if (__swift_getEnumTagSinglePayload(v13, 1, v58) == 1)
    {
      sub_2166997CC(v13, &qword_27CABA820);
      v20 = sub_21700E0D4();
      sub_216973E30();
      swift_allocError();
      sub_21700E0A4();
      swift_willThrow();
    }

    else
    {
      v39 = v9;
      v40 = v8;
      v21 = v14;
      v42 = *(v14 + 32);
      v22 = v58;
      v42(v19, v13, v58);
      v43 = v19;
      v44 = v21;
      (*(v21 + 16))(v16, v19, v22);
      v23 = v46;
      (*(v46 + 16))(v53, v45, v54);
      v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v25 = (v15 + *(v23 + 80) + v24) & ~*(v23 + 80);
      v45 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      v42(&v20[v24], v16, v58);
      (*(v23 + 32))(&v20[v25], v53, v54);
      v29 = v51;
      v28 = v52;
      *&v20[v45] = v51;
      *&v20[v41] = v28;
      v30 = &v20[v26];
      v31 = v57;
      *v30 = v56;
      *(v30 + 1) = v31;
      *&v20[v27] = v55;
      v32 = v48;
      *&v20[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v49;
      v33 = v32;
      v34 = v29;

      sub_21700DF14();

      v35 = v50;
      v36 = v47;
      sub_21700E2F4();
      if (!v36)
      {
        v20 = sub_21700E304();

        (*(v39 + 8))(v35, v40);
        (*(v44 + 8))(v43, v58);
        return v20;
      }

      (*(v44 + 8))(v43, v58);
    }
  }

  else
  {
    v20 = "gnAttributionService";
    sub_21700E0D4();
    sub_216973E30();
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
  }

  return v20;
}

uint64_t sub_216973330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v55 = a3;
  v52 = a7;
  v56 = a11;
  v57 = a10;
  v59 = a9;
  v14 = sub_21700CCA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = v16;
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - v19;
  v21 = sub_217005EF4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, a4, v22);
  v26 = sub_21700DF34();
  v27 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v28 = sub_216973FC8(v24, v26);
  MEMORY[0x21CE9F090]([v28 setClientInfo_]);
  v29 = sub_21700E264();
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    sub_2166997CC(v20, &qword_27CABACC0);
    v30 = 0;
  }

  else
  {
    v30 = sub_21700E254();
    (*(*(v29 - 8) + 8))(v20, v29);
  }

  [v28 setAccount_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE190);
  v31 = [v28 perform];
  v32 = sub_21700E234();
  v51 = *(v15 + 16);
  v52 = v32;
  v51(v17, a2, v14);
  v33 = *(v15 + 80);
  v49 = v14;
  v34 = &v53[(v33 + 16) & ~v33];
  v50 = (v33 + 16) & ~v33;
  v53 = v28;
  v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = *(v15 + 32);
  v38 = v17;
  v39 = v17;
  v40 = v49;
  v37(v36 + ((v33 + 16) & ~v33), v39, v49);
  v41 = v36;
  v42 = (v36 + v35);
  v43 = v55;
  v44 = v59;
  *v42 = v54;
  v42[1] = v44;
  v45 = v56;
  *(v41 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v51(v38, v43, v40);
  v46 = swift_allocObject();
  v37(v46 + v50, v38, v40);
  *(v46 + v35) = v45;
  v58[3] = sub_21700D904();
  v58[4] = MEMORY[0x277D22078];
  v58[0] = v57;
  sub_21700DF14();

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

void sub_2169737A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217013DA0;
  v15 = [v13 redirectURL];
  if (v15)
  {
    v16 = v15;
    sub_217005E64();

    v17 = sub_217005EF4();
    v18 = 0;
  }

  else
  {
    v17 = sub_217005EF4();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v18, 1, v17);
  sub_2166CF4DC(v9, v12);
  sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
  {
    sub_2166997CC(v12, &qword_27CABA820);
    *(v14 + 56) = MEMORY[0x277D837D0];
LABEL_8:
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    sub_21700DF14();
    goto LABEL_9;
  }

  v19 = sub_217005DE4();
  v21 = v20;
  (*(*(v17 - 8) + 8))(v12, v17);
  *(v14 + 56) = MEMORY[0x277D837D0];
  if (!v21)
  {
    goto LABEL_8;
  }

  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
LABEL_9:
  v22 = sub_21700CC94();
}

void sub_216973A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  *(v0 + 56) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  v2 = sub_21700CC94();
}

uint64_t sub_216973D60()
{
  result = sub_21700DFD4();
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

unint64_t sub_216973E30()
{
  result = qword_27CABE188;
  if (!qword_27CABE188)
  {
    sub_21700E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE188);
  }

  return result;
}

uint64_t sub_216973E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = sub_21700DFD4();
  OUTLINED_FUNCTION_2(v10);
  OUTLINED_FUNCTION_26_2();
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_216973330(a1, a2, a3, v3 + v9, v3 + v13, *(v3 + v11), *(v3 + v12), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_216973FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_217005E04();
  v7 = [v3 initWithURL:v6 bag:a2];
  swift_unknownObjectRelease();

  v8 = sub_217005EF4();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

void sub_216974064(void **a1)
{
  v3 = sub_21700CCA4();
  OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_26_2();
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];

  sub_2169737A4(a1, v1 + v4, v7, v8);
}

void sub_216974100()
{
  v0 = sub_21700CCA4();
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_26_2();

  sub_216973A8C();
}

uint64_t sub_2169741C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v94 = a2;
  v4 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v83 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v87 = v82 - v7;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v92 = v9;
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v82[1] = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v85 = v82 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_34();
  v15 = _s7SectionVMa(v14);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v82[0] = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v84 = v82 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = v82 - v26;
  v95 = a1;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v30 = v29;
  v86 = v19;
  v31 = v27;
  v32 = v17;
  v33 = v17;
  v34 = *(v19 + 8);
  v34(v31, v33);
  if (!v30)
  {
    v87 = v34;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_93();
    sub_21668F060(v37, v38);
    OUTLINED_FUNCTION_4();
    *v39 = 0x7463757274736E69;
    v39[1] = 0xEB000000006E6F69;
    v39[2] = v4;
    OUTLINED_FUNCTION_2_12();
    (*(v40 + 104))();
    swift_willThrow();
    goto LABEL_10;
  }

  v89 = v4;
  v35 = v28 == 0x74617265704F6F6ELL && v30 == 0xEB000000006E6F69;
  if (v35 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    (*(v92 + 8))(v94, v93);
    v34(v95, v32);
    return swift_storeEnumTagMultiPayload();
  }

  v45 = v28 == 0x536563616C706572 && v30 == 0xEE006E6F69746365;
  v46 = v93;
  if (v45 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {
    v87 = v34;

    sub_21700CE04();
    v47 = OUTLINED_FUNCTION_4_48();
    v48(v47);
    v49 = v88;
    v50 = v91;
    sub_216C26B08();
    if (!v50)
    {
      v51 = OUTLINED_FUNCTION_8_41();
      v52(v51);
      v53 = OUTLINED_FUNCTION_9_42();
      v54(v53);
      sub_216975284(v49, v90, _s7SectionVMa);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_10;
  }

  v55 = v28 == 0x5364726163736964 && v30 == 0xEE006E6F69746365;
  if (v55 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    (*(v92 + 8))(v94, v46);
    v34(v95, v32);
    return swift_storeEnumTagMultiPayload();
  }

  v56 = v28 == 0x496563616C706572 && v30 == 0xEC000000736D6574;
  if (v56 || (OUTLINED_FUNCTION_5_1() & 1) != 0 || (v28 == 0x7449657461647075 ? (v57 = v30 == 0xEB00000000736D65) : (v57 = 0), v57 || (OUTLINED_FUNCTION_5_1() & 1) != 0))
  {

    v58 = OUTLINED_FUNCTION_11_36();
    v59(v58);
    v60 = v92;
    v61 = OUTLINED_FUNCTION_4_48();
    v62(v61);
    v63 = v91;
    sub_21699CE4C();
    if (v63)
    {
      v87 = v34;
      goto LABEL_10;
    }

    (*(v60 + 8))(0xEE006E6F69746365, v46);
    v34(v30, v32);
    v64 = v87;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_78();
    v66 = v64;
  }

  else
  {
    v87 = v34;
    v67 = v28 == 0x7449646E65707061 && v30 == 0xEB00000000736D65;
    if (!v67 && (OUTLINED_FUNCTION_5_1() & 1) == 0)
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_93();
      sub_21668F060(v78, v79);
      OUTLINED_FUNCTION_4();
      *v80 = v28;
      v80[1] = v30;
      v80[2] = v89;
      OUTLINED_FUNCTION_2_12();
      (*(v81 + 104))();
      swift_willThrow();
      goto LABEL_10;
    }

    v68 = OUTLINED_FUNCTION_11_36();
    v69(v68);
    v70 = OUTLINED_FUNCTION_4_48();
    v71(v70);
    v72 = v83;
    v73 = v91;
    sub_21699CE4C();
    if (v73)
    {
LABEL_10:
      v41 = OUTLINED_FUNCTION_8_41();
      v42(v41);
      v43 = OUTLINED_FUNCTION_9_42();
      return v44(v43);
    }

    v74 = OUTLINED_FUNCTION_8_41();
    v75(v74);
    v76 = OUTLINED_FUNCTION_9_42();
    v77(v76);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_78();
    v66 = v72;
  }

  return sub_216975284(v66, v90, v65);
}

uint64_t sub_2169749B4(uint64_t a1, char *a2)
{
  v46 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v41 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v47 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v45 = v9;
  v23 = v9;
  v24 = v22;
  v42 = v11 + 8;
  v22(v18, v23);
  if (!v21)
  {
    v19 = 0x6F6974617265706FLL;
    v34 = 0xE90000000000006ELL;
LABEL_10:
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_93();
    sub_21668F060(v35, v36);
    OUTLINED_FUNCTION_4();
    *v37 = v19;
    v37[1] = v34;
    v37[2] = &type metadata for SectionChangeInstruction.InvalidationRulesChange;
    OUTLINED_FUNCTION_2_12();
    (*(v38 + 104))();
    swift_willThrow();
    (*(v43 + 8))(v46, v44);
    v24(v47, v45);
    return v19;
  }

  v25 = v19 == 6579297 && v21 == 0xE300000000000000;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    v34 = v21;
    goto LABEL_10;
  }

  v26 = v46;
  v40 = v24;
  v27 = v44;
  sub_21700CE04();
  v28 = v43;
  v29 = *(v43 + 16);
  v29(v8, v26, v27);
  sub_21700CE04();
  v29(v41, v8, v27);
  sub_216AC70E4();
  v19 = v30;
  v31 = *(v28 + 8);
  v31(v8, v27);
  v32 = v45;
  v33 = v40;
  v40(v15, v45);
  v31(v26, v27);
  v33(v47, v32);
  return v19;
}

uint64_t sub_216974DB8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2169749B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_216974DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v32 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v35 = v16;
  v36 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v31[1] = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_12_34();
  v20 = type metadata accessor for SectionChangeInstruction.Instruction(v19);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = type metadata accessor for SectionChangeInstruction(0);
  v23 = *(v31[0] + 24);
  v33 = a3;
  v24 = (a3 + v23);
  *v24 = 0;
  v24[1] = 0;
  v37 = a1;
  sub_21700CE04();
  v25 = *(v9 + 16);
  v26 = v7;
  v25(v14, a2, v7);
  v27 = v34;
  sub_2169741C4(v3, v14, v22);
  if (v27)
  {
    (*(v9 + 8))(a2, v7);
    return (*(v35 + 8))(v37, v36);
  }

  else
  {
    OUTLINED_FUNCTION_1_78();
    sub_216975284(v22, v33, v29);
    v30 = v37;
    sub_21700CE04();
    v25(v32, a2, v26);
    sub_216975230();
    sub_21700D734();
    (*(v9 + 8))(a2, v26);
    result = (*(v35 + 8))(v30, v36);
    *(v33 + *(v31[0] + 20)) = v38;
  }

  return result;
}

uint64_t sub_216975108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2169751D8(uint64_t a1)
{
  result = sub_21668F060(qword_280E360E8, type metadata accessor for SectionChangeInstruction);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216975230()
{
  result = qword_280E361A0[0];
  if (!qword_280E361A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E361A0);
  }

  return result;
}

uint64_t sub_216975284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LibraryImportWebViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169753C8()
{
  v0 = sub_21700F5E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216975414(char a1)
{
  result = 0x577373696D736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x72656C41776F6873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2169754D4(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 11;
  }

  else
  {
    return byte_21702E07E[a1];
  }
}

uint64_t sub_216975508(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    default:
      result = 7;
      break;
  }

  return result;
}

uint64_t sub_21697559C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169753C8();
  *a1 = result;
  return result;
}

unint64_t sub_2169755CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216975414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2169755FC()
{
  result = qword_27CABE198;
  if (!qword_27CABE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE198);
  }

  return result;
}

uint64_t sub_216975674@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2169754D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2169756A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169754F4(*v1);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicNotice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibraryImportDismissReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216975834()
{
  result = qword_27CABE1A0;
  if (!qword_27CABE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE1A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI19LibraryImportStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2169758A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2169758F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_216975954(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingBrickLockupView()
{
  result = qword_280E31E50;
  if (!qword_280E31E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169759EC()
{
  type metadata accessor for SearchLandingBrickLockup();
  if (v0 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B488);
    if (v1 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216975AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchLandingBrickLockupView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1A8);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for SearchLandingBrickLockup();
  sub_216681B04(v2 + *(v11 + 24), v10, &qword_27CAB6DB0);
  v12 = v8[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v10 + v12, 1, 1, v13);
  sub_216976B20(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchLandingBrickLockupView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_216976B80(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SearchLandingBrickLockupView);
  v16 = v8[14];
  *(v10 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + v8[15];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v10[5] = sub_216976BE0;
  v10[6] = v15;
  v10[7] = 0;
  v10[8] = 0;
  sub_216E316D4();
  sub_21671A6A0(v10);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1B0);
  v20 = a1 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = 0;
  return result;
}

uint64_t sub_216975D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v83 = sub_217008B44();
  MEMORY[0x28223BE20](v83);
  v84 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v64 - v5;
  v6 = sub_21700C444();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2170090F4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_217007474();
  v73 = *(v20 - 8);
  v74 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v64 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1B8);
  v80 = *(v26 - 8);
  v81 = v26;
  MEMORY[0x28223BE20](v26);
  v76 = &v64 - v27;
  v69 = *(type metadata accessor for SearchLandingBrickLockup() + 40);
  sub_216681B04(a1 + v69, v16, &qword_27CAB6D60);
  v28 = type metadata accessor for Artwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v28);
  v71 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v16, &qword_27CAB6D60);
    v30 = sub_21700C4B4();
    v31 = v19;
    v32 = 1;
  }

  else
  {
    v33 = sub_21700C4B4();
    (*(*(v33 - 8) + 16))(v19, v16, v33);
    sub_216976C58(v16, type metadata accessor for Artwork);
    v31 = v19;
    v32 = 0;
    v30 = v33;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v34 = a1 + *(type metadata accessor for SearchLandingBrickLockupView() + 24);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_21700ED94();
    v36 = sub_217009C34();
    v66 = v6;
    v37 = v36;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v65 = v8;
    v64 = a1;
    v38 = *(v67 + 8);
    v39 = v68;
    v38(v10, v68);

    sub_21700ED94();
    v40 = sub_217009C34();
    v6 = v66;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v38(v10, v39);
    a1 = v64;
    v8 = v65;
  }

  v41 = v71;
  sub_217007434();
  sub_216681B04(a1 + v69, v13, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v13, 1, v28) == 1)
  {
    sub_216697664(v13, &qword_27CAB6D60);
    v42 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v6);
    sub_21700C404();
    v43 = __swift_getEnumTagSinglePayload(v42, 1, v6);
    v44 = v82;
    v45 = v75;
    if (v43 != 1)
    {
      sub_216697664(v42, &qword_27CAB7530);
    }
  }

  else
  {
    v44 = v82;
    v46 = v78;
    (*(v82 + 16))(v78, &v13[*(v28 + 20)], v6);
    sub_216976C58(v13, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v6);
    (*(v44 + 32))(v8, v46, v6);
    v45 = v75;
  }

  v47 = v72;
  sub_2170073E4();
  (*(v44 + 8))(v8, v6);
  v48 = v74;
  v49 = *(v73 + 8);
  v49(v41, v74);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v49(v47, v48);
  v50 = *(v83 + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_217009294();
  v53 = v84;
  (*(*(v52 - 8) + 104))(&v84[v50], v51, v52);
  __asm { FMOV            V0.2D, #14.0 }

  *v53 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v59 = v76;
  sub_216E2FB34();
  sub_216976C58(v53, MEMORY[0x277CDFC08]);
  (*(v77 + 8))(v45, v79);
  v60 = sub_21700B374();
  MEMORY[0x28223BE20](v60);
  *(&v64 - 2) = a1;
  sub_216CB72C8(v61, v62, sub_216976C50, v70);
  return (*(v80 + 8))(v59, v81);
}

void *sub_216976720@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SearchLandingBrickLockup() + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    KeyPath = swift_getKeyPath();
    v7 = qword_280E2C360;
    sub_21700DF14();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_280E2C368;
    v9 = swift_getKeyPath();
    v30 = 0;

    v10 = sub_21700ACF4();
    v11 = swift_getKeyPath();
    v12 = sub_217009C74();
    sub_217007F24();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v31 = 0;
    v21 = sub_217009CA4();
    sub_217007F24();
    v32 = 0;
    v29[0] = v5;
    v29[1] = v4;
    LOBYTE(v29[2]) = 0;
    v29[3] = MEMORY[0x277D84F90];
    v29[4] = KeyPath;
    LOBYTE(v29[5]) = 0;
    v29[6] = v9;
    v29[7] = v8;
    v29[8] = v11;
    v29[9] = v10;
    LOBYTE(v29[10]) = v12;
    v29[11] = v14;
    v29[12] = v16;
    v29[13] = v18;
    v29[14] = v20;
    LOBYTE(v29[15]) = 0;
    LOBYTE(v29[16]) = v21;
    v29[17] = v22;
    v29[18] = v23;
    v29[19] = v24;
    v29[20] = v25;
    LOWORD(v29[21]) = 256;
    nullsub_1(v29, v26, v27);
    memcpy(__dst, v29, 0xAAuLL);
  }

  else
  {
    sub_216976CB0(__dst);
  }

  return memcpy(a2, __dst, 0xAAuLL);
}

uint64_t sub_2169768CC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_79();
  sub_216976B80(v2, v4, v3);
  v5 = type metadata accessor for SearchLandingBrickLockupView();
  v6 = a1 + *(v5 + 20);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + *(v5 + 24);
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_216976994(uint64_t a1)
{
  result = sub_216976E30(qword_280E31E78, type metadata accessor for SearchLandingBrickLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169769EC()
{
  v0 = sub_217009E44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009EA4();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v4 = sub_217009E74();

  result = (*(v1 + 8))(v3, v0);
  qword_280E2C368 = v4;
  return result;
}

uint64_t sub_216976B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216976B80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216976BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchLandingBrickLockupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216975D14(v4, a1);
}

uint64_t sub_216976C58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216976CB8()
{
  result = qword_280E2B180;
  if (!qword_280E2B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE1A8);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_280E44E00, &qword_27CABE1A8);
    sub_216976E30(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B180);
  }

  return result;
}

uint64_t sub_216976E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216976E78()
{
  v1 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel);
  }

  else
  {
    v2 = sub_216976F08(v0, *v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_216976F08(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1E0);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1E8);
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x28223BE20](v6);
  v52 = v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F8);
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE200);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v44 - v23;
  v25 = sub_217007814();
  v50 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  sub_216978224();
  sub_217007804();
  sub_216697664(v24, &qword_27CABE208);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
  sub_216978278(v22, v24);
  v26 = a1;
  v46 = a1;
  v27 = *(a1 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_account);
  v28 = *(a1 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_clientOptions);
  v29 = *(v26 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_metricsOverlay);
  sub_2169782E8(v24, v22);
  sub_2170077A4();
  swift_allocObject();
  v30 = v29;
  v31 = v27;
  v32 = v28;
  v33 = sub_217007794();

  sub_217007604();
  sub_2166AF2EC();
  v34 = sub_21700EE84();
  v58 = v34;
  v45 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v45);
  sub_2166D9530(&unk_27CABE220, &qword_27CABE1F8);
  v44[1] = sub_2166C0E74();
  sub_217007E54();
  v35 = v11;
  sub_216697664(v11, &qword_27CABE1F0);

  (*(v47 + 8))(v14, v12);
  *(swift_allocObject() + 16) = v57;
  v47 = MEMORY[0x277CBCD60];
  sub_2166D9530(&qword_27CABE230, &qword_27CABE200);
  v36 = v48;
  sub_217007E84();

  (*(v49 + 8))(v18, v36);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v37 = v51;
  sub_2170075F4();

  v38 = sub_21700EE84();
  v58 = v38;
  v39 = v35;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v45);
  sub_2166D9530(&qword_27CABE238, &qword_27CABE1E0);
  v41 = v52;
  v40 = v53;
  sub_217007E54();
  sub_216697664(v39, &qword_27CABE1F0);

  (*(v54 + 8))(v37, v40);
  *(swift_allocObject() + 16) = v57;
  sub_2166D9530(&qword_27CABE240, &qword_27CABE1E8);
  v42 = v55;
  sub_217007E84();

  (*(v56 + 8))(v41, v42);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  sub_216697664(v50, &qword_27CABE208);
  return v33;
}

uint64_t sub_2169776BC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 32))
  {
    v4 = [a1 view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *a2;
    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    v12 = *(a2 + 24);
  }

  type metadata accessor for MarketingAlbumArtworkGridModel();
  swift_allocObject();
  sub_21700DF14();
  result = sub_216A39FE4(v6, v8, v10, v12);
  *a3 = result;
  return result;
}

void sub_216977780(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {
    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CABE1C0);
    oslog = sub_217007C84();
    v13 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_216679000, oslog, v13, "Result nil", v14, 2u);
    v15 = v14;
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      if (qword_27CAB5AE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_27CABE1C0);
      sub_21671A778(v2);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v22 = v7;
        *v6 = 136446210;
        swift_getErrorValue();
        v8 = sub_21700F884();
        v10 = v9;
        sub_21671A784(v2, v1);
        v11 = sub_2166A85FC(v8, v10, &v22);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_216679000, v4, v5, "Result failure: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);

        return;
      }

      goto LABEL_23;
    }

    v16 = [objc_opt_self() defaultCenter];
    if (qword_280E29C48 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_280E29C50 object:0];

    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABE1C0);
    sub_21671A778(v2);
    oslog = sub_217007C84();
    v18 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v18))
    {

LABEL_23:

      sub_21671A784(v2, v1);
      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138739971;
    *(v19 + 4) = v2;
    *v20 = v2;
    _os_log_impl(&dword_216679000, oslog, v18, "Result success: %{sensitive}@", v19, 0xCu);
    sub_216697664(v20, &qword_27CABF880);
    MEMORY[0x21CEA1440](v20, -1, -1);
    v15 = v19;
  }

  MEMORY[0x21CEA1440](v15, -1, -1);
LABEL_18:
}

void sub_216977BA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {
    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CABE1C0);
    oslog = sub_217007C84();
    v13 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_216679000, oslog, v13, "Carrier Link nil", v14, 2u);
    v15 = v14;
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      if (qword_27CAB5AE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_27CABE1C0);
      sub_21671A778(v2);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v22 = v7;
        *v6 = 136446210;
        swift_getErrorValue();
        v8 = sub_21700F884();
        v10 = v9;
        sub_21671A784(v2, v1);
        v11 = sub_2166A85FC(v8, v10, &v22);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_216679000, v4, v5, "Carrier Link failure: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);

        return;
      }

      goto LABEL_23;
    }

    v16 = [objc_opt_self() defaultCenter];
    if (qword_280E29C48 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_280E29C50 object:0];

    if (qword_27CAB5AE8 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABE1C0);
    sub_21671A778(v2);
    oslog = sub_217007C84();
    v18 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v18))
    {

LABEL_23:

      sub_21671A784(v2, v1);
      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138739971;
    *(v19 + 4) = v2;
    *v20 = v2;
    _os_log_impl(&dword_216679000, oslog, v18, "Carrier Link success: %{sensitive}@", v19, 0xCu);
    sub_216697664(v20, &qword_27CABF880);
    MEMORY[0x21CEA1440](v20, -1, -1);
    v15 = v19;
  }

  MEMORY[0x21CEA1440](v15, -1, -1);
LABEL_18:
}

uint64_t sub_216977FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel____lazy_storage___marketingItemModel) = 0;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v11 + 32))(v5 + v10, a2);
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_account) = a3;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_clientOptions) = a4;
  *(v5 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_metricsOverlay) = a5;
  return v5;
}

uint64_t sub_216978094()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE1C0);
  __swift_project_value_buffer(v0, qword_27CABE1C0);
  return sub_217007C94();
}

uint64_t sub_216978114()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url;
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2169781C4()
{
  sub_216978114();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_216978224()
{
  result = qword_27CABE210;
  if (!qword_27CABE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE210);
  }

  return result;
}

uint64_t sub_216978278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169782E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697842C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = (v6 - v5);
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = type metadata accessor for FlowAction(0);
  sub_21697A49C(v1 + *(v12 + 20), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
      OUTLINED_FUNCTION_3_68();
      sub_2168ED900(v11, v7);
      v23 = *v7;
      if (v23 != 14 && v23 != 4)
      {
        v16 = type metadata accessor for ContentDescriptor;
        v17 = v7;
        goto LABEL_4;
      }

      v25 = v7;
      goto LABEL_24;
    case 4:
      v25 = v11;
LABEL_24:
      sub_2168ED900(v25, a1);
      v14 = 0;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
    case 6:
      sub_21700C084();
      goto LABEL_20;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);
      OUTLINED_FUNCTION_3_68();
      goto LABEL_19;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);
      OUTLINED_FUNCTION_3_68();
      goto LABEL_7;
    case 15:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v11 + v19);
      v15 = type metadata accessor for ContentDescriptor;
      goto LABEL_3;
    case 16:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0);
      sub_2166997CC(v11 + *(v26 + 48), &qword_27CAB6AE8);
LABEL_19:
      sub_21700C1E4();
      goto LABEL_20;
    case 17:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8);
      sub_2166997CC(v11 + *(v18 + 48), qword_27CAB6AF0);
LABEL_7:
      sub_21700C924();
LABEL_20:
      OUTLINED_FUNCTION_9_0();
      (*(v27 + 8))(v11);
      goto LABEL_21;
    case 19:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
    case 24:

      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v11 + v21);
      goto LABEL_21;
    default:
      v15 = type metadata accessor for FlowAction.Destination;
LABEL_3:
      v16 = v15;
      v17 = v11;
LABEL_4:
      sub_21697A500(v17, v16);
LABEL_21:
      v14 = 1;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v3);
  }
}

uint64_t sub_21697873C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = *(type metadata accessor for FlowAction(0) + 20);
  sub_21697A49C(v2 + v9, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      if (*(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48) + 8))
      {
        v12 = sub_21700BA64();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      sub_2169798F8(a1, v12, v14, a2);

      v11 = type metadata accessor for ContentDescriptor;
      return sub_21697A500(v8, v11);
    case 4u:
      sub_216978AD8(a1, a2);
      v11 = type metadata accessor for FlowAction.Destination;
      return sub_21697A500(v8, v11);
    case 6u:
      sub_21700C084();
      goto LABEL_16;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);

      goto LABEL_10;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);

      goto LABEL_13;
    case 0xFu:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v8 + v19);
      v10 = type metadata accessor for ContentDescriptor;
      goto LABEL_3;
    case 0x10u:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0);
      sub_2166997CC(v8 + *(v16 + 48), &qword_27CAB6AE8);
LABEL_10:
      sub_21700C1E4();
      goto LABEL_16;
    case 0x11u:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8);
      sub_2166997CC(v8 + *(v15 + 48), qword_27CAB6AF0);
LABEL_13:
      sub_21700C924();
LABEL_16:
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v8);
      break;
    case 0x13u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
      break;
    case 0x18u:

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v8 + v17);
      break;
    default:
      v10 = type metadata accessor for FlowAction.Destination;
LABEL_3:
      sub_21697A500(v8, v10);
      break;
  }

  type metadata accessor for FlowActionMappingError();
  sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError);
  swift_allocError();
  sub_21697A49C(v2 + v9, v22);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_216978AD8@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v111 = a1;
  v103 = sub_21700C734();
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700C924();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v114 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v98 - v9;
  v108 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v108);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21700D284();
  v12 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21700C1E4();
  v15 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2170067A4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v19 + 16);
  (v106)(v22, v111, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 != *MEMORY[0x277D2A400])
  {
    v109 = v14;
    v99 = v11;
    v43 = v12;
    v44 = v116;
    v45 = v110;
    if (v23 != *MEMORY[0x277D2A418] && v23 != *MEMORY[0x277D2A438] && v23 != *MEMORY[0x277D2A3C8] && v23 != *MEMORY[0x277D2A428] && v23 != *MEMORY[0x277D2A388] && v23 != *MEMORY[0x277D2A408] && v23 != *MEMORY[0x277D2A3B0] && v23 != *MEMORY[0x277D2A3B8])
    {
      if (v23 == *MEMORY[0x277D2A440])
      {
        (*(v19 + 96))(v22, v18);
        v55 = v102;
        v56 = v104;
        v57 = v22;
        v58 = v105;
        (*(v102 + 32))(v104, v57, v105);
        v98 = v43;
        v106 = *(v43 + 16);
        v59 = v45;
        v106(v109, v45, v44);
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
        v61 = v99;
        (*(v55 + 16))(v99, v56, v58);
        v62 = sub_21700C8E4();
        __swift_storeEnumTagSinglePayload(v61 + v60, 1, 1, v62);
        swift_storeEnumTagMultiPayload();
        v63 = type metadata accessor for FlowAction(0);
        v64 = (v59 + v63[6]);
        v65 = v64[1];
        v111 = *v64;
        sub_2166A6E54(v59 + v63[10], v115, &qword_27CABF7B0);
        v66 = sub_217005EF4();
        __swift_storeEnumTagSinglePayload(v112, 1, 1, v66);
        v67 = type metadata accessor for Page.Header(0);
        __swift_storeEnumTagSinglePayload(v113, 1, 1, v67);
        sub_2166A6E54(v59 + v63[9], v114, &qword_27CAB6FD0);
        v68 = v107;
        v69 = &v107[v63[10]];
        *(v69 + 32) = 0;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        v70 = v109;
        v71 = v116;
        v106(v68, v109, v116);
        sub_21697A49C(v61, &v68[v63[5]]);
        sub_21700DF14();
        sub_21697A500(v61, type metadata accessor for FlowAction.Destination);
        (*(v98 + 8))(v70, v71);
        (*(v55 + 8))(v104, v105);
        v72 = &v68[v63[6]];
        *v72 = v111;
        v72[1] = v65;
LABEL_31:
        v68[v63[7]] = 0;
        sub_2167A66B4(v115, v69);
        sub_21678818C(v112, &v68[v63[8]], &qword_27CABA820);
        sub_21678818C(v113, &v68[v63[11]], &qword_27CAB6BF0);
        v42 = &v68[v63[9]];
        return sub_21678818C(v114, v42, &qword_27CAB6FD0);
      }

      if (v23 == *MEMORY[0x277D2A3E8])
      {
        (*(v19 + 96))(v22, v18);
        v74 = v100;
        v73 = v101;
        v75 = v22;
        v76 = v103;
        (*(v100 + 32))(v101, v75, v103);
        v106 = *(v43 + 16);
        v106(v109, v45, v44);
        v77 = v99;
        (*(v74 + 16))(v99, v73, v76);
        swift_storeEnumTagMultiPayload();
        v78 = v45;
        v63 = type metadata accessor for FlowAction(0);
        v79 = (v78 + v63[6]);
        v81 = *v79;
        v80 = v79[1];
        v111 = v81;
        v108 = v80;
        sub_2166A6E54(v78 + v63[10], v115, &qword_27CABF7B0);
        v82 = sub_217005EF4();
        __swift_storeEnumTagSinglePayload(v112, 1, 1, v82);
        v83 = type metadata accessor for Page.Header(0);
        __swift_storeEnumTagSinglePayload(v113, 1, 1, v83);
        sub_2166A6E54(v78 + v63[9], v114, &qword_27CAB6FD0);
        v68 = v107;
        v69 = &v107[v63[10]];
        *(v69 + 32) = 0;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        v84 = v109;
        v106(v68, v109, v44);
        sub_21697A49C(v77, &v68[v63[5]]);
        v85 = v108;
        sub_21700DF14();
        sub_21697A500(v77, type metadata accessor for FlowAction.Destination);
        (*(v43 + 8))(v84, v44);
        (*(v74 + 8))(v101, v103);
        v86 = &v68[v63[6]];
        *v86 = v111;
        v86[1] = v85;
        goto LABEL_31;
      }

      if (v23 != *MEMORY[0x277D2A450] && v23 != *MEMORY[0x277D2A3C0] && v23 != *MEMORY[0x277D2A3D0] && v23 != *MEMORY[0x277D2A3F8] && v23 != *MEMORY[0x277D2A430] && v23 != *MEMORY[0x277D2A458] && v23 != *MEMORY[0x277D2A448] && v23 != *MEMORY[0x277D2A420] && v23 != *MEMORY[0x277D2A3D8] && v23 != *MEMORY[0x277D2A3E0] && v23 != *MEMORY[0x277D2A410])
      {
        type metadata accessor for FlowActionMappingError();
        sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError);
        swift_allocError();
        v106(v97, v111, v18);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*(v19 + 8))(v22, v18);
      }
    }

    (*(v19 + 8))(v22, v18);
    type metadata accessor for FlowActionMappingError();
    sub_2166D29E0(&qword_27CABE248, type metadata accessor for FlowActionMappingError);
    swift_allocError();
    v106(v53, v111, v18);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v19 + 96))(v22, v18);
  v24 = *(v15 + 32);
  v25 = v17;
  v99 = v17;
  v26 = v22;
  v27 = v109;
  v24(v17, v26, v109);
  v111 = *(v12 + 16);
  v28 = v110;
  v111(v14, v110, v116);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
  (*(v15 + 16))(v11, v25, v27);
  v30 = sub_21700C2F4();
  __swift_storeEnumTagSinglePayload(&v11[v29], 1, 1, v30);
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for FlowAction(0);
  v32 = (v28 + v31[6]);
  v34 = *v32;
  v33 = v32[1];
  v108 = v34;
  v106 = v33;
  sub_2166A6E54(v28 + v31[10], v115, &qword_27CABF7B0);
  v35 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v112, 1, 1, v35);
  v36 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v36);
  sub_2166A6E54(v28 + v31[9], v114, &qword_27CAB6FD0);
  v37 = v107;
  v38 = &v107[v31[10]];
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v39 = v116;
  v111(v37, v14, v116);
  sub_21697A49C(v11, &v37[v31[5]]);
  v40 = v106;
  sub_21700DF14();
  sub_21697A500(v11, type metadata accessor for FlowAction.Destination);
  (*(v12 + 8))(v14, v39);
  (*(v15 + 8))(v99, v109);
  v41 = &v37[v31[6]];
  *v41 = v108;
  v41[1] = v40;
  v37[v31[7]] = 0;
  sub_2167A66B4(v115, v38);
  sub_21678818C(v112, &v37[v31[8]], &qword_27CABA820);
  sub_21678818C(v113, &v37[v31[11]], &qword_27CAB6BF0);
  v42 = &v37[v31[9]];
  return sub_21678818C(v114, v42, &qword_27CAB6FD0);
}