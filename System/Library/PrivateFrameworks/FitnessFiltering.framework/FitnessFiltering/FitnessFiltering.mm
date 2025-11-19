unint64_t sub_24B57380C()
{
  result = qword_2810F6710;
  if (!qword_2810F6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F6710);
  }

  return result;
}

uint64_t sub_24B573868(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  swift_getWitnessTable();
  sub_24B5FF8CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  sub_24B57D53C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660]);
  return swift_getWitnessTable();
}

uint64_t sub_24B573C54()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_24B573C9C()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  v2 = *(type metadata accessor for Option() - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  return swift_deallocObject();
}

uint64_t sub_24B573DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  swift_getWitnessTable();
  sub_24B5FF8CC();
  sub_24B5813FC();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660]);
  return swift_getWitnessTable();
}

uint64_t sub_24B574168()
{
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v1 = (type metadata accessor for FilterModalitySectionView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 104) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  (*(*(v8 - 8) + 8))(v3 + v1[30]);
  v5 = *(v3 + v1[31] + 8);

  v6 = *(v3 + v1[32]);

  return swift_deallocObject();
}

uint64_t sub_24B574288()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v17 = *(v0 + 16);
  v16 = *(v0 + 32);
  v15 = *(v0 + 88);
  v5 = (type metadata accessor for FilterModalitySectionView() - 8);
  v6 = *(*v5 + 64);
  v7 = (*(*v5 + 80) + 104) & ~*(*v5 + 80);
  v8 = *(type metadata accessor for Option() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v7 + 8);

  (*(*(v16 - 8) + 8))(v0 + v7 + v5[30]);
  v12 = *(v0 + v7 + v5[31] + 8);

  v13 = *(v0 + v7 + v5[32]);

  (*(*(v1 - 8) + 8))(v0 + v9, v1);
  return swift_deallocObject();
}

uint64_t sub_24B57449C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 48))
  {

    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  v10 = *(v0 + 184);

  v11 = *(v0 + 192);

  sub_24B57BA04(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));

  return swift_deallocObject();
}

uint64_t sub_24B57454C()
{
  v1 = v0[4];

  v2 = v0[6];

  if (v0[7])
  {

    v3 = v0[9];
  }

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[18];

  v8 = v0[20];

  v9 = v0[22];

  v10 = v0[24];

  v11 = v0[25];

  return swift_deallocObject();
}

uint64_t sub_24B5745E0()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {

    v3 = v0[8];
  }

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[24];

  v12 = v0[25];

  v13 = v0[27];

  return swift_deallocObject();
}

uint64_t sub_24B5746E0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B57472C(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1[2];
  v4 = a1[1];
  v5 = a1[4];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FF82C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  sub_24B5FEFEC();
  swift_getOpaqueTypeConformance2();
  sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
  swift_getWitnessTable();
  sub_24B57D828();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  sub_24B5FEFEC();
  swift_getOpaqueTypeConformance2();
  sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  sub_24B5FF8CC();
  swift_getOpaqueTypeConformance2();
  sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5B7C24(&qword_27F018900, MEMORY[0x277CE0660]);
  return swift_getWitnessTable();
}

uint64_t sub_24B574F6C()
{
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v1 = (type metadata accessor for FilterTrainerSectionView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 104) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  (*(*(v8 - 8) + 8))(v3 + v1[30]);
  v5 = *(v3 + v1[31] + 8);

  v6 = *(v3 + v1[32]);

  return swift_deallocObject();
}

uint64_t sub_24B57508C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v17 = *(v0 + 16);
  v16 = *(v0 + 32);
  v15 = *(v0 + 88);
  v5 = (type metadata accessor for FilterTrainerSectionView() - 8);
  v6 = *(*v5 + 64);
  v7 = (*(*v5 + 80) + 104) & ~*(*v5 + 80);
  v8 = *(type metadata accessor for Option() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v7 + 8);

  (*(*(v16 - 8) + 8))(v0 + v7 + v5[30]);
  v12 = *(v0 + v7 + v5[31] + 8);

  v13 = *(v0 + v7 + v5[32]);

  (*(*(v1 - 8) + 8))(v0 + v9, v1);
  return swift_deallocObject();
}

uint64_t sub_24B57528C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019380, &qword_24B603530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57530C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FilterLayout();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_24B5FEE1C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24B575418(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FilterLayout();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_24B5FEE1C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t get_enum_tag_for_layout_string_16FitnessFiltering8ModalityVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B575564(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019C48, &qword_24B606870);
  swift_getWitnessTable();
  sub_24B5FF8CC();
  sub_24B5CABE0();
  swift_getWitnessTable();
  sub_24B5FF93C();
  sub_24B5FEFEC();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5CD35C(&qword_27F018900, MEMORY[0x277CE0660]);
  return swift_getWitnessTable();
}

uint64_t sub_24B5757AC()
{
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 40);
  v11 = *(v0 + 56);
  v12 = *(v0 + 72);
  v1 = type metadata accessor for FilterStandardSectionView();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + ((*(*(v1 - 8) + 80) + 88) & ~*(*(v1 - 8) + 80));
  (*(*(v8 - 8) + 8))(v4 + *(v1 + 92));
  v5 = *(v4 + *(v2 + 104) + 8);

  v6 = *(v4 + *(v2 + 108));

  return swift_deallocObject();
}

uint64_t sub_24B5758C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v15 = *(v0 + 32);
  v16 = *(v0 + 72);
  v6 = (type metadata accessor for FilterStandardSectionView() - 8);
  v7 = *(*v6 + 64);
  v8 = (*(*v6 + 80) + 88) & ~*(*v6 + 80);
  v9 = *(type metadata accessor for Option() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v2 - 8) + 8))(v0 + v8 + v6[25], v2);
  v12 = *(v0 + v8 + v6[26] + 8);

  v13 = *(v0 + v8 + v6[27]);

  (*(*(v1 - 8) + 8))(v0 + v10, v1);
  return swift_deallocObject();
}

uint64_t sub_24B575AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019C58, &qword_24B606878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B575B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xA)
    {
      return v10 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24B575C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24B575DB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B575DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    v9 = sub_24B5FEE7C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B575F08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
    swift_getFunctionTypeMetadata3();
    v8 = sub_24B5FEE7C();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24B57601C(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  sub_24B5FEFCC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A068, &qword_24B608010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A070, &qword_24B608018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A078, &qword_24B608020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A080, &qword_24B608028);
  sub_24B5C3D68();
  sub_24B5C3B90();
  sub_24B5D9BC8();
  sub_24B5D9C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A098, &qword_24B608030);
  sub_24B5D9C70();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for FilterModalitySectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0C8, &qword_24B608048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A0D0, &qword_24B608050);
  sub_24B5D9DB4();
  sub_24B5D9E08();
  sub_24B5D9E5C();
  sub_24B5D9EB0();
  type metadata accessor for FilterTrainerSectionView();
  sub_24B5FF21C();
  sub_24B5FF21C();
  sub_24B5FF21C();
  sub_24B58085C(&qword_27F01A0F8, &qword_27F01A068, &qword_24B608010);
  sub_24B5FF8CC();
  sub_24B5D9F04();
  sub_24B58085C(&qword_27F01A128, &qword_27F01A078, &qword_24B608020);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5D9FE8();
  sub_24B58085C(&qword_27F01A158, &qword_27F01A0D0, &qword_24B608050);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  swift_getWitnessTable();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEFBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A168, &qword_24B608080);
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B58085C(qword_27F01A178, &qword_27F01A168, &qword_24B608080);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FF00C();
  return swift_getWitnessTable();
}

uint64_t sub_24B576714()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 40) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 4);

  v7 = *&v0[v4];
  v8 = *&v0[v4 + 8];
  v9 = v0[v4 + 16];
  sub_24B5DB820();
  v10 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v11 = sub_24B5FEE7C();
  (*(*(v11 - 8) + 8))(&v0[v4 + v10], v11);

  return swift_deallocObject();
}

uint64_t sub_24B576884()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = sub_24B5FEF9C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = *(v7 + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B5DB820();
  v13 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v14 = sub_24B5FEE7C();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24B576A78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for FilterSectionDescriptor();
  v20 = *(*(v6 - 8) + 64);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v4 + 16);
  sub_24B5DB820();
  v11 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v12 = sub_24B5FEE7C();
  (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);
  v13 = v0 + v7;
  v14 = *(v0 + v7 + 8);

  v15 = *(v6 + 20);
  v16 = sub_24B5FEDEC();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v7 + v15, 1, v16))
  {
    (*(v17 + 8))(v13 + v15, v16);
  }

  sub_24B5E2A64(*(v13 + *(v6 + 24)), *(v13 + *(v6 + 24) + 8));
  v18 = *(v0 + ((((v20 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_24B576D08()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FilterView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v4 + 16);
  sub_24B5DB820();
  v10 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018770, &unk_24B6007D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019330, &qword_24B603500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018768, &unk_24B6080E0);
  swift_getFunctionTypeMetadata3();
  v11 = sub_24B5FEE7C();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_24B576E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A310, &qword_24B6081F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B576EF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF0BC();
  *a1 = result;
  return result;
}

uint64_t sub_24B576F1C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B5FF0CC();
}

uint64_t sub_24B576F70@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B5FF0FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B576FA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B5FF10C();
}

uint64_t sub_24B577008(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A6A0, &qword_24B609070);
  swift_getWitnessTable();
  sub_24B5FF8CC();
  sub_24B5EBEAC();
  swift_getWitnessTable();
  sub_24B5FF84C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF87C();
  sub_24B5FEFEC();
  sub_24B5FF2EC();
  sub_24B5FEFEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B580814(&qword_27F018900, MEMORY[0x277CE0660]);
  return swift_getWitnessTable();
}

uint64_t sub_24B5773D4()
{
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *(v0 + 40);
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v1 = (type metadata accessor for FilterDurationSectionView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 88) & ~*(*v1 + 80));
  (*(*(v9 - 8) + 8))(v3);
  v4 = v1[25];
  v5 = sub_24B5FEE1C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v3 + v1[26] + 8);

  v7 = *(v3 + v1[27]);

  return swift_deallocObject();
}

uint64_t sub_24B577530()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v17 = *(v0 + 32);
  v18 = *(v0 + 72);
  v6 = (type metadata accessor for FilterDurationSectionView() - 8);
  v7 = *(*v6 + 64);
  v8 = (*(*v6 + 80) + 88) & ~*(*v6 + 80);
  v9 = *(type metadata accessor for Option() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v2 - 8) + 8))(v0 + v8, v2);
  v12 = v6[25];
  v13 = sub_24B5FEE1C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  v14 = *(v0 + v8 + v6[26] + 8);

  v15 = *(v0 + v8 + v6[27]);

  (*(*(v1 - 8) + 8))(v0 + v10, v1);
  return swift_deallocObject();
}

uint64_t sub_24B577750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B5FF0DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B5777B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A6B0, &qword_24B609078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B577820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5FF07C();
  *a1 = result;
  return result;
}

uint64_t sub_24B57784C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B5FF08C();
}

uint64_t sub_24B577878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v17 = *(v0 + 32);
  v18 = *(v0 + 72);
  v6 = (type metadata accessor for FilterDurationSectionView() - 8);
  v7 = *(*v6 + 64);
  v8 = (*(*v6 + 80) + 88) & ~*(*v6 + 80);
  v9 = *(type metadata accessor for Option() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  (*(*(v2 - 8) + 8))(v0 + v8, v2);
  v12 = v6[25];
  v13 = sub_24B5FEE1C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  v14 = *(v0 + v8 + v6[26] + 8);

  v15 = *(v0 + v8 + v6[27]);

  (*(*(v1 - 8) + 8))(v0 + v10, v1);
  return swift_deallocObject();
}

uint64_t sub_24B577A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B5FEEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B577B44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B5FEEFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24B577C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B577C38(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A888, &qword_24B6094F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A890, &qword_24B6094F8);
  swift_getTupleTypeMetadata3();
  sub_24B5FF94C();
  sub_24B5FFC3C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  sub_24B5FF21C();
  swift_getWitnessTable();
  sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500);
  swift_getWitnessTable();
  sub_24B5C3F48();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FEFEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B577E6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FilterResultsView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v4 + 16);
  sub_24B5DB820();
  (*(*(v2 - 8) + 8))(v6 + v3[11], v2);
  sub_24B57BA04(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));
  v10 = *(v0 + v5 + 56);

  return swift_deallocObject();
}

uint64_t sub_24B577F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B5FF09C();
  *a1 = result;
  return result;
}

uint64_t sub_24B577FD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_24B578020()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for FilterResultsView() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *&v0[v4];
  v8 = *&v0[v4 + 8];
  v9 = v0[v4 + 16];
  sub_24B5DB820();
  (*(*(v2 - 8) + 8))(&v0[v4 + v3[11]], v2);

  return swift_deallocObject();
}

uint64_t sub_24B578130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B5781EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t BodyFocus.iconName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BodyFocus.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BodyFocus.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BodyFocus.init(artworks:iconName:identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_24B5783BC()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B578404()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B578448()
{
  v1 = 0x736B726F77747261;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 0x656D614E6E6F6369;
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

uint64_t sub_24B5784C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B57B338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B578500(uint64_t a1)
{
  v2 = sub_24B578868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B57853C(uint64_t a1)
{
  v2 = sub_24B578868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B578578@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t BodyFocus.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0186F8, &unk_24B600420);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[5] = v1[2];
  v15[6] = v9;
  v12 = v1[5];
  v15[3] = v1[4];
  v15[4] = v11;
  v15[1] = v1[6];
  v15[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B578868();

  sub_24B5FFF5C();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  sub_24B578C98(&qword_27F018710, &qword_27F018718);
  sub_24B5FFE8C();

  if (!v2)
  {
    v18 = 1;
    sub_24B5FFE1C();
    v17 = 2;
    sub_24B5FFE3C();
    v16 = 3;
    sub_24B5FFE3C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B578868()
{
  result = qword_27F018700;
  if (!qword_27F018700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018700);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t BodyFocus.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018720, &qword_24B600430);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B578868();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018708, &qword_24B6073B0);
  v31 = 0;
  sub_24B578C98(&qword_27F018728, &qword_27F018730);
  sub_24B5FFDDC();
  v11 = v32;
  v30 = 1;
  v12 = sub_24B5FFD6C();
  v27 = v13;
  v25 = v12;
  v29 = 2;
  v24 = sub_24B5FFD8C();
  v26 = v14;
  v28 = 3;
  v15 = sub_24B5FFD8C();
  v18 = v17;
  v19 = v15;
  (*(v6 + 8))(v9, v5);
  v20 = v24;
  v21 = v25;
  *a2 = v11;
  a2[1] = v21;
  v22 = v26;
  a2[2] = v27;
  a2[3] = v20;
  a2[4] = v22;
  a2[5] = v19;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24B578C98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018708, &qword_24B6073B0);
    sub_24B57BB64(a2, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B578D68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t sub_24B578D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B578DE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return (sub_24B5FFECC() ^ 1) & 1;
  }
}

uint64_t sub_24B578E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_24B5FFECC();
  }
}

uint64_t BodyFocus.hash(into:)(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t BodyFocus.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_24B5FFEFC();
  sub_24B57926C(v9, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B578FC0(__int128 *a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  sub_24B57926C(a1, *v1);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();

  return sub_24B5FFB1C();
}

uint64_t sub_24B579068()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_24B5FFEFC();
  sub_24B57926C(v9, v2);
  sub_24B5FFF1C();
  if (v4)
  {
    sub_24B5FFB1C();
  }

  sub_24B5FFB1C();
  sub_24B5FFB1C();
  return sub_24B5FFF3C();
}

uint64_t sub_24B579124()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_24B579154()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_24B579184()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5791F8()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

void *sub_24B579250@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24B57926C(__int128 *a1, uint64_t a2)
{
  v58 = sub_24B5FEDFC();
  v61 = *(v58 - 8);
  v4 = *(v61 + 64);
  (MEMORY[0x28223BE20])();
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = &v44 - v7;
  v9 = sub_24B5FEE8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (MEMORY[0x28223BE20])();
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v60 = &v44 - v14;
  v57 = type metadata accessor for Artwork();
  v56 = *(v57 - 8);
  v15 = *(v56 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v62 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v18;
  v19 = a1[3];
  v65 = a1[2];
  v66 = v19;
  v67 = *(a1 + 8);
  v21 = *a1;
  v20 = a1[1];
  v44 = a1;
  v63 = v21;
  v64 = v20;
  v54 = sub_24B5FFF3C();
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;
  v53 = (v10 + 48);
  v48 = (v10 + 32);
  v47 = (v10 + 8);
  v52 = (v61 + 48);
  v46 = (v61 + 32);
  v45 = (v61 + 8);
  v59 = a2;

  v28 = 0;
  v29 = 0;
  v50 = v9;
  while (v25)
  {
    v61 = v28;
    v35 = v60;
LABEL_13:
    v37 = v55;
    sub_24B57BA34(*(v59 + 48) + *(v56 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v55);
    v38 = v37;
    v39 = v62;
    sub_24B57BA98(v38, v62);
    sub_24B5FFEFC();
    sub_24B57BAFC(v39, v35, &qword_27F018770, &unk_24B6007D0);
    if ((*v53)(v35, 1, v9) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v40 = v49;
      (*v48)(v49, v35, v9);
      sub_24B5FFF1C();
      sub_24B57BB64(&qword_27F018778, MEMORY[0x277D09D68]);
      sub_24B5FFA4C();
      (*v47)(v40, v9);
    }

    v41 = v57;
    v42 = *(v62 + *(v57 + 20));
    if (v42 <= 4)
    {
      *(v62 + *(v57 + 20));
    }

    sub_24B5FFB1C();

    sub_24B57BAFC(v62 + *(v41 + 24), v8, &qword_27F018768, &unk_24B6080E0);
    v43 = v58;
    if ((*v52)(v8, 1, v58) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v30 = v8;
      v31 = v51;
      (*v46)(v51, v30, v43);
      sub_24B5FFF1C();
      sub_24B57BB64(&qword_27F018780, MEMORY[0x277CC9260]);
      sub_24B5FFA4C();
      v32 = v31;
      v8 = v30;
      v9 = v50;
      (*v45)(v32, v43);
    }

    v33 = v61;
    v25 &= v25 - 1;
    v34 = sub_24B5FFF3C();
    result = sub_24B57BBAC(v62);
    v28 = v34 ^ v33;
  }

  v35 = v60;
  while (1)
  {
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v36 >= v26)
    {

      return MEMORY[0x24C243ED0](v28);
    }

    v25 = *(v22 + 8 * v36);
    ++v29;
    if (v25)
    {
      v61 = v28;
      v29 = v36;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5799FC(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_24B5FFF3C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v12);
    result = sub_24B5FFF3C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C243ED0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B579B28(__int128 *a1, uint64_t a2)
{
  v36 = a1[2];
  v37 = a1[3];
  v38 = *(a1 + 8);
  v34 = *a1;
  v35 = a1[1];
  sub_24B5FFF3C();
  v31 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v30 = v7;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v12 = *(v31 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      sub_24B5FFEFC();
      v19 = v18;
      v33 = v9;
      v32 = v18;
      if (v18 <= 3)
      {
        if (v18 > 1)
        {
          v7 = v30;
          if (v19 == 2)
          {
            MEMORY[0x24C243ED0](2);
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v23 = v16;
            v24 = v17;
            v25 = 2;
          }

          else
          {
            MEMORY[0x24C243ED0](3);
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v23 = v16;
            v24 = v17;
            v25 = 3;
          }
        }

        else
        {
          v7 = v30;
          if (v19)
          {
            MEMORY[0x24C243ED0](1);
            sub_24B57BA1C(v13, v14, v15, v16, v17, 1u);
            sub_24B5FFB1C();
            if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v26 = v15;
            }

            else
            {
              v26 = 0;
            }

            MEMORY[0x24C243EF0](v26);
            if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v27 = v16;
            }

            else
            {
              v27 = 0;
            }

            MEMORY[0x24C243EF0](v27);
            if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v28 = v17;
            }

            else
            {
              v28 = 0;
            }

            MEMORY[0x24C243EF0](v28);
            goto LABEL_35;
          }

          MEMORY[0x24C243ED0](0);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 0;
        }

        goto LABEL_34;
      }

      if (v18 <= 5)
      {
        v7 = v30;
        if (v19 == 4)
        {
          MEMORY[0x24C243ED0](4);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 4;
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          v20 = v13;
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = 5;
        }

        goto LABEL_34;
      }

      v7 = v30;
      if (v19 == 6)
      {
        break;
      }

      if (v19 == 7)
      {
        MEMORY[0x24C243ED0](7);
        v20 = v13;
        v21 = v14;
        v22 = v15;
        v23 = v16;
        v24 = v17;
        v25 = 7;
LABEL_34:
        sub_24B57BA1C(v20, v21, v22, v23, v24, v25);
        sub_24B5FFB1C();
        goto LABEL_35;
      }

      MEMORY[0x24C243ED0](8);
      sub_24B5FFB1C();

LABEL_35:
      v6 &= v6 - 1;
      v29 = sub_24B5FFF3C();
      result = sub_24B57BA04(v13, v14, v15, v16, v17, v32);
      v9 = v29 ^ v33;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    MEMORY[0x24C243ED0](6);
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = 6;
    goto LABEL_34;
  }

LABEL_4:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x24C243ED0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B579FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v27[13] = *(a1 + 32);
  *&v27[15] = v3;
  v27[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v27[9] = *a1;
  *&v27[11] = v4;
  sub_24B5FFF3C();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v26 = v11;
LABEL_11:
    v15 = (*(v22 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v18 = v15[2];
    v17 = v15[3];
    v19 = v15[4];
    v23 = v15[1];
    v24 = v15[5];
    v20 = v15[6];
    v25 = v15[7];
    v21 = v15[8];
    sub_24B5FFEFC();

    sub_24B57926C(v27, v16);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    sub_24B5FFF1C();
    if (v20)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v26;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v26 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A1D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v27[13] = *(a1 + 32);
  *&v27[15] = v3;
  v27[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v27[9] = *a1;
  *&v27[11] = v4;
  sub_24B5FFF3C();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v26 = v11;
LABEL_11:
    v15 = (*(v22 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v18 = v15[2];
    v17 = v15[3];
    v19 = v15[4];
    v23 = v15[1];
    v24 = v15[5];
    v20 = v15[6];
    v25 = v15[7];
    v21 = v15[8];
    sub_24B5FFEFC();

    swift_bridgeObjectRetain_n();

    sub_24B57926C(v27, v16);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    sub_24B5FFF1C();
    if (v20)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();

    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v26;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v26 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v25[13] = *(a1 + 32);
  *&v25[15] = v3;
  v25[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v25[9] = *a1;
  *&v25[11] = v4;
  sub_24B5FFF3C();
  v21 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v24 = v11;
LABEL_11:
    v15 = (*(v21 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = v15[4];
    v22 = v15[3];
    v23 = v15[5];
    v20 = v15[6];
    sub_24B5FFEFC();

    swift_bridgeObjectRetain_n();

    sub_24B57926C(v25, v17);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();

    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v24;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v24 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v32[13] = *(a1 + 32);
  *&v32[15] = v3;
  v32[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v32[9] = *a1;
  *&v32[11] = v4;
  sub_24B5FFF3C();
  v24 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  v23 = v5;
  while (v8)
  {
    v29 = v11;
LABEL_12:
    v15 = (*(v24 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v16 = *v15;
    v17 = v15[3];
    v25 = v15[2];
    v26 = v15[4];
    v30 = v15[5];
    v27 = v15[6];
    v28 = v15[1];
    v18 = v15[7];
    v19 = v15[8];
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](*(v16 + 16));
    v31 = v16;
    v20 = *(v16 + 16);
    if (v20)
    {
      v21 = (v31 + 32);
      do
      {
        v22 = *v21++;
        MEMORY[0x24C243ED0](v22);
        --v20;
      }

      while (v20);
    }

    sub_24B57926C(v32, v28);
    sub_24B5FFF1C();
    if (v17)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    sub_24B5799FC(v32, v19);
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v29;
    v5 = v23;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v29 = v11;
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57A87C(__int128 *a1, uint64_t a2)
{
  v50 = a1[2];
  v51 = a1[3];
  v52 = *(a1 + 8);
  v48 = *a1;
  v49 = a1[1];
  sub_24B5FFF3C();
  v41 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v39 = v7;
  v40 = a2 + 56;
  while (v6)
  {
LABEL_11:
    v13 = (*(v41 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[3];
    v46 = v13[2];
    v17 = v13[4];
    v42 = v13[5];
    v18 = v13[6];
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v14);
    MEMORY[0x24C243ED0](*(v15 + 16));
    v19 = *(v15 + 16);
    v43 = v18;
    if (v19)
    {

      v20 = (v15 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_24B5FFB1C();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {
    }

    v44 = v9;
    sub_24B5FFF1C();
    if (v16)
    {
      sub_24B5FFB1C();
    }

    v6 &= v6 - 1;
    v23 = v17 + 64;
    v24 = 1 << *(v17 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v17 + 64);
    v27 = (v24 + 63) >> 6;
    v45 = v17;

    v28 = 0;
    for (i = 0; v26; v28 = result ^ v47)
    {
      v47 = v28;
      v30 = i;
      v31 = v45;
LABEL_28:
      v32 = *(v31 + 48);
      v33 = (v30 << 10) | (16 * __clz(__rbit64(v26)));
      v34 = *(v32 + v33);
      v35 = *(v32 + v33 + 8);
      v26 &= v26 - 1;
      v36 = (*(v31 + 56) + v33);
      v37 = *v36;
      v38 = v36[1];

      sub_24B5FFB1C();

      sub_24B5FFB1C();

      result = sub_24B5FFF3C();
    }

    v31 = v45;
    while (1)
    {
      v30 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v30);
      ++i;
      if (v26)
      {
        v47 = v28;
        i = v30;
        goto LABEL_28;
      }
    }

    MEMORY[0x24C243ED0](v28);
    sub_24B5FFF1C();
    if (v43)
    {
      sub_24B5FFB1C();
    }

    v7 = v39;
    v3 = v40;
    v11 = sub_24B5FFF3C();

    v9 = v11 ^ v44;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x24C243ED0](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24B57AC24(__int128 *a1, uint64_t a2)
{
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(a1 + 8);
  v22 = *a1;
  v23 = a1[1];
  sub_24B5FFF3C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v21)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 40 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    sub_24B5FFEFC();

    sub_24B5FFB1C();
    if (v15 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v15;
    }

    MEMORY[0x24C243EF0](*&v18);
    if (v16 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v16;
    }

    MEMORY[0x24C243EF0](*&v19);
    if (v17 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v17;
    }

    MEMORY[0x24C243EF0](*&v20);
    v21 = sub_24B5FFF3C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C243ED0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57ADD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v27[13] = *(a1 + 32);
  *&v27[15] = v3;
  v27[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v27[9] = *a1;
  *&v27[11] = v4;
  sub_24B5FFF3C();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v26 = v11;
LABEL_11:
    v15 = (*(v22 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = v15[4];
    v23 = v15[3];
    v24 = v15[5];
    v20 = v15[6];
    v25 = v15[7];
    v21 = v15[8];
    sub_24B5FFEFC();

    sub_24B57926C(v27, v17);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    MEMORY[0x24C243ED0](v25);
    sub_24B5A8CFC(v27, v21);
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v26;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v26 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57AFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v25[13] = *(a1 + 32);
  *&v25[15] = v3;
  v25[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v25[9] = *a1;
  *&v25[11] = v4;
  sub_24B5FFF3C();
  v21 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v24 = v11;
LABEL_11:
    v15 = (*(v21 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = v15[4];
    v22 = v15[3];
    v23 = v15[5];
    v20 = v15[6];
    sub_24B5FFEFC();

    sub_24B57926C(v25, v17);
    sub_24B5FFF1C();
    if (v18)
    {
      sub_24B5FFB1C();
    }

    v8 &= v8 - 1;
    sub_24B5FFB1C();
    sub_24B5FFB1C();
    v13 = sub_24B5FFF3C();

    v11 = v13 ^ v24;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x24C243ED0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v24 = v11;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57B1DC(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_24B5FFF3C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_24B5FFEFC();

    sub_24B5FFB1C();
    v15 = sub_24B5FFF3C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C243ED0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B57B338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t _s16FitnessFiltering9BodyFocusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_24B584F70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || (v2 != v6 || v4 != v7) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((v3 != v8 || v5 != v10) && (sub_24B5FFECC() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v9 && v14 == v11)
  {
    return 1;
  }

  return sub_24B5FFECC();
}

unint64_t sub_24B57B5EC()
{
  result = qword_27F018738;
  if (!qword_27F018738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018738);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B57B65C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B57B6A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for HKWorkoutActivityType()
{
  if (!qword_27F018740)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F018740);
    }
  }
}

uint64_t getEnumTagSinglePayload for BodyFocus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BodyFocus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B57B8B8()
{
  result = qword_27F018748;
  if (!qword_27F018748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018748);
  }

  return result;
}

unint64_t sub_24B57B958()
{
  result = qword_27F018758;
  if (!qword_27F018758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018758);
  }

  return result;
}

unint64_t sub_24B57B9B0()
{
  result = qword_27F018760;
  if (!qword_27F018760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018760);
  }

  return result;
}

uint64_t sub_24B57BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B57BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 7u)
  {
  }

  return result;
}

uint64_t sub_24B57BA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57BA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B57BAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B57BB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B57BBAC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Filter.init(exclusions:filterContentType:inclusions:sortMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_24B57BC50()
{
  v1 = 0x6F6973756C636E69;
  v2 = 0x6F6973756C637865;
  if (*v0 != 2)
  {
    v1 = 0x65646F4D74726F73;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24B57BCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B57CB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B57BCEC(uint64_t a1)
{
  v2 = sub_24B57BFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B57BD28(uint64_t a1)
{
  v2 = sub_24B57BFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Filter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018788, &qword_24B6007E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v17 = *(v1 + 8);
  v16 = v1[2];
  v15 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B57BFE8();

  sub_24B5FFF5C();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018798, &qword_24B6007E8);
  sub_24B57C454(&qword_27F0187A0, sub_24B57C03C);
  sub_24B5FFE8C();

  if (!v2)
  {
    v11 = v16;
    v12 = v15;
    LOBYTE(v19) = v17;
    v18 = 1;
    sub_24B57C090();
    sub_24B5FFE8C();
    v19 = v11;
    v18 = 2;
    sub_24B5FFE8C();
    LOBYTE(v19) = v12;
    v18 = 3;
    sub_24B57C0E4();
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B57BFE8()
{
  result = qword_27F018790;
  if (!qword_27F018790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018790);
  }

  return result;
}

unint64_t sub_24B57C03C()
{
  result = qword_27F0187A8;
  if (!qword_27F0187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187A8);
  }

  return result;
}

unint64_t sub_24B57C090()
{
  result = qword_27F0187B0;
  if (!qword_27F0187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187B0);
  }

  return result;
}

unint64_t sub_24B57C0E4()
{
  result = qword_27F0187B8;
  if (!qword_27F0187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187B8);
  }

  return result;
}

uint64_t Filter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0187C0, &qword_24B6007F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B57BFE8();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018798, &qword_24B6007E8);
  v19 = 0;
  sub_24B57C454(&qword_27F0187C8, sub_24B57C4CC);
  sub_24B5FFDDC();
  v18 = v20;
  v19 = 1;
  sub_24B57C520();
  sub_24B5FFDDC();
  v17 = v20;
  v19 = 2;
  sub_24B5FFDDC();
  v13 = v17;
  v14 = v20;
  v19 = 3;
  sub_24B57C574();
  sub_24B5FFDDC();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  *v11 = v18;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B57C454(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018798, &qword_24B6007E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B57C4CC()
{
  result = qword_27F0187D0;
  if (!qword_27F0187D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187D0);
  }

  return result;
}

unint64_t sub_24B57C520()
{
  result = qword_27F0187D8;
  if (!qword_27F0187D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187D8);
  }

  return result;
}

unint64_t sub_24B57C574()
{
  result = qword_27F0187E0;
  if (!qword_27F0187E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187E0);
  }

  return result;
}

uint64_t Filter.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_24B579B28(a1, *v1);
  MEMORY[0x24C243ED0](v3);
  sub_24B579B28(a1, v4);
  sub_24B5FFB1C();
}

uint64_t Filter.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_24B5FFEFC();
  Filter.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B57C7F4()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_24B5FFEFC();
  Filter.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B57C85C()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_24B5FFEFC();
  Filter.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering6FilterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_24B587A08(*a1, *a2) & 1) == 0 || ((v2 ^ v5) & 1) != 0 || (sub_24B587A08(v3, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_24B5886F8(v4, v7);
}

unint64_t sub_24B57C968()
{
  result = qword_27F0187E8;
  if (!qword_27F0187E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187E8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24B57C9D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24B57CA18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B57CA80()
{
  result = qword_27F0187F0;
  if (!qword_27F0187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187F0);
  }

  return result;
}

unint64_t sub_24B57CAD8()
{
  result = qword_27F0187F8;
  if (!qword_27F0187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0187F8);
  }

  return result;
}

unint64_t sub_24B57CB30()
{
  result = qword_27F018800;
  if (!qword_27F018800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018800);
  }

  return result;
}

uint64_t sub_24B57CB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B60A770 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4D74726F73 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t FilterThemeSectionView.init(sizeClass:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 32) = a6;
  *(a7 + 40) = a4;
  *(a7 + 24) = a5;
  return result;
}

uint64_t FilterThemeSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v43 = a1;
  v41 = *(a1 + 48);
  v46 = *(a1 + 56);
  v45 = *(a1 + 64);
  v44 = *(a1 + 72);
  *(&v62 + 1) = v46;
  *&v63 = v45;
  *(&v63 + 1) = v44;
  v42 = (a1 + 40);
  v48 = *(a1 + 16);
  v40 = *(a1 + 32);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  swift_getWitnessTable();
  *&v63 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  sub_24B57D53C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  *&v62 = swift_getOpaqueTypeConformance2();
  *(&v62 + 1) = MEMORY[0x277CDE478];
  *&v61 = swift_getOpaqueTypeMetadata2();
  *(&v61 + 1) = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v36 = sub_24B5FF94C();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_24B5FF87C();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - v5;
  v38 = sub_24B5FEFEC();
  v39 = *(v38 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v33 = &v32 - v7;
  v8 = sub_24B5FF8DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_24B5FF8EC();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = v14[8];
  MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  v61 = *v2;
  v62 = v19;
  v63 = v2[2];
  *v12 = xmmword_24B600A10;
  (*(v9 + 104))(v12, *MEMORY[0x277CDF108], v8);
  sub_24B5FF8FC();
  v20 = sub_24B5FFB9C();
  *(v20 + 16) = 4;
  v21 = v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v22 = v14[2];
  v22(v21, v18, v13);
  v23 = v14[9];
  v22(v21 + v23, v18, v13);
  v22(v21 + 2 * v23, v18, v13);
  (v15[4])(v21 + 3 * v23, v18, v13);
  sub_24B5FF1DC();
  *&v24 = v40;
  *(&v24 + 1) = *v42;
  v49 = v48;
  v50 = v24;
  v51 = v41;
  v52 = v46;
  v53 = v45;
  v54 = v44;
  v55 = *(v43 + 80);
  v56 = &v61;
  v57 = v20;
  v25 = v34;
  sub_24B5FF86C();

  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_24B5FF75C();
  (*(v37 + 8))(v25, v3);
  v28 = sub_24B5FF3EC();
  v58 = v26;
  v59 = MEMORY[0x277CDFC48];
  v29 = v38;
  v30 = swift_getWitnessTable();
  sub_24B57FC54(v28, 0x4034000000000000, 0, v29, v30);
  return (*(v39 + 8))(v27, v29);
}

unint64_t sub_24B57D53C()
{
  result = qword_27F018818;
  if (!qword_27F018818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
    sub_24B57D5F8();
    sub_24B580814(qword_27F018878, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018818);
  }

  return result;
}

unint64_t sub_24B57D5F8()
{
  result = qword_27F018820;
  if (!qword_27F018820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018828, &qword_24B600A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018830, &qword_24B600A88);
    sub_24B57D6EC();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018820);
  }

  return result;
}

unint64_t sub_24B57D6EC()
{
  result = qword_27F018838;
  if (!qword_27F018838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018830, &qword_24B600A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018840, &unk_24B600A90);
    sub_24B58085C(&qword_27F018848, &qword_27F018840, &unk_24B600A90);
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018838);
  }

  return result;
}

unint64_t sub_24B57D828()
{
  result = qword_27F018850;
  if (!qword_27F018850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018850);
  }

  return result;
}

uint64_t sub_24B57D87C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_24B5FF8EC();
      v5 = sub_24B5FFB9C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_24B5FF8EC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_24B57D9D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v104 = a8;
  v103 = a7;
  v114 = a6;
  v100 = a5;
  v126 = a3;
  v115 = a2;
  v125 = a9;
  v128 = a12;
  v102 = a11;
  v101 = a10;
  v124 = sub_24B5FF23C();
  v123 = *(v124 - 8);
  v18 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v122 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF38C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v119 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B5FF3AC();
  v120 = *(v23 - 8);
  v24 = *(v120 + 64);
  MEMORY[0x28223BE20](v23);
  v118 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24B5FF33C();
  v116 = *(v117 - 8);
  v26 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v127 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a3;
  v144 = a5;
  v145 = a7;
  v146 = a8;
  v147 = a10;
  v148 = a11;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v28 = sub_24B5FFBBC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v143 = v28;
  v144 = MEMORY[0x277D837D0];
  v145 = v29;
  v146 = WitnessTable;
  v147 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v32 = sub_24B57D53C();
  v143 = v31;
  v144 = v32;
  v142[7] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v33 = sub_24B5FF93C();
  v34 = swift_getWitnessTable();
  v143 = v33;
  v144 = v34;
  v92[1] = swift_getOpaqueTypeMetadata2();
  v143 = v33;
  v144 = v34;
  v92[0] = swift_getOpaqueTypeConformance2();
  v35 = sub_24B5FEF2C();
  v109 = *(v35 - 8);
  v36 = *(v109 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = v92 - v37;
  v39 = swift_getWitnessTable();
  v143 = v35;
  v144 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = *(OpaqueTypeMetadata2 - 8);
  v41 = *(v107 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v97 = v92 - v42;
  v143 = v35;
  v144 = v39;
  v92[3] = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = OpaqueTypeMetadata2;
  v144 = v23;
  v44 = MEMORY[0x277CDE478];
  v145 = OpaqueTypeConformance2;
  v146 = MEMORY[0x277CDE478];
  v45 = swift_getOpaqueTypeMetadata2();
  v110 = *(v45 - 8);
  v46 = *(v110 + 64);
  MEMORY[0x28223BE20](v45);
  v108 = v92 - v47;
  v93 = OpaqueTypeMetadata2;
  v143 = OpaqueTypeMetadata2;
  v144 = v23;
  v121 = v23;
  v92[2] = OpaqueTypeConformance2;
  v145 = OpaqueTypeConformance2;
  v146 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v106 = v45;
  v143 = v45;
  v144 = v48;
  v105 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v112 = *(v49 - 8);
  v50 = *(v112 + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v113 = v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v95 = v92 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v111 = v92 - v56;
  v57 = a4;
  v58 = *(a4 - 1);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v55);
  v62 = v92 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = v92 - v64;
  v66 = *(a1 + 16);
  (*(a1 + 8))(v63);
  v96 = v65;
  v67 = v128;
  sub_24B5FC7F0(v62, v57, v128);
  v94 = v58;
  v68 = *(v58 + 8);
  v99 = v58 + 8;
  v98 = v68;
  v68(v62, v57);
  sub_24B5FF3BC();
  v129 = v126;
  v126 = v57;
  v130 = v57;
  v131 = v100;
  v132 = v114;
  v133 = v103;
  v134 = v104;
  v135 = v101;
  v136 = v102;
  v137 = v67;
  v138 = v115;
  v139 = a1;
  v115 = v38;
  sub_24B5EB7C0();
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(v65) = sub_24B5FF3DC();
  *(inited + 32) = v65;
  v70 = sub_24B5FF3BC();
  *(inited + 33) = v70;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v65)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v70)
  {
    sub_24B5FF3CC();
  }

  v71 = v108;
  v72 = v97;
  v73 = v127;
  v74 = v115;
  sub_24B5FF62C();
  (*(v116 + 8))(v73, v117);
  (*(v109 + 8))(v74, v35);
  sub_24B5FF37C();
  v75 = v118;
  sub_24B5FF39C();
  v76 = v93;
  v77 = v121;
  sub_24B5FF67C();
  (*(v120 + 8))(v75, v77);
  (*(v107 + 8))(v72, v76);
  v78 = v122;
  sub_24B5FF22C();
  LOBYTE(v74) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v74)
  {
    sub_24B5FF3CC();
  }

  v79 = v95;
  v80 = v106;
  v81 = v105;
  sub_24B5FF66C();
  (*(v123 + 8))(v78, v124);
  (*(v110 + 8))(v71, v80);
  v143 = v80;
  v144 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v111;
  sub_24B5FC7F0(v79, v49, v82);
  v84 = v112;
  v85 = *(v112 + 8);
  v85(v79, v49);
  v86 = v96;
  v87 = v126;
  (*(v94 + 16))(v62, v96, v126);
  v143 = v62;
  v88 = v113;
  (*(v84 + 16))(v113, v83, v49);
  v144 = v88;
  v142[0] = v87;
  v142[1] = v49;
  v140 = v128;
  v141 = v82;
  sub_24B5F7CDC(&v143, 2uLL, v142);
  v85(v83, v49);
  v89 = v86;
  v90 = v98;
  v98(v89, v87);
  v85(v88, v49);
  return v90(v62, v87);
}

uint64_t sub_24B57E71C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47 = a6;
  v51 = a5;
  v44 = a4;
  v49 = a3;
  v43 = a2;
  v52 = a1;
  v53 = a8;
  v50 = a11;
  v46 = a10;
  v45 = a9;
  v15 = sub_24B5FF28C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v66 = a4;
  v67 = a6;
  v68 = a7;
  v69 = a9;
  v70 = a10;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v18 = sub_24B5FFBBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v65 = v18;
  v66 = MEMORY[0x277D837D0];
  v67 = v19;
  v68 = WitnessTable;
  v69 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v22 = sub_24B57D53C();
  v65 = v21;
  v66 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39[1] = swift_getWitnessTable();
  v23 = sub_24B5FF93C();
  v42 = *(v23 - 8);
  v24 = *(v42 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v39 - v25;
  v40 = swift_getWitnessTable();
  v65 = v23;
  v66 = v40;
  v41 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v32 = v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v39 - v33;

  v39[0] = sub_24B5FF12C();
  v54 = v43;
  v55 = v49;
  v56 = v44;
  v57 = v51;
  v58 = v47;
  v59 = a7;
  v60 = v45;
  v61 = v46;
  v62 = v50;
  v63 = v52;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v35 = v40;
  sub_24B5FF63C();
  (*(v42 + 8))(v26, v23);
  v65 = v23;
  v66 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0(v32, OpaqueTypeMetadata2, v36);
  v37 = *(v28 + 8);
  v37(v32, OpaqueTypeMetadata2);
  sub_24B5FC7F0(v34, OpaqueTypeMetadata2, v36);
  return (v37)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_24B57EC00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a9;
  v47 = a10;
  v48 = a11;
  v63 = a10;
  v53 = type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v19 = sub_24B5FFBBC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018808, &qword_24B600A70);
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = MEMORY[0x277D837D0];
  v60 = v52;
  v61 = WitnessTable;
  v62 = MEMORY[0x277D837E0];
  v50 = sub_24B5FF8CC();
  v54 = *(v50 - 8);
  v21 = *(v54 + 64);
  v22 = MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v51 = &v46 - v24;
  v56 = *(a1 + 5);
  v25 = swift_allocObject();
  v26 = *a1;
  v27 = a1[1];
  v28 = a1;
  v46 = a1;
  *(v25 + 88) = v26;
  v29 = a2;
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v30 = a4;
  *(v25 + 32) = a4;
  *(v25 + 40) = a5;
  v31 = a6;
  *(v25 + 48) = a6;
  *(v25 + 56) = a7;
  v32 = a7;
  v33 = a8;
  v34 = v47;
  *(v25 + 64) = a8;
  *(v25 + 72) = v34;
  v35 = v48;
  *(v25 + 80) = v48;
  *(v25 + 104) = v27;
  *(v25 + 120) = v28[2];

  v58 = v29;
  v59 = a3;
  v60 = v30;
  v61 = a5;
  v62 = v31;
  v63 = v32;
  v64 = v33;
  v65 = v34;
  v66 = v35;
  v36 = type metadata accessor for FilterThemeSectionView();
  (*(*(v36 - 8) + 16))(&v58, v46, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018810, &qword_24B600A78);
  v38 = sub_24B57D53C();
  v58 = v37;
  v59 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v40 = v49;
  sub_24B5FF8AC();
  v57 = OpaqueTypeConformance2;
  v41 = v50;
  v42 = swift_getWitnessTable();
  v43 = v51;
  sub_24B5FC7F0(v40, v41, v42);
  v44 = *(v54 + 8);
  v44(v40, v41);
  sub_24B5FC7F0(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_24B57EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a2;
  v103 = a1;
  v120 = a4;
  v7 = sub_24B5FFA3C();
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  MEMORY[0x28223BE20](v7);
  v119 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B5FF9DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B5FF9FC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v116 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = &v99 - v18;
  v114 = sub_24B5FF1BC();
  v112 = *(v114 - 8);
  v19 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3[6];
  v126 = a3[7];
  v127 = v21;
  v22 = a3[8];
  v124 = a3[9];
  v125 = v22;
  *&v144 = v21;
  *(&v144 + 1) = v126;
  *&v145 = v22;
  *(&v145 + 1) = v124;
  v23 = a3[4];
  *&v143 = a3[2];
  *(&v143 + 1) = v23;
  v24 = v143;
  v128 = v143;
  v25 = v23;
  v107 = v23;
  v26 = type metadata accessor for Option();
  v123 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v99 - v29;
  v102 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018840, &unk_24B600A90);
  v32 = *(v31 - 8);
  v109 = v31;
  v110 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v104 = &v99 - v34;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018830, &qword_24B600A88);
  v35 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v105 = &v99 - v36;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018828, &qword_24B600A80);
  v37 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v130 = &v99 - v38;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018810, &qword_24B600A78);
  v39 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v132 = &v99 - v40;
  v41 = v4[1];
  v143 = *v4;
  v144 = v41;
  v145 = v4[2];
  v101 = v27;
  (*(v27 + 16))(v30, a1, v26);
  v42 = (*(v27 + 80) + 136) & ~*(v27 + 80);
  v43 = (v28 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = a3;
  v108 = a3[3];
  v106 = a3[5];
  v46 = v106;
  *&v47 = v24;
  *(&v47 + 1) = v108;
  v48 = v47;
  v100 = v47;
  v49 = v144;
  *(v44 + 88) = v143;
  *&v47 = v25;
  *(&v47 + 1) = v46;
  v99 = v47;
  *(v44 + 16) = v48;
  *(v44 + 32) = v47;
  v50 = v126;
  v51 = v127;
  *(v44 + 48) = v127;
  *(v44 + 56) = v50;
  v52 = v124;
  v53 = v125;
  *(v44 + 64) = v125;
  *(v44 + 72) = v52;
  v54 = a3[10];
  *(v44 + 80) = v54;
  *(v44 + 104) = v49;
  *(v44 + 120) = v145;
  (*(v101 + 32))(v44 + v42, v102, v123);
  *(v44 + v43) = v131;
  v133 = v100;
  v134 = v99;
  v135 = v51;
  v136 = v50;
  v137 = v53;
  v138 = v52;
  v55 = v103;
  v139 = v54;
  v140 = v103;
  v141 = &v143;
  (*(*(v45 - 1) + 16))(v142, &v143, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018918, &qword_24B600B80);
  sub_24B580550();
  v56 = v104;
  sub_24B5FF81C();
  sub_24B58085C(&qword_27F018848, &qword_27F018840, &unk_24B600A90);
  sub_24B57D828();
  v57 = v105;
  v58 = v109;
  sub_24B5FF5BC();
  (*(v110 + 8))(v56, v58);
  v59 = *(v123 + 68);
  v60 = v55;
  LOBYTE(v55) = *(v55 + v59) == 0;
  KeyPath = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = v55;
  v63 = &v57[*(v111 + 36)];
  *v63 = KeyPath;
  v63[1] = sub_24B58074C;
  v63[2] = v62;
  sub_24B5FF3BC();
  sub_24B5FF90C();
  sub_24B57D6EC();
  v64 = v130;
  sub_24B5FF69C();
  v65 = v57;
  v66 = v60;
  sub_24B58090C(v65, &qword_27F018830, &qword_24B600A88);
  v67 = &v64[*(v129 + 36)];
  v68 = *MEMORY[0x277CE0118];
  v69 = sub_24B5FF18C();
  (*(*(v69 - 8) + 104))(v67, v68, v69);
  v70 = v60;
  v71 = v106;
  v72 = sub_24B580754(v70, v128, v108, v107, v106, v127, v126, v125, v124);
  *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0) + 36)] = v72;
  v73 = sub_24B5FF90C();
  v75 = v74;
  v76 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018870, &qword_24B600AA0) + 36)];
  *v76 = v73;
  v76[1] = v75;
  if (*(v66 + v59) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v77 = v112;
    v78 = *(v112 + 72);
    v79 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v142[0] = v80;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v82 = v113;
    v81 = v114;
    sub_24B5FFC6C();
    v83 = v77;
  }

  else
  {
    v142[0] = MEMORY[0x277D84F90];
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v82 = v113;
    v81 = v114;
    sub_24B5FFC6C();
    v83 = v112;
  }

  sub_24B57D5F8();
  v84 = v130;
  sub_24B5FF68C();
  (*(v83 + 8))(v82, v81);
  sub_24B58090C(v84, &qword_27F018828, &qword_24B600A80);
  v85 = *(v71 + 24);
  v86 = v128;
  v85(v128, v71);
  v87 = v131;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v89 = (v85)(v86, v71);
  v90 = MEMORY[0x277D837D0];
  *(inited + 48) = v89;
  *(inited + 56) = v91;
  *(inited + 72) = v90;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v90;
  *(inited + 128) = 0x6973736572706D69;
  v92 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v87;
  *(inited + 168) = v92;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v90;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v93 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v93);
  v94 = v118;
  sub_24B5FFA0C();
  v95 = sub_24B5FFA1C();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  v96 = v119;
  sub_24B5FFA2C();
  sub_24B57D53C();
  v97 = v132;
  sub_24B5FF55C();
  (*(v121 + 8))(v96, v122);
  sub_24B5808A4(v94);
  return sub_24B58090C(v97, &qword_27F018810, &qword_24B600A78);
}

uint64_t sub_24B57FC54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24B5FF2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24B5FEF1C();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_24B5FF2DC();
  MEMORY[0x24C2436E0](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24B57FD90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_24B57FDE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v27 = sub_24B5FF12C();
  sub_24B580024(a1, a2, a3, a4, a5, a6, a7, &v29, a9, a10);
  v18 = *(&v29 + 1);
  v26 = v29;
  LOBYTE(a2) = v30;
  v19 = *(&v30 + 1);
  v20 = v31;
  v21 = BYTE8(v31);
  v38 = 1;
  v37 = v30;
  v36 = BYTE8(v31);
  LOBYTE(a7) = sub_24B5FF3FC();
  sub_24B5FF90C();
  sub_24B5FF03C();
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[7] = v29;
  *&v28[23] = v30;
  *&v28[39] = v31;
  v22 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018918, &qword_24B600B80) + 36);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24B5FF18C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018960, &qword_24B600BA0) + 36)) = 0;
  *(a8 + 80) = xmmword_24B600A50;
  *(a8 + 96) = xmmword_24B600A50;
  *(a8 + 177) = *&v28[64];
  *(a8 + 193) = *&v28[80];
  *(a8 + 209) = *&v28[96];
  *(a8 + 113) = *v28;
  *(a8 + 129) = *&v28[16];
  result = *&v28[32];
  *(a8 + 145) = *&v28[32];
  *a8 = v27;
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  *(a8 + 24) = v26;
  *(a8 + 32) = v18;
  *(a8 + 40) = a2;
  *(a8 + 48) = v19;
  *(a8 + 56) = v20;
  *(a8 + 64) = v21;
  *(a8 + 72) = a7;
  *(a8 + 112) = 0;
  *(a8 + 224) = *&v28[111];
  *(a8 + 161) = *&v28[48];
  return result;
}

uint64_t sub_24B580024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  (*(a5 + 24))(a2, a5);
  sub_24B58096C();
  v11 = sub_24B5FF53C();
  v13 = v12;
  v15 = v14;
  sub_24B5FF4BC();
  v16 = sub_24B5FF50C();
  v18 = v17;
  v20 = v19;

  sub_24B5809C0(v11, v13, v15 & 1);

  v21 = sub_24B5FF4FC();
  v23 = v22;
  v25 = v24;
  sub_24B5809C0(v16, v18, v20 & 1);

  sub_24B5809D0(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  v26 = sub_24B5FF4DC();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;
  sub_24B5809C0(v21, v23, v25 & 1);

  *a8 = v26;
  *(a8 + 8) = v28;
  *(a8 + 16) = v16 & 1;
  *(a8 + 24) = v31;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  sub_24B580A5C(v26, v28, v16 & 1);

  sub_24B5809C0(v26, v28, v16 & 1);
}

uint64_t sub_24B580254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24B5802B0(uint64_t a1, int a2)
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

uint64_t sub_24B5802F8(uint64_t result, int a2, int a3)
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

uint64_t sub_24B5803D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *(v3 + 88);
  v15 = *(v3 + 104);
  v16 = *(v3 + 120);
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v7 = type metadata accessor for FilterThemeSectionView();
  return sub_24B57EFCC(a2, a1, v7, a3);
}

uint64_t sub_24B58045C()
{
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v1 = *(type metadata accessor for Option() - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v3 = *(v0 + 120);
  return (*(v0 + 112))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_24B580510@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[12];
  v4 = v1[10];
  *&result = sub_24B57FDE4(v1[11], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], a1, v1[8], v1[9]).n128_u64[0];
  return result;
}

unint64_t sub_24B580550()
{
  result = qword_27F018920;
  if (!qword_27F018920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018918, &qword_24B600B80);
    sub_24B580608();
    sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018920);
  }

  return result;
}

unint64_t sub_24B580608()
{
  result = qword_27F018928;
  if (!qword_27F018928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018930, &qword_24B600B88);
    sub_24B580694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018928);
  }

  return result;
}

unint64_t sub_24B580694()
{
  result = qword_27F018938;
  if (!qword_27F018938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018940, &qword_24B600B90);
    sub_24B58085C(&qword_27F018948, &qword_27F018950, &qword_24B600B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018938);
  }

  return result;
}

uint64_t sub_24B580754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = type metadata accessor for Option();
  if (*(a1 + *(v10 + 68)) && *(a1 + *(v10 + 68)) != 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, a2, a4, a6, a7, a8, a9}];
    return sub_24B5FF76C();
  }

  else
  {
    v11 = [objc_opt_self() systemGray5Color];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B580814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B58085C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B5808A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B58090C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B58096C()
{
  result = qword_27F0189A0;
  if (!qword_27F0189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189A0);
  }

  return result;
}

uint64_t sub_24B5809C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B5809D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = type metadata accessor for Option();
  if (*(a1 + *(v10 + 68)))
  {
    if (*(a1 + *(v10 + 68)) == 1)
    {
      return sub_24B5FF79C();
    }

    else
    {
      return sub_24B5FF77C();
    }
  }

  else
  {
    v12 = [objc_opt_self() darkGrayColor];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B580A5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL static TimedFilterContent<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

uint64_t FilterModalitySectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  *(a7 + 16) = a8;
  *a7 = a1;
  *(a7 + 8) = a2;
  v13 = type metadata accessor for FilterModalitySectionView();
  v14 = v13[28];

  a3(v15);

  *(a7 + v13[30]) = a4;
  v17 = (a7 + v13[29]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t FilterModalitySectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = *(a1 + 80);
  v47 = *(a1 + 88);
  v67 = v48;
  v68 = v47;
  v45 = (a1 + 40);
  v3 = *(a1 + 24);
  v36 = *(a1 + 32);
  v42 = v3;
  v46 = (a1 + 56);
  v43 = *(a1 + 48);
  v44 = *(a1 + 64);
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  sub_24B5FFBBC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  swift_getWitnessTable();
  v67 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v62 = sub_24B5813FC();
  swift_getWitnessTable();
  sub_24B5FF93C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B5FEF2C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B5FF3AC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = MEMORY[0x277CDE478];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v38 = sub_24B5FF94C();
  WitnessTable = swift_getWitnessTable();
  v35 = sub_24B5FF87C();
  v39 = *(v35 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - v5;
  v40 = sub_24B5FEFEC();
  v41 = *(v40 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v33 = &v32 - v7;
  v8 = sub_24B5FF8DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_24B5FF8EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = xmmword_24B600A10;
  (*(v9 + 104))(v12, *MEMORY[0x277CDF108], v8);
  sub_24B5FF8FC();
  v18 = sub_24B5FFB9C();
  *(v18 + 16) = 5;
  v19 = v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v20 = *(v14 + 16);
  v20(v19, v17, v13);
  v21 = *(v14 + 72);
  v20(v19 + v21, v17, v13);
  v20(v19 + 2 * v21, v17, v13);
  v20(v19 + 3 * v21, v17, v13);
  (*(v14 + 32))(v19 + 4 * v21, v17, v13);
  sub_24B5FF1DC();
  *&v22 = *(a1 + 16);
  *(&v22 + 1) = v42;
  *&v23 = v36;
  *(&v23 + 1) = *v45;
  v52 = v23;
  v51 = v22;
  *&v22 = v43;
  *(&v22 + 1) = *v46;
  v53 = v22;
  v54 = v44;
  v55 = v48;
  v56 = v47;
  v57 = *(a1 + 96);
  v58 = v49;
  v59 = v18;
  v24 = v34;
  sub_24B5FF86C();

  v25 = v35;
  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_24B5FF75C();
  (*(v39 + 8))(v24, v25);
  v28 = sub_24B5FF3EC();
  v60 = v26;
  v61 = MEMORY[0x277CDFC48];
  v29 = v40;
  v30 = swift_getWitnessTable();
  sub_24B57FC54(v28, 0x4034000000000000, 0, v29, v30);
  return (*(v41 + 8))(v27, v29);
}

unint64_t sub_24B5813FC()
{
  result = qword_27F0189B0;
  if (!qword_27F0189B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189B8, &qword_24B600C18);
    sub_24B5814F4();
    swift_getOpaqueTypeConformance2();
    sub_24B580814(qword_27F018878, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189B0);
  }

  return result;
}

unint64_t sub_24B5814F4()
{
  result = qword_27F0189C0;
  if (!qword_27F0189C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189B8, &qword_24B600C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189C8, &qword_24B600C20);
    sub_24B581604();
    sub_24B57D828();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189C0);
  }

  return result;
}

unint64_t sub_24B581604()
{
  result = qword_27F0189D0;
  if (!qword_27F0189D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189C8, &qword_24B600C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189D8, &qword_24B600C28);
    sub_24B5816F8();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189D0);
  }

  return result;
}

unint64_t sub_24B5816F8()
{
  result = qword_27F0189E0;
  if (!qword_27F0189E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189D8, &qword_24B600C28);
    sub_24B58085C(&qword_27F0189E8, qword_27F0189F0, &unk_24B600C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0189E0);
  }

  return result;
}

uint64_t sub_24B5817B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v136 = a8;
  v119 = a6;
  v139 = a5;
  v100 = a4;
  v96 = a3;
  v122 = a1;
  v123 = a2;
  v133 = a9;
  v138 = a14;
  v102 = a13;
  v101 = a12;
  v134 = a10;
  v17 = sub_24B5FF23C();
  v131 = *(v17 - 8);
  v132 = v17;
  v18 = *(v131 + 64);
  MEMORY[0x28223BE20](v17);
  v130 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF38C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v127 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B5FF3AC();
  v128 = *(v23 - 8);
  v24 = *(v128 + 64);
  MEMORY[0x28223BE20](v23);
  v126 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24B5FF33C();
  v124 = *(v26 - 8);
  v125 = v26;
  v27 = *(v124 + 64);
  MEMORY[0x28223BE20](v26);
  v137 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = a4;
  v157 = a7;
  v158 = a10;
  v159 = a11;
  v95 = a11;
  v160 = a12;
  v161 = a13;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v29 = sub_24B5FFBBC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v156 = v29;
  v157 = MEMORY[0x277D837D0];
  v158 = v30;
  v159 = WitnessTable;
  v160 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v167 = sub_24B5813FC();
  swift_getWitnessTable();
  v32 = sub_24B5FF93C();
  v33 = swift_getWitnessTable();
  v156 = v32;
  v157 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v156 = v32;
  v157 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_24B5FEF2C();
  v111 = *(v34 - 8);
  v35 = *(v111 + 64);
  MEMORY[0x28223BE20](v34);
  v97 = &v94 - v36;
  v37 = swift_getWitnessTable();
  v156 = v34;
  v157 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v108 = *(v38 - 8);
  v39 = *(v108 + 64);
  MEMORY[0x28223BE20](v38);
  v106 = &v94 - v40;
  v112 = v34;
  v156 = v34;
  v157 = v37;
  v104 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v156 = v38;
  v157 = v23;
  v42 = MEMORY[0x277CDE478];
  v158 = v41;
  v159 = MEMORY[0x277CDE478];
  v43 = swift_getOpaqueTypeMetadata2();
  v114 = *(v43 - 8);
  v44 = *(v114 + 64);
  MEMORY[0x28223BE20](v43);
  v109 = &v94 - v45;
  v110 = v38;
  v156 = v38;
  v157 = v23;
  v129 = v23;
  v103 = v41;
  v158 = v41;
  v159 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v117 = v43;
  v156 = v43;
  v157 = v46;
  v107 = v46;
  v121 = swift_getOpaqueTypeMetadata2();
  v116 = *(v121 - 8);
  v47 = *(v116 + 64);
  v48 = MEMORY[0x28223BE20](v121);
  v120 = &v94 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v105 = &v94 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v115 = &v94 - v53;
  v54 = v139;
  v118 = *(v139 - 8);
  v55 = *(v118 + 64);
  v56 = MEMORY[0x28223BE20](v52);
  v113 = &v94 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v94 - v58;
  v156 = a3;
  v61 = v100;
  v60 = v101;
  v157 = v100;
  v158 = v54;
  v62 = v119;
  v159 = v119;
  v160 = a7;
  v161 = v136;
  v162 = v134;
  v163 = a11;
  v164 = v101;
  v63 = v102;
  v64 = v138;
  v165 = v102;
  v166 = v138;
  v65 = type metadata accessor for FilterModalitySectionView();
  v66 = v122;
  v67 = v122 + *(v65 + 112);
  v135 = v59;
  sub_24B5FC7F0(v67, v54, v64);
  sub_24B5FF3BC();
  v140 = v96;
  v141 = v61;
  v142 = v54;
  v143 = v62;
  v144 = a7;
  v145 = v136;
  v146 = v134;
  v147 = v95;
  v148 = v60;
  v149 = v63;
  v68 = v64;
  v69 = v97;
  v150 = v68;
  v151 = v123;
  v152 = v66;
  sub_24B5EB7C0();
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(a7) = sub_24B5FF3DC();
  *(inited + 32) = a7;
  v71 = sub_24B5FF3BC();
  *(inited + 33) = v71;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != a7)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v71)
  {
    sub_24B5FF3CC();
  }

  v72 = v109;
  v73 = v106;
  v74 = v137;
  v75 = v112;
  sub_24B5FF62C();
  (*(v124 + 8))(v74, v125);
  (*(v111 + 8))(v69, v75);
  sub_24B5FF37C();
  v76 = v126;
  sub_24B5FF39C();
  v77 = v110;
  v78 = v129;
  sub_24B5FF67C();
  (*(v128 + 8))(v76, v78);
  (*(v108 + 8))(v73, v77);
  v79 = v130;
  sub_24B5FF22C();
  LOBYTE(v78) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v78)
  {
    sub_24B5FF3CC();
  }

  v80 = v105;
  v81 = v117;
  v82 = v107;
  sub_24B5FF66C();
  (*(v131 + 8))(v79, v132);
  (*(v114 + 8))(v72, v81);
  v156 = v81;
  v157 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v115;
  v85 = v121;
  sub_24B5FC7F0(v80, v121, v83);
  v86 = v116;
  v137 = *(v116 + 8);
  (v137)(v80, v85);
  v87 = v118;
  v88 = v113;
  v89 = v139;
  (*(v118 + 16))(v113, v135, v139);
  v156 = v88;
  v90 = v120;
  (*(v86 + 16))(v120, v84, v85);
  v157 = v90;
  v155[0] = v89;
  v155[1] = v85;
  v153 = v138;
  v154 = v83;
  sub_24B5F7CDC(&v156, 2uLL, v155);
  v91 = v137;
  (v137)(v84, v85);
  v92 = *(v87 + 8);
  v92(v135, v89);
  v91(v90, v85);
  return (v92)(v88, v89);
}

uint64_t sub_24B58234C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B5823A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a7;
  v42 = a6;
  v51 = a5;
  v49 = a4;
  v41 = a3;
  v48 = a2;
  v53 = a1;
  v54 = a8;
  v50 = a13;
  v46 = a12;
  v45 = a11;
  v44 = a10;
  v43 = a9;
  v15 = sub_24B5FF28C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v47 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a3;
  v69 = a6;
  v70 = a9;
  v71 = a10;
  v72 = a11;
  v73 = a12;
  type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v18 = sub_24B5FFBBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  WitnessTable = swift_getWitnessTable();
  v68 = v18;
  v69 = MEMORY[0x277D837D0];
  v70 = v19;
  v71 = WitnessTable;
  v72 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v67 = sub_24B5813FC();
  swift_getWitnessTable();
  v21 = sub_24B5FF93C();
  v40 = *(v21 - 8);
  v22 = *(v40 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v38 = swift_getWitnessTable();
  v68 = v21;
  v69 = v38;
  v39 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v37 - v31;

  v37 = sub_24B5FF12C();
  v55 = v48;
  v56 = v41;
  v57 = v49;
  v58 = v51;
  v59 = v42;
  v60 = v52;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v65 = v50;
  v66 = v53;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v33 = v38;
  sub_24B5FF63C();
  (*(v40 + 8))(v24, v21);
  v68 = v21;
  v69 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v26 + 8);
  v35(v30, OpaqueTypeMetadata2);
  sub_24B5FC7F0(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v35)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_24B58288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v59 = a7;
  v60 = a9;
  v56 = a4;
  v57 = a5;
  v54 = a1;
  v55 = a2;
  v58 = a13;
  v62 = a2;
  v63 = a3;
  v46 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v48 = a6;
  v68 = a8;
  v69 = a10;
  v52 = a8;
  v49 = a10;
  v70 = a11;
  v71 = a12;
  v50 = a11;
  v51 = a12;
  v72 = a13;
  v16 = type metadata accessor for FilterModalitySectionView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &v44 - v19;
  v62 = a3;
  v63 = a6;
  v64 = a8;
  v65 = a10;
  v66 = a11;
  v67 = a12;
  v53 = type metadata accessor for Option();
  swift_getTupleTypeMetadata2();
  v20 = sub_24B5FFBBC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0189A8, &qword_24B600C10);
  v47 = v21;
  WitnessTable = swift_getWitnessTable();
  v62 = v20;
  v63 = MEMORY[0x277D837D0];
  v64 = v21;
  v65 = WitnessTable;
  v66 = MEMORY[0x277D837E0];
  v23 = sub_24B5FF8CC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v44 - v29;
  v31 = *(v54 + *(v16 + 120));
  v32 = v45;
  (*(v17 + 16))(v45);
  v33 = (*(v17 + 80) + 104) & ~*(v17 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 2) = v55;
  *(v34 + 3) = v35;
  v36 = v57;
  *(v34 + 4) = v56;
  *(v34 + 5) = v36;
  v37 = v59;
  *(v34 + 6) = v48;
  *(v34 + 7) = v37;
  v38 = v49;
  *(v34 + 8) = v52;
  *(v34 + 9) = v38;
  v39 = v51;
  *(v34 + 10) = v50;
  *(v34 + 11) = v39;
  *(v34 + 12) = v58;
  (*(v17 + 32))(&v34[v33], v32, v16);
  v40 = sub_24B5813FC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF8AC();
  v61 = v40;
  v41 = swift_getWitnessTable();
  sub_24B5FC7F0(v28, v23, v41);
  v42 = *(v24 + 8);
  v42(v28, v23);
  sub_24B5FC7F0(v30, v23, v41);
  return (v42)(v30, v23);
}

uint64_t sub_24B582CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v141 = a6;
  *(&v141 + 1) = a7;
  v142 = a4;
  v134 = a3;
  v135 = a2;
  v136 = a1;
  v126 = a9;
  v109 = a13;
  v131 = *(&a12 + 1);
  v129 = a10;
  v125 = sub_24B5FF1BC();
  v123 = *(v125 - 8);
  v15 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24B5FFA3C();
  v121 = *(v17 - 8);
  v122 = v17;
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v17);
  v119 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FF9DC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v117 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B5FF9FC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v115 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v116 = &v102 - v28;
  *&v158 = a5;
  *(&v158 + 1) = a8;
  v130 = a8;
  v128 = a11;
  v159 = a11;
  v138 = a12;
  v139 = *(&a11 + 1);
  v160 = a12;
  v140 = type metadata accessor for Option();
  v127 = *(v140 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x28223BE20](v140);
  v31 = &v102 - v30;
  v108 = &v102 - v30;
  *&v158 = v142;
  *(&v158 + 1) = a5;
  v159 = v141;
  *&v160 = a8;
  *(&v160 + 1) = a10;
  v161 = a11;
  v162 = a12;
  v32 = v109;
  v163 = v109;
  v33 = type metadata accessor for FilterModalitySectionView();
  v106 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v102 - v36;
  v107 = &v102 - v36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189D8, &qword_24B600C28);
  v38 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - v39;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189C8, &qword_24B600C20);
  v40 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v102 - v41;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0189B8, &qword_24B600C18);
  v42 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133 - 8);
  v114 = &v102 - v43;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A80, &qword_24B600CD0);
  v118 = *(v120 - 8);
  v44 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v137 = &v102 - v45;
  v104 = v34;
  (*(v34 + 16))(v37, v134, v33);
  v46 = v127;
  (*(v127 + 16))(v31, v135, v140);
  v47 = (*(v34 + 80) + 104) & ~*(v34 + 80);
  v105 = (v35 + *(v46 + 80) + v47) & ~*(v46 + 80);
  v102 = v47;
  v103 = (v29 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = *(&v141 + 1);
  v50 = v142;
  *(v48 + 2) = v142;
  *(v48 + 3) = a5;
  v132 = a5;
  v51 = v141;
  *(v48 + 4) = v141;
  *(v48 + 5) = v49;
  v53 = v129;
  v52 = v130;
  *(v48 + 6) = v130;
  *(v48 + 7) = v53;
  v54 = v128;
  v56 = v138;
  v55 = v139;
  *(v48 + 8) = v128;
  *(v48 + 9) = v55;
  v57 = v131;
  *(v48 + 10) = v56;
  *(v48 + 11) = v57;
  *(v48 + 12) = v32;
  (*(v104 + 32))(&v48[v102], v107, v106);
  (*(v127 + 32))(&v48[v105], v108, v140);
  *&v48[v103] = v136;
  v143 = v50;
  v144 = a5;
  v145 = v51;
  v146 = v49;
  v147 = v52;
  v148 = v53;
  v149 = v54;
  v150 = v139;
  v58 = v131;
  v151 = v138;
  v152 = v131;
  v59 = v135;
  v153 = v32;
  v154 = v135;
  v155 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A88, &qword_24B600CD8);
  sub_24B584AF0();
  v60 = v110;
  sub_24B5FF81C();
  sub_24B5FF90C();
  sub_24B5FEF7C();
  v61 = (v60 + *(v112 + 36));
  v62 = v159;
  *v61 = v158;
  v61[1] = v62;
  v61[2] = v160;
  sub_24B5FF3BC();
  sub_24B5FF91C();
  sub_24B5816F8();
  v63 = v111;
  sub_24B5FF69C();
  sub_24B58090C(v60, &qword_27F0189D8, &qword_24B600C28);
  v64 = v63 + *(v113 + 36);
  v65 = *MEMORY[0x277CE0118];
  v66 = sub_24B5FF18C();
  (*(*(v66 - 8) + 104))(v64, v65, v66);
  *(&v101 + 1) = v138;
  *&v101 = v139;
  v67 = v129;
  v68 = sub_24B584BD4(v59, v142, v132, v141, *(&v141 + 1), v130, v129, v128, v101, v58);
  *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0) + 36)) = v68;
  v69 = sub_24B5FF90C();
  v71 = v70;
  v72 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018870, &qword_24B600AA0) + 36));
  *v72 = v69;
  v72[1] = v71;
  sub_24B581604();
  sub_24B57D828();
  v73 = v114;
  sub_24B5FF5BC();
  sub_24B58090C(v63, &qword_27F0189C8, &qword_24B600C20);
  v74 = v140;
  v142 = *(v140 + 68);
  LOBYTE(v69) = *(v59 + v142) == 0;
  KeyPath = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v69;
  v77 = (v73 + *(v133 + 36));
  *v77 = KeyPath;
  v77[1] = sub_24B58074C;
  v77[2] = v76;
  Option.identifier.getter(v74);
  v78 = v136;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 40) = 0xE400000000000000;
  v80 = (*(v67 + 24))(v132, v67);
  v81 = MEMORY[0x277D837D0];
  *(inited + 48) = v80;
  *(inited + 56) = v82;
  *(inited + 72) = v81;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v81;
  *(inited + 128) = 0x6973736572706D69;
  v83 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v78;
  *(inited + 168) = v83;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v81;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v84 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v84);
  v85 = v116;
  sub_24B5FFA0C();
  v86 = sub_24B5FFA1C();
  v87 = v85;
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v88 = v119;
  sub_24B5FFA2C();
  v89 = sub_24B5814F4();
  v90 = v133;
  sub_24B5FF55C();
  (*(v121 + 8))(v88, v122);
  sub_24B58090C(v87, &qword_27F018910, &qword_24B606920);
  sub_24B58090C(v73, &qword_27F0189B8, &qword_24B600C18);
  if (*(v59 + v142) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v91 = v123;
    v92 = *(v123 + 72);
    v93 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v156 = v94;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v96 = v124;
    v95 = v125;
    sub_24B5FFC6C();
    v97 = v91;
  }

  else
  {
    v156 = v84;
    sub_24B580814(&qword_27F018970, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0);
    v96 = v124;
    v95 = v125;
    sub_24B5FFC6C();
    v97 = v123;
  }

  v156 = v90;
  v157 = v89;
  swift_getOpaqueTypeConformance2();
  v98 = v120;
  v99 = v137;
  sub_24B5FF68C();
  (*(v97 + 8))(v96, v95);
  return (*(v118 + 8))(v99, v98);
}

uint64_t sub_24B583A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  *a8 = sub_24B5FF12C();
  *(a8 + 8) = 0x4018000000000000;
  *(a8 + 16) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AA8, &qword_24B600D38);
  sub_24B583BB8(a1, a2, a3, a4, a5, a6, a7, a8 + *(v21 + 44), a9, __PAIR128__(a11, a10), a12, a13);
  v22 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018A88, &qword_24B600CD8) + 36);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24B5FF18C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018960, &qword_24B600BA0);
  *(v22 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24B583BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v91 = a2;
  v92 = a4;
  v85 = a8;
  v89 = a12;
  v88 = a11;
  v87 = a10;
  v90 = a9;
  v17 = sub_24B5FF7CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB0, &qword_24B600D40);
  v22 = *(v84 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v84);
  v80 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB8, &qword_24B600D48);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v86 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v93 = &v78 - v29;
  v30 = *(a7 + 16);
  v95 = a1;
  v30(a3, a7);
  v94 = a3;
  v82 = a5;
  v83 = a6;
  if (v31)
  {
    sub_24B5FF7DC();
    (*(v18 + 104))(v21, *MEMORY[0x277CE0FE0], v17);
    v79 = sub_24B5FF7FC();

    (*(v18 + 8))(v21, v17);
    v32 = sub_24B584C9C(v95, v91, v94, v92, a5, a6, a7, v90, v87, v88);
    sub_24B5FF90C();
    sub_24B5FEF7C();
    v33 = v118;
    v34 = a7;
    v35 = v120;
    v37 = v122;
    v36 = v123;
    LOBYTE(v97) = v119;
    v117 = v121;
    v38 = sub_24B5FF42C();
    sub_24B5FEF1C();
    v96 = 0;
    *&v104 = v79;
    *(&v104 + 1) = v32;
    *&v105 = v33;
    BYTE8(v105) = v97;
    *&v106 = v35;
    a7 = v34;
    BYTE8(v106) = v117;
    *&v107 = v37;
    *(&v107 + 1) = v36;
    LOBYTE(v108) = v38;
    *(&v108 + 1) = v39;
    *&v109[0] = v40;
    *(&v109[0] + 1) = v41;
    *&v109[1] = v42;
    BYTE8(v109[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AD0, &qword_24B600D60);
    sub_24B584D30();
    v43 = v80;
    a3 = v94;
    sub_24B5FF64C();
    v114 = v108;
    v115[0] = v109[0];
    *(v115 + 9) = *(v109 + 9);
    v110 = v104;
    v111 = v105;
    v112 = v106;
    v113 = v107;
    sub_24B58090C(&v110, &qword_27F018AD0, &qword_24B600D60);
    v44 = v93;
    sub_24B584F00(v43, v93);
    (*(v22 + 56))(v44, 0, 1, v84);
  }

  else
  {
    (*(v22 + 56))(v93, 1, 1, v84);
  }

  v81 = a7;
  *&v110 = (*(a7 + 24))(a3, a7);
  *(&v110 + 1) = v45;
  sub_24B58096C();
  v46 = sub_24B5FF53C();
  v48 = v47;
  v50 = v49;
  sub_24B5FF4BC();
  v51 = sub_24B5FF50C();
  v53 = v52;
  v55 = v54;
  v84 = v56;

  sub_24B5809C0(v46, v48, v50 & 1);

  v57 = sub_24B5FF4FC();
  v59 = v58;
  LOBYTE(v46) = v60;
  sub_24B5809C0(v51, v53, v55 & 1);

  *&v110 = sub_24B584C9C(v95, v91, v94, v92, v82, v83, v81, v90, v87, v88);
  v61 = sub_24B5FF4DC();
  v63 = v62;
  LOBYTE(v51) = v64;
  v95 = v65;
  sub_24B5809C0(v57, v59, v46 & 1);

  sub_24B5FF91C();
  sub_24B5FF03C();
  v117 = v51 & 1;
  v66 = v93;
  v67 = v86;
  sub_24B57BAFC(v93, v86, &qword_27F018AB8, &qword_24B600D48);
  v68 = v85;
  sub_24B57BAFC(v67, v85, &qword_27F018AB8, &qword_24B600D48);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC0, &unk_24B600D50) + 48));
  *&v104 = v61;
  *(&v104 + 1) = v63;
  LOBYTE(v105) = v51 & 1;
  *(&v105 + 1) = *v116;
  DWORD1(v105) = *&v116[3];
  v70 = v95;
  *(&v105 + 1) = v95;
  v109[1] = v101;
  v109[2] = v102;
  v109[3] = v103;
  v108 = v99;
  v109[0] = v100;
  v106 = v97;
  v107 = v98;
  v71 = v100;
  v72 = v102;
  v73 = v103;
  v69[6] = v101;
  v69[7] = v72;
  v69[8] = v73;
  v74 = v105;
  v75 = v107;
  v76 = v108;
  v69[2] = v106;
  v69[3] = v75;
  v69[4] = v76;
  v69[5] = v71;
  *v69 = v104;
  v69[1] = v74;
  sub_24B57BAFC(&v104, &v110, &qword_27F018AC8, &unk_24B603450);
  sub_24B58090C(v66, &qword_27F018AB8, &qword_24B600D48);
  *&v110 = v61;
  *(&v110 + 1) = v63;
  LOBYTE(v111) = v51 & 1;
  *(&v111 + 1) = *v116;
  DWORD1(v111) = *&v116[3];
  *(&v111 + 1) = v70;
  v115[1] = v101;
  v115[2] = v102;
  v115[3] = v103;
  v112 = v97;
  v113 = v98;
  v114 = v99;
  v115[0] = v100;
  sub_24B58090C(&v110, &qword_27F018AC8, &unk_24B603450);
  return sub_24B58090C(v67, &qword_27F018AB8, &qword_24B600D48);
}

unint64_t sub_24B584348(uint64_t a1)
{
  result = sub_24B584750();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      type metadata accessor for Option();
      result = sub_24B5FFBBC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B584418(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 32) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24B584570(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        *result = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 32) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_24B584750()
{
  result = qword_27F018A78;
  if (!qword_27F018A78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F018A78);
  }

  return result;
}

uint64_t sub_24B584824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = v3[3];
  v18 = v3[2];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v13 = *(type metadata accessor for FilterModalitySectionView() - 8);
  *(&v16 + 1) = v10;
  *(&v15 + 1) = v9;
  *&v16 = v11;
  *&v15 = v8;
  return sub_24B582CDC(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v18, v17, v4, v5, v6, a3, v7, v15, v16, v12);
}

uint64_t sub_24B58490C()
{
  v19 = *(v0 + 4);
  v1 = *(v0 + 6);
  v17 = *(v0 + 7);
  v18 = *(v0 + 5);
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v16 = *(v0 + 12);
  v6 = *(type metadata accessor for FilterModalitySectionView() - 8);
  v7 = *(v6 + 64);
  v8 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v9 = *(type metadata accessor for Option() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *&v0[(*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8];
  v12 = &v0[*(type metadata accessor for FilterModalitySectionView() + 116) + v8];
  v14 = *v12;
  v13 = *(v12 + 1);
  return v14(&v0[v10], v11);
}

unint64_t sub_24B584AF0()
{
  result = qword_27F018A90;
  if (!qword_27F018A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018A88, &qword_24B600CD8);
    sub_24B58085C(&qword_27F018A98, &qword_27F018AA0, &unk_24B600CE0);
    sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018A90);
  }

  return result;
}

uint64_t sub_24B584BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = type metadata accessor for Option();
  if (*(a1 + *(v11 + 68)) && *(a1 + *(v11 + 68)) != 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, a3, a6, a8, a9, a10}];
    return sub_24B5FF76C();
  }

  else
  {
    v12 = [objc_opt_self() systemGray5Color];
    return sub_24B5FF76C();
  }
}

uint64_t sub_24B584C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = type metadata accessor for Option();
  if (*(a1 + *(v11 + 68)))
  {
    if (*(a1 + *(v11 + 68)) == 1)
    {
      return sub_24B5FF79C();
    }

    else
    {
      return sub_24B5FF77C();
    }
  }

  else
  {
    v13 = [objc_opt_self() darkGrayColor];
    return sub_24B5FF76C();
  }
}

unint64_t sub_24B584D30()
{
  result = qword_27F018AD8;
  if (!qword_27F018AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AD0, &qword_24B600D60);
    sub_24B584DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AD8);
  }

  return result;
}

unint64_t sub_24B584DBC()
{
  result = qword_27F018AE0;
  if (!qword_27F018AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AE8, &qword_24B600D68);
    sub_24B584E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AE0);
  }

  return result;
}

unint64_t sub_24B584E48()
{
  result = qword_27F018AF0;
  if (!qword_27F018AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AF8, &qword_24B600D70);
    sub_24B58085C(&qword_27F018B00, &qword_27F018B08, &qword_24B600D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018AF0);
  }

  return result;
}

uint64_t sub_24B584F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AB0, &qword_24B600D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B584F70(uint64_t a1, uint64_t a2)
{
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA0, &unk_24B606BD0);
  v4 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v6 = &v97 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BA8, &qword_24B601040);
  v7 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v122 = &v97 - v8;
  v9 = sub_24B5FEDFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v109 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018768, &unk_24B6080E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v118 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - v17;
  v19 = sub_24B5FEE8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v114 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018770, &unk_24B6007D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v107 = &v97 - v28;
  v123 = type metadata accessor for Artwork();
  v29 = *(*(v123 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v123);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v132 = &v97 - v34;
  result = MEMORY[0x28223BE20](v33);
  v38 = &v97 - v37;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v112 = v9;
  v39 = 0;
  v40 = a1 + 56;
  v41 = 1 << *(a1 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(a1 + 56);
  v44 = (v41 + 63) >> 6;
  v129 = (v20 + 48);
  v110 = (v20 + 32);
  v121 = (v20 + 8);
  v120 = (v10 + 48);
  v105 = (v10 + 32);
  v108 = (v10 + 8);
  v128 = a2 + 56;
  v130 = a2;
  v113 = v6;
  v104 = v18;
  v124 = v27;
  v103 = a1 + 56;
  v102 = v44;
LABEL_7:
  v45 = v107;
  if (v43)
  {
    v46 = v130;
    v97 = (v43 - 1) & v43;
    v98 = v39;
    v47 = __clz(__rbit64(v43)) | (v39 << 6);
LABEL_14:
    v51 = *(a1 + 48);
    v100 = v36;
    v127 = *(v36 + 72);
    v52 = v38;
    sub_24B5A13CC(v51 + v127 * v47, v38, type metadata accessor for Artwork);
    v99 = v52;
    v53 = v52;
    v54 = v132;
    sub_24B5A1434(v53, v132, type metadata accessor for Artwork);
    v55 = *(v46 + 40);
    sub_24B5FFEFC();
    sub_24B57BAFC(v54, v45, &qword_27F018770, &unk_24B6007D0);
    v126 = *v129;
    if (v126(v45, 1, v19) == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v56 = v114;
      (*v110)(v114, v45, v19);
      sub_24B5FFF1C();
      sub_24B5A14FC(&qword_27F018778, MEMORY[0x277D09D68]);
      sub_24B5FFA4C();
      (*v121)(v56, v19);
    }

    v57 = v120;
    v58 = v122;
    v59 = v123;
    v60 = v132;
    v61 = *(v132 + *(v123 + 20));
    v117 = v61;
    ArtworkVariant.rawValue.getter(v61);
    sub_24B5FFB1C();

    v111 = *(v59 + 24);
    v62 = v104;
    sub_24B57BAFC(v60 + v111, v104, &qword_27F018768, &unk_24B6080E0);
    v63 = v112;
    v116 = *v57;
    v64 = v116(v62, 1, v112);
    v101 = a1;
    if (v64 == 1)
    {
      sub_24B5FFF1C();
    }

    else
    {
      v65 = v109;
      (*v105)(v109, v62, v63);
      sub_24B5FFF1C();
      sub_24B5A14FC(&qword_27F018780, MEMORY[0x277CC9260]);
      sub_24B5FFA4C();
      (*v108)(v65, v63);
    }

    v66 = v124;
    v67 = sub_24B5FFF3C();
    v68 = -1 << *(v130 + 32);
    v69 = v67 & ~v68;
    if (((*(v128 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
    {
LABEL_98:
      sub_24B5A149C(v132, type metadata accessor for Artwork);
      return 0;
    }

    v125 = ~v68;
    v115 = v19;
    v106 = v32;
    while (1)
    {
      sub_24B5A13CC(*(v130 + 48) + v69 * v127, v32, type metadata accessor for Artwork);
      v70 = *(v131 + 48);
      sub_24B57BAFC(v32, v58, &qword_27F018770, &unk_24B6007D0);
      sub_24B57BAFC(v132, v58 + v70, &qword_27F018770, &unk_24B6007D0);
      v71 = v126;
      if (v126(v58, 1, v19) == 1)
      {
        if (v71(v58 + v70, 1, v19) != 1)
        {
          goto LABEL_23;
        }

        sub_24B58090C(v58, &qword_27F018770, &unk_24B6007D0);
      }

      else
      {
        sub_24B57BAFC(v58, v66, &qword_27F018770, &unk_24B6007D0);
        if (v71(v58 + v70, 1, v19) == 1)
        {
          (*v121)(v66, v19);
LABEL_23:
          sub_24B58090C(v58, &qword_27F018BA8, &qword_24B601040);
LABEL_24:
          sub_24B5A149C(v32, type metadata accessor for Artwork);
          goto LABEL_25;
        }

        v72 = v114;
        (*v110)(v114, v58 + v70, v19);
        sub_24B5A14FC(&qword_27F018BB8, MEMORY[0x277D09D68]);
        v73 = sub_24B5FFA5C();
        v74 = *v121;
        v66 = v124;
        (*v121)(v72, v19);
        v74(v66, v19);
        v58 = v122;
        sub_24B58090C(v122, &qword_27F018770, &unk_24B6007D0);
        if ((v73 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v75 = v32[*(v123 + 20)];
      if (v75 > 4)
      {
        v76 = v117;
        v77 = v116;
        if (v32[*(v123 + 20)] <= 6u)
        {
          if (v75 == 5)
          {
            v79 = 0xE500000000000000;
            v78 = 0x74726F6873;
            if (v117 > 4)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v79 = 0xE400000000000000;
            v78 = 1819042164;
            if (v117 > 4)
            {
              goto LABEL_50;
            }
          }
        }

        else if (v75 == 7)
        {
          v79 = 0xE400000000000000;
          v78 = 1954047348;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }

        else if (v75 == 8)
        {
          v78 = 0x6469576172746C75;
          v79 = 0xE900000000000065;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v79 = 0xE400000000000000;
          v78 = 1701079415;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v76 = v117;
        v77 = v116;
        if (v32[*(v123 + 20)] <= 1u)
        {
          v79 = 0xE600000000000000;
          if (v32[*(v123 + 20)])
          {
            v80 = 1953391971;
          }

          else
          {
            v80 = 1852727650;
          }

          v78 = v80 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v117 > 4)
          {
LABEL_50:
            v81 = 0x6469576172746C75;
            if (v76 != 8)
            {
              v81 = 1701079415;
            }

            v82 = 0xE900000000000065;
            if (v76 != 8)
            {
              v82 = 0xE400000000000000;
            }

            if (v76 == 7)
            {
              v81 = 1954047348;
              v82 = 0xE400000000000000;
            }

            v83 = 0x74726F6873;
            if (v76 != 5)
            {
              v83 = 1819042164;
            }

            v84 = 0xE500000000000000;
            if (v76 != 5)
            {
              v84 = 0xE400000000000000;
            }

            if (v76 <= 6)
            {
              v85 = v83;
            }

            else
            {
              v85 = v81;
            }

            if (v76 <= 6)
            {
              v86 = v84;
            }

            else
            {
              v86 = v82;
            }

            goto LABEL_66;
          }
        }

        else if (v75 == 2)
        {
          v79 = 0xE400000000000000;
          v78 = 2019912806;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }

        else if (v75 == 3)
        {
          v78 = 0x657263536C6C7566;
          v79 = 0xEA00000000006E65;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v79 = 0xE700000000000000;
          v78 = 0x72616C75676572;
          if (v117 > 4)
          {
            goto LABEL_50;
          }
        }
      }

      if (v76 <= 1)
      {
        v86 = 0xE600000000000000;
        if (v76)
        {
          v85 = 0x7265746E6563;
        }

        else
        {
          v85 = 0x72656E6E6162;
        }
      }

      else if (v76 == 2)
      {
        v86 = 0xE400000000000000;
        v85 = 2019912806;
      }

      else if (v76 == 3)
      {
        v85 = 0x657263536C6C7566;
        v86 = 0xEA00000000006E65;
      }

      else
      {
        v86 = 0xE700000000000000;
        v85 = 0x72616C75676572;
      }

LABEL_66:
      if (v78 == v85 && v79 == v86)
      {
      }

      else
      {
        v87 = sub_24B5FFECC();

        if ((v87 & 1) == 0)
        {
          sub_24B5A149C(v32, type metadata accessor for Artwork);
          v66 = v124;
          v19 = v115;
          v58 = v122;
          goto LABEL_25;
        }
      }

      v88 = *(v119 + 48);
      v89 = v113;
      sub_24B57BAFC(&v32[*(v123 + 24)], v113, &qword_27F018768, &unk_24B6080E0);
      sub_24B57BAFC(v132 + v111, v89 + v88, &qword_27F018768, &unk_24B6080E0);
      v90 = v112;
      if (v77(v89, 1, v112) == 1)
      {
        sub_24B5A149C(v32, type metadata accessor for Artwork);
        v91 = v77(v89 + v88, 1, v90);
        v19 = v115;
        v58 = v122;
        if (v91 == 1)
        {
          sub_24B58090C(v89, &qword_27F018768, &unk_24B6080E0);
LABEL_96:
          result = sub_24B5A149C(v132, type metadata accessor for Artwork);
          a1 = v101;
          v36 = v100;
          v38 = v99;
          v39 = v98;
          v40 = v103;
          v44 = v102;
          v43 = v97;
          goto LABEL_7;
        }

        goto LABEL_75;
      }

      v92 = v118;
      sub_24B57BAFC(v89, v118, &qword_27F018768, &unk_24B6080E0);
      if (v77(v89 + v88, 1, v90) == 1)
      {
        v32 = v106;
        sub_24B5A149C(v106, type metadata accessor for Artwork);
        (*v108)(v92, v90);
        v19 = v115;
        v58 = v122;
LABEL_75:
        sub_24B58090C(v89, &qword_27F018BA0, &unk_24B606BD0);
        v66 = v124;
        goto LABEL_25;
      }

      v93 = v109;
      (*v105)(v109, v89 + v88, v90);
      sub_24B5A14FC(&qword_27F018BB0, MEMORY[0x277CC9260]);
      v94 = sub_24B5FFA5C();
      v95 = *v108;
      (*v108)(v93, v90);
      v96 = v106;
      sub_24B5A149C(v106, type metadata accessor for Artwork);
      v95(v118, v90);
      v32 = v96;
      sub_24B58090C(v113, &qword_27F018768, &unk_24B6080E0);
      v66 = v124;
      v19 = v115;
      v58 = v122;
      if (v94)
      {
        goto LABEL_96;
      }

LABEL_25:
      v69 = (v69 + 1) & v125;
      if (((*(v128 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
      {
        goto LABEL_98;
      }
    }
  }

  v48 = v39;
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v44)
    {
      return 1;
    }

    v50 = *(v40 + 8 * v49);
    ++v48;
    if (v50)
    {
      v46 = v130;
      v97 = (v50 - 1) & v50;
      v98 = v49;
      v47 = __clz(__rbit64(v50)) | (v49 << 6);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B58600C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_24B5FFEFC();
    MEMORY[0x24C243ED0](v13);
    result = sub_24B5FFF3C();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B58617C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
    v37 = v8;
LABEL_13:
    v35 = result;
    v13 = *(result + 48) + 72 * (v10 | (v3 << 6));
    v45 = *v13;
    v15 = *(v13 + 32);
    v14 = *(v13 + 48);
    v16 = *(v13 + 16);
    v49 = *(v13 + 64);
    v47 = v15;
    v48 = v14;
    v46 = v16;
    v17 = *(a2 + 40);
    sub_24B5FFEFC();
    v18 = v45;
    v19 = v46;
    sub_24B5A16FC(&v45, v41);
    sub_24B57926C(v42, v18);
    sub_24B5FFF1C();
    if (v19)
    {
      sub_24B5FFB1C();
    }

    v20 = *(&v47 + 1);
    v22 = *(&v48 + 1);
    v23 = v48;
    v21 = v49;
    v38 = v47;
    v39 = *(&v46 + 1);
    sub_24B5FFB1C();
    *&v40 = v23;
    *(&v40 + 1) = v20;
    sub_24B5FFB1C();
    MEMORY[0x24C243ED0](v22);
    sub_24B5A8CFC(v42, v21);
    v24 = sub_24B5FFF3C();
    v25 = -1 << *(a2 + 32);
    v26 = v24 & ~v25;
    if (((*(v9 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
LABEL_37:
      sub_24B5A1758(&v45);
      return 0;
    }

    v34 = v4;
    v27 = ~v25;
    while (1)
    {
      v28 = *(a2 + 48) + 72 * v26;
      *v42 = *v28;
      v30 = *(v28 + 32);
      v29 = *(v28 + 48);
      v31 = *(v28 + 16);
      v44 = *(v28 + 64);
      *&v42[32] = v30;
      v43 = v29;
      *&v42[16] = v31;
      v32 = *v42;
      sub_24B5A16FC(v42, v41);
      if ((sub_24B584F70(v32, v18) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (*&v42[16])
      {
        if (!v19 || *&v42[8] != __PAIR128__(v19, *(&v18 + 1)) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v19)
      {
        goto LABEL_31;
      }

      if (*&v42[24] != __PAIR128__(v38, v39) && (sub_24B5FFECC() & 1) == 0 || __PAIR128__(*&v42[40], v43) != v40 && (sub_24B5FFECC() & 1) == 0 || *(&v43 + 1) != v22)
      {
LABEL_31:
        sub_24B5A1758(v42);
        goto LABEL_32;
      }

      v33 = sub_24B5D37BC(v44, v21);
      sub_24B5A1758(v42);
      if (v33)
      {
        break;
      }

LABEL_32:
      v26 = (v26 + 1) & v27;
      if (((*(v9 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_24B5A1758(&v45);
    v4 = v34;
    result = v35;
    v7 = v36;
    v8 = v37;
  }

  while (v36);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v37 = v8;
      v10 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5864EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v32 = v8;
  v33 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v34 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 40 * (v10 | (v3 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(a2 + 40);
      sub_24B5FFEFC();

      Duration.hash(into:)();
      v20 = sub_24B5FFF3C();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        break;
      }

      v23 = ~v21;
      v24 = *(a2 + 48);
      while (1)
      {
        v25 = v24 + 40 * v22;
        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v28 = *(v25 + 32);
        v29 = *v25 == v15 && *(v25 + 8) == v14;
        if (v29 || (sub_24B5FFECC() & 1) != 0)
        {
          v30 = v27 == v16 && v26 == v17;
          if (v30 && v28 == v18)
          {
            break;
          }
        }

        v22 = (v22 + 1) & v23;
        if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v8 = v32;
      result = v33;
      v7 = v34;
      if (!v34)
      {
        goto LABEL_8;
      }
    }

LABEL_32:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5866FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v58 = v4;
    v10 = __clz(__rbit64(v7));
    v55 = (v7 - 1) & v7;
    v56 = v8;
LABEL_13:
    v57 = v3;
    v59 = result;
    v13 = (*(result + 48) + 56 * (v10 | (v3 << 6)));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    v19 = v13[6];
    v20 = *(v2 + 40);
    v76 = *v13;
    v78 = *v13;
    v79 = v14;
    v67 = v15;
    v80 = v15;
    v81 = v16;
    v82 = v18;
    v83 = v17;
    v60 = v17;
    v84 = v19;
    sub_24B5FFEFC();
    v65 = v19;

    v69 = v18;

    FilterConfiguration.hash(into:)(v77);
    result = sub_24B5FFF3C();
    v21 = -1 << *(v2 + 32);
    v22 = result & ~v21;
    if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_73:

      return 0;
    }

    v75 = ~v21;
    v66 = (v14 + 40);
    v64 = v16;
    while (1)
    {
      v23 = (*(v2 + 48) + 56 * v22);
      if (*v23 != v76)
      {
        goto LABEL_16;
      }

      v74 = v23[1];
      v24 = *(v74 + 16);
      if (v24 != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v25 = v23[2];
      v26 = v23[4];
      v72 = v26;
      v73 = v23[3];
      v70 = v23[5];
      if (v24)
      {
        v27 = v74 == v14;
      }

      else
      {
        v27 = 1;
      }

      v71 = v23[6];
      if (!v27)
      {
        v34 = (v74 + 40);
        v35 = v66;
        while (v24)
        {
          result = *(v34 - 1);
          if (result != *(v35 - 1) || *v34 != *v35)
          {
            result = sub_24B5FFECC();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v34 += 2;
          v35 += 2;
          if (!--v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_24:
      if (v73)
      {
        if (!v16)
        {
          goto LABEL_16;
        }

        if (v25 != v67 || v73 != v16)
        {
          result = sub_24B5FFECC();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      if (v72 == v69)
      {
        break;
      }

      if (*(v72 + 16) == *(v69 + 16))
      {
        v61 = v14;
        v62 = v9;
        v63 = v2;
        v28 = v72;
        v29 = 1 << *(v72 + 32);
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v31 = v30 & *(v72 + 64);
        v32 = (v29 + 63) >> 6;

        v33 = 0;
        while (v31)
        {
          v37 = __clz(__rbit64(v31));
          v68 = (v31 - 1) & v31;
LABEL_51:
          v41 = 16 * (v37 | (v33 << 6));
          v42 = (*(v28 + 48) + v41);
          v43 = *v42;
          v44 = v42[1];
          v45 = (*(v28 + 56) + v41);
          v46 = *v45;
          v47 = v45[1];

          v48 = sub_24B5EA2D0(v43, v44);
          v50 = v49;

          if ((v50 & 1) == 0)
          {

            goto LABEL_68;
          }

          v51 = (*(v69 + 56) + 16 * v48);
          if (*v51 == v46 && v51[1] == v47)
          {

            v28 = v72;
            v31 = v68;
          }

          else
          {
            v53 = sub_24B5FFECC();

            v28 = v72;
            v31 = v68;
            if ((v53 & 1) == 0)
            {

LABEL_68:

              v9 = v62;
              v2 = v63;
              v14 = v61;
              v16 = v64;
              goto LABEL_16;
            }
          }
        }

        v38 = v33;
        v9 = v62;
        v2 = v63;
        v14 = v61;
        v39 = v71;
        while (1)
        {
          v33 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            goto LABEL_59;
          }

          v40 = *(v72 + 64 + 8 * v33);
          ++v38;
          if (v40)
          {
            v37 = __clz(__rbit64(v40));
            v68 = (v40 - 1) & v40;
            goto LABEL_51;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_16:
      v22 = (v22 + 1) & v75;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v39 = v71;

LABEL_59:
    if (!v39)
    {
      v16 = v64;
      if (!v65)
      {
        goto LABEL_69;
      }

LABEL_66:

      goto LABEL_16;
    }

    v16 = v64;
    if (!v65)
    {
      goto LABEL_66;
    }

    if (v70 != v60 || v39 != v65)
    {
      v54 = sub_24B5FFECC();

      if (v54)
      {
        goto LABEL_70;
      }

      goto LABEL_16;
    }

LABEL_69:

LABEL_70:

    v4 = v58;
    result = v59;
    v8 = v56;
    v3 = v57;
    v7 = v55;
    if (v55)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v56 = v8;
      v58 = v4;
      v10 = __clz(__rbit64(v12));
      v55 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_24B586D40(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v53 = result;
    v14 = *(result + 48) + 72 * (v10 | (v3 << 6));
    v71 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v75 = *(v14 + 64);
    v73 = v16;
    v74 = v15;
    v72 = v17;
    v18 = *(a2 + 40);
    v67 = *(v14 + 16);
    v68 = *(v14 + 32);
    v69 = *(v14 + 48);
    v70 = *(v14 + 64);
    v66 = *v14;
    sub_24B5FFEFC();
    sub_24B5A0A70(&v71, v64);
    Modality.hash(into:)(v65);
    result = sub_24B5FFF3C();
    v19 = -1 << *(a2 + 32);
    v20 = result & ~v19;
    if ((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v50 = v11;
      v51 = v8;
      v52 = v4;
      v21 = ~v19;
      v60 = *(&v72 + 1);
      v61 = *(&v71 + 1);
      v57 = v72;
      v22 = v73;
      *&v56 = *(&v74 + 1);
      *(&v56 + 1) = v74;
      v23 = *(v71 + 16);
      v62 = v71;
      v58 = v75;
      v59 = (v71 + 32);
      v63 = v75 + 56;
      do
      {
        v24 = *(a2 + 48) + 72 * v20;
        v66 = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v70 = *(v24 + 64);
        v68 = v26;
        v69 = v27;
        v67 = v25;
        if (*(v66 + 16) != v23)
        {
          goto LABEL_17;
        }

        if (v23 && v66 != v62)
        {
          v28 = (v66 + 32);
          v29 = *(v62 + 16);
          v30 = v59;
          v31 = v23;
          while (v29)
          {
            if (*v28 != *v30)
            {
              goto LABEL_17;
            }

            --v29;
            ++v28;
            ++v30;
            if (!--v31)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
          goto LABEL_59;
        }

LABEL_25:
        v32 = *(&v66 + 1);
        sub_24B5A0A70(&v66, v65);
        if (sub_24B584F70(v32, v61))
        {
          if (*(&v67 + 1))
          {
            if (v60 && (v67 == __PAIR128__(v60, v57) || (sub_24B5FFECC() & 1) != 0))
            {
LABEL_30:
              if (v68 == v22 || (sub_24B5FFECC() & 1) != 0)
              {
                result = v69;
                if (__PAIR128__(v69, *(&v69 + 1)) == v56 || (result = sub_24B5FFECC(), (result & 1) != 0))
                {
                  v33 = v70;
                  if (v70 == v58)
                  {
LABEL_53:
                    sub_24B5A16A8(&v66);
                    sub_24B5A16A8(&v71);
                    v4 = v52;
                    result = v53;
                    v7 = v50;
                    v8 = v51;
                    if (v50)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_8;
                  }

                  if (*(v70 + 16) == *(v58 + 16))
                  {
                    v34 = 0;
                    v35 = v70 + 56;
                    v36 = 1 << *(v70 + 32);
                    if (v36 < 64)
                    {
                      v37 = ~(-1 << v36);
                    }

                    else
                    {
                      v37 = -1;
                    }

                    v38 = v37 & *(v70 + 56);
                    v39 = (v36 + 63) >> 6;
                    v54 = v70;
                    v55 = v9;
                    v48 = v39;
                    if (!v38)
                    {
LABEL_41:
                      v41 = v34;
                      while (1)
                      {
                        v34 = v41 + 1;
                        if (__OFADD__(v41, 1))
                        {
                          goto LABEL_60;
                        }

                        if (v34 >= v39)
                        {
                          goto LABEL_53;
                        }

                        v42 = *(v35 + 8 * v34);
                        ++v41;
                        if (v42)
                        {
                          v40 = __clz(__rbit64(v42));
                          v49 = (v42 - 1) & v42;
                          goto LABEL_46;
                        }
                      }
                    }

                    while (1)
                    {
                      v40 = __clz(__rbit64(v38));
                      v49 = (v38 - 1) & v38;
LABEL_46:
                      v43 = *(*(v33 + 48) + (v40 | (v34 << 6)));
                      v44 = *(v58 + 40);
                      sub_24B5FFEFC();
                      MEMORY[0x24C243ED0](v43);
                      result = sub_24B5FFF3C();
                      v45 = -1 << *(v58 + 32);
                      v46 = result & ~v45;
                      v33 = v54;
                      v9 = v55;
                      if (((*(v63 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                      {
                        break;
                      }

                      v47 = ~v45;
                      while (*(*(v58 + 48) + v46) != v43)
                      {
                        v46 = (v46 + 1) & v47;
                        if (((*(v63 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      v39 = v48;
                      v38 = v49;
                      if (!v49)
                      {
                        goto LABEL_41;
                      }
                    }
                  }
                }
              }
            }
          }

          else if (!v60)
          {
            goto LABEL_30;
          }
        }

LABEL_16:
        result = sub_24B5A16A8(&v66);
LABEL_17:
        v20 = (v20 + 1) & v21;
      }

      while (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
    }

    sub_24B5A16A8(&v71);
    return 0;
  }

LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_24B587220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v49 = a2 + 56;
  v41 = v8;
  v42 = result + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v39 = v3;
    v40 = result;
    v12 = (*(result + 48) + 56 * (v9 | (v3 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v46 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    v19 = *(v2 + 40);
    sub_24B5FFEFC();

    v47 = v16;

    v50 = v13;
    sub_24B57926C(v51, v13);
    v48 = v15;
    v45 = v14;
    sub_24B5FFF1C();
    if (v15)
    {
      sub_24B5FFB1C();
    }

    sub_24B5FFB1C();
    v43 = v17;
    v44 = v18;
    sub_24B5FFB1C();
    v20 = sub_24B5FFF3C();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v49 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_43:

      return 0;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = v2;
      v25 = (*(v2 + 48) + 56 * v22);
      v26 = *v25;
      v27 = v25[1];
      v29 = v25[2];
      v28 = v25[3];
      v30 = v25[4];
      v31 = v25[5];
      v32 = v25[6];

      if ((sub_24B584F70(v33, v50) & 1) == 0)
      {
LABEL_18:

        v2 = v24;

        goto LABEL_19;
      }

      if (v29)
      {
        if (!v48)
        {
          goto LABEL_18;
        }

        v34 = v27 == v45 && v29 == v48;
        if (!v34 && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (v48)
      {
        goto LABEL_18;
      }

      v35 = v28 == v46 && v30 == v47;
      if (!v35 && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_18;
      }

      v36 = v31 == v43 && v32 == v44;
      v2 = v24;
      if (v36)
      {
        break;
      }

      v37 = sub_24B5FFECC();

      if (v37)
      {
        goto LABEL_40;
      }

LABEL_19:
      v22 = (v22 + 1) & v23;
      if (((*(v49 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_40:

    v3 = v39;
    result = v40;
    v8 = v41;
    v4 = v42;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B587634(uint64_t result, uint64_t a2, void (*a3)(__int128 *, _BYTE *), void (*a4)(__int128 *))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(result + 56);
  v12 = (v9 + 63) >> 6;
  v44 = a2 + 56;
  if (!v11)
  {
    goto LABEL_8;
  }

  do
  {
    v37 = v12;
    v38 = v8;
    v13 = __clz(__rbit64(v11));
    v36 = (v11 - 1) & v11;
LABEL_13:
    v39 = result;
    v16 = *(result + 48) + 72 * (v13 | (v7 << 6));
    v49 = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v53 = *(v16 + 64);
    v51 = v18;
    v52 = v17;
    v50 = v19;
    v20 = *(a2 + 40);
    sub_24B5FFEFC();
    v22 = *(&v49 + 1);
    v21 = v49;
    v23 = v50;
    a3(&v49, v45);
    sub_24B57926C(v46, v21);
    sub_24B5FFF1C();
    if (v23)
    {
      sub_24B5FFB1C();
    }

    v24 = *(&v51 + 1);
    v25 = v52;
    *&v43 = v51;
    *(&v43 + 1) = *(&v50 + 1);
    sub_24B5FFB1C();
    v40 = v24;
    v42 = v25;
    sub_24B5FFF1C();
    if (v25)
    {
      sub_24B5FFB1C();
    }

    *&v41 = v53;
    *(&v41 + 1) = *(&v52 + 1);
    sub_24B5FFB1C();
    v26 = sub_24B5FFF3C();
    v27 = -1 << *(a2 + 32);
    v28 = v26 & ~v27;
    if (((*(v44 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_43:
      a4(&v49);
      return 0;
    }

    v29 = ~v27;
    while (1)
    {
      v30 = *(a2 + 48) + 72 * v28;
      *v46 = *v30;
      v32 = *(v30 + 32);
      v31 = *(v30 + 48);
      v33 = *(v30 + 16);
      v48 = *(v30 + 64);
      *v47 = v32;
      *&v47[16] = v31;
      *&v46[16] = v33;
      v34 = *v46;
      a3(v46, v45);
      if ((sub_24B584F70(v34, v21) & 1) == 0)
      {
LABEL_36:
        a4(v46);
        goto LABEL_37;
      }

      if (*&v46[16])
      {
        if (!v23 || *&v46[8] != __PAIR128__(v23, v22) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v23)
      {
        goto LABEL_36;
      }

      if (__PAIR128__(*&v46[24], *v47) != v43 && (sub_24B5FFECC() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (*&v47[16])
      {
        if (!v42 || *&v47[8] != __PAIR128__(v42, v40) && (sub_24B5FFECC() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v42)
      {
        goto LABEL_36;
      }

      if (__PAIR128__(*&v47[24], v48) == v41)
      {
        break;
      }

      v35 = sub_24B5FFECC();
      a4(v46);
      if (v35)
      {
        goto LABEL_40;
      }

LABEL_37:
      v28 = (v28 + 1) & v29;
      if (((*(v44 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    (a4)(v46, v48);
LABEL_40:
    a4(&v49);
    v8 = v38;
    result = v39;
    v11 = v36;
    v12 = v37;
  }

  while (v36);
LABEL_8:
  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return 1;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v37 = v12;
      v38 = v8;
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B587A08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v72 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v81 = a2 + 56;
  v73 = v7;
  v74 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v75 = (v6 - 1) & v6;
LABEL_13:
    v76 = v3;
    v11 = *(result + 48) + 48 * (v8 | (v3 << 6));
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v93 = *v11;
    v12 = v93;
    v94 = v13;
    v95 = v14;
    v96 = v15;
    v97 = v16;
    v98 = v17;
    v18 = *(v2 + 40);
    sub_24B5FFEFC();
    sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
    FilterItem.hash(into:)();
    v19 = sub_24B5FFF3C();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    v22 = v93;
    v23 = v94;
    v82 = v95;
    v83 = v96;
    v84 = v97;
    v24 = v98;
    if (((*(v81 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_153:
      sub_24B57BA04(v22, v23, v82, v83, v84, v24);
      return 0;
    }

    v80 = ~v20;
    v79 = v93;
    while (1)
    {
      v32 = v2;
      v33 = *(v2 + 48) + 48 * v21;
      v35 = *v33;
      v34 = *(v33 + 8);
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      v38 = *(v33 + 32);
      v39 = *(v33 + 40);
      v85[0] = *v33;
      v85[1] = v34;
      v85[2] = v37;
      v85[3] = v36;
      v85[4] = v38;
      v86 = v39;
      v87 = v22;
      v88 = v23;
      v89 = v82;
      v90 = v83;
      v91 = v84;
      v92 = v24;
      if (v39 > 3)
      {
        if (v39 <= 5)
        {
          if (v39 == 4)
          {
            if (v24 != 4)
            {
              goto LABEL_88;
            }

            if (v35 == v22 && v34 == v23)
            {
              sub_24B57BA1C(v22, v23, v37, v36, v38, 4u);
              v66 = v22;
              v67 = v23;
              v68 = v82;
              v69 = v83;
              v70 = v84;
              v71 = 4;
              goto LABEL_148;
            }

            v77 = sub_24B5FFECC();
            sub_24B57BA1C(v35, v34, v37, v36, v38, 4u);
            v26 = v22;
            v27 = v23;
            v28 = v82;
            v29 = v83;
            v30 = v84;
            v31 = 4;
          }

          else
          {
            if (v24 != 5)
            {
LABEL_88:
              sub_24B57BA1C(v35, v34, v37, v36, v38, v39);
LABEL_89:
              sub_24B57BA1C(v22, v23, v82, v83, v84, v24);
              sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
              v2 = v32;
              goto LABEL_21;
            }

            if (v35 == v22 && v34 == v23)
            {
              sub_24B57BA1C(v22, v23, v37, v36, v38, 5u);
              v66 = v22;
              v67 = v23;
              v68 = v82;
              v69 = v83;
              v70 = v84;
              v71 = 5;
              goto LABEL_148;
            }

            v77 = sub_24B5FFECC();
            sub_24B57BA1C(v35, v34, v37, v36, v38, 5u);
            v26 = v22;
            v27 = v23;
            v28 = v82;
            v29 = v83;
            v30 = v84;
            v31 = 5;
          }

          goto LABEL_20;
        }

        if (v39 == 6)
        {
          if (v24 != 6)
          {
            goto LABEL_88;
          }

          if (v35 == v22 && v34 == v23)
          {
            sub_24B57BA1C(v22, v23, v37, v36, v38, 6u);
            v66 = v22;
            v67 = v23;
            v68 = v82;
            v69 = v83;
            v70 = v84;
            v71 = 6;
            goto LABEL_148;
          }

          v77 = sub_24B5FFECC();
          sub_24B57BA1C(v35, v34, v37, v36, v38, 6u);
          v26 = v22;
          v27 = v23;
          v28 = v82;
          v29 = v83;
          v30 = v84;
          v31 = 6;
          goto LABEL_20;
        }

        if (v39 == 7)
        {
          if (v24 != 7)
          {
            goto LABEL_88;
          }

          if (v35 == v22 && v34 == v23)
          {
            sub_24B57BA1C(v22, v23, v37, v36, v38, 7u);
            v66 = v22;
            v67 = v23;
            v68 = v82;
            v69 = v83;
            v70 = v84;
            v71 = 7;
            goto LABEL_148;
          }

          v77 = sub_24B5FFECC();
          sub_24B57BA1C(v35, v34, v37, v36, v38, 7u);
          v26 = v22;
          v27 = v23;
          v28 = v82;
          v29 = v83;
          v30 = v84;
          v31 = 7;
          goto LABEL_20;
        }

        if (v24 != 8)
        {
          goto LABEL_89;
        }

        v2 = v32;
        if (v35 > 3u)
        {
          if (v35 <= 5u)
          {
            if (v35 == 4)
            {
              v50 = 0xE700000000000000;
              v49 = 0x7261655977656ELL;
            }

            else
            {
              v50 = 0xE500000000000000;
              v49 = 0x6564697270;
            }

            goto LABEL_110;
          }

          if (v35 == 6)
          {
            v49 = 0x576D6172676F7270;
            v50 = 0xEE0074756F6B726FLL;
            goto LABEL_110;
          }

          v49 = 0x6967736B6E616874;
          v54 = 1735289206;
        }

        else
        {
          if (v35 <= 1u)
          {
            v49 = 0x7053747369747261;
            v50 = 0xEF746867696C746FLL;
            if (v35)
            {
              v50 = 0xE90000000000006ELL;
              v49 = 0x6565776F6C6C6168;
            }

            goto LABEL_110;
          }

          if (v35 == 2)
          {
            v50 = 0xE700000000000000;
            v49 = 0x796164696C6F68;
LABEL_110:
            v55 = 0x576D6172676F7270;
            if (v79 != 6)
            {
              v55 = 0x6967736B6E616874;
            }

            v56 = 0xEE0074756F6B726FLL;
            if (v79 != 6)
            {
              v56 = 0xEC000000676E6976;
            }

            v57 = 0x7261655977656ELL;
            if (v79 != 4)
            {
              v57 = 0x6564697270;
            }

            v58 = 0xE500000000000000;
            if (v79 == 4)
            {
              v58 = 0xE700000000000000;
            }

            if (v79 <= 5)
            {
              v55 = v57;
              v56 = v58;
            }

            v59 = 0x796164696C6F68;
            if (v79 != 2)
            {
              v59 = 0x77654E72616E756CLL;
            }

            v60 = 0xEC00000072616559;
            if (v79 == 2)
            {
              v60 = 0xE700000000000000;
            }

            v61 = 0x7053747369747261;
            if (v79)
            {
              v61 = 0x6565776F6C6C6168;
            }

            v62 = 0xEF746867696C746FLL;
            if (v79)
            {
              v62 = 0xE90000000000006ELL;
            }

            if (v79 <= 1)
            {
              v59 = v61;
              v60 = v62;
            }

            if (v79 <= 3)
            {
              v63 = v59;
            }

            else
            {
              v63 = v55;
            }

            if (v79 <= 3)
            {
              v64 = v60;
            }

            else
            {
              v64 = v56;
            }

            if (v49 == v63 && v50 == v64)
            {

              goto LABEL_149;
            }

            v65 = sub_24B5FFECC();

            sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
            if (v65)
            {
              goto LABEL_150;
            }

            goto LABEL_21;
          }

          v49 = 0x77654E72616E756CLL;
          v54 = 1918985561;
        }

        v50 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_110;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          if (v24 != 2)
          {
            goto LABEL_88;
          }

          if (v35 == v22 && v34 == v23)
          {
            sub_24B57BA1C(v22, v23, v37, v36, v38, 2u);
            v66 = v22;
            v67 = v23;
            v68 = v82;
            v69 = v83;
            v70 = v84;
            v71 = 2;
            goto LABEL_148;
          }

          v77 = sub_24B5FFECC();
          sub_24B57BA1C(v35, v34, v37, v36, v38, 2u);
          v26 = v22;
          v27 = v23;
          v28 = v82;
          v29 = v83;
          v30 = v84;
          v31 = 2;
        }

        else
        {
          if (v24 != 3)
          {
            goto LABEL_88;
          }

          if (v35 == v22 && v34 == v23)
          {
            sub_24B57BA1C(v22, v23, v37, v36, v38, 3u);
            v66 = v22;
            v67 = v23;
            v68 = v82;
            v69 = v83;
            v70 = v84;
            v71 = 3;
            goto LABEL_148;
          }

          v77 = sub_24B5FFECC();
          sub_24B57BA1C(v35, v34, v37, v36, v38, 3u);
          v26 = v22;
          v27 = v23;
          v28 = v82;
          v29 = v83;
          v30 = v84;
          v31 = 3;
        }

        goto LABEL_20;
      }

      if (!v39)
      {
        break;
      }

      if (v24 != 1)
      {
        goto LABEL_88;
      }

      v44 = *&v38;
      if (v35 == v22 && v34 == v23)
      {
        sub_24B57BA1C(v22, v23, v37, v36, v38, 1u);
        sub_24B57BA1C(v22, v23, v82, v83, v84, 1u);
        sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
        v53 = *&v37 == *&v82 && *&v36 == *&v83 && *&v38 == *&v84;
        v2 = v32;
        if (v53)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v78 = sub_24B5FFECC();
        sub_24B57BA1C(v35, v34, v37, v36, v38, 1u);
        sub_24B57BA1C(v22, v23, v82, v83, v84, 1u);
        sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
        v2 = v32;
        if (v78)
        {
          v46 = *&v37 == *&v82 && *&v36 == *&v83;
          if (v46 && v44 == *&v84)
          {
            goto LABEL_150;
          }
        }
      }

LABEL_21:
      v21 = (v21 + 1) & v80;
      if (((*(v81 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    if (v24)
    {
      goto LABEL_88;
    }

    if (v35 != v22 || v34 != v23)
    {
      v77 = sub_24B5FFECC();
      sub_24B57BA1C(v35, v34, v37, v36, v38, 0);
      v26 = v22;
      v27 = v23;
      v28 = v82;
      v29 = v83;
      v30 = v84;
      v31 = 0;
LABEL_20:
      sub_24B57BA1C(v26, v27, v28, v29, v30, v31);
      sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
      v2 = v32;
      if (v77)
      {
        goto LABEL_150;
      }

      goto LABEL_21;
    }

    sub_24B57BA1C(v22, v23, v37, v36, v38, 0);
    v66 = v22;
    v67 = v23;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v71 = 0;
LABEL_148:
    sub_24B57BA1C(v66, v67, v68, v69, v70, v71);
    v2 = v32;
LABEL_149:
    sub_24B58090C(v85, &qword_27F018B40, &qword_24B600DD8);
LABEL_150:
    sub_24B57BA04(v22, v23, v82, v83, v84, v24);
    v7 = v73;
    result = v74;
    v6 = v75;
    v3 = v76;
  }

  while (v75);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v72 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v75 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B588540(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_24B5FFEFC();

    sub_24B5FFB1C();
    v17 = sub_24B5FFF3C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_24B5FFECC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5886F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0x4E72656E69617274;
        v8 = 0xEB00000000656D61;
      }

      else
      {
        v7 = 0x6D614E656D656874;
        v8 = 0xE900000000000065;
      }
    }

    else if (a1 == 4)
    {
      v7 = 0x6E6547636973756DLL;
      v8 = 0xEE00656D614E6572;
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v4 = 0x7974696C61646F6DLL;
      v3 = 0xEC000000656D614ELL;
    }

    v5 = 0xD000000000000013;
    v6 = 0x800000024B609D90;
    if (a1)
    {
      v5 = 0x656C655265746164;
      v6 = 0xEC00000064657361;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v10 = 0xEB00000000656D61;
        if (v7 != 0x4E72656E69617274)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0xE900000000000065;
        if (v7 != 0x6D614E656D656874)
        {
LABEL_46:
          v11 = sub_24B5FFECC();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xEE00656D614E6572;
      if (v7 != 0x6E6547636973756DLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v7 != 1701736302)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
      if (v7 != 0x6E6F697461727564)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xEC000000656D614ELL;
      if (v7 != 0x7974696C61646F6DLL)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x656C655265746164;
    }

    else
    {
      v9 = 0xD000000000000013;
    }

    if (a2)
    {
      v10 = 0xEC00000064657361;
    }

    else
    {
      v10 = 0x800000024B609D90;
    }

    if (v7 != v9)
    {
      goto LABEL_46;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v11 = 1;
LABEL_47:

  return v11 & 1;
}

uint64_t sub_24B5889A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = a1;
  v5 = 0x576D6172676F7270;
  v6 = 0xEE0074756F6B726FLL;
  if (a1 != 6)
  {
    v5 = 0x6967736B6E616874;
    v6 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  v11 = 0x6565776F6C6C6168;
  v12 = 0xE90000000000006ELL;
  if (!a1)
  {
    v11 = 0x7053747369747261;
    v12 = 0xEF746867696C746FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v13 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v13 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v13 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24B5FFECC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t FilterFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24B588CE0(v18, &v17);
}

__n128 FilterFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 176) = &unk_285E87D68;
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t FilterFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, void **a3, uint64_t a4)
{
  v484 = a2;
  *&v485 = a4;
  v478 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B10, &qword_24B600D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  *&v481 = &v469 - v7;
  v480 = type metadata accessor for FilterSectionDescriptor();
  v477 = *(v480 - 8);
  v8 = *(v477 + 8);
  v9 = MEMORY[0x28223BE20](v480);
  v479 = &v469 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v475 = (&v469 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v469 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88);
  v482 = *(v15 - 8);
  v483 = v15;
  v16 = *(v482 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v474 = &v469 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v471 = &v469 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v473 = &v469 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v472 = &v469 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v470 = &v469 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v469 = &v469 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v476 = &v469 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v469 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v469 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v469 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v469 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v469 - v43;
  v45 = type metadata accessor for FilterAction();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = *(v4 + 144);
  v521 = *(v4 + 128);
  v522 = v48;
  v523 = *(v4 + 160);
  v49 = *(v4 + 80);
  v517 = *(v4 + 64);
  v518 = v49;
  v50 = *(v4 + 112);
  v519 = *(v4 + 96);
  v520 = v50;
  v51 = *(v4 + 16);
  v513 = *v4;
  v514 = v51;
  v52 = *(v4 + 48);
  v515 = *(v4 + 32);
  v524 = *(v4 + 176);
  v516 = v52;
  v53 = &v469 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5A13CC(v485, v53, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v476 = v44;
    *&v485 = v14;
    v473 = v36;
    v474 = v33;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v122 = *(v53 + 48);
          v529 = *(v53 + 32);
          v530 = v122;
          v531 = *(v53 + 64);
          v123 = *(v53 + 16);
          v527 = *v53;
          v528 = v123;
          v124 = v484;
          memcpy(v508, v484, 0x111uLL);
          sub_24B58FE70(v509);
          memcpy(v510, v508, 0x111uLL);
          memcpy(v511, v509, sizeof(v511));
          memcpy(v512, v508, 0x111uLL);
          v125 = sub_24B58FDFC(v512);
          if (v125 > 1)
          {
            if (v125 != 2)
            {
              sub_24B58090C(v510, &qword_27F018B20, &qword_24B600D90);
              v155 = &v124[*(type metadata accessor for FilterState() + 28)];
              if (v155[40] == 3)
              {
                v156 = 0;
                v109 = *v155;
                v157 = *(v155 + 1);
                v158 = *(&v529 + 1);
                v159 = 1 << *(*(&v529 + 1) + 32);
                v160 = -1;
                if (v159 < 64)
                {
                  v160 = ~(-1 << v159);
                }

                v161 = *(*(&v529 + 1) + 56);
                v53 = v160 & v161;
                v113 = (v159 + 63) >> 6;
                if ((v160 & v161) == 0)
                {
LABEL_62:
                  while (1)
                  {
                    v162 = v156 + 1;
                    if (__OFADD__(v156, 1))
                    {
                      break;
                    }

                    if (v162 >= v113)
                    {
                      goto LABEL_101;
                    }

                    v53 = *(v158 + 56 + 8 * v162);
                    ++v156;
                    if (v53)
                    {
                      goto LABEL_65;
                    }
                  }

                  __break(1u);
                  goto LABEL_217;
                }

                while (1)
                {
                  v162 = v156;
LABEL_65:
                  v163 = *(v158 + 48) + 72 * (__clz(__rbit64(v53)) | (v162 << 6));
                  v506[0] = *v163;
                  v165 = *(v163 + 32);
                  v164 = *(v163 + 48);
                  v166 = *(v163 + 64);
                  v506[1] = *(v163 + 16);
                  v506[2] = v165;
                  *&v506[4] = v166;
                  v506[3] = v164;
                  v507[1] = *(v163 + 16);
                  v507[2] = *(v163 + 32);
                  v507[3] = *(v163 + 48);
                  *&v507[4] = *(v163 + 64);
                  v507[0] = *v163;
                  if (__PAIR128__(v157, v109) == v165 || (sub_24B5FFECC() & 1) != 0)
                  {
                    break;
                  }

                  v53 &= v53 - 1;
                  v156 = v162;
                  if (!v53)
                  {
                    goto LABEL_62;
                  }
                }

                sub_24B5A0A70(v506, v505);

                v441 = sub_24B58CF38(6u, *&v506[4]);
                v502 = v507[2];
                v503 = v507[3];
                v504 = *&v507[4];
                v500 = v507[0];
                v501 = v507[1];
                if (v441)
                {
                  v260 = &unk_285E87D90;
                }

                else
                {
                  v260 = &unk_285E87DB8;
                }
              }

              else
              {
LABEL_101:
                v504 = 0;
                v502 = 0u;
                v503 = 0u;
                v500 = 0u;
                v501 = 0u;
                v260 = &unk_285E87DE0;
              }

              v533[1] = v502;
              v534 = v503;
              v535 = v504;
              v532 = v500;
              v533[0] = v501;
              v261 = v260[2];
              v475 = v260;
              if (v261)
              {
                v262 = *(v260 + 32);
              }

              else
              {
                v262 = 1;
              }

              v365 = v484;
              (v520)(v507, v262);
              v366 = *&v507[0];
              *&v485 = BYTE8(v507[0]);
              v367 = *&v507[1];
              LODWORD(v476) = BYTE8(v507[1]);
              sub_24B57BAFC(&v500, v507, &qword_27F018B60, &qword_24B6095B0);

              v369 = sub_24B59D768(v368, v365, &v532);
              sub_24B58090C(&v500, &qword_27F018B60, &qword_24B6095B0);

              v370 = *(v369 + 16);
              v371 = MEMORY[0x277D84F90];
              v473 = v369;
              if (v370)
              {
                v372 = (v369 + 32);
                v373 = (v477 + 48);
                do
                {
                  while (1)
                  {
                    v374 = *v372++;
                    v507[8] = v521;
                    v507[9] = v522;
                    v507[10] = v523;
                    *&v507[11] = v524;
                    v507[4] = v517;
                    v507[5] = v518;
                    v507[6] = v519;
                    v507[7] = v520;
                    v507[0] = v513;
                    v507[1] = v514;
                    v507[2] = v515;
                    v507[3] = v516;
                    v506[2] = v529;
                    v506[3] = v530;
                    *&v506[4] = v531;
                    v506[0] = v527;
                    v506[1] = v528;
                    *&v487 = v366;
                    *(&v487 + 1) = v485;
                    *&v488 = v367;
                    BYTE8(v488) = v476;
                    memset(v505, 0, 72);
                    v497 = v533[1];
                    v498 = v534;
                    v499 = v535;
                    v495 = v532;
                    v496 = v533[0];

                    v375 = v481;
                    sub_24B58FFD0(v374, v506, &v487, v505, &v495, v481);
                    sub_24B5A0960(v487);
                    if ((*v373)(v375, 1, v480) != 1)
                    {
                      break;
                    }

                    sub_24B58090C(v375, &qword_27F018B10, &qword_24B600D80);
                    if (!--v370)
                    {
                      goto LABEL_180;
                    }
                  }

                  sub_24B5A1434(v375, v479, type metadata accessor for FilterSectionDescriptor);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v371 = sub_24B595CF8(0, v371[2] + 1, 1, v371);
                  }

                  v377 = v371[2];
                  v376 = v371[3];
                  v378 = v477;
                  if (v377 >= v376 >> 1)
                  {
                    v379 = sub_24B595CF8(v376 > 1, v377 + 1, 1, v371);
                    v378 = v477;
                    v371 = v379;
                  }

                  v371[2] = v377 + 1;
                  sub_24B5A1434(v479, v371 + ((v378[80] + 32) & ~v378[80]) + *(v378 + 9) * v377, type metadata accessor for FilterSectionDescriptor);
                  --v370;
                }

                while (v370);
              }

LABEL_180:

              *&v505[23] = v528;
              *&v505[39] = v529;
              *&v505[55] = v530;
              *&v505[7] = v527;
              v506[13] = v502;
              v506[14] = v503;
              v506[11] = v500;
              v506[12] = v501;
              *(&v506[2] + 9) = *&v505[16];
              *(&v506[3] + 9) = *&v505[32];
              *&v505[71] = v531;
              *(&v506[4] + 9) = *&v505[48];
              *(&v506[5] + 8) = *&v505[63];
              memset(v506, 0, 25);
              *(&v506[1] + 9) = *v505;
              *(&v506[6] + 8) = 0u;
              *(&v506[7] + 8) = 0u;
              *(&v506[8] + 8) = 0u;
              *(&v506[9] + 8) = 0u;
              *&v506[15] = v504;
              *(&v506[10] + 1) = 0;
              *(&v506[15] + 1) = MEMORY[0x277D84F90];
              *&v506[16] = v475;
              *(&v506[16] + 1) = v371;
              sub_24B5A09A0(v506);
              v380 = v484;
              memcpy(v507, v484, 0x111uLL);
              sub_24B58FECC(v507);
              memcpy(v380, v506, 0x111uLL);
              v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
              v382 = v381[12];
              v383 = v381[16];
              v384 = v381[20];
              v385 = v474;
              v386 = &v474[v381[24]];
              LOBYTE(v495) = 1;
              sub_24B58FF7C();
              sub_24B5FFC9C();
              sub_24B5FFBFC();
              v387 = *MEMORY[0x277D04400];
              v388 = sub_24B5FF99C();
              (*(*(v388 - 8) + 104))(&v385[v383], v387, v388);
              v389 = swift_allocObject();
              *(v389 + 16) = v366;
              *(v389 + 24) = v485;
              *(v389 + 32) = v367;
              *(v389 + 40) = v476;
              *v386 = &unk_24B600E48;
              *(v386 + 1) = v389;
              v390 = *MEMORY[0x277D043E8];
              v391 = sub_24B5FF98C();
              (*(*(v391 - 8) + 104))(&v385[v384], v390, v391);
              v392 = v482;
              (*(v482 + 104))(v385, *MEMORY[0x277D043B0], v483);
              v103 = v478;
              v104 = *v478;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
              }

              v394 = v104[2];
              v393 = v104[3];
              if (v394 >= v393 >> 1)
              {
                v104 = sub_24B595ED0(v393 > 1, v394 + 1, 1, v104);
              }

              v104[2] = v394 + 1;
              result = (*(v392 + 32))(v104 + ((*(v392 + 80) + 32) & ~*(v392 + 80)) + *(v392 + 72) * v394, v385, v483);
LABEL_195:
              *v103 = v104;
              return result;
            }
          }

          else
          {
            nullsub_1(v512);
          }

          sub_24B58FE14(v508, v507);
          sub_24B58090C(v510, &qword_27F018B20, &qword_24B600D90);
          return sub_24B5A0ACC(&v527);
        }

        v63 = *v53;
        v64 = *(v53 + 8);
        v65 = *(v53 + 16);
        v66 = *(v53 + 24);
        v67 = *(v53 + 80);
        v502 = *(v53 + 64);
        v503 = v67;
        v504 = *(v53 + 96);
        v68 = *(v53 + 48);
        v500 = *(v53 + 32);
        v501 = v68;
        v69 = v484;
        memcpy(v512, v484, 0x111uLL);
        memcpy(v510, v484, 0x111uLL);
        if (sub_24B58FDFC(v510))
        {

          return sub_24B5A0B20(&v500);
        }

        LODWORD(v476) = v66;
        v479 = v64;
        *&v481 = v65;
        v212 = nullsub_1(v510);
        v213 = *(v212 + 72);
        memcpy(v509, v512, sizeof(v509));
        v214 = nullsub_1(v509);
        sub_24B57BAFC(v214, v508, &qword_27F018B68, &unk_24B600E50);

        sub_24B58090C(v212, &qword_27F018B70, &unk_24B604EC0);
        v215 = *(v212 + 128);
        v529 = *(v212 + 112);
        v530 = v215;
        v216 = *(v212 + 152);
        v531 = *(v212 + 144);
        v217 = *(v212 + 96);
        v527 = *(v212 + 80);
        v528 = v217;
        v218 = *(v212 + 160);
        v219 = *(v212 + 168);
        LODWORD(v472) = *(v212 + 176);
        v220 = *(v212 + 184);
        v221 = *(v212 + 200);
        v222 = *(v212 + 216);
        v223 = *(v212 + 232);
        v224 = *(v212 + 256);
        v535 = *(v212 + 248);
        v533[1] = v222;
        v534 = v223;
        v532 = v220;
        v533[0] = v221;
        v474 = *(v212 + 264);
        v480 = v63;
        if (sub_24B587A08(v216, v63) & 1) != 0 && v479 == v218 && (sub_24B587A08(v219, v481))
        {
          v225 = v476;
          v226 = sub_24B5886F8(v472, v476);

          if (v226)
          {
            v227 = type metadata accessor for FilterState();
            v228 = &v69[*(v227 + 28)];
            v229 = *v228;
            v526[0] = *(v228 + 1);
            *(v526 + 9) = *(v228 + 25);
            v525 = v229;
            v230 = *(v227 + 24);
            *&v508[0] = sub_24B5944BC(v481);
            v231 = sub_24B59682C(v508, sub_24B59C708, &type metadata for FilterItem, sub_24B59714C, sub_24B596C50);
            v232 = *&v508[0];
            MEMORY[0x28223BE20](v231);
            *(&v469 - 6) = &v525;
            *(&v469 - 5) = &v513;
            *(&v469 - 4) = &v527;
            *(&v469 - 3) = &v532;
            *(&v469 - 2) = v233;
            v471 = sub_24B5920E8(sub_24B5A0B74, (&v469 - 8), v232);

            v234 = v474;
            v235 = *(v474 + 2);
            if (v235)
            {
              v470 = v224;
              v494 = MEMORY[0x277D84F90];
              sub_24B5947D8(0, v235, 0);
              v236 = v494;
              v507[2] = v502;
              v507[3] = v503;
              *&v507[4] = v504;
              v507[0] = v500;
              v507[1] = v501;
              v472 = ((v477[80] + 32) & ~v477[80]);
              v237 = &v472[v234];
              v477 = *(v477 + 9);
              v238 = v235 - 1;
              v239 = v475;
              while (1)
              {
                v240 = v237;
                sub_24B5A13CC(v237, v239, type metadata accessor for FilterSectionDescriptor);
                v508[8] = v521;
                v508[9] = v522;
                v508[10] = v523;
                *&v508[11] = v524;
                v508[4] = v517;
                v508[5] = v518;
                v508[6] = v519;
                v508[7] = v520;
                v508[0] = v513;
                v508[1] = v514;
                v508[2] = v515;
                v508[3] = v516;
                *&v505[32] = v529;
                *&v505[48] = v530;
                *&v505[64] = v531;
                *v505 = v527;
                *&v505[16] = v528;
                v492[0] = v480;
                v492[1] = v479;
                v492[2] = v481;
                v493 = v225;
                v497 = v507[2];
                v498 = v507[3];
                v499 = *&v507[4];
                v495 = v507[0];
                v496 = v507[1];
                v489 = v533[1];
                v490 = v534;
                v491 = v535;
                v487 = v532;
                v488 = v533[0];

                sub_24B5A0B98(&v500, &v486);
                v241 = v485;
                sub_24B58DB00(v475, v505, v492, &v495, &v487, v485);
                v239 = v475;
                v506[2] = v497;
                v506[3] = v498;
                *&v506[4] = v499;
                v506[0] = v495;
                v506[1] = v496;
                sub_24B58090C(v506, &qword_27F018B70, &unk_24B604EC0);
                sub_24B5A0960(v492[0]);
                sub_24B5A149C(v239, type metadata accessor for FilterSectionDescriptor);
                v494 = v236;
                v243 = *(v236 + 16);
                v242 = *(v236 + 24);
                if (v243 >= v242 >> 1)
                {
                  sub_24B5947D8(v242 > 1, v243 + 1, 1);
                  v239 = v475;
                  v236 = v494;
                }

                *(v236 + 16) = v243 + 1;
                v244 = v477;
                sub_24B5A1434(v241, &v472[v236 + v243 * v477], type metadata accessor for FilterSectionDescriptor);
                if (!v238)
                {
                  break;
                }

                --v238;
                v237 = &v244[v240];
                v225 = v476;
              }

              v69 = v484;
              v225 = v476;
              v224 = v470;
            }

            else
            {

              v236 = MEMORY[0x277D84F90];
            }

            v442 = v471;
            v443 = *(v212 + 96);
            *&v505[7] = *(v212 + 80);
            *&v505[23] = v443;
            v444 = *(v212 + 128);
            *&v505[39] = *(v212 + 112);
            *&v505[55] = v444;
            *&v505[71] = *(v212 + 144);
            *&v507[0] = v480;
            *(&v507[0] + 1) = v479;
            *&v507[1] = v481;
            BYTE8(v507[1]) = v225;
            *(&v507[1] + 9) = *v505;
            *(&v507[5] + 8) = *&v505[63];
            *(&v507[4] + 9) = *&v505[48];
            *(&v507[3] + 9) = *&v505[32];
            *(&v507[2] + 9) = *&v505[16];
            *(&v507[6] + 8) = v500;
            *(&v507[10] + 1) = v504;
            *(&v507[9] + 8) = v503;
            *(&v507[8] + 8) = v502;
            *(&v507[7] + 8) = v501;
            memmove(&v507[11], (v212 + 184), 0x48uLL);
            *(&v507[15] + 1) = v442;
            *&v507[16] = v224;
            *(&v507[16] + 1) = v236;
            sub_24B5A09A0(v507);
            memcpy(v508, v69, 0x111uLL);
            sub_24B58FECC(v508);
            memcpy(v69, v507, 0x111uLL);
            v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
            v446 = v445[12];
            v447 = v445[16];
            v448 = v445[20];
            v75 = v473;
            v449 = (v473 + v445[24]);
            LOBYTE(v506[0]) = 5;
            sub_24B58FF7C();
            sub_24B5FFC9C();
            sub_24B5FFBFC();
            v450 = *MEMORY[0x277D04400];
            v451 = sub_24B5FF99C();
            (*(*(v451 - 8) + 104))(&v75[v447], v450, v451);
            v452 = swift_allocObject();
            v453 = v522;
            *(v452 + 144) = v521;
            *(v452 + 160) = v453;
            *(v452 + 176) = v523;
            *(v452 + 192) = v524;
            v454 = v518;
            *(v452 + 80) = v517;
            *(v452 + 96) = v454;
            v455 = v520;
            *(v452 + 112) = v519;
            *(v452 + 128) = v455;
            v456 = v514;
            *(v452 + 16) = v513;
            *(v452 + 32) = v456;
            v457 = v516;
            *(v452 + 48) = v515;
            *(v452 + 64) = v457;
            *v449 = &unk_24B600E68;
            v449[1] = v452;
            v458 = *MEMORY[0x277D043E8];
            v459 = sub_24B5FF98C();
            (*(*(v459 - 8) + 104))(&v75[v448], v458, v459);
            v407 = v482;
            (*(v482 + 104))(v75, *MEMORY[0x277D043B0], v483);
            v103 = v478;
            v104 = *v478;
            sub_24B592FB0(&v513, v506);
LABEL_190:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
            }

            v409 = v104[2];
            v408 = v104[3];
            if (v409 >= v408 >> 1)
            {
              v104 = sub_24B595ED0(v408 > 1, v409 + 1, 1, v104);
            }

            v104[2] = v409 + 1;
            result = (*(v407 + 32))(v104 + ((*(v407 + 80) + 32) & ~*(v407 + 80)) + *(v407 + 72) * v409, v75, v483);
            goto LABEL_195;
          }
        }

        else
        {
        }

        sub_24B5A0B20(&v500);

        sub_24B58090C(v212 + 184, &qword_27F018B60, &qword_24B6095B0);
        return sub_24B5A0ACC(v212 + 80);
      }

      v91 = *v53;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
      v93 = v92[12];
      v94 = v92[16];
      v95 = v92[20];
      v96 = &v39[v92[24]];
      v510[0] = 2;
      sub_24B58FF7C();
      sub_24B5FFC9C();
      sub_24B5FFBFC();
      v97 = *MEMORY[0x277D04400];
      v98 = sub_24B5FF99C();
      (*(*(v98 - 8) + 104))(&v39[v94], v97, v98);
      v99 = swift_allocObject();
      *(v99 + 16) = v91;
      *(v99 + 152) = v521;
      *(v99 + 168) = v522;
      *(v99 + 184) = v523;
      *(v99 + 200) = v524;
      *(v99 + 88) = v517;
      *(v99 + 104) = v518;
      *(v99 + 120) = v519;
      *(v99 + 136) = v520;
      *(v99 + 24) = v513;
      *(v99 + 40) = v514;
      *(v99 + 56) = v515;
      *(v99 + 72) = v516;
      *v96 = &unk_24B600E78;
      *(v96 + 1) = v99;
      v100 = *MEMORY[0x277D043E8];
      v101 = sub_24B5FF98C();
      (*(*(v101 - 8) + 104))(&v39[v95], v100, v101);
      v102 = v482;
      (*(v482 + 104))(v39, *MEMORY[0x277D043B0], v483);
      v103 = v478;
      v104 = *v478;
      sub_24B592FB0(&v513, v510);
LABEL_29:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
      }

      v106 = v104[2];
      v105 = v104[3];
      if (v106 >= v105 >> 1)
      {
        v104 = sub_24B595ED0(v105 > 1, v106 + 1, 1, v104);
      }

      v104[2] = v106 + 1;
      result = (*(v102 + 32))(v104 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v106, v39, v483);
      goto LABEL_195;
    }

    if (!EnumCaseMultiPayload)
    {
      v76 = *v53;
      v77 = *(v53 + 8);
      v78 = *(v53 + 16);
      v79 = *(v53 + 24);
      memcpy(v512, v484, 0x111uLL);
      memcpy(v510, v484, 0x111uLL);
      if (sub_24B58FDFC(v510) != 1)
      {
      }

      v80 = v78;
      LODWORD(v475) = v79;
      v480 = v77;
      v81 = nullsub_1(v510);
      v83 = *v81;
      v82 = *(v81 + 8);
      *&v481 = *(v81 + 16);
      LODWORD(v485) = *(v81 + 24);
      v84 = *(v81 + 248);
      v85 = *(v81 + 264);
      v479 = *(v81 + 256);
      v477 = v84;
      if (v83)
      {
        v474 = v85;
        if (v76)
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_24B58FE14(v512, v509);
          sub_24B5A0F9C(v83);
          sub_24B5A0F9C(v83);
          if (sub_24B587A08(v83, v76) & 1) != 0 && ((v480 ^ v82) & 1) == 0 && (sub_24B587A08(v481, v80))
          {
            LODWORD(v473) = sub_24B5886F8(v485, v475);
            sub_24B5A0960(v83);
            v86 = v80;

            v87 = v475;
            sub_24B5A0960(v76);

            v88 = v83;
            v89 = v87;
            v90 = v480;
            sub_24B5A0960(v88);
            if (v473)
            {

              sub_24B58090C(v81 + 176, &qword_27F018B60, &qword_24B6095B0);
              sub_24B58090C(v81 + 104, &qword_27F018B70, &unk_24B604EC0);
              return sub_24B5A0ACC(v81 + 32);
            }

            goto LABEL_129;
          }

          sub_24B5A0960(v83);

          v473 = v82;
          v90 = v480;
          v263 = v475;
          sub_24B5A0960(v76);

          v264 = v83;
          v89 = v263;
          v86 = v80;
LABEL_128:
          sub_24B5A0960(v264);
LABEL_129:
          v316 = *(v81 + 48);
          v317 = *(v81 + 80);
          *&v505[32] = *(v81 + 64);
          *&v505[48] = v317;
          *&v505[64] = *(v81 + 96);
          *v505 = *(v81 + 32);
          *&v505[16] = v316;
          v318 = *(v81 + 176);
          *(&v506[1] + 7) = *(v81 + 192);
          v319 = *(v81 + 224);
          *(&v506[2] + 7) = *(v81 + 208);
          *(&v506[3] + 7) = v319;
          *(&v506[4] + 7) = *(v81 + 240);
          *(v506 + 7) = v318;
          v320 = *(v81 + 120);
          v321 = *(v81 + 152);
          v508[2] = *(v81 + 136);
          v508[3] = v321;
          v322 = *(v81 + 168);
          v508[0] = *(v81 + 104);
          v508[1] = v320;
          v508[7] = *&v505[32];
          v508[8] = *&v505[48];
          v508[5] = *v505;
          v508[6] = *&v505[16];
          *(&v508[11] + 1) = v506[0];
          v508[15] = *(&v506[3] + 15);
          *(&v508[14] + 1) = v506[3];
          *(&v508[13] + 1) = v506[2];
          *&v508[4] = v322;
          *(&v508[4] + 1) = v477;
          *&v508[9] = *&v505[64];
          *(&v508[9] + 1) = v76;
          LOBYTE(v508[10]) = v90;
          *(&v508[10] + 1) = v86;
          LOBYTE(v508[11]) = v89;
          *(&v508[12] + 1) = v506[1];
          *&v508[16] = v479;
          *(&v508[16] + 1) = v474;
          sub_24B5A0ECC(v508);
          v323 = v484;
          memcpy(v509, v484, sizeof(v509));

          sub_24B58FECC(v509);
          memcpy(v323, v508, 0x111uLL);
          v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v325 = v324[12];
          v326 = v324[16];
          v327 = v324[20];
          v328 = v89;
          v329 = v90;
          v330 = v476;
          v331 = &v476[v324[24]];
          LOBYTE(v507[0]) = 0;
          sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v332 = *MEMORY[0x277D04400];
          v333 = sub_24B5FF99C();
          (*(*(v333 - 8) + 104))(&v330[v326], v332, v333);
          v334 = swift_allocObject();
          v335 = v522;
          *(v334 + 144) = v521;
          *(v334 + 160) = v335;
          *(v334 + 176) = v523;
          v336 = v524;
          v337 = v518;
          *(v334 + 80) = v517;
          *(v334 + 96) = v337;
          v338 = v520;
          *(v334 + 112) = v519;
          *(v334 + 128) = v338;
          v339 = v514;
          *(v334 + 16) = v513;
          *(v334 + 32) = v339;
          v340 = v516;
          *(v334 + 48) = v515;
          *(v334 + 64) = v340;
          *(v334 + 192) = v336;
          *(v334 + 200) = v76;
          *(v334 + 208) = v329;
          *(v334 + 216) = v86;
          *(v334 + 224) = v328;
          *v331 = &unk_24B600E98;
          *(v331 + 1) = v334;
          v341 = *MEMORY[0x277D043E8];
          v342 = sub_24B5FF98C();
          (*(*(v342 - 8) + 104))(&v330[v327], v341, v342);
          v343 = v482;
          (*(v482 + 104))(v330, *MEMORY[0x277D043B0], v483);
          v103 = v478;
          v104 = *v478;
          sub_24B592FB0(&v513, v507);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
          }

          v345 = v104[2];
          v344 = v104[3];
          if (v345 >= v344 >> 1)
          {
            v104 = sub_24B595ED0(v344 > 1, v345 + 1, 1, v104);
          }

          v104[2] = v345 + 1;
          result = (*(v343 + 32))(v104 + ((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v345, v330, v483);
          goto LABEL_195;
        }

        v86 = v80;

        sub_24B58FE14(v512, v509);
        sub_24B5A0F9C(v83);
      }

      else
      {
        if (!v76)
        {
          sub_24B58FE14(v512, v509);

          sub_24B58090C(v81 + 176, &qword_27F018B60, &qword_24B6095B0);
          sub_24B58090C(v81 + 104, &qword_27F018B70, &unk_24B604EC0);
          sub_24B5A0ACC(v81 + 32);
          return sub_24B5A0960(0);
        }

        v474 = v85;

        v86 = v80;

        sub_24B58FE14(v512, v509);
      }

      sub_24B5A0960(v83);
      v264 = v76;
      v90 = v480;
      v89 = v475;
      goto LABEL_128;
    }

    v126 = v42;
    v127 = *(v53 + 16);
    *v509 = *v53;
    *&v509[16] = v127;
    *&v509[25] = *(v53 + 25);
    v128 = v484;
    memcpy(v510, v484, 0x111uLL);
    if (sub_24B58FDFC(v510) == 1)
    {
      nullsub_1(v510);
      memcpy(v512, v128, 0x111uLL);
      v129 = sub_24B58FDFC(v512);
      if (v129 <= 1)
      {
        if (!v129)
        {
          v130 = nullsub_1(v512);
          v131 = *(v130 + 152);
          LOBYTE(v132) = *(v130 + 160);
          v133 = *(v130 + 168);
          v134 = *(v130 + 176);
LABEL_120:

          if ((sub_24B58D004(v509, v133) & 1) == 0)
          {
            sub_24B59621C(v509);
          }

          *&v507[0] = v131;
          BYTE8(v507[0]) = v132 & 1;
          *&v507[1] = v133;
          BYTE8(v507[1]) = v134;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
          v294 = swift_allocObject();
          v295 = *v509;
          v296 = *&v509[16];
          v294[1] = xmmword_24B600A30;
          v294[2] = v295;
          v294[3] = v296;
          *(v294 + 57) = *&v509[25];
          v297 = sub_24B59C8AC(v294);
          swift_setDeallocating();
          sub_24B59621C((v294 + 2));
          swift_deallocClassInstance();
          sub_24B5F0848(v297, v508);

          v298 = *&v508[0];
          LOBYTE(v297) = BYTE8(v508[0]);
          v299 = *&v508[1];
          v300 = BYTE8(v508[1]);
          v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v302 = v301[12];
          v303 = v301[16];
          *&v485 = v301[20];
          v304 = &v126[v301[24]];
          LOBYTE(v508[0]) = 6;
          sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v305 = *MEMORY[0x277D04400];
          v306 = sub_24B5FF99C();
          (*(*(v306 - 8) + 104))(&v126[v303], v305, v306);
          v307 = swift_allocObject();
          *(v307 + 16) = v298;
          *(v307 + 24) = v297;
          *(v307 + 32) = v299;
          *(v307 + 40) = v300;
          v39 = v126;
          *v304 = &unk_24B600E88;
          *(v304 + 1) = v307;
          v308 = *MEMORY[0x277D043E8];
          v309 = sub_24B5FF98C();
          (*(*(v309 - 8) + 104))(&v126[v485], v308, v309);
          v102 = v482;
          (*(v482 + 104))(v126, *MEMORY[0x277D043B0], v483);
          v103 = v478;
          v104 = *v478;
          goto LABEL_29;
        }

        v293 = nullsub_1(v512);
        v131 = *v293;
        if (*v293)
        {
          v134 = *(v293 + 24);
          v133 = *(v293 + 16);
          v132 = *(v293 + 8);
          goto LABEL_120;
        }
      }
    }

    return sub_24B59621C(v509);
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v55 = v484;
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v56 = *v53;
        memcpy(v510, v484, 0x111uLL);
        result = sub_24B58FDFC(v510);
        if (result > 1)
        {
          return result;
        }

        if (result)
        {
          result = nullsub_1(v510);
          v59 = *result;
          v62 = v473;
          if (!*result)
          {
            return result;
          }

          v61 = *(result + 16);
          v60 = *(result + 8);
          v246 = *result;
        }

        else
        {
          v58 = nullsub_1(v510);
          v59 = *(v58 + 152);
          LOBYTE(v60) = *(v58 + 160);
          v61 = *(v58 + 168);

          v62 = v473;
        }

        v247 = v60 & 1;
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
        v249 = v248[12];
        v250 = v248[16];
        v251 = v248[20];
        v252 = (v62 + v248[24]);
        v512[0] = 6;
        sub_24B58FF7C();
        sub_24B5FFC9C();
        sub_24B5FFBFC();
        v253 = *MEMORY[0x277D04400];
        v254 = sub_24B5FF99C();
        (*(*(v254 - 8) + 104))(v62 + v250, v253, v254);
        v255 = swift_allocObject();
        *(v255 + 16) = v59;
        *(v255 + 24) = v247;
        *(v255 + 32) = v61;
        *(v255 + 40) = v56;
        *v252 = &unk_24B600DC8;
        v252[1] = v255;
        v256 = *MEMORY[0x277D043E8];
        v257 = sub_24B5FF98C();
        (*(*(v257 - 8) + 104))(v62 + v251, v256, v257);
        (*(v482 + 104))(v62, *MEMORY[0x277D043B0], v483);
        v103 = v478;
        v104 = *v478;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
        }

        v259 = v104[2];
        v258 = v104[3];
        if (v259 >= v258 >> 1)
        {
          v104 = sub_24B595ED0(v258 > 1, v259 + 1, 1, v104);
        }

        v104[2] = v259 + 1;
        result = (*(v482 + 32))(v104 + ((*(v482 + 80) + 32) & ~*(v482 + 80)) + *(v482 + 72) * v259, v62, v483);
      }

      else
      {
        sub_24B5A149C(v53, type metadata accessor for FilterAction);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
        v136 = v135[12];
        v137 = v135[16];
        v138 = v135[20];
        v139 = v476;
        v140 = &v476[v135[24]];
        v510[0] = 5;
        sub_24B58FF7C();
        sub_24B5FFC9C();
        sub_24B5FFBFC();
        v141 = *MEMORY[0x277D04400];
        v142 = sub_24B5FF99C();
        (*(*(v142 - 8) + 104))(&v139[v137], v141, v142);
        v143 = swift_allocObject();
        v144 = v522;
        *(v143 + 144) = v521;
        *(v143 + 160) = v144;
        *(v143 + 176) = v523;
        *(v143 + 192) = v524;
        v145 = v518;
        *(v143 + 80) = v517;
        *(v143 + 96) = v145;
        v146 = v520;
        *(v143 + 112) = v519;
        *(v143 + 128) = v146;
        v147 = v514;
        *(v143 + 16) = v513;
        *(v143 + 32) = v147;
        v148 = v516;
        *(v143 + 48) = v515;
        *(v143 + 64) = v148;
        *v140 = &unk_24B600E30;
        *(v140 + 1) = v143;
        v149 = *MEMORY[0x277D043E8];
        v150 = sub_24B5FF98C();
        (*(*(v150 - 8) + 104))(&v139[v138], v149, v150);
        v151 = v482;
        (*(v482 + 104))(v139, *MEMORY[0x277D043B0], v483);
        v103 = v478;
        v104 = *v478;
        sub_24B592FB0(&v513, v510);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_24B595ED0(0, v104[2] + 1, 1, v104);
        }

        v153 = v104[2];
        v152 = v104[3];
        if (v153 >= v152 >> 1)
        {
          v104 = sub_24B595ED0(v152 > 1, v153 + 1, 1, v104);
        }

        v104[2] = v153 + 1;
        result = (*(v151 + 32))(v104 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v153, v139, v483);
      }

      goto LABEL_195;
    }

    v107 = *(v53 + 16);
    v485 = *v53;
    v508[0] = v485;
    v508[1] = v107;
    *(&v508[1] + 9) = *(v53 + 25);
    v481 = *(v53 + 16);
    v108 = *(v53 + 32);
    v109 = *(v53 + 40);
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0) + 64);
    memcpy(v510, v55, 0x111uLL);
    if (sub_24B58FDFC(v510) == 1)
    {
      nullsub_1(v510);
      memcpy(v512, v55, 0x111uLL);
      v111 = sub_24B58FDFC(v512);
      if (v111 <= 1)
      {
        if (!v111)
        {
          LODWORD(v480) = v109;
          v112 = nullsub_1(v512);
          v113 = *(v112 + 152);
          v114 = *(v112 + 160);
          v115 = *(v112 + 168);
          LODWORD(v116) = *(v112 + 176);
LABEL_109:

          v266 = sub_24B58D004(v508, v115);
          v475 = v110;
          v476 = v53;
          if (v266)
          {
            v267 = v115;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
            v268 = swift_allocObject();
            v269 = (v268 + 2);
            v270 = v508[0];
            v271 = v508[1];
            v268[1] = xmmword_24B600A30;
            v268[2] = v270;
            v268[3] = v271;
            *(v268 + 57) = *(&v508[1] + 9);
            v272 = sub_24B59C8AC(v268);
            goto LABEL_204;
          }

          LODWORD(v471) = v114;
          LODWORD(v473) = v116;
          v474 = v113;
          v346 = v115 + 56;
          v347 = 1 << *(v115 + 32);
          v348 = -1;
          if (v347 < 64)
          {
            v348 = ~(-1 << v347);
          }

          v349 = v348 & *(v115 + 56);
          v350 = (v347 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v351 = 0;
          v477 = v108;
          v479 = v115;
          if (v349)
          {
            while (1)
            {
              v352 = v351;
LABEL_141:
              v353 = *(v115 + 48) + 48 * (__clz(__rbit64(v349)) | (v352 << 6));
              v354 = *v353;
              v161 = *(v353 + 8);
              v349 &= v349 - 1;
              v113 = *(v353 + 16);
              v53 = *(v353 + 24);
              v109 = *(v353 + 32);
              v355 = *(v353 + 40);
              v484 = v354;
              *v509 = v354;
              *&v509[8] = v161;
              *&v509[16] = v113;
              *&v509[24] = v53;
              *&v509[32] = v109;
              v509[40] = v355;
              *&v509[48] = v485;
              *&v509[64] = v481;
              *&v509[80] = v108;
              v509[88] = v480;
              v356 = BYTE8(v508[2]);
              if (v355 <= 3)
              {
                break;
              }

              if (v355 <= 5)
              {
                if (v355 == 4)
                {
                  v360 = v161;
                  sub_24B57BA1C(v484, v161, v113, v53, v109, 4u);
                  if (v356 == 4)
                  {
                    v461 = 4;
                    v462 = v484;
                    v463 = v360;
                    v464 = v360;
                    v465 = v113;
                    v466 = v53;
                    v467 = v109;
                    v468 = 4;
                    goto LABEL_220;
                  }
                }

                else
                {
                  v364 = v161;
                  sub_24B57BA1C(v484, v161, v113, v53, v109, 5u);
                  if (v356 == 5)
                  {
                    v461 = 5;
                    v462 = v484;
                    v463 = v364;
                    v464 = v364;
                    v465 = v113;
                    v466 = v53;
                    v467 = v109;
                    v468 = 5;
LABEL_220:
                    sub_24B57BA1C(v462, v464, v465, v466, v467, v468);
                    sub_24B58FF20(v508, v507);
                    v115 = v479;

                    sub_24B58090C(v509, &qword_27F018B40, &qword_24B600DD8);

                    v460 = 0;
LABEL_186:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B48, &qword_24B600DE0);
                    v395 = swift_allocObject();
                    *(v395 + 32) = v484;
                    v396 = v395 + 32;
                    *(v395 + 40) = v463;
                    *(v395 + 48) = v113;
                    *(v395 + 56) = v53;
                    *(v395 + 64) = v109;
                    *(v395 + 72) = v461;
                    if (v460)
                    {
                      v267 = v115;
                      v116 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                      *&v485 = v109;
                      LODWORD(v481) = v461;
                      sub_24B57BA1C(v484, v463, v113, v53, v109, v461);
                      v116 = MEMORY[0x277D84F90];
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v116 = sub_24B595BDC(0, *(v116 + 2) + 1, 1, v116);
                      }

                      v411 = *(v116 + 2);
                      v410 = *(v116 + 3);
                      if (v411 >= v410 >> 1)
                      {
                        v116 = sub_24B595BDC((v410 > 1), v411 + 1, 1, v116);
                      }

                      v412 = v53;
                      v267 = v115;
                      *(v116 + 2) = v411 + 1;
                      v413 = &v116[48 * v411];
                      v414 = v485;
                      *(v413 + 4) = v484;
                      *(v413 + 5) = v463;
                      *(v413 + 6) = v113;
                      *(v413 + 7) = v412;
                      *(v413 + 8) = v414;
                      v413[72] = v481;
                    }

                    swift_setDeallocating();
                    sub_24B58090C(v396, &qword_27F018B50, &qword_24B600DE8);
                    swift_deallocClassInstance();
                    v272 = sub_24B5A05D4(v116);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
                    v415 = swift_allocObject();
                    v269 = (v415 + 2);
                    v416 = v508[0];
                    v417 = v508[1];
                    v415[1] = xmmword_24B600A30;
                    v415[2] = v416;
                    v415[3] = v417;
                    *(v415 + 57) = *(&v508[1] + 9);
                    sub_24B59C8AC(v415);
                    v113 = v474;
                    LOBYTE(v116) = v473;
                    LOBYTE(v114) = v471;
LABEL_204:
                    swift_setDeallocating();
                    sub_24B59621C(v269);
                    swift_deallocClassInstance();
                    *&v507[0] = v113;
                    BYTE8(v507[0]) = v114 & 1;
                    *&v507[1] = v267;
                    BYTE8(v507[1]) = v116;
                    sub_24B5F0848(v272, v509);

                    v418 = *v509;
                    v419 = v509[8];
                    v420 = *&v509[16];
                    v421 = v509[24];
                    v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
                    v423 = v422[12];
                    v424 = v422[16];
                    v425 = v422[20];
                    v426 = v472;
                    v427 = &v472[v422[24]];
                    v509[0] = 6;
                    sub_24B58FF7C();
                    sub_24B5FFC9C();
                    sub_24B5FFBFC();
                    v428 = *MEMORY[0x277D04400];
                    v429 = sub_24B5FF99C();
                    (*(*(v429 - 8) + 104))(&v426[v424], v428, v429);
                    v430 = swift_allocObject();
                    *(v430 + 16) = v418;
                    *(v430 + 24) = v419;
                    *(v430 + 32) = v420;
                    *(v430 + 40) = v421;
                    *v427 = &unk_24B600E00;
                    *(v427 + 1) = v430;
                    v431 = *MEMORY[0x277D043E8];
                    v432 = sub_24B5FF98C();
                    (*(*(v432 - 8) + 104))(&v426[v425], v431, v432);
                    v433 = v482;
                    (*(v482 + 104))(v426, *MEMORY[0x277D043B0], v483);
                    v434 = v478;
                    v435 = *v478;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v435 = sub_24B595ED0(0, v435[2] + 1, 1, v435);
                    }

                    v437 = v475;
                    v436 = v476;
                    v439 = v435[2];
                    v438 = v435[3];
                    if (v439 >= v438 >> 1)
                    {
                      v435 = sub_24B595ED0(v438 > 1, v439 + 1, 1, v435);
                    }

                    v435[2] = v439 + 1;
                    (*(v433 + 32))(v435 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v439, v472, v483);
                    *v434 = v435;
                    v440 = sub_24B5FEE4C();
                    return (*(*(v440 - 8) + 8))(&v437[v436], v440);
                  }
                }

LABEL_167:
                sub_24B58FF20(v508, v507);
                sub_24B58090C(v509, &qword_27F018B40, &qword_24B600DD8);
                v351 = v352;
                v115 = v479;
                v108 = v477;
                if (!v349)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                if (v355 == 6)
                {
                  v361 = v161;
                  sub_24B57BA1C(v484, v161, v113, v53, v109, 6u);
                  if (v356 == 6)
                  {
                    v461 = 6;
                    v462 = v484;
                    v463 = v361;
                    v464 = v361;
                    v465 = v113;
                    v466 = v53;
                    v467 = v109;
                    v468 = 6;
                    goto LABEL_220;
                  }

                  goto LABEL_167;
                }

                if (v355 == 7)
                {
                  v357 = v161;
                  sub_24B57BA1C(v484, v161, v113, v53, v109, 7u);
                  if (v356 == 7)
                  {
                    v461 = 7;
                    v462 = v484;
                    v463 = v357;
                    v464 = v357;
                    v465 = v113;
                    v466 = v53;
                    v467 = v109;
                    v468 = 7;
                    goto LABEL_220;
                  }

                  goto LABEL_167;
                }

                if (BYTE8(v508[2]) == 8)
                {
                  goto LABEL_218;
                }

                sub_24B58FF20(v508, v507);
                sub_24B58090C(v509, &qword_27F018B40, &qword_24B600DD8);
                v351 = v352;
                v115 = v479;
                if (!v349)
                {
                  goto LABEL_138;
                }
              }
            }

            if (v355 > 1)
            {
              if (v355 == 2)
              {
                v359 = v161;
                sub_24B57BA1C(v484, v161, v113, v53, v109, 2u);
                if (v356 == 2)
                {
                  v461 = 2;
                  v462 = v484;
                  v463 = v359;
                  v464 = v359;
                  v465 = v113;
                  v466 = v53;
                  v467 = v109;
                  v468 = 2;
                  goto LABEL_220;
                }
              }

              else
              {
                v363 = v161;
                sub_24B57BA1C(v484, v161, v113, v53, v109, 3u);
                if (v356 == 3)
                {
                  v461 = 3;
                  v462 = v484;
                  v463 = v363;
                  v464 = v363;
                  v465 = v113;
                  v466 = v53;
                  v467 = v109;
                  v468 = 3;
                  goto LABEL_220;
                }
              }
            }

            else if (v355)
            {
              v362 = v161;
              sub_24B57BA1C(v484, v161, v113, v53, v109, 1u);
              if (v356 == 1)
              {
                v461 = 1;
                v462 = v484;
                v463 = v362;
                v464 = v362;
                v465 = v113;
                v466 = v53;
                v467 = v109;
                v468 = 1;
                goto LABEL_220;
              }
            }

            else
            {
              v358 = v161;
              sub_24B57BA1C(v484, v161, v113, v53, v109, 0);
              if (!v356)
              {
                v463 = v358;
                sub_24B57BA1C(v484, v358, v113, v53, v109, 0);
                sub_24B58FF20(v508, v507);
                v115 = v479;

                sub_24B58090C(v509, &qword_27F018B40, &qword_24B600DD8);

                v460 = 0;
                v461 = 0;
                goto LABEL_186;
              }
            }

            goto LABEL_167;
          }

LABEL_138:
          while (1)
          {
            v352 = v351 + 1;
            if (__OFADD__(v351, 1))
            {
              break;
            }

            if (v352 >= v350)
            {

              v484 = 0;
              v463 = 0;
              v113 = 0;
              v53 = 0;
              v109 = 0;
              v461 = 255;
              v460 = 1;
              goto LABEL_186;
            }

            v349 = *(v346 + 8 * v352);
            ++v351;
            if (v349)
            {
              goto LABEL_141;
            }
          }

LABEL_217:
          __break(1u);
LABEL_218:
          v115 = v479;
          v463 = v161;

          sub_24B58090C(v509, &qword_27F018B40, &qword_24B600DD8);

          v460 = 0;
          v461 = 8;
          goto LABEL_186;
        }

        v265 = nullsub_1(v512);
        v113 = *v265;
        if (*v265)
        {
          LODWORD(v480) = v109;
          LODWORD(v116) = *(v265 + 24);
          v115 = *(v265 + 16);
          v114 = *(v265 + 8);
          goto LABEL_109;
        }
      }
    }

    sub_24B59621C(v508);
    v245 = sub_24B5FEE4C();
    return (*(*(v245 - 8) + 8))(v110 + v53, v245);
  }

  v70 = v484;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9)
    {
      memcpy(v508, v484, 0x111uLL);
      sub_24B58FDC8(v509);
      memcpy(v510, v508, 0x111uLL);
      memcpy(v511, v509, sizeof(v511));
      memcpy(v512, v508, 0x111uLL);
      v154 = sub_24B58FDFC(v512);
      if (v154 > 1)
      {
        if (v154 == 2)
        {
          sub_24B58090C(v510, &qword_27F018B20, &qword_24B600D90);
          sub_24B58FE70(v506);
          memcpy(v507, v70, 0x111uLL);
          sub_24B58FECC(v507);
          memcpy(v70, v506, 0x111uLL);
          v167 = &v70[*(type metadata accessor for FilterState() + 28)];
          v168 = *(v167 + 25);
          v169 = v167[1];
          v532 = *v167;
          v533[0] = v169;
          *(v533 + 9) = v168;
          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
          v171 = v170[12];
          v172 = v170[16];
          v173 = v170[20];
          v174 = v471;
          v175 = &v471[v170[24]];
          LOBYTE(v527) = 4;
          sub_24B58FF20(&v532, v505);
          v176 = sub_24B58FF7C();
          sub_24B5FFC9C();
          sub_24B5FFBFC();
          v177 = *MEMORY[0x277D04400];
          v178 = sub_24B5FF99C();
          v179 = *(v178 - 1);
          v180 = *(v179 + 104);
          v484 = v178;
          v480 = v179 + 104;
          *&v481 = v180;
          v180(&v174[v172], v177);
          v181 = swift_allocObject();
          v182 = v522;
          *(v181 + 144) = v521;
          *(v181 + 160) = v182;
          *(v181 + 176) = v523;
          v183 = v518;
          *(v181 + 80) = v517;
          *(v181 + 96) = v183;
          v184 = v520;
          *(v181 + 112) = v519;
          *(v181 + 128) = v184;
          v185 = v514;
          *(v181 + 16) = v513;
          *(v181 + 32) = v185;
          v186 = v516;
          *(v181 + 48) = v515;
          *(v181 + 64) = v186;
          v187 = v533[0];
          *(v181 + 200) = v532;
          *(v181 + 192) = v524;
          *(v181 + 216) = v187;
          *(v181 + 225) = *(v533 + 9);
          *v175 = &unk_24B600DA8;
          *(v175 + 1) = v181;
          v188 = *MEMORY[0x277D043E8];
          v189 = sub_24B5FF98C();
          v190 = *(v189 - 8);
          v191 = *(v190 + 104);
          v473 = v190 + 104;
          (v191)(&v174[v173], v188, v189);
          LODWORD(v175) = *MEMORY[0x277D043B0];
          v192 = *(v482 + 104);
          (v192)(v174, *MEMORY[0x277D043B0], v483);
          v193 = *v478;
          sub_24B592FB0(&v513, v505);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v485 = v176;
          LODWORD(v479) = v175;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v193 = sub_24B595ED0(0, v193[2] + 1, 1, v193);
          }

          v196 = v193[2];
          v195 = v193[3];
          v477 = v192;
          v475 = v191;
          if (v196 >= v195 >> 1)
          {
            v193 = sub_24B595ED0(v195 > 1, v196 + 1, 1, v193);
          }

          v193[2] = v196 + 1;
          v197 = v483;
          v198 = *(v482 + 32);
          v472 = ((*(v482 + 80) + 32) & ~*(v482 + 80));
          v199 = *(v482 + 72);
          v482 += 32;
          v476 = v198;
          (v198)(&v472[v193 + v199 * v196], v174, v483);
          v471 = v170[12];
          v200 = v170[16];
          v201 = v170[20];
          v202 = v474;
          v203 = &v474[v170[24]];
          v505[0] = 3;
          sub_24B5FFC9C();
          (v481)(&v202[v200], *MEMORY[0x277D043F0], v484);
          (v475)(&v202[v201], *MEMORY[0x277D043E0], v189);
          v204 = swift_allocObject();
          v205 = v522;
          *(v204 + 144) = v521;
          *(v204 + 160) = v205;
          *(v204 + 176) = v523;
          *(v204 + 192) = v524;
          v206 = v518;
          *(v204 + 80) = v517;
          *(v204 + 96) = v206;
          v207 = v520;
          *(v204 + 112) = v519;
          *(v204 + 128) = v207;
          v208 = v514;
          *(v204 + 16) = v513;
          *(v204 + 32) = v208;
          v209 = v516;
          *(v204 + 48) = v515;
          *(v204 + 64) = v209;
          *v203 = &unk_24B600DB8;
          *(v203 + 1) = v204;
          sub_24B592FB0(&v513, v505);
          sub_24B5FFBFC();
          (v477)(v202, v479, v197);
          v211 = v193[2];
          v210 = v193[3];
          if (v211 >= v210 >> 1)
          {
            v193 = sub_24B595ED0(v210 > 1, v211 + 1, 1, v193);
          }

          v193[2] = v211 + 1;
          result = (v476)(&v472[v193 + v211 * v199], v474, v483);
          *v478 = v193;
          return result;
        }
      }

      else
      {
        nullsub_1(v512);
      }

      sub_24B58FE14(v508, v507);
      return sub_24B58090C(v510, &qword_27F018B20, &qword_24B600D90);
    }

    memcpy(v510, v484, 0x111uLL);
    result = sub_24B58FDFC(v510);
    if (result != 1)
    {
      return result;
    }

    nullsub_1(v510);
    memcpy(v512, v70, 0x111uLL);
    result = sub_24B58FDFC(v512);
    if (result > 1)
    {
      return result;
    }

    if (result)
    {
      result = nullsub_1(v512);
      v75 = v470;
      if (!*result)
      {
        return result;
      }

      v74 = *(result + 24);
      v310 = *(result + 16);
      v311 = *result;
    }

    else
    {
      v71 = nullsub_1(v512);
      v72 = *(v71 + 152);
      v73 = *(v71 + 168);
      v74 = *(v71 + 176);

      v75 = v470;
    }

    v312 = v515;
    if (v515)
    {
      v313 = BYTE8(v516);
      v314 = v516;
      v315 = BYTE8(v515);

      *v509 = v312;
      v509[8] = v315 & 1;
      *&v509[16] = v314;
    }

    else
    {
      (v520)(v509, v74);

      v312 = *v509;
      v315 = v509[8];
      v314 = *&v509[16];
      v313 = v509[24];
    }

    v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
    v398 = v397[12];
    v399 = v397[16];
    v400 = v397[20];
    v401 = &v75[v397[24]];
    v509[0] = 1;
    sub_24B58FF7C();
    sub_24B5FFC9C();
    sub_24B5FFBFC();
    v402 = *MEMORY[0x277D04400];
    v403 = sub_24B5FF99C();
    (*(*(v403 - 8) + 104))(&v75[v399], v402, v403);
    v404 = swift_allocObject();
    *(v404 + 16) = v312;
    *(v404 + 24) = v315 & 1;
    *(v404 + 32) = v314;
    *(v404 + 40) = v313;
    *v401 = &unk_24B600E10;
    *(v401 + 1) = v404;
    v405 = *MEMORY[0x277D043E8];
    v406 = sub_24B5FF98C();
    (*(*(v406 - 8) + 104))(&v75[v400], v405, v406);
    v407 = v482;
    (*(v482 + 104))(v75, *MEMORY[0x277D043B0], v483);
    v103 = v478;
    v104 = *v478;
    goto LABEL_190;
  }

  memcpy(v510, v484, 0x111uLL);
  result = sub_24B58FDFC(v510);
  if (result == 1)
  {
    nullsub_1(v510);
    memcpy(v512, v70, 0x111uLL);
    result = sub_24B58FDFC(v512);
    if (result <= 1)
    {
      if (result)
      {
        result = nullsub_1(v512);
        v121 = v469;
        if (!*result)
        {
          return result;
        }

        v120 = *(result + 24);
        v273 = *(result + 16);
        v274 = *result;
      }

      else
      {
        v117 = nullsub_1(v512);
        v118 = *(v117 + 152);
        v119 = *(v117 + 168);
        v120 = *(v117 + 176);

        v121 = v469;
      }

      (v520)(v509, v120);

      v275 = *v509;
      v276 = v509[8];
      v277 = *&v509[16];
      v278 = v509[24];
      v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B28, &qword_24B600D98);
      v280 = v279[12];
      v281 = v279[16];
      v282 = v279[20];
      v283 = &v121[v279[24]];
      v509[0] = 7;
      sub_24B58FF7C();
      sub_24B5FFC9C();
      sub_24B5FFBFC();
      v284 = *MEMORY[0x277D04400];
      v285 = sub_24B5FF99C();
      (*(*(v285 - 8) + 104))(&v121[v281], v284, v285);
      v286 = swift_allocObject();
      *(v286 + 16) = v275;
      *(v286 + 24) = v276;
      *(v286 + 32) = v277;
      *(v286 + 40) = v278;
      *v283 = &unk_24B600E20;
      *(v283 + 1) = v286;
      v287 = *MEMORY[0x277D043E8];
      v288 = sub_24B5FF98C();
      (*(*(v288 - 8) + 104))(&v121[v282], v287, v288);
      v289 = v482;
      (*(v482 + 104))(v121, *MEMORY[0x277D043B0], v483);
      v290 = *v478;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v290 = sub_24B595ED0(0, v290[2] + 1, 1, v290);
      }

      v292 = v290[2];
      v291 = v290[3];
      if (v292 >= v291 >> 1)
      {
        v290 = sub_24B595ED0(v291 > 1, v292 + 1, 1, v290);
      }

      v290[2] = v292 + 1;
      result = (*(v289 + 32))(v290 + ((*(v289 + 80) + 32) & ~*(v289 + 80)) + *(v289 + 72) * v292, v121, v483);
      *v478 = v290;
    }
  }

  return result;
}