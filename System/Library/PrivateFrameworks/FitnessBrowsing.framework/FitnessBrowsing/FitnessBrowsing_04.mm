BOOL static CreatePlanBannerAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t CreatePlanBannerAction.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  return MEMORY[0x24C241D70](v2);
}

uint64_t CreatePlanBannerAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4DD230()
{
  v1 = *v0;
  sub_24B517F7C();
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4DD294()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  return MEMORY[0x24C241D70](v2);
}

uint64_t sub_24B4DD2DC()
{
  sub_24B517F7C();
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

unint64_t sub_24B4DD340()
{
  result = qword_27EFFD590;
  if (!qword_27EFFD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD590);
  }

  return result;
}

BOOL sub_24B4DD394(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for CreatePlanBannerAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CreatePlanBannerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B4DD554(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B4DD568(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_24B4DD5DC()
{
  result = qword_27EFFD598;
  if (!qword_27EFFD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD598);
  }

  return result;
}

unint64_t sub_24B4DD634()
{
  result = qword_27EFFD5A0;
  if (!qword_27EFFD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5A0);
  }

  return result;
}

unint64_t sub_24B4DD68C()
{
  result = qword_27EFFD5A8;
  if (!qword_27EFFD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5A8);
  }

  return result;
}

unint64_t sub_24B4DD6E4()
{
  result = qword_27EFFD5B0;
  if (!qword_27EFFD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5B0);
  }

  return result;
}

unint64_t sub_24B4DD73C()
{
  result = qword_27EFFD5B8;
  if (!qword_27EFFD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5B8);
  }

  return result;
}

unint64_t sub_24B4DD794()
{
  result = qword_27EFFD5C0;
  if (!qword_27EFFD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5C0);
  }

  return result;
}

unint64_t sub_24B4DD7EC()
{
  result = qword_27EFFD5C8;
  if (!qword_27EFFD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5C8);
  }

  return result;
}

unint64_t sub_24B4DD844()
{
  result = qword_27EFFD5D0;
  if (!qword_27EFFD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5D0);
  }

  return result;
}

unint64_t sub_24B4DD89C()
{
  result = qword_27EFFD5D8;
  if (!qword_27EFFD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5D8);
  }

  return result;
}

unint64_t sub_24B4DD8F4()
{
  result = qword_27EFFD5E0;
  if (!qword_27EFFD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5E0);
  }

  return result;
}

unint64_t sub_24B4DD94C()
{
  result = qword_27EFFD5E8;
  if (!qword_27EFFD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5E8);
  }

  return result;
}

unint64_t sub_24B4DD9A4()
{
  result = qword_27EFFD5F0;
  if (!qword_27EFFD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5F0);
  }

  return result;
}

uint64_t sub_24B4DD9F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527940 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615472656E6E6162 && a2 == 0xEC00000064657070 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B527960 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B4DDB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BrowseLocalState.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B516BEC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24B4DDD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x800000024B527980 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B517EEC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B4DDDA4(uint64_t a1)
{
  v2 = sub_24B4DDF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DDDE0(uint64_t a1)
{
  v2 = sub_24B4DDF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD600, &qword_24B520F98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  sub_24B517FDC();
  sub_24B516BEC();
  sub_24B4DE9BC(&qword_27EFFD610);
  sub_24B517E6C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24B4DDF80()
{
  result = qword_27EFFD608;
  if (!qword_27EFFD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD608);
  }

  return result;
}

uint64_t BrowseLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD618, &qword_24B520FA0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for BrowseLocalState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B516BEC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  v17 = v22;
  sub_24B517FCC();
  if (!v17)
  {
    v18 = v21;
    sub_24B4DE9BC(&qword_27EFFD620);
    sub_24B517DBC();
    (*(v20 + 8))(v10, v7);
    sub_24B4DDBF8(v6, v14);
    sub_24B4DE2F8(v14, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4DE29C(v14);
}

uint64_t type metadata accessor for BrowseLocalState()
{
  result = qword_2810EE4E8;
  if (!qword_2810EE4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B4DE29C(uint64_t a1)
{
  v2 = type metadata accessor for BrowseLocalState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4DE2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseLocalState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4DE374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD600, &qword_24B520F98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  sub_24B517FDC();
  sub_24B516BEC();
  sub_24B4DE9BC(&qword_27EFFD610);
  sub_24B517E6C();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s15FitnessBrowsing16BrowseLocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD640, &qword_24B521158);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_24B4DDB80(a1, &v23 - v16);
  sub_24B4DDB80(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_24B4DDB80(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_24B4DE9BC(&qword_2810EED68);
      v21 = sub_24B517AAC();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_24B49689C(v17, &qword_27EFFD5F8, &qword_24B520F90);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_24B49689C(v17, &qword_27EFFD640, &qword_24B521158);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24B49689C(v17, &qword_27EFFD5F8, &qword_24B520F90);
  return 1;
}

void sub_24B4DE7E0()
{
  sub_24B4DE84C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B4DE84C()
{
  if (!qword_2810EED60)
  {
    sub_24B516BEC();
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810EED60);
    }
  }
}

unint64_t sub_24B4DE8B8()
{
  result = qword_27EFFD628;
  if (!qword_27EFFD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD628);
  }

  return result;
}

unint64_t sub_24B4DE910()
{
  result = qword_27EFFD630;
  if (!qword_27EFFD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD630);
  }

  return result;
}

unint64_t sub_24B4DE968()
{
  result = qword_27EFFD638;
  if (!qword_27EFFD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD638);
  }

  return result;
}

uint64_t sub_24B4DE9BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24B516BEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4DEA00()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_24B4DEA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E1020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4DEA84(uint64_t a1)
{
  v2 = sub_24B4DF65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEAC0(uint64_t a1)
{
  v2 = sub_24B4DF65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEAFC(uint64_t a1)
{
  v2 = sub_24B4DF758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEB38(uint64_t a1)
{
  v2 = sub_24B4DF758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4DEC20(uint64_t a1)
{
  v2 = sub_24B4DF704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEC5C(uint64_t a1)
{
  v2 = sub_24B4DF704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEC98(uint64_t a1)
{
  v2 = sub_24B4DF6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DECD4(uint64_t a1)
{
  v2 = sub_24B4DF6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseContent.sectionDescriptors.getter()
{
  v1 = type metadata accessor for BrowseGalleryDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditorialCollectionDetail();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4E0AC8(v0, v12, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0108(v12, v4, type metadata accessor for BrowseGalleryDescriptor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD040, &qword_24B521170);
      v14 = *(type metadata accessor for BrowseSectionDescriptor() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_24B521160;
      sub_24B4E0AC8(v4, v17 + v16, type metadata accessor for BrowseGalleryDescriptor);
      swift_storeEnumTagMultiPayload();
      sub_24B4E11B4(v4, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      return *v12;
    }
  }

  else
  {
    sub_24B4E0108(v12, v8, type metadata accessor for EditorialCollectionDetail);
    v17 = *&v8[*(v5 + 24)];

    sub_24B4E11B4(v8, type metadata accessor for EditorialCollectionDetail);
  }

  return v17;
}

uint64_t BrowseContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD648, &qword_24B521178);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD650, &qword_24B521180);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - v7;
  v42 = type metadata accessor for BrowseGalleryDescriptor();
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD658, &qword_24B521188);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for EditorialCollectionDetail();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BrowseContent();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD660, &unk_24B521190);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DF65C();
  sub_24B517FDC();
  sub_24B4E0AC8(v50, v21, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v43;
      sub_24B4E0108(v21, v43, type metadata accessor for BrowseGalleryDescriptor);
      v55 = 1;
      sub_24B4DF704();
      v29 = v44;
      v30 = v52;
      sub_24B517E3C();
      sub_24B4E0B78(&qword_27EFFCCE8, type metadata accessor for BrowseGalleryDescriptor);
      v31 = v46;
      sub_24B517EBC();
      (*(v45 + 8))(v29, v31);
      sub_24B4E11B4(v28, type metadata accessor for BrowseGalleryDescriptor);
      return (*(v51 + 8))(v25, v30);
    }

    else
    {
      v35 = *v21;
      v56 = 2;
      sub_24B4DF6B0();
      v36 = v47;
      v37 = v52;
      sub_24B517E3C();
      v53 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
      sub_24B4E006C(&qword_27EFFCB88, &qword_27EFFCB90);
      v38 = v49;
      sub_24B517EBC();
      (*(v48 + 8))(v36, v38);
      (*(v51 + 8))(v25, v37);
    }
  }

  else
  {
    sub_24B4E0108(v21, v17, type metadata accessor for EditorialCollectionDetail);
    v54 = 0;
    sub_24B4DF758();
    v33 = v52;
    sub_24B517E3C();
    sub_24B4E0B78(&qword_27EFFD688, type metadata accessor for EditorialCollectionDetail);
    v34 = v41;
    sub_24B517EBC();
    (*(v40 + 8))(v13, v34);
    sub_24B4E11B4(v17, type metadata accessor for EditorialCollectionDetail);
    return (*(v51 + 8))(v25, v33);
  }
}

unint64_t sub_24B4DF65C()
{
  result = qword_27EFFD668;
  if (!qword_27EFFD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD668);
  }

  return result;
}

unint64_t sub_24B4DF6B0()
{
  result = qword_27EFFD670;
  if (!qword_27EFFD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD670);
  }

  return result;
}

unint64_t sub_24B4DF704()
{
  result = qword_27EFFD678;
  if (!qword_27EFFD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD678);
  }

  return result;
}

unint64_t sub_24B4DF758()
{
  result = qword_27EFFD680;
  if (!qword_27EFFD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD680);
  }

  return result;
}

uint64_t BrowseContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD690, &qword_24B5211A0);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v71 = &v57 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD698, &qword_24B5211A8);
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v70 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD6A0, &qword_24B5211B0);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v57 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD6A8, &unk_24B5211B8);
  v73 = *(v69 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v57 - v12;
  v14 = type metadata accessor for BrowseContent();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B4DF65C();
  v29 = v74;
  sub_24B517FCC();
  if (!v29)
  {
    v59 = v24;
    v60 = v21;
    v58 = v18;
    v30 = v70;
    v31 = v71;
    v61 = v26;
    v74 = v14;
    v32 = v72;
    v34 = v68;
    v33 = v69;
    v35 = sub_24B517E1C();
    v36 = (2 * *(v35 + 16)) | 1;
    v76 = v35;
    v77 = v35 + 32;
    v78 = 0;
    v79 = v36;
    v37 = sub_24B4A39B8();
    v38 = v33;
    if (v37 == 3 || v78 != v79 >> 1)
    {
      v43 = sub_24B517D0C();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v45 = v74;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v73 + 8))(v13, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        if (v37 == 1)
        {
          LOBYTE(v80) = 1;
          sub_24B4DF704();
          v39 = v33;
          sub_24B517D7C();
          v40 = v32;
          type metadata accessor for BrowseGalleryDescriptor();
          sub_24B4E0B78(&qword_27EFFCD68, type metadata accessor for BrowseGalleryDescriptor);
          v41 = v60;
          v42 = v64;
          sub_24B517E0C();
          (*(v66 + 8))(v30, v42);
          (*(v73 + 8))(v13, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v55 = v41;
        }

        else
        {
          LOBYTE(v80) = 2;
          sub_24B4DF6B0();
          sub_24B517D7C();
          v40 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
          sub_24B4E006C(&qword_27EFFCBA8, &qword_27EFFCBB0);
          v53 = v65;
          sub_24B517E0C();
          v54 = v73;
          (*(v67 + 8))(v31, v53);
          (*(v54 + 8))(v13, v33);
          swift_unknownObjectRelease();
          v56 = v58;
          *v58 = v80;
          swift_storeEnumTagMultiPayload();
          v55 = v56;
        }

        v52 = v61;
        sub_24B4E0108(v55, v61, type metadata accessor for BrowseContent);
      }

      else
      {
        LOBYTE(v80) = 0;
        sub_24B4DF758();
        v48 = v34;
        v49 = v33;
        sub_24B517D7C();
        type metadata accessor for EditorialCollectionDetail();
        sub_24B4E0B78(&qword_27EFFD6B0, type metadata accessor for EditorialCollectionDetail);
        v50 = v59;
        v51 = v62;
        sub_24B517E0C();
        (*(v63 + 8))(v48, v51);
        (*(v73 + 8))(v13, v49);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v52 = v61;
        sub_24B4E0108(v50, v61, type metadata accessor for BrowseContent);
        v40 = v32;
      }

      sub_24B4E0108(v52, v40, type metadata accessor for BrowseContent);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_24B4E006C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4E0B78(a2, type metadata accessor for BrowseSectionDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4E0108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseContent.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for BrowseGalleryDescriptor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseSectionDescriptor();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for EditorialCollectionDetail();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BrowseContent();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4E0AC8(v1, v21, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0108(v21, v6, type metadata accessor for BrowseGalleryDescriptor);
      MEMORY[0x24C241D70](1);
      BrowseDisplayStyle.rawValue.getter(*v6);
      sub_24B517B3C();

      v23 = *(v6 + 1);
      v24 = *(v6 + 2);
      sub_24B517B3C();
      sub_24B4844E8(a1, *(v6 + 3));
      MEMORY[0x24C241D70](v6[32]);
      v25 = *(v3 + 32);
      sub_24B516B8C();
      sub_24B4E0B78(&qword_2810EED98, MEMORY[0x277CC8C40]);
      sub_24B517A9C();
      return sub_24B4E11B4(v6, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      v32 = *v21;
      MEMORY[0x24C241D70](2);
      MEMORY[0x24C241D70](*(v32 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v35 = *(v37 + 72);
        do
        {
          sub_24B4E0AC8(v34, v11, type metadata accessor for BrowseSectionDescriptor);
          BrowseSectionDescriptor.hash(into:)(a1);
          sub_24B4E11B4(v11, type metadata accessor for BrowseSectionDescriptor);
          v34 += v35;
          --v33;
        }

        while (v33);
      }
    }
  }

  else
  {
    sub_24B4E0108(v21, v17, type metadata accessor for EditorialCollectionDetail);
    MEMORY[0x24C241D70](0);
    sub_24B4AF9C8(a1);
    v27 = &v17[*(v14 + 20)];
    EditorialCollection.hash(into:)(a1);
    v28 = *&v17[*(v14 + 24)];
    MEMORY[0x24C241D70](*(v28 + 16));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v28 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v31 = *(v37 + 72);
      do
      {
        sub_24B4E0AC8(v30, v13, type metadata accessor for BrowseSectionDescriptor);
        BrowseSectionDescriptor.hash(into:)(a1);
        sub_24B4E11B4(v13, type metadata accessor for BrowseSectionDescriptor);
        v30 += v31;
        --v29;
      }

      while (v29);
    }

    return sub_24B4E11B4(v17, type metadata accessor for EditorialCollectionDetail);
  }
}

uint64_t BrowseContent.hashValue.getter()
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E064C()
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E0690()
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing13BrowseContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseGalleryDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditorialCollectionDetail();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrowseContent();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD720, &unk_24B521730);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v34 - v24;
  v26 = *(v23 + 56);
  sub_24B4E0AC8(a1, &v34 - v24, type metadata accessor for BrowseContent);
  sub_24B4E0AC8(a2, &v25[v26], type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0AC8(v25, v18, type metadata accessor for BrowseContent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v35;
        sub_24B4E0108(&v25[v26], v35, type metadata accessor for BrowseGalleryDescriptor);
        v29 = _s15FitnessBrowsing23BrowseGalleryDescriptorV2eeoiySbAC_ACtFZ_0(v18, v28);
        sub_24B4E11B4(v28, type metadata accessor for BrowseGalleryDescriptor);
        v30 = v18;
        v31 = type metadata accessor for BrowseGalleryDescriptor;
LABEL_13:
        sub_24B4E11B4(v30, v31);
        goto LABEL_14;
      }

      sub_24B4E11B4(v18, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      sub_24B4E0AC8(v25, v15, type metadata accessor for BrowseContent);
      v32 = *v15;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = sub_24B4840D8(v32, *&v25[v26]);

LABEL_14:
        sub_24B4E11B4(v25, type metadata accessor for BrowseContent);
        return v29 & 1;
      }
    }
  }

  else
  {
    sub_24B4E0AC8(v25, v20, type metadata accessor for BrowseContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24B4E0108(&v25[v26], v10, type metadata accessor for EditorialCollectionDetail);
      v29 = _s15FitnessBrowsing25EditorialCollectionDetailV2eeoiySbAC_ACtFZ_0(v20, v10);
      sub_24B4E11B4(v10, type metadata accessor for EditorialCollectionDetail);
      v30 = v20;
      v31 = type metadata accessor for EditorialCollectionDetail;
      goto LABEL_13;
    }

    sub_24B4E11B4(v20, type metadata accessor for EditorialCollectionDetail);
  }

  sub_24B4E114C(v25);
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_24B4E0AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4E0B78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4E0C04()
{
  result = qword_27EFFD6C0;
  if (!qword_27EFFD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6C0);
  }

  return result;
}

unint64_t sub_24B4E0C5C()
{
  result = qword_27EFFD6C8;
  if (!qword_27EFFD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6C8);
  }

  return result;
}

unint64_t sub_24B4E0CB4()
{
  result = qword_27EFFD6D0;
  if (!qword_27EFFD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6D0);
  }

  return result;
}

unint64_t sub_24B4E0D0C()
{
  result = qword_27EFFD6D8;
  if (!qword_27EFFD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6D8);
  }

  return result;
}

unint64_t sub_24B4E0D64()
{
  result = qword_27EFFD6E0;
  if (!qword_27EFFD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6E0);
  }

  return result;
}

unint64_t sub_24B4E0DBC()
{
  result = qword_27EFFD6E8;
  if (!qword_27EFFD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6E8);
  }

  return result;
}

unint64_t sub_24B4E0E14()
{
  result = qword_27EFFD6F0;
  if (!qword_27EFFD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6F0);
  }

  return result;
}

unint64_t sub_24B4E0E6C()
{
  result = qword_27EFFD6F8;
  if (!qword_27EFFD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6F8);
  }

  return result;
}

unint64_t sub_24B4E0EC4()
{
  result = qword_27EFFD700;
  if (!qword_27EFFD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD700);
  }

  return result;
}

unint64_t sub_24B4E0F1C()
{
  result = qword_27EFFD708;
  if (!qword_27EFFD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD708);
  }

  return result;
}

unint64_t sub_24B4E0F74()
{
  result = qword_27EFFD710;
  if (!qword_27EFFD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD710);
  }

  return result;
}

unint64_t sub_24B4E0FCC()
{
  result = qword_27EFFD718;
  if (!qword_27EFFD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD718);
  }

  return result;
}

uint64_t sub_24B4E1020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000024B5279A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B5279C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

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

uint64_t sub_24B4E114C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD720, &unk_24B521730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E11B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E1218()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x6E694C6F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7241726564616568;
  }
}

uint64_t sub_24B4E127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E3484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E12A4(uint64_t a1)
{
  v2 = sub_24B4E2DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E12E0(uint64_t a1)
{
  v2 = sub_24B4E2DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E131C(uint64_t a1)
{
  v2 = sub_24B4E2F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E1358(uint64_t a1)
{
  v2 = sub_24B4E2F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E1394(uint64_t a1)
{
  v2 = sub_24B4E2ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E13D0(uint64_t a1)
{
  v2 = sub_24B4E2ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E140C(uint64_t a1)
{
  v2 = sub_24B4E2E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E1448(uint64_t a1)
{
  v2 = sub_24B4E2E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD728, &qword_24B521740);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v39 - v4;
  v47 = type metadata accessor for BrowseDetailVideoLinkItem();
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD730, &qword_24B521748);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v42 = type metadata accessor for BrowseDetailTextItem();
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD738, &qword_24B521750);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v39 = type metadata accessor for BrowseDetailArtworkItem();
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BrowseDetailContent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD740, &qword_24B521758);
  v23 = *(v53 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v53);
  v26 = &v39 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E2DC0();
  sub_24B517FDC();
  sub_24B4E2E14(v52, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = type metadata accessor for BrowseDetailTextItem;
      v31 = v43;
      sub_24B4E2F74(v22, v43, type metadata accessor for BrowseDetailTextItem);
      v55 = 1;
      sub_24B4E2ECC();
      v32 = v44;
      v33 = v53;
      sub_24B517E3C();
      sub_24B4E3674(&qword_27EFFD768, type metadata accessor for BrowseDetailTextItem);
      v34 = v46;
      sub_24B517EBC();
      v35 = v45;
    }

    else
    {
      v30 = type metadata accessor for BrowseDetailVideoLinkItem;
      v31 = v48;
      sub_24B4E2F74(v22, v48, type metadata accessor for BrowseDetailVideoLinkItem);
      v56 = 2;
      sub_24B4E2E78();
      v32 = v49;
      v33 = v53;
      sub_24B517E3C();
      sub_24B4E3674(&qword_27EFFD758, type metadata accessor for BrowseDetailVideoLinkItem);
      v34 = v51;
      sub_24B517EBC();
      v35 = v50;
    }

    (*(v35 + 8))(v32, v34);
    sub_24B4E3614(v31, v30);
    return (*v29)(v26, v33);
  }

  else
  {
    sub_24B4E2F74(v22, v18, type metadata accessor for BrowseDetailArtworkItem);
    v54 = 0;
    sub_24B4E2F20();
    v36 = v53;
    sub_24B517E3C();
    sub_24B4E3674(&qword_27EFFD778, type metadata accessor for BrowseDetailArtworkItem);
    v37 = v41;
    sub_24B517EBC();
    (*(v40 + 8))(v15, v37);
    sub_24B4E3614(v18, type metadata accessor for BrowseDetailArtworkItem);
    return (*v29)(v26, v36);
  }
}

uint64_t BrowseDetailContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD780, &qword_24B521760);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD788, &qword_24B521768);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD790, &qword_24B521770);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD798, &unk_24B521778);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for BrowseDetailContent();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B4E2DC0();
  v33 = v78;
  sub_24B517FCC();
  if (!v33)
  {
    v62 = v25;
    v63 = v28;
    v64 = v22;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_24B517E1C();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_24B4A39B8();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_24B517D0C();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v47 = v65;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_24B4E2ECC();
          v42 = v78;
          sub_24B517D7C();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for BrowseDetailTextItem();
          sub_24B4E3674(&qword_27EFFD7A8, type metadata accessor for BrowseDetailTextItem);
          v58 = v62;
          v59 = v68;
          sub_24B517E0C();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_24B4E2E78();
          v53 = v37;
          v54 = v78;
          sub_24B517D7C();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for BrowseDetailVideoLinkItem();
          sub_24B4E3674(&qword_27EFFD7A0, type metadata accessor for BrowseDetailVideoLinkItem);
          v56 = v64;
          v57 = v70;
          sub_24B517E0C();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_24B4E2F74(v51, v78, type metadata accessor for BrowseDetailContent);
        sub_24B4E2F74(v60, v43, type metadata accessor for BrowseDetailContent);
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }

      v84 = 0;
      sub_24B4E2F20();
      v50 = v78;
      sub_24B517D7C();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for BrowseDetailArtworkItem();
        sub_24B4E3674(&qword_27EFFD7B0, type metadata accessor for BrowseDetailArtworkItem);
        v51 = v63;
        v52 = v67;
        sub_24B517E0C();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t BrowseDetailContent.hash(into:)()
{
  v1 = type metadata accessor for BrowseDetailVideoLinkItem();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseDetailTextItem();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseDetailArtworkItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BrowseDetailContent();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4E2E14(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E2F74(v16, v8, type metadata accessor for BrowseDetailTextItem);
      MEMORY[0x24C241D70](1);
      BrowseDetailTextItem.hash(into:)();
      v18 = v8;
      v19 = type metadata accessor for BrowseDetailTextItem;
    }

    else
    {
      sub_24B4E2F74(v16, v4, type metadata accessor for BrowseDetailVideoLinkItem);
      MEMORY[0x24C241D70](2);
      sub_24B516B8C();
      sub_24B4E3674(&qword_2810EED98, MEMORY[0x277CC8C40]);
      sub_24B517A9C();
      v20 = &v4[*(v1 + 20)];
      v21 = *v20;
      v22 = *(v20 + 1);
      sub_24B517B3C();
      v23 = &v4[*(v1 + 24)];
      v24 = *v23;
      v25 = *(v23 + 1);
      sub_24B517B3C();
      if (*(v23 + 3))
      {
        v26 = *(v23 + 2);
        sub_24B517F9C();
        sub_24B517B3C();
      }

      else
      {
        sub_24B517F9C();
      }

      v27 = *(type metadata accessor for VideoAsset() + 24);
      sub_24B516BAC();
      sub_24B4E3674(&qword_2810EED80, MEMORY[0x277CC9260]);
      sub_24B517A9C();
      v19 = type metadata accessor for BrowseDetailVideoLinkItem;
      v18 = v4;
    }
  }

  else
  {
    sub_24B4E2F74(v16, v12, type metadata accessor for BrowseDetailArtworkItem);
    MEMORY[0x24C241D70](0);
    sub_24B4E3674(&qword_27EFFCA88, type metadata accessor for BrowseDetailArtworkItem);
    sub_24B517A9C();
    v18 = v12;
    v19 = type metadata accessor for BrowseDetailArtworkItem;
  }

  return sub_24B4E3614(v18, v19);
}

uint64_t BrowseDetailContent.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4E27C8()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4E280C()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing19BrowseDetailContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v49 = type metadata accessor for BrowseDetailVideoLinkItem();
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseDetailTextItem();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseDetailArtworkItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BrowseDetailContent();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD820, &qword_24B521CD8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v48 - v26;
  v28 = *(v25 + 56);
  sub_24B4E2E14(a1, &v48 - v26);
  sub_24B4E2E14(v51, &v27[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B4E2E14(v27, v22);
    if (swift_getEnumCaseMultiPayload())
    {
      v31 = type metadata accessor for BrowseDetailArtworkItem;
      v32 = v22;
LABEL_18:
      sub_24B4E3614(v32, v31);
      sub_24B4E35AC(v27);
LABEL_28:
      v30 = 0;
      return v30 & 1;
    }

    sub_24B4E2F74(&v27[v28], v12, type metadata accessor for BrowseDetailArtworkItem);
    type metadata accessor for BrowseArtwork();
    sub_24B4E3674(qword_2810EE948, type metadata accessor for BrowseArtwork);
    if (sub_24B516CBC())
    {
      if (v43 = *(v9 + 20), v44 = *&v22[v43], v45 = *&v22[v43 + 8], v46 = &v12[v43], v44 == *v46) && v45 == *(v46 + 1) || (sub_24B517EEC())
      {
        v39 = type metadata accessor for BrowseDetailArtworkItem;
        sub_24B4E3614(v12, type metadata accessor for BrowseDetailArtworkItem);
        v40 = v22;
        goto LABEL_25;
      }
    }

    v41 = type metadata accessor for BrowseDetailArtworkItem;
    sub_24B4E3614(v12, type metadata accessor for BrowseDetailArtworkItem);
    v42 = v22;
LABEL_27:
    sub_24B4E3614(v42, v41);
    sub_24B4E3614(v27, type metadata accessor for BrowseDetailContent);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B4E2E14(v27, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = type metadata accessor for BrowseDetailVideoLinkItem;
      v32 = v17;
      goto LABEL_18;
    }

    v33 = v50;
    sub_24B4E2F74(&v27[v28], v50, type metadata accessor for BrowseDetailVideoLinkItem);
    if (sub_24B516B7C())
    {
      v34 = *(v49 + 20);
      v35 = *&v17[v34];
      v36 = *&v17[v34 + 8];
      v37 = (v33 + v34);
      v38 = v35 == *v37 && v36 == v37[1];
      if (v38 || (sub_24B517EEC()) && (_s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0(&v17[*(v49 + 24)], (v33 + *(v49 + 24))))
      {
        v39 = type metadata accessor for BrowseDetailVideoLinkItem;
        sub_24B4E3614(v33, type metadata accessor for BrowseDetailVideoLinkItem);
        v40 = v17;
LABEL_25:
        sub_24B4E3614(v40, v39);
        sub_24B4E3614(v27, type metadata accessor for BrowseDetailContent);
        v30 = 1;
        return v30 & 1;
      }
    }

    v41 = type metadata accessor for BrowseDetailVideoLinkItem;
    sub_24B4E3614(v33, type metadata accessor for BrowseDetailVideoLinkItem);
    v42 = v17;
    goto LABEL_27;
  }

  sub_24B4E2E14(v27, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = type metadata accessor for BrowseDetailTextItem;
    v32 = v20;
    goto LABEL_18;
  }

  sub_24B4E2F74(&v27[v28], v8, type metadata accessor for BrowseDetailTextItem);
  v30 = _s15FitnessBrowsing20BrowseDetailTextItemV2eeoiySbAC_ACtFZ_0(v20, v8);
  sub_24B4E3614(v8, type metadata accessor for BrowseDetailTextItem);
  sub_24B4E3614(v20, type metadata accessor for BrowseDetailTextItem);
  sub_24B4E3614(v27, type metadata accessor for BrowseDetailContent);
  return v30 & 1;
}

unint64_t sub_24B4E2DC0()
{
  result = qword_27EFFD748;
  if (!qword_27EFFD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD748);
  }

  return result;
}

uint64_t sub_24B4E2E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4E2E78()
{
  result = qword_27EFFD750;
  if (!qword_27EFFD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD750);
  }

  return result;
}

unint64_t sub_24B4E2ECC()
{
  result = qword_27EFFD760;
  if (!qword_27EFFD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD760);
  }

  return result;
}

unint64_t sub_24B4E2F20()
{
  result = qword_27EFFD770;
  if (!qword_27EFFD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD770);
  }

  return result;
}

uint64_t sub_24B4E2F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4E3068()
{
  result = qword_27EFFD7C0;
  if (!qword_27EFFD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7C0);
  }

  return result;
}

unint64_t sub_24B4E30C0()
{
  result = qword_27EFFD7C8;
  if (!qword_27EFFD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7C8);
  }

  return result;
}

unint64_t sub_24B4E3118()
{
  result = qword_27EFFD7D0;
  if (!qword_27EFFD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7D0);
  }

  return result;
}

unint64_t sub_24B4E3170()
{
  result = qword_27EFFD7D8;
  if (!qword_27EFFD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7D8);
  }

  return result;
}

unint64_t sub_24B4E31C8()
{
  result = qword_27EFFD7E0;
  if (!qword_27EFFD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7E0);
  }

  return result;
}

unint64_t sub_24B4E3220()
{
  result = qword_27EFFD7E8;
  if (!qword_27EFFD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7E8);
  }

  return result;
}

unint64_t sub_24B4E3278()
{
  result = qword_27EFFD7F0;
  if (!qword_27EFFD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7F0);
  }

  return result;
}

unint64_t sub_24B4E32D0()
{
  result = qword_27EFFD7F8;
  if (!qword_27EFFD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7F8);
  }

  return result;
}

unint64_t sub_24B4E3328()
{
  result = qword_27EFFD800;
  if (!qword_27EFFD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD800);
  }

  return result;
}

unint64_t sub_24B4E3380()
{
  result = qword_27EFFD808;
  if (!qword_27EFFD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD808);
  }

  return result;
}

unint64_t sub_24B4E33D8()
{
  result = qword_27EFFD810;
  if (!qword_27EFFD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD810);
  }

  return result;
}

unint64_t sub_24B4E3430()
{
  result = qword_27EFFD818;
  if (!qword_27EFFD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD818);
  }

  return result;
}

uint64_t sub_24B4E3484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241726564616568 && a2 == 0xED00006B726F7774;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E694C6F65646976 && a2 == 0xE90000000000006BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4E35AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD820, &qword_24B521CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E3614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E3674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BrowseLazyItem.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4ABD68(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[2];
    v11 = v9[4];
    v12 = v9[6];
    v13 = v9[7];
    v14 = v9[8];
  }

  else
  {
    sub_24B4850B8(v9, v5);
    v15 = &v5[*(v2 + 68)];
    v13 = *v15;
    v16 = *(v15 + 1);

    sub_24B4E3800(v5);
  }

  return v13;
}

uint64_t sub_24B4E3800(uint64_t a1)
{
  v2 = type metadata accessor for BrowseItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseLazyItem.referenceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4ABD68(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 2);
    v11 = *(v9 + 4);
    v12 = *(v9 + 6);
    v13 = *(v9 + 8);
    v14 = v9[72];
  }

  else
  {
    sub_24B4850B8(v9, v5);
    v14 = v5[*(v2 + 72)];
    sub_24B4E3800(v5);
  }

  return v14;
}

uint64_t BrowseGalleryDescriptor.init(displayStyle:identifier:items:preferredInsetBehavior:title:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  v9 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
  v10 = sub_24B516B8C();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t BrowseGalleryDescriptor.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BrowseGalleryDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24B4E3AF8()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x736D657469;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_24B4E3B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E4CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E3BC4(uint64_t a1)
{
  v2 = sub_24B4E493C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E3C00(uint64_t a1)
{
  v2 = sub_24B4E493C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseGalleryDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD828, &unk_24B521CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E493C();
  sub_24B517FDC();
  v19 = *v3;
  v18 = 0;
  sub_24B49B688();
  sub_24B517EBC();
  if (!v2)
  {
    v11 = *(v3 + 1);
    v12 = *(v3 + 2);
    v17 = 1;
    sub_24B517E7C();
    v16 = *(v3 + 3);
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B4E4990(&qword_27EFFBDB8, &qword_27EFFBDC0);
    sub_24B517EBC();
    v15[14] = v3[32];
    v15[13] = 3;
    sub_24B4D1A2C();
    sub_24B517EBC();
    v13 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
    v15[12] = 4;
    sub_24B516B8C();
    sub_24B4E4B34(&qword_27EFFC510, MEMORY[0x277CC8C40]);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BrowseGalleryDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24B516B8C();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD838, &qword_24B521D00);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  v10 = type metadata accessor for BrowseGalleryDescriptor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4E493C();
  v16 = v29;
  sub_24B517FCC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v17 = v13;
  v19 = v26;
  v18 = v27;
  v37 = 0;
  sub_24B49C974();
  sub_24B517E0C();
  *v17 = v38;
  v36 = 1;
  *(v17 + 8) = sub_24B517DCC();
  *(v17 + 16) = v20;
  v29 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  v35 = 2;
  sub_24B4E4990(&qword_27EFFBDD0, &qword_27EFFBDD8);
  sub_24B517E0C();
  *(v17 + 24) = v31;
  v33 = 3;
  sub_24B4D1B28();
  sub_24B517E0C();
  *(v17 + 32) = v34;
  v32 = 4;
  sub_24B4E4B34(&qword_27EFFC588, MEMORY[0x277CC8C40]);
  v21 = v6;
  v22 = v28;
  sub_24B517E0C();
  (*(v19 + 8))(v9, v22);
  (*(v25 + 32))(v17 + *(v10 + 32), v21, v3);
  sub_24B4E4A2C(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24B4E4A90(v17);
}

uint64_t BrowseGalleryDescriptor.hash(into:)(__int128 *a1)
{
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_24B517B3C();
  sub_24B4844E8(a1, *(v1 + 24));
  MEMORY[0x24C241D70](*(v1 + 32));
  v5 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40]);
  return sub_24B517A9C();
}

uint64_t BrowseGalleryDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v0);
  sub_24B517B3C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24B517B3C();
  sub_24B4844E8(v5, *(v0 + 24));
  MEMORY[0x24C241D70](*(v0 + 32));
  v3 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4E456C(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_24B517B3C();
  sub_24B4844E8(v7, *(v1 + 24));
  MEMORY[0x24C241D70](*(v1 + 32));
  v5 = *(a1 + 32);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4E4658(__int128 *a1, uint64_t a2)
{
  BrowseDisplayStyle.rawValue.getter(*v2);
  sub_24B517B3C();

  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_24B517B3C();
  sub_24B4844E8(a1, *(v2 + 24));
  MEMORY[0x24C241D70](*(v2 + 32));
  v7 = *(a2 + 32);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40]);
  return sub_24B517A9C();
}

uint64_t sub_24B4E472C(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v2);
  sub_24B517B3C();

  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_24B517B3C();
  sub_24B4844E8(v8, *(v2 + 24));
  MEMORY[0x24C241D70](*(v2 + 32));
  v6 = *(a2 + 32);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseGalleryDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = BrowseDisplayStyle.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == BrowseDisplayStyle.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24B517EEC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_24B517EEC() & 1) == 0 || (sub_24B483BA0(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v12 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);

  return sub_24B516B7C();
}

unint64_t sub_24B4E493C()
{
  result = qword_27EFFD830;
  if (!qword_27EFFD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD830);
  }

  return result;
}

uint64_t sub_24B4E4990(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B4E4B34(a2, type metadata accessor for BrowseLazyItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4E4A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseGalleryDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4E4A90(uint64_t a1)
{
  v2 = type metadata accessor for BrowseGalleryDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E4B34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4E4BB8()
{
  result = qword_27EFFD848;
  if (!qword_27EFFD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD848);
  }

  return result;
}

unint64_t sub_24B4E4C10()
{
  result = qword_27EFFD850;
  if (!qword_27EFFD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD850);
  }

  return result;
}

unint64_t sub_24B4E4C68()
{
  result = qword_27EFFD858;
  if (!qword_27EFFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD858);
  }

  return result;
}

uint64_t sub_24B4E4CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B517EEC();

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

id sub_24B4E4E9C()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F017B80 = result;
  return result;
}

uint64_t NewAndFeaturedDescriptor.canonicalIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NewAndFeaturedDescriptor.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NewAndFeaturedDescriptor.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewAndFeaturedDescriptor() + 32);

  return sub_24B4D1850(v3, a1);
}

uint64_t NewAndFeaturedDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewAndFeaturedDescriptor() + 36);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewAndFeaturedDescriptor.init(canonicalIdentifier:displayStyle:identifier:mediaType:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  v12 = type metadata accessor for NewAndFeaturedDescriptor();
  sub_24B4D18C0(a7, a9 + *(v12 + 32));
  v13 = *(v12 + 36);
  v14 = sub_24B516B8C();
  v15 = *(*(v14 - 8) + 32);

  return v15(a9 + v13, a8, v14);
}

unint64_t sub_24B4E50D4()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x707954616964656DLL;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696669746E656469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_24B4E51A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E645C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E51C8(uint64_t a1)
{
  v2 = sub_24B4E6118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E5204(uint64_t a1)
{
  v2 = sub_24B4E6118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD860, &qword_24B521F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E6118();
  sub_24B517FDC();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  sub_24B517E7C();
  if (!v2)
  {
    v26 = *(v3 + 16);
    v25 = 1;
    sub_24B49B688();
    sub_24B517EBC();
    v13 = v3[3];
    v14 = v3[4];
    v24 = 2;
    sub_24B517E7C();
    v23 = *(v3 + 40);
    v22 = 3;
    sub_24B4E616C();
    sub_24B517EBC();
    v15 = type metadata accessor for NewAndFeaturedDescriptor();
    v16 = *(v15 + 32);
    v21 = 4;
    sub_24B516B8C();
    sub_24B47B6E4(&qword_27EFFC510, MEMORY[0x277CC8C40]);
    sub_24B517E6C();
    v17 = *(v15 + 36);
    v20 = 5;
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NewAndFeaturedDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_24B516B8C();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD878, &qword_24B521F30);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for NewAndFeaturedDescriptor();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B4E6118();
  v38 = v14;
  v21 = v39;
  sub_24B517FCC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v39 = v6;
  v48 = 0;
  v22 = v36;
  *v18 = sub_24B517DCC();
  *(v18 + 1) = v24;
  v33 = v24;
  v46 = 1;
  sub_24B49C974();
  sub_24B517E0C();
  v25 = v22;
  v18[16] = v47;
  v45 = 2;
  *(v18 + 3) = sub_24B517DCC();
  *(v18 + 4) = v26;
  v43 = 3;
  sub_24B4E61C0();
  sub_24B517E0C();
  v33 = 0;
  v18[40] = v44;
  v42 = 4;
  sub_24B47B6E4(&qword_27EFFC588, MEMORY[0x277CC8C40]);
  v27 = v33;
  sub_24B517DBC();
  v33 = v27;
  if (v27)
  {
    (*(v22 + 8))(v38, v37);
    v28 = 0;
  }

  else
  {
    sub_24B4D18C0(v10, &v18[*(v15 + 32)]);
    v41 = 5;
    v31 = v39;
    v32 = v33;
    sub_24B517E0C();
    v33 = v32;
    if (!v32)
    {
      (*(v25 + 8))(v38, v37);
      (*(v34 + 32))(&v18[*(v15 + 36)], v31, v3);
      sub_24B4E6214(v18, v35);
      __swift_destroy_boxed_opaque_existential_1(v40);
      return sub_24B4E6278(v18);
    }

    (*(v25 + 8))(v38, v37);
    v28 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  v29 = *(v18 + 1);

  v30 = *(v18 + 4);

  if (v28)
  {
    return sub_24B49689C(&v18[*(v15 + 32)], &qword_27EFFC4E8, &qword_24B51F380);
  }

  return result;
}

uint64_t NewAndFeaturedDescriptor.hash(into:)()
{
  v1 = sub_24B516B8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_24B517B3C();
  BrowseDisplayStyle.rawValue.getter(*(v0 + 16));
  sub_24B517B3C();

  v12 = v0[3];
  v13 = v0[4];
  sub_24B517B3C();
  MEMORY[0x24C241D70](*(v0 + 40));
  v14 = type metadata accessor for NewAndFeaturedDescriptor();
  sub_24B4D1850(v0 + *(v14 + 32), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_24B517F9C();
    sub_24B47B6E4(&qword_2810EED98, MEMORY[0x277CC8C40]);
    sub_24B517A9C();
    (*(v2 + 8))(v5, v1);
  }

  v15 = *(v14 + 36);
  sub_24B47B6E4(&qword_2810EED98, MEMORY[0x277CC8C40]);
  return sub_24B517A9C();
}

uint64_t NewAndFeaturedDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4E5C9C()
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4E5CE0()
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing24NewAndFeaturedDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24B517EEC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v5;
  v17 = *(a2 + 16);
  v18 = BrowseDisplayStyle.rawValue.getter(*(a1 + 16));
  v20 = v19;
  if (v18 == BrowseDisplayStyle.rawValue.getter(v17) && v20 == v21)
  {
  }

  else
  {
    v22 = sub_24B517EEC();

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_24B517EEC() & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_18;
  }

  v23 = type metadata accessor for NewAndFeaturedDescriptor();
  v24 = *(v23 + 32);
  v25 = *(v13 + 48);
  sub_24B4D1850(a1 + v24, v16);
  sub_24B4D1850(a2 + v24, &v16[v25]);
  v26 = *(v34 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_24B49689C(v16, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_21:
      v32 = *(v23 + 36);
      v27 = sub_24B516B7C();
      return v27 & 1;
    }

    goto LABEL_17;
  }

  sub_24B4D1850(v16, v12);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    (*(v34 + 8))(v12, v4);
LABEL_17:
    sub_24B49689C(v16, &qword_27EFFC608, &qword_24B51F5B0);
    goto LABEL_18;
  }

  v29 = v34;
  (*(v34 + 32))(v8, &v16[v25], v4);
  sub_24B47B6E4(&qword_2810EED90, MEMORY[0x277CC8C40]);
  v30 = sub_24B517AAC();
  v31 = *(v29 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_24B49689C(v16, &qword_27EFFC4E8, &qword_24B51F380);
  if (v30)
  {
    goto LABEL_21;
  }

LABEL_18:
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_24B4E6118()
{
  result = qword_27EFFD868;
  if (!qword_27EFFD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD868);
  }

  return result;
}

unint64_t sub_24B4E616C()
{
  result = qword_27EFFD870;
  if (!qword_27EFFD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD870);
  }

  return result;
}

unint64_t sub_24B4E61C0()
{
  result = qword_27EFFD880;
  if (!qword_27EFFD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD880);
  }

  return result;
}

uint64_t sub_24B4E6214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewAndFeaturedDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4E6278(uint64_t a1)
{
  v2 = type metadata accessor for NewAndFeaturedDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B4E6358()
{
  result = qword_27EFFD890;
  if (!qword_27EFFD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD890);
  }

  return result;
}

unint64_t sub_24B4E63B0()
{
  result = qword_27EFFD898;
  if (!qword_27EFFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD898);
  }

  return result;
}

unint64_t sub_24B4E6408()
{
  result = qword_27EFFD8A0;
  if (!qword_27EFFD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8A0);
  }

  return result;
}

uint64_t sub_24B4E645C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000024B527A30 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B4E6688()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_24B4E66D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E7770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E6700(uint64_t a1)
{
  v2 = sub_24B4E6C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E673C(uint64_t a1)
{
  v2 = sub_24B4E6C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E6778(uint64_t a1)
{
  v2 = sub_24B4E6D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E67B4(uint64_t a1)
{
  v2 = sub_24B4E6D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E67F0(uint64_t a1)
{
  v2 = sub_24B4E6CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E682C(uint64_t a1)
{
  v2 = sub_24B4E6CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E6868(uint64_t a1)
{
  v2 = sub_24B4E6CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E68A4(uint64_t a1)
{
  v2 = sub_24B4E6CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseSizeClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8A8, &qword_24B522150);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8B0, &qword_24B522158);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8B8, &qword_24B522160);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8C0, &qword_24B522168);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E6C4C();
  sub_24B517FDC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24B4E6CF4();
      v12 = v26;
      sub_24B517E3C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24B4E6CA0();
      v12 = v29;
      sub_24B517E3C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24B4E6D48();
    sub_24B517E3C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_24B4E6C4C()
{
  result = qword_27EFFD8C8;
  if (!qword_27EFFD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8C8);
  }

  return result;
}

unint64_t sub_24B4E6CA0()
{
  result = qword_27EFFD8D0;
  if (!qword_27EFFD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8D0);
  }

  return result;
}

unint64_t sub_24B4E6CF4()
{
  result = qword_27EFFD8D8;
  if (!qword_27EFFD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8D8);
  }

  return result;
}

unint64_t sub_24B4E6D48()
{
  result = qword_27EFFD8E0;
  if (!qword_27EFFD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8E0);
  }

  return result;
}

uint64_t BrowseSizeClass.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8E8, &qword_24B522170);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8F0, &qword_24B522178);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8F8, &qword_24B522180);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD900, &unk_24B522188);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B4E6C4C();
  v20 = v43;
  sub_24B517FCC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_24B517E1C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_24B4A39B8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_24B517D0C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v30 = &type metadata for BrowseSizeClass;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_24B4E6CF4();
          sub_24B517D7C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_24B4E6CA0();
          v33 = v22;
          sub_24B517D7C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_24B4E6D48();
        sub_24B517D7C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t BrowseSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

unint64_t sub_24B4E73B4()
{
  result = qword_27EFFD908;
  if (!qword_27EFFD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD908);
  }

  return result;
}

unint64_t sub_24B4E745C()
{
  result = qword_27EFFD910;
  if (!qword_27EFFD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD910);
  }

  return result;
}

unint64_t sub_24B4E74B4()
{
  result = qword_27EFFD918;
  if (!qword_27EFFD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD918);
  }

  return result;
}

unint64_t sub_24B4E750C()
{
  result = qword_27EFFD920;
  if (!qword_27EFFD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD920);
  }

  return result;
}

unint64_t sub_24B4E7564()
{
  result = qword_27EFFD928;
  if (!qword_27EFFD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD928);
  }

  return result;
}

unint64_t sub_24B4E75BC()
{
  result = qword_27EFFD930;
  if (!qword_27EFFD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD930);
  }

  return result;
}

unint64_t sub_24B4E7614()
{
  result = qword_27EFFD938;
  if (!qword_27EFFD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD938);
  }

  return result;
}

unint64_t sub_24B4E766C()
{
  result = qword_27EFFD940;
  if (!qword_27EFFD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD940);
  }

  return result;
}

unint64_t sub_24B4E76C4()
{
  result = qword_27EFFD948;
  if (!qword_27EFFD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD948);
  }

  return result;
}

unint64_t sub_24B4E771C()
{
  result = qword_27EFFD950;
  if (!qword_27EFFD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD950);
  }

  return result;
}

uint64_t sub_24B4E7770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t BrowseTextAttributes.fontDescriptor.getter()
{
  v1 = *v0;
  sub_24B49A73C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return v1;
}

uint64_t BrowseTextAttributes.foregroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BrowseTextAttributes.init(fontDescriptor:foregroundColor:textAlignment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_24B4E7924()
{
  v1 = 0x756F726765726F66;
  if (*v0 != 1)
  {
    v1 = 0x67696C4174786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63736544746E6F66;
  }
}

uint64_t sub_24B4E79A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E8794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E79CC(uint64_t a1)
{
  v2 = sub_24B4E7C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E7A08(uint64_t a1)
{
  v2 = sub_24B4E7C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseTextAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD958, &qword_24B5225B0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  v21[0] = *(v1 + 40);
  v21[1] = v10;
  v27 = *(v1 + 48);
  v12 = a1[3];
  v11 = a1[4];
  v13 = *(v1 + 24);
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_24B49A73C(v7, v8, v9, v13);
  sub_24B4E7C74();
  sub_24B517FDC();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v13;
  v28 = 0;
  sub_24B4E7CC8();
  v17 = v21[2];
  sub_24B517E6C();
  sub_24B49B870(v7, v8, v9, v13);
  if (v17)
  {
    return (*(v22 + 8))(v6, v16);
  }

  v19 = v27;
  v20 = v22;
  LOBYTE(v23) = 1;
  sub_24B517E4C();
  LOBYTE(v23) = v19;
  v28 = 2;
  sub_24B4E7D1C();
  sub_24B517EBC();
  return (*(v20 + 8))(v6, v16);
}

unint64_t sub_24B4E7C74()
{
  result = qword_27EFFD960;
  if (!qword_27EFFD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD960);
  }

  return result;
}

unint64_t sub_24B4E7CC8()
{
  result = qword_27EFFD968;
  if (!qword_27EFFD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD968);
  }

  return result;
}

unint64_t sub_24B4E7D1C()
{
  result = qword_27EFFD970;
  if (!qword_27EFFD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD970);
  }

  return result;
}

uint64_t BrowseTextAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD978, &qword_24B5225B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E7C74();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  sub_24B4E8028();
  sub_24B517DBC();
  v11 = v23;
  v21 = v24;
  v22 = v25;
  v27 = v26;
  LOBYTE(v23) = 1;
  v19 = sub_24B517D9C();
  v20 = v12;
  v28 = 2;
  sub_24B4E807C();
  sub_24B517E0C();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  v14 = v11;
  v16 = v21;
  v15 = v22;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  LOBYTE(v11) = v27;
  *(a2 + 24) = v27;
  v17 = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v17;
  *(a2 + 48) = v13;
  sub_24B49A73C(v14, v16, v15, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B49B870(v14, v16, v15, v11);
}

unint64_t sub_24B4E8028()
{
  result = qword_27EFFD980;
  if (!qword_27EFFD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD980);
  }

  return result;
}

unint64_t sub_24B4E807C()
{
  result = qword_27EFFD988;
  if (!qword_27EFFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD988);
  }

  return result;
}

uint64_t BrowseTextAttributes.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (v3 == 255)
  {
    sub_24B517F9C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(v1 + 8);
    v7 = *(v1 + 16);
    v9 = *v1;
    sub_24B517F9C();
    BrowseFontDescriptor.hash(into:)(a1, v9, v8, v7, v3);
    if (v5)
    {
LABEL_3:
      sub_24B517F9C();
      sub_24B517B3C();
      goto LABEL_6;
    }
  }

  sub_24B517F9C();
LABEL_6:
  sub_24B517B3C();
}

uint64_t BrowseTextAttributes.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = v2;
  v7 = *(v0 + 32);
  v8 = v3;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v5);
  return sub_24B517FBC();
}

uint64_t sub_24B4E82D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = v2;
  v7 = *(v0 + 32);
  v8 = v3;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v5);
  return sub_24B517FBC();
}

uint64_t sub_24B4E8348()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = v2;
  v7 = *(v0 + 32);
  v8 = v3;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v5);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseTextAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  if (v2 == 255)
  {
    if (v6 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 255)
    {
      return 0;
    }

    v10 = *(a1 + 8);
    v18 = *a1;
    v19 = *(a2 + 32);
    v11 = *(a1 + 16);
    v21 = *(a2 + 48);
    v12 = *(a1 + 48);
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    v20 = *(a2 + 40);
    sub_24B49A750(*a2, v14, v15, v6);
    LOBYTE(v11) = _s15FitnessBrowsing20BrowseFontDescriptorO2eeoiySbAC_ACtFZ_0(v18, v10, v11, v2, v13, v14, v15, v6);
    v16 = v13;
    v5 = v12;
    v9 = v21;
    sub_24B49B870(v16, v14, v15, v6);
    v7 = v19;
    v8 = v20;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v8 || (v4 != v7 || v3 != v8) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

LABEL_11:

  return sub_24B4FE994(v5, v9);
}

unint64_t sub_24B4E851C()
{
  result = qword_27EFFD990;
  if (!qword_27EFFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD990);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessBrowsing20BrowseFontDescriptorOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B4E85AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24B4E8608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_24B4E8690()
{
  result = qword_27EFFD998;
  if (!qword_27EFFD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD998);
  }

  return result;
}

unint64_t sub_24B4E86E8()
{
  result = qword_27EFFD9A0;
  if (!qword_27EFFD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9A0);
  }

  return result;
}

unint64_t sub_24B4E8740()
{
  result = qword_27EFFD9A8;
  if (!qword_27EFFD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9A8);
  }

  return result;
}

uint64_t sub_24B4E8794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63736544746E6F66 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67696C4174786574 && a2 == 0xED0000746E656D6ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t BrowseTextAlignment.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7265746E6563;
  v2 = 1952867692;
  v3 = 0x6C61727574616ELL;
  if (a1 != 3)
  {
    v3 = 0x7468676972;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656966697473756ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4E8964(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7265746E6563;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  v8 = 0xE700000000000000;
  v9 = 0x6C61727574616ELL;
  if (v3 != 3)
  {
    v9 = 0x7468676972;
    v8 = 0xE500000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x656966697473756ALL;
  if (*a1)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v10 = 0x7265746E6563;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE600000000000000;
  v14 = 0xE400000000000000;
  v15 = 1952867692;
  v16 = 0xE700000000000000;
  v17 = 0x6C61727574616ELL;
  if (v5 != 3)
  {
    v17 = 0x7468676972;
    v16 = 0xE500000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x656966697473756ALL;
    v13 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_24B517EEC();
  }

  return v20 & 1;
}

uint64_t sub_24B4E8AD4()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4E8BAC()
{
  *v0;
  *v0;
  *v0;
  sub_24B517B3C();
}

uint64_t sub_24B4E8C70()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4E8D44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15FitnessBrowsing19BrowseTextAlignmentO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_24B4E8D74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  v7 = 0xE700000000000000;
  v8 = 0x6C61727574616ELL;
  if (v2 != 3)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656966697473756ALL;
    v3 = 0xE900000000000064;
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

uint64_t _s15FitnessBrowsing19BrowseTextAlignmentO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B517D6C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B4E8F18()
{
  result = qword_27EFFD9B0;
  if (!qword_27EFFD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9B0);
  }

  return result;
}

unint64_t sub_24B4E8F70()
{
  result = qword_27EFFD9B8;
  if (!qword_27EFFD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD9C0, &qword_24B522910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9B8);
  }

  return result;
}

unint64_t sub_24B4E8FE4()
{
  result = qword_27EFFD9C8;
  if (!qword_27EFFD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9C8);
  }

  return result;
}

uint64_t BrowseDetailDescriptor.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BrowseDetailDescriptor() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BrowseDetailDescriptor.init(content:identifier:preferredInsetBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24B4E9B38(a1, a5);
  result = type metadata accessor for BrowseDetailDescriptor();
  v10 = (a5 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t sub_24B4E912C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B4E9190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4E9E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4E91B8(uint64_t a1)
{
  v2 = sub_24B4E9B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E91F4(uint64_t a1)
{
  v2 = sub_24B4E9B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD9D0, &qword_24B5229D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E9B9C();
  sub_24B517FDC();
  v16[15] = 0;
  type metadata accessor for BrowseDetailContent();
  sub_24B4E9D00(&qword_27EFFCAD8, type metadata accessor for BrowseDetailContent);
  sub_24B517EBC();
  if (!v2)
  {
    v11 = type metadata accessor for BrowseDetailDescriptor();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 1;
    sub_24B517E7C();
    v16[13] = *(v3 + *(v11 + 24));
    v16[12] = 2;
    sub_24B4D1A2C();
    sub_24B517E6C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BrowseDetailDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for BrowseDetailContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD9E0, &qword_24B5229D8);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for BrowseDetailDescriptor();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E9B9C();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v24;
  v17 = v14;
  v30 = 0;
  sub_24B4E9D00(&qword_27EFFCB00, type metadata accessor for BrowseDetailContent);
  v18 = v25;
  sub_24B517E0C();
  sub_24B4E9B38(v26, v17);
  v29 = 1;
  v19 = sub_24B517DCC();
  v20 = (v17 + *(v11 + 20));
  *v20 = v19;
  v20[1] = v21;
  v27 = 2;
  sub_24B4D1B28();
  sub_24B517DBC();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v28;
  sub_24B4E9BF0(v17, v23, type metadata accessor for BrowseDetailDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4E9C58(v17, type metadata accessor for BrowseDetailDescriptor);
}

uint64_t BrowseDetailDescriptor.hash(into:)()
{
  BrowseDetailContent.hash(into:)();
  v1 = type metadata accessor for BrowseDetailDescriptor();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_24B517B3C();
  v5 = *(v0 + *(v1 + 24));
  if (v5 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v5 & 1);
}

uint64_t BrowseDetailDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  v1 = type metadata accessor for BrowseDetailDescriptor();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_24B517B3C();
  v5 = *(v0 + *(v1 + 24));
  sub_24B517F9C();
  if (v5 != 2)
  {
    MEMORY[0x24C241D70](v5 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4E9900(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_24B517B3C();
  v6 = *(v1 + *(a1 + 24));
  sub_24B517F9C();
  if (v6 != 2)
  {
    MEMORY[0x24C241D70](v6 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4E998C(uint64_t a1, uint64_t a2)
{
  BrowseDetailContent.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_24B517B3C();
  v7 = *(v2 + *(a2 + 24));
  if (v7 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v7 & 1);
}

uint64_t sub_24B4E9A04(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_24B517B3C();
  v7 = *(v2 + *(a2 + 24));
  sub_24B517F9C();
  if (v7 != 2)
  {
    MEMORY[0x24C241D70](v7 & 1);
  }

  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing22BrowseDetailDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static BrowseDetailContent.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BrowseDetailDescriptor();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = (v12 ^ v11) & 1;
    if (v12 == 2 || v14 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24B4E9B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4E9B9C()
{
  result = qword_27EFFD9D8;
  if (!qword_27EFFD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9D8);
  }

  return result;
}

uint64_t sub_24B4E9BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4E9C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E9D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4E9D84()
{
  result = qword_27EFFD9F0;
  if (!qword_27EFFD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9F0);
  }

  return result;
}

unint64_t sub_24B4E9DDC()
{
  result = qword_27EFFD9F8;
  if (!qword_27EFFD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9F8);
  }

  return result;
}

unint64_t sub_24B4E9E34()
{
  result = qword_27EFFDA00;
  if (!qword_27EFFDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA00);
  }

  return result;
}

uint64_t sub_24B4E9E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4E9FC8()
{
  v1 = 0x7552646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_24B4EA050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EA980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4EA078(uint64_t a1)
{
  v2 = sub_24B4EA70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA0B4(uint64_t a1)
{
  v2 = sub_24B4EA70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA0F0(uint64_t a1)
{
  v2 = sub_24B4EA85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA12C(uint64_t a1)
{
  v2 = sub_24B4EA85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA168(uint64_t a1)
{
  v2 = sub_24B4EA808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA1A4(uint64_t a1)
{
  v2 = sub_24B4EA808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA1E0(uint64_t a1)
{
  v2 = sub_24B4EA7B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA21C(uint64_t a1)
{
  v2 = sub_24B4EA7B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA258(uint64_t a1)
{
  v2 = sub_24B4EA760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA294(uint64_t a1)
{
  v2 = sub_24B4EA760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemMediaType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA08, &qword_24B522BF0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA10, &qword_24B522BF8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA18, &qword_24B522C00);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA20, &qword_24B522C08);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA28, &qword_24B522C10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4EA70C();
  sub_24B517FDC();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24B4EA7B4();
      v12 = v29;
      sub_24B517E3C();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24B4EA760();
      v12 = v32;
      sub_24B517E3C();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24B4EA808();
    sub_24B517E3C();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24B4EA85C();
  sub_24B517E3C();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_24B4EA70C()
{
  result = qword_27EFFDA30;
  if (!qword_27EFFDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA30);
  }

  return result;
}

unint64_t sub_24B4EA760()
{
  result = qword_27EFFDA38;
  if (!qword_27EFFDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA38);
  }

  return result;
}

unint64_t sub_24B4EA7B4()
{
  result = qword_27EFFDA40;
  if (!qword_27EFFDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA40);
  }

  return result;
}

unint64_t sub_24B4EA808()
{
  result = qword_27EFFDA48;
  if (!qword_27EFFDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA48);
  }

  return result;
}

unint64_t sub_24B4EA85C()
{
  result = qword_27EFFDA50;
  if (!qword_27EFFDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA50);
  }

  return result;
}

void *sub_24B4EA8C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B4EAAF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t BrowseItemMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4EA980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

void *sub_24B4EAAF4(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAB8, &qword_24B5230F0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAC0, &qword_24B5230F8);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAC8, &qword_24B523100);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAD0, &qword_24B523108);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAD8, &unk_24B523110);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B4EA70C();
  v21 = v50;
  sub_24B517FCC();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24B517E1C();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24B4A39B4();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24B4EA808();
        v36 = v40;
        sub_24B517D7C();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24B4EA85C();
        v29 = v40;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24B4EA7B4();
      v35 = v40;
      sub_24B517D7C();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24B4EA760();
      v37 = v40;
      sub_24B517D7C();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24B517D0C();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
  *v15 = &type metadata for BrowseItemMediaType;
  sub_24B517D8C();
  sub_24B517CFC();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_24B4EB138()
{
  result = qword_27EFFDA58;
  if (!qword_27EFFDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA58);
  }

  return result;
}

unint64_t sub_24B4EB1F0()
{
  result = qword_27EFFDA60;
  if (!qword_27EFFDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA60);
  }

  return result;
}

unint64_t sub_24B4EB248()
{
  result = qword_27EFFDA68;
  if (!qword_27EFFDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA68);
  }

  return result;
}

unint64_t sub_24B4EB2A0()
{
  result = qword_27EFFDA70;
  if (!qword_27EFFDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA70);
  }

  return result;
}

unint64_t sub_24B4EB2F8()
{
  result = qword_27EFFDA78;
  if (!qword_27EFFDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA78);
  }

  return result;
}

unint64_t sub_24B4EB350()
{
  result = qword_27EFFDA80;
  if (!qword_27EFFDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA80);
  }

  return result;
}

unint64_t sub_24B4EB3A8()
{
  result = qword_27EFFDA88;
  if (!qword_27EFFDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA88);
  }

  return result;
}

unint64_t sub_24B4EB400()
{
  result = qword_27EFFDA90;
  if (!qword_27EFFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA90);
  }

  return result;
}

unint64_t sub_24B4EB458()
{
  result = qword_27EFFDA98;
  if (!qword_27EFFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA98);
  }

  return result;
}

unint64_t sub_24B4EB4B0()
{
  result = qword_27EFFDAA0;
  if (!qword_27EFFDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAA0);
  }

  return result;
}

unint64_t sub_24B4EB508()
{
  result = qword_27EFFDAA8;
  if (!qword_27EFFDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAA8);
  }

  return result;
}

unint64_t sub_24B4EB560()
{
  result = qword_27EFFDAB0;
  if (!qword_27EFFDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAB0);
  }

  return result;
}

uint64_t sub_24B4EB5C4()
{
  v1 = 0x656E6F6870;
  v2 = 0x6863746177;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x74656C626174;
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

uint64_t sub_24B4EB628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EBF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4EB650(uint64_t a1)
{
  v2 = sub_24B4EBCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB68C(uint64_t a1)
{
  v2 = sub_24B4EBCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB6C8(uint64_t a1)
{
  v2 = sub_24B4EBE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB704(uint64_t a1)
{
  v2 = sub_24B4EBE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB740(uint64_t a1)
{
  v2 = sub_24B4EBDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB77C(uint64_t a1)
{
  v2 = sub_24B4EBDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB7B8(uint64_t a1)
{
  v2 = sub_24B4EBD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB7F4(uint64_t a1)
{
  v2 = sub_24B4EBD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB830(uint64_t a1)
{
  v2 = sub_24B4EBD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB86C(uint64_t a1)
{
  v2 = sub_24B4EBD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowsePlatform.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAE0, &qword_24B523120);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAE8, &qword_24B523128);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAF0, &qword_24B523130);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAF8, &qword_24B523138);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB00, &qword_24B523140);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4EBCE4();
  sub_24B517FDC();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24B4EBD8C();
      v12 = v29;
      sub_24B517E3C();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24B4EBD38();
      v12 = v32;
      sub_24B517E3C();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24B4EBDE0();
    sub_24B517E3C();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24B4EBE34();
  sub_24B517E3C();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_24B4EBCE4()
{
  result = qword_27EFFDB08;
  if (!qword_27EFFDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB08);
  }

  return result;
}

unint64_t sub_24B4EBD38()
{
  result = qword_27EFFDB10;
  if (!qword_27EFFDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB10);
  }

  return result;
}

unint64_t sub_24B4EBD8C()
{
  result = qword_27EFFDB18;
  if (!qword_27EFFDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB18);
  }

  return result;
}

unint64_t sub_24B4EBDE0()
{
  result = qword_27EFFDB20;
  if (!qword_27EFFDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB20);
  }

  return result;
}

unint64_t sub_24B4EBE34()
{
  result = qword_27EFFDB28;
  if (!qword_27EFFDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB28);
  }

  return result;
}

void *sub_24B4EBEA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B4EC0A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t BrowsePlatform.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4EBF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

void *sub_24B4EC0A8(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB90, &qword_24B5235E8);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB98, &qword_24B5235F0);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBA0, &qword_24B5235F8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBA8, &qword_24B523600);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBB0, &qword_24B523608);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B4EBCE4();
  v21 = v50;
  sub_24B517FCC();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24B517E1C();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24B4A39B4();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24B4EBDE0();
        v36 = v40;
        sub_24B517D7C();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24B4EBE34();
        v29 = v40;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24B4EBD8C();
      v35 = v40;
      sub_24B517D7C();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24B4EBD38();
      v37 = v40;
      sub_24B517D7C();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24B517D0C();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
  *v15 = &type metadata for BrowsePlatform;
  sub_24B517D8C();
  sub_24B517CFC();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_24B4EC6EC()
{
  result = qword_27EFFDB30;
  if (!qword_27EFFDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB30);
  }

  return result;
}

unint64_t sub_24B4EC7A4()
{
  result = qword_27EFFDB38;
  if (!qword_27EFFDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB38);
  }

  return result;
}

unint64_t sub_24B4EC7FC()
{
  result = qword_27EFFDB40;
  if (!qword_27EFFDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB40);
  }

  return result;
}

unint64_t sub_24B4EC854()
{
  result = qword_27EFFDB48;
  if (!qword_27EFFDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB48);
  }

  return result;
}

unint64_t sub_24B4EC8AC()
{
  result = qword_27EFFDB50;
  if (!qword_27EFFDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB50);
  }

  return result;
}

unint64_t sub_24B4EC904()
{
  result = qword_27EFFDB58;
  if (!qword_27EFFDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB58);
  }

  return result;
}

unint64_t sub_24B4EC95C()
{
  result = qword_27EFFDB60;
  if (!qword_27EFFDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB60);
  }

  return result;
}

unint64_t sub_24B4EC9B4()
{
  result = qword_27EFFDB68;
  if (!qword_27EFFDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB68);
  }

  return result;
}

unint64_t sub_24B4ECA0C()
{
  result = qword_27EFFDB70;
  if (!qword_27EFFDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB70);
  }

  return result;
}

unint64_t sub_24B4ECA64()
{
  result = qword_27EFFDB78;
  if (!qword_27EFFDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB78);
  }

  return result;
}

unint64_t sub_24B4ECABC()
{
  result = qword_27EFFDB80;
  if (!qword_27EFFDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB80);
  }

  return result;
}

unint64_t sub_24B4ECB14()
{
  result = qword_27EFFDB88;
  if (!qword_27EFFDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB88);
  }

  return result;
}

uint64_t sub_24B4ECB68()
{
  v0 = sub_24B516F1C();
  __swift_allocate_value_buffer(v0, qword_27F017B88);
  __swift_project_value_buffer(v0, qword_27F017B88);
  return sub_24B516F0C();
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

uint64_t sub_24B4ECC78()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_24B4ECCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EE0F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4ECCFC(uint64_t a1)
{
  v2 = sub_24B4ED7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECD38(uint64_t a1)
{
  v2 = sub_24B4ED7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECD74()
{
  v1 = 0x6E6769736564;
  if (*v0 != 1)
  {
    v1 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C79745374786574;
  }
}

uint64_t sub_24B4ECDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EE20C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4ECE04(uint64_t a1)
{
  v2 = sub_24B4EDA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECE40(uint64_t a1)
{
  v2 = sub_24B4EDA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECE7C()
{
  v1 = 0x6C79745374786574;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x746867696577;
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

uint64_t sub_24B4ECF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EE330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4ECF28(uint64_t a1)
{
  v2 = sub_24B4ED9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECF64(uint64_t a1)
{
  v2 = sub_24B4ED9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECFA0()
{
  v1 = 0x657A6953746E6F66;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x746867696577;
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

uint64_t sub_24B4ED020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4EE49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4ED048(uint64_t a1)
{
  v2 = sub_24B4ED84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ED084(uint64_t a1)
{
  v2 = sub_24B4ED84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseFontDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v48 = a2;
  v38 = a4;
  v39 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBB8, &qword_24B523610);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBC0, &qword_24B523618);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBC8, &qword_24B523620);
  v13 = *(v40 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBD0, &qword_24B523628);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4ED7F8();
  v22 = v20;
  sub_24B517FDC();
  if (!a5)
  {
    v29 = v13;
    LOBYTE(v51) = 0;
    sub_24B4EDA98();
    sub_24B517E3C();
    v30 = BYTE1(v48);
    LOBYTE(v51) = v48;
    v50 = 0;
    sub_24B4EDA44();
    v31 = v40;
    v32 = v47;
    sub_24B517EBC();
    if (!v32)
    {
      LOBYTE(v51) = v30 & 1;
      v50 = 1;
      sub_24B4ED948();
      sub_24B517EBC();
      v51 = v39;
      v50 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C);
      sub_24B517EBC();
    }

    (*(v29 + 8))(v16, v31);
    return (*(v49 + 8))(v22, v17);
  }

  if (a5 != 1)
  {
    LOBYTE(v51) = 2;
    sub_24B4ED84C();
    v33 = v44;
    sub_24B517E3C();
    v51 = v48;
    v50 = 0;
    sub_24B4ED8A0();
    v35 = v46;
    v34 = v47;
    sub_24B517EBC();
    if (!v34)
    {
      v36 = BYTE1(v39);
      LOBYTE(v51) = v39;
      v50 = 1;
      sub_24B4ED8F4();
      sub_24B517EBC();
      LOBYTE(v51) = v36 & 1;
      v50 = 2;
      sub_24B4ED948();
      sub_24B517EBC();
      v51 = v38;
      v50 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C);
      sub_24B517EBC();
    }

    (*(v45 + 8))(v33, v35);
    return (*(v49 + 8))(v22, v17);
  }

  LOBYTE(v51) = 1;
  sub_24B4ED9F0();
  v23 = v41;
  v24 = v22;
  sub_24B517E3C();
  v25 = v48;
  LOBYTE(v51) = v48;
  v50 = 0;
  sub_24B4EDA44();
  v26 = v43;
  v27 = v47;
  sub_24B517EBC();
  if (!v27)
  {
    LOBYTE(v51) = BYTE1(v25);
    v50 = 1;
    sub_24B4ED8F4();
    sub_24B517EBC();
    LOBYTE(v51) = BYTE2(v25) & 1;
    v50 = 2;
    sub_24B4ED948();
    sub_24B517EBC();
    v51 = v39;
    v50 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
    sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C);
    sub_24B517EBC();
  }

  (*(v42 + 8))(v23, v26);
  return (*(v49 + 8))(v24, v17);
}

unint64_t sub_24B4ED7F8()
{
  result = qword_27EFFDBD8;
  if (!qword_27EFFDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBD8);
  }

  return result;
}

unint64_t sub_24B4ED84C()
{
  result = qword_27EFFDBE0;
  if (!qword_27EFFDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBE0);
  }

  return result;
}

unint64_t sub_24B4ED8A0()
{
  result = qword_27EFFDBE8;
  if (!qword_27EFFDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBE8);
  }

  return result;
}

unint64_t sub_24B4ED8F4()
{
  result = qword_27EFFDBF0;
  if (!qword_27EFFDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBF0);
  }

  return result;
}

unint64_t sub_24B4ED948()
{
  result = qword_27EFFDBF8;
  if (!qword_27EFFDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBF8);
  }

  return result;
}

unint64_t sub_24B4ED99C()
{
  result = qword_27EFFDC10;
  if (!qword_27EFFDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC10);
  }

  return result;
}

unint64_t sub_24B4ED9F0()
{
  result = qword_27EFFDC18;
  if (!qword_27EFFDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC18);
  }

  return result;
}

unint64_t sub_24B4EDA44()
{
  result = qword_27EFFDC20;
  if (!qword_27EFFDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC20);
  }

  return result;
}

unint64_t sub_24B4EDA98()
{
  result = qword_27EFFDC28;
  if (!qword_27EFFDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC28);
  }

  return result;
}

void *BrowseFontDescriptor.init(from:)(uint64_t *a1)
{
  result = sub_24B4EE600(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_24B4EDB14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24B4EE600(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t BrowseFontDescriptor.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x24C241D70](1);
      BrowseFontTextStyle.rawValue.getter(a2);
      sub_24B517B3C();

      sub_24B49A1D4();
    }

    else
    {
      MEMORY[0x24C241D70](2);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x24C241D90](v9);
      sub_24B49A1D4();
      a3 = a4;
    }
  }

  else
  {
    MEMORY[0x24C241D70](0);
    BrowseFontTextStyle.rawValue.getter(a2);
    sub_24B517B3C();
  }

  sub_24B517B3C();

  return sub_24B48AC84(a1, a3);
}

uint64_t BrowseFontDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v9, a1, a2, a3, a4);
  return sub_24B517FBC();
}

uint64_t sub_24B4EDD20()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v6, v1, v2, v3, v4);
  return sub_24B517FBC();
}

uint64_t sub_24B4EDD94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v6, v1, v2, v3, v4);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseFontDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a5;
  v11 = a1;
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    v16 = BrowseFontTextStyle.rawValue.getter(a1);
    v18 = v17;
    if (v16 == BrowseFontTextStyle.rawValue.getter(v9) && v18 == v19)
    {
    }

    else
    {
      v29 = sub_24B517EEC();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    if ((v11 & 0x100) != 0)
    {
      v27 = 0x6465646E756F72;
    }

    else
    {
      v27 = 0x746C7561666564;
    }

    v28 = (v9 & 0x100) == 0;
LABEL_33:
    if (v28)
    {
      v30 = 0x746C7561666564;
    }

    else
    {
      v30 = 0x6465646E756F72;
    }

    if (v27 == v30)
    {
      swift_bridgeObjectRelease_n();
LABEL_39:
      v25 = a2;
      v24 = a6;
      goto LABEL_40;
    }

    v31 = sub_24B517EEC();
    swift_bridgeObjectRelease_n();
    if (v31)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    v12 = BrowseFontTextStyle.rawValue.getter(a1);
    v14 = v13;
    if (v12 == BrowseFontTextStyle.rawValue.getter(v9) && v14 == v15)
    {
    }

    else
    {
      v26 = sub_24B517EEC();

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_24B4FEB0C(BYTE1(v11), BYTE1(v9)) & 1) == 0)
    {
      return 0;
    }

    if ((*&v11 & 0x10000) != 0)
    {
      v27 = 0x6465646E756F72;
    }

    else
    {
      v27 = 0x746C7561666564;
    }

    v28 = (*&v9 & 0x10000) == 0;
    goto LABEL_33;
  }

  if (a8 != 2 || *&a1 != *&a5 || (sub_24B4FEB0C(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v22 = 0x6465646E756F72;
  }

  else
  {
    v22 = 0x746C7561666564;
  }

  if ((a6 & 0x100) != 0)
  {
    v23 = 0x6465646E756F72;
  }

  else
  {
    v23 = 0x746C7561666564;
  }

  if (v22 != v23)
  {
    v33 = sub_24B517EEC();
    swift_bridgeObjectRelease_n();
    v24 = a7;
    v25 = a3;
    if (v33)
    {
      goto LABEL_40;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
  v24 = a7;
  v25 = a3;
LABEL_40:

  return sub_24B512CFC(v25, v24);
}

uint64_t sub_24B4EE0F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B527A70 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4EE20C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4EE330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4EE49C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

void *sub_24B4EE600(uint64_t *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC98, &qword_24B523C28);
  v47 = *(v45 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v42 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCA0, &qword_24B523C30);
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCA8, &qword_24B523C38);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v42 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCB0, &unk_24B523C40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B4ED7F8();
  v18 = v49;
  sub_24B517FCC();
  if (!v18)
  {
    v19 = v48;
    v20 = sub_24B517E1C();
    v21 = (2 * *(v20 + 16)) | 1;
    v55 = v20;
    v56 = v20 + 32;
    v57 = 0;
    v58 = v21;
    v22 = sub_24B4A39B8();
    if (v22 == 3 || v57 != v58 >> 1)
    {
      v24 = sub_24B517D0C();
      swift_allocError();
      v10 = v25;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v10 = &type metadata for BrowseFontDescriptor;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v24 - 8) + 104))(v10, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      LODWORD(v49) = v22;
      if (v22 == 1)
      {
        LOBYTE(v59) = 1;
        sub_24B4ED9F0();
        sub_24B517D7C();
        LOBYTE(v59) = 0;
        sub_24B4EF7A0();
        v23 = v43;
        sub_24B517E0C();
        v34 = v52;
        LOBYTE(v59) = 1;
        sub_24B4EF62C();
        sub_24B517E0C();
        v35 = v54;
        LOBYTE(v59) = 2;
        sub_24B4EF680();
        sub_24B517E0C();
        LODWORD(v48) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
        v51 = 3;
        sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C);
        sub_24B517E0C();
        v47 = v35;
        (*(v46 + 8))(v6, v23);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v41 = 0x10000;
        if (!v48)
        {
          v41 = 0;
        }

        v10 = (v34 | (v47 << 8) | v41);
      }

      else
      {
        LOBYTE(v59) = 2;
        sub_24B4ED84C();
        v32 = v19;
        sub_24B517D7C();
        LOBYTE(v52) = 0;
        sub_24B4EF5D8();
        v33 = v45;
        sub_24B517E0C();
        v39 = v32;
        v10 = v59;
        LOBYTE(v52) = 1;
        sub_24B4EF62C();
        sub_24B517E0C();
        LOBYTE(v52) = 2;
        sub_24B4EF680();
        sub_24B517E0C();
        LODWORD(v46) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
        v51 = 3;
        sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C);
        sub_24B517E0C();
        (*(v47 + 8))(v39, v33);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v28 = v22;
      LOBYTE(v59) = 0;
      sub_24B4EDA98();
      v29 = v10;
      sub_24B517D7C();
      LODWORD(v49) = v28;
      v30 = v15;
      LOBYTE(v59) = 0;
      sub_24B4EF7A0();
      sub_24B517E0C();
      v31 = v12;
      v36 = v29;
      v37 = v52;
      LOBYTE(v59) = 1;
      sub_24B4EF680();
      sub_24B517E0C();
      v38 = v44;
      LODWORD(v48) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      v53 = 2;
      sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C);
      sub_24B517E0C();
      (*(v38 + 8))(v36, v7);
      (*(v31 + 8))(v30, v11);
      swift_unknownObjectRelease();
      v40 = 256;
      if (!v48)
      {
        v40 = 0;
      }

      v10 = (v40 | v37);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v10;
}

unint64_t sub_24B4EF068()
{
  result = qword_27EFFDC30;
  if (!qword_27EFFDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC30);
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

uint64_t sub_24B4EF0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B4EF118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B4EF1BC()
{
  result = qword_27EFFDC38;
  if (!qword_27EFFDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC38);
  }

  return result;
}

unint64_t sub_24B4EF214()
{
  result = qword_27EFFDC40;
  if (!qword_27EFFDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC40);
  }

  return result;
}

unint64_t sub_24B4EF26C()
{
  result = qword_27EFFDC48;
  if (!qword_27EFFDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC48);
  }

  return result;
}

unint64_t sub_24B4EF2C4()
{
  result = qword_27EFFDC50;
  if (!qword_27EFFDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC50);
  }

  return result;
}

unint64_t sub_24B4EF31C()
{
  result = qword_27EFFDC58;
  if (!qword_27EFFDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC58);
  }

  return result;
}

unint64_t sub_24B4EF374()
{
  result = qword_27EFFDC60;
  if (!qword_27EFFDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC60);
  }

  return result;
}

unint64_t sub_24B4EF3CC()
{
  result = qword_27EFFDC68;
  if (!qword_27EFFDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC68);
  }

  return result;
}

unint64_t sub_24B4EF424()
{
  result = qword_27EFFDC70;
  if (!qword_27EFFDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC70);
  }

  return result;
}

unint64_t sub_24B4EF47C()
{
  result = qword_27EFFDC78;
  if (!qword_27EFFDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC78);
  }

  return result;
}

unint64_t sub_24B4EF4D4()
{
  result = qword_27EFFDC80;
  if (!qword_27EFFDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC80);
  }

  return result;
}

unint64_t sub_24B4EF52C()
{
  result = qword_27EFFDC88;
  if (!qword_27EFFDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC88);
  }

  return result;
}

unint64_t sub_24B4EF584()
{
  result = qword_27EFFDC90;
  if (!qword_27EFFDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC90);
  }

  return result;
}

unint64_t sub_24B4EF5D8()
{
  result = qword_27EFFDCB8;
  if (!qword_27EFFDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCB8);
  }

  return result;
}

unint64_t sub_24B4EF62C()
{
  result = qword_27EFFDCC0;
  if (!qword_27EFFDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCC0);
  }

  return result;
}

unint64_t sub_24B4EF680()
{
  result = qword_27EFFDCC8;
  if (!qword_27EFFDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCC8);
  }

  return result;
}

uint64_t sub_24B4EF6D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDC00, &qword_24B523630);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4EF74C()
{
  result = qword_27EFFDCD8;
  if (!qword_27EFFDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCD8);
  }

  return result;
}

unint64_t sub_24B4EF7A0()
{
  result = qword_27EFFDCE0;
  if (!qword_27EFFDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCE0);
  }

  return result;
}

unint64_t sub_24B4EF800()
{
  v1 = 0x6169726F74696465;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_24B4EF870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4F1A58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4EF898(uint64_t a1)
{
  v2 = sub_24B4F13FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EF8D4(uint64_t a1)
{
  v2 = sub_24B4F13FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EF910(uint64_t a1)
{
  v2 = sub_24B4F14F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EF94C(uint64_t a1)
{
  v2 = sub_24B4F14F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EF988()
{
  v1 = 0x5379616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B4EF9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4F1B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4EFA14(uint64_t a1)
{
  v2 = sub_24B4F14A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EFA50(uint64_t a1)
{
  v2 = sub_24B4F14A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EFA8C(uint64_t a1)
{
  v2 = sub_24B4F1450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EFAC8(uint64_t a1)
{
  v2 = sub_24B4F1450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseIdentifier.underlyingValue.getter()
{
  v1 = type metadata accessor for BrowseIdentifier();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4F1398(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  v7 = *(v4 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
    v9 = sub_24B516B8C();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
  }

  return v6;
}

uint64_t BrowseIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCF0, &qword_24B523C58);
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCF8, &qword_24B523C60);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v42 - v8;
  v9 = sub_24B516B8C();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD00, &qword_24B523C68);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for BrowseIdentifier();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD08, &qword_24B523C70);
  v54 = *(v20 - 8);
  v55 = v20;
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F13FC();
  sub_24B517FDC();
  sub_24B4F1398(v52, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *v19;
  v26 = *(v19 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      LODWORD(v52) = v19[16];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50);
      v29 = v49;
      v30 = &v19[*(v28 + 64)];
      v31 = v50;
      (*(v49 + 32))(v51, v30, v50);
      v61 = 1;
      sub_24B4F14A4();
      v32 = v46;
      v33 = v55;
      sub_24B517E3C();
      v60 = 0;
      v34 = v48;
      v35 = v53;
      sub_24B517E7C();

      if (v35)
      {
        (*(v47 + 8))(v32, v34);
        (*(v29 + 8))(v51, v31);
      }

      else
      {
        v59 = v52;
        v58 = 1;
        sub_24B49B688();
        v40 = v32;
        sub_24B517EBC();
        v57 = 2;
        sub_24B47B72C(&qword_27EFFC510, MEMORY[0x277CC8C40]);
        v41 = v51;
        sub_24B517EBC();
        (*(v47 + 8))(v40, v34);
        (*(v29 + 8))(v41, v31);
      }

      return (*(v54 + 8))(v23, v33);
    }

    else
    {
      v62 = 2;
      sub_24B4F1450();
      v38 = v55;
      sub_24B517E3C();
      v39 = v45;
      sub_24B517E7C();

      (*(v44 + 8))(v5, v39);
      return (*(v54 + 8))(v23, v38);
    }
  }

  else
  {
    v56 = 0;
    sub_24B4F14F8();
    v36 = v55;
    sub_24B517E3C();
    sub_24B517E7C();

    (*(v43 + 8))(v15, v12);
    return (*(v54 + 8))(v23, v36);
  }
}

uint64_t BrowseIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD30, &qword_24B523C78);
  v75 = *(v73 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v81 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD38, &qword_24B523C80);
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v68 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD40, &qword_24B523C88);
  v74 = *(v79 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v68 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD48, &unk_24B523C90);
  v83 = *(v80 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v12 = &v68 - v11;
  v13 = type metadata accessor for BrowseIdentifier();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v68 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24B4F13FC();
  v28 = v85;
  sub_24B517FCC();
  if (!v28)
  {
    v69 = v23;
    v70 = v17;
    v71 = v20;
    v30 = v78;
    v29 = v79;
    v72 = 0;
    v85 = v13;
    v32 = v81;
    v31 = v82;
    v33 = v80;
    v34 = sub_24B517E1C();
    v35 = (2 * *(v34 + 16)) | 1;
    v87 = v34;
    v88 = v34 + 32;
    v89 = 0;
    v90 = v35;
    v36 = sub_24B4A39B8();
    v37 = v33;
    if (v36 == 3 || v89 != v90 >> 1)
    {
      v43 = sub_24B517D0C();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v45 = v85;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v83 + 8))(v12, v37);
    }

    else
    {
      if (v36)
      {
        if (v36 != 1)
        {
          v91 = 2;
          sub_24B4F1450();
          v50 = v32;
          v51 = v37;
          v52 = v72;
          sub_24B517D7C();
          v53 = v83;
          if (!v52)
          {
            v84 = v25;
            v56 = v73;
            v57 = sub_24B517DCC();
            v58 = v50;
            v63 = v57;
            v65 = v64;
            (*(v75 + 8))(v58, v56);
            (*(v53 + 8))(v12, v51);
            swift_unknownObjectRelease();
            v59 = v70;
            *v70 = v63;
            *(v59 + 8) = v65;
            swift_storeEnumTagMultiPayload();
            v25 = v84;
            goto LABEL_18;
          }

          (*(v83 + 8))(v12, v37);
          goto LABEL_9;
        }

        v91 = 1;
        sub_24B4F14A4();
        v38 = v33;
        v39 = v72;
        sub_24B517D7C();
        v40 = v83;
        if (!v39)
        {
          v41 = v25;
          v91 = 0;
          v42 = sub_24B517DCC();
          v59 = v71;
          *v71 = v42;
          *(v59 + 8) = v60;
          v81 = v60;
          v91 = 1;
          sub_24B49C974();
          sub_24B517E0C();
          v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
          sub_24B516B8C();
          v91 = 2;
          sub_24B47B72C(&qword_27EFFC588, MEMORY[0x277CC8C40]);
          v67 = v77;
          sub_24B517E0C();
          (*(v76 + 8))(v84, v67);
          (*(v40 + 8))(v12, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v25 = v41;
LABEL_18:
          sub_24B4F154C(v59, v25);
          sub_24B4F154C(v25, v31);
          return __swift_destroy_boxed_opaque_existential_1(v86);
        }
      }

      else
      {
        v91 = 0;
        sub_24B4F14F8();
        v48 = v30;
        v38 = v33;
        v49 = v72;
        sub_24B517D7C();
        if (!v49)
        {
          v54 = sub_24B517DCC();
          v84 = v55;
          v72 = 0;
          v61 = v54;
          (*(v74 + 8))(v48, v29);
          (*(v83 + 8))(v12, v33);
          swift_unknownObjectRelease();
          v59 = v69;
          v62 = v84;
          *v69 = v61;
          *(v59 + 8) = v62;
          swift_storeEnumTagMultiPayload();
          goto LABEL_18;
        }

        v40 = v83;
      }

      (*(v40 + 8))(v12, v38);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t BrowseIdentifier.hash(into:)()
{
  v1 = sub_24B516B8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4F1398(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = *(v9 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v9[16];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50);
      (*(v2 + 32))(v5, &v9[*(v14 + 64)], v1);
      MEMORY[0x24C241D70](1);
      sub_24B517B3C();

      BrowseDisplayStyle.rawValue.getter(v13);
      sub_24B517B3C();

      sub_24B47B72C(&qword_2810EED98, MEMORY[0x277CC8C40]);
      sub_24B517A9C();
      return (*(v2 + 8))(v5, v1);
    }

    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x24C241D70](v16);
  sub_24B517B3C();
}

uint64_t BrowseIdentifier.hashValue.getter()
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4F0E74()
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4F0EB8()
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing16BrowseIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v58 = *(v4 - 8);
  v5 = v58[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v9;
  v10 = type metadata accessor for BrowseIdentifier();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v52 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFDDB8, &qword_24B524218);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v52 - v23;
  v25 = &v52 + *(v22 + 56) - v23;
  sub_24B4F1398(a1, &v52 - v23);
  sub_24B4F1398(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4F1398(v24, v17);
      v27 = *(v17 + 1);
      v56 = *v17;
      v28 = v17[16];
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v25 + 1);
        v55 = *v25;
        v53 = v25[16];
        v54 = v28;
        v31 = v58[4];
        v32 = &v17[v29];
        v33 = v57;
        v31(v57, v32, v4);
        v31(v8, &v25[v29], v4);
        if (v56 == v55 && v27 == v30)
        {
        }

        else
        {
          v35 = sub_24B517EEC();

          if ((v35 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v43 = BrowseDisplayStyle.rawValue.getter(v54);
        v45 = v44;
        if (v43 == BrowseDisplayStyle.rawValue.getter(v53) && v45 == v46)
        {
        }

        else
        {
          v48 = sub_24B517EEC();

          if ((v48 & 1) == 0)
          {
LABEL_29:
            v49 = v58[1];
            v49(v8, v4);
            v49(v33, v4);
LABEL_30:
            sub_24B4F1D18(v24);
            goto LABEL_31;
          }
        }

        v42 = sub_24B516B7C();
        v51 = v58[1];
        v51(v8, v4);
        v51(v33, v4);
        sub_24B4F1D18(v24);
        return v42 & 1;
      }

      (v58[1])(&v17[v29], v4);
LABEL_20:

      sub_24B4F1CB0(v24);
LABEL_31:
      v42 = 0;
      return v42 & 1;
    }

    sub_24B4F1398(v24, v14);
    v36 = *v14;
    v37 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_24B4F1398(v24, v19);
    v36 = *v19;
    v37 = v19[1];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_20;
    }
  }

  if (v36 == *v25 && v37 == *(v25 + 1))
  {
    v41 = *(v25 + 1);
  }

  else
  {
    v39 = *(v25 + 1);
    v40 = sub_24B517EEC();

    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  sub_24B4F1D18(v24);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_24B4F1398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F13FC()
{
  result = qword_27EFFDD10;
  if (!qword_27EFFDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD10);
  }

  return result;
}

unint64_t sub_24B4F1450()
{
  result = qword_27EFFDD18;
  if (!qword_27EFFDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD18);
  }

  return result;
}

unint64_t sub_24B4F14A4()
{
  result = qword_27EFFDD20;
  if (!qword_27EFFDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD20);
  }

  return result;
}

unint64_t sub_24B4F14F8()
{
  result = qword_27EFFDD28;
  if (!qword_27EFFDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD28);
  }

  return result;
}

uint64_t sub_24B4F154C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F163C()
{
  result = qword_27EFFDD58;
  if (!qword_27EFFDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD58);
  }

  return result;
}

unint64_t sub_24B4F1694()
{
  result = qword_27EFFDD60;
  if (!qword_27EFFDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD60);
  }

  return result;
}

unint64_t sub_24B4F16EC()
{
  result = qword_27EFFDD68;
  if (!qword_27EFFDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD68);
  }

  return result;
}

unint64_t sub_24B4F1744()
{
  result = qword_27EFFDD70;
  if (!qword_27EFFDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD70);
  }

  return result;
}

unint64_t sub_24B4F179C()
{
  result = qword_27EFFDD78;
  if (!qword_27EFFDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD78);
  }

  return result;
}

unint64_t sub_24B4F17F4()
{
  result = qword_27EFFDD80;
  if (!qword_27EFFDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD80);
  }

  return result;
}

unint64_t sub_24B4F184C()
{
  result = qword_27EFFDD88;
  if (!qword_27EFFDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD88);
  }

  return result;
}

unint64_t sub_24B4F18A4()
{
  result = qword_27EFFDD90;
  if (!qword_27EFFDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD90);
  }

  return result;
}

unint64_t sub_24B4F18FC()
{
  result = qword_27EFFDD98;
  if (!qword_27EFFDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD98);
  }

  return result;
}

unint64_t sub_24B4F1954()
{
  result = qword_27EFFDDA0;
  if (!qword_27EFFDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDA0);
  }

  return result;
}

unint64_t sub_24B4F19AC()
{
  result = qword_27EFFDDA8;
  if (!qword_27EFFDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDA8);
  }

  return result;
}

unint64_t sub_24B4F1A04()
{
  result = qword_27EFFDDB0;
  if (!qword_27EFFDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDB0);
  }

  return result;
}

uint64_t sub_24B4F1A58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000024B5279A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B5279C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000656761506CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

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

uint64_t sub_24B4F1B90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F1CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFDDB8, &qword_24B524218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4F1D18(uint64_t a1)
{
  v2 = type metadata accessor for BrowseIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4F1D74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707061546D657469 && a2 == 0xEA00000000006465;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B4F1E84(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F1ECC(char a1)
{
  if (a1)
  {
    return 0x6570704177656976;
  }

  else
  {
    return 0x707061546D657469;
  }
}

uint64_t sub_24B4F1F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F201C(char a1)
{
  if (!a1)
  {
    return 12383;
  }

  if (a1 == 1)
  {
    return 0x7363697274656DLL;
  }

  return 0x7865646E69;
}

BOOL sub_24B4F2064(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_24B4F1E4C(*a1, *a2);
}

uint64_t sub_24B4F207C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_24B4F1E84(*v1);
}

uint64_t sub_24B4F2090(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_24B4F1E5C(a1, *v2);
}

uint64_t sub_24B4F20A4(uint64_t a1, void *a2)
{
  sub_24B517F7C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_24B4F1E5C(v9, *v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4F20F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_24B4F1ECC(*v1);
}

uint64_t sub_24B4F2134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F2188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL sub_24B4F21DC(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_24B498438(*a1, *a2);
}

uint64_t sub_24B4F21F4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_24B498470(*v1);
}

uint64_t sub_24B4F2204(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_24B498448(a1, *v2);
}

uint64_t sub_24B4F2214(uint64_t a1, void *a2)
{
  sub_24B517F7C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_24B498448(v9, *v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4F2260(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_24B4F201C(*v1);
}

uint64_t sub_24B4F2288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_24B4F22DC@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_24B4F2318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F236C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B4F23C0@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = sub_24B48B6AC();

  *a2 = v7 & 1;
  return result;
}

uint64_t sub_24B4F2410@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_24B48B6AC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24B4F2448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F249C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NewAndFeaturedAction.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  *&v73 = a2[2];
  *(&v73 + 1) = v4;
  v7 = v73;
  *&v74 = v6;
  *(&v74 + 1) = v5;
  v54 = type metadata accessor for NewAndFeaturedAction.ViewAppearedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_24B517ECC();
  v50 = *(v51 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v46 - v9;
  *(&v73 + 1) = v4;
  *&v74 = v6;
  *(&v74 + 1) = v5;
  v10 = type metadata accessor for NewAndFeaturedAction.ItemTappedCodingKeys();
  v11 = swift_getWitnessTable();
  v53 = v10;
  v49 = v11;
  v57 = sub_24B517ECC();
  v56 = *(v57 - 8);
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v57);
  v64 = &v46 - v14;
  v58 = v7;
  v47 = *(v7 - 8);
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v62 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73 = v7;
  *(&v73 + 1) = v4;
  v55 = v6;
  *&v74 = v6;
  *(&v74 + 1) = v5;
  type metadata accessor for NewAndFeaturedAction.CodingKeys();
  swift_getWitnessTable();
  v60 = sub_24B517ECC();
  v59 = *(v60 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v24 = &v46 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v80 = v24;
  v26 = v58;
  sub_24B517FDC();
  (*(v18 + 16))(v21, v61, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v21, 1, TupleTypeMetadata3) == 1)
  {
    LOBYTE(v73) = 1;
    v28 = v48;
    v29 = v60;
    v30 = v80;
    sub_24B517E3C();
    (*(v50 + 8))(v28, v51);
    return (*(v59 + 8))(v30, v29);
  }

  else
  {
    v32 = &v21[*(TupleTypeMetadata3 + 48)];
    v33 = *(v32 + 4);
    v34 = *(v32 + 6);
    v78 = *(v32 + 5);
    v79 = v34;
    v35 = *(v32 + 2);
    v76 = *(v32 + 3);
    v77 = v33;
    v36 = *(v32 + 1);
    v73 = *v32;
    v74 = v36;
    v75 = v35;
    v37 = *&v21[*(TupleTypeMetadata3 + 64)];
    v38 = v47;
    (*(v47 + 32))(v62, v21, v26);
    LOBYTE(v66) = 0;
    v39 = v60;
    sub_24B517E3C();
    LOBYTE(v66) = 0;
    v40 = v57;
    v41 = v63;
    sub_24B517EBC();
    v42 = v39;
    if (v41)
    {
      sub_24B49689C(&v73, &qword_27EFFCEA0, &unk_24B5203F0);
      (*(v56 + 8))(v64, v40);
      (*(v38 + 8))(v62, v26);
      return (*(v59 + 8))(v80, v39);
    }

    else
    {
      v70 = v77;
      v71 = v78;
      v72 = v79;
      v66 = v73;
      v67 = v74;
      v69 = v76;
      v68 = v75;
      v65 = 1;
      sub_24B4DA198();
      sub_24B517E6C();
      v43 = v59;
      sub_24B49689C(&v73, &qword_27EFFCEA0, &unk_24B5203F0);
      LOBYTE(v66) = 2;
      sub_24B517EAC();
      v44 = v62;
      v45 = v80;
      (*(v56 + 8))(v64, v40);
      (*(v38 + 8))(v44, v26);
      return (*(v43 + 8))(v45, v42);
    }
  }
}

uint64_t NewAndFeaturedAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v80 = a6;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v76 = type metadata accessor for NewAndFeaturedAction.ViewAppearedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = sub_24B517E2C();
  v66 = *(v67 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v63 - v12;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v13 = type metadata accessor for NewAndFeaturedAction.ItemTappedCodingKeys();
  v14 = swift_getWitnessTable();
  v73 = v13;
  v72 = v14;
  v70 = sub_24B517E2C();
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v78 = &v63 - v16;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  type metadata accessor for NewAndFeaturedAction.CodingKeys();
  swift_getWitnessTable();
  v79 = sub_24B517E2C();
  v81 = *(v79 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v19 = &v63 - v18;
  v71 = a2;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  v68 = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v20 = type metadata accessor for NewAndFeaturedAction();
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v63 - v25;
  v27 = a1;
  v29 = a1[3];
  v28 = a1[4];
  v83 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v29);
  v30 = v82;
  sub_24B517FCC();
  if (!v30)
  {
    v31 = v78;
    v65 = v24;
    v64 = v26;
    v82 = v20;
    v32 = v80;
    v33 = v79;
    v34 = v19;
    *&v84 = sub_24B517E1C();
    sub_24B517B8C();
    swift_getWitnessTable();
    *&v86 = sub_24B517CAC();
    *(&v86 + 1) = v35;
    *&v87 = v36;
    *(&v87 + 1) = v37;
    sub_24B517C9C();
    swift_getWitnessTable();
    sub_24B517C4C();
    v38 = v84;
    if (v84 == 2 || (v63 = v86, v84 = v86, v85 = v87, (sub_24B517C5C() & 1) == 0))
    {
      v41 = sub_24B517D0C();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v43 = v82;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v81 + 8))(v34, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        LOBYTE(v84) = 1;
        v39 = v74;
        sub_24B517D7C();
        v40 = v77;
        v49 = v32;
        (*(v66 + 8))(v39, v67);
        (*(v81 + 8))(v34, v33);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v51 = v64;
        (*(*(TupleTypeMetadata3 - 8) + 56))(v64, 1, 1, TupleTypeMetadata3);
        v52 = *(v40 + 32);
        v53 = v82;
      }

      else
      {
        LOBYTE(v84) = 0;
        sub_24B517D7C();
        v49 = v32;
        LOBYTE(v84) = 0;
        v46 = v31;
        v47 = v65;
        v48 = v70;
        sub_24B517E0C();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
        v54 = swift_getTupleTypeMetadata3();
        v55 = &v47[*(v54 + 48)];
        LOBYTE(v84) = 1;
        sub_24B4DA234();
        sub_24B517DBC();
        v56 = v48;
        v57 = v81;
        v76 = v55;
        v88 = 2;
        v58 = v56;
        v59 = sub_24B517DFC();
        v76 = *(v54 + 64);
        v60 = v59;
        (*(v69 + 8))(v46, v58);
        (*(v57 + 8))(v34, v33);
        swift_unknownObjectRelease();
        v61 = v65;
        *&v65[v76] = v60;
        (*(*(v54 - 8) + 56))(v61, 0, 1, v54);
        v52 = *(v77 + 32);
        v51 = v64;
        v62 = v82;
        v52(v64, v61, v82);
        v53 = v62;
      }

      v52(v49, v51, v53);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t static NewAndFeaturedAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *(a3 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](a1);
  v52 = v8;
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = v9;
  *(&v76 + 1) = v10;
  *&v77 = v11;
  *(&v77 + 1) = v8;
  v12 = type metadata accessor for NewAndFeaturedAction();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v18 = *(v54 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v50 - v20;
  v55 = v19;
  v22 = &v50 + *(v19 + 48) - v20;
  v57 = v13;
  v23 = *(v13 + 16);
  v23(&v50 - v20, a1, v12);
  v23(v22, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  v58 = a3;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *(*(TupleTypeMetadata3 - 8) + 48);
  v26 = v25(v21, 1, TupleTypeMetadata3);
  v59 = v21;
  if (v26 == 1)
  {
    if (v25(v22, 1, TupleTypeMetadata3) == 1)
    {
      (*(v57 + 8))(v59, v12);
      return 1;
    }

    goto LABEL_6;
  }

  v51 = v12;
  v23(v16, v21, v12);
  v28 = &v16[*(TupleTypeMetadata3 + 48)];
  v29 = *(v28 + 5);
  v113 = *(v28 + 4);
  v114 = v29;
  v115 = *(v28 + 6);
  v30 = *(v28 + 1);
  v109 = *v28;
  v110 = v30;
  v31 = *(v28 + 3);
  v111 = *(v28 + 2);
  v112 = v31;
  v32 = *&v16[*(TupleTypeMetadata3 + 64)];
  if (v25(v22, 1, TupleTypeMetadata3) != 1)
  {
    v33 = &v22[*(TupleTypeMetadata3 + 48)];
    v34 = *(v33 + 5);
    v106 = *(v33 + 4);
    v107 = v34;
    v108 = *(v33 + 6);
    v35 = *(v33 + 1);
    v102 = *v33;
    v103 = v35;
    v36 = *(v33 + 3);
    v104 = *(v33 + 2);
    v105 = v36;
    v37 = *&v22[*(TupleTypeMetadata3 + 64)];
    v38 = v56;
    v39 = v53;
    v40 = v58;
    (*(v56 + 32))(v53, v22, v58);
    v41 = *(v52 + 8);
    v42 = sub_24B517AAC();
    v43 = *(v38 + 8);
    v43(v16, v40);
    if ((v42 & 1) == 0)
    {
      v43(v39, v40);
      sub_24B49689C(&v109, &qword_27EFFCEA0, &unk_24B5203F0);
      sub_24B49689C(&v102, &qword_27EFFCEA0, &unk_24B5203F0);
      (*(v57 + 8))(v59, v51);
      return 0;
    }

    v56 = v32;
    v44 = v109;
    v98 = v112;
    v99 = v113;
    v100 = v114;
    v101 = v115;
    v96 = v110;
    v97 = v111;
    v45 = v102;
    v94 = v107;
    v95 = v108;
    v92 = v105;
    v93 = v106;
    v90 = v103;
    v91 = v104;
    v46 = v51;
    v47 = v59;
    if (*(&v109 + 1))
    {
      v76 = v109;
      v79 = v112;
      v80 = v113;
      v81 = v114;
      v82 = v115;
      v77 = v110;
      v78 = v111;
      v69 = v109;
      v70 = v110;
      v74 = v114;
      v75 = v115;
      v72 = v112;
      v73 = v113;
      v71 = v111;
      if (*(&v102 + 1))
      {
        v65 = v105;
        v66 = v106;
        v67 = v107;
        v68 = v108;
        v63 = v103;
        v64 = v104;
        v62 = v102;
        v48 = _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(&v69, &v62);
        v60[4] = v66;
        v60[5] = v67;
        v60[6] = v68;
        v60[0] = v62;
        v60[1] = v63;
        v60[2] = v64;
        v60[3] = v65;
        sub_24B4D8258(&v76, v61);
        sub_24B4CC6AC(v60);
        v43(v53, v58);
        v61[4] = v73;
        v61[5] = v74;
        v61[6] = v75;
        v61[0] = v69;
        v61[1] = v70;
        v61[2] = v71;
        v61[3] = v72;
        sub_24B4CC6AC(v61);
        v62 = v44;
        v65 = v98;
        v66 = v99;
        v67 = v100;
        v68 = v101;
        v63 = v96;
        v64 = v97;
        sub_24B49689C(&v62, &qword_27EFFCEA0, &unk_24B5203F0);
        if ((v48 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_17:
        v49 = v56 == v37;
        (*(v57 + 8))(v47, v46);
        return v49;
      }

      sub_24B4D8258(&v76, &v62);
      v43(v53, v58);
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v65 = v72;
      sub_24B4CC6AC(&v62);
    }

    else
    {
      v43(v53, v58);
      if (!*(&v45 + 1))
      {
        v76 = v44;
        v79 = v98;
        v80 = v99;
        v81 = v100;
        v82 = v101;
        v77 = v96;
        v78 = v97;
        sub_24B49689C(&v76, &qword_27EFFCEA0, &unk_24B5203F0);
        goto LABEL_17;
      }
    }

    v76 = v44;
    v79 = v98;
    v80 = v99;
    v81 = v100;
    v82 = v101;
    v77 = v96;
    v78 = v97;
    v83 = v45;
    v84 = v90;
    v85 = v91;
    v88 = v94;
    v89 = v95;
    v86 = v92;
    v87 = v93;
    sub_24B49689C(&v76, &qword_27EFFD420, &qword_24B524220);
LABEL_20:
    (*(v57 + 8))(v47, v46);
    return 0;
  }

  sub_24B49689C(&v109, &qword_27EFFCEA0, &unk_24B5203F0);
  (*(v56 + 8))(v16, v58);
LABEL_6:
  (*(v54 + 8))(v59, v55);
  return 0;
}

uint64_t NewAndFeaturedAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v12, 1, TupleTypeMetadata3) == 1)
  {
    return MEMORY[0x24C241D70](1);
  }

  v17 = &v12[*(TupleTypeMetadata3 + 48)];
  v18 = *(v17 + 5);
  v41 = *(v17 + 4);
  v42 = v18;
  v43 = *(v17 + 6);
  v19 = *(v17 + 1);
  v37 = *v17;
  v38 = v19;
  v20 = *(v17 + 3);
  v39 = *(v17 + 2);
  v40 = v20;
  v21 = *&v12[*(TupleTypeMetadata3 + 64)];
  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x24C241D70](0);
  v22 = *(a2 + 40);
  sub_24B517A9C();
  if (*(&v37 + 1))
  {
    v29 = v4;
    v36 = v21;
    v28[2] = v37;
    v28[1] = *(&v38 + 1);
    v28[3] = v38;
    v23 = *(&v39 + 1);
    v28[0] = v39;
    v24 = *(&v40 + 1);
    v28[5] = v40;
    v25 = *(&v41 + 1);
    v31 = v41;
    v26 = *(&v42 + 1);
    v33 = v42;
    v27 = *(&v43 + 1);
    v35 = v43;
    sub_24B517F9C();

    v28[4] = v24;

    v30 = v25;

    v32 = v26;

    v34 = v27;

    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517F9C();
    if (v23)
    {
      sub_24B517B3C();
    }

    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B49689C(&v37, &qword_27EFFCEA0, &unk_24B5203F0);
    sub_24B49689C(&v37, &qword_27EFFCEA0, &unk_24B5203F0);
    v21 = v36;
    v4 = v29;
  }

  else
  {
    sub_24B517F9C();
  }

  MEMORY[0x24C241D70](v21);
  return (*(v4 + 8))(v8, v3);
}

uint64_t NewAndFeaturedAction.hashValue.getter(uint64_t a1)
{
  sub_24B517F7C();
  NewAndFeaturedAction.hash(into:)(v3, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F4394(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  NewAndFeaturedAction.hash(into:)(v4, a2);
  return sub_24B517FBC();
}

uint64_t sub_24B4F43D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static NewAndFeaturedAction.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t sub_24B4F4404(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata3;
}

uint64_t sub_24B4F4490(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if (v5 < 0x7FFFFFFE)
    {
      v18 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        v17 = v18;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = (*(v4 + 48))(a1, v5);
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

double sub_24B4F4604(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a3 - v7 + 2;
  if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = a2 - v7;
    if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = a1;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v17;
      *v17 = v15;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v16;
      }

      else
      {
        *(a1 + v10) = v16;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v16;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v6 <= 0x7FFFFFFD)
  {
    v20 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      result = 0.0;
      *(v20 + 80) = 0u;
      *(v20 + 96) = 0u;
      *(v20 + 48) = 0u;
      *(v20 + 64) = 0u;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *v20 = 0u;
      *v20 = a2 - 2147483646;
    }

    else
    {
      *(v20 + 8) = a2 + 1;
    }
  }

  else
  {
    v19 = *(v5 + 56);

    v19();
  }

  return result;
}