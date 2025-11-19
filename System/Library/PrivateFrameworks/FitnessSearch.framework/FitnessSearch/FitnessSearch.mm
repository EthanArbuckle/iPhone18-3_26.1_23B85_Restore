uint64_t type metadata accessor for SearchItem()
{
  result = qword_1EE2C4628;
  if (!qword_1EE2C4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C21ACC()
{
  sub_1E5C21D70();
  if (v0 <= 0x3F)
  {
    sub_1E5C22184(319, qword_1EE2C46D8, &type metadata for SearchContentAssetLoadStatus, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E5C22184(319, &qword_1EE2C4050, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E5C221D4(319, &qword_1EE2C4918, MEMORY[0x1E6968848]);
        if (v3 <= 0x3F)
        {
          sub_1E5C22184(319, &qword_1EE2C4088, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E5C22184(319, &unk_1EE2C4058, MEMORY[0x1E69E6810], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1E5C22184(319, qword_1EE2C4158, &type metadata for SearechContentMediaType, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1E5C221D4(319, qword_1EE2C42D0, type metadata accessor for SearchArtwork);
                if (v7 <= 0x3F)
                {
                  sub_1E5C221D4(319, &qword_1EE2C4910, MEMORY[0x1E6968FB0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1E5C9BAA0();
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

void sub_1E5C21D70()
{
  if (!qword_1EE2C4900)
  {
    type metadata accessor for SearchArtwork();
    sub_1E5C21FD4(&qword_1EE2C4340, type metadata accessor for SearchArtwork);
    v0 = sub_1E5C9BC60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C4900);
    }
  }
}

uint64_t type metadata accessor for SearchArtwork()
{
  result = qword_1EE2C4310;
  if (!qword_1EE2C4310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C21E50()
{
  sub_1E5C21F38(319, &qword_1EE2C4908, MEMORY[0x1E699DB98]);
  if (v0 <= 0x3F)
  {
    sub_1E5C21F38(319, &qword_1EE2C4910, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C21F38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5C9CE20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E5C21F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5C21FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5C2201C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5C22184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E5C221D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5C9CE20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B21EditorialContentStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t type metadata accessor for SearchState()
{
  result = qword_1EE2C44C0;
  if (!qword_1EE2C44C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C222A0()
{
  sub_1E5C9BBD0();
  if (v0 <= 0x3F)
  {
    sub_1E5C223F8();
    if (v1 <= 0x3F)
    {
      sub_1E5C22530();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B12ResultsStateO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1E5C223B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

void sub_1E5C223F8()
{
  if (!qword_1EE2C4078)
  {
    type metadata accessor for SearchHistoryItem();
    v0 = sub_1E5C9CD00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C4078);
    }
  }
}

uint64_t type metadata accessor for SearchHistoryItem()
{
  result = qword_1EE2C48E8;
  if (!qword_1EE2C48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B10HintsStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5C224B4()
{
  result = sub_1E5C9BB60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5C22530()
{
  if (!qword_1EE2C47E0[0])
  {
    v0 = sub_1E5C9CE20();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C47E0);
    }
  }
}

uint64_t sub_1E5C22580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5C225C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
  sub_1E5C9C290();
  sub_1E5C9C800();
  sub_1E5C9BFB0();
  sub_1E5C266CC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for SearchFilterPicker.FadingView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchFilterPicker.FadingView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E5C22740()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5C2277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v7 = sub_1E5C9BC20();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 40) + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }
}

uint64_t sub_1E5C22870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  result = sub_1E5C9BC20();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5C22960(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  swift_getOpaqueTypeConformance2();
  sub_1E5C2CAD0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C030();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C2CB54();
  sub_1E5C2CDCC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5C9C8F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C22D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054030, &qword_1E5C9E6E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C22D88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1E5C9BBA0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (type metadata accessor for SearchView() - 8);
  v8 = (v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v10 = *(v0 + v8);
  v11 = *(v0 + v8 + 8);
  v12 = *(v0 + v8 + 16);
  sub_1E5C277E8();
  v13 = v7[11];
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5C9BC20();
  (*(*(v14 - 8) + 8))(v0 + v8 + v13, v14);
  v15 = *(v0 + v8 + v7[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5C22F3C()
{
  v1 = sub_1E5C9BFE0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E5C9BBA0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5C230D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5C9BBD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E5C23198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5C9BBD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C23254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5C9BBA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5C23314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5C9BBA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C233D8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5C234BC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E5C23634()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v2 = (type metadata accessor for TVSearchableView() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  sub_1E5C48660(*v4, *(v4 + 8));
  v5 = *(v4 + 24);

  (*(*(v1 - 8) + 8))(v4 + v2[16], v1);
  (*(*(v7 - 8) + 8))(v4 + v2[17]);
  return swift_deallocObject();
}

uint64_t sub_1E5C2377C()
{
  v1 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v2 = (type metadata accessor for TVSearchableView() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_1E5C48660(*(v0 + v3), *(v0 + v3 + 8));
  v6 = *(v5 + 24);

  (*(*(v1 - 8) + 8))(v5 + v2[16], v1);
  (*(*(v12 - 8) + 8))(v5 + v2[17]);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v4 + 16);

  v9 = *(v0 + v4 + 32);

  v10 = *(v0 + v4 + 48);

  return swift_deallocObject();
}

uint64_t sub_1E5C238EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5C9C090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5C2391C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1E5C9C390();
  sub_1E5C9BFB0();
  sub_1E5C9C290();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C800();
  sub_1E5C48438();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5C2CDCC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C23AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B8, &qword_1E5CA13C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C23B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E5C23B70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5C23BA8()
{
  v1 = (type metadata accessor for SearchHistoryItem() - 8);
  v2 = (*(*v1 + 80) + 120) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 10);

  v8 = *(v0 + 12);

  v9 = *(v0 + 14);

  v10 = *&v0[v2 + 8];

  v11 = v1[7];
  v12 = sub_1E5C9BB60();
  (*(*(v12 - 8) + 8))(&v0[v2 + v11], v12);

  return swift_deallocObject();
}

uint64_t sub_1E5C23CE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C140();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C23D14(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5C9C150();
}

uint64_t sub_1E5C23DA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[34];

  v17 = v0[36];

  v18 = v0[38];

  return swift_deallocObject();
}

uint64_t sub_1E5C23E68()
{
  v1 = (type metadata accessor for SearchHistoryItem() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2 + 8);

  v5 = v1[7];
  v6 = sub_1E5C9BB60();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1E5C23F50()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  v11 = v0[24];

  v12 = v0[26];

  v13 = v0[28];

  v14 = v0[30];

  v15 = v0[32];

  v16 = v0[35];

  v17 = v0[37];

  v18 = v0[39];

  return swift_deallocObject();
}

uint64_t sub_1E5C24010()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  return swift_deallocObject();
}

uint64_t sub_1E5C24160()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[34];

  v17 = v0[36];

  v18 = v0[38];

  return swift_deallocObject();
}

uint64_t sub_1E5C24220()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[35];

  v17 = v0[37];

  v18 = v0[39];

  return swift_deallocObject();
}

uint64_t sub_1E5C24300(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5C9BB60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5C243AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5C9BB60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5C24458(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5C9BAA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5C24504(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5C9BAA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5C245A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E68, &unk_1E5CA3390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5C24674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E68, &unk_1E5CA3390);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C2474C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5C9C120();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C247A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5C9C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5C247D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E5C9C170();
}

uint64_t sub_1E5C24900()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5C9C340();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = *(v4 + v1[5]);

  v9 = (v4 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[5])
  {
    v12 = v9[3];

    v13 = v9[5];

    v14 = v9[8];

    v15 = v9[9];
  }

  v16 = (v4 + v1[7]);
  if (*v16)
  {
    v17 = v16[1];
  }

  return swift_deallocObject();
}

uint64_t sub_1E5C24AD4()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5C9BFA0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20));

  v8 = (v4 + *(v1 + 24));
  if (v8[3])
  {
    v9 = v8[1];

    v10 = v8[3];

    v11 = v8[6];

    v12 = v8[7];
  }

  return swift_deallocObject();
}

uint64_t sub_1E5C24D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[19];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[23];
      goto LABEL_5;
    }

    v18 = sub_1E5C9BAA0();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[24];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1E5C24F7C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[19];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[23];
    goto LABEL_5;
  }

  v18 = sub_1E5C9BAA0();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[24];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E5C251B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E5C252F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5C25430()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1E5C25478()
{
  v1 = (type metadata accessor for SearchHint() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = sub_1E5C9BBA0();
  (*(*(v7 - 8) + 8))(&v0[v2], v7);
  v8 = *&v0[v2 + 8 + v1[7]];

  v9 = *&v0[v2 + 8 + v1[8]];

  v10 = *&v0[v2 + 8 + v1[10]];

  return swift_deallocObject();
}

uint64_t sub_1E5C2559C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C0C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C255C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5C9C0D0();
}

void sub_1E5C25624(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E5C8B7C0();
  sub_1E5C9BB20();
  __break(1u);
}

uint64_t sub_1E5C25670(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055860, &qword_1E5CA5918);
  return sub_1E5C9CBC0();
}

uint64_t sub_1E5C256CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055768, &qword_1E5CA57E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055760, &qword_1E5CA57D8);
  sub_1E5C9BEF0();
  sub_1E5C27F74(&qword_1ED0557E0, &qword_1ED055760, &qword_1E5CA57D8);
  swift_getOpaqueTypeConformance2();
  sub_1E5C8B5C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C257D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5C25810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = sub_1E5C9CAD0();
  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t sub_1E5C25874(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B00, &unk_1E5CA69E0);
  return sub_1E5C9CBC0();
}

uint64_t sub_1E5C258D4(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for TVSearchableView();
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  sub_1E5C9BFB0();
  sub_1E5C9BFB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
  swift_getOpaqueTypeConformance2();
  sub_1E5C91B1C();
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9BFB0();
  sub_1E5C9BFB0();
  sub_1E5C9BFB0();
  swift_getOpaqueTypeConformance2();
  sub_1E5C92110();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5C25B40()
{
  v1 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v0 + 40);
  v2 = (type metadata accessor for TVSearchView() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = (type metadata accessor for SearchHint() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = (v0 + v3);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  sub_1E5C277E8();
  (*(*(v1 - 8) + 8))(v8 + v2[15], v1);
  (*(*(v17 - 8) + 8))(v8 + v2[16]);
  v12 = sub_1E5C9BBA0();
  (*(*(v12 - 8) + 8))(v0 + v6, v12);
  v13 = *(v0 + v6 + v5[7] + 8);

  v14 = *(v0 + v6 + v5[8] + 8);

  v15 = *(v0 + v6 + v5[10] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5C25D54()
{
  MEMORY[0x1E693A1B0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5C25D8C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1E5C25DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5C25E8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E48, qword_1E5C9DDD8);
  v5 = sub_1E5C27F74(&qword_1EE2C40A0, &qword_1ED053E48, qword_1E5C9DDD8);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t SearchLandingView.init(store:canvasView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a4 = sub_1E5C25FF4;
  *(a4 + 8) = v8;
  *(a4 + 16) = 0;
  v9 = *(type metadata accessor for SearchLandingView() + 36);

  a3(v10);
}

uint64_t sub_1E5C25FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t SearchLandingView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v50 = *(a1 - 8);
  v57 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
  v6 = *(a1 + 16);
  sub_1E5C9C290();
  v7 = sub_1E5C9C800();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v38 - v9;
  v45 = v7;
  v10 = sub_1E5C9BFB0();
  v52 = v10;
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v38 - v12;
  v13 = sub_1E5C266CC();
  v14 = *(a1 + 24);
  v69 = v13;
  v70 = v14;
  WitnessTable = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v66 = v44;
  v67 = MEMORY[0x1E69805D0];
  v51 = swift_getWitnessTable();
  v62 = v10;
  v63 = MEMORY[0x1E69E6370];
  v64 = v51;
  v65 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v49 + 64);
  v16 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v38 - v18;
  v42 = v6;
  v58 = v6;
  v59 = v14;
  v41 = v14;
  v39 = v2;
  v60 = v2;
  sub_1E5C9C7F0();
  v19 = v50;
  v43 = *(v50 + 16);
  v40 = v5;
  v43(v5, v2, a1);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v14;
  v22 = *(v19 + 32);
  v22(v21 + v20, v5, a1);
  v23 = v47;
  v24 = v45;
  v25 = v38;
  sub_1E5C9C730();

  (*(v54 + 8))(v25, v24);
  v26 = v39;
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v61 = v62;
  v27 = v40;
  v43(v40, v26, a1);
  v28 = swift_allocObject();
  v29 = v41;
  *(v28 + 16) = v42;
  *(v28 + 24) = v29;
  v22(v28 + v20, v27, a1);
  v30 = v46;
  v31 = v52;
  sub_1E5C9C750();

  (*(v55 + 8))(v23, v31);
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = v48;
  v35 = OpaqueTypeMetadata2;
  v33(v48, v30, OpaqueTypeMetadata2);
  v36 = *(v32 + 8);
  v36(v30, v35);
  v33(v56, v34, v35);
  return (v36)(v34, v35);
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

unint64_t sub_1E5C266CC()
{
  result = qword_1ED053E20;
  if (!qword_1ED053E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
    sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28);
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053E20);
  }

  return result;
}

uint64_t sub_1E5C267B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v60 = *(a2 - 8);
  v7 = *(v60 + 64);
  v8 = (MEMORY[0x1EEE9AC00])();
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E40, &qword_1E5C9DD30);
  v59 = *(v13 - 8);
  v14 = (v59[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v55 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E50, &qword_1E5C9DDF0);
  v17 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E18, &qword_1E5C9DD20);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v66 = v55 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E30, &qword_1E5C9DD28);
  v62 = *(v64 - 8);
  v22 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v61 = v55 - v23;
  v67 = v19;
  v24 = sub_1E5C9C290();
  v68 = *(v24 - 8);
  v69 = v24;
  v25 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v55 - v26;
  v70 = a3;
  v28 = type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  if (v76)
  {
    if (v76 == 1)
    {
      sub_1E5C27EC4(v74, v75, 1u);
      v29 = *(v28 + 36);
      v30 = v60;
      v31 = *(v60 + 16);
      v31(v12, a1 + v29, a2);
      v31(v10, v12, a2);
      sub_1E5C266CC();
      v32 = v70;
      sub_1E5C45EE4(v10, v67, a2);
      v33 = *(v30 + 8);
      v33(v10, a2);
      v33(v12, a2);
    }

    else
    {
      sub_1E5C9BE00();
      v44 = v59;
      (v59[2])(v65, v16, v13);
      swift_storeEnumTagMultiPayload();
      sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28);
      sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
      v45 = v66;
      sub_1E5C9C280();
      sub_1E5C266CC();
      v46 = v13;
      v32 = v70;
      sub_1E5C45DEC(v45, v67);
      sub_1E5C27EE4(v45);
      (v44[1])(v16, v46);
    }
  }

  else
  {
    v59 = v55;
    v34 = MEMORY[0x1EEE9AC00](v74);
    v58 = &v55[-6];
    v60 = v13;
    v32 = v70;
    v35 = MEMORY[0x1EEE9AC00](v34);
    v55[-6] = a2;
    v55[-5] = v32;
    v56 = MEMORY[0x1EEE9AC00](v35);
    v57 = v36;
    v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E58, &qword_1E5C9DE18);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
    v38 = sub_1E5C27F74(&qword_1ED053E68, &qword_1ED053E58, &qword_1E5C9DE18);
    v39 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20);
    v53 = v38;
    v54 = v39;
    v51 = v37;
    v52 = MEMORY[0x1E6981138];
    v40 = v61;
    sub_1E5C9C300();
    sub_1E5C27EC4(v56, v57, 0);
    v41 = v62;
    v42 = v64;
    (*(v62 + 16))(v65, v40, v64);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28);
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
    v43 = v66;
    sub_1E5C9C280();
    sub_1E5C266CC();
    sub_1E5C45DEC(v43, v67);
    sub_1E5C27EE4(v43);
    (*(v41 + 8))(v40, v42);
  }

  v47 = v71;
  v49 = v68;
  v48 = v69;
  v72 = sub_1E5C266CC();
  v73 = v32;
  swift_getWitnessTable();
  (*(v49 + 16))(v47, v27, v48);
  return (*(v49 + 8))(v27, v48);
}

uint64_t sub_1E5C26FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_1E5C9BBD0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = *(*(sub_1E5C9CC20() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  result = sub_1E5C9C540();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1E5C271BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_1E5C9BBD0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = *(*(sub_1E5C9CC20() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v6 = sub_1E5C9C540();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v21 == 1)
  {
    sub_1E5C28160();

    v13 = sub_1E5C9C580();
    v14 = v17;
    v16 = v18;
    v15 = v19 & 1;
    sub_1E5C281B4(v13, v17, v19 & 1);
  }

  sub_1E5C281B4(v6, v8, v10 & 1);

  sub_1E5C281C4(v13, v14, v15, v16);
  sub_1E5C28208(v13, v14, v15, v16);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  sub_1E5C28208(v13, v14, v15, v16);
  sub_1E5C2824C(v6, v8, v10 & 1);
}

uint64_t sub_1E5C27494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v5 = type metadata accessor for SearchLandingView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v19 - v8;
  v10 = *(*(sub_1E5C9BBD0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = *(*(sub_1E5C9CC20() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v22 = sub_1E5C9CC50();
  v23 = v14;
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = v19;
  *(v16 + 24) = v17;
  (*(v6 + 32))(v16 + v15, v9, v5);
  sub_1E5C28160();
  return sub_1E5C9C8D0();
}

uint64_t sub_1E5C27738()
{
  type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

uint64_t sub_1E5C2778C()
{
  type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

uint64_t sub_1E5C27808()
{
  sub_1E5C9CA30();
  sub_1E5C9BED0();
}

uint64_t sub_1E5C278E0()
{
  type metadata accessor for SearchLandingView();
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

void sub_1E5C27950(uint64_t a1)
{
  sub_1E5C27DB8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5C279D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E5C27B5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5C27DB8()
{
  if (!qword_1EE2C40D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E48, qword_1E5C9DDD8);
    sub_1E5C27F74(&qword_1EE2C40A0, &qword_1ED053E48, qword_1E5C9DDD8);
    v0 = sub_1E5C9BDF0();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C40D0);
    }
  }
}

uint64_t sub_1E5C27E5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E5C278E0();
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

uint64_t sub_1E5C27EC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E5C27EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E18, &qword_1E5C9DD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C27F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E5C26FEC(a1);
}

uint64_t sub_1E5C27F58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1E5C271BC(a1);
}

uint64_t sub_1E5C27F74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_13Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SearchLandingView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1E5C277E8();
  (*(*(v2 - 8) + 8))(v0 + v4 + v3[11], v2);

  return swift_deallocObject();
}

uint64_t sub_1E5C280C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SearchLandingView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_1E5C28160()
{
  result = qword_1ED053E78;
  if (!qword_1ED053E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053E78);
  }

  return result;
}

uint64_t sub_1E5C281B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5C281C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E5C281B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E5C28208(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E5C2824C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E5C2824C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5C282D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C282F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1E5C28344(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void SearchLayout.init(historyItemLeadingPadding:historyListHorizontalPadding:suggestionLeadingPadding:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

double static SearchLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.0;
  *a1 = xmmword_1E5C9DEE0;
  *(a1 + 16) = 0x4018000000000000;
  return result;
}

uint64_t sub_1E5C283E0()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28428()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](v1);
  return sub_1E5C9D110();
}

unint64_t sub_1E5C2846C()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C284C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C2903C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C28504(uint64_t a1)
{
  v2 = sub_1E5C287AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C28540(uint64_t a1)
{
  v2 = sub_1E5C287AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E98, &qword_1E5C9DEF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C287AC();
  sub_1E5C9D130();
  v16 = v10;
  v15 = 0;
  sub_1E5C28800();
  sub_1E5C9D030();
  if (!v2)
  {
    v16 = v9;
    v15 = 1;
    sub_1E5C9D030();
    v16 = v11;
    v15 = 2;
    sub_1E5C9D030();
  }

  return (*(v5 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5C287AC()
{
  result = qword_1ED053EA0;
  if (!qword_1ED053EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EA0);
  }

  return result;
}

unint64_t sub_1E5C28800()
{
  result = qword_1ED053EA8;
  if (!qword_1ED053EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EA8);
  }

  return result;
}

uint64_t SearchLayout.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053EB0, &qword_1E5C9DEF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C287AC();
  sub_1E5C9D120();
  if (!v2)
  {
    v16 = 0;
    sub_1E5C28ABC();
    sub_1E5C9CFA0();
    v11 = v17;
    v16 = 1;
    sub_1E5C9CFA0();
    v13 = v17;
    v16 = 2;
    sub_1E5C9CFA0();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

unint64_t sub_1E5C28ABC()
{
  result = qword_1ED053EB8;
  if (!qword_1ED053EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EB8);
  }

  return result;
}

uint64_t SearchLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6939A10](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E6939A10](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1E6939A10](*&v5);
}

uint64_t SearchLayout.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28C04()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28C5C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

unint64_t sub_1E5C28CE0()
{
  result = qword_1ED053EC0;
  if (!qword_1ED053EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C28F38()
{
  result = qword_1ED053EC8;
  if (!qword_1ED053EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EC8);
  }

  return result;
}

unint64_t sub_1E5C28F90()
{
  result = qword_1ED053ED0;
  if (!qword_1ED053ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053ED0);
  }

  return result;
}

unint64_t sub_1E5C28FE8()
{
  result = qword_1ED053ED8;
  if (!qword_1ED053ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053ED8);
  }

  return result;
}

uint64_t sub_1E5C2903C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001E5CA7B90 == a2;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5CA7BB0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA7BD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SearchContentReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v5 = 0x7473696C79616C70;
    }

    if (a1 <= 1u)
    {
      return 0x6169726F74696465;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x2D72656E69617274;
    v2 = 0x65486C6C65737075;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v3 = 0x72656E69617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C29290(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SearchContentReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SearchContentReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5C9D060();
  }

  return v8 & 1;
}

uint64_t sub_1E5C29318@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessSearch0B20ContentReferenceTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5C29348@<X0>(uint64_t *a1@<X8>)
{
  result = SearchContentReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E5C29424()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchContentReferenceType.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C29488()
{
  SearchContentReferenceType.rawValue.getter(*v0);
  sub_1E5C9CC60();
}

uint64_t sub_1E5C294DC()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchContentReferenceType.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B20ContentReferenceTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5C9CF10();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5C2958C()
{
  result = qword_1ED053EE0;
  if (!qword_1ED053EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchContentReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchContentReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C29730()
{
  result = qword_1ED053EE8;
  if (!qword_1ED053EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EE8);
  }

  return result;
}

uint64_t sub_1E5C29784()
{
  v0 = sub_1E5C9BD40();
  __swift_allocate_value_buffer(v0, qword_1ED065C70);
  __swift_project_value_buffer(v0, qword_1ED065C70);
  return sub_1E5C9BD30();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SearchResultScope.datasetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchResultScope.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchResultScope.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void __swiftcall SearchResultScope.init(identifier:name:results:datasetIdentifier:index:)(FitnessSearch::SearchResultScope *__return_ptr retstr, Swift::String identifier, Swift::String name, Swift::OpaquePointer results, Swift::String_optional datasetIdentifier, Swift::Int index)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->identifier = identifier;
  retstr->index = index;
  retstr->name = name;
  retstr->results = results;
}

unint64_t sub_1E5C29948()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7865646E69;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x73746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5C299E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C2AEBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C29A14(uint64_t a1)
{
  v2 = sub_1E5C29D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C29A50(uint64_t a1)
{
  v2 = sub_1E5C29D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C29A8C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SearchResultScope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053EF0, "Ҥ");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v17[4] = v1[3];
  v17[5] = v10;
  v11 = v1[4];
  v17[2] = v1[5];
  v17[3] = v11;
  v12 = v1[6];
  v17[0] = v1[7];
  v17[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C29D30();
  sub_1E5C9D130();
  v22 = 0;
  v14 = v17[6];
  sub_1E5C9CFD0();
  if (!v14)
  {
    v15 = v17[0];
    v21 = 1;
    sub_1E5C9D000();
    v20 = 2;
    sub_1E5C9D020();
    v19 = 3;
    sub_1E5C9D000();
    v17[7] = v15;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C2A11C(&qword_1ED053F08, &qword_1ED053F10);
    sub_1E5C9D030();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5C29D30()
{
  result = qword_1ED053EF8;
  if (!qword_1ED053EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EF8);
  }

  return result;
}

uint64_t SearchResultScope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F18, &qword_1E5C9E240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C29D30();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1E5C9CF40();
  v31 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_1E5C9CF70();
  v30 = v14;
  v28 = v13;
  LOBYTE(v36[0]) = 2;
  v27 = sub_1E5C9CF90();
  LOBYTE(v36[0]) = 3;
  v26 = sub_1E5C9CF70();
  v29 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
  v37 = 4;
  sub_1E5C2A11C(&qword_1ED053F20, &qword_1ED053F28);
  sub_1E5C9CFA0();
  (*(v6 + 8))(v9, v5);
  v25 = v38;
  v17 = v30;
  v16 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v28;
  v18 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v27;
  *&v34 = v27;
  *(&v34 + 1) = v26;
  *&v35 = v29;
  *(&v35 + 1) = v38;
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  v22 = v35;
  a2[2] = v34;
  a2[3] = v22;
  sub_1E5C2A1B8(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v11;
  v36[1] = v16;
  v36[2] = v19;
  v36[3] = v17;
  v36[4] = v20;
  v36[5] = v26;
  v36[6] = v18;
  v36[7] = v25;
  return sub_1E5C2A1F0(v36);
}

uint64_t sub_1E5C2A11C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C2B52C(a2, type metadata accessor for SearchContentTile);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchResultScope.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  if (v1[1])
  {
    v9 = *v1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v4);
  sub_1E5C9CC60();

  return sub_1E5C2A6D0(a1, v8);
}

uint64_t SearchResultScope.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v6);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v10, v7);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C2A3F0(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  if (v1[1])
  {
    v9 = *v1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v4);
  sub_1E5C9CC60();

  return sub_1E5C2A6D0(a1, v8);
}

uint64_t sub_1E5C2A4B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v6);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v10, v7);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C2A580(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v10 = v6[2];
      v12 = v6[3];
      v11 = v6[4];
      v13 = v6[5];
      if (*(v6 - 1))
      {
        v14 = *v6;
        v7 = *(v6 - 2);
        sub_1E5C9D0F0();

        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v10);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(a1, v13);

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1E5C2A6D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchItem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchContentTile();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v14);
  if (v14)
  {
    v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    v29 = v13;
    v30 = v6;
    v28 = v17;
    while (1)
    {
      sub_1E5C2B574(v16, v13, type metadata accessor for SearchContentTile);
      sub_1E5C2B574(v13, v11, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v18 = v31;
      sub_1E5C2B5DC(v11, v31);
      MEMORY[0x1E69399F0](1);
      SearchItem.hash(into:)();
      sub_1E5C2B640(v18, type metadata accessor for SearchItem);
LABEL_4:
      result = sub_1E5C2B640(v13, type metadata accessor for SearchContentTile);
      v16 += v17;
      if (!--v14)
      {
        return result;
      }
    }

    v19 = *v11;
    v20 = *(v11 + 1);
    v22 = *(v11 + 2);
    v21 = *(v11 + 3);
    v23 = v11[32];
    v24 = *(v11 + 5);
    v36 = *(v11 + 6);
    v26 = *(v11 + 7);
    v25 = *(v11 + 8);
    v32 = v24;
    v33 = v26;
    v34 = v25;
    MEMORY[0x1E69399F0](0);
    v37 = v20;
    sub_1E5C9CC60();
    v35 = v21;
    sub_1E5C9CC60();
    sub_1E5C9CC60();

    v13 = v29;
    v17 = v28;
    v27 = v34;
    if (v36)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
      if (v27)
      {
LABEL_8:
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
LABEL_11:

        goto LABEL_4;
      }
    }

    else
    {
      MEMORY[0x1E69399F0](0);
      if (v27)
      {
        goto LABEL_8;
      }
    }

    sub_1E5C9D0F0();
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1E5C2AB00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchHint();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v8);
  if (v8)
  {
    v10 = &v7[v3[5]];
    v11 = &v7[v3[6]];
    v12 = v3[8];
    v21 = v3[7];
    v13 = &v7[v12];
    v14 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    do
    {
      sub_1E5C2B574(v14, v7, type metadata accessor for SearchHint);
      sub_1E5C9BBA0();
      sub_1E5C2B52C(&qword_1ED053F58, MEMORY[0x1E69695A8]);
      sub_1E5C9CBB0();
      if (*(v10 + 1))
      {
        v15 = *v10;
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      v16 = *v11;
      v17 = *(v11 + 1);
      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](*&v7[v21]);
      v18 = *v13;
      v19 = *(v13 + 1);
      sub_1E5C9CC60();
      result = sub_1E5C2B640(v7, type metadata accessor for SearchHint);
      v14 += v20;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E5C2AD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingSectionDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v9);
  if (v9)
  {
    v11 = *(v4 + 24);
    v12 = *(v4 + 28);
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1E5C2B574(v13, v8, type metadata accessor for SearchLandingSectionDescriptor);
      v15 = *v8;
      v16 = *(v8 + 1);
      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v8[16]);
      sub_1E5C9BAA0();
      sub_1E5C2B52C(&qword_1ED053F50, MEMORY[0x1E6968848]);
      sub_1E5C9CBB0();
      sub_1E5C2A6D0(a1, *&v8[v12]);
      result = sub_1E5C2B640(v8, type metadata accessor for SearchLandingSectionDescriptor);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1E5C2AEBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v27 = a2[6];
      v28 = a2[7];
      v17 = a1[7];
      v18 = a1[4];
      v19 = sub_1E5C9D060();
      v5 = v18;
      v9 = v17;
      v14 = v27;
      v16 = v28;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 == v11 && v6 == v13)
  {
    if (v5 != v12)
    {
      return 0;
    }
  }

  else
  {
    v20 = v16;
    v21 = v9;
    v22 = v14;
    v23 = v5;
    if ((sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    v14 = v22;
    v9 = v21;
    v16 = v20;
    if (v23 != v12)
    {
      return 0;
    }
  }

  if (v8 != v15 || v7 != v14)
  {
    v24 = v9;
    v25 = sub_1E5C9D060();
    v9 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1E5C773E4(v9, v16);
}

unint64_t sub_1E5C2B20C()
{
  result = qword_1ED053F30;
  if (!qword_1ED053F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F30);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5C2B274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchResultScope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchResultScope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C2B428()
{
  result = qword_1ED053F38;
  if (!qword_1ED053F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F38);
  }

  return result;
}

unint64_t sub_1E5C2B480()
{
  result = qword_1ED053F40;
  if (!qword_1ED053F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F40);
  }

  return result;
}

unint64_t sub_1E5C2B4D8()
{
  result = qword_1ED053F48;
  if (!qword_1ED053F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F48);
  }

  return result;
}

uint64_t sub_1E5C2B52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5C2B574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C2B5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C2B640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchResultsState.datasetIdentifier.getter()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t SearchResultsState.term.getter()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v3 = v0 + 24;
  v2 = *(v0 + 24);
  v1 = *(v3 + 8);

  return v2;
}

void sub_1E5C2B77C(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setContentScrollView_forEdge_, a1, a2);
  v5 = [v2 parentViewController];
  [v5 setContentScrollView:a1 forEdge:a2];
}

void sub_1E5C2B804(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_1E5C2B77C(a3, a4);
}

uint64_t sub_1E5C2B878(uint64_t a1)
{
  v3 = sub_1E5C2BC2C(a1);
  (*(*(*(v1 + qword_1EE2C53A0) - 8) + 8))(a1);
  return v3;
}

void *sub_1E5C2B928(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE2C53A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_1E5C9C230();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_1E5C2BA60(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E5C2BAF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5C2BB44(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + qword_1EE2C53A0) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_1E5C9C250();
}

uint64_t sub_1E5C2BC60(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E5C9CA70();
}

uint64_t sub_1E5C2BE30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF0, qword_1E5C9E5D0);
  v5 = sub_1E5C27F74(&qword_1EE2C4098, &qword_1ED053FF0, qword_1E5C9E5D0);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5C2BED0()
{
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  return sub_1E5C9BC00();
}

uint64_t sub_1E5C2BF2C(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  sub_1E5C9BC20();
  sub_1E5C9BC10();
  return v4;
}

uint64_t sub_1E5C2BF98(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054058, &qword_1E5C9E6F8);
  sub_1E5C9C860();
  return v4;
}

uint64_t sub_1E5C2BFF8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 40));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054058, &qword_1E5C9E6F8);
  return sub_1E5C9C870();
}

uint64_t SearchView.init(store:resultsView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SearchView();
  v7 = a3 + *(v6 + 40);
  sub_1E5C9C850();
  *v7 = v11;
  *(v7 + 8) = v12;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a3 = sub_1E5C25FF4;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  v9 = a3 + *(v6 + 36);
  return sub_1E5C2BED0();
}

uint64_t sub_1E5C2C154()
{
  v0 = type metadata accessor for SearchAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v3);
}

uint64_t sub_1E5C2C1FC(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C30EF0(a1, v5, type metadata accessor for SearchHistoryItem);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v5);
}

uint64_t SearchView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v68 = a2;
  v66 = *(a1 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  v72 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  v4 = sub_1E5C9BDB0();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E69E6370];
  *&v88 = v4;
  *(&v88 + 1) = MEMORY[0x1E69E6370];
  v7 = MEMORY[0x1E69E6388];
  *&v89 = WitnessTable;
  *(&v89 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  *&v88 = v4;
  *(&v88 + 1) = v6;
  *&v89 = WitnessTable;
  *(&v89 + 1) = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_1E5C2CAD0();
  *&v88 = OpaqueTypeMetadata2;
  *(&v88 + 1) = v9;
  v69 = v11;
  v70 = v9;
  *&v89 = OpaqueTypeConformance2;
  *(&v89 + 1) = v11;
  v12 = v11;
  v71 = MEMORY[0x1E6981448];
  swift_getOpaqueTypeMetadata2();
  *&v88 = OpaqueTypeMetadata2;
  *(&v88 + 1) = v9;
  *&v89 = OpaqueTypeConformance2;
  *(&v89 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1E5C9C030();
  v14 = swift_getWitnessTable();
  *&v88 = v13;
  *(&v88 + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v15 = sub_1E5C9CA60();
  v16 = swift_getWitnessTable();
  *&v88 = v15;
  *(&v88 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9C290();
  v17 = sub_1E5C9C290();
  v18 = sub_1E5C2CB54();
  v19 = sub_1E5C2CDCC();
  *&v88 = v15;
  *(&v88 + 1) = v16;
  v20 = swift_getOpaqueTypeConformance2();
  v86 = v19;
  v87 = v20;
  v21 = swift_getWitnessTable();
  v84 = v18;
  v85 = v21;
  v57 = v17;
  v56 = swift_getWitnessTable();
  v22 = sub_1E5C9C8F0();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - v24;
  v26 = swift_getWitnessTable();
  *&v88 = v22;
  *(&v88 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v62 = *(v27 - 8);
  v28 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v54 = &v53 - v29;
  *&v88 = v22;
  *(&v88 + 1) = v26;
  v59 = swift_getOpaqueTypeConformance2();
  *&v88 = v27;
  *(&v88 + 1) = v70;
  *&v89 = v59;
  *(&v89 + 1) = v69;
  v30 = swift_getOpaqueTypeMetadata2();
  v61 = *(v30 - 8);
  v31 = *(v61 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v60 = &v53 - v35;
  v37 = v63;
  v36 = v64;
  v55 = *(v63 + 24);
  v73 = v72;
  v74 = v55;
  v75 = v64;
  sub_1E5C9C200();
  sub_1E5C9C8E0();
  sub_1E5C9C590();
  (*(v58 + 8))(v25, v22);
  v38 = v36;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v76 = v80;
  v77 = v81;
  v78 = v82;
  v79 = v83;
  v40 = v65;
  v39 = v66;
  (*(v66 + 16))(v65, v38, v37);
  v41 = v39;
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v44 = v55;
  *(v43 + 16) = v72;
  *(v43 + 24) = v44;
  (*(v41 + 32))(v43 + v42, v40, v37);
  v46 = v69;
  v45 = v70;
  v47 = v59;
  v48 = v54;
  sub_1E5C9C750();

  v88 = v76;
  v89 = v77;
  v90 = v78;
  v91 = v79;
  sub_1E5C3177C(&v88, &qword_1ED053F80, &qword_1E5C9E528);
  (*(v62 + 8))(v48, v27);
  *&v80 = v27;
  *(&v80 + 1) = v45;
  *&v81 = v47;
  *(&v81 + 1) = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_1E5C28390(v34, v30, v49);
  v51 = *(v61 + 8);
  v51(v34, v30);
  sub_1E5C28390(v50, v30, v49);
  return (v51)(v50, v30);
}

unint64_t sub_1E5C2CAD0()
{
  result = qword_1ED053F88;
  if (!qword_1ED053F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2B20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F88);
  }

  return result;
}

unint64_t sub_1E5C2CB54()
{
  result = qword_1ED053F90;
  if (!qword_1ED053F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F90);
  }

  return result;
}

unint64_t sub_1E5C2CC0C()
{
  result = qword_1ED053F98;
  if (!qword_1ED053F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC98();
    sub_1E5C2CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F98);
  }

  return result;
}

unint64_t sub_1E5C2CC98()
{
  result = qword_1ED053FA8;
  if (!qword_1ED053FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FB0, &qword_1E5C9E538);
    sub_1E5C2CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FA8);
  }

  return result;
}

unint64_t sub_1E5C2CD24()
{
  result = qword_1ED053FB8;
  if (!qword_1ED053FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FB8);
  }

  return result;
}

unint64_t sub_1E5C2CD78()
{
  result = qword_1ED053FC0;
  if (!qword_1ED053FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FC0);
  }

  return result;
}

unint64_t sub_1E5C2CDCC()
{
  result = qword_1ED053FC8;
  if (!qword_1ED053FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FC8);
  }

  return result;
}

uint64_t sub_1E5C2CEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a2;
  v154 = a3;
  v143 = a1;
  v152 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_1E5C2CAD0();
  swift_getOpaqueTypeMetadata2();
  *&v181 = OpaqueTypeConformance2;
  *(&v181 + 1) = v5;
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C030();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = sub_1E5C9CA60();
  WitnessTable = swift_getWitnessTable();
  v151 = v6;
  *&v180 = v6;
  *(&v180 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 8);
  v8 = *(v126 + 64);
  v9 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v124 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v123 - v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FE8, &unk_1E5CA11E0);
  v123 = *(v134 - 8);
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v127 = &v123 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF8, &qword_1E5C9E5E8);
  v14 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v123 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v123 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FD8, &qword_1E5C9E540);
  v128 = *(v132 - 8);
  v19 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v135 = (&v123 - v20);
  v136 = v16;
  v138 = OpaqueTypeMetadata2;
  v21 = sub_1E5C9C290();
  v140 = *(v21 - 8);
  v22 = *(v140 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  *&v139 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v123 - v25;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E40, &qword_1E5C9DD30);
  v26 = *(v144 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v29 = &v123 - v28;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054000, &qword_1E5C9E5F0);
  v30 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v32 = &v123 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F60, &qword_1E5C9E510);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v123 - v35;
  v36 = type metadata accessor for SearchView();
  v129 = *(v36 - 8);
  v37 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v123 - v38;
  v145 = v33;
  v149 = v21;
  v40 = sub_1E5C9C290();
  v147 = *(v40 - 8);
  v148 = v40;
  v41 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v123 - v42;
  v43 = v143;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v204 = v201;
  *v205 = v202[0];
  *&v205[9] = *(v202 + 9);
  v203 = v200;
  if (!BYTE8(v202[1]))
  {
    sub_1E5C30CAC(&v203);
    sub_1E5C9BE00();
    v56 = v26;
    (*(v26 + 16))(v32, v29, v144);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
    v57 = v142;
    sub_1E5C9C280();
    sub_1E5C2CB54();
    v58 = sub_1E5C2CDCC();
    v54 = WitnessTable;
    v53 = v151;
    *&v180 = v151;
    *(&v180 + 1) = WitnessTable;
    v59 = swift_getOpaqueTypeConformance2();
    v192 = v58;
    v193 = v59;
    swift_getWitnessTable();
    v60 = v146;
    sub_1E5C45DEC(v57, v145);
    sub_1E5C3177C(v57, &qword_1ED053F60, &qword_1E5C9E510);
    (*(v56 + 8))(v29, v144);
LABEL_17:
    v105 = v148;
    goto LABEL_20;
  }

  if (BYTE8(v202[1]) != 1)
  {
    v61 = v43;
    sub_1E5C2BE30();
    swift_getKeyPath();
    sub_1E5C9CAD0();

    v62 = v190;
    v63 = v191;

    v64 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v64 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v140 = v178;
      if (v178)
      {
        *&v139 = v179;
        v65 = v177;
        v66 = v176;
        v67 = v140;

        v68 = v66;
        v61 = v43;
        sub_1E5C30DB8(v68, v65, v67);
      }

      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v69 = v181;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v70 = v167[0];
      v71 = v129;
      (*(v129 + 16))(v39, v61, v36);
      v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v73 = swift_allocObject();
      v74 = v154;
      *(v73 + 16) = v153;
      *(v73 + 24) = v74;
      (*(v71 + 32))(v73 + v72, v39, v36);
      *&v167[0] = v140;
      *(&v167[0] + 1) = v69;
      v167[1] = v70;
      *&v168 = sub_1E5C30D20;
      *(&v168 + 1) = v73;
      sub_1E5C30DAC(v167);
      v163 = v172;
      v164 = v173;
      v165 = v174;
    }

    else
    {
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v140 = v157;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v139 = v180;
      v82 = v181;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CB00();

      v137 = *(&v167[0] + 1);
      v138 = *&v167[0];
      LODWORD(v136) = LOBYTE(v167[1]);
      v84 = v153;
      v83 = v154;
      v135 = sub_1E5C2E5B4(v43, v153, v154);
      v85 = v43;
      v87 = v86;
      v88 = sub_1E5C2E6EC(v61, v84, v83);
      v90 = v89;
      v91 = sub_1E5C2E824(v85, v84, v83);
      v93 = v92;
      LOBYTE(v84) = sub_1E5C9C440();
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      sub_1E5C9BDA0();
      *&v167[0] = v140;
      *(v167 + 8) = v139;
      *(&v167[1] + 1) = v82;
      *&v168 = v138;
      *(&v168 + 1) = v137;
      LOBYTE(v169) = v136;
      *(&v169 + 1) = v135;
      *&v170 = v87;
      *(&v170 + 1) = v88;
      *&v171 = v90;
      *(&v171 + 1) = v91;
      *&v172 = v93;
      BYTE8(v172) = v84;
      *&v173 = v94;
      *(&v173 + 1) = v95;
      *&v174 = v96;
      *(&v174 + 1) = v97;
      LOBYTE(v175) = 0;
      sub_1E5C30E08(v167);
      v163 = v172;
      v164 = v173;
      v165 = v174;
    }

    v166 = v175;
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v162 = v171;
    v157 = v167[0];
    v158 = v167[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FB0, &qword_1E5C9E538);
    sub_1E5C2CC98();
    sub_1E5C2CD78();
    sub_1E5C9C280();
    v98 = v187;
    *(v32 + 6) = v186;
    *(v32 + 7) = v98;
    *(v32 + 8) = v188;
    *(v32 + 72) = v189;
    v99 = v183;
    *(v32 + 2) = v182;
    *(v32 + 3) = v99;
    v100 = v185;
    *(v32 + 4) = v184;
    *(v32 + 5) = v100;
    v101 = v181;
    *v32 = v180;
    *(v32 + 1) = v101;
    swift_storeEnumTagMultiPayload();
    sub_1E5C3165C(&v180, v167, &qword_1ED053FA0, &qword_1E5C9E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30);
    v102 = v142;
    sub_1E5C9C280();
    sub_1E5C2CB54();
    v103 = sub_1E5C2CDCC();
    v54 = WitnessTable;
    v53 = v151;
    *&v167[0] = v151;
    *(&v167[0] + 1) = WitnessTable;
    v104 = swift_getOpaqueTypeConformance2();
    v155 = v103;
    v156 = v104;
    swift_getWitnessTable();
    v60 = v146;
    sub_1E5C45DEC(v102, v145);
    sub_1E5C3177C(&v180, &qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C3177C(v102, &qword_1ED053F60, &qword_1E5C9E510);
    goto LABEL_17;
  }

  v44 = v204;
  v45 = *&v205[16];

  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  if (v180 == 1 && v45)
  {

    v46 = sub_1E5C30CAC(&v203);
    v47 = MEMORY[0x1EEE9AC00](v46);
    MEMORY[0x1EEE9AC00](v47);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054008, &unk_1E5CA1230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
    sub_1E5C27F74(&qword_1ED054010, &qword_1ED054008, &unk_1E5CA1230);
    sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20);
    v48 = v135;
    sub_1E5C9C300();

    v49 = v128;
    v50 = v48;
    v51 = v132;
    (*(v128 + 16))(v131, v50, v132);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0);
    v52 = v133;
    sub_1E5C9C280();
    sub_1E5C2CDCC();
    v54 = WitnessTable;
    v53 = v151;
    *&v180 = v151;
    *(&v180 + 1) = WitnessTable;
    swift_getOpaqueTypeConformance2();
    v55 = v137;
    sub_1E5C45DEC(v52, v136);
    sub_1E5C3177C(v52, &qword_1ED053F68, &unk_1E5CA11D0);
    (*(v49 + 8))(v135, v51);
  }

  else if (*(v44 + 16))
  {
    v75 = sub_1E5C30CAC(&v203);
    MEMORY[0x1EEE9AC00](v75);
    v53 = v151;
    v76 = swift_checkMetadataState();
    v77 = v124;
    v54 = WitnessTable;
    sub_1E5C9BBE0();

    *&v180 = v76;
    *(&v180 + 1) = v54;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v125;
    v80 = v138;
    sub_1E5C28390(v77, v138, v78);
    v81 = *(v126 + 8);
    v81(v77, v80);
    sub_1E5C28390(v79, v80, v78);
    sub_1E5C2CDCC();
    v55 = v137;
    sub_1E5C45EE4(v77, v136, v80);
    v81(v77, v80);
    v81(v79, v80);
  }

  else
  {

    v106 = v127;
    sub_1E5C9C310();
    sub_1E5C30CAC(&v203);
    v107 = v123;
    v108 = v134;
    (*(v123 + 16))(v131, v106, v134);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0);
    v109 = v133;
    sub_1E5C9C280();
    sub_1E5C2CDCC();
    v54 = WitnessTable;
    v53 = v151;
    *&v180 = v151;
    *(&v180 + 1) = WitnessTable;
    swift_getOpaqueTypeConformance2();
    v55 = v137;
    sub_1E5C45DEC(v109, v136);
    sub_1E5C3177C(v109, &qword_1ED053F68, &unk_1E5CA11D0);
    (*(v107 + 8))(v127, v108);
  }

  v105 = v148;
  v60 = v146;
  v110 = sub_1E5C2CDCC();
  *&v180 = v53;
  *(&v180 + 1) = v54;
  v111 = swift_getOpaqueTypeConformance2();
  v198 = v110;
  v199 = v111;
  v112 = v149;
  v113 = swift_getWitnessTable();
  v114 = v139;
  sub_1E5C28390(v55, v112, v113);
  sub_1E5C2CB54();
  sub_1E5C45EE4(v114, v145, v112);
  v115 = *(v140 + 8);
  v115(v114, v112);
  v115(v55, v112);
LABEL_20:
  v116 = v147;
  v117 = sub_1E5C2CB54();
  v118 = sub_1E5C2CDCC();
  *&v180 = v53;
  *(&v180 + 1) = v54;
  v119 = swift_getOpaqueTypeConformance2();
  v196 = v118;
  v197 = v119;
  v120 = swift_getWitnessTable();
  v194 = v117;
  v195 = v120;
  v121 = swift_getWitnessTable();
  sub_1E5C28390(v60, v105, v121);
  return (*(v116 + 8))(v60, v105);
}

uint64_t (*sub_1E5C2E5B4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for SearchView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1E5C30E80;
}

uint64_t (*sub_1E5C2E6EC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for SearchView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1E5C30E78;
}

uint64_t (*sub_1E5C2E824(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = type metadata accessor for SearchView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1E5C30E10;
}

uint64_t sub_1E5C2E95C(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C30EF0(a1, v5, type metadata accessor for SearchHint);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v5);
}

uint64_t sub_1E5C2EA28@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C2EB00@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1E5C9C560();
  v21 = v5;
  v22 = v4;
  v20 = v6;
  v23 = v7;
  sub_1E5C28160();

  v8 = sub_1E5C9C580();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  sub_1E5C9C4F0();
  v12 = sub_1E5C9C550();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1E5C2824C(v8, v10, ObjCClassFromMetadata & 1);

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16 & 1;
  *(a1 + 56) = v18;
  sub_1E5C281B4(v22, v21, v20 & 1);

  sub_1E5C281B4(v12, v14, v16 & 1);

  sub_1E5C2824C(v12, v14, v16 & 1);

  sub_1E5C2824C(v22, v21, v20 & 1);
}

uint64_t sub_1E5C2ED04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[3] = a4;
  v7 = type metadata accessor for SearchView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v12 = sub_1E5C9C1B0();
  v17[1] = v13;
  v17[2] = v12;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v8 + 32))(v15 + v14, v11, v7);
  return sub_1E5C9C8C0();
}

uint64_t sub_1E5C2EE88()
{
  v0 = type metadata accessor for SearchAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v4 = v6[1];
  *v3 = v6[0];
  *(v3 + 1) = v4;
  v3[16] = 3;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v3);
}

uint64_t sub_1E5C2EF80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a4;
  v141 = a2;
  v119 = a1;
  v132 = a5;
  v6 = sub_1E5C9C3B0();
  v130 = *(v6 - 8);
  v131 = v6;
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  v137 = a3;
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  v9 = sub_1E5C9BDB0();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E69E6370];
  *&v149 = v9;
  *(&v149 + 1) = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E6388];
  *&v150 = WitnessTable;
  *(&v150 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  *&v149 = v9;
  *(&v149 + 1) = v11;
  *&v150 = WitnessTable;
  *(&v150 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1E5C2CAD0();
  *&v149 = OpaqueTypeMetadata2;
  *(&v149 + 1) = v14;
  *&v150 = OpaqueTypeConformance2;
  *(&v150 + 1) = v16;
  v121 = swift_getOpaqueTypeMetadata2();
  *&v149 = OpaqueTypeMetadata2;
  *(&v149 + 1) = v14;
  *&v150 = OpaqueTypeConformance2;
  *(&v150 + 1) = v16;
  v123 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E5C9C030();
  v124 = v17;
  v18 = swift_getWitnessTable();
  *&v149 = v17;
  *(&v149 + 1) = v18;
  v125 = v18;
  v126 = MEMORY[0x1E697D378];
  v19 = swift_getOpaqueTypeMetadata2();
  v127 = *(v19 - 8);
  v128 = v19;
  v20 = *(v127 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v120 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v97 - v23;
  v24 = sub_1E5C9C9D0();
  v116 = *(v24 - 8);
  v117 = v24;
  v25 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v114 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054018, &qword_1E5C9E6D8);
  v28 = *(v27 - 8);
  v115 = v27 - 8;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v113 = &v97 - v30;
  v31 = sub_1E5C9CBA0();
  v109 = *(v31 - 8);
  v110 = v31;
  v32 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v106 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v104 = &v97 - v36;
  v37 = type metadata accessor for SearchView();
  v38 = *(v37 - 8);
  v136 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v97 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054028, &qword_1E5C9E6E0);
  v111 = *(v41 - 8);
  v112 = v41;
  v42 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v103 = &v97 - v43;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054030, &qword_1E5C9E6E8);
  v44 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v107 = &v97 - v45;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F70, &qword_1E5C9E518);
  v142 = *(v118 - 8);
  v46 = *(v142 + 64);
  v47 = MEMORY[0x1EEE9AC00](v118);
  v139 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v143 = &v97 - v49;
  v50 = sub_1E5C9BBA0();
  v133 = *(v50 - 8);
  v134 = v50;
  v108 = *(v133 + 64);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v105 = &v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v140 = &v97 - v53;
  sub_1E5C9BB90();
  v54 = v119;

  v55 = v141;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CB00();

  v148[2] = v151;
  v148[3] = v152;
  v148[4] = v153;
  v148[0] = v149;
  v148[1] = v150;
  v56 = v38;
  v57 = *(v38 + 16);
  v99 = v38 + 16;
  v100 = v57;
  v58 = v37;
  v57(v40, v55, v37);
  v98 = *(v56 + 80);
  v59 = (v98 + 32) & ~v98;
  v101 = v98 | 7;
  v60 = swift_allocObject();
  v61 = v138;
  *(v60 + 16) = v137;
  *(v60 + 24) = v61;
  v97 = *(v56 + 32);
  v102 = v56 + 32;
  v62 = v60 + v59;
  v63 = v40;
  v97(v62, v40, v58);
  sub_1E5C78AC8(v54, v148, sub_1E5C31008, v60, v146);
  v64 = v104;
  static SearchResultScope.makeShelfImpression()();
  v65 = sub_1E5C9CB70();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = v106;
  sub_1E5C9CB90();
  sub_1E5C31094();
  v67 = v103;
  sub_1E5C9C5C0();
  (*(v109 + 8))(v66, v110);
  sub_1E5C3177C(v64, &qword_1ED054020, &qword_1E5CA4DF0);
  v153 = v146[4];
  v154 = v146[5];
  v155 = v146[6];
  v156 = v147;
  v149 = v146[0];
  v150 = v146[1];
  v151 = v146[2];
  v152 = v146[3];
  sub_1E5C310E8(&v149);
  v68 = v141;
  LOBYTE(v56) = sub_1E5C2BF98(v58);
  v69 = v114;
  sub_1E5C9C9C0();
  if (v56)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.0;
  }

  v71 = v113;
  (*(v116 + 32))(v113, v69, v117);
  *&v71[*(v115 + 44)] = v70;
  v72 = v71;
  LOBYTE(v71) = sub_1E5C9C450();
  v73 = v107;
  v74 = &v107[*(v135 + 36)];
  sub_1E5C3113C(v72, v74);
  *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054040, &qword_1E5C9E6F0) + 36)) = v71;
  (*(v111 + 32))(v73, v67, v112);
  v119 = sub_1E5C311AC();
  sub_1E5C9C5B0();
  sub_1E5C22D20(v73);
  v75 = v133;
  v76 = v134;
  v77 = v105;
  (*(v133 + 16))(v105, v140, v134);
  v100(v63, v68, v58);
  v78 = v75;
  v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v80 = (v108 + v98 + v79) & ~v98;
  v81 = swift_allocObject();
  v82 = v138;
  *(v81 + 16) = v137;
  *(v81 + 24) = v82;
  (*(v78 + 32))(v81 + v79, v77, v76);
  v97(v81 + v80, v63, v58);
  swift_checkMetadataState();
  *&v146[0] = sub_1E5C9C020();
  *(&v146[0] + 1) = v83;
  v84 = v129;
  sub_1E5C9C3A0();
  v85 = swift_checkMetadataState();
  v86 = v120;
  v87 = v125;
  sub_1E5C9C6F0();
  (*(v130 + 8))(v84, v131);

  *&v146[0] = v85;
  *(&v146[0] + 1) = v87;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v122;
  v90 = v128;
  sub_1E5C28390(v86, v128, v88);
  v91 = v127;
  v92 = *(v127 + 8);
  v92(v86, v90);
  v93 = v139;
  v94 = v118;
  (*(v142 + 16))(v139, v143, v118);
  *&v146[0] = v93;
  (*(v91 + 16))(v86, v89, v90);
  *(&v146[0] + 1) = v86;
  *&v148[0] = v94;
  *(&v148[0] + 1) = v90;
  v144 = v135;
  v145 = v119;
  v144 = swift_getOpaqueTypeConformance2();
  v145 = v88;
  sub_1E5C2BC60(v146, 2uLL, v148);
  v92(v89, v90);
  v95 = *(v142 + 8);
  v95(v143, v94);
  (*(v133 + 8))(v140, v134);
  v92(v86, v90);
  return (v95)(v139, v94);
}

uint64_t sub_1E5C2FCC8(_OWORD *a1)
{
  v2 = type metadata accessor for SearchAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  sub_1E5C2BE30();
  v8 = a1[1];
  *v5 = *a1;
  v5[1] = v8;
  v9 = a1[3];
  v5[2] = a1[2];
  v5[3] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1E5C2A1B8(v12, v11);
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v5);
}

uint64_t sub_1E5C2FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v90 = a3;
  v91 = a2;
  v92 = a1;
  v89 = a6;
  v7 = sub_1E5C9BBA0();
  v86 = *(v7 - 8);
  v87 = v7;
  v88 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5C9BFE0();
  v82 = *(v9 - 8);
  v83 = v9;
  v84 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  v71 = type metadata accessor for SearchView();
  v67 = *(v71 - 8);
  v70 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E5C9BDB0();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x1E69E6370];
  *&v107 = v12;
  *(&v107 + 1) = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E6388];
  *&v108 = v16;
  *(&v108 + 1) = MEMORY[0x1E69E6388];
  v19 = v16;
  v62 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v80 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  v74 = v23;
  *&v107 = v12;
  *(&v107 + 1) = v17;
  *&v108 = v19;
  *(&v108 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = OpaqueTypeConformance2;
  v72 = sub_1E5C2CAD0();
  *&v107 = OpaqueTypeMetadata2;
  *(&v107 + 1) = v23;
  *&v108 = OpaqueTypeConformance2;
  *(&v108 + 1) = v72;
  v77 = MEMORY[0x1E6981448];
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = *(v25 - 8);
  v78 = v25;
  v79 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v66 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v62 - v30;
  sub_1E5C9C430();
  v31 = v63;
  v32 = v65;
  v94 = v63;
  v95 = v65;
  v33 = v90;
  v96 = v91;
  v97 = v90;
  v98 = v92;
  v34 = v15;
  sub_1E5C9BDC0();
  v35 = v67;
  v36 = v68;
  v37 = v71;
  (*(v67 + 16))(v68, v33, v71);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  *(v39 + 24) = v32;
  (*(v35 + 32))(v39 + v38, v36, v37);
  sub_1E5C9C6E0();

  (*(v69 + 8))(v34, v12);
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v99 = v103;
  v100 = v104;
  v101 = v105;
  v102 = v106;
  v41 = v81;
  v40 = v82;
  v42 = v83;
  (*(v82 + 16))(v81, v92, v83);
  v44 = v85;
  v43 = v86;
  v45 = v87;
  (*(v86 + 16))(v85, v91, v87);
  v46 = v40;
  v47 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v48 = v43;
  v49 = (v84 + *(v43 + 80) + v47) & ~*(v43 + 80);
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + v47, v41, v42);
  (*(v48 + 32))(v50 + v49, v44, v45);
  v51 = v66;
  v53 = v74;
  v52 = v75;
  v55 = v72;
  v54 = v73;
  v56 = v93;
  sub_1E5C9C750();

  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  sub_1E5C3177C(&v107, &qword_1ED053F80, &qword_1E5C9E528);
  (*(v80 + 8))(v56, v52);
  *&v103 = v52;
  *(&v103 + 1) = v53;
  *&v104 = v54;
  *(&v104 + 1) = v55;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v76;
  v59 = v78;
  sub_1E5C28390(v51, v78, v57);
  v60 = *(v79 + 8);
  v60(v51, v59);
  sub_1E5C28390(v58, v59, v57);
  return (v60)(v58, v59);
}

uint64_t sub_1E5C305A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v36 = a6;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F78, &qword_1E5C9E520);
  v32 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v31 - v20);
  v22 = sub_1E5C9C7A0();
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054060, &qword_1E5C9E700) + 52);
  v24 = sub_1E5C9BBA0();
  (*(*(v24 - 8) + 16))(v21 + v23, v33, v24);
  *v21 = v22;
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v25 = (v21 + *(v15 + 36));
  v26 = v42;
  *v25 = v41;
  v25[1] = v26;
  v25[2] = v43;
  v27 = type metadata accessor for SearchView();
  v28 = sub_1E5C2BF2C(v27);
  v28(v35);

  sub_1E5C28390(v12, a4, a5);
  v29 = *(v8 + 8);
  v29(v12, a4);
  v31 = v19;
  sub_1E5C3165C(v21, v19, &qword_1ED053F78, &qword_1E5C9E520);
  v40[0] = v19;
  (*(v8 + 16))(v12, v14, a4);
  v40[1] = v12;
  v39[0] = v32;
  v39[1] = a4;
  v37 = sub_1E5C316C4();
  v38 = a5;
  sub_1E5C2BC60(v40, 2uLL, v39);
  v29(v14, a4);
  sub_1E5C3177C(v21, &qword_1ED053F78, &qword_1E5C9E520);
  v29(v12, a4);
  return sub_1E5C3177C(v31, &qword_1ED053F78, &qword_1E5C9E520);
}

uint64_t sub_1E5C308C8@<X0>(BOOL *a1@<X8>)
{
  sub_1E5C9BF40();
  v3 = v2;
  result = sub_1E5C9BF30();
  *a1 = v5 < v3;
  return result;
}

uint64_t sub_1E5C3090C()
{
  sub_1E5C9BBA0();
  sub_1E5C31604();
  return sub_1E5C9BFD0();
}

uint64_t sub_1E5C30964()
{
  v0 = type metadata accessor for SearchAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v3);
}

void sub_1E5C30A74(uint64_t a1)
{
  sub_1E5C30B5C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1E5C9BFE0();
    swift_getFunctionTypeMetadata1();
    sub_1E5C9BC20();
    if (v4 <= 0x3F)
    {
      sub_1E5C30C00();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5C30B5C()
{
  if (!qword_1EE2C40C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FF0, qword_1E5C9E5D0);
    sub_1E5C27F74(&qword_1EE2C4098, &qword_1ED053FF0, qword_1E5C9E5D0);
    v0 = sub_1E5C9BDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C40C8);
    }
  }
}

void sub_1E5C30C00()
{
  if (!qword_1EE2C40A8)
  {
    v0 = sub_1E5C9C880();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C40A8);
    }
  }
}

uint64_t sub_1E5C30C50(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C30D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5C2EB00(a1);
}

uint64_t sub_1E5C30D20(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for SearchView() - 8) + 80);

  return sub_1E5C2E95C(a1);
}

uint64_t sub_1E5C30DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E5C30E10(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SearchView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  return sub_1E5C2C1FC(a1);
}

uint64_t sub_1E5C30E88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SearchView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  return sub_1E5C2C154();
}

uint64_t sub_1E5C30EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C30F70(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SearchView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1E5C31008(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for SearchView() - 8) + 80);

  return sub_1E5C2FCC8(a1);
}

unint64_t sub_1E5C31094()
{
  result = qword_1ED054038;
  if (!qword_1ED054038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054038);
  }

  return result;
}

uint64_t sub_1E5C3113C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054018, &qword_1E5C9E6D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C311AC()
{
  result = qword_1ED054048;
  if (!qword_1ED054048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054030, &qword_1E5C9E6E8);
    sub_1E5C31094();
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED054050, &qword_1ED054040, &qword_1E5C9E6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054048);
  }

  return result;
}

uint64_t sub_1E5C31290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1E5C9BBA0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(type metadata accessor for SearchView() - 8);
  v11 = v2 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1E5C2FDA4(a1, v2 + v8, v11, v5, v6, a2);
}

uint64_t objectdestroy_2Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SearchView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_1E5C277E8();
  v9 = v3[11];
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5C9BC20();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v3[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5C314CC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for SearchView();
  v7 = v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  return sub_1E5C2BFF8(*a2, v6);
}

uint64_t sub_1E5C31538()
{
  v1 = *(sub_1E5C9BFE0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E5C9BBA0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E5C3090C();
}

unint64_t sub_1E5C31604()
{
  result = qword_1ED053F58;
  if (!qword_1ED053F58)
  {
    sub_1E5C9BBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F58);
  }

  return result;
}

uint64_t sub_1E5C3165C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5C316C4()
{
  result = qword_1ED054068;
  if (!qword_1ED054068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
    sub_1E5C27F74(&qword_1ED054070, &qword_1ED054060, &qword_1E5C9E700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054068);
  }

  return result;
}

uint64_t sub_1E5C3177C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SearchState.editorialContent.getter()
{
  v1 = *v0;
  sub_1E5C31824(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_1E5C31824(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t SearchState.editorialContent.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1E5C27EC4(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

double SearchState.layout.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

double SearchState.layout.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = result;
  return result;
}

uint64_t SearchState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchState() + 40);
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchState.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchState() + 40);
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchState.history.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchState() + 44));
}

uint64_t SearchState.history.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchState() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchState.platform.setter(char a1)
{
  result = type metadata accessor for SearchState();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SearchState.results.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState() + 52));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a1 = v9[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v4;
  return sub_1E5C31CB0(v9, &v8);
}

__n128 SearchState.results.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SearchState() + 52));
  *&v8[9] = *(v3 + 41);
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  *v8 = v3[2];
  sub_1E5C30CAC(v7);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t SearchState.searchText.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchState() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchState.searchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchState() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchState.selectedScope.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState() + 60));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1E5C31EF0(v9, &v8);
}

uint64_t sub_1E5C31EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 SearchState.selectedScope.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SearchState() + 60));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v9[2] = v3[2];
  v9[3] = v5;
  sub_1E5C3177C(v9, &qword_1ED053F80, &qword_1E5C9E528);
  v6 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v8;
  return result;
}

uint64_t SearchState.showingHistoryDeletionDialog.setter(char a1)
{
  result = type metadata accessor for SearchState();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t SearchState.suggestions.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState() + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1E5C3210C(v4, v5, v6);
}

uint64_t sub_1E5C3210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 SearchState.suggestions.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for SearchState() + 68));
  v5 = v4[3];
  v6 = v4[4];
  sub_1E5C30DB8(*v4, v4[1], v4[2]);
  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v4[4] = v3;
  return result;
}

double SearchState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = xmmword_1E5C9DEE0;
  *(a1 + 40) = 0x4018000000000000;
  v2 = type metadata accessor for SearchState();
  *(a1 + 48) = 0;
  v3 = a1 + v2[10];
  sub_1E5C9BBC0();
  *(a1 + v2[11]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[12]) = 0;
  v4 = a1 + v2[13];
  *(v4 + 48) = 0;
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 56) = 2;
  v6 = (a1 + v2[14]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (a1 + v2[15]);
  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  *(a1 + v2[16]) = 0;
  v8 = a1 + v2[17];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  return result;
}

unint64_t sub_1E5C322CC(char a1)
{
  result = 0x74756F79616CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E7265746E497369;
      break;
    case 3:
      result = 0x6863726165537369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7263736275537369;
      break;
    case 6:
      result = 0x656C61636F6CLL;
      break;
    case 7:
      result = 0x79726F74736968;
      break;
    case 8:
      result = 0x6D726F6674616C70;
      break;
    case 9:
      result = 0x73746C75736572;
      break;
    case 10:
      result = 0x6554686372616573;
      break;
    case 11:
      result = 0x64657463656C6573;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0x6974736567677573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1E5C32478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C34830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C324AC(uint64_t a1)
{
  v2 = sub_1E5C32B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C324E8(uint64_t a1)
{
  v2 = sub_1E5C32B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054078, &qword_1E5C9E708);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C32B34();
  sub_1E5C9D130();
  v11 = *(v3 + 16);
  v50 = *v3;
  LOBYTE(v51) = v11;
  LOBYTE(v46) = 0;
  sub_1E5C32B88();
  sub_1E5C9D030();
  if (!v2)
  {
    v12 = *(v3 + 5);
    v50 = *(v3 + 24);
    *&v51 = v12;
    LOBYTE(v46) = 1;
    sub_1E5C32BDC();
    sub_1E5C9D030();
    v13 = *(v3 + 48);
    LOBYTE(v50) = 2;
    sub_1E5C9D010();
    v14 = *(v3 + 49);
    LOBYTE(v50) = 3;
    sub_1E5C9D010();
    v15 = *(v3 + 50);
    LOBYTE(v50) = 4;
    sub_1E5C9D010();
    v16 = *(v3 + 51);
    LOBYTE(v50) = 5;
    sub_1E5C9D010();
    v17 = type metadata accessor for SearchState();
    v18 = v17[10];
    LOBYTE(v50) = 6;
    sub_1E5C9BBD0();
    sub_1E5C34568(&qword_1ED054098, MEMORY[0x1E6969770]);
    sub_1E5C9D030();
    *&v50 = *(v3 + v17[11]);
    LOBYTE(v46) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C33628(&qword_1ED0540A8, &qword_1ED0540B0);
    sub_1E5C9D030();
    v64 = *(v3 + v17[12]);
    v63 = 8;
    sub_1E5C32C30();
    sub_1E5C9D030();
    v19 = (v3 + v17[13]);
    v20 = v19[1];
    v61[0] = *v19;
    v61[1] = v20;
    v22 = *v19;
    v21 = v19[1];
    *v62 = v19[2];
    *&v62[9] = *(v19 + 41);
    v58 = v22;
    v59 = v21;
    v60[0] = v19[2];
    *(v60 + 9) = *(v19 + 41);
    v57 = 9;
    sub_1E5C31CB0(v61, &v50);
    sub_1E5C32C84();
    sub_1E5C9D030();
    v55[0] = v58;
    v55[1] = v59;
    *v56 = v60[0];
    *&v56[9] = *(v60 + 9);
    sub_1E5C30CAC(v55);
    v23 = (v3 + v17[14]);
    v24 = *v23;
    v25 = v23[1];
    v54 = 10;
    sub_1E5C9D000();
    v26 = (v3 + v17[15]);
    v27 = *v26;
    v28 = v26[2];
    v51 = v26[1];
    v52 = v28;
    v29 = v26[2];
    v53 = v26[3];
    v46 = v27;
    v30 = *v26;
    v47 = v51;
    v48 = v29;
    v49 = v26[3];
    v50 = v30;
    v45 = 11;
    sub_1E5C31EF0(&v50, v44);
    sub_1E5C32CD8();
    sub_1E5C9CFF0();
    v44[0] = v46;
    v44[1] = v47;
    v44[2] = v48;
    v44[3] = v49;
    sub_1E5C3177C(v44, &qword_1ED053F80, &qword_1E5C9E528);
    v31 = *(v3 + v17[16]);
    LOBYTE(v39) = 12;
    sub_1E5C9D010();
    v32 = (v3 + v17[17]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v36 = v32[4];
    v39 = *v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v38[7] = 13;
    sub_1E5C3210C(v39, v33, v34);
    sub_1E5C32D2C();
    sub_1E5C9D030();
    sub_1E5C30DB8(v39, v40, v41);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5C32B34()
{
  result = qword_1ED054080;
  if (!qword_1ED054080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054080);
  }

  return result;
}

unint64_t sub_1E5C32B88()
{
  result = qword_1ED054088;
  if (!qword_1ED054088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054088);
  }

  return result;
}

unint64_t sub_1E5C32BDC()
{
  result = qword_1ED054090;
  if (!qword_1ED054090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054090);
  }

  return result;
}

unint64_t sub_1E5C32C30()
{
  result = qword_1ED0540B8;
  if (!qword_1ED0540B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540B8);
  }

  return result;
}

unint64_t sub_1E5C32C84()
{
  result = qword_1ED0540C0;
  if (!qword_1ED0540C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540C0);
  }

  return result;
}

unint64_t sub_1E5C32CD8()
{
  result = qword_1ED0540C8;
  if (!qword_1ED0540C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540C8);
  }

  return result;
}

unint64_t sub_1E5C32D2C()
{
  result = qword_1ED0540D0;
  if (!qword_1ED0540D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540D0);
  }

  return result;
}

uint64_t SearchState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1E5C9BBD0();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540D8, &qword_1E5C9E710);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  *&v68 = &v54 - v8;
  v9 = type metadata accessor for SearchState();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 2;
  *(v13 + 24) = xmmword_1E5C9DEE0;
  *(v13 + 5) = 0x4018000000000000;
  *(v13 + 12) = 0;
  v60 = v10[12];
  sub_1E5C9BBC0();
  v14 = v10[13];
  *&v13[v14] = MEMORY[0x1E69E7CC0];
  v58 = v10[14];
  v59 = v14;
  v13[v58] = 0;
  v15 = &v13[v10[15]];
  *(v15 + 6) = 0;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  v15[56] = 2;
  v16 = &v13[v10[16]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v13[v10[17]];
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v10[18];
  v13[v18] = 0;
  v19 = v10[19];
  v92 = v13;
  v20 = &v13[v19];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = a1;
  v22 = a1[3];
  v23 = a1[4];
  v67 = v21;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_1E5C32B34();
  v24 = v66;
  sub_1E5C9D120();
  if (v24)
  {
    v26 = v92;
    __swift_destroy_boxed_opaque_existential_1(v67);
    v53 = v26;
  }

  else
  {
    *&v66 = v15;
    v55 = v20;
    v56 = v16;
    v25 = v64;
    LOBYTE(v77[0]) = 0;
    sub_1E5C33580();
    sub_1E5C9CFA0();
    v28 = v80;
    v29 = v92;
    *v92 = v79;
    *(v29 + 16) = v28;
    LOBYTE(v77[0]) = 1;
    sub_1E5C335D4();
    sub_1E5C9CFA0();
    v30 = v80;
    *(v29 + 24) = v79;
    *(v29 + 5) = v30;
    LOBYTE(v79) = 2;
    *(v29 + 48) = sub_1E5C9CF80() & 1;
    LOBYTE(v79) = 3;
    *(v29 + 49) = sub_1E5C9CF80() & 1;
    LOBYTE(v79) = 4;
    *(v29 + 50) = sub_1E5C9CF80() & 1;
    LOBYTE(v79) = 5;
    *(v29 + 51) = sub_1E5C9CF80() & 1;
    LOBYTE(v79) = 6;
    sub_1E5C34568(&qword_1ED0540F0, MEMORY[0x1E6969770]);
    v31 = v62;
    sub_1E5C9CFA0();
    (*(v61 + 40))(v29 + v60, v63, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
    LOBYTE(v77[0]) = 7;
    sub_1E5C33628(&qword_1ED0540F8, &qword_1ED054100);
    sub_1E5C9CFA0();
    *(v29 + v59) = v79;
    LOBYTE(v77[0]) = 8;
    sub_1E5C336C4();
    sub_1E5C9CFA0();
    *(v29 + v58) = v79;
    v88 = 9;
    sub_1E5C33718();
    sub_1E5C9CFA0();
    v83 = v89;
    v84 = v90;
    v85[0] = *v91;
    *(v85 + 9) = *&v91[9];
    v32 = v66;
    v33 = *(v66 + 16);
    v86[0] = *v66;
    v86[1] = v33;
    *v87 = *(v66 + 32);
    *&v87[9] = *(v66 + 41);
    sub_1E5C30CAC(v86);
    v34 = v84;
    *v32 = v83;
    v32[1] = v34;
    v32[2] = v85[0];
    *(v32 + 41) = *(v85 + 9);
    LOBYTE(v79) = 10;
    v35 = sub_1E5C9CF70();
    v36 = v56;
    *v56 = v35;
    v36[1] = v37;
    v78 = 11;
    sub_1E5C3376C();
    sub_1E5C9CF60();
    v73 = v79;
    v74 = v80;
    v75 = v81;
    v76 = v82;
    v38 = *(v17 + 1);
    v77[0] = *v17;
    v77[1] = v38;
    v39 = *(v17 + 3);
    v77[2] = *(v17 + 2);
    v77[3] = v39;
    sub_1E5C3177C(v77, &qword_1ED053F80, &qword_1E5C9E528);
    v40 = v74;
    *v17 = v73;
    *(v17 + 1) = v40;
    v41 = v76;
    *(v17 + 2) = v75;
    *(v17 + 3) = v41;
    LOBYTE(v70) = 12;
    *(v92 + v18) = sub_1E5C9CF80() & 1;
    v69 = 13;
    sub_1E5C337C0();
    v42 = v65;
    v43 = v68;
    sub_1E5C9CFA0();
    (*(v25 + 8))(v43, v42);
    v44 = v72;
    v45 = v55;
    v46 = *v55;
    v47 = v55[1];
    v48 = v55[2];
    v49 = v55[3];
    v50 = v55[4];
    v68 = v70;
    v66 = v71;
    sub_1E5C30DB8(v46, v47, v48);
    v51 = v66;
    *v45 = v68;
    *(v45 + 1) = v51;
    v45[4] = v44;
    v52 = v92;
    sub_1E5C33ED4(v92, v57, type metadata accessor for SearchState);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v53 = v52;
  }

  return sub_1E5C33F3C(v53, type metadata accessor for SearchState);
}

unint64_t sub_1E5C33580()
{
  result = qword_1ED0540E0;
  if (!qword_1ED0540E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540E0);
  }

  return result;
}

unint64_t sub_1E5C335D4()
{
  result = qword_1ED0540E8;
  if (!qword_1ED0540E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540E8);
  }

  return result;
}

uint64_t sub_1E5C33628(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C34568(a2, type metadata accessor for SearchHistoryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C336C4()
{
  result = qword_1ED054108;
  if (!qword_1ED054108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054108);
  }

  return result;
}

unint64_t sub_1E5C33718()
{
  result = qword_1ED054110;
  if (!qword_1ED054110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054110);
  }

  return result;
}

unint64_t sub_1E5C3376C()
{
  result = qword_1ED054118;
  if (!qword_1ED054118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054118);
  }

  return result;
}

unint64_t sub_1E5C337C0()
{
  result = qword_1ED054120;
  if (!qword_1ED054120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054120);
  }

  return result;
}

uint64_t SearchState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchHistoryItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(a1, v9);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    v10 = *(v1 + 8);
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  v11 = *(v1 + 40);
  v53 = *(v1 + 24);
  *&v54 = v11;
  SearchLayout.hash(into:)();
  v12 = *(v1 + 48);
  sub_1E5C9D0F0();
  v13 = *(v1 + 49);
  sub_1E5C9D0F0();
  v14 = *(v1 + 50);
  sub_1E5C9D0F0();
  v15 = *(v1 + 51);
  sub_1E5C9D0F0();
  v16 = type metadata accessor for SearchState();
  v17 = *(v16 + 40);
  sub_1E5C9BBD0();
  sub_1E5C34568(&qword_1ED054128, MEMORY[0x1E6969770]);
  sub_1E5C9CBB0();
  v51 = v16;
  v52 = v2;
  v18 = *(v2 + *(v16 + 44));
  MEMORY[0x1E69399F0](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v4 + 20);
    v21 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    do
    {
      sub_1E5C33ED4(v21, v8, type metadata accessor for SearchHistoryItem);
      v23 = *v8;
      v24 = v8[1];
      sub_1E5C9CC60();
      sub_1E5C9BB60();
      sub_1E5C34568(&qword_1ED054130, MEMORY[0x1E6969530]);
      sub_1E5C9CBB0();
      sub_1E5C33F3C(v8, type metadata accessor for SearchHistoryItem);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  v26 = v51;
  v25 = v52;
  MEMORY[0x1E69399F0](*(v52 + v51[12]));
  v27 = (v25 + v26[13]);
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  if (*(v27 + 56))
  {
    if (*(v27 + 56) == 1)
    {
      v31 = v27[6];
      *(&v50 + 1) = v27[5];
      v33 = v27[3];
      v32 = v27[4];
      MEMORY[0x1E69399F0](2);
      sub_1E5C9D0F0();
      if (v29)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v30);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v31)
      {
        sub_1E5C9CC60();
      }
    }

    else
    {
      MEMORY[0x1E69399F0](0);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
    sub_1E5C9CC60();
  }

  v34 = (v25 + v26[14]);
  v35 = *v34;
  v36 = v34[1];
  sub_1E5C9CC60();
  v37 = (v25 + v26[15]);
  v38 = v37[1];
  v53 = *v37;
  v54 = v38;
  v39 = v37[3];
  v55 = v37[2];
  v56 = v39;
  if (*(&v38 + 1))
  {
    v40 = *(&v53 + 1);
    v50 = v55;
    v41 = *(&v56 + 1);
    sub_1E5C9D0F0();
    sub_1E5C9D0F0();

    if (v40)
    {

      sub_1E5C9CC60();
    }

    sub_1E5C9CC60();
    MEMORY[0x1E69399F0](v50);
    sub_1E5C9CC60();
    sub_1E5C2A6D0(a1, v41);
    sub_1E5C3177C(&v53, &qword_1ED053F80, &qword_1E5C9E528);
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v42 = *(v25 + v26[16]);
  sub_1E5C9D0F0();
  v43 = (v25 + v26[17]);
  v44 = v43[2];
  if (!v44)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v45 = *v43;
  v46 = v43[1];
  v47 = v43[3];
  v48 = v43[4];
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v46)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v44);
  return sub_1E5C9CC60();
}

uint64_t SearchState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33E4C()
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33E90()
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C33F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessSearch0B5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      if (v4 != 2 || (v3 | v2) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    if (v4 != 1)
    {
      goto LABEL_47;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_1E5C767A0(*a1, *a2);
    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
    goto LABEL_47;
  }

  if (*a1 != v2 || *(a1 + 8) != v3)
  {
    v5 = a1;
    v9 = *a1;
    v6 = a2;
    v7 = sub_1E5C9D060();
LABEL_11:
    a2 = v6;
    v10 = v7;
    a1 = v5;
    if ((v10 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_18:
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_47;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_47;
  }

  if (*(a1 + 49) != *(a2 + 49))
  {
    goto LABEL_47;
  }

  if (*(a1 + 50) != *(a2 + 50))
  {
    goto LABEL_47;
  }

  if (*(a1 + 51) != *(a2 + 51))
  {
    goto LABEL_47;
  }

  v14 = a1;
  v15 = a2;
  v16 = type metadata accessor for SearchState();
  v17 = v14;
  v18 = v15;
  if ((MEMORY[0x1E69384C0](v14 + v16[10], v15 + v16[10]) & 1) == 0)
  {
    goto LABEL_47;
  }

  if ((sub_1E5C76580(*(v14 + v16[11]), *(v15 + v16[11])) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(v14 + v16[12]) != *(v15 + v16[12]))
  {
    goto LABEL_47;
  }

  v19 = v16[13];
  v20 = *(v14 + v19 + 16);
  v97[0] = *(v14 + v19);
  v97[1] = v20;
  v22 = *(v14 + v19);
  v21 = *(v14 + v19 + 16);
  v98[0] = *(v14 + v19 + 32);
  *(v98 + 9) = *(v14 + v19 + 41);
  *&v76[9] = *(v14 + v19 + 41);
  v74 = v22;
  v75 = v21;
  *v76 = *(v14 + v19 + 32);
  v23 = (v15 + v16[13]);
  *(v101 + 9) = *(v23 + 41);
  v24 = *v23;
  v25 = v23[2];
  v100 = v23[1];
  v101[0] = v25;
  v26 = *v23;
  v99 = v24;
  v94 = v26;
  v95 = v100;
  *v96 = v23[2];
  *&v96[9] = *(v23 + 41);
  sub_1E5C31CB0(v97, &v90);
  sub_1E5C31CB0(&v99, &v90);
  v27 = static SearchResultsState.== infix(_:_:)(&v74, &v94);
  v102[0] = v94;
  v102[1] = v95;
  v103[0] = *v96;
  *(v103 + 9) = *&v96[9];
  sub_1E5C30CAC(v102);
  v104[0] = v74;
  v104[1] = v75;
  v105[0] = *v76;
  *(v105 + 9) = *&v76[9];
  sub_1E5C30CAC(v104);
  if ((v27 & 1) == 0)
  {
    goto LABEL_47;
  }

  v28 = v16[14];
  v29 = *(v17 + v28);
  v30 = *(v17 + v28 + 8);
  v31 = (v15 + v28);
  if (v29 != *v31 || (v32 = v17, v33 = v15, v30 != v31[1]))
  {
    v34 = sub_1E5C9D060();
    v33 = v15;
    v32 = v17;
    if ((v34 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v35 = (v32 + v16[15]);
  v36 = v35[1];
  v90 = *v35;
  v91 = v36;
  v37 = v35[3];
  v92 = v35[2];
  v93 = v37;
  v38 = (v33 + v16[15]);
  v39 = v38[1];
  v94 = *v38;
  v95 = v39;
  v40 = v38[3];
  *v96 = v38[2];
  *&v96[16] = v40;
  v41 = v35[3];
  v86 = v35[2];
  v87 = v41;
  v88 = v90;
  v89 = *(v35 + 2);
  v42 = *(&v91 + 1);
  v85 = *(v38 + 2);
  v43 = *(&v95 + 1);
  v44 = v38[2];
  v83 = v38[3];
  v84 = v94;
  v82 = v44;
  if (*(&v91 + 1))
  {
    v45 = *v35;
    *&v75 = *(v35 + 2);
    *(&v75 + 1) = *(&v91 + 1);
    v46 = v35[3];
    *v76 = v35[2];
    *&v76[16] = v46;
    v73 = v46;
    v74 = v45;
    v70 = v45;
    v71 = v75;
    v72 = *v76;
    if (*(&v95 + 1))
    {
      v66 = *v38;
      v47 = *(v38 + 2);
      v48 = v38[3];
      v68 = v38[2];
      v69 = v48;
      *&v67 = v47;
      *(&v67 + 1) = *(&v95 + 1);
      sub_1E5C31EF0(&v90, v65);
      sub_1E5C31EF0(&v94, v65);
      sub_1E5C31EF0(&v74, v65);
      v49 = static SearchResultScope.== infix(_:_:)(&v70, &v66);
      v64[0] = v66;
      v64[1] = v67;
      v64[2] = v68;
      v64[3] = v69;
      sub_1E5C2A1F0(v64);
      v65[0] = v70;
      v65[1] = v71;
      v65[2] = v72;
      v65[3] = v73;
      sub_1E5C2A1F0(v65);
      v66 = v88;
      *&v67 = v89;
      *(&v67 + 1) = v42;
      v68 = v86;
      v69 = v87;
      sub_1E5C3177C(&v66, &qword_1ED053F80, &qword_1E5C9E528);
      if ((v49 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v66 = v74;
    v67 = v75;
    v68 = *v76;
    v69 = *&v76[16];
    sub_1E5C31EF0(&v90, v65);
    sub_1E5C31EF0(&v94, v65);
    sub_1E5C31EF0(&v74, v65);
    sub_1E5C2A1F0(&v66);
LABEL_44:
    v74 = v88;
    *&v75 = v89;
    *(&v75 + 1) = v42;
    *v76 = v86;
    *&v76[16] = v87;
    v77 = v84;
    v78 = v85;
    v79 = v43;
    v80 = v82;
    v81 = v83;
    sub_1E5C3177C(&v74, &qword_1ED054150, &unk_1E5CA3E30);
    goto LABEL_47;
  }

  if (*(&v95 + 1))
  {
    sub_1E5C31EF0(&v90, &v74);
    sub_1E5C31EF0(&v94, &v74);
    goto LABEL_44;
  }

  v74 = *v35;
  v75 = *(v35 + 2);
  v50 = v35[3];
  *v76 = v35[2];
  *&v76[16] = v50;
  sub_1E5C31EF0(&v90, &v70);
  sub_1E5C31EF0(&v94, &v70);
  sub_1E5C3177C(&v74, &qword_1ED053F80, &qword_1E5C9E528);
LABEL_46:
  if (*(v17 + v16[16]) == *(v18 + v16[16]))
  {
    v53 = v16[17];
    v54 = *(v17 + v53 + 8);
    v55 = *(v17 + v53 + 16);
    v56 = *(v17 + v53 + 24);
    v57 = *(v17 + v53 + 32);
    *&v74 = *(v17 + v53);
    *(&v74 + 1) = v54;
    *&v75 = v55;
    *(&v75 + 1) = v56;
    *v76 = v57;
    v58 = (v18 + v53);
    v60 = v58[1];
    v61 = v58[2];
    v62 = v58[3];
    v63 = v58[4];
    *&v70 = *v58;
    v59 = v70;
    *(&v70 + 1) = v60;
    *&v71 = v61;
    *(&v71 + 1) = v62;
    *&v72 = v63;
    sub_1E5C3210C(v74, v54, v55);
    sub_1E5C3210C(v59, v60, v61);
    v51 = _s13FitnessSearch0B10HintsStateO2eeoiySbAC_ACtFZ_0(&v74, &v70);
    sub_1E5C30DB8(v70, *(&v70 + 1), v71);
    sub_1E5C30DB8(v74, *(&v74 + 1), v75);
    return v51 & 1;
  }

LABEL_47:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_1E5C34568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SearchState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C3472C()
{
  result = qword_1ED054138;
  if (!qword_1ED054138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054138);
  }

  return result;
}

unint64_t sub_1E5C34784()
{
  result = qword_1ED054140;
  if (!qword_1ED054140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054140);
  }

  return result;
}

unint64_t sub_1E5C347DC()
{
  result = qword_1ED054148;
  if (!qword_1ED054148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054148);
  }

  return result;
}

uint64_t sub_1E5C34830(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5CA7C30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6863726165537369 && a2 == 0xEB00000000676E69 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA7C50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED000065706F6353 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5CA7C70 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 13;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t SearchHint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5C9BBA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchHint.datasetIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchHint() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SearchHint()
{
  result = qword_1EE2C46C8;
  if (!qword_1EE2C46C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHint.label.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchHint() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchHint.searchQuery.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchHint() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *SearchHint.init(label:searchQuery:datasetIdentifier:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1E5C9BB90();
  result = type metadata accessor for SearchHint();
  v17 = (a8 + result[5]);
  *v17 = a5;
  v17[1] = a6;
  v18 = (a8 + result[6]);
  *v18 = a1;
  v18[1] = a2;
  *(a8 + result[7]) = a7;
  v19 = (a8 + result[8]);
  *v19 = a3;
  v19[1] = a4;
  return result;
}

unint64_t sub_1E5C34EDC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x7551686372616573;
  }

  if (v1 != 2)
  {
    v3 = v4;
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
    return v3;
  }
}

uint64_t sub_1E5C34F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C360F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C34F98(uint64_t a1)
{
  v2 = sub_1E5C3525C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C34FD4(uint64_t a1)
{
  v2 = sub_1E5C3525C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054158, &qword_1E5C9E958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3525C();
  sub_1E5C9D130();
  v23[15] = 0;
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED054168, MEMORY[0x1E69695A8]);
  sub_1E5C9D030();
  if (!v2)
  {
    v11 = type metadata accessor for SearchHint();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v23[14] = 1;
    sub_1E5C9CFD0();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v23[13] = 2;
    sub_1E5C9D000();
    v18 = *(v3 + v11[7]);
    v23[12] = 3;
    sub_1E5C9D020();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    v23[11] = 4;
    sub_1E5C9D000();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5C3525C()
{
  result = qword_1ED054160;
  if (!qword_1ED054160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054160);
  }

  return result;
}

uint64_t SearchHint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E5C9BBA0();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054170, &qword_1E5C9E960);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for SearchHint();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3525C();
  v34 = v10;
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v30;
  v39 = 0;
  sub_1E5C35E38(&qword_1ED054178, MEMORY[0x1E69695A8]);
  v17 = v31;
  sub_1E5C9CFA0();
  (*(v16 + 32))(v14, v17, v4);
  v38 = 1;
  v18 = sub_1E5C9CF40();
  v19 = &v14[v11[5]];
  *v19 = v18;
  v19[1] = v20;
  v37 = 2;
  v21 = sub_1E5C9CF70();
  v22 = &v14[v11[6]];
  *v22 = v21;
  v22[1] = v23;
  v36 = 3;
  *&v14[v11[7]] = sub_1E5C9CF90();
  v35 = 4;
  v24 = sub_1E5C9CF70();
  v26 = v25;
  (*(v32 + 8))(v34, v33);
  v27 = &v14[v11[8]];
  *v27 = v24;
  v27[1] = v26;
  sub_1E5C35724(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5C35788(v14);
}

uint64_t sub_1E5C35724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C35788(uint64_t a1)
{
  v2 = type metadata accessor for SearchHint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchHint.hash(into:)()
{
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8]);
  sub_1E5C9CBB0();
  v1 = type metadata accessor for SearchHint();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v4 = (v0 + v1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v0 + v1[7]));
  v7 = (v0 + v1[8]);
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5C9CC60();
}

uint64_t SearchHint.hashValue.getter()
{
  sub_1E5C9D0D0();
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8]);
  sub_1E5C9CBB0();
  v1 = type metadata accessor for SearchHint();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v4 = (v0 + v1[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v0 + v1[7]));
  v7 = (v0 + v1[8]);
  v8 = *v7;
  v9 = v7[1];
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C35A54(uint64_t a1, int *a2)
{
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8]);
  sub_1E5C9CBB0();
  v4 = (v2 + a2[5]);
  if (v4[1])
  {
    v5 = *v4;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + a2[7]));
  v9 = (v2 + a2[8]);
  v10 = *v9;
  v11 = v9[1];

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C35B60(uint64_t a1, int *a2)
{
  sub_1E5C9D0D0();
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8]);
  sub_1E5C9CBB0();
  v4 = (v2 + a2[5]);
  if (v4[1])
  {
    v5 = *v4;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + a2[7]));
  v9 = (v2 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C35C74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5C9BBA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s13FitnessSearch0B4HintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5C9BB80() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SearchHint();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v8 && v7 == v9;
  if (!v10 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_1E5C9D060() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if (v17 == *v19 && v18 == v19[1])
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t sub_1E5C35E38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5C35EF0()
{
  sub_1E5C9BBA0();
  if (v0 <= 0x3F)
  {
    sub_1E5C35F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C35F88()
{
  if (!qword_1EE2C4088)
  {
    v0 = sub_1E5C9CE20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C4088);
    }
  }
}

unint64_t sub_1E5C35FEC()
{
  result = qword_1ED054188;
  if (!qword_1ED054188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054188);
  }

  return result;
}

unint64_t sub_1E5C36044()
{
  result = qword_1ED054190;
  if (!qword_1ED054190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054190);
  }

  return result;
}

unint64_t sub_1E5C3609C()
{
  result = qword_1ED054198;
  if (!qword_1ED054198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054198);
  }

  return result;
}

uint64_t sub_1E5C360F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

unint64_t SearchScopeCategory.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F772D6F69647561;
    v6 = 0x6974696C61646F6DLL;
    if (a1 != 2)
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v5 = 0x697461746964656DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7372656E69617274;
    v2 = 0x2D72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7374756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6C75736552706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C363E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SearchScopeCategory.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SearchScopeCategory.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5C9D060();
  }

  return v8 & 1;
}

uint64_t sub_1E5C36468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_1E5C36498@<X0>(unint64_t *a1@<X8>)
{
  result = SearchScopeCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E5C36574()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchScopeCategory.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C365D8()
{
  SearchScopeCategory.rawValue.getter(*v0);
  sub_1E5C9CC60();
}

uint64_t sub_1E5C3662C()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchScopeCategory.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5C9CF10();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5C366DC()
{
  result = qword_1ED0541A0;
  if (!qword_1ED0541A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541A0);
  }

  return result;
}

unint64_t sub_1E5C36740()
{
  result = qword_1ED0541A8;
  if (!qword_1ED0541A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541A8);
  }

  return result;
}

uint64_t SearchResultsRequest.term.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchResultsRequest.init(term:method:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4 & 1;
  return result;
}

uint64_t sub_1E5C367E8()
{
  v1 = 0x646F6874656DLL;
  if (*v0 != 1)
  {
    v1 = 1701080941;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836213620;
  }
}

uint64_t sub_1E5C36830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C374B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C36858(uint64_t a1)
{
  v2 = sub_1E5C36AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C36894(uint64_t a1)
{
  v2 = sub_1E5C36AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResultsRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0541B0, &qword_1E5C9ECD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v20 = *(v1 + 17);
  v21 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1E5C36AA4();
  sub_1E5C9D130();
  v26 = 0;
  sub_1E5C9D000();
  if (!v2)
  {
    v17 = v20;
    v25 = v21;
    v24 = 1;
    sub_1E5C36AF8();
    sub_1E5C9D030();
    v23 = v17;
    v22 = 2;
    sub_1E5C36B4C();
    sub_1E5C9D030();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_1E5C36AA4()
{
  result = qword_1ED0541B8;
  if (!qword_1ED0541B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541B8);
  }

  return result;
}

unint64_t sub_1E5C36AF8()
{
  result = qword_1ED0541C0;
  if (!qword_1ED0541C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541C0);
  }

  return result;
}

unint64_t sub_1E5C36B4C()
{
  result = qword_1ED0541C8;
  if (!qword_1ED0541C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541C8);
  }

  return result;
}

uint64_t SearchResultsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0541D0, &qword_1E5C9ECD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C36AA4();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v11 = sub_1E5C9CF70();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  sub_1E5C36DE4();
  sub_1E5C9CFA0();
  v18 = v22;
  v19 = 2;
  sub_1E5C36E38();
  sub_1E5C9CFA0();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5C36DE4()
{
  result = qword_1ED0541D8;
  if (!qword_1ED0541D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541D8);
  }

  return result;
}

unint64_t sub_1E5C36E38()
{
  result = qword_1ED0541E0;
  if (!qword_1ED0541E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541E0);
  }

  return result;
}

uint64_t SearchResultsRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  sub_1E5C9CC60();
}

uint64_t SearchResultsRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C370E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  sub_1E5C9D0D0();
  SearchResultsRequest.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C37140()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  sub_1E5C9D0D0();
  SearchResultsRequest.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B14ResultsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_1E5C9D060()) && (sub_1E5C76194(v2, v4))
  {
    if (v3)
    {
      v7 = 0x6E656D6572636E69;
    }

    else
    {
      v7 = 0x6574656C706D6F63;
    }

    if (v3)
    {
      v8 = 0xEB000000006C6174;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v5)
    {
      v9 = 0x6E656D6572636E69;
    }

    else
    {
      v9 = 0x6574656C706D6F63;
    }

    if (v5)
    {
      v10 = 0xEB000000006C6174;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E5C9D060();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1E5C3729C()
{
  result = qword_1ED0541E8;
  if (!qword_1ED0541E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541E8);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5C37304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1E5C3734C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C373B0()
{
  result = qword_1ED0541F0;
  if (!qword_1ED0541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541F0);
  }

  return result;
}

unint64_t sub_1E5C37408()
{
  result = qword_1ED0541F8;
  if (!qword_1ED0541F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541F8);
  }

  return result;
}

unint64_t sub_1E5C37460()
{
  result = qword_1ED054200;
  if (!qword_1ED054200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054200);
  }

  return result;
}

uint64_t sub_1E5C374B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5C375D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C676E69646E6570;
    v6 = 0x50676E69646E6570;
    if (a1 != 2)
    {
      v6 = 0x676E6973756170;
    }

    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64656C696166;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0x696C6C65636E6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646573756170;
    if (a1 != 4)
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C37710(uint64_t a1)
{
  v2 = sub_1E5C3854C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3774C(uint64_t a1)
{
  v2 = sub_1E5C3854C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C38910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C377C4(uint64_t a1)
{
  v2 = sub_1E5C384F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37800(uint64_t a1)
{
  v2 = sub_1E5C384F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3783C(uint64_t a1)
{
  v2 = sub_1E5C38648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37878(uint64_t a1)
{
  v2 = sub_1E5C38648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C378B4(uint64_t a1)
{
  v2 = sub_1E5C385F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C378F0(uint64_t a1)
{
  v2 = sub_1E5C385F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3792C(uint64_t a1)
{
  v2 = sub_1E5C38798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37968(uint64_t a1)
{
  v2 = sub_1E5C38798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C379A4(uint64_t a1)
{
  v2 = sub_1E5C3869C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C379E0(uint64_t a1)
{
  v2 = sub_1E5C3869C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37A1C(uint64_t a1)
{
  v2 = sub_1E5C386F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37A58(uint64_t a1)
{
  v2 = sub_1E5C386F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37A94(uint64_t a1)
{
  v2 = sub_1E5C385A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37AD0(uint64_t a1)
{
  v2 = sub_1E5C385A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37B0C(uint64_t a1)
{
  v2 = sub_1E5C387EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37B48(uint64_t a1)
{
  v2 = sub_1E5C387EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37B84(uint64_t a1)
{
  v2 = sub_1E5C38744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37BC0(uint64_t a1)
{
  v2 = sub_1E5C38744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentAssetLoadStatus.encode(to:)(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054208, &qword_1E5C9EF00);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054210, &qword_1E5C9EF08);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054218, &qword_1E5C9EF10);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v55 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054220, &qword_1E5C9EF18);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054228, &qword_1E5C9EF20);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054230, &qword_1E5C9EF28);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v77 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054238, &qword_1E5C9EF30);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v75 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054240, &qword_1E5C9EF38);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054248, &qword_1E5C9EF40);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054250, &qword_1E5C9EF48);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C384F8();
  v80 = v31;
  sub_1E5C9D130();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_1E5C38744();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        sub_1E5C9CFC0();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_1E5C386F0();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        sub_1E5C9CFC0();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_1E5C387EC();
        v46 = v80;
        v47 = v81;
        sub_1E5C9CFC0();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_1E5C38798();
      v51 = v80;
      v50 = v81;
      sub_1E5C9CFC0();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_1E5C3869C();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        sub_1E5C9CFC0();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_1E5C38648();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        sub_1E5C9CFC0();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_1E5C385F4();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        sub_1E5C9CFC0();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_1E5C385A0();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        sub_1E5C9CFC0();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_1E5C3854C();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        sub_1E5C9CFC0();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}

unint64_t sub_1E5C384F8()
{
  result = qword_1ED054258;
  if (!qword_1ED054258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054258);
  }

  return result;
}

unint64_t sub_1E5C3854C()
{
  result = qword_1ED054260;
  if (!qword_1ED054260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054260);
  }

  return result;
}

unint64_t sub_1E5C385A0()
{
  result = qword_1ED054268;
  if (!qword_1ED054268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054268);
  }

  return result;
}

unint64_t sub_1E5C385F4()
{
  result = qword_1ED054270;
  if (!qword_1ED054270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054270);
  }

  return result;
}

unint64_t sub_1E5C38648()
{
  result = qword_1ED054278;
  if (!qword_1ED054278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054278);
  }

  return result;
}

unint64_t sub_1E5C3869C()
{
  result = qword_1ED054280;
  if (!qword_1ED054280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054280);
  }

  return result;
}

unint64_t sub_1E5C386F0()
{
  result = qword_1ED054288;
  if (!qword_1ED054288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054288);
  }

  return result;
}

unint64_t sub_1E5C38744()
{
  result = qword_1ED054290;
  if (!qword_1ED054290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054290);
  }

  return result;
}

unint64_t sub_1E5C38798()
{
  result = qword_1ED054298;
  if (!qword_1ED054298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054298);
  }

  return result;
}

unint64_t sub_1E5C387EC()
{
  result = qword_1ED0542A0;
  if (!qword_1ED0542A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542A0);
  }

  return result;
}

char *sub_1E5C38858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5C38C08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SearchContentAssetLoadStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C38910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C676E69646E6570 && a2 == 0xEB0000000064616FLL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEC00000065737561 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6973756170 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7C90 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C6C65636E6163 && a2 == 0xEA0000000000676ELL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_1E5C38C08(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054358, &qword_1E5C9F800);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054360, &qword_1E5C9F808);
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054368, &qword_1E5C9F810);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054370, &qword_1E5C9F818);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v59 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054378, &qword_1E5C9F820);
  v70 = *(v69 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v84 = &v59 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054380, &qword_1E5C9F828);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v83 = &v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054388, &qword_1E5C9F830);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v79 = &v59 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054390, &qword_1E5C9F838);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054398, &qword_1E5C9F840);
  v62 = *(v23 - 8);
  v24 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A0, &qword_1E5C9F848);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v59 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1E5C384F8();
  v34 = v87;
  sub_1E5C9D120();
  if (!v34)
  {
    v60 = v26;
    v59 = v23;
    v35 = v22;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v87 = v28;
    v61 = v31;
    v39 = sub_1E5C9CFB0();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_1E5C3AA24();
    if (v41 != 9 && v90 == v91 >> 1)
    {
      v31 = v41;
      if (v41 <= 3u)
      {
        v42 = v61;
        if (v41 > 1u)
        {
          if (v41 == 2)
          {
            v92 = 2;
            sub_1E5C38744();
            v57 = v79;
            sub_1E5C9CF20();
            (*(v65 + 8))(v57, v66);
          }

          else
          {
            v92 = 3;
            sub_1E5C386F0();
            sub_1E5C9CF20();
            (*(v67 + 8))(v36, v68);
          }

          (*(v87 + 8))(v42, v27);
          goto LABEL_29;
        }

        v43 = v87;
        if (v41)
        {
          v92 = 1;
          sub_1E5C38798();
          sub_1E5C9CF20();
          v54 = *(v63 + 8);
          v55 = v35;
          v56 = &v93;
        }

        else
        {
          v92 = 0;
          sub_1E5C387EC();
          v53 = v60;
          sub_1E5C9CF20();
          v54 = *(v62 + 8);
          v55 = v53;
          v56 = &v91;
        }
      }

      else
      {
        v42 = v61;
        if (v41 > 5u)
        {
          v43 = v87;
          if (v41 == 6)
          {
            v92 = 6;
            sub_1E5C385F4();
            v44 = v80;
            sub_1E5C9CF20();
            v46 = v73;
            v45 = v74;
          }

          else
          {
            if (v41 != 7)
            {
              v92 = 8;
              sub_1E5C3854C();
              v58 = v82;
              sub_1E5C9CF20();
              (*(v77 + 8))(v58, v78);
LABEL_28:
              (*(v43 + 8))(v42, v27);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v86);
              return v31;
            }

            v92 = 7;
            sub_1E5C385A0();
            v44 = v81;
            sub_1E5C9CF20();
            v46 = v75;
            v45 = v76;
          }

          goto LABEL_26;
        }

        v43 = v87;
        if (v41 != 4)
        {
          v92 = 5;
          sub_1E5C38648();
          v44 = v38;
          sub_1E5C9CF20();
          v46 = v71;
          v45 = v72;
LABEL_26:
          v54 = *(v46 + 8);
          v55 = v44;
          goto LABEL_27;
        }

        v92 = 4;
        sub_1E5C3869C();
        sub_1E5C9CF20();
        v54 = *(v70 + 8);
        v55 = v37;
        v56 = &v94;
      }

      v45 = *(v56 - 32);
LABEL_27:
      v54(v55, v45);
      goto LABEL_28;
    }

    v47 = sub_1E5C9CE90();
    v31 = swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v49 = &type metadata for SearchContentAssetLoadStatus;
    v51 = v61;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v87 + 8))(v51, v27);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return v31;
}