uint64_t sub_20DF929B4()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF92A48()
{
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF92AC8()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF92B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF94684();
  *a2 = result;
  return result;
}

void sub_20DF92B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 1802396018;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20DF92BD8()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1802396018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_20DF92C24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF94684();
  *a1 = result;
  return result;
}

uint64_t sub_20DF92C4C(uint64_t a1)
{
  v2 = sub_20DF92F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF92C88(uint64_t a1)
{
  v2 = sub_20DF92F30();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall UtilityPeakPeriod.init(start:peakPeriodLabel:rank:)(HomeUtilityServices::UtilityPeakPeriod *__return_ptr retstr, Swift::String start, Swift::String peakPeriodLabel, Swift::Int rank)
{
  retstr->start = start;
  retstr->peakPeriodLabel = peakPeriodLabel;
  retstr->rank = rank;
}

BOOL static UtilityPeakPeriod.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_20E009984()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_20E009984()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t UtilityPeakPeriod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C08, &qword_20E00E060);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92F30();
  sub_20E009A84();
  v17 = 0;
  v12 = v14[3];
  sub_20E009914();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_20E009914();
  v15 = 2;
  sub_20E009934();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20DF92F30()
{
  result = qword_27C852C10;
  if (!qword_27C852C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C10);
  }

  return result;
}

uint64_t UtilityPeakPeriod.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20E009194();
  sub_20E009194();
  return MEMORY[0x20F32AC10](v5);
}

uint64_t UtilityPeakPeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v5);
  return sub_20E009A54();
}

uint64_t UtilityPeakPeriod.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C18, &qword_20E00E068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF92F30();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v11 = sub_20E009894();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_20E009894();
  v20 = v14;
  v22 = 2;
  v15 = sub_20E0098B4();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DF932EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v5);
  return sub_20E009A54();
}

uint64_t sub_20DF9336C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20E009194();
  sub_20E009194();
  return MEMORY[0x20F32AC10](v5);
}

uint64_t sub_20DF933C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20E009A34();
  sub_20E009194();
  sub_20E009194();
  MEMORY[0x20F32AC10](v5);
  return sub_20E009A54();
}

BOOL sub_20DF9343C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_20E009984()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_20E009984()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RateMetaData.tariffProfileId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RateMetaData.tariffLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RateMetaData.tariffType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall RateMetaData.init(tariffProfileId:tariffLabel:tariffType:)(HomeUtilityServices::RateMetaData *__return_ptr retstr, Swift::String tariffProfileId, Swift::String tariffLabel, Swift::String tariffType)
{
  retstr->tariffProfileId = tariffProfileId;
  retstr->tariffLabel = tariffLabel;
  retstr->tariffType = tariffType;
}

uint64_t sub_20DF93578()
{
  v1 = 0x614C666669726174;
  if (*v0 != 1)
  {
    v1 = 0x7954666669726174;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7250666669726174;
  }
}

uint64_t sub_20DF935EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF946D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF93614(uint64_t a1)
{
  v2 = sub_20DF93850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF93650(uint64_t a1)
{
  v2 = sub_20DF93850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RateMetaData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C20, &qword_20E00E070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF93850();
  sub_20E009A84();
  v18 = 0;
  v13 = v15[5];
  sub_20E009914();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_20E009914();
  v16 = 2;
  sub_20E009914();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20DF93850()
{
  result = qword_27C852C28;
  if (!qword_27C852C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C28);
  }

  return result;
}

uint64_t RateMetaData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852C30, &qword_20E00E078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF93850();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_20E009894();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_20E009894();
  v23 = v14;
  v25 = 2;
  v15 = sub_20E009894();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

HomeUtilityServices::UtilityTariffType_optional __swiftcall UtilityTariffType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E009844();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20DF93BAC()
{
  result = qword_281123348;
  if (!qword_281123348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123348);
  }

  return result;
}

unint64_t sub_20DF93C10()
{
  result = qword_27C852C38;
  if (!qword_27C852C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C38);
  }

  return result;
}

uint64_t sub_20DF93C64()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF93D38()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF93DF8()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

void sub_20DF93ED4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5590868;
  v5 = 0xE500000000000000;
  v6 = 0x4445584946;
  v7 = 0xE400000000000000;
  v8 = 1413565510;
  if (v2 != 3)
  {
    v8 = 0x524F505055534E55;
    v7 = 0xEB00000000444554;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x444552454954;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_20DF94018()
{
  result = qword_27C852C40;
  if (!qword_27C852C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852C48, &qword_20E00E2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices12RateMetaDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20DF940C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20DF94110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_20DF94188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20DF941D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20DF9423C(uint64_t a1, int a2)
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

uint64_t sub_20DF94284(uint64_t result, int a2, int a3)
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

unint64_t sub_20DF94324()
{
  result = qword_27C852C50;
  if (!qword_27C852C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C50);
  }

  return result;
}

unint64_t sub_20DF9437C()
{
  result = qword_27C852C58;
  if (!qword_27C852C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C58);
  }

  return result;
}

unint64_t sub_20DF943D4()
{
  result = qword_27C852C60;
  if (!qword_27C852C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C60);
  }

  return result;
}

unint64_t sub_20DF9442C()
{
  result = qword_27C852C68;
  if (!qword_27C852C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C68);
  }

  return result;
}

unint64_t sub_20DF94484()
{
  result = qword_27C852C70;
  if (!qword_27C852C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C70);
  }

  return result;
}

unint64_t sub_20DF944DC()
{
  result = qword_27C852C78;
  if (!qword_27C852C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C78);
  }

  return result;
}

unint64_t sub_20DF94534()
{
  result = qword_27C852C80;
  if (!qword_27C852C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C80);
  }

  return result;
}

unint64_t sub_20DF9458C()
{
  result = qword_27C852C88;
  if (!qword_27C852C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C88);
  }

  return result;
}

unint64_t sub_20DF945E4()
{
  result = qword_27C852C90;
  if (!qword_27C852C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C90);
  }

  return result;
}

uint64_t sub_20DF94638()
{
  v0 = sub_20E009844();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20DF94684()
{
  v0 = sub_20E009844();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20DF946D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250666669726174 && a2 == 0xEF6449656C69666FLL;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C666669726174 && a2 == 0xEB000000006C6562 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954666669726174 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

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

unint64_t sub_20DF947FC()
{
  result = qword_27C852C98;
  if (!qword_27C852C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852C98);
  }

  return result;
}

uint64_t sub_20DF9486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000020E015810 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20E009984();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20DF94900(uint64_t a1)
{
  v2 = sub_20DF9623C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF9493C(uint64_t a1)
{
  v2 = sub_20DF9623C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF94978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CA8, &qword_20E00E8F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF9623C();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_20E009894();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_20DF94AF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CB8, &qword_20E00E8F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF9623C();
  sub_20E009A84();
  sub_20E009914();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20DF94C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v10 = sub_20E008714();
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v12 = *(v11 + 64) + 15;
  v7[14] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[15] = v13;
  *v13 = v7;
  v13[1] = sub_20DF94D68;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DF94D68()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF94E64, 0, 0);
}

uint64_t sub_20DF94E64()
{
  KeyPath = swift_getKeyPath();
  v0[16] = KeyPath;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_20DF94F24;
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  return sub_20DFBA948(v3, v8, v9, v6, v7, v4, v5, KeyPath);
}

uint64_t sub_20DF94F24()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DF9503C, 0, 0);
}

uint64_t sub_20DF9503C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862758);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for Auth Token Refresh", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[14];
    v10 = v0[11];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    sub_20DFDF8DC(0xD00000000000003FLL, 0x800000020E015F90, 0xD00000000000001ELL, 0x800000020E015FD0);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_20DF952CC;
    v15 = v0[14];
    v16 = v0[10];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DF952CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 144);
  v9 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = v3;

  if (v3)
  {
    v7 = sub_20DF96074;
  }

  else
  {
    v7 = sub_20DF953E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DF953E4()
{
  v1 = *(v0 + 168);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C862758);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process ServiceLocation Subscription Response.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v21 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v17, v15);
    goto LABEL_58;
  }

  v3 = v2;
  v4 = *(v0 + 112);
  v5 = *(v0 + 168);
  sub_20DFDFFF8(0xD000000000000024, 0x800000020E015FF0, [v3 statusCode], &unk_28252DD18);
  v6 = [v3 statusCode];
  if (v6 > 403)
  {
    if (v6 > 428)
    {
      if (v6 == 429)
      {
        if (qword_27C8520A8 != -1)
        {
          swift_once();
        }

        v65 = sub_20E009094();
        __swift_project_value_buffer(v65, qword_27C862758);
        v8 = sub_20E009074();
        v66 = sub_20E009544();
        if (os_log_type_enabled(v8, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_20DF62000, v8, v66, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v67, 2u);
          MEMORY[0x20F32B3A0](v67, -1, -1);
        }

        goto LABEL_57;
      }

      if (v6 == 500)
      {
        if (qword_27C8520A8 != -1)
        {
          swift_once();
        }

        v25 = sub_20E009094();
        __swift_project_value_buffer(v25, qword_27C862758);
        v26 = sub_20E009074();
        v27 = sub_20E009544();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_20DF62000, v26, v27, "Internal Server Error", v28, 2u);
          MEMORY[0x20F32B3A0](v28, -1, -1);
        }

        v30 = *(v0 + 160);
        v29 = *(v0 + 168);
        v31 = *(v0 + 152);
        v32 = *(v0 + 104);
        v88 = *(v0 + 96);
        v90 = *(v0 + 112);

        type metadata accessor for NetworkError();
        sub_20DF960FC();
        swift_allocError();
        *v33 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v31, v30);

        (*(v32 + 8))(v90, v88);
        goto LABEL_59;
      }
    }

    else
    {
      if (v6 == 404)
      {
        if (qword_27C8520A8 != -1)
        {
          swift_once();
        }

        v62 = sub_20E009094();
        __swift_project_value_buffer(v62, qword_27C862758);
        v8 = sub_20E009074();
        v63 = sub_20E009544();
        if (os_log_type_enabled(v8, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_20DF62000, v8, v63, "Subscription Not Found! Proceed to user Off-boarding Actions.", v64, 2u);
          MEMORY[0x20F32B3A0](v64, -1, -1);
        }

        goto LABEL_57;
      }

      if (v6 == 412)
      {
        if (qword_27C8520A8 != -1)
        {
          swift_once();
        }

        v7 = sub_20E009094();
        __swift_project_value_buffer(v7, qword_27C862758);
        v8 = sub_20E009074();
        v9 = sub_20E009544();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_20DF62000, v8, v9, "Access Token expired or invalid. Retry after refreshing access token", v10, 2u);
          MEMORY[0x20F32B3A0](v10, -1, -1);
        }

LABEL_57:
        v71 = *(v0 + 160);
        v16 = *(v0 + 168);
        v72 = *(v0 + 152);
        v19 = *(v0 + 104);
        v18 = *(v0 + 112);
        v20 = *(v0 + 96);

        type metadata accessor for NetworkError();
        sub_20DF960FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v72, v71);

LABEL_58:
        (*(v19 + 8))(v18, v20);
LABEL_59:
        v73 = *(v0 + 112);
        v74 = *(v0 + 88);

        v75 = *(v0 + 8);

        return v75();
      }
    }

LABEL_39:
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 168);
    v55 = sub_20E009094();
    __swift_project_value_buffer(v55, qword_27C862758);
    v56 = v54;
    v57 = sub_20E009074();
    v58 = sub_20E009544();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 168);
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v57, v58, "Request failed : Status Code %ld", v60, 0xCu);
      MEMORY[0x20F32B3A0](v60, -1, -1);
      v61 = *(v0 + 168);
    }

    else
    {

      v61 = *(v0 + 168);
      v57 = v61;
    }

    v78 = *(v0 + 152);
    v77 = *(v0 + 160);
    v79 = *(v0 + 104);
    v89 = *(v0 + 96);
    v91 = *(v0 + 112);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v80 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v78, v77);

    (*(v79 + 8))(v91, v89);
    goto LABEL_59;
  }

  if (v6 != 201)
  {
    if (v6 == 400)
    {
      if (qword_27C8520A8 != -1)
      {
        swift_once();
      }

      v68 = sub_20E009094();
      __swift_project_value_buffer(v68, qword_27C862758);
      v8 = sub_20E009074();
      v69 = sub_20E009544();
      if (os_log_type_enabled(v8, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_20DF62000, v8, v69, "BAD REQUEST | Check request", v70, 2u);
        MEMORY[0x20F32B3A0](v70, -1, -1);
      }

      goto LABEL_57;
    }

    if (v6 == 401)
    {
      if (qword_27C8520A8 != -1)
      {
        swift_once();
      }

      v22 = sub_20E009094();
      __swift_project_value_buffer(v22, qword_27C862758);
      v8 = sub_20E009074();
      v23 = sub_20E009544();
      if (os_log_type_enabled(v8, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_20DF62000, v8, v23, "Request Unauthorized or Access Token Expired.", v24, 2u);
        MEMORY[0x20F32B3A0](v24, -1, -1);
      }

      goto LABEL_57;
    }

    goto LABEL_39;
  }

  if (qword_27C8520A8 != -1)
  {
    swift_once();
  }

  v34 = sub_20E009094();
  __swift_project_value_buffer(v34, qword_27C862758);
  v35 = sub_20E009074();
  v36 = sub_20E009554();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20DF62000, v35, v36, "Auth Token refresh Response received", v37, 2u);
    MEMORY[0x20F32B3A0](v37, -1, -1);
  }

  v38 = *(v0 + 176);
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);

  v41 = sub_20E008744();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DF96154();
  sub_20E008724();
  if (v38)
  {
    v44 = v38;

    v45 = sub_20E009074();
    v46 = sub_20E009544();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20DF62000, v45, v46, "Error while decoding response from server", v47, 2u);
      MEMORY[0x20F32B3A0](v47, -1, -1);
    }

    v48 = *(v0 + 160);
    v49 = *(v0 + 168);
    v50 = *(v0 + 152);
    v52 = *(v0 + 104);
    v51 = *(v0 + 112);
    v53 = *(v0 + 96);

    sub_20DFFE0B0(v44);
    swift_willThrow();
    sub_20DF67FFC(v50, v48);

    (*(v52 + 8))(v51, v53);
    goto LABEL_59;
  }

  v81 = *(v0 + 160);
  v82 = *(v0 + 168);
  v83 = *(v0 + 152);
  v84 = *(v0 + 88);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  sub_20DF67FFC(v83, v81);
  v86 = *(v0 + 16);
  v85 = *(v0 + 24);

  v87 = *(v0 + 8);

  return v87(v86, v85);
}

uint64_t sub_20DF96074()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

unint64_t sub_20DF960FC()
{
  result = qword_281123200;
  if (!qword_281123200)
  {
    type metadata accessor for NetworkError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123200);
  }

  return result;
}

unint64_t sub_20DF96154()
{
  result = qword_27C852CA0;
  if (!qword_27C852CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852CA0);
  }

  return result;
}

uint64_t sub_20DF961A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20DF961F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_20DF9623C()
{
  result = qword_27C852CB0;
  if (!qword_27C852CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852CB0);
  }

  return result;
}

unint64_t sub_20DF962A4()
{
  result = qword_27C852CC0;
  if (!qword_27C852CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852CC0);
  }

  return result;
}

unint64_t sub_20DF962FC()
{
  result = qword_27C852CC8;
  if (!qword_27C852CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852CC8);
  }

  return result;
}

unint64_t sub_20DF96354()
{
  result = qword_27C852CD0;
  if (!qword_27C852CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852CD0);
  }

  return result;
}

uint64_t sub_20DF963A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20DF6BD98;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_20DF964DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CD8, &qword_20E00EA70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF9657C, 0, 0);
}

uint64_t sub_20DF9657C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_20DF9692C(v0[3], v1);
  Request = type metadata accessor for GetRequest(0);
  (*(*(Request - 8) + 56))(v1, 0, 1, Request);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE0, &qword_20E00EA78));
  v5 = sub_20E008E44();
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v5;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for RecordsResponse(0);
  *v9 = v0;
  v9[1] = sub_20DF96714;
  v11 = v0[2];

  return MEMORY[0x282200830](v11, &unk_20E00EA88, v6, sub_20DF96FC4, v7, 0, 0, v10);
}

uint64_t sub_20DF96714()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_20DF968A4;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_20DF96838;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF96838()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF968A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

uint64_t sub_20DF9692C(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for GetRequest(0);
  (*(*(Request - 8) + 16))(a2, a1, Request);
  return a2;
}

uint64_t sub_20DF96990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DF969B4, 0, 0);
}

uint64_t sub_20DF969B4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for RecordsResponse(0);
  *v3 = v0;
  v3[1] = sub_20DF96AA4;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28746567, 0xE700000000000000, sub_20DF96FD4, v1, v4);
}

uint64_t sub_20DF96AA4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DF96BE0, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_20DF96BE0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_20DF96C44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF6BA84;

  return sub_20DF96990(a1, v5, v4);
}

id sub_20DF96CF0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE8, &qword_20E00EA90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_20E008E34();
  result = [a2 configuration];
  if (result)
  {
    v12 = result;
    [result setPreferAnonymousRequests_];

    return sub_20E009514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DF96E78(uint64_t a1)
{
  v2 = type metadata accessor for RecordsResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CF0, &qword_20E00EA98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_20DF97058(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE8, &qword_20E00EA90);
    return sub_20E009494();
  }

  else
  {
    sub_20DF970C8(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE8, &qword_20E00EA90);
    return sub_20E0094A4();
  }
}

uint64_t sub_20DF96FDC(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE8, &qword_20E00EA90) - 8) + 80);

  return sub_20DF96E78(a1);
}

uint64_t sub_20DF97058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CF0, &qword_20E00EA98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF970C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordsResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF9712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[19] = v9;
  v10 = *(v9 - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v13 = sub_20E008AF4();
  v7[26] = v13;
  v14 = *(v13 - 8);
  v7[27] = v14;
  v15 = *(v14 + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DF97320, 0, 0);
}

uint64_t sub_20DF97320()
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  KeyPath = swift_getKeyPath();
  *(v0 + 240) = KeyPath;
  sub_20DF85FEC(KeyPath, 0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 200), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C862710);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Request URL for Service Location API not found", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 88);

    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_16:
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v56 = *(v0 + 192);
    v55 = *(v0 + 200);
    v58 = *(v0 + 176);
    v57 = *(v0 + 184);
    v59 = *(v0 + 168);
    v60 = *(v0 + 144);

    v61 = *(v0 + 8);
    v62 = *MEMORY[0x277D85DE8];

    return v61();
  }

  v63 = KeyPath;
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  v64 = *(v0 + 192);
  v65 = *(v0 + 112);
  v66 = *(v0 + 120);
  v67 = *(v0 + 96);
  v68 = *(v0 + 104);
  (*(v15 + 32))(v12, *(v0 + 200), v14);
  (*(v15 + 16))(v13, v12, v14);
  sub_20E0086B4();
  sub_20DFDF668(v17);
  v22 = *(v19 + 8);
  *(v0 + 248) = v22;
  *(v0 + 256) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v20);
  v23 = *(v19 + 16);
  v23(v16, v17, v20);
  sub_20E0086D4();
  v22(v17, v20);
  v23(v64, v16, v20);
  sub_20E0086D4();
  v24 = v16;
  v25 = v22;
  v22(v24, v20);
  sub_20E008694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000020E0147A0;
  *(inited + 48) = v67;
  *(inited + 56) = v68;

  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  v27 = objc_opt_self();
  v28 = sub_20E009154();

  *(v0 + 80) = 0;
  v29 = [v27 dataWithJSONObject:v28 options:0 error:v0 + 80];

  v30 = *(v0 + 80);
  if (!v29)
  {
    v40 = v30;
    v41 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v69 = v25;
    v42 = sub_20E009094();
    __swift_project_value_buffer(v42, qword_27C862710);
    v43 = sub_20E009074();
    v44 = sub_20E009544();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20DF62000, v43, v44, "Unable to encode Token request body", v45, 2u);
      MEMORY[0x20F32B3A0](v45, -1, -1);
    }

    v46 = *(v0 + 232);
    v47 = *(v0 + 208);
    v48 = *(v0 + 216);
    v49 = *(v0 + 192);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);
    v52 = *(v0 + 88);

    v69(v49, v50);
    (*(v48 + 8))(v46, v47);
    (*(v51 + 56))(v52, 1, 1, v50);
    goto LABEL_16;
  }

  v31 = *(v0 + 192);
  v32 = sub_20E008B84();
  v34 = v33;

  *(v0 + 264) = v32;
  *(v0 + 272) = v34;
  sub_20DF67FA8(v32, v34);
  sub_20E0086F4();
  v35 = swift_task_alloc();
  *(v0 + 280) = v35;
  *v35 = v0;
  v35[1] = sub_20DF979F8;
  v36 = *(v0 + 192);
  v37 = *(v0 + 144);
  v38 = *MEMORY[0x277D85DE8];

  return sub_20DF83234(v37, v36, v63);
}

uint64_t sub_20DF979F8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 280);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_20DF97E78;
  }

  else
  {
    v3 = sub_20DF97B3C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF97B3C()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862710);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign subscription creation request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[33];
    v8 = v0[34];
    v10 = v0[31];
    v11 = v0[32];
    v12 = v0[30];
    v13 = v0[27];
    v35 = v0[26];
    v37 = v0[29];
    v14 = v0[24];
    v16 = v0[19];
    v15 = v0[20];
    v39 = v0[11];

    sub_20DF67FFC(v9, v8);
    v10(v14, v16);
    (*(v13 + 8))(v37, v35);
    (*(v15 + 56))(v39, 1, 1, v16);
  }

  else
  {
    v18 = v0[33];
    v17 = v0[34];
    v34 = v0[31];
    v36 = v0[32];
    v19 = v0[30];
    v20 = v0[27];
    v38 = v0[26];
    v40 = v0[29];
    v21 = v0[24];
    v22 = v0[11];
    (*(v2 + 32))(v22, v3, v1);
    sub_20E008704();

    sub_20DF67FFC(v18, v17);
    v34(v21, v1);
    (*(v20 + 8))(v40, v38);
    (*(v2 + 56))(v22, 0, 1, v1);
  }

  v24 = v0[28];
  v23 = v0[29];
  v26 = v0[24];
  v25 = v0[25];
  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[21];
  v30 = v0[18];

  v31 = v0[1];
  v32 = *MEMORY[0x277D85DE8];

  return v31();
}

uint64_t sub_20DF97E78()
{
  v28 = *MEMORY[0x277D85DE8];
  (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
  sub_20DF66E28(v0[18], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862710);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign subscription creation request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];
  v10 = v0[27];
  v25 = v0[26];
  v26 = v0[29];
  v11 = v0[24];
  v13 = v0[19];
  v12 = v0[20];
  v27 = v0[11];

  sub_20DF67FFC(v6, v5);
  v7(v11, v13);
  (*(v10 + 8))(v26, v25);
  (*(v12 + 56))(v27, 1, 1, v13);
  v15 = v0[28];
  v14 = v0[29];
  v17 = v0[24];
  v16 = v0[25];
  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[21];
  v21 = v0[18];

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_20DF980CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[18] = v9;
  v10 = *(v9 - 8);
  v7[19] = v10;
  v11 = *(v10 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v13 = sub_20E008AF4();
  v7[25] = v13;
  v14 = *(v13 - 8);
  v7[26] = v14;
  v15 = *(v14 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF98294, 0, 0);
}

uint64_t sub_20DF98294()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[11];
  v4 = v0[12];
  KeyPath = swift_getKeyPath();
  v0[29] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  strcpy((inited + 32), "subscriptionId");
  *(inited + 47) = -18;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v8 = sub_20DF74E1C(inited);
  v0[30] = v8;
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  sub_20DF85FEC(KeyPath, v8);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(v0[24], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862710);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Request URL for Service Location API not found", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = v0[27];
    v14 = v0[28];
    v16 = v0[23];
    v15 = v0[24];
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];
    v20 = v0[17];
    (*(v0[19] + 56))(v0[10], 1, 1, v0[18]);

    v21 = v0[1];

    return v21();
  }

  else
  {
    v24 = v0[27];
    v23 = v0[28];
    v42 = KeyPath;
    v26 = v0[25];
    v25 = v0[26];
    v28 = v0[21];
    v27 = v0[22];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];
    v41 = v0[16];
    v39 = v0[23];
    v40 = v0[15];
    v37 = v0[13];
    v38 = v0[14];
    (*(v25 + 32))(v23, v0[24], v26);
    (*(v25 + 16))(v24, v23, v26);
    sub_20E0086B4();
    sub_20DFDF668(v28);
    v32 = *(v30 + 8);
    v0[31] = v32;
    v0[32] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v29, v31);
    v33 = *(v30 + 16);
    v33(v27, v28, v31);
    sub_20E0086D4();
    v32(v28, v31);
    v33(v39, v27, v31);
    sub_20E0086D4();
    v32(v27, v31);
    sub_20E008694();
    v34 = swift_task_alloc();
    v0[33] = v34;
    *v34 = v0;
    v34[1] = sub_20DF98744;
    v35 = v0[23];
    v36 = v0[17];

    return sub_20DF83234(v36, v35, v42);
  }
}

uint64_t sub_20DF98744()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_20DF98B40;
  }

  else
  {
    v3 = sub_20DF9885C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF9885C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign fetch subscription request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[31];
    v8 = v0[32];
    v10 = v0[29];
    v11 = v0[30];
    v12 = v0[28];
    v13 = v0[25];
    v14 = v0[26];
    v15 = v0[23];
    v16 = v0[18];

    v9(v15, v16);
    (*(v14 + 8))(v12, v13);
    v17 = 1;
  }

  else
  {
    v19 = v0[31];
    v18 = v0[32];
    v21 = v0[29];
    v20 = v0[30];
    v35 = v0[28];
    v22 = v0[26];
    v34 = v0[25];
    v23 = v0[23];
    (*(v2 + 32))(v0[10], v3, v1);
    sub_20E008704();

    v19(v23, v1);
    (*(v22 + 8))(v35, v34);
    v17 = 0;
  }

  v24 = v0[27];
  v25 = v0[28];
  v27 = v0[23];
  v26 = v0[24];
  v29 = v0[21];
  v28 = v0[22];
  v30 = v0[20];
  v31 = v0[17];
  (*(v0[19] + 56))(v0[10], v17, 1, v0[18]);

  v32 = v0[1];

  return v32();
}

uint64_t sub_20DF98B40()
{
  (*(v0[19] + 56))(v0[17], 1, 1, v0[18]);
  sub_20DF66E28(v0[17], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign fetch subscription request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[18];

  v6(v12, v13);
  (*(v11 + 8))(v9, v10);
  v14 = v0[27];
  v15 = v0[28];
  v17 = v0[23];
  v16 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  (*(v0[19] + 56))(v0[10], 1, 1, v0[18]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_20DF98D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[18] = v9;
  v10 = *(v9 - 8);
  v7[19] = v10;
  v11 = *(v10 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v13 = sub_20E008AF4();
  v7[25] = v13;
  v14 = *(v13 - 8);
  v7[26] = v14;
  v15 = *(v14 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF98F24, 0, 0);
}

uint64_t sub_20DF98F24()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[11];
  v4 = v0[12];
  KeyPath = swift_getKeyPath();
  v0[29] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  strcpy((inited + 32), "subscriptionId");
  *(inited + 47) = -18;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v8 = sub_20DF74E1C(inited);
  v0[30] = v8;
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  sub_20DF85FEC(KeyPath, v8);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(v0[24], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862710);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Request URL for Service Location API not found", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = v0[27];
    v14 = v0[28];
    v16 = v0[23];
    v15 = v0[24];
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];
    v20 = v0[17];
    (*(v0[19] + 56))(v0[10], 1, 1, v0[18]);

    v21 = v0[1];

    return v21();
  }

  else
  {
    v24 = v0[27];
    v23 = v0[28];
    v42 = KeyPath;
    v26 = v0[25];
    v25 = v0[26];
    v28 = v0[21];
    v27 = v0[22];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];
    v41 = v0[16];
    v39 = v0[23];
    v40 = v0[15];
    v37 = v0[13];
    v38 = v0[14];
    (*(v25 + 32))(v23, v0[24], v26);
    (*(v25 + 16))(v24, v23, v26);
    sub_20E0086B4();
    sub_20DFDF668(v28);
    v32 = *(v30 + 8);
    v0[31] = v32;
    v0[32] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v29, v31);
    v33 = *(v30 + 16);
    v33(v27, v28, v31);
    sub_20E0086D4();
    v32(v28, v31);
    v33(v39, v27, v31);
    sub_20E0086D4();
    v32(v27, v31);
    sub_20E008694();
    v34 = swift_task_alloc();
    v0[33] = v34;
    *v34 = v0;
    v34[1] = sub_20DF993DC;
    v35 = v0[23];
    v36 = v0[17];

    return sub_20DF83234(v36, v35, v42);
  }
}

uint64_t sub_20DF993DC()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_20DF99790;
  }

  else
  {
    v3 = sub_20DF994F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF994F4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852090 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862710);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign revoke subscription request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[31];
    v8 = v0[32];
    v10 = v0[29];
    v11 = v0[30];
    v12 = v0[28];
    v13 = v0[25];
    v14 = v0[26];
    v15 = v0[23];
    v16 = v0[18];

    v9(v15, v16);
    (*(v14 + 8))(v12, v13);
    v17 = 1;
  }

  else
  {
    v18 = v0[31];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];
    v23 = v0[25];
    v22 = v0[26];
    v24 = v0[23];
    v35 = v0[28];
    v36 = v0[10];

    v18(v24, v1);
    (*(v22 + 8))(v35, v23);
    (*(v2 + 32))(v36, v3, v1);
    v17 = 0;
  }

  v25 = v0[27];
  v26 = v0[28];
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[21];
  v29 = v0[22];
  v31 = v0[20];
  v32 = v0[17];
  (*(v0[19] + 56))(v0[10], v17, 1, v0[18]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_20DF99790()
{
  (*(v0[19] + 56))(v0[17], 1, 1, v0[18]);
  sub_20DF66E28(v0[17], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852090 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862710);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign revoke subscription request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[18];

  v6(v12, v13);
  (*(v11 + 8))(v9, v10);
  v14 = v0[27];
  v15 = v0[28];
  v17 = v0[23];
  v16 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  (*(v0[19] + 56))(v0[10], 1, 1, v0[18]);

  v22 = v0[1];

  return v22();
}

void *sub_20DF999AC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_20DF999CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_20DF999FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v16;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v10 = sub_20E008714();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[23] = v13;
  *v13 = v8;
  v13[1] = sub_20DF99B3C;

  return sub_20DF9D6CC(v16);
}

uint64_t sub_20DF99B3C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF99C38, 0, 0);
}

uint64_t sub_20DF99C38()
{
  v30 = v0;
  v1 = v0[12];
  v2 = v0[13];

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  JWToken.init(jwt:)(&v29, v3);
  if (v4)
  {

LABEL_4:
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_27C862728);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Authorization Token Expired. Refresh token and retry", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v10 = v0[22];
    v11 = v0[19];

    v12 = v0[1];

    return v12(0);
  }

  v5 = JWToken.expired.getter();

  if (v5)
  {
    goto LABEL_4;
  }

  v15 = v0[10];
  v14 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  strcpy((inited + 32), "subscriptionId");
  *(inited + 47) = -18;
  *(inited + 48) = v15;
  *(inited + 56) = v14;

  v17 = sub_20DF74E1C(inited);
  v0[24] = v17;
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  KeyPath = swift_getKeyPath();
  v0[25] = KeyPath;
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_20DF99F74;
  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[15];
  v25 = v0[12];
  v26 = v0[13];
  v27 = v0[10];
  v28 = v0[11];
  v33 = KeyPath;
  v34 = v17;
  v32 = v26;

  return sub_20DF83C68(v20, v27, v28, v23, v24, v21, v22, v25);
}

uint64_t sub_20DF99F74()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20DF9A0A8, 0, 0);
}

uint64_t sub_20DF9A0A8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862728);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for triggering data resend.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[22];
    v10 = v0[19];

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    sub_20DFDF8DC(0xD00000000000004ALL, 0x800000020E016040, 0xD000000000000026, 0x800000020E016090);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[27] = v14;
    *v14 = v0;
    v14[1] = sub_20DF9A348;
    v15 = v0[22];
    v16 = v0[18];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DF9A348(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 216);
  v11 = *v4;
  *(v7 + 224) = a3;
  *(v7 + 232) = v3;

  if (v3)
  {
    v9 = sub_20DF9AE54;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v9 = sub_20DF9A478;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DF9A478()
{
  v1 = *(v0 + 224);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C862728);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process Historical AMI Response.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 224);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_47;
  }

  v3 = v2;
  v4 = *(v0 + 176);
  v5 = *(v0 + 224);
  sub_20DFDFFF8(0xD000000000000010, 0x800000020E0160C0, [v3 statusCode], &unk_28252DD40);
  v6 = [v3 statusCode];
  if (v6 > 403)
  {
    switch(v6)
    {
      case 404:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v35 = sub_20E009094();
        __swift_project_value_buffer(v35, qword_27C862728);
        v8 = sub_20E009074();
        v36 = sub_20E009544();
        if (os_log_type_enabled(v8, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_20DF62000, v8, v36, "Subscription not found. - Should Off-board user!", v37, 2u);
          MEMORY[0x20F32B3A0](v37, -1, -1);
        }

        goto LABEL_46;
      case 429:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v49 = sub_20E009094();
        __swift_project_value_buffer(v49, qword_27C862728);
        v8 = sub_20E009074();
        v50 = sub_20E009544();
        if (os_log_type_enabled(v8, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_20DF62000, v8, v50, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v51, 2u);
          MEMORY[0x20F32B3A0](v51, -1, -1);
        }

        goto LABEL_46;
      case 500:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v20 = sub_20E009094();
        __swift_project_value_buffer(v20, qword_27C862728);
        v21 = sub_20E009074();
        v22 = sub_20E009544();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20DF62000, v21, v22, "Internal Server Error", v23, 2u);
          MEMORY[0x20F32B3A0](v23, -1, -1);
        }

        v24 = *(v0 + 224);
        v26 = *(v0 + 168);
        v25 = *(v0 + 176);
        v27 = *(v0 + 160);

        type metadata accessor for NetworkError();
        sub_20DF960FC();
        swift_allocError();
        *v28 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v26 + 8))(v25, v27);
        goto LABEL_48;
    }

    goto LABEL_33;
  }

  if (v6 != 200)
  {
    if (v6 == 400)
    {
      if (qword_27C852098 != -1)
      {
        swift_once();
      }

      v46 = sub_20E009094();
      __swift_project_value_buffer(v46, qword_27C862728);
      v8 = sub_20E009074();
      v47 = sub_20E009544();
      if (os_log_type_enabled(v8, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_20DF62000, v8, v47, "BAD REQUEST | Check request", v48, 2u);
        MEMORY[0x20F32B3A0](v48, -1, -1);
      }

      goto LABEL_46;
    }

    if (v6 == 401)
    {
      if (qword_27C852098 != -1)
      {
        swift_once();
      }

      v7 = sub_20E009094();
      __swift_project_value_buffer(v7, qword_27C862728);
      v8 = sub_20E009074();
      v9 = sub_20E009544();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20DF62000, v8, v9, "Request Unauthorized or Access Token Expired.", v10, 2u);
        MEMORY[0x20F32B3A0](v10, -1, -1);
      }

LABEL_46:
      v15 = *(v0 + 224);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 160);

      type metadata accessor for NetworkError();
      sub_20DF960FC();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_47:
      (*(v17 + 8))(v16, v18);
LABEL_48:
      v52 = *(v0 + 176);
      v53 = *(v0 + 152);

      v54 = *(v0 + 8);
      v55 = 0;
      goto LABEL_49;
    }

LABEL_33:
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 224);
    v39 = sub_20E009094();
    __swift_project_value_buffer(v39, qword_27C862728);
    v40 = v38;
    v41 = sub_20E009074();
    v42 = sub_20E009544();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 224);
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v41, v42, "Request failed : Status Code %ld", v44, 0xCu);
      MEMORY[0x20F32B3A0](v44, -1, -1);
      v45 = *(v0 + 224);
    }

    else
    {

      v45 = *(v0 + 224);
      v41 = v45;
    }

    v62 = *(v0 + 168);
    v61 = *(v0 + 176);
    v63 = *(v0 + 160);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v64 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v62 + 8))(v61, v63);
    goto LABEL_48;
  }

  if (qword_27C852098 != -1)
  {
    swift_once();
  }

  v29 = sub_20E009094();
  __swift_project_value_buffer(v29, qword_27C862728);
  v30 = sub_20E009074();
  v31 = sub_20E009554();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20DF62000, v30, v31, "Data resend triggered successfully.", v32, 2u);
    MEMORY[0x20F32B3A0](v32, -1, -1);
    v33 = *(v0 + 224);
    v34 = v33;
  }

  else
  {
    v33 = *(v0 + 224);
    v34 = v30;
    v30 = v33;
  }

  v58 = *(v0 + 168);
  v57 = *(v0 + 176);
  v60 = *(v0 + 152);
  v59 = *(v0 + 160);

  (*(v58 + 8))(v57, v59);

  v54 = *(v0 + 8);
  v55 = 1;
LABEL_49:

  return v54(v55);
}

uint64_t sub_20DF9AE54()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];

  v4 = v0[1];

  return v4(0);
}

uint64_t static UtilityServices.internalFrameworkConfiguration(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DF6BF20;

  return sub_20DF9C0A0(a1);
}

uint64_t sub_20DF9B10C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_20DF6C250;

  return sub_20DF9C0A0(v4);
}

uint64_t static UtilityServices.fetchPrivateAccessToken(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DF9B274;

  return sub_20DFC1D5C(a1, 0);
}

uint64_t sub_20DF9B274(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_20DF9B508(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_20E009424();
  }

  v2[3] = a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DF9B5CC;

  return sub_20DFC1D5C(a1, 0);
}

uint64_t sub_20DF9B5CC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *v1;

  v7 = *(v3 + 24);

  if (v2)
  {
    v8 = sub_20E008A24();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v8 = sub_20E0091C4();

    v10 = v8;
    v9 = 0;
  }

  v11 = *(v4 + 16);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t static UtilityServices.clearServiceConfigCache()()
{
  v0 = sub_20DF9CAE0();
  v2 = v1;
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CF8, &qword_20E00EB58);
  v4[0] = MEMORY[0x277D84F90];
  sub_20DF9C678(v0, v2, v4);

  return sub_20DF66E28(v4, &qword_27C8521F0, &unk_20E00EC00);
}

uint64_t sub_20DF9B8DC()
{
  if (qword_27C852000 != -1)
  {
    swift_once();
  }

  v1 = qword_27C862620;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_20DF9B9A4;

  return sub_20DF90224(v1);
}

uint64_t sub_20DF9B9A4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_20DF9BC14(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_20DF9BC7C, 0, 0);
}

uint64_t sub_20DF9BC7C()
{
  if (qword_27C852000 != -1)
  {
    swift_once();
  }

  v1 = qword_27C862620;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_20DF9BD44;

  return sub_20DF90224(v1);
}

uint64_t sub_20DF9BD44(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_20E0091C4();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 16);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t static UtilityServices.userDSID()()
{
  if (qword_27C852000 != -1)
  {
    swift_once();
  }

  v1 = qword_27C862620;

  return sub_20DF900EC(v1);
}

uint64_t static UtilityServices.environment()()
{
  v0 = sub_20DFE7E38();
  v1 = 0x6E7265746E496171;
  v2 = 1953654115;
  if (v0 != 2)
  {
    v2 = 1685025392;
  }

  if (v0)
  {
    v1 = 7759204;
  }

  if (v0 <= 1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DF9C0A0(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0) - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_20DF9C16C;

  return sub_20DF9D6CC(a1);
}

uint64_t sub_20DF9C16C(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20DF9C26C, 0, 0);
}

uint64_t sub_20DF9C26C()
{
  if (*(v0 + 32) != 1)
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_2811249E8);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Error while looking up configuration!!!", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 16);
  sub_20DF9EE34(v1);
  v2 = type metadata accessor for UtilityServicesConfigurationsModel();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 16);
  if (v3 == 1)
  {
    sub_20DF66E28(*(v0 + 16), &qword_27C852A60, &unk_20E00EBE0);
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = *(v0 + 16);
  v9 = sub_20DF9F184();
  sub_20DF85E5C(v4);
LABEL_11:
  v11 = *(v0 + 16);

  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_20DF9C424()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF6BA84;

  return sub_20DF9BC14(v2);
}

uint64_t sub_20DF9C4D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20DF6BD98;

  return sub_20DF9B508(v2, v3);
}

uint64_t objectdestroy_16Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20DF9C5C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20DF6BD98;

  return sub_20DF9B10C(v2, v3);
}

void sub_20DF9C678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20E0091C4();
  sub_20DF697AC(a3, v14);
  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_20E009974();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_20E0091C4();
  CFPreferencesSetAppValue(v4, v11, v12);
  swift_unknownObjectRelease();

  v13 = sub_20E0091C4();
  CFPreferencesAppSynchronize(v13);
}

uint64_t sub_20DF9C80C()
{
  result = os_variant_has_internal_diagnostics();
  byte_281124A78 = result;
  return result;
}

uint64_t sub_20DF9C834()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = sub_20DF9C898(v0);
    v0[2] = v1;
    v0[3] = v3;
  }

  return v1;
}

uint64_t sub_20DF9C898(uint64_t *a1)
{
  v8 = *a1;
  v9 = a1[1];

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v1 = sub_20DFE7E38();
  v2 = 0xEA00000000006C61;
  v3 = 0x6E7265746E496171;
  v4 = 1953654115;
  if (v1 != 2)
  {
    v4 = 1685025392;
  }

  if (v1)
  {
    v3 = 7759204;
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](v5, v6);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](0x45687361686F6567, 0xEB00000000676174);
  return v8;
}

uint64_t sub_20DF9C98C()
{
  if (v0[5])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = sub_20DF9C9F0(v0);
    v0[4] = v1;
    v0[5] = v3;
  }

  return v1;
}

uint64_t sub_20DF9C9F0(uint64_t *a1)
{
  v8 = *a1;
  v9 = a1[1];

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v1 = sub_20DFE7E38();
  v2 = 0xEA00000000006C61;
  v3 = 0x6E7265746E496171;
  v4 = 1953654115;
  if (v1 != 2)
  {
    v4 = 1685025392;
  }

  if (v1)
  {
    v3 = 7759204;
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](v5, v6);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](0xD000000000000011, 0x800000020E016200);
  return v8;
}

uint64_t sub_20DF9CAE0()
{
  sub_20E009714();
  v0 = sub_20DFE7E38();
  v1 = 0xEA00000000006C61;
  v2 = 0x6E7265746E496171;
  v3 = 1953654115;
  if (v0 != 2)
  {
    v3 = 1685025392;
  }

  if (v0)
  {
    v2 = 7759204;
    v1 = 0xE300000000000000;
  }

  if (v0 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v0 <= 1)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](v4, v5);

  MEMORY[0x20F32A4B0](0xD00000000000001CLL, 0x800000020E0161A0);
  return 0;
}

uint64_t sub_20DF9CBC0()
{
  v15 = *MEMORY[0x277D85DE8];
  if (qword_281123118 != -1)
  {
    swift_once();
  }

  if (byte_281124A78 == 1)
  {
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v0 = sub_20E009094();
    __swift_project_value_buffer(v0, qword_281124A48);
    v1 = sub_20E009074();
    v2 = sub_20E009554();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_20DF62000, v1, v2, "Checking for Utility Enablement Override.", v3, 2u);
      MEMORY[0x20F32B3A0](v3, -1, -1);
    }

    keyExistsAndHasValidFormat = 0;
    v4 = sub_20E0091C4();
    v5 = sub_20E0091C4();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, &keyExistsAndHasValidFormat);

    if (keyExistsAndHasValidFormat && AppBooleanValue)
    {
      v7 = sub_20E009074();
      v8 = sub_20E009554();
      if (!os_log_type_enabled(v7, v8))
      {
        v10 = 1;
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Utility Enablement Override detected. Returning true", v9, 2u);
      v10 = 1;
    }

    else
    {
      v7 = sub_20E009074();
      v11 = sub_20E009554();
      if (!os_log_type_enabled(v7, v11))
      {
        v10 = 0;
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v11, "Utility Enablement Override not detected. Returning false", v9, 2u);
      v10 = 0;
    }

    MEMORY[0x20F32B3A0](v9, -1, -1);
LABEL_18:

    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_20DF9CE68()
{
  v7 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  result = !v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DF9CF34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20DF9CFE0(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0) - 8) + 64) + 15;
  *(v1 + 16) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_20DF9D0AC;

  return sub_20DF9D6CC(a1);
}

uint64_t sub_20DF9D0AC(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20DF9D1AC, 0, 0);
}

uint64_t sub_20DF9D1AC()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    sub_20DF9EE34(v1);
    v2 = type metadata accessor for UtilityServicesConfigurationsModel();
    v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
    v4 = *(v0 + 16);
    if (v3 == 1)
    {
      sub_20DF66E28(*(v0 + 16), &qword_27C852A60, &unk_20E00EBE0);
    }

    else
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      v7 = *(v4 + 2);

      sub_20DF85E5C(v4);
      v8 = sub_20DF9F8BC(v5, v6, v7);

      if (v8)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v9 = sub_20E009094();
  __swift_project_value_buffer(v9, qword_2811249E8);
  v10 = sub_20E009074();
  v11 = sub_20E009544();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20DF62000, v10, v11, "Using default configuration values hardcoded in Framework.", v12, 2u);
    MEMORY[0x20F32B3A0](v12, -1, -1);
  }

  v8 = sub_20DF74F30(MEMORY[0x277D84F90]);
LABEL_10:
  v13 = *(v0 + 16);

  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_20DF9D3A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for UtilityServicesConfigurationsModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_2811249E8);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "    Returning regions from default config.\n    Ensure this invocation is from a client that needs this value during installation.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    if (qword_27C852010 != -1)
    {
      swift_once();
    }

    v13 = qword_27C862628;
  }

  else
  {
    sub_20DF85D48(v3, v8);
    if (sub_20DF9F3D4())
    {
      v14 = *(v8 + 1);

      v13 = sub_20DFA4460(v15);

      sub_20DF85E5C(v8);
    }

    else
    {
      if (qword_2811230D8 != -1)
      {
        swift_once();
      }

      v16 = sub_20E009094();
      __swift_project_value_buffer(v16, qword_2811249E8);
      v17 = sub_20E009074();
      v18 = sub_20E009544();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20DF62000, v17, v18, "All Utilities are disabled via config.", v19, 2u);
        MEMORY[0x20F32B3A0](v19, -1, -1);
      }

      sub_20DF85E5C(v8);
      return MEMORY[0x277D84FA0];
    }
  }

  return v13;
}

uint64_t sub_20DF9D6CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = sub_20E008714();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_20E008AF4();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF9D8C0, 0, 0);
}

uint64_t sub_20DF9D8C0()
{
  v56 = v0;
  v1 = sub_20DFA0088();
  if (v1)
  {
LABEL_10:
    v14 = v0[14];
    v13 = v0[15];
    v16 = v0[10];
    v15 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];

    v22 = v0[1];

    return v22(v1 & 1);
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  v0[16] = __swift_project_value_buffer(v2, qword_2811249E8);
  v3 = sub_20E009074();
  v4 = sub_20E009554();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Fetching new config.", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];

  v9 = sub_20DFE7E38();
  sub_20DFC4FE4(v9, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_20DF66E28(v0[11], &qword_27C8520D0, &qword_20E00AB70);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to create config update URL!!!", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[12];
  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[9];
  v31 = v0[6];
  v30 = v0[7];
  v32 = v0[5];
  (*(v27 + 32))(v24, v0[11], v26);
  (*(v27 + 16))(v25, v24, v26);
  sub_20E0086B4();
  sub_20DFDF668(v28);
  v33 = *(v30 + 8);
  v0[17] = v33;
  v0[18] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v29, v31);
  sub_20DF9EE34(v32);
  v34 = type metadata accessor for UtilityServicesConfigurationsModel();
  v35 = *(*(v34 - 8) + 48);
  v36 = v35(v32, 1, v34);
  v37 = v0[5];
  if (v36 != 1)
  {
    v38 = sub_20DFA0364();
    sub_20DF85E5C(v37);
    if ((v38 & 1) == 0)
    {
      goto LABEL_23;
    }

    v39 = v0[4];
    sub_20DF9EE34(v39);
    v40 = v35(v39, 1, v34);
    v37 = v0[4];
    if (v40 != 1)
    {
      v41 = (v37 + *(v34 + 24));
      v43 = *v41;
      v42 = v41[1];

      sub_20DF85E5C(v37);
      if (v42)
      {
        v44 = sub_20E009074();
        v45 = sub_20E009554();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_20DF62000, v44, v45, "Adding ETag header to config request.", v46, 2u);
          MEMORY[0x20F32B3A0](v46, -1, -1);
        }

        v47 = sub_20E009074();
        v48 = sub_20E009534();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v55 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_20DF74468(v43, v42, &v55);
          _os_log_impl(&dword_20DF62000, v47, v48, "ETag value: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x20F32B3A0](v50, -1, -1);
          MEMORY[0x20F32B3A0](v49, -1, -1);
        }

        v51 = v0[10];
        sub_20E0086D4();
      }

      goto LABEL_23;
    }
  }

  sub_20DF66E28(v37, &qword_27C852A60, &unk_20E00EBE0);
LABEL_23:
  v52 = swift_task_alloc();
  v0[19] = v52;
  *v52 = v0;
  v52[1] = sub_20DF9DE70;
  v53 = v0[10];
  v54 = v0[3];

  return sub_20DFA0478(v54, v53);
}

uint64_t sub_20DF9DE70()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF9DF6C, 0, 0);
}

uint64_t sub_20DF9DF6C()
{
  v46 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v45 = v8;
      *v7 = 136315138;
      v9 = sub_20DFE7E38();
      v10 = 0xEA00000000006C61;
      v11 = 0x6E7265746E496171;
      v12 = 1953654115;
      if (v9 != 2)
      {
        v12 = 1685025392;
      }

      if (v9)
      {
        v11 = 7759204;
        v10 = 0xE300000000000000;
      }

      if (v9 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      if (v9 <= 1)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      v41 = v0[17];
      v42 = v0[18];
      v15 = v0[13];
      v43 = v0[12];
      v44 = v0[15];
      v16 = v0[10];
      v17 = v0[6];
      v18 = sub_20DF74468(v13, v14, &v45);

      *(v7 + 4) = v18;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to add proper Auth Headers for current env %s!!!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F32B3A0](v8, -1, -1);
      MEMORY[0x20F32B3A0](v7, -1, -1);

      v41(v16, v17);
      (*(v15 + 8))(v44, v43);
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[15];
      v26 = v0[12];
      v27 = v0[13];
      v28 = v0[10];
      v29 = v0[6];

      v24(v28, v29);
      (*(v27 + 8))(v25, v26);
    }

    v31 = v0[14];
    v30 = v0[15];
    v33 = v0[10];
    v32 = v0[11];
    v35 = v0[8];
    v34 = v0[9];
    v37 = v0[4];
    v36 = v0[5];
    v38 = v0[3];

    v39 = v0[1];

    return v39(0);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    sub_20DFDF8DC(0xD000000000000016, 0x800000020E016220, 0xD000000000000029, 0x800000020E016240);
    v19 = *(MEMORY[0x277CC9D18] + 4);
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_20DF9E314;
    v21 = v0[8];
    v22 = v0[2];

    return MEMORY[0x28211ECF8](v21, 0);
  }
}

uint64_t sub_20DF9E314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 160);
  v9 = *v4;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = a3;
  v5[24] = v3;

  if (v3)
  {
    v7 = sub_20DF9EA94;
  }

  else
  {
    v7 = sub_20DF9E42C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DF9E42C()
{
  v1 = *(v0 + 184);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v19 = *(v0 + 128);
    v20 = sub_20E009074();
    v21 = sub_20E009544();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 176);
    v24 = *(v0 + 168);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v85 = *(v0 + 184);
    v89 = *(v0 + 96);
    v29 = *(v0 + 64);
    v77 = v29;
    v81 = *(v0 + 80);
    v30 = *(v0 + 48);
    if (v22)
    {
      v74 = *(v0 + 120);
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20DF62000, v20, v21, "Unable to process Config Response.", v31, 2u);
      MEMORY[0x20F32B3A0](v31, -1, -1);
      sub_20DF67FFC(v24, v23);

      v26(v77, v30);
      v26(v81, v30);
LABEL_17:
      (*(v28 + 8))(v74, v89);
      goto LABEL_24;
    }

    sub_20DF67FFC(v24, v23);

    v26(v77, v30);
    v26(v81, v30);
LABEL_21:
    (*(v28 + 8))(v27, v89);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = *(v0 + 64);
  v5 = *(v0 + 184);
  sub_20DFDFFF8(0xD00000000000001DLL, 0x800000020E016270, [v3 statusCode], &unk_28252D360);
  v6 = [v3 statusCode];
  if (v6 == 401)
  {
    v38 = *(v0 + 128);
    v39 = sub_20E009074();
    v40 = sub_20E009544();
    v41 = os_log_type_enabled(v39, v40);
    v43 = *(v0 + 176);
    v42 = *(v0 + 184);
    v44 = *(v0 + 168);
    v45 = *(v0 + 136);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v86 = *(v0 + 144);
    v89 = *(v0 + 96);
    v46 = *(v0 + 64);
    v78 = v46;
    v82 = *(v0 + 80);
    v47 = *(v0 + 48);
    if (v41)
    {
      v74 = *(v0 + 120);
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20DF62000, v39, v40, "Request Unauthorized!!!", v48, 2u);
      MEMORY[0x20F32B3A0](v48, -1, -1);
      sub_20DF67FFC(v44, v43);

      v45(v78, v47);
      v45(v82, v47);
      goto LABEL_17;
    }

    sub_20DF67FFC(v44, v43);

    v45(v78, v47);
    v45(v82, v47);
    goto LABEL_21;
  }

  if (v6 == 304)
  {
    v32 = *(v0 + 128);
    v33 = sub_20E009074();
    v34 = sub_20E009554();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20DF62000, v33, v34, "No change to saved config on disk. Continue using saved config.", v35, 2u);
      MEMORY[0x20F32B3A0](v35, -1, -1);
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    v15 = *(v0 + 136);
    v36 = *(v0 + 144);
    v16 = *(v0 + 104);
    v84 = *(v0 + 96);
    v88 = *(v0 + 120);
    v76 = *(v0 + 64);
    v80 = *(v0 + 80);
    v17 = *(v0 + 48);

    v18 = sub_20DF9FD04();
    goto LABEL_14;
  }

  if (v6 == 200)
  {
    v7 = *(v0 + 128);
    v8 = sub_20E009074();
    v9 = sub_20E009554();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Saving fetched config to disk", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 104);
    v84 = *(v0 + 96);
    v88 = *(v0 + 120);
    v76 = *(v0 + 64);
    v80 = *(v0 + 80);
    v17 = *(v0 + 48);

    v18 = sub_20DF9FAAC();
LABEL_14:
    v37 = v18;
    sub_20DF67FFC(v13, v11);

    v15(v76, v17);
    v15(v80, v17);
    (*(v16 + 8))(v88, v84);
    goto LABEL_25;
  }

  v49 = *(v0 + 128);
  v50 = *(v0 + 184);
  v51 = sub_20E009074();
  v52 = sub_20E009544();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 184);
  v55 = *(v0 + 136);
  v56 = *(v0 + 120);
  v57 = *(v0 + 104);
  v87 = *(v0 + 144);
  v90 = *(v0 + 96);
  v58 = *(v0 + 64);
  v79 = v58;
  v83 = *(v0 + 80);
  v59 = *(v0 + 48);
  if (v53)
  {
    v72 = *(v0 + 168);
    v73 = *(v0 + 176);
    v75 = *(v0 + 120);
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = [v3 statusCode];

    _os_log_impl(&dword_20DF62000, v51, v52, "Unhandled http response code %ld", v60, 0xCu);
    MEMORY[0x20F32B3A0](v60, -1, -1);
    sub_20DF67FFC(v72, v73);

    v55(v79, v59);
    v55(v83, v59);
    (*(v57 + 8))(v75, v90);
  }

  else
  {
    sub_20DF67FFC(*(v0 + 168), *(v0 + 176));

    v55(v79, v59);
    v55(v83, v59);
    (*(v57 + 8))(v56, v90);
  }

LABEL_24:
  v37 = 0;
LABEL_25:
  v62 = *(v0 + 112);
  v61 = *(v0 + 120);
  v64 = *(v0 + 80);
  v63 = *(v0 + 88);
  v66 = *(v0 + 64);
  v65 = *(v0 + 72);
  v68 = *(v0 + 32);
  v67 = *(v0 + 40);
  v69 = *(v0 + 24);

  v70 = *(v0 + 8);

  return v70(v37 & 1);
}

uint64_t sub_20DF9EA94()
{
  v53 = v0;
  v1 = v0[24];
  v2 = v0[16];
  v3 = v1;
  v4 = sub_20E009074();
  v5 = sub_20E009544();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20DF62000, v4, v5, "Error while trying to fetch Config from Server %@", v7, 0xCu);
    sub_20DF66E28(v8, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v8, -1, -1);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v11 = v0[16];

  v12 = sub_20E009074();
  v13 = sub_20E009544();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136315138;
    v16 = sub_20DFE7E38();
    v17 = 0xEA00000000006C61;
    v18 = 0x6E7265746E496171;
    v19 = 1953654115;
    if (v16 != 2)
    {
      v19 = 1685025392;
    }

    if (v16)
    {
      v18 = 7759204;
      v17 = 0xE300000000000000;
    }

    if (v16 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v16 <= 1)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = v0[17];
    v50 = v0[15];
    v23 = v0[13];
    v48 = v0[18];
    v49 = v0[12];
    v46 = v0[24];
    v47 = v0[10];
    v45 = v0[8];
    v24 = v0[6];
    v25 = sub_20DF74468(v20, v21, &v52);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_20DF62000, v12, v13, "Current Environment %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F32B3A0](v15, -1, -1);
    MEMORY[0x20F32B3A0](v14, -1, -1);

    v22(v45, v24);
    v22(v47, v24);
    (*(v23 + 8))(v50, v49);
  }

  else
  {
    v26 = v0[24];
    v28 = v0[17];
    v27 = v0[18];
    v51 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[10];
    v32 = v0[8];
    v33 = v0[6];

    v28(v32, v33);
    v28(v31, v33);
    (*(v29 + 8))(v51, v30);
  }

  v35 = v0[14];
  v34 = v0[15];
  v37 = v0[10];
  v36 = v0[11];
  v39 = v0[8];
  v38 = v0[9];
  v41 = v0[4];
  v40 = v0[5];
  v42 = v0[3];

  v43 = v0[1];

  return v43(0);
}

uint64_t sub_20DF9EE34@<X0>(uint64_t a1@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  sub_20DF9CAE0();
  v2 = sub_20E0091C4();

  v3 = sub_20E0091C4();
  v4 = CFPreferencesCopyAppValue(v2, v3);

  if (!v4 || (v26[0] = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:
    v24 = type metadata accessor for UtilityServicesConfigurationsModel();
    result = (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
    goto LABEL_11;
  }

  v5 = objc_opt_self();
  v6 = sub_20E009154();

  v26[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:v26];

  v8 = v26[0];
  if (!v7)
  {
    v13 = v8;
    v14 = sub_20E008A34();

    swift_willThrow();
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v15 = sub_20E009094();
    __swift_project_value_buffer(v15, qword_2811249E8);
    v16 = v14;
    v17 = sub_20E009074();
    v18 = sub_20E009544();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_20E0099E4();
      v23 = sub_20DF74468(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20DF62000, v17, v18, "Error decoding config from disk.%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F32B3A0](v20, -1, -1);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v9 = sub_20E008B84();
  v11 = v10;

  sub_20DF9F5F4(a1);
  result = sub_20DF67FFC(v9, v11);
LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DF9F184()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_20E008774();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_20E008764();
  type metadata accessor for UtilityServicesConfigurationsModel();
  sub_20DFA4CBC(&qword_2811232D8, type metadata accessor for UtilityServicesConfigurationsModel);
  v4 = sub_20E008754();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_20E008B64();
  *&v17 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:&v17];

  v10 = v17;
  if (v9)
  {
    sub_20E009654();
    sub_20DF67FFC(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v4, v6);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (*(&v18 + 1))
  {
    sub_20DF77A64(v15, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    if (swift_dynamicCast())
    {
      result = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DF9F394()
{
  v0 = sub_20DFA44F8(&unk_28252D3B8);
  result = sub_20DFA4660(&unk_28252D3D8);
  qword_27C862628 = v0;
  return result;
}

uint64_t sub_20DF9F3D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for UtilityServicesConfigurationsModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_2811249E8);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to retrieve configuration to check if utility is disabled or not.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_20DF85D48(v3, v8);
    if (sub_20DF9CBC0())
    {
      sub_20DF85E5C(v8);
      return 1;
    }

    else
    {
      v14 = *v8;
      sub_20DF85E5C(v8);
      return v14;
    }
  }
}

uint64_t sub_20DF9F5F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20E008744();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_20E008734();
  v5 = type metadata accessor for UtilityServicesConfigurationsModel();
  sub_20DFA4CBC(&qword_2811232D0, type metadata accessor for UtilityServicesConfigurationsModel);
  sub_20E008724();

  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_20DF9F8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = sub_20E008774();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_20E008764();
  *(&v22 + 1) = a2;
  *&v23 = a3;
  sub_20DFA46B4();
  v9 = sub_20E008754();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = sub_20E008B64();
  *&v22 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:4 error:&v22];

  v15 = v22;
  if (v14)
  {
    sub_20E009654();
    sub_20DF67FFC(v9, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v15;
    v17 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v9, v11);

    v22 = 0u;
    v23 = 0u;
  }

  v20[0] = v22;
  v20[1] = v23;
  if (*(&v23 + 1))
  {
    sub_20DF77A64(v20, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    if (swift_dynamicCast())
    {
      result = v21;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DF9FAAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UtilityServicesConfigurationsModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9F5F4(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20DF66E28(v7, &qword_27C852A60, &unk_20E00EBE0);
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  sub_20DF85D48(v7, v12);
  v13 = sub_20DFAE84C();
  if (!v14)
  {
    sub_20DF85E5C(v12);
    goto LABEL_6;
  }

  v15 = v13;
  v16 = v14;
  sub_20DFAEBC4();
  sub_20E008C54();
  v17 = sub_20E008CD4();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  sub_20DFA3CD0(v3, &v12[*(v8 + 20)]);
  v18 = &v12[*(v8 + 24)];
  v19 = *(v18 + 1);

  *v18 = v15;
  *(v18 + 1) = v16;
  v20 = sub_20DFA3D40(v12);
  sub_20DF85E5C(v12);
  return v20 & 1;
}

uint64_t sub_20DF9FD04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for UtilityServicesConfigurationsModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20DF66E28(v7, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v13 = sub_20E009094();
    __swift_project_value_buffer(v13, qword_2811249E8);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Unable to update Config!!!", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }

    v17 = 0;
  }

  else
  {
    sub_20DF85D48(v7, v12);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v18 = sub_20E009094();
    __swift_project_value_buffer(v18, qword_2811249E8);
    v19 = sub_20E009074();
    v20 = sub_20E009554();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20DF62000, v19, v20, "Updating saved config with new expiry date.", v21, 2u);
      MEMORY[0x20F32B3A0](v21, -1, -1);
    }

    sub_20DFAEBC4();
    sub_20E008C54();
    v22 = sub_20E008CD4();
    (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
    sub_20DFA3CD0(v3, &v12[*(v8 + 20)]);
    v17 = sub_20DFA3D40(v12);
    sub_20DF85E5C(v12);
  }

  return v17 & 1;
}

uint64_t sub_20DFA0088()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UtilityServicesConfigurationsModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF9EE34(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A60, &unk_20E00EBE0);
LABEL_6:
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_2811249E8);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Config saved on disk is invalid!", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    return 0;
  }

  sub_20DF85D48(v3, v8);
  if (sub_20DFA0364() & 1) == 0 || (sub_20DFA1000())
  {
    sub_20DF85E5C(v8);
    goto LABEL_6;
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v14 = sub_20E009094();
  __swift_project_value_buffer(v14, qword_2811249E8);
  v15 = sub_20E009074();
  v16 = sub_20E009554();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20DF62000, v15, v16, "Config saved on disk is valid. Skipping reloading", v17, 2u);
    MEMORY[0x20F32B3A0](v17, -1, -1);
  }

  sub_20DF85E5C(v8);
  return 1;
}

uint64_t sub_20DFA0364()
{
  v1 = v0[4];
  v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = v0[6];
    v4 = v0[5] & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    if (v4)
    {
      return 1;
    }
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v6 = sub_20E009094();
  __swift_project_value_buffer(v6, qword_2811249E8);
  v7 = sub_20E009074();
  v8 = sub_20E009544();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DF62000, v7, v8, "Saved Config on disk seems corrupted fetching new Config.", v9, 2u);
    MEMORY[0x20F32B3A0](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_20DFA0478(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = sub_20E008714();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFA059C, 0, 0);
}

uint64_t sub_20DFA059C()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  *(v0 + 49) = 0;
  v1 = sub_20E0091C4();
  v2 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 49));

  if (*(v0 + 49))
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    sub_20DFEE628(v7);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_20DF66E28(*(v0 + 88), &qword_27C8520C8, &qword_20E010830);
      if (qword_2811230D8 != -1)
      {
        swift_once();
      }

      v8 = sub_20E009094();
      __swift_project_value_buffer(v8, qword_2811249E8);
      v9 = sub_20E009074();
      v10 = sub_20E009544();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38[0] = v12;
        *v11 = 136315138;
        v13 = sub_20DFE7E38();
        v14 = 0xEA00000000006C61;
        v15 = 0x6E7265746E496171;
        v16 = 1953654115;
        if (v13 != 2)
        {
          v16 = 1685025392;
        }

        if (v13)
        {
          v15 = 7759204;
          v14 = 0xE300000000000000;
        }

        if (v13 <= 1)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        if (v13 <= 1)
        {
          v18 = v14;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        v19 = sub_20DF74468(v17, v18, v38);

        *(v11 + 4) = v19;
        _os_log_impl(&dword_20DF62000, v9, v10, "Unable to add proper Auth Headers for current env %s!!!", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x20F32B3A0](v12, -1, -1);
        MEMORY[0x20F32B3A0](v11, -1, -1);
      }

      v20 = 1;
    }

    else
    {
      v30 = *(v0 + 112);
      v31 = *(v0 + 96);
      v32 = *(v0 + 72);
      v33 = *(*(v0 + 104) + 32);
      v33(v30, *(v0 + 88), v31);
      v33(v32, v30, v31);
      v20 = 0;
    }

    v34 = *(v0 + 112);
    v35 = *(v0 + 88);
    (*(*(v0 + 104) + 56))(*(v0 + 72), v20, 1, *(v0 + 96));

    v36 = *(v0 + 8);
    v37 = *MEMORY[0x277D85DE8];

    return v36();
  }

  else
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v21 = sub_20E009094();
    *(v0 + 120) = v21;
    __swift_project_value_buffer(v21, qword_2811249E8);
    v22 = sub_20E009074();
    v23 = sub_20E009554();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20DF62000, v22, v23, "Adding BAA Headers", v24, 2u);
      MEMORY[0x20F32B3A0](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 128) = v25;
    *v25 = v0;
    v25[1] = sub_20DFA0A2C;
    v26 = *(v0 + 72);
    v27 = *(v0 + 80);
    v28 = *MEMORY[0x277D85DE8];

    return URLRequest.addBAAHeaders()(v26);
  }
}

uint64_t sub_20DFA0A2C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_20DFA0C2C;
  }

  else
  {
    v3 = sub_20DFA0B6C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DFA0B6C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[11];
  (*(v0[13] + 56))(v0[9], 0, 1, v0[12]);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_20DFA0C2C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 120), qword_2811249D0);
    sub_20DF85D20(v3, v4);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    sub_20DF85D34(v3, v4);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 136);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33[0] = v10;
      *v9 = 136315138;
      v11 = sub_20DFE4DB0(v3, v4);
      v13 = sub_20DF74468(v11, v12, v33);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20DF62000, v5, v6, "Error while adding BAA Header: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F32B3A0](v10, -1, -1);
      MEMORY[0x20F32B3A0](v9, -1, -1);

      sub_20DF85D34(v3, v4);
    }

    else
    {

      sub_20DF85D34(v3, v4);
    }
  }

  else
  {
    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 136);
    __swift_project_value_buffer(*(v0 + 120), qword_2811249D0);
    v15 = v14;
    v16 = sub_20E009074();
    v17 = sub_20E009544();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = *(v0 + 32);
      v25 = sub_20E0099E4();
      v27 = sub_20DF74468(v25, v26, v33);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_20DF62000, v16, v17, "Error while adding BAA Header: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F32B3A0](v21, -1, -1);
      MEMORY[0x20F32B3A0](v20, -1, -1);
    }

    else
    {
    }
  }

  v28 = *(v0 + 112);
  v29 = *(v0 + 88);
  (*(*(v0 + 104) + 56))(*(v0 + 72), 1, 1, *(v0 + 96));

  v30 = *(v0 + 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30();
}

uint64_t sub_20DFA1000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - v3;
  v5 = sub_20E008CD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = type metadata accessor for UtilityServicesConfigurationsModel();
  v17 = (v0 + *(v16 + 24));
  v18 = v17[1];
  if (!v18 || ((v19 = *v17 & 0xFFFFFFFFFFFFLL, (v18 & 0x2000000000000000) != 0) ? (v20 = HIBYTE(v18) & 0xF) : (v20 = v19), !v20))
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v21 = sub_20E009094();
    __swift_project_value_buffer(v21, qword_2811249E8);
    v22 = sub_20E009074();
    v23 = sub_20E009554();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No ETag value found. Fetching new config...";
    goto LABEL_22;
  }

  sub_20DF85990(v0 + *(v16 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20DF66E28(v4, &qword_27C852A58, &qword_20E00F7A0);
LABEL_18:
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v37 = sub_20E009094();
    __swift_project_value_buffer(v37, qword_2811249E8);
    v22 = sub_20E009074();
    v23 = sub_20E009554();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Data no longer valid, as config validUntil date is in the past. Fetching new config...";
LABEL_22:
    _os_log_impl(&dword_20DF62000, v22, v23, v25, v24, 2u);
    MEMORY[0x20F32B3A0](v24, -1, -1);
LABEL_23:

    return 1;
  }

  (*(v6 + 32))(v15, v4, v5);
  sub_20E008C94();
  v26 = sub_20E008C44();
  v27 = *(v6 + 8);
  v27(v13, v5);
  if ((v26 & 1) == 0)
  {
    v27(v15, v5);
    goto LABEL_18;
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v28 = sub_20E009094();
  __swift_project_value_buffer(v28, qword_2811249E8);
  (*(v6 + 16))(v10, v15, v5);
  v29 = sub_20E009074();
  v30 = sub_20E009554();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v31 = 136315138;
    v32 = sub_20DFE2F10();
    v34 = v33;
    v27(v10, v5);
    v35 = sub_20DF74468(v32, v34, &v40);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_20DF62000, v29, v30, "Config expiry in %s", v31, 0xCu);
    v36 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F32B3A0](v36, -1, -1);
    MEMORY[0x20F32B3A0](v31, -1, -1);
  }

  else
  {

    v27(v10, v5);
  }

  v27(v15, v5);
  return 0;
}

uint64_t sub_20DFA1500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24[-v6];
  v8 = type metadata accessor for UtilityServicesConfigurationsModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20DF9EE34(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20DF66E28(v7, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v13 = sub_20E009094();
    __swift_project_value_buffer(v13, qword_2811249E8);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Unable to retrieve configuration to check if utility is disabled or not.", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }
  }

  else
  {
    sub_20DF85D48(v7, v12);
    v17 = sub_20DF9F3D4();
    if (v17)
    {
      if (!*(v12 + 2) || (v25[0] = a1, v25[1] = a2, MEMORY[0x28223BE20](v17), *&v24[-16] = v25, (sub_20DF9CF34(sub_20DFA4408, &v24[-32], v18) & 1) == 0))
      {
        sub_20DF85E5C(v12);
        return 0;
      }
    }

    else
    {
      if (qword_2811230D8 != -1)
      {
        swift_once();
      }

      v20 = sub_20E009094();
      __swift_project_value_buffer(v20, qword_2811249E8);
      v21 = sub_20E009074();
      v22 = sub_20E009554();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20DF62000, v21, v22, "All Utilities are disabled!!!", v23, 2u);
        MEMORY[0x20F32B3A0](v23, -1, -1);
      }
    }

    sub_20DF85E5C(v12);
  }

  return 1;
}

uint64_t sub_20DFA183C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D18, &qword_20E00EF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA4AF4();
  sub_20E009A84();
  memcpy(v19, v3, 0x118uLL);
  memcpy(v18, v3, sizeof(v18));
  v21 = 0;
  sub_20DFA4C30(v19, v17);
  sub_20DFA4C68();
  sub_20E009944();
  if (v2)
  {
    memcpy(v17, v18, sizeof(v17));
    sub_20DFA4B9C(v17);
  }

  else
  {
    memcpy(v17, v18, sizeof(v17));
    sub_20DFA4B9C(v17);
    v11 = type metadata accessor for UtilityServicesConfigurationsModel();
    v12 = *(v11 + 20);
    v20 = 1;
    sub_20E008CD4();
    sub_20DFA4CBC(&qword_2811233A8, MEMORY[0x277CC9578]);
    sub_20E009904();
    v13 = &v3[*(v11 + 24)];
    v14 = *v13;
    v15 = *(v13 + 1);
    v20 = 2;
    sub_20E0098D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFA1A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D10, &qword_20E00EF68);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for UtilityServicesConfigurationsModel();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = sub_20E008CD4();
  v18 = *(*(v17 - 8) + 56);
  v34 = v16;
  v32 = v15;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v20 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20DFA4AF4();
  v21 = v31;
  sub_20E009A74();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    return sub_20DF66E28(&v32[v34], &qword_27C852A58, &qword_20E00F7A0);
  }

  else
  {
    v31 = v11;
    v36[303] = 0;
    sub_20DFA4B48();
    sub_20E0098C4();
    v22 = v32;
    memcpy(v32, v36, 0x118uLL);
    v35 = 1;
    sub_20DFA4CBC(&qword_2811233A0, MEMORY[0x277CC9578]);
    sub_20E009884();
    sub_20DFA3CD0(v6, &v22[v34]);
    v35 = 2;
    v23 = sub_20E009854();
    v25 = v24;
    v26 = &v22[*(v31 + 24)];
    (*(v29 + 8))(v10, v30);
    *v26 = v23;
    v26[1] = v25;
    sub_20DFA4BCC(v22, v28);
    __swift_destroy_boxed_opaque_existential_0(v33);
    return sub_20DF85E5C(v22);
  }
}

uint64_t sub_20DFA1E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D38, &qword_20E00EF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA57F0();
  sub_20E009A84();
  v33 = *v3;
  *&v34 = *(v3 + 2);
  LOBYTE(v31[0]) = 0;
  sub_20DFA46B4();
  sub_20E009944();
  if (!v2)
  {
    v12 = *(v3 + 3);
    v13 = *(v3 + 4);
    LOBYTE(v33) = 1;
    sub_20E009914();
    v14 = *(v3 + 200);
    v46[9] = *(v3 + 184);
    v46[10] = v14;
    v15 = *(v3 + 232);
    v46[11] = *(v3 + 216);
    v46[12] = v15;
    v16 = *(v3 + 136);
    v46[5] = *(v3 + 120);
    v46[6] = v16;
    v17 = *(v3 + 168);
    v46[7] = *(v3 + 152);
    v46[8] = v17;
    v18 = *(v3 + 72);
    v46[1] = *(v3 + 56);
    v46[2] = v18;
    v19 = *(v3 + 104);
    v46[3] = *(v3 + 88);
    v46[4] = v19;
    v20 = *(v3 + 40);
    v21 = *(v3 + 184);
    v22 = *(v3 + 216);
    v43 = *(v3 + 200);
    v44 = v22;
    v45 = *(v3 + 232);
    v46[0] = v20;
    v23 = *(v3 + 120);
    v24 = *(v3 + 152);
    v39 = *(v3 + 136);
    v40 = v24;
    v41 = *(v3 + 168);
    v42 = v21;
    v25 = *(v3 + 56);
    v26 = *(v3 + 88);
    v35 = *(v3 + 72);
    v36 = v26;
    v37 = *(v3 + 104);
    v38 = v23;
    v33 = *(v3 + 40);
    v34 = v25;
    v32 = 2;
    sub_20DF85DAC(v46, v31);
    sub_20DFA5940();
    sub_20E009944();
    v31[10] = v43;
    v31[11] = v44;
    v31[12] = v45;
    v31[6] = v39;
    v31[7] = v40;
    v31[8] = v41;
    v31[9] = v42;
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v31[0] = v33;
    v31[1] = v34;
    sub_20DF85E08(v31);
    v27 = *(v3 + 264);
    v29 = *(v3 + 248);
    v30 = v27;
    v28[15] = 3;
    sub_20DFA5994();
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFA21C0()
{
  v1 = 0x746E5564696C6176;
  if (*v0 != 1)
  {
    v1 = 1734431845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x537974696C697475;
  }
}

uint64_t sub_20DFA2224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFA4D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFA224C(uint64_t a1)
{
  v2 = sub_20DFA4AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFA2288(uint64_t a1)
{
  v2 = sub_20DFA4AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFA22F4()
{
  v1 = 0x72756769666E6F63;
  v2 = 0x68746150697061;
  if (*v0 != 2)
  {
    v2 = 0x5065636976726573;
  }

  if (*v0)
  {
    v1 = 0x5255726576726573;
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

uint64_t sub_20DFA2388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFA4E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFA23B0(uint64_t a1)
{
  v2 = sub_20DFA57F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFA23EC(uint64_t a1)
{
  v2 = sub_20DFA57F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFA2428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFA4FF8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x118uLL);
  }

  return result;
}

uint64_t sub_20DFA248C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D20, &unk_20E00EF78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA4D04();
  sub_20E009A84();
  LOBYTE(v16) = 0;
  sub_20E009924();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A8);
    sub_20E009944();
    v16 = a4;
    v15 = 2;
    sub_20E009904();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_20DFA2690(char a1)
{
  result = 0x696C697455746567;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6974557473696CLL;
      break;
    case 3:
      result = 0x5468736572666572;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6373627553746567;
      break;
    case 8:
      result = 0x6472616F6266666FLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x736B616570;
      break;
    case 12:
      result = 0x7363697274656DLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_20DFA2834()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    result = v2;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_20DFA2884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFA5478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFA28AC(uint64_t a1)
{
  v2 = sub_20DFA4D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFA28E8(uint64_t a1)
{
  v2 = sub_20DFA4D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFA2924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20DFA55A0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_20DFA2978(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_20DFA2690(*a1);
  v5 = v4;
  if (v3 == sub_20DFA2690(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20E009984();
  }

  return v8 & 1;
}

uint64_t sub_20DFA2A00()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20DFA2690(v1);
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFA2A64()
{
  sub_20DFA2690(*v0);
  sub_20E009194();
}

uint64_t sub_20DFA2AB8()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20DFA2690(v1);
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFA2B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DFA59E8();
  *a2 = result;
  return result;
}

unint64_t sub_20DFA2B48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20DFA2690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20DFA2B90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DFA59E8();
  *a1 = result;
  return result;
}

uint64_t sub_20DFA2BC4(uint64_t a1)
{
  v2 = sub_20DFA62E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFA2C00(uint64_t a1)
{
  v2 = sub_20DFA62E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFA2C3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D48, &qword_20E00EFA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA62E4();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v38[15] = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v38[14] = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    v38[13] = 2;
    sub_20E009914();
    v17 = v3[6];
    v18 = v3[7];
    v38[12] = 4;
    sub_20E009914();
    v19 = v3[8];
    v20 = v3[9];
    v38[11] = 3;
    sub_20E009914();
    v21 = v3[10];
    v22 = v3[11];
    v38[10] = 5;
    sub_20E009914();
    v23 = v3[12];
    v24 = v3[13];
    v38[9] = 6;
    sub_20E009914();
    v25 = v3[14];
    v26 = v3[15];
    v38[8] = 7;
    sub_20E009914();
    v27 = v3[16];
    v28 = v3[17];
    v38[7] = 8;
    sub_20E009914();
    v29 = v3[18];
    v30 = v3[19];
    v38[6] = 9;
    sub_20E009914();
    v31 = v3[20];
    v32 = v3[21];
    v38[5] = 11;
    sub_20E009914();
    v33 = v3[22];
    v34 = v3[23];
    v38[4] = 10;
    sub_20E009914();
    v35 = v3[24];
    v36 = v3[25];
    v38[3] = 12;
    sub_20E009914();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFA2F34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D78, &qword_20E00F4C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA6B60();
  sub_20E009A84();
  v16 = 0;
  sub_20E009914();
  if (!v5)
  {
    v15 = 1;
    sub_20E009914();
  }

  return (*(v8 + 8))(v11, v7);
}

__n128 sub_20DFA30C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFA5A34(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_20DFA314C()
{
  if (*v0)
  {
    result = 0x7550726575737369;
  }

  else
  {
    result = 0x614E726575737369;
  }

  *v0;
  return result;
}

uint64_t sub_20DFA3198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E726575737369 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7550726575737369 && a2 == 0xEF79654B63696C62)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DFA3284(uint64_t a1)
{
  v2 = sub_20DFA6B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFA32C0(uint64_t a1)
{
  v2 = sub_20DFA6B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFA32FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20DFA697C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_20DFA334C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_20DFA33C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20E009A34();
  sub_20E009194();
  v9 = sub_20E009A54();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20E009984() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20DFA3770(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20DFA3510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D08, &qword_20E00EC10);
  result = sub_20E0096D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20E009A34();
      sub_20E009194();
      result = sub_20E009A54();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20DFA3770(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20DFA3510(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20DFA38F0();
      goto LABEL_16;
    }

    sub_20DFA3A4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20E009A34();
  sub_20E009194();
  result = sub_20E009A54();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20E009984();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20E0099C4();
  __break(1u);
  return result;
}

void *sub_20DFA38F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D08, &qword_20E00EC10);
  v2 = *v0;
  v3 = sub_20E0096C4();
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

uint64_t sub_20DFA3A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D08, &qword_20E00EC10);
  result = sub_20E0096D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20E009A34();

      sub_20E009194();
      result = sub_20E009A54();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t type metadata accessor for UtilityServicesConfigurationsModel()
{
  result = qword_2811232C0;
  if (!qword_2811232C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DFA3CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFA3D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44 - v4;
  v6 = sub_20E008CD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = sub_20DF9F184();
  if (v14)
  {
    v15 = v14;
    v16 = sub_20DF9CAE0();
    v18 = v17;
    v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    v47[0] = v15;
    sub_20DF9C678(v16, v18, v47);

    sub_20DF66E28(v47, &qword_27C8521F0, &unk_20E00EC00);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_2811249E8);
    v25 = sub_20E009074();
    v26 = sub_20E009554();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "New Config saved to disk.", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v28 = type metadata accessor for UtilityServicesConfigurationsModel();
    sub_20DF85990(a1 + *(v28 + 20), v5);
    v29 = *(v7 + 48);
    if (v29(v5, 1, v6) == 1)
    {
      sub_20E008C94();
      if (v29(v5, 1, v6) != 1)
      {
        sub_20DF66E28(v5, &qword_27C852A58, &qword_20E00F7A0);
      }
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
    }

    v30 = (a1 + *(v28 + 24));
    if (v30[1])
    {
      v31 = *v30;
      v32 = v30[1];
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v7 + 16))(v11, v13, v6);

    v33 = sub_20E009074();
    v34 = sub_20E009534();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v35 = 136315394;
      sub_20DFA4CBC(&qword_27C852D00, MEMORY[0x277CC9578]);
      v45 = v34;
      v36 = sub_20E009964();
      v44 = v31;
      v38 = v37;
      v39 = *(v7 + 8);
      v39(v11, v6);
      v40 = sub_20DF74468(v36, v38, v47);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      v41 = sub_20DF74468(v44, v32, v47);

      *(v35 + 14) = v41;
      v42 = v46;
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v42, -1, -1);
      MEMORY[0x20F32B3A0](v35, -1, -1);

      v39(v13, v6);
    }

    else
    {

      v43 = *(v7 + 8);
      v43(v11, v6);
      v43(v13, v6);
    }

    return 1;
  }

  else
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v19 = sub_20E009094();
    __swift_project_value_buffer(v19, qword_2811249E8);
    v20 = sub_20E009074();
    v21 = sub_20E009544();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20DF62000, v20, v21, "Unable to convert Config Model to dictionary format for saving to disk.", v22, 2u);
      MEMORY[0x20F32B3A0](v22, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_20DFA4408(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E009984() & 1;
  }
}

uint64_t sub_20DFA4460(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F32A6B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20DFA33C0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20DFA44F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D08, &qword_20E00EC10);
    v3 = sub_20E0096E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_20E009A34();

      sub_20E009194();
      result = sub_20E009A54();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_20E009984();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_20DFA46B4()
{
  result = qword_281123328;
  if (!qword_281123328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123328);
  }

  return result;
}

uint64_t sub_20DFA4708(uint64_t a1, int a2)
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

uint64_t sub_20DFA4750(uint64_t result, int a2, int a3)
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

void sub_20DFA47C8()
{
  sub_20DFA485C();
  if (v0 <= 0x3F)
  {
    sub_20DFA48B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DFA485C()
{
  if (!qword_281123398)
  {
    sub_20E008CD4();
    v0 = sub_20E0095B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281123398);
    }
  }
}

void sub_20DFA48B4()
{
  if (!qword_2811230B8)
  {
    v0 = sub_20E0095B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811230B8);
    }
  }
}

uint64_t sub_20DFA490C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_20DFA4954(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_20DFA4A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_20DFA4A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFA4AF4()
{
  result = qword_2811232F0;
  if (!qword_2811232F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811232F0);
  }

  return result;
}

unint64_t sub_20DFA4B48()
{
  result = qword_2811232F8;
  if (!qword_2811232F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811232F8);
  }

  return result;
}

uint64_t sub_20DFA4BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityServicesConfigurationsModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DFA4C68()
{
  result = qword_281123300;
  if (!qword_281123300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123300);
  }

  return result;
}

uint64_t sub_20DFA4CBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20DFA4D04()
{
  result = qword_281123340;
  if (!qword_281123340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123340);
  }

  return result;
}

uint64_t sub_20DFA4D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537974696C697475 && a2 == 0xEF73656369767265;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734431845 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

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

uint64_t sub_20DFA4E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255726576726573 && a2 == 0xE90000000000004CLL || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746150697061 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5065636976726573 && a2 == 0xEC00000079786F72)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E009984();

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

void *sub_20DFA4FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D30, &qword_20E00EF90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_20DFA57F0();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v86);
  }

  v30 = a2;
  LOBYTE(v31[0]) = 0;
  sub_20DFA5844();
  sub_20E0098C4();
  v12 = v32[0];
  v28 = v34;
  v29 = v33;
  v32[0] = 1;
  v13 = sub_20E009894();
  v27 = v14;
  v25 = v12;
  v26 = v13;
  v59 = 2;
  sub_20DFA5898();
  sub_20E0098C4();
  v83 = v70;
  v84 = v71;
  v85 = v72;
  v79 = v66;
  v80 = v67;
  v81 = v68;
  v82 = v69;
  v75 = v62;
  v76 = v63;
  v77 = v64;
  v78 = v65;
  v73 = v60;
  v74 = v61;
  v54 = 3;
  sub_20DFA58EC();
  sub_20E0098C4();
  (*(v6 + 8))(v9, 0);
  *&v31[23] = v82;
  *&v31[25] = v83;
  *&v31[27] = v84;
  *&v31[29] = v85;
  *&v31[13] = v77;
  *&v31[15] = v78;
  *&v31[17] = v79;
  *&v31[19] = v80;
  *&v31[21] = v81;
  *&v31[7] = v74;
  *&v31[9] = v75;
  *&v31[11] = v76;
  v15 = v55;
  v16 = v28;
  v17 = v29;
  v23 = v57;
  v24 = v56;
  v22 = v58;
  v18 = v25;
  LOBYTE(v31[0]) = v25;
  v31[1] = v29;
  v31[2] = v28;
  v20 = v26;
  v19 = v27;
  v31[3] = v26;
  v31[4] = v27;
  *&v31[5] = v73;
  v31[31] = v55;
  v31[32] = v56;
  v31[33] = v57;
  v31[34] = v58;
  sub_20DFA4C30(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v86);
  v46 = v82;
  v47 = v83;
  v48 = v84;
  v49 = v85;
  v42 = v78;
  v43 = v79;
  v44 = v80;
  v45 = v81;
  v38 = v74;
  v39 = v75;
  v40 = v76;
  v41 = v77;
  v32[0] = v18;
  v33 = v17;
  v34 = v16;
  v35 = v20;
  v36 = v19;
  v37 = v73;
  v50 = v15;
  v51 = v24;
  v52 = v23;
  v53 = v22;
  sub_20DFA4B9C(v32);
  return memcpy(v30, v31, 0x118uLL);
}

uint64_t sub_20DFA5478(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000020E0162B0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E0162D0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E0162F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_20E009984();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DFA55A0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D28, &qword_20E00EF88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA4D04();
  sub_20E009A74();
  LOBYTE(v12) = 0;
  v8 = sub_20E0098A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  v11 = 1;
  sub_20DF756D4(&qword_2811230A0);
  sub_20E0098C4();
  v11 = 2;
  sub_20E009884();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

unint64_t sub_20DFA57F0()
{
  result = qword_281123318;
  if (!qword_281123318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123318);
  }

  return result;
}

unint64_t sub_20DFA5844()
{
  result = qword_281123320;
  if (!qword_281123320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123320);
  }

  return result;
}

unint64_t sub_20DFA5898()
{
  result = qword_281123210;
  if (!qword_281123210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123210);
  }

  return result;
}

unint64_t sub_20DFA58EC()
{
  result = qword_281123120;
  if (!qword_281123120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123120);
  }

  return result;
}

unint64_t sub_20DFA5940()
{
  result = qword_281123218;
  if (!qword_281123218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123218);
  }

  return result;
}

unint64_t sub_20DFA5994()
{
  result = qword_281123128;
  if (!qword_281123128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123128);
  }

  return result;
}

uint64_t sub_20DFA59E8()
{
  v0 = sub_20E009844();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20DFA5A34@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D40, &qword_20E00EFA0);
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v82);
  v8 = &v43 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA62E4();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v67 = a2;
  LOBYTE(v81[0]) = 0;
  v12 = sub_20E009894();
  v66 = v13;
  LOBYTE(v81[0]) = 1;
  v14 = sub_20E009894();
  v65 = v15;
  v57 = v14;
  LOBYTE(v81[0]) = 2;
  v16 = sub_20E009894();
  v64 = a1;
  v56 = v16;
  v63 = v17;
  LOBYTE(v81[0]) = 4;
  v55 = sub_20E009894();
  v62 = v18;
  LOBYTE(v81[0]) = 3;
  v54 = sub_20E009894();
  v61 = v19;
  LOBYTE(v81[0]) = 5;
  v53 = sub_20E009894();
  v60 = v20;
  LOBYTE(v81[0]) = 6;
  v52 = sub_20E009894();
  v59 = v21;
  LOBYTE(v81[0]) = 7;
  v50 = sub_20E009894();
  v58 = v22;
  LOBYTE(v81[0]) = 8;
  v49 = sub_20E009894();
  v51 = v23;
  LOBYTE(v81[0]) = 9;
  v24 = sub_20E009894();
  v64 = v25;
  v26 = v24;
  LOBYTE(v81[0]) = 11;
  v46 = sub_20E009894();
  v48 = v27;
  LOBYTE(v81[0]) = 10;
  v45 = sub_20E009894();
  v47 = v28;
  LOBYTE(v81[0]) = 12;
  v29 = sub_20E009854();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  (*(v10 + 8))(v8, v82);
  v33 = v66;
  *&v68 = v12;
  *(&v68 + 1) = v66;
  v34 = v57;
  *&v69 = v57;
  *(&v69 + 1) = v65;
  *&v70 = v56;
  *(&v70 + 1) = v63;
  *&v71 = v55;
  *(&v71 + 1) = v62;
  *&v72 = v54;
  *(&v72 + 1) = v61;
  *&v73 = v53;
  *(&v73 + 1) = v60;
  *&v74 = v52;
  *(&v74 + 1) = v59;
  *&v75 = v50;
  *(&v75 + 1) = v58;
  *&v76 = v49;
  *(&v76 + 1) = v51;
  v44 = v26;
  *&v77 = v26;
  v35 = v64;
  *(&v77 + 1) = v64;
  *&v78 = v46;
  *(&v78 + 1) = v48;
  *&v79 = v45;
  *(&v79 + 1) = v47;
  *&v80 = v31;
  *(&v80 + 1) = v32;
  sub_20DF85DAC(&v68, v81);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v81[0] = v12;
  v81[1] = v33;
  v81[2] = v34;
  v81[3] = v65;
  v81[4] = v56;
  v81[5] = v63;
  v81[6] = v55;
  v81[7] = v62;
  v81[8] = v54;
  v81[9] = v61;
  v81[10] = v53;
  v81[11] = v60;
  v81[12] = v52;
  v81[13] = v59;
  v81[14] = v50;
  v81[15] = v58;
  v81[16] = v49;
  v81[17] = v51;
  v81[18] = v44;
  v81[19] = v35;
  v81[20] = v46;
  v81[21] = v48;
  v81[22] = v45;
  v81[23] = v47;
  v81[24] = v31;
  v81[25] = v32;
  result = sub_20DF85E08(v81);
  v36 = v79;
  v37 = v67;
  v67[10] = v78;
  v37[11] = v36;
  v37[12] = v80;
  v38 = v75;
  v37[6] = v74;
  v37[7] = v38;
  v39 = v77;
  v37[8] = v76;
  v37[9] = v39;
  v40 = v71;
  v37[2] = v70;
  v37[3] = v40;
  v41 = v73;
  v37[4] = v72;
  v37[5] = v41;
  v42 = v69;
  *v37 = v68;
  v37[1] = v42;
  return result;
}

unint64_t sub_20DFA62E4()
{
  result = qword_281123230[0];
  if (!qword_281123230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281123230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UtilityServicesAPIPath.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UtilityServicesAPIPath.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

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

uint64_t sub_20DFA64C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20DFA650C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFA6560()
{
  result = qword_27C852D50;
  if (!qword_27C852D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852D50);
  }

  return result;
}

unint64_t sub_20DFA65B8()
{
  result = qword_27C852D58;
  if (!qword_27C852D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852D58);
  }

  return result;
}

unint64_t sub_20DFA6610()
{
  result = qword_27C852D60;
  if (!qword_27C852D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852D60);
  }

  return result;
}

unint64_t sub_20DFA6668()
{
  result = qword_27C852D68;
  if (!qword_27C852D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852D68);
  }

  return result;
}

unint64_t sub_20DFA66C0()
{
  result = qword_281123220;
  if (!qword_281123220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123220);
  }

  return result;
}

unint64_t sub_20DFA6718()
{
  result = qword_281123228;
  if (!qword_281123228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123228);
  }

  return result;
}

unint64_t sub_20DFA6770()
{
  result = qword_281123308;
  if (!qword_281123308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123308);
  }

  return result;
}

unint64_t sub_20DFA67C8()
{
  result = qword_281123310;
  if (!qword_281123310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123310);
  }

  return result;
}

unint64_t sub_20DFA6820()
{
  result = qword_281123330;
  if (!qword_281123330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123330);
  }

  return result;
}

unint64_t sub_20DFA6878()
{
  result = qword_281123338;
  if (!qword_281123338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123338);
  }

  return result;
}

unint64_t sub_20DFA68D0()
{
  result = qword_2811232E0;
  if (!qword_2811232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811232E0);
  }

  return result;
}

unint64_t sub_20DFA6928()
{
  result = qword_2811232E8;
  if (!qword_2811232E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811232E8);
  }

  return result;
}

uint64_t sub_20DFA697C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D70, &qword_20E00F4B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFA6B60();
  sub_20E009A74();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_20E009894();
    v11 = 1;
    sub_20E009894();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_20DFA6B60()
{
  result = qword_281123140;
  if (!qword_281123140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123140);
  }

  return result;
}

unint64_t sub_20DFA6BC8()
{
  result = qword_27C852D80;
  if (!qword_27C852D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852D80);
  }

  return result;
}

unint64_t sub_20DFA6C20()
{
  result = qword_281123130;
  if (!qword_281123130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123130);
  }

  return result;
}

unint64_t sub_20DFA6C78()
{
  result = qword_281123138;
  if (!qword_281123138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123138);
  }

  return result;
}

uint64_t sub_20DFA6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v13 = sub_20E008AF4();
  v7[17] = v13;
  v14 = *(v13 - 8);
  v7[18] = v14;
  v15 = *(v14 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFA6E98, 0, 0);
}

uint64_t sub_20DFA6E98()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_20DF85FEC(v0[7], v0[8]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[16], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626F8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Service Location API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[19];
    v9 = v0[20];
    v11 = v0[15];
    v10 = v0[16];
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = v0[9];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[10]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[10];
    v27 = v0[6];
    v35 = v0[15];
    v36 = v0[3];
    v37 = v0[4];
    (*(v20 + 32))(v18, v0[16], v21);
    (*(v20 + 16))(v19, v18, v21);
    sub_20E0086B4();
    sub_20DFDF668(v23);
    v28 = *(v25 + 8);
    v0[21] = v28;
    v0[22] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v24, v26);
    v29 = *(v25 + 16);
    v29(v22, v23, v26);
    sub_20E0086D4();
    v28(v23, v26);
    v29(v35, v22, v26);
    sub_20E0086D4();
    v28(v22, v26);
    sub_20E008694();
    v30 = swift_task_alloc();
    v0[23] = v30;
    *v30 = v0;
    v30[1] = sub_20DFA7284;
    v31 = v0[15];
    v33 = v0[8];
    v32 = v0[9];
    v34 = v0[7];

    return sub_20DF83510(v32, v31, v34);
  }
}

uint64_t sub_20DFA7284()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_20DFA7654;
  }

  else
  {
    v3 = sub_20DFA739C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DFA739C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign service location request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[10];

    v9(v13, v14);
    (*(v12 + 8))(v10, v11);
    v15 = 1;
  }

  else
  {
    v17 = v0[21];
    v16 = v0[22];
    v31 = v0[20];
    v19 = v0[17];
    v18 = v0[18];
    v20 = v0[15];
    (*(v2 + 32))(v0[2], v3, v1);
    sub_20E008704();
    v17(v20, v1);
    (*(v18 + 8))(v31, v19);
    v15 = 0;
  }

  v21 = v0[19];
  v22 = v0[20];
  v24 = v0[15];
  v23 = v0[16];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v28 = v0[9];
  (*(v0[11] + 56))(v0[2], v15, 1, v0[10]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_20DFA7654()
{
  (*(v0[11] + 56))(v0[9], 1, 1, v0[10]);
  sub_20DF66E28(v0[9], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign service location request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[10];

  v6(v10, v11);
  (*(v9 + 8))(v7, v8);
  v12 = v0[19];
  v13 = v0[20];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v19 = v0[9];
  (*(v0[11] + 56))(v0[2], 1, 1, v0[10]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DFA7858()
{
  v1 = (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id UtilitySubscriptionService.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20E008D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  v10 = &v9[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID];
  sub_20E008CF4();
  v11 = sub_20E008CE4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  *v10 = v11;
  v10[1] = v13;
  *&v9[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration] = a1;
  v15.receiver = v9;
  v15.super_class = v2;
  return objc_msgSendSuper2(&v15, sel_init);
}

id UtilitySubscriptionService.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20E008D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID];
  sub_20E008CF4();
  v10 = sub_20E008CE4();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  *&v2[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration] = a1;
  v13 = type metadata accessor for UtilitySubscriptionService();
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t UtilitySubscriptionService.__allocating_init(utilityID:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_20E008D04();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFA7D18, 0, 0);
}

uint64_t sub_20DFA7D18()
{
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_281124A48);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Initializing UtilitySubscriptionService object using UtilityID!!", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = sub_20E009074();
  v6 = sub_20E009544();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DF62000, v5, v6, "This is expensive, consider reusing Object.", v7, 2u);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  v9 = [objc_opt_self() sessionWithConfiguration_];
  v0[9] = v9;

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_20DFA7F2C;
  v12 = v0[4];
  v11 = v0[5];

  return sub_20DFCFC94(v12, v11, v9);
}

uint64_t sub_20DFA7F2C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;

  v8 = v4[9];
  if (v1)
  {
    v9 = v5[8];
    v10 = v5[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = v5[5];

    v5[11] = a1;

    return MEMORY[0x2822009F8](sub_20DFA80BC, 0, 0);
  }
}

uint64_t sub_20DFA80BC()
{
  super_class = v0[5].super_class;
  v3 = v0[3].super_class;
  receiver = v0[4].receiver;
  v4 = v0[3].receiver;
  v5 = type metadata accessor for UtilitySubscriptionService();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID];
  sub_20E008CF4();
  v8 = sub_20E008CE4();
  v10 = v9;
  (*(v3 + 1))(receiver, v4);
  *v7 = v8;
  v7[1] = v10;
  *&v6[OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration] = super_class;
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v11 = objc_msgSendSuper2(v0 + 1, sel_init);

  v12 = v0->super_class;

  return v12(v11);
}

uint64_t sub_20DFA81C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFA81E8, 0, 0);
}

uint64_t sub_20DFA81E8()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration);
  v3 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_20DFA82C0;
  v7 = v0[2];
  v8 = v0[3];

  return sub_20E000FA0(v2, v7, v8, v4, v5);
}

uint64_t sub_20DFA82C0(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_20DFA8550(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_20E009164();
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_20DFA8600, 0, 0);
}

uint64_t sub_20DFA8600()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration);
  v3 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_20DFA86DC;
  v7 = v0[5];
  v8 = v0[2];

  return sub_20E000FA0(v2, v7, v8, v4, v5);
}

uint64_t sub_20DFA86DC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DFA8880, 0, 0);
  }

  else
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 24);

    type metadata accessor for TAFVerificationFactor();
    v6 = sub_20E009414();

    v7 = *(v3 + 32);
    (v7)[2](v7, v6, 0);

    _Block_release(v7);
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_20DFA8880()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  v4 = sub_20E008A24();

  v5 = *(v0 + 32);
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20DFA8938(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFA895C, 0, 0);
}

uint64_t sub_20DFA895C()
{
  v1 = v0[4];
  v2 = (*(v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v4 = *v2;
  v3 = v2[1];
  v0[5] = v3;
  v5 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v6 = *v5;
  v7 = v5[1];
  v0[6] = v7;

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_20DFA8A74;
  v10 = v0[2];
  v9 = v0[3];

  return sub_20DFECA8C(v10, v9, v4, v3, v6, v7);
}

uint64_t sub_20DFA8A74(char a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFA8BD0, 0, 0);
  }

  else
  {
    v6 = v5[5];
    v7 = v5[6];

    v8 = v5[1];

    return v8(a1 & 1);
  }
}

uint64_t sub_20DFA8BD0()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3(0);
}

uint64_t sub_20DFA8DD0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;

  return MEMORY[0x2822009F8](sub_20DFA8E68, 0, 0);
}

uint64_t sub_20DFA8E68()
{
  v1 = v0[4];
  v2 = (*(v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v4 = *v2;
  v3 = v2[1];
  v0[6] = v3;
  v5 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v6 = *v5;
  v7 = v5[1];
  v0[7] = v7;

  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20DFA8F80;
  v10 = v0[2];
  v9 = v0[3];

  return sub_20DFECA8C(v10, v9, v4, v3, v6, v7);
}

uint64_t sub_20DFA8F80(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFA9128, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v10 = *(v4 + 32);
    v9 = *(v4 + 40);
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);

    (*(v9 + 16))(v9, a1 & 1, 0);
    _Block_release(*(v4 + 40));
    v13 = *(v6 + 8);

    return v13();
  }
}

uint64_t sub_20DFA9128()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  v8 = sub_20E008A24();
  (*(v4 + 16))(v4, 0, v8);

  _Block_release(*(v0 + 40));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20DFA91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFA9218, 0, 0);
}

uint64_t sub_20DFA9218()
{
  v1 = v0[7];
  v2 = (*(v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v4 = *v2;
  v3 = v2[1];
  v0[8] = v3;
  v5 = (v1 + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v6 = *v5;
  v0[9] = v5[1];

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_20DFA9328;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return sub_20DFEA928(v12, v10, v11, v8, v9, v4, v3, v6);
}

uint64_t sub_20DFA9328()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DFA9470, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_20DFA9470()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_20DFA94DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFA9500, 0, 0);
}

uint64_t sub_20DFA9500()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = (*(v0[5] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
    v4 = *v3;
    v5 = v3[1];
    v0[6] = v5;

    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_20DFA974C;
    v7 = v0[4];
    v8 = v0[2];

    return sub_20DFF2560(v8, v1, 0, 0, v4, v5, v7);
  }

  else
  {
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_27C8626E0);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20DF62000, v11, v12, "Attempting to generate token with a empty authorization Token!!!", v13, 2u);
      MEMORY[0x20F32B3A0](v13, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_20DFA974C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFA98A4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DFA98A4()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_20DFA9A98(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_20E0091D4();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_20DFA9B84;

  return sub_20DFA94DC(v7, v9, v10);
}

uint64_t sub_20DFA9B84(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_20E008A24();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_20DFA9D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFA9D84, 0, 0);
}

uint64_t sub_20DFA9D84()
{
  v1 = (*(v0[5] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *v1;
  v3 = v1[1];
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_20DFA9E74;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_20DFCD654(v7, v5, v2, v3, v6);
}

uint64_t sub_20DFA9E74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFA9FCC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DFA9FCC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20DFAA1C0(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_20E0091D4();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;

  return MEMORY[0x2822009F8](sub_20DFAA25C, 0, 0);
}

uint64_t sub_20DFAA25C()
{
  v1 = (*(v0[3] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *v1;
  v3 = v1[1];
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_20DFAA34C;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];

  return sub_20DFCD654(v6, v5, v2, v3, v7);
}

uint64_t sub_20DFAA34C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DFAA500, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];
    v7 = v3[2];
    v6 = v3[3];

    type metadata accessor for UtilityServiceLocation();
    v8 = sub_20E009414();

    v9 = v3[4];
    (v9)[2](v9, v8, 0);

    _Block_release(v9);
    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_20DFAA500()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_20E008A24();

  v7 = v0[4];
  (v7)[2](v7, 0, v6);

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_20DFAA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFAA5E4, 0, 0);
}

uint64_t sub_20DFAA5E4()
{
  v1 = (*(v0[6] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v3 = *v1;
  v2 = v1[1];
  v0[7] = v2;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_20DFAA6C0;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_20DFCAF60(v7, v8, v5, v3, v2, v6);
}

uint64_t sub_20DFAA6C0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DFAA7FC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_20DFAA7FC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_20DFAA860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20DFAA888, 0, 0);
}

uint64_t sub_20DFAA888()
{
  v1 = (*(v0[7] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *v1;
  v3 = v1[1];
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_20DFAA97C;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_20DF873C4(v9, v7, v8, v5, v2, v3, v6);
}

uint64_t sub_20DFAA97C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFAAAD4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DFAAAD4()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_20DFAACDC(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = sub_20E0091D4();
  v5[6] = v8;
  v5[7] = sub_20E0091D4();
  v5[8] = v9;
  v10 = a3;
  v11 = a5;

  return MEMORY[0x2822009F8](sub_20DFAAD88, 0, 0);
}

uint64_t sub_20DFAAD88()
{
  v1 = (*(v0[3] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *v1;
  v3 = v1[1];
  v0[9] = v3;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_20DFAAE7C;
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[2];

  return sub_20DF873C4(v8, v7, v5, v6, v2, v3, v9);
}

uint64_t sub_20DFAAE7C(void *a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  v5[11] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFAB01C, 0, 0);
  }

  else
  {
    v7 = v5[8];
    v6 = v5[9];
    v8 = v5[6];
    v10 = v5[3];
    v9 = v5[4];
    v11 = v5[2];

    (v9)[2](v9, a1, 0);
    _Block_release(v9);

    v12 = v5[1];

    return v12();
  }
}

uint64_t sub_20DFAB01C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = sub_20E008A24();

  (v5)[2](v5, 0, v8);
  _Block_release(v5);
  v9 = v0[1];

  return v9();
}

uint64_t static UtilitySubscriptionService.renewAccessToken(refreshToken:utilityID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20DF77B54;

  return sub_20DFAD1A0(a1, a2, a3, a4, a5);
}

uint64_t sub_20DFAB364(int a1, int a2, void *a3, void *aBlock)
{
  v4[2] = a3;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_20E0091D4();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_20E0091D4();
  v11 = v10;
  v4[5] = v10;
  v12 = a3;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_20DFAB47C;

  return sub_20DFAD1A0(v6, v8, v9, v11, v12);
}