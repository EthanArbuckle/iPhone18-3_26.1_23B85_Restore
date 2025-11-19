uint64_t sub_25134C4E8()
{
  MEMORY[0x253074F40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25134C548@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_251385E64();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25134C574(uint64_t a1, uint64_t a2)
{
  v4 = sub_251385194();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25134C5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251385194();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25134C650()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25134C6E8()
{
  v17 = sub_251384B44();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_251384B74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v6 + 40) & ~v9;
  v16 = v2 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  sub_251385894();
  (*(v1 + 8))(v0 + v3, v17);
  v13 = *(v0 + v4);

  v14 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v16 | 7);
}

uint64_t sub_25134C888()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_25134C8C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_25134C954@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25134C9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25134CA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25134CAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251384A34();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25134CB1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_251384A34();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25134CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251385024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25134CCCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251385024();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25134CDF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251384DD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  sub_25136B9C4(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  sub_25136B93C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_25134CF70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251384DD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  sub_25136B9C4(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  sub_25136B93C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25134D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251384DD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_25136B93C(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_251384DA4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25134D220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_251384DD4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_25136B93C(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_251384DA4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25134D36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251385024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25134D490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251385024();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25134D5B4(uint64_t a1, uint64_t a2)
{
  sub_25136F9A4(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25134D620(uint64_t a1, uint64_t a2)
{
  sub_25136F9A4(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25134D690(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251384DA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25134D73C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251384DA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25134D7E0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25134D834()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25134D874()
{
  v1 = *(v0 + 24);
  sub_251385894();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25134D8AC()
{
  v1 = *(v0 + 24);
  sub_251385894();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25134D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251384CC4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25134D9B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251384CC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_25134DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25134DB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25134DBE0()
{
  v1 = (_s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_251384CC4();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[8] + 8);

  v8 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25134DCE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  swift_beginAccess();
  return sub_25137E640(v3 + v4, a2, &qword_27F42C788, sub_25137AC38);
}

uint64_t sub_25134DD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25134DDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25134DE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251384C64();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25134DEA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_251384C64();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25134DF28()
{
  MEMORY[0x253074F40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25134DF60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25134DFA0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25134DFE8()
{
  v1 = *(v0 + 16);
  sub_251385894();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25134E028()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25134E0A4()
{
  sub_2513863F4();
  MEMORY[0x2530747F0](0);
  return sub_251386414();
}

uint64_t sub_25134E0E8()
{
  sub_2513863F4();
  MEMORY[0x2530747F0](0);
  return sub_251386414();
}

uint64_t sub_25134E144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000251389B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2513863A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25134E1E4(uint64_t a1)
{
  v2 = sub_251353B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25134E220(uint64_t a1)
{
  v2 = sub_251353B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25134E25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_251385194();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251353C1C(0, &qword_27F42C878, MEMORY[0x277D844C8]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = *(*(type metadata accessor for SleepingSampleChangesAlertTileViewModel(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251353B64();
  sub_251386434();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_251353784(&qword_27F42C888, MEMORY[0x277D10170]);
    sub_251386344();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v14, v23, v4);
    sub_251353BB8(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25134E524(void *a1)
{
  sub_251353C1C(0, &qword_27F42C890, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251353B64();
  sub_251386444();
  sub_251385194();
  sub_251353784(&qword_27F42C898, MEMORY[0x277D10170]);
  sub_251386374();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static SleepingSampleChangesAlertTileViewController.bundleClassName.getter()
{
  v2 = sub_251384C14();
  MEMORY[0x2530742D0](24366, 0xE200000000000000);
  v0 = sub_251386484();
  MEMORY[0x2530742D0](v0);

  return v2;
}

uint64_t sub_25134E710()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_251385B74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v7 = sub_251385B64();
  v8 = sub_251385FE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = sub_251386484();
    v21 = v2;
    v13 = sub_251352A00(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_25134A000, v7, v8, "%{public}s loaded", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x253074E50](v10, -1, -1);
    MEMORY[0x253074E50](v9, -1, -1);

    (*(v3 + 8))(v6, v21);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v14 = type metadata accessor for SleepingSampleChangesAlertTileViewController(0);
  v23.receiver = v1;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  sub_25134F18C();
  v15 = sub_251350944();
  v16 = sub_251385384();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_251385664();

  sub_2513531B4(0, &qword_27F42C770, sub_2513509D8, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251386F80;
  v18 = sub_251385B84();
  v19 = MEMORY[0x277D74DB8];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  sub_251386074();
  sub_251385894();
}

void sub_25134EA30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25134EA84();
  }
}

uint64_t sub_25134EA84()
{
  v1 = v0;
  sub_2513531B4(0, &qword_27F42C8B0, MEMORY[0x277D10E70], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_2513856F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251386054();
  v10 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  result = sub_251352FDC(v0 + v10, v50);
  v12 = v51;
  if (!v51)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v45 = &v42;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17);
  v44 = sub_251385774();
  (*(v14 + 8))(v17, v12);
  result = sub_251352FDC(v1 + v10, v48);
  v18 = v49;
  if (!v49)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v43 = v9;
  v19 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23);
  v24 = sub_251385774();
  (*(v20 + 8))(v23, v18);
  v25 = [v24 profileIdentifier];

  result = sub_251352FDC(v1 + v10, v46);
  v26 = v47;
  if (!v47)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = __swift_project_boxed_opaque_existential_1(v46, v47);
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31);
  sub_251385784();
  (*(v28 + 8))(v31, v26);
  v32 = sub_251385464();
  (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
  MEMORY[0x253073940](v25, v5);

  sub_251353D14(v5, &qword_27F42C8B0, MEMORY[0x277D10E70], MEMORY[0x277D83D88], sub_2513531B4);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  result = sub_251352FDC(v1 + v10, v46);
  v33 = v47;
  if (v47)
  {
    v34 = __swift_project_boxed_opaque_existential_1(v46, v47);
    v35 = *(v33 - 8);
    v36 = *(v35 + 64);
    MEMORY[0x28223BE20](v34);
    v38 = &v42 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38);
    sub_251385794();
    (*(v35 + 8))(v38, v33);
    v39 = v43;
    sub_2513856C4();
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v40 = objc_allocWithZone(type metadata accessor for BalanceRoomViewController());
    v41 = BalanceRoomViewController.init(context:)(v39);
    memset(v52, 0, 32);
    sub_251386084();

    return sub_251353D14(v52, &unk_27F42C8B8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251354364);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_25134F18C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 directionalLayoutMargins];
  [v3 setDirectionalLayoutMargins_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_251350944();
  [v5 addSubview_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_25134FD68();
  [v8 addSubview_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 layoutMarginsGuide];

  v13 = [v12 bottomAnchor];
  v14 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView;
  v15 = [*(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView) bottomAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  LODWORD(v17) = 1144750080;
  [v16 setPriority_];
  v18 = [*(v1 + v14) heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  v20 = *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint);
  v65 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint;
  *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint) = v19;
  v64 = v19;

  sub_251354364(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251386F90;
  v22 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView;
  v23 = [*(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView) topAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v21 + 32) = v27;
  v28 = [*(v1 + v22) leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v63 = v16;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v21 + 40) = v32;
  v33 = [v1 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v62 = objc_opt_self();
  v35 = [v34 trailingAnchor];

  v36 = [*(v1 + v22) trailingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v21 + 48) = v37;
  v38 = [*(v1 + v14) topAnchor];
  v39 = [*(v1 + v22) bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:4.0];

  *(v21 + 56) = v40;
  v41 = [*(v1 + v14) leadingAnchor];
  v42 = *(v1 + v22);
  v43 = sub_251385384();

  v44 = [v43 layoutMarginsGuide];
  v45 = [v44 leadingAnchor];

  v46 = [v41 constraintEqualToAnchor_];
  *(v21 + 64) = v46;
  v47 = *(v1 + v22);
  v48 = sub_251385384();

  v49 = [v48 layoutMarginsGuide];
  v50 = [v49 trailingAnchor];

  v51 = [*(v1 + v14) trailingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v21 + 72) = v52;
  *(v21 + 80) = v64;
  *(v21 + 88) = v63;
  sub_251353F88(0, &qword_27F42C8D0, 0x277CCAAD0);
  v53 = v64;
  v54 = v63;
  v55 = sub_251385F14();

  [v62 activateConstraints_];

  v56 = *&v65[v1];
  if (!v56)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v57 = *MEMORY[0x277D76918];
  v58 = objc_allocWithZone(MEMORY[0x277D75520]);
  v66 = v56;
  v59 = [v58 initForTextStyle_];
  [v59 scaledValueForValue_];
  v61 = v60;

  [v66 setConstant_];
}

uint64_t sub_25134F850()
{
  v1 = sub_251384A84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_251385E24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2513853A4();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2513531B4(0, &qword_27F42C7A0, MEMORY[0x277D10170], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  sub_2513531B4(0, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_viewModel;
  swift_beginAccess();
  sub_25135355C(v0 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_251353D14(v17, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88], sub_2513531B4);
  }

  sub_251353BB8(v17, v22);
  v25 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewModelProvider);
  v26 = sub_251385194();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v13, v22, v26);
  (*(v27 + 56))(v13, 0, 1, v26);
  sub_251385124();
  v28 = sub_251350944();
  sub_25134FE58();
  sub_251385164();
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  [objc_opt_self() clearColor];
  sub_251385394();
  sub_2513853B4();

  (*(v31 + 8))(v8, v32);
  return sub_251353ECC(v22);
}

id sub_25134FD68()
{
  v1 = *(*(sub_251385114() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView;
  v3 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewModelProvider);

    sub_251385104();
    sub_251353C80();
    v7 = objc_allocWithZone(v6);
    v8 = v0;
    v9 = sub_251385D14();
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = *(v0 + v2);
    *(v8 + v2) = v9;
    v4 = v9;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

id sub_25134FE58()
{
  v1 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___messageGlyph;
  v2 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___messageGlyph);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___messageGlyph);
  }

  else
  {
    v4 = sub_25134FEB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25134FEB8()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize_];
  v2 = [objc_opt_self() hk_vitalsKeyColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_251385E34();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v6;
}

uint64_t sub_251350000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  return sub_251352FDC(v3 + v4, a2);
}

uint64_t sub_25135005C(uint64_t a1, uint64_t *a2)
{
  sub_251352FDC(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  sub_251353124(v6, v3 + v4);
  swift_endAccess();
  sub_2513500F8();
  return sub_251353DDC(v6, &qword_27F42C788, &qword_27F42C790, MEMORY[0x277D11078], sub_2513530C8);
}

uint64_t sub_2513500F8()
{
  v1 = v0;
  v35[2] = swift_getObjectType();
  v2 = sub_251385B74();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = v35 - v5;
  sub_2513531B4(0, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v35 - v9;
  v11 = (v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context);
  result = swift_beginAccess();
  v13 = v11[3];
  if (v13)
  {
    v14 = v11[4];
    v15 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v16 = *(v13 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_2513857A4();
    v22 = v21;
    (*(v16 + 8))(v19, v13);
    if (v22 >> 60 == 15)
    {
      sub_251385B44();
      v23 = sub_251385B64();
      v24 = sub_251385FC4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v38 = v26;
        *v25 = 136446210;
        v27 = sub_251386484();
        v29 = sub_251352A00(v27, v28, &v38);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_25134A000, v23, v24, "[%{public}s] Could not find userData", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x253074E50](v26, -1, -1);
        MEMORY[0x253074E50](v25, -1, -1);
      }

      return (*(v36 + 8))(v6, v37);
    }

    else
    {
      v30 = sub_251384994();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_251384984();
      v33 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
      sub_251353784(&qword_27F42C8C0, type metadata accessor for SleepingSampleChangesAlertTileViewModel);
      sub_251384974();

      (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
      v34 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_viewModel;
      swift_beginAccess();
      sub_251353E38(v10, v1 + v34);
      swift_endAccess();
      sub_25134F850();
      sub_251353D74(v20, v22);
      return sub_251353D14(v10, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88], sub_2513531B4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251350740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  return sub_251352FDC(v1 + v3, a1);
}

uint64_t sub_251350798(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  sub_251353124(a1, v1 + v3);
  swift_endAccess();
  sub_2513500F8();
  return sub_251353DDC(a1, &qword_27F42C788, &qword_27F42C790, MEMORY[0x277D11078], sub_2513530C8);
}

uint64_t (*sub_251350830(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_251350894;
}

uint64_t sub_251350894(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2513500F8();
  }

  return result;
}

id sub_2513508C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_251350944();
  *a2 = result;
  return result;
}

void sub_2513508F4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  *(*a2 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView) = *a1;
  v3 = v2;
}

id sub_251350944()
{
  v1 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  }

  else
  {
    sub_2513853C4();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_2513509D8()
{
  result = qword_27F42C778;
  if (!qword_27F42C778)
  {
    sub_2513530C8(255, &qword_27F42C780);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F42C778);
  }

  return result;
}

uint64_t sub_251350A30(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251350A44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251350944();
  return sub_251350A8C;
}

void sub_251350A8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  *(v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView) = v2;
}

id SleepingSampleChangesAlertTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251385E34();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SleepingSampleChangesAlertTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_2513531B4(0, &qword_27F42C7A0, MEMORY[0x277D10170], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  *&v4[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint] = 0;
  v11 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewModelProvider;
  v12 = sub_251385194();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = sub_251385144();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v4[v11] = sub_251385134();
  v16 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_viewModel;
  v17 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView] = 0;
  *&v4[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___messageGlyph] = 0;
  v18 = &v4[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  *&v4[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView] = 0;
  if (a2)
  {
    v19 = sub_251385E34();
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for SleepingSampleChangesAlertTileViewController(0);
  v23.receiver = v4;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, v19, a3);

  return v21;
}

id SleepingSampleChangesAlertTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SleepingSampleChangesAlertTileViewController.init(coder:)(void *a1)
{
  v2 = v1;
  sub_2513531B4(0, &qword_27F42C7A0, MEMORY[0x277D10170], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint] = 0;
  v8 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewModelProvider;
  v9 = sub_251385194();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_251385144();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[v8] = sub_251385134();
  v13 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_viewModel;
  v14 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___chartView] = 0;
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___messageGlyph] = 0;
  v15 = &v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView] = 0;
  v16 = type metadata accessor for SleepingSampleChangesAlertTileViewController(0);
  v19.receiver = v2;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v17)
  {
  }

  return v17;
}

id SleepingSampleChangesAlertTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepingSampleChangesAlertTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251351214@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_251350944();
  *a1 = result;
  return result;
}

void sub_251351240(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView);
  *(*v1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController____lazy_storage___tileView) = v2;
}

void (*sub_25135125C(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = sub_251350A44(v3);
  return sub_2513512D0;
}

void sub_2513512D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_251351328()
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getWitnessTable();
  v0 = sub_251385954();

  return v0;
}

uint64_t sub_2513513FC()
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getWitnessTable();
  sub_251385964();
}

void (*sub_2513514E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_251385F74();
  *(v3 + 32) = sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getWitnessTable();
  *(v3 + 40) = sub_251385944();
  return sub_2513515EC;
}

void sub_2513515EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);
  v2 = v1[4];

  free(v1);
}

uint64_t sub_25135163C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_251385974();
}

uint64_t SleepingSampleChangesAlertTileViewController.glyph.getter()
{
  sub_251353F88(0, &qword_27F42C7D0, 0x277D755B8);
  v0 = *MEMORY[0x277D76918];
  return sub_2513860C4();
}

uint64_t SleepingSampleChangesAlertTileViewController.title.getter()
{
  v0 = sub_251384A84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_251385E24();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  return sub_251385E84();
}

uint64_t SleepingSampleChangesAlertTileViewController.detail.getter@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = sub_251385194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2513531B4(0, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  sub_2513531B4(0, &qword_280DF7878, MEMORY[0x277CC9578], v7);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_251384A64();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_viewModel;
  swift_beginAccess();
  sub_25135355C(v1 + v21, v11);
  v22 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  if ((*(*(v22 - 8) + 48))(v11, 1, v22))
  {
    sub_251353D14(v11, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88], sub_2513531B4);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    (*(v3 + 16))(v6, v11, v2);
    sub_251353D14(v11, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88], sub_2513531B4);
    sub_251385154();
    (*(v3 + 8))(v6, v2);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      v28 = *(v17 + 32);
      v28(v20, v15, v16);
      sub_2513535F0();
      v30 = *(v29 + 48);
      v24 = v33;
      v28(v33, v20, v16);
      v31 = *MEMORY[0x277D10F50];
      v32 = sub_251385594();
      (*(*(v32 - 8) + 104))(&v24[v30], v31, v32);
      v23 = MEMORY[0x277D10F58];
      goto LABEL_5;
    }
  }

  sub_251353D14(v15, &qword_280DF7878, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2513531B4);
  v23 = MEMORY[0x277D10F60];
  v24 = v33;
LABEL_5:
  v25 = *v23;
  v26 = sub_2513855A4();
  return (*(*(v26 - 8) + 104))(v24, v25, v26);
}

uint64_t sub_251351F9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169E10](a1, WitnessTable);
}

uint64_t sub_251352004()
{
  sub_251353F88(0, &qword_27F42C7D0, 0x277D755B8);
  v0 = *MEMORY[0x277D76918];
  return sub_2513860C4();
}

uint64_t sub_251352068()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_251385E64();

  return v3;
}

id sub_251352110(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return v1;
}

id sub_251352178(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

Swift::Void __swiftcall SleepingSampleChangesAlertTileViewController.didTapDismiss()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_251384A64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251385B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v11 = sub_251385B64();
  v12 = sub_251385FE4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33 = v3;
    v16 = v15;
    v36[0] = v15;
    *v14 = 136446210;
    v17 = sub_251386484();
    v19 = sub_251352A00(v17, v18, v36);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_25134A000, v11, v12, "[%{public}s] Dismissing", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v20 = v16;
    v3 = v33;
    MEMORY[0x253074E50](v20, -1, -1);
    v21 = v14;
    v2 = v34;
    MEMORY[0x253074E50](v21, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v22 = OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_context;
  swift_beginAccess();
  sub_251352FDC(v1 + v22, v36);
  v23 = v37;
  if (v37)
  {
    sub_251353F88(0, &qword_280DF6C98, 0x277CCD570);
    v24 = __swift_project_boxed_opaque_existential_1(v36, v23);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_251385774();
    (*(v25 + 8))(v28, v23);
    v30 = sub_251385FF4();

    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v31 = v35;
    sub_251384A54();
    sub_251386004();

    (*(v3 + 8))(v31, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251352578(uint64_t a1, id *a2)
{
  result = sub_251385E44();
  *a2 = 0;
  return result;
}

uint64_t sub_2513525F0(uint64_t a1, id *a2)
{
  v3 = sub_251385E54();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251352670@<X0>(uint64_t *a1@<X8>)
{
  sub_251385E64();
  v2 = sub_251385E34();

  *a1 = v2;
  return result;
}

uint64_t sub_2513526B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251385E64();
  v6 = v5;
  if (v4 == sub_251385E64() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2513863A4();
  }

  return v9 & 1;
}

uint64_t sub_25135273C(uint64_t a1)
{
  v2 = sub_251353784(&qword_27F42C928, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_251353784(&qword_27F42C930, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2513527F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251385E34();

  *a2 = v5;
  return result;
}

uint64_t sub_251352840(uint64_t a1)
{
  v2 = sub_251353784(&qword_280DF6C88, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_251353784(&qword_27F42C900, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2513528FC()
{
  v1 = *v0;
  v2 = sub_251385E64();
  v3 = MEMORY[0x2530742F0](v2);

  return v3;
}

uint64_t sub_251352938()
{
  v1 = *v0;
  sub_251385E64();
  sub_251385ED4();
}

uint64_t sub_25135298C()
{
  v1 = *v0;
  sub_251385E64();
  sub_2513863F4();
  sub_251385ED4();
  v2 = sub_251386414();

  return v2;
}

uint64_t sub_251352A00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251352ACC(v11, 0, 0, 1, a1, a2);
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
    sub_251353F28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_251352ACC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251352BD8(a5, a6);
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
    result = sub_251386284();
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

uint64_t sub_251352BD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_251352C24(a1, a2);
  sub_251352D54(&unk_2863610B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251352C24(uint64_t a1, unint64_t a2)
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

  v6 = sub_251352E40(v5, 0);
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

  result = sub_251386284();
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
        v10 = sub_251385EF4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251352E40(v10, 0);
        result = sub_251386214();
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

uint64_t sub_251352D54(uint64_t result)
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

  result = sub_251352ECC(result, v12, 1, v3);
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

void *sub_251352E40(uint64_t a1, uint64_t a2)
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

  sub_251354364(0, &qword_27F42C8C8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251352ECC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251354364(0, &qword_27F42C8C8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_251352FDC(uint64_t a1, uint64_t a2)
{
  sub_25135306C(0, &qword_27F42C788, &qword_27F42C790, MEMORY[0x277D11078], sub_2513530C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25135306C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251386124();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2513530C8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251353124(uint64_t a1, uint64_t a2)
{
  sub_25135306C(0, &qword_27F42C788, &qword_27F42C790, MEMORY[0x277D11078], sub_2513530C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2513531B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251353238(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251353270(uint64_t a1)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController_chartViewHeightConstraint);
  if (v2)
  {
    v3 = *MEMORY[0x277D76918];
    v4 = objc_allocWithZone(MEMORY[0x277D75520]);
    v8 = v2;
    v5 = [v4 initForTextStyle_];
    [v5 scaledValueForValue_];
    v7 = v6;

    [v8 setConstant_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewControllerC13didSelectCell_2inySo6UIViewC_So0pK0CtF_0()
{
  swift_getObjectType();
  v0 = sub_251385B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v5 = sub_251385B64();
  v6 = sub_251385FE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_251386484();
    v11 = sub_251352A00(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25134A000, v5, v6, "[%{public}s] Cell selected", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x253074E50](v8, -1, -1);
    MEMORY[0x253074E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_25134EA84();
}

uint64_t sub_25135355C(uint64_t a1, uint64_t a2)
{
  sub_2513531B4(0, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2513535F0()
{
  if (!qword_27F42C7E0)
  {
    sub_251384A64();
    sub_251385594();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42C7E0);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251353784(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251353870()
{
  sub_2513531B4(319, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251353AF8()
{
  result = sub_251385194();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_251353B64()
{
  result = qword_27F42C880;
  if (!qword_27F42C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C880);
  }

  return result;
}

uint64_t sub_251353BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251353C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251353B64();
    v7 = a3(a1, &type metadata for SleepingSampleChangesAlertTileViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251353C80()
{
  if (!qword_27F42C8A0)
  {
    sub_251385114();
    sub_251353784(&qword_27F42C8A8, MEMORY[0x277D10168]);
    v0 = sub_251385D24();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42C8A0);
    }
  }
}

uint64_t sub_251353D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_251353D74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251353D88(a1, a2);
  }

  return a1;
}

uint64_t sub_251353D88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251353DDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_25135306C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_251353E38(uint64_t a1, uint64_t a2)
{
  sub_2513531B4(0, &qword_27F42C7D8, type metadata accessor for SleepingSampleChangesAlertTileViewModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_251353ECC(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251353F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251353F88(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleChangesAlertTileViewModel.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SleepingSampleChangesAlertTileViewModel.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2513540EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25135410C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2513541F0()
{
  result = qword_27F42C8E8;
  if (!qword_27F42C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C8E8);
  }

  return result;
}

unint64_t sub_251354248()
{
  result = qword_27F42C8F0;
  if (!qword_27F42C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C8F0);
  }

  return result;
}

unint64_t sub_2513542A0()
{
  result = qword_27F42C8F8;
  if (!qword_27F42C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C8F8);
  }

  return result;
}

void sub_251354364(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2513544C8()
{
  v1 = *v0;
  sub_2513863F4();
  MEMORY[0x2530747F0](v1);
  return sub_251386414();
}

uint64_t sub_25135453C()
{
  v1 = *v0;
  sub_2513863F4();
  MEMORY[0x2530747F0](v1);
  return sub_251386414();
}

id sub_251354590(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  if (a1)
  {
    v19 = objc_allocWithZone(type metadata accessor for BalanceOnboardingNotificationsViewController());
    return sub_2513797DC();
  }

  else
  {
    sub_2513547B4(v1, v23);
    v3 = v24;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v21 = &type metadata for BalanceOnboardingManager;
    v22 = &off_2863618F8;
    v9 = swift_allocObject();
    v20[0] = v9;
    v10 = v7[1];
    v9[1] = *v7;
    v9[2] = v10;
    v9[3] = v7[2];
    v11 = objc_allocWithZone(type metadata accessor for BalanceOnboardingIntroViewController());
    v12 = v21;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = *(v12[-1].Description + 8);
    MEMORY[0x28223BE20](v13);
    v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_251354868(v16, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return v18;
  }
}

uint64_t sub_2513547B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_251354868(_OWORD *a1, void *a2)
{
  v4 = sub_251384A84();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_251385E24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v19[3] = &type metadata for BalanceOnboardingManager;
  v19[4] = &off_2863618F8;
  v8 = swift_allocObject();
  v19[0] = v8;
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  v10 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36BalanceOnboardingIntroViewController_model;
  sub_2513547B4(v19, a2 + OBJC_IVAR____TtC22HealthBalanceAppPlugin36BalanceOnboardingIntroViewController_model);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v13 = sub_251385E34();

  sub_251354A98(a2 + v10, v18);
  sub_251371A34();
  sub_251354AF4(v18);
  v14 = sub_251385E34();

  v17.receiver = a2;
  v17.super_class = type metadata accessor for BalanceOnboardingIntroViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 1);

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return v15;
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

uint64_t sub_251354B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_251354BA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BalanceOnboardingStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BalanceOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251354D7C()
{
  result = qword_27F42C938;
  if (!qword_27F42C938)
  {
    sub_251354DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C938);
  }

  return result;
}

void sub_251354DD4()
{
  if (!qword_27F42C940)
  {
    v0 = sub_251385F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42C940);
    }
  }
}

unint64_t sub_251354E28()
{
  result = qword_27F42C948;
  if (!qword_27F42C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C948);
  }

  return result;
}

unint64_t sub_251354E80()
{
  result = qword_27F42C950;
  if (!qword_27F42C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C950);
  }

  return result;
}

id BalanceRoomViewController.init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2513856F4();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v28 = sub_251385724();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251385704();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_27F42C958;
  v20 = [objc_allocWithZone(MEMORY[0x277D62528]) init];
  v30 = v2;
  *(v2 + v19) = v20;
  v21 = v31;
  sub_251363800();
  sub_251385674();
  (*(v15 + 8))(v18, v14);
  v22 = *(v21 + 16);
  v22(v9, a1, v4);
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    sub_251385714();
    v22(v29, a1, v4);
    v24 = v28;
    v32[3] = v28;
    v32[4] = MEMORY[0x277D11068];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(v10 + 16))(boxed_opaque_existential_1, v13, v24);
    v26 = sub_251385744();
    (*(v21 + 8))(a1, v4);
    (*(v10 + 8))(v13, v24);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2513552A0(uint64_t a1)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_27F42C958;
  *(a1 + v2) = [objc_allocWithZone(MEMORY[0x277D62528]) init];
  result = sub_2513862C4();
  __break(1u);
  return result;
}

void sub_251355384(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_251385B74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v10 = sub_251385B64();
  v11 = sub_251385FE4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    v14 = sub_251386484();
    v26 = v6;
    v16 = sub_251352A00(v14, v15, aBlock);
    v25 = v5;
    v17 = v2;
    v18 = a1;
    v19 = v16;

    *(v12 + 4) = v19;
    a1 = v18;
    v2 = v17;
    _os_log_impl(&dword_25134A000, v10, v11, "[%{public}s] view did appear", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x253074E50](v13, -1, -1);
    MEMORY[0x253074E50](v12, -1, -1);

    (*(v26 + 8))(v9, v25);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v20 = type metadata accessor for BalanceRoomViewController();
  v28.receiver = v2;
  v28.super_class = v20;
  objc_msgSendSuper2(&v28, sel_viewDidAppear_, a1 & 1);
  sub_251355A44();
  sub_251384B04();
  aBlock[0] = sub_251384AF4();
  v21 = sub_251384B14();

  v22 = *&v2[qword_27F42C958];
  v23 = swift_allocObject();
  *(v23 + 16) = ObjectType;
  aBlock[4] = sub_251355CE0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251355900;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);

  [v22 trackSleepDataInteractionEventWithType:3 isOnboardedVitals:v21 & 1 completion:v24];
  _Block_release(v24);
}

uint64_t type metadata accessor for BalanceRoomViewController()
{
  result = qword_27F42C960;
  if (!qword_27F42C960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2513556E0(char a1, void *a2)
{
  v4 = sub_251385B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_251385B44();
    v10 = a2;
    v11 = sub_251385B64();
    v12 = sub_251385FE4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 136446466;
      v15 = sub_251386484();
      v17 = sub_251352A00(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v13 + 14) = v19;
      *v14 = v20;
      _os_log_impl(&dword_25134A000, v11, v12, "[%{public}s] Failed to submit sleep data interaction analytics: %@", v13, 0x16u);
      sub_251355E44(v14);
      MEMORY[0x253074E50](v14, -1, -1);
      v21 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x253074E50](v21, -1, -1);
      MEMORY[0x253074E50](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_251355900(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_251355978(void *a1, uint64_t a2, char a3)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_251355384(a3);
}

uint64_t sub_251355A44()
{
  swift_getObjectType();
  v0 = sub_251385B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v5 = sub_251385B64();
  v6 = sub_251385FE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v9 = sub_251386484();
    v11 = sub_251352A00(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25134A000, v5, v6, "[%{public}s] reloading widgets", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x253074E50](v8, -1, -1);
    MEMORY[0x253074E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  result = sub_251384C04();
  v13 = result;
  v14 = *(result + 16);
  if (!v14)
  {
  }

  v15 = 0;
  v16 = (result + 40);
  while (v15 < *(v13 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    sub_251385F74();

    sub_251385F64();
    sub_251385F54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    ++v15;
    sub_251385D64();
    sub_251385D54();
    sub_251385D44();

    v16 += 2;
    if (v14 == v15)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id BalanceRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251355E44(uint64_t a1)
{
  sub_251355EA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251355EA0()
{
  if (!qword_280DF6C58)
  {
    sub_251355EF8();
    v0 = sub_251386124();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF6C58);
    }
  }
}

unint64_t sub_251355EF8()
{
  result = qword_280DF6C60;
  if (!qword_280DF6C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF6C60);
  }

  return result;
}

uint64_t sub_251355F64(void *a1)
{
  sub_2513560C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251385614();
  sub_251385624();
  v6 = sub_251385624();
  v7 = [v6 profileIdentifier];

  v8 = sub_251385644();
  sub_251386064();

  v9 = sub_251385464();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  MEMORY[0x253073940](v7, v5);

  sub_251356120(v5);
  sub_251385634();
  v10 = a1;
  return sub_2513856C4();
}

void sub_2513560C8()
{
  if (!qword_27F42C8B0)
  {
    sub_251385464();
    v0 = sub_251386124();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42C8B0);
    }
  }
}

uint64_t sub_251356120(uint64_t a1)
{
  sub_2513560C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251356188(uint64_t a1, int a2)
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

uint64_t sub_2513561D0(uint64_t result, int a2, int a3)
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

unint64_t sub_251356220()
{
  result = qword_280DF7800;
  if (!qword_280DF7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF7800);
  }

  return result;
}

uint64_t sub_251356304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25135634C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_251384A84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_251385E24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  sub_251384A24();

  v12 = sub_251384A34();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v9, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a1, v9, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_25135657C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_251385B74();
  v139 = *(v6 - 8);
  v140 = v6;
  v7 = *(v139 + 64);
  MEMORY[0x28223BE20](v6);
  v141 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251384A84();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_251385E24();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_251385244();
  v142 = *(v13 - 8);
  v143 = v13;
  v14 = *(v142 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277CCBEA0];
  v18 = sub_251385A64();
  v19 = [v18 highestPriorityUnsatisfiedRequirement];

  if (!v19)
  {
    sub_251359870(a3);
    v37 = sub_251385354();
    v33 = *(*(v37 - 8) + 56);
    v34 = v37;
    v35 = a3;
LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

  v138 = a1;
  v144 = a3;
  v20 = *MEMORY[0x277CCBF28];
  v21 = sub_251385E64();
  v23 = v22;
  if (v21 == sub_251385E64() && v23 == v24)
  {
    goto LABEL_10;
  }

  v137 = a2;
  v26 = sub_2513863A4();

  if (v26)
  {
LABEL_11:

    v32 = sub_251385354();
    v33 = *(*(v32 - 8) + 56);
    v34 = v32;
    v35 = v144;
    v36 = 1;
LABEL_14:

    return v33(v35, v36, 1, v34);
  }

  v27 = *MEMORY[0x277CCBED8];
  v28 = sub_251385E64();
  v30 = v29;
  if (v28 == sub_251385E64() && v30 == v31)
  {
    goto LABEL_9;
  }

  v39 = sub_2513863A4();
  v40 = v19;

  if (v39)
  {
    goto LABEL_11;
  }

  v41 = *MEMORY[0x277CCBEF0];
  v42 = sub_251385E64();
  v44 = v43;
  if (v42 == sub_251385E64() && v44 == v45)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  v46 = sub_2513863A4();
  v47 = v40;

  if (v46)
  {
    goto LABEL_11;
  }

  v48 = *MEMORY[0x277CCBFE0];
  v49 = sub_251385E64();
  v51 = v50;
  if (v49 == sub_251385E64() && v51 == v52)
  {

LABEL_25:

    v55 = v142;
    v54 = v143;
    (*(v142 + 104))(v16, *MEMORY[0x277D10CE8], v143);
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
LABEL_26:
    v58 = v57;
    sub_251384A74();
    v59 = sub_251385E84();
    v60 = v144;
    sub_251357308(v59, v61, v144);

    (*(v55 + 8))(v16, v54);
    v62 = sub_251385354();
    v63 = *(*(v62 - 8) + 56);
    v64 = v60;
    return v63(v64, 0, 1, v62);
  }

  v53 = sub_2513863A4();
  v136 = v47;

  if (v53)
  {
    goto LABEL_25;
  }

  v65 = *MEMORY[0x277CCBF70];
  v66 = sub_251385E64();
  v68 = v67;
  if (v66 == sub_251385E64() && v68 == v69)
  {
    v70 = v136;

LABEL_32:

    v55 = v142;
    v54 = v143;
    (*(v142 + 104))(v16, *MEMORY[0x277D10CE8], v143);
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    v72 = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    goto LABEL_26;
  }

  v71 = sub_2513863A4();
  v70 = v136;
  v135 = v136;

  if (v71)
  {
    goto LABEL_32;
  }

  v73 = *MEMORY[0x277CCBFB0];
  v74 = sub_251385E64();
  v76 = v75;
  if (v74 == sub_251385E64() && v76 == v77)
  {
    v78 = v135;

    v79 = v78;
LABEL_37:

    v83 = sub_251385A64();
    v84 = [v83 unsatisfiedRequirementIdentifiers];

    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v85 = sub_251385F24();

    v145 = *MEMORY[0x277CCBFB8];
    MEMORY[0x28223BE20](v86);
    *(&v134 - 2) = &v145;
    LOBYTE(v84) = sub_25135B310(sub_25135B808, (&v134 - 4), v85);

    v87 = v144;
    if (v84)
    {
      sub_251357CA4(v144);
    }

    else
    {
      sub_2513577B4(v144);
    }

    v62 = sub_251385354();
    v63 = *(*(v62 - 8) + 56);
    v64 = v87;
    return v63(v64, 0, 1, v62);
  }

  v80 = sub_2513863A4();
  v81 = v135;
  v82 = v135;

  v79 = v81;
  if (v80)
  {
    goto LABEL_37;
  }

  v88 = *MEMORY[0x277CCBFB8];
  v89 = sub_251385E64();
  v91 = v90;
  if (v89 == sub_251385E64() && v91 == v92)
  {

LABEL_45:

    v95 = v144;
    sub_251357CA4(v144);
LABEL_46:
    v96 = sub_251385354();
    v33 = *(*(v96 - 8) + 56);
    v34 = v96;
    v35 = v95;
    goto LABEL_13;
  }

  v93 = sub_2513863A4();
  v94 = v82;

  if (v93)
  {
    goto LABEL_45;
  }

  v97 = *MEMORY[0x277CCBFC0];
  v98 = sub_251385E64();
  v100 = v99;
  if (v98 == sub_251385E64() && v100 == v101)
  {

LABEL_51:

    v95 = v144;
    sub_251358194(v144);
    goto LABEL_46;
  }

  v102 = sub_2513863A4();
  v103 = v94;

  if (v102)
  {
    goto LABEL_51;
  }

  v104 = *MEMORY[0x277CCBFE8];
  v105 = sub_251385E64();
  v107 = v106;
  if (v105 == sub_251385E64() && v107 == v108)
  {

LABEL_56:

    v95 = v144;
    sub_2513587B0(v144);
    goto LABEL_46;
  }

  v109 = sub_2513863A4();
  v110 = v103;

  if (v109)
  {
    goto LABEL_56;
  }

  v111 = *MEMORY[0x277CCBF88];
  v112 = sub_251385E64();
  v114 = v113;
  if (v112 == sub_251385E64() && v114 == v115)
  {

LABEL_61:

    v95 = v144;
    sub_251358D5C(v144);
    goto LABEL_46;
  }

  v116 = sub_2513863A4();
  v117 = v110;

  if (v116)
  {
    goto LABEL_61;
  }

  v118 = *MEMORY[0x277CCBF90];
  v119 = sub_251385E64();
  v121 = v120;
  if (v119 == sub_251385E64() && v121 == v122)
  {

LABEL_66:

    v95 = v144;
    sub_251359380(v144);
    goto LABEL_46;
  }

  v123 = sub_2513863A4();
  v124 = v117;

  if (v123)
  {
    goto LABEL_66;
  }

  sub_251385B44();
  v125 = v124;
  v126 = sub_251385B64();
  v127 = sub_251385FD4();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v145 = v129;
    *v128 = 136446466;
    *(v128 + 4) = sub_251352A00(0xD00000000000003ALL, 0x8000000251387970, &v145);
    *(v128 + 12) = 2082;
    v130 = sub_251385E64();
    v132 = sub_251352A00(v130, v131, &v145);

    *(v128 + 14) = v132;
    _os_log_impl(&dword_25134A000, v126, v127, "[%{public}s] Unexpected failing requirement %{public}s; hiding tile", v128, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v129, -1, -1);
    MEMORY[0x253074E50](v128, -1, -1);
  }

  else
  {
  }

  (*(v139 + 8))(v141, v140);
  v133 = sub_251385354();
  return (*(*(v133 - 8) + 56))(v144, 1, 1, v133);
}

uint64_t sub_251357308@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a3;
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v36 - v7;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v36 - v10;
  v12 = sub_251384A84();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_251385E24();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_251385244();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v36 - v22;
  (*(v17 + 104))(v36 - v22, *MEMORY[0x277D10CE8], v16);
  sub_25135B828(0, &qword_27F42C988);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251386F80;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;

  v25 = sub_2513852E4();
  v36[5] = v26;
  v36[6] = v25;
  v27 = MEMORY[0x253073700](a1, a2);
  v36[3] = v28;
  v36[4] = v27;
  v29 = sub_2513852E4();
  v36[1] = v30;
  v36[2] = v29;
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  (*(v17 + 16))(v21, v23, v16);
  sub_251385254();
  v33 = sub_251385274();
  (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
  v34 = sub_251384A34();
  (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
  sub_251385334();
  return (*(v17 + 8))(v23, v16);
}

uint64_t sub_2513577B4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_25135B874(0, &qword_27F42C990, MEMORY[0x277D120B0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = v32 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v8 = sub_251385244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251384A84();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_251385E24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_251384A74();
  v20 = sub_251385E84();
  v35 = v21;
  v36 = v20;
  v34 = " not been implemented";
  (*(v9 + 104))(v12, *MEMORY[0x277D10D00], v8);
  sub_251385254();
  v22 = sub_251385274();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v23 = sub_2513852C4();
  v32[0] = v24;
  v32[1] = v23;
  sub_25135B828(0, &qword_27F42C988);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251387950;
  sub_251385DB4();
  v26 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 32) = sub_251385E84();
  *(v25 + 40) = v27;
  sub_251385DB4();
  v28 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 48) = sub_251385E84();
  *(v25 + 56) = v29;
  sub_2513852F4();
  v30 = sub_251385074();
  (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
  return sub_251385344();
}

uint64_t sub_251357CA4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_25135B874(0, &qword_27F42C990, MEMORY[0x277D120B0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = v32 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v8 = sub_251385244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251384A84();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_251385E24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_251384A74();
  v20 = sub_251385E84();
  v35 = v21;
  v36 = v20;
  v34 = " not been implemented";
  (*(v9 + 104))(v12, *MEMORY[0x277D10D00], v8);
  sub_251385254();
  v22 = sub_251385274();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v23 = sub_2513852C4();
  v32[0] = v24;
  v32[1] = v23;
  sub_25135B828(0, &qword_27F42C988);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251387950;
  sub_251385DB4();
  v26 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 32) = sub_251385E84();
  *(v25 + 40) = v27;
  sub_251385DB4();
  v28 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 48) = sub_251385E84();
  *(v25 + 56) = v29;
  sub_2513852F4();
  v30 = sub_251385074();
  (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
  return sub_251385344();
}

uint64_t sub_251358194@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = v38 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v38 - v6;
  v7 = sub_251385244();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = v38 - v11;
  v12 = sub_251385E04();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_251384A84();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_251385E24();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  sub_251384A74();
  v21 = sub_251385E84();
  v40 = v22;
  v41 = v21;
  sub_251385DF4();
  sub_251385DE4();
  sub_251385DD4();
  sub_251385DE4();
  sub_251385E14();
  v23 = [v19 bundleForClass_];
  sub_251384A74();
  v24 = sub_251385E84();
  v38[2] = v24;
  v26 = v25;
  v27 = v46;
  v28 = v39;
  (*(v46 + 104))(v39, *MEMORY[0x277D10CF0], v7);
  sub_25135B828(0, &qword_27F42C988);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_251386F80;
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;

  v30 = sub_251385304();
  v38[0] = v31;
  v38[1] = v30;
  sub_251385DB4();
  v32 = [v19 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v33 = v28;
  (*(v27 + 16))(v42, v28, v7);
  v34 = v43;
  sub_251385254();
  v35 = sub_251385274();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_251384A34();
  (*(*(v36 - 8) + 56))(v44, 1, 1, v36);
  sub_251385334();
  return (*(v46 + 8))(v33, v7);
}

uint64_t sub_2513587B0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v38 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v38 - v6;
  v7 = sub_251385244();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = sub_251384A84();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_251385E24();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_251385E04();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_251385324();
  v44 = v21;
  v45 = v20;
  sub_251385DF4();
  sub_251385DE4();
  sub_251385DD4();
  sub_251385DE4();
  sub_251385E14();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  sub_251384A74();
  v25 = sub_251385E84();
  v42 = v25;
  v27 = v26;
  v28 = *MEMORY[0x277D10CF0];
  v39 = v8;
  v29 = v13;
  (*(v8 + 104))(v13, v28, v7);
  sub_25135B828(0, &qword_27F42C988);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_251386F80;
  *(v30 + 32) = v25;
  *(v30 + 40) = v27;

  v31 = sub_251385304();
  v40 = v32;
  v41 = v31;
  sub_251385DB4();
  v33 = [v23 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  (*(v8 + 16))(v43, v29, v7);
  v34 = v47;
  sub_251385254();
  v35 = sub_251385274();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_251384A34();
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  sub_251385334();
  return (*(v39 + 8))(v29, v7);
}

uint64_t sub_251358D5C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = v38 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v38 - v6;
  v39 = sub_251385244();
  v44 = *(v39 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v39);
  v40 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - v10;
  v12 = sub_251385E04();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_251384A84();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_251385E24();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  sub_251384A74();
  v21 = sub_251385E84();
  v38[3] = v22;
  v38[4] = v21;
  sub_251385DF4();
  sub_251385DE4();
  sub_251385DD4();
  sub_251385DE4();
  sub_251385E14();
  v23 = [v19 &selRef:ObjCClassFromMetadata viewDidAppear:? + 3];
  sub_251384A74();
  v24 = sub_251385E84();
  v38[2] = v24;
  v26 = v25;
  v27 = v44;
  v28 = v39;
  (*(v44 + 104))(v11, *MEMORY[0x277D10CF0], v39);
  sub_25135B828(0, &qword_27F42C988);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_251386F80;
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;

  v30 = sub_251385304();
  v38[0] = v31;
  v38[1] = v30;
  sub_251385DB4();
  v32 = [v19 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v33 = v11;
  (*(v27 + 16))(v40, v11, v28);
  v34 = v41;
  sub_251385254();
  v35 = sub_251385274();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_251384A34();
  (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
  sub_251385334();
  return (*(v44 + 8))(v33, v28);
}

uint64_t sub_251359380@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_25135B874(0, &qword_27F42C990, MEMORY[0x277D120B0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = v32 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v8 = sub_251385244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251384A84();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_251385E24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_251384A74();
  v20 = sub_251385E84();
  v35 = v21;
  v36 = v20;
  v34 = " not been implemented";
  (*(v9 + 104))(v12, *MEMORY[0x277D10D00], v8);
  sub_251385254();
  v22 = sub_251385274();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v23 = sub_2513852D4();
  v32[0] = v24;
  v32[1] = v23;
  sub_25135B828(0, &qword_27F42C988);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251387950;
  sub_251385DB4();
  v26 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 32) = sub_251385E84();
  *(v25 + 40) = v27;
  sub_251385DB4();
  v28 = [v18 bundleForClass_];
  sub_251384A74();
  *(v25 + 48) = sub_251385E84();
  *(v25 + 56) = v29;
  sub_2513852F4();
  v30 = sub_251385074();
  (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
  return sub_251385344();
}

uint64_t sub_251359870@<X0>(uint64_t a1@<X8>)
{
  v30[4] = a1;
  sub_25135B874(0, &qword_27F42C990, MEMORY[0x277D120B0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v30[0] = v30 - v3;
  sub_25135B874(0, &qword_27F42C980, MEMORY[0x277D10D20]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  v8 = sub_251385244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251384A84();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_251385E24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_251384A74();
  v20 = sub_251385E84();
  v30[2] = v21;
  v30[3] = v20;
  v30[1] = " not been implemented";
  (*(v9 + 104))(v12, *MEMORY[0x277D10CF8], v8);
  sub_251385254();
  v22 = sub_251385274();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  sub_25135B828(0, &qword_27F42C988);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_251387950;
  sub_251385DB4();
  v24 = [v18 bundleForClass_];
  sub_251384A74();
  *(v23 + 32) = sub_251385E84();
  *(v23 + 40) = v25;
  sub_251385DB4();
  v26 = [v18 bundleForClass_];
  sub_251384A74();
  *(v23 + 48) = sub_251385E84();
  *(v23 + 56) = v27;
  sub_2513852F4();
  v28 = sub_251385074();
  (*(*(v28 - 8) + 56))(v30[0], 1, 1, v28);
  return sub_251385344();
}

uint64_t sub_251359D4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_25135B874(0, &qword_27F42C998, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-v8];
  v10 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251359F7C(a3, a4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25135B8C8(v9);
    return 0;
  }

  else
  {
    sub_25135B99C(v9, v14, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
    v15 = sub_251384944();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_251384934();
    sub_251356304(&qword_27F42C9A0, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
    v19 = sub_251384924();
    sub_25135B940(v14);

    return v19;
  }
}

uint64_t sub_251359F7C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v163 = a1;
  v164 = a2;
  v4 = sub_251385B74();
  v154 = *(v4 - 8);
  v5 = *(v154 + 64);
  MEMORY[0x28223BE20](v4);
  v155 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251385224();
  v160 = *(v7 - 8);
  v161 = v7;
  v8 = *(v160 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v157 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v150 - v11;
  sub_25135B874(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v158 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v162 = &v150 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v150 - v18;
  v20 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v156 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v150 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v150 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v150 - v30;
  v32 = *MEMORY[0x277CCBEA0];
  v33 = sub_251385A64();
  v34 = [v33 highestPriorityUnsatisfiedRequirement];

  if (!v34)
  {
    v51 = sub_251384A34();
    (*(*(v51 - 8) + 56))(a3, 3, 4, v51);
    v52 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
    v47 = *(*(v52 - 8) + 56);
    v48 = v52;
    v49 = a3;
LABEL_11:
    v50 = 0;
    goto LABEL_12;
  }

  v153 = v4;
  v165 = a3;
  v35 = *MEMORY[0x277CCBF28];
  v36 = sub_251385E64();
  v38 = v37;
  if (v36 == sub_251385E64() && v38 == v39)
  {
    goto LABEL_8;
  }

  v40 = sub_2513863A4();

  if (v40)
  {
LABEL_9:

    v46 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
    v47 = *(*(v46 - 8) + 56);
    v48 = v46;
    v49 = v165;
    v50 = 1;
LABEL_12:

    return v47(v49, v50, 1, v48);
  }

  v41 = *MEMORY[0x277CCBED8];
  v42 = sub_251385E64();
  v44 = v43;
  if (v42 == sub_251385E64() && v44 == v45)
  {
    goto LABEL_7;
  }

  v54 = sub_2513863A4();
  v152 = v34;

  if (v54)
  {
    goto LABEL_9;
  }

  v55 = *MEMORY[0x277CCBEF0];
  v56 = sub_251385E64();
  v58 = v57;
  if (v56 == sub_251385E64() && v58 == v59)
  {
LABEL_7:

LABEL_8:

    goto LABEL_9;
  }

  v60 = sub_2513863A4();
  v152 = v152;

  if (v60)
  {
    goto LABEL_9;
  }

  v61 = *MEMORY[0x277CCBFE0];
  v62 = sub_251385E64();
  v64 = v63;
  if (v62 == sub_251385E64() && v64 == v65)
  {
    v66 = v152;

LABEL_23:

LABEL_24:
    v67 = v165;
    sub_25135634C(v165);
    v68 = sub_251384A34();
    (*(*(v68 - 8) + 56))(v67, 0, 4, v68);
LABEL_25:
    v69 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
    v47 = *(*(v69 - 8) + 56);
    v48 = v69;
    v49 = v67;
    goto LABEL_11;
  }

  LODWORD(v151) = sub_2513863A4();
  v66 = v152;
  v150 = v152;

  if (v151)
  {
    goto LABEL_23;
  }

  v70 = *MEMORY[0x277CCBF70];
  v71 = sub_251385E64();
  v73 = v72;
  if (v71 == sub_251385E64() && v73 == v74)
  {
    v75 = v150;

LABEL_30:

    goto LABEL_24;
  }

  LODWORD(v152) = sub_2513863A4();
  v75 = v150;
  v151 = v150;

  if (v152)
  {
    goto LABEL_30;
  }

  v76 = v151;
  v77 = *MEMORY[0x277CCBFB0];
  v78 = sub_251385E64();
  v80 = v79;
  if (v78 == sub_251385E64() && v80 == v81)
  {

LABEL_35:

    v82 = sub_251385A64();
    v83 = [v82 unsatisfiedRequirementIdentifiers];

    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v84 = sub_251385F24();

    v166 = *MEMORY[0x277CCBFB8];
    MEMORY[0x28223BE20](v85);
    *(&v150 - 2) = &v166;
    LOBYTE(v83) = sub_25135B310(sub_25135BA04, (&v150 - 4), v84);

    v86 = sub_251384A34();
    if (v83)
    {
      v87 = 1;
    }

    else
    {
      v87 = 2;
    }

    (*(*(v86 - 8) + 56))(v31, v87, 4, v86);
    v88 = v31;
    goto LABEL_39;
  }

  LODWORD(v164) = sub_2513863A4();
  v163 = v76;

  if (v164)
  {
    goto LABEL_35;
  }

  v91 = *MEMORY[0x277CCBFB8];
  v92 = sub_251385E64();
  v94 = v93;
  if (v92 == sub_251385E64() && v94 == v95)
  {
    v96 = v163;

LABEL_45:

    v99 = sub_251384A34();
    v67 = v165;
    (*(*(v99 - 8) + 56))(v165, 1, 4, v99);
    goto LABEL_25;
  }

  v97 = sub_2513863A4();
  v96 = v163;
  v98 = v163;

  if (v97)
  {
    goto LABEL_45;
  }

  v100 = *MEMORY[0x277CCBFC0];
  v101 = sub_251385E64();
  v103 = v102;
  if (v101 == sub_251385E64() && v103 == v104)
  {

LABEL_50:

    sub_251384A24();
    v107 = sub_251384A34();
    v108 = *(v107 - 8);
    result = (*(v108 + 48))(v19, 1, v107);
    if (result != 1)
    {
      (*(v108 + 32))(v29, v19, v107);
      (*(v108 + 56))(v29, 0, 4, v107);
      v88 = v29;
LABEL_39:
      v89 = v165;
      sub_25135B99C(v88, v165, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
      v90 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
      return (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    }

    __break(1u);
    goto LABEL_75;
  }

  v105 = sub_2513863A4();
  v106 = v98;

  if (v105)
  {
    goto LABEL_50;
  }

  v109 = *MEMORY[0x277CCBFE8];
  v110 = sub_251385E64();
  v112 = v111;
  if (v110 == sub_251385E64() && v112 == v113)
  {

LABEL_56:
    v116 = v159;
    v117 = v160;
    v118 = v161;
    (*(v160 + 104))(v159, *MEMORY[0x277D10CE0], v161);
    v119 = v162;
    sub_251385204();
    (*(v117 + 8))(v116, v118);
    v120 = sub_251384A34();
    v121 = *(v120 - 8);
    result = (*(v121 + 48))(v119, 1, v120);
    if (result == 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    (*(v121 + 32))(v26, v162, v120);
LABEL_58:
    (*(v121 + 56))(v26, 0, 4, v120);
    v88 = v26;
    goto LABEL_39;
  }

  v114 = sub_2513863A4();
  v115 = v106;

  if (v114)
  {
    goto LABEL_56;
  }

  v122 = *MEMORY[0x277CCBF88];
  v123 = sub_251385E64();
  v125 = v124;
  if (v123 == sub_251385E64() && v125 == v126)
  {

LABEL_63:
    v130 = v160;
    v129 = v161;
    v131 = v157;
    (*(v160 + 104))(v157, *MEMORY[0x277D10CD8], v161);
    v132 = v158;
    sub_251385204();
    (*(v130 + 8))(v131, v129);
    v120 = sub_251384A34();
    v121 = *(v120 - 8);
    result = (*(v121 + 48))(v132, 1, v120);
    if (result == 1)
    {
LABEL_76:
      __break(1u);
      return result;
    }

    v26 = v156;
    (*(v121 + 32))(v156, v158, v120);
    goto LABEL_58;
  }

  v127 = sub_2513863A4();
  v128 = v115;

  if (v127)
  {
    goto LABEL_63;
  }

  v133 = *MEMORY[0x277CCBF90];
  v134 = sub_251385E64();
  v136 = v135;
  if (v134 == sub_251385E64() && v136 == v137)
  {

LABEL_69:

    v140 = sub_251384A34();
    v67 = v165;
    (*(*(v140 - 8) + 56))(v165, 4, 4, v140);
    goto LABEL_25;
  }

  v138 = sub_2513863A4();
  v139 = v128;

  if (v138)
  {
    goto LABEL_69;
  }

  sub_251385B44();
  v141 = v139;
  v142 = sub_251385B64();
  v143 = sub_251385FD4();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v166 = v145;
    *v144 = 136446466;
    *(v144 + 4) = sub_251352A00(0xD00000000000003ALL, 0x8000000251387970, &v166);
    *(v144 + 12) = 2082;
    v146 = sub_251385E64();
    v148 = sub_251352A00(v146, v147, &v166);

    *(v144 + 14) = v148;
    _os_log_impl(&dword_25134A000, v142, v143, "[%{public}s] Unexpected failing requirement %{public}s; hiding tile", v144, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v145, -1, -1);
    MEMORY[0x253074E50](v144, -1, -1);
  }

  else
  {
  }

  (*(v154 + 8))(v155, v153);
  v149 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
  return (*(*(v149 - 8) + 56))(v165, 1, 1, v149);
}

uint64_t sub_25135AFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10D28];
  v3 = sub_2513852A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25135B074@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  sub_251385404();
  v3 = sub_251384F94();
  result = (*(*(v3 - 8) + 48))(a1, 1, v3);
  if (!result)
  {
    type metadata accessor for SleepingSampleAnalysisHealthChecklistActionHandler(0);
    sub_251364A84();
    return sub_251384F74();
  }

  return result;
}

uint64_t sub_25135B108()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_25135B138()
{
  sub_25135B828(0, &qword_280DF6C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251387960;
  sub_251353F88(0, &qword_280DF6DF8, 0x277CCD8D8);
  result = [swift_getObjCClassFromMetadata() appleBalanceMetricsType];
  if (result)
  {
    *(inited + 32) = result;
    sub_25135B448(inited);
    v3 = v2;
    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25135B200(uint64_t a1)
{
  v2 = sub_25135B2BC();

  return MEMORY[0x282169698](a1, v2);
}

uint64_t sub_25135B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25135B2BC();

  return MEMORY[0x282169688](a1, a2, a3, v6);
}

unint64_t sub_25135B2BC()
{
  result = qword_280DF7808;
  if (!qword_280DF7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF7808);
  }

  return result;
}

uint64_t sub_25135B310(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25135B3B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251385E64();
  v6 = v5;
  if (v4 == sub_251385E64() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2513863A4();
  }

  return v9 & 1;
}

void sub_25135B448(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_251386194())
    {
LABEL_3:
      sub_25135B72C();
      v3 = sub_2513861F4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_251386194();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x253074620](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_2513860F4();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_251353F88(0, &qword_280DF6E08, 0x277CCD720);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_251386104();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        sub_251385894();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_2513860F4();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_251353F88(0, &qword_280DF6E08, 0x277CCD720);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_251386104();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_25135B72C()
{
  if (!qword_280DF6C50)
  {
    sub_251353F88(255, &qword_280DF6E08, 0x277CCD720);
    sub_25135B7A0();
    v0 = sub_251386204();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF6C50);
    }
  }
}

unint64_t sub_25135B7A0()
{
  result = qword_280DF6E00;
  if (!qword_280DF6E00)
  {
    sub_251353F88(255, &qword_280DF6E08, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF6E00);
  }

  return result;
}

void sub_25135B828(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251386394();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25135B874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25135B8C8(uint64_t a1)
{
  sub_25135B874(0, &qword_27F42C998, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25135B940(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25135B99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id HealthBalanceAppDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthBalanceAppDelegate.init()()
{
  sub_251384B94();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthBalanceAppDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for HealthBalanceAppDelegate()
{
  result = qword_280DF77A8;
  if (!qword_280DF77A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id HealthBalanceAppDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthBalanceAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25135BCA8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25135BCDC(uint64_t a1, void *a2)
{
  v58 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_251385B74();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v53 - v7;
  v57 = sub_251384BA4();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v57);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25135F56C(0, &unk_27F42CD20, MEMORY[0x277D0FDE8], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - v16;
  v18 = sub_251385484();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[3];
  v24 = a2[4];
  v61 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = sub_251385524();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 identifier];

    v28 = sub_251385E64();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  (*(v19 + 104))(v22, *MEMORY[0x277D10EA8], v18);
  v31 = sub_251385474();
  v33 = v32;
  (*(v19 + 8))(v22, v18);
  if (v30)
  {
    if (v28 == v31 && v30 == v33)
    {

      goto LABEL_10;
    }

    v34 = sub_2513863A4();

    if (v34)
    {
LABEL_10:
      v35 = v56;
      sub_251385B44();
      v36 = sub_251385B64();
      v37 = sub_251385FE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v62 = v39;
        *v38 = 136446210;
        v40 = sub_251386484();
        v42 = sub_251352A00(v40, v41, &v62);

        *(v38 + 4) = v42;
        v43 = "[%{public}s] on the Sharing tab, using reset to navigate to the default view instead";
LABEL_19:
        _os_log_impl(&dword_25134A000, v36, v37, v43, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x253074E50](v39, -1, -1);
        MEMORY[0x253074E50](v38, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  sub_251384B94();
  sub_251384B54();
  (*(v8 + 8))(v11, v57);
  v44 = sub_251384B44();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v17, 1, v44) == 1)
  {
    return sub_25135EF84(v17, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  }

  v46 = v54;
  sub_25135F37C(v17, v54, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  v47 = (*(v45 + 88))(v46, v44);
  if (v47 != *MEMORY[0x277D0FDD8] && v47 != *MEMORY[0x277D0FDD0])
  {
    (*(v45 + 8))(v46, v44);
    return sub_25135EF84(v17, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  }

  sub_25135EF84(v17, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  v35 = v53;
  sub_251385B44();
  v36 = sub_251385B64();
  v37 = sub_251385FE4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v39;
    *v38 = 136446210;
    v49 = sub_251386484();
    v51 = sub_251352A00(v49, v50, &v62);

    *(v38 + 4) = v51;
    v43 = "[%{public}s] opening a time scope url, using reset for a clean stack";
    goto LABEL_19;
  }

LABEL_20:

  (*(v59 + 8))(v35, v60);
  v52 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  return sub_251385534();
}

uint64_t HealthBalanceAppDelegate.openNSUA(activity:context:navigator:)(void *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  v6 = sub_251385B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v11 = a1;
  v12 = sub_251385B64();
  v13 = sub_251385FE4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = a2;
    v15 = v14;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 136446466;
    v16 = sub_251386484();
    v18 = sub_251352A00(v16, v17, &v38);
    v36 = v6;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = v11;
    v21 = [v20 description];
    v22 = sub_251385E64();
    v34 = v12;
    v23 = v22;
    HIDWORD(v33) = v13;
    v24 = v7;
    v26 = v25;

    v27 = sub_251352A00(v23, v26, &v38);

    *(v15 + 14) = v27;
    v28 = v34;
    _os_log_impl(&dword_25134A000, v34, BYTE4(v33), "[%{public}s] received request to open user activity: [%{public}s]]", v15, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x253074E50](v29, -1, -1);
    v30 = v15;
    a2 = v37;
    MEMORY[0x253074E50](v30, -1, -1);

    (*(v24 + 8))(v10, v36);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v31 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_251385534();
  return sub_25135C658(v11, a2, a3);
}

uint64_t sub_25135C658(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = a3;
  v99 = a2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x277D83D88];
  sub_25135F56C(0, &qword_27F42C9B8, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v91[-v10];
  v11 = sub_251385654();
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v98 = &v91[-v15];
  sub_25135F56C(0, &qword_27F42C9C0, MEMORY[0x277D0FE10], v7);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = &v91[-v18];
  v114 = sub_251384B74();
  v105 = *(v114 - 8);
  v19 = *(v105 + 64);
  v20 = MEMORY[0x28223BE20](v114);
  v108 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = v21;
  MEMORY[0x28223BE20](v20);
  v113 = &v91[-v22];
  sub_25135F56C(0, &unk_27F42CD20, MEMORY[0x277D0FDE8], v7);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v91[-v25];
  v112 = sub_251384B44();
  v27 = *(v112 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v112);
  v107 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = v30;
  MEMORY[0x28223BE20](v29);
  v111 = &v91[-v31];
  v32 = sub_251385B74();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v91[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251385B44();
  v37 = a1;
  v38 = sub_251385B64();
  v39 = sub_251385FE4();

  v40 = os_log_type_enabled(v38, v39);
  v110 = v27;
  v106 = ObjectType;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v94 = v32;
    v42 = v41;
    v93 = swift_slowAlloc();
    *&v115[0] = v93;
    *v42 = 136446466;
    v43 = sub_251386484();
    v95 = v4;
    v45 = sub_251352A00(v43, v44, v115);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    v46 = v37;
    v47 = [v46 description];
    v48 = sub_251385E64();
    v92 = v39;
    v49 = v33;
    v50 = v26;
    v51 = v37;
    v53 = v52;

    v27 = v110;
    v54 = sub_251352A00(v48, v53, v115);
    v37 = v51;
    v26 = v50;

    *(v42 + 14) = v54;
    _os_log_impl(&dword_25134A000, v38, v92, "[%{public}s] navigating to activity: %{public}s", v42, 0x16u);
    v55 = v93;
    swift_arrayDestroy();
    MEMORY[0x253074E50](v55, -1, -1);
    MEMORY[0x253074E50](v42, -1, -1);

    (*(v49 + 8))(v36, v94);
  }

  else
  {

    (*(v33 + 8))(v36, v32);
  }

  sub_251384B64();
  v56 = *(v27 + 48);
  v57 = v112;
  v58 = v56(v26, 1, v112);
  v59 = v113;
  v60 = v96;
  if (v58 == 1)
  {
    (*(v27 + 104))(v111, *MEMORY[0x277D0FDC8], v57);
    if (v56(v26, 1, v57) != 1)
    {
      sub_25135EF84(v26, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
    }
  }

  else
  {
    (*(v27 + 32))(v111, v26, v57);
  }

  sub_251384B84();
  v61 = v105;
  v62 = *(v105 + 48);
  if (v62(v60, 1, v114) == 1)
  {
    v63 = v114;
    (*(v61 + 104))(v59, *MEMORY[0x277D0FE08], v114);
    if (v62(v60, 1, v63) != 1)
    {
      sub_25135EF84(v60, &qword_27F42C9C0, MEMORY[0x277D0FE10]);
    }
  }

  else
  {
    (*(v61 + 32))(v59, v60, v114);
  }

  sub_25135F040(0, &qword_27F42C9C8, sub_25135EFF4);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  *(v64 + 16) = v37;
  v96 = v64;
  v65 = v37;
  v67 = v101;
  v66 = v102;
  v68 = *(v101 + 16);
  v69 = v98;
  v68(v98, v99, v102);
  sub_25135F040(0, &qword_27F42C9D8, MEMORY[0x277D11018]);
  v71 = *(v70 + 52);
  v72 = (*(v70 + 48) + 3) & 0x1FFFFFFFCLL;
  v73 = swift_allocObject();
  *(v73 + ((*(*v73 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v74 = v100;
  v68(v100, v69, v66);
  v75 = *(v67 + 8);
  v76 = v65;
  v75(v69, v66);
  (*(v67 + 32))(v73 + *(*v73 + *MEMORY[0x277D841D0] + 16), v74, v66);
  v77 = sub_251385F94();
  (*(*(v77 - 8) + 56))(v109, 1, 1, v77);
  v78 = v110;
  (*(v110 + 16))(v107, v111, v112);
  sub_2513547B4(v104, v115);
  (*(v61 + 16))(v108, v113, v114);
  sub_251385F74();

  v104 = sub_251385F64();
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = (v97 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v61 + 80) + v82 + 40) & ~*(v61 + 80);
  v84 = (v103 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v86 = MEMORY[0x277D85700];
  *(v85 + 16) = v104;
  *(v85 + 24) = v86;
  v87 = *(v78 + 32);
  v88 = v112;
  v87(v85 + v79, v107, v112);
  *(v85 + v80) = v96;
  *(v85 + v81) = v73;
  sub_25135F0AC(v115, v85 + v82);
  v89 = v114;
  (*(v61 + 32))(v85 + v83, v108, v114);
  *(v85 + v84) = v106;
  sub_25135E850(0, 0, v109, &unk_251387B48, v85);

  (*(v61 + 8))(v113, v89);
  return (*(v110 + 8))(v111, v88);
}

void HealthBalanceAppDelegate.openURL(url:context:navigator:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_251384A34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_251385B74();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v16 = *(v8 + 16);
  v37 = a1;
  v16(v11, a1, v7);
  v17 = sub_251385B64();
  v18 = sub_251385FE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v4;
    v20 = v19;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v20 = 136446466;
    v21 = sub_251386484();
    v23 = sub_251352A00(v21, v22, &v39);
    ObjectType = a3;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_25135EE58(&qword_27F42C9B0, MEMORY[0x277CC9260]);
    v25 = sub_251386384();
    v27 = v26;
    (*(v8 + 8))(v11, v7);
    v28 = sub_251352A00(v25, v27, &v39);
    a3 = ObjectType;

    *(v20 + 14) = v28;
    _os_log_impl(&dword_25134A000, v17, v18, "[%{public}s] received request to open url: [%{public}s]]", v20, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x253074E50](v29, -1, -1);
    MEMORY[0x253074E50](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 8))(v15, v36);
  sub_251384C14();
  v30 = sub_251385374();

  v31 = v37;
  sub_251384B24();
  sub_25135BCDC(v31, a3);
  sub_25135C658(v30, v38, a3);
}

uint64_t sub_25135D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v26;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_251385B74();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = sub_251385424();
  v8[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  sub_25135F56C(0, &qword_27F42C9E0, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v16 = sub_251384A64();
  v8[16] = v16;
  v17 = *(v16 - 8);
  v8[17] = v17;
  v18 = *(v17 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v19 = sub_251384B44();
  v8[21] = v19;
  v20 = *(v19 - 8);
  v8[22] = v20;
  v21 = *(v20 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  sub_251385F74();
  v8[26] = sub_251385F64();
  v23 = sub_251385F54();

  return MEMORY[0x2822009F8](sub_25135D770, v23, v22);
}

uint64_t sub_25135D770()
{
  v88 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 32);

  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = (*(v4 + 88))(v2, v3);
  if (v7 == *MEMORY[0x277D0FDE0])
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = sub_25135DEEC(*(v0 + 40), v10, 0, *(v0 + 56));
    sub_25135E3E8(v11, v10, v8);
  }

  else if (v7 == *MEMORY[0x277D0FDC8])
  {
    v12 = *(v0 + 72);
  }

  else if (v7 == *MEMORY[0x277D0FDD8])
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v81 = *(v0 + 56);
    v84 = *(v0 + 72);
    v75 = *(v0 + 40);
    v78 = *(v0 + 48);
    sub_251384A54();
    sub_251385444();
    sub_251384A44();
    (*(v15 + 16))(v16, v13, v17);
    sub_251384954();
    v21 = sub_251384964();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    *(v0 + 16) = MEMORY[0x277D84F90];
    sub_25135EE58(&qword_27F42C9E8, MEMORY[0x277D10E30]);
    sub_25135F56C(0, &qword_27F42C9F0, MEMORY[0x277D10E30], MEMORY[0x277D83940]);
    sub_25135F5D0();
    sub_251386164();
    v22 = sub_251385434();

    (*(v15 + 8))(v13, v17);
  }

  else if (v7 == *MEMORY[0x277D0FDD0])
  {
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v29 = *(v0 + 104);
    v82 = *(v0 + 56);
    v85 = *(v0 + 72);
    v79 = *(v0 + 48);
    v73 = *(v0 + 112);
    v76 = *(v0 + 40);
    sub_251384A54();
    sub_251385444();
    v30 = *(v26 + 16);
    v30(v24, v23, v27);
    v30(v25, v23, v27);
    sub_251384954();
    v31 = sub_251384964();
    (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
    *(v0 + 24) = MEMORY[0x277D84F90];
    sub_25135EE58(&qword_27F42C9E8, MEMORY[0x277D10E30]);
    sub_25135F56C(0, &qword_27F42C9F0, MEMORY[0x277D10E30], MEMORY[0x277D83940]);
    sub_25135F5D0();
    sub_251386164();
    v32 = sub_251385434();

    (*(v26 + 8))(v23, v27);
  }

  else
  {
    v33 = *(v0 + 192);
    v34 = *(v0 + 168);
    v35 = *(v0 + 96);
    v36 = *(v0 + 32);
    sub_251385B44();
    v6(v33, v36, v34);
    v37 = sub_251385B64();
    v38 = sub_251385FC4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 192);
    if (v39)
    {
      v41 = *(v0 + 176);
      v72 = *(v0 + 184);
      v42 = *(v0 + 168);
      v80 = *(v0 + 88);
      v83 = *(v0 + 80);
      v86 = *(v0 + 96);
      v77 = v38;
      v43 = *(v0 + 72);
      v44 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v44 = 136446466;
      v45 = sub_251386484();
      v47 = sub_251352A00(v45, v46, &v87);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2082;
      v6(v72, v40, v42);
      v48 = sub_251385E94();
      v50 = v49;
      v51 = *(v41 + 8);
      v51(v40, v42);
      v52 = sub_251352A00(v48, v50, &v87);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_25134A000, v37, v77, "[%{public}s] asked to navigate with unsupported route: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253074E50](v74, -1, -1);
      MEMORY[0x253074E50](v44, -1, -1);

      (*(v80 + 8))(v86, v83);
    }

    else
    {
      v53 = *(v0 + 168);
      v54 = *(v0 + 176);
      v56 = *(v0 + 88);
      v55 = *(v0 + 96);
      v57 = *(v0 + 80);

      v51 = *(v54 + 8);
      v51(v40, v53);
      (*(v56 + 8))(v55, v57);
    }

    v58 = *(v0 + 200);
    v59 = *(v0 + 168);
    v60 = *(v0 + 72);

    v51(v58, v59);
  }

  v62 = *(v0 + 192);
  v61 = *(v0 + 200);
  v63 = *(v0 + 184);
  v65 = *(v0 + 152);
  v64 = *(v0 + 160);
  v66 = *(v0 + 144);
  v68 = *(v0 + 112);
  v67 = *(v0 + 120);
  v69 = *(v0 + 96);

  v70 = *(v0 + 8);

  return v70();
}

void *sub_25135DEEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a3;
  v7 = sub_251385484();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251385654();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2513856F4();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251385B74();
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v22 = sub_251385B64();
  v23 = sub_251385FE4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v52 = v11;
    v50 = v26;
    v62 = v26;
    *v25 = 136446210;
    v27 = sub_251386484();
    v29 = a2;
    v30 = v8;
    v31 = v7;
    v32 = a1;
    v33 = sub_251352A00(v27, v28, &v62);

    *(v25 + 4) = v33;
    a1 = v32;
    v7 = v31;
    v8 = v30;
    a2 = v29;
    _os_log_impl(&dword_25134A000, v22, v23, "[%{public}s] navigating to balance room", v25, 0xCu);
    v34 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v11 = v52;
    MEMORY[0x253074E50](v34, -1, -1);
    v35 = v25;
    a4 = v51;
    MEMORY[0x253074E50](v35, -1, -1);
  }

  (*(v53 + 8))(v21, v54);
  v36 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v37 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v37));
  v38 = v55;
  v39 = v56;
  v40 = a2 + v36;
  v41 = v57;
  (*(v56 + 16))(v55, v40, v57);
  os_unfair_lock_unlock((a2 + v37));
  v42 = v59;
  sub_251355F64(v58);
  (*(v39 + 8))(v38, v41);
  v43 = a4[4];
  v44 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v44);
  *(&v49 - 2) = v42;
  (*(v8 + 104))(v11, *MEMORY[0x277D10EA0], v7);
  type metadata accessor for BalanceRoomViewController();
  sub_251385544();
  v46 = v45;
  (*(v8 + 8))(v11, v7);
  os_unfair_lock_lock((a1 + 24));
  v47 = *(a1 + 16);
  os_unfair_lock_unlock((a1 + 24));
  [v46 restoreUserActivityState_];

  (*(v60 + 8))(v42, v61);
  return v46;
}

void sub_25135E3E8(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v5 = sub_251384B74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251385654();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251385B74();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v17 = sub_251385B64();
  v18 = sub_251385FE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = a3;
    v20 = v19;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v20 = 136446210;
    v21 = sub_251386484();
    v43 = a2;
    v23 = sub_251352A00(v21, v22, &v48);
    v41 = v13;
    v24 = v10;
    v25 = v9;
    v26 = v6;
    v27 = v23;
    a2 = v43;

    *(v20 + 4) = v27;
    v6 = v26;
    v9 = v25;
    v10 = v24;
    _os_log_impl(&dword_25134A000, v17, v18, "[%{public}s] presenting balance onboarding", v20, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x253074E50](v28, -1, -1);
    v29 = v20;
    a3 = v42;
    MEMORY[0x253074E50](v29, -1, -1);

    (*(v44 + 8))(v16, v41);
  }

  else
  {

    (*(v44 + 8))(v16, v13);
  }

  v30 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v31 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v31));
  v32 = v45;
  v33 = v46;
  (*(v46 + 16))(v45, a2 + v30, v10);
  os_unfair_lock_unlock((a2 + v31));
  v34 = sub_251385624();
  (*(v33 + 8))(v32, v10);
  (*(v6 + 16))(v9, a3, v5);
  sub_25137FAEC(v9, &v48);
  v35 = v48;
  v36 = type metadata accessor for BalanceOnboardingNavigationController();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator] = 0;
  *&v37[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore] = v34;
  v37[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext] = v35;
  v49.receiver = v37;
  v49.super_class = v36;
  v38 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
  sub_25137F11C();
  sub_2513811E0();

  [v38 setModalPresentationStyle_];
  [v47 presentViewController:v38 animated:1 completion:0];
}

uint64_t sub_25135E850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_25135F56C(0, &qword_27F42C9B8, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  sub_25135F37C(a3, v27 - v12, &qword_27F42C9B8, v9);
  v14 = sub_251385F94();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_25135EF84(v13, &qword_27F42C9B8, MEMORY[0x277D85720]);
  }

  else
  {
    sub_251385F84();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_251385F54();
    v20 = v19;
    sub_251385894();
    if (a2)
    {
LABEL_6:
      v21 = sub_251385EB4() + 32;
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

      sub_25135EF84(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);

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

  sub_25135EF84(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);
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

id sub_25135EB98(uint64_t a1)
{
  v2 = sub_2513856F4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(type metadata accessor for BalanceRoomViewController());
  return BalanceRoomViewController.init(context:)(v5);
}

uint64_t sub_25135EC68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25135ED60;

  return v7(a1);
}

uint64_t sub_25135ED60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25135EE58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25135EEA8()
{
  result = sub_251384BA4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25135EF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25135F56C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25135EFF4()
{
  result = qword_27F42C9D0;
  if (!qword_27F42C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42C9D0);
  }

  return result;
}

void sub_25135F040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_251386274();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25135F0AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25135F0C4(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_251384B44() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_251384B74() - 8);
  v10 = (*(v9 + 80) + v8 + 40) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v6);
  v14 = *(v1 + v7);
  v15 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_25135F288;

  return sub_25135D4F8(a1, v11, v12, v1 + v5, v13, v14, v1 + v8, v1 + v10);
}

uint64_t sub_25135F288()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25135F37C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25135F56C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25135F3FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25135F660;

  return sub_25135EC68(a1, v5);
}

uint64_t sub_25135F4B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25135F288;

  return sub_25135EC68(a1, v5);
}

void sub_25135F56C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25135F5D0()
{
  result = qword_27F42C9F8;
  if (!qword_27F42C9F8)
  {
    sub_25135F56C(255, &qword_27F42C9F0, MEMORY[0x277D10E30], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42C9F8);
  }

  return result;
}

id sub_25135F708()
{
  sub_251361AFC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251387960;
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    *(inited + 32) = result;
    v2 = sub_251360DD8(inited);
    swift_setDeallocating();
    v3 = *(inited + 16);
    swift_arrayDestroy();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25135F7C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2513861A4();

    if (v9)
    {

      sub_251361B50();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_251386194();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_25135FB28(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_25135FCF8(v22 + 1);
    }

    v20 = v8;
    sub_251360168(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_251361B50();
  v11 = *(v6 + 40);
  v12 = sub_2513860F4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2513601EC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_251386104();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_25135F9D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2513863F4();
  sub_251385ED4();
  v9 = sub_251386414();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2513863A4() & 1) != 0)
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

    sub_25136034C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25135FB28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_25135B72C();
    v2 = sub_2513861E4();
    v16 = v2;
    sub_251386184();
    if (sub_2513861B4())
    {
      sub_251361B50();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_25135FCF8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_2513860F4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2513861B4());
    }
  }

  else
  {
    sub_251385894();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25135FCF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25135B72C();
  result = sub_2513861D4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2513860F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25135FF14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251361B9C();
  result = sub_2513861D4();
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
      sub_2513863F4();
      sub_251385ED4();
      result = sub_251386414();
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

unint64_t sub_251360168(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2513860F4();
  v5 = -1 << *(a2 + 32);
  result = sub_251386174();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2513601EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25135FCF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2513604CC();
      goto LABEL_12;
    }

    sub_251360760(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2513860F4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_251361B50();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_251386104();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2513863B4();
  __break(1u);
}

uint64_t sub_25136034C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25135FF14(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251360610();
      goto LABEL_16;
    }

    sub_251360968(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2513863F4();
  sub_251385ED4();
  result = sub_251386414();
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

      result = sub_2513863A4();
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
  result = sub_2513863B4();
  __break(1u);
  return result;
}

id sub_2513604CC()
{
  v1 = v0;
  sub_25135B72C();
  v2 = *v0;
  v3 = sub_2513861C4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_251360610()
{
  v1 = v0;
  sub_251361B9C();
  v2 = *v0;
  v3 = sub_2513861C4();
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

uint64_t sub_251360760(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25135B72C();
  result = sub_2513861D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2513860F4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_251360968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_251361B9C();
  result = sub_2513861D4();
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
      sub_2513863F4();

      sub_251385ED4();
      result = sub_251386414();
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

uint64_t sub_251360B94()
{
  v0 = sub_251384A84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_251385E24();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  return sub_251385E74();
}

id sub_251360CEC()
{
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_251385E34();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v5 init];
}

uint64_t sub_251360DD8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251386194())
  {
    v4 = sub_251361B50();
    v5 = sub_25135B7A0();
    result = MEMORY[0x253074390](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x253074620](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_25135F7C0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_251386194();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251360F08()
{
  v0 = sub_251384A84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_251385E24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_251361AA4();
  v6 = sub_2513851A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v98 = v10;
  *(v10 + 16) = xmmword_251387B70;
  v11 = v10 + v9;
  *v11 = sub_251360CEC();
  *(v11 + 8) = 0;
  v12 = *MEMORY[0x277D0FD88];
  v107 = *(v7 + 104);
  v13 = v11;
  v107(v11, v12, v6);
  v14 = (v11 + v8);
  v106 = v8;
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v110 = ObjCClassFromMetadata;
  v109 = objc_opt_self();
  v16 = [v109 bundleForClass_];
  sub_251384A74();
  v105 = "";
  v17 = v3;
  *v14 = sub_251385E74();
  v14[1] = v18;
  v19 = v107;
  v107(v14, *MEMORY[0x277D0FD90], v6);
  v103 = v13;
  v104 = v7 + 104;
  v100 = 2 * v8;
  v20 = v13 + 2 * v8;
  v21 = v13;
  sub_251385DB4();
  v22 = v109;
  v23 = [v109 bundleForClass_];
  v101 = v17;
  sub_251384A74();
  *v20 = sub_251385E74();
  *(v20 + 8) = v24;
  *(v20 + 16) = 0;
  v102 = *MEMORY[0x277D0FD98];
  v108 = v6;
  v19(v20);
  v25 = v19;
  v26 = v106;
  v27 = v21 + v100 + v106;
  sub_251385DB4();
  v28 = v110;
  v29 = [v22 bundleForClass_];
  sub_251384A74();
  *v27 = sub_251385E74();
  *(v27 + 8) = v30;
  *(v27 + 16) = 0;
  v31 = v102;
  (v25)(v27, v102, v6);
  v26 *= 4;
  v32 = v103 + v26;
  sub_251385DB4();
  v33 = [v109 bundleForClass_];
  sub_251384A74();
  *v32 = sub_251385E74();
  *(v32 + 8) = v34;
  *(v32 + 16) = 0;
  v35 = v108;
  (v25)(v32, v31, v108);
  v36 = v106;
  v37 = v103;
  v38 = (v103 + v26 + v106);
  sub_251385DB4();
  v40 = v109;
  v39 = v110;
  v41 = [v109 bundleForClass_];
  sub_251384A74();
  *v38 = sub_251385E74();
  v38[1] = v42;
  v38[2] = 0;
  LODWORD(v100) = *MEMORY[0x277D0FD80];
  v43 = v35;
  v44 = v107;
  (v107)(v38);
  v45 = v37 + 6 * v36;
  sub_251385DB4();
  v46 = [v40 bundleForClass_];
  sub_251384A74();
  *v45 = sub_251385E74();
  *(v45 + 8) = v47;
  *(v45 + 16) = 0;
  v48 = v102;
  v44(v45, v102, v43);
  v99 = 8 * v106;
  v49 = v37 + 7 * v106;
  sub_251385DB4();
  v51 = v109;
  v50 = v110;
  v52 = [v109 bundleForClass_];
  sub_251384A74();
  *v49 = sub_251385E74();
  *(v49 + 8) = v53;
  *(v49 + 16) = 0;
  v54 = v107;
  v107(v49, v48, v108);
  v55 = (v37 + v99);
  sub_251385DB4();
  v56 = v51;
  v57 = v50;
  v58 = [v56 bundleForClass_];
  sub_251384A74();
  *v55 = sub_251385E74();
  v55[1] = v59;
  v55[2] = 0;
  v60 = v108;
  v54(v55, v100, v108);
  v61 = v106;
  v62 = v103;
  v63 = v103 + v99 + v106;
  sub_251385DB4();
  v64 = v109;
  v65 = [v109 bundleForClass_];
  sub_251384A74();
  *v63 = sub_251385E74();
  *(v63 + 8) = v66;
  *(v63 + 16) = 0;
  v67 = v102;
  v107(v63, v102, v60);
  v68 = v62 + 10 * v61;
  v69 = v61;
  sub_251385DB4();
  v70 = v64;
  v71 = v64;
  v72 = v110;
  v73 = [v70 bundleForClass_];
  sub_251384A74();
  *v68 = sub_251385E74();
  *(v68 + 8) = v74;
  *(v68 + 16) = 0;
  v75 = v107;
  v107(v68, v67, v108);
  v76 = v103;
  v77 = (v103 + 11 * v69);
  sub_251385DB4();
  v78 = [v71 bundleForClass_];
  sub_251384A74();
  *v77 = sub_251385E74();
  v77[1] = v79;
  v77[2] = 0;
  v80 = v108;
  v75(v77, v100, v108);
  v81 = v76;
  v82 = v106;
  v83 = v81 + 12 * v106;
  sub_251385DB4();
  v84 = [v109 bundleForClass_];
  sub_251384A74();
  *v83 = sub_251385E74();
  *(v83 + 8) = v85;
  *(v83 + 16) = 0;
  v86 = v102;
  v87 = v107;
  v107(v81 + 12 * v82, v102, v80);
  v88 = v81 + 13 * v82;
  sub_251385DB4();
  v89 = v109;
  v90 = [v109 bundleForClass_];
  sub_251384A74();
  *v88 = sub_251385E74();
  *(v88 + 8) = v91;
  *(v88 + 16) = 0;
  v92 = v108;
  v87(v88, v86, v108);
  v93 = v103 + 14 * v106;
  sub_251385DB4();
  v94 = [v89 bundleForClass_];
  sub_251384A74();
  *v93 = sub_251385E74();
  *(v93 + 8) = v95;
  *(v93 + 16) = 0;
  v87(v93, v86, v92);
  return v98;
}

void sub_251361AA4()
{
  if (!qword_27F42CA00)
  {
    sub_2513851A4();
    v0 = sub_251386394();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CA00);
    }
  }
}

void sub_251361AFC()
{
  if (!qword_280DF6C10)
  {
    v0 = sub_251386394();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF6C10);
    }
  }
}

unint64_t sub_251361B50()
{
  result = qword_280DF6E08;
  if (!qword_280DF6E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF6E08);
  }

  return result;
}

void sub_251361B9C()
{
  if (!qword_27F42CA08)
  {
    v0 = sub_251386204();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CA08);
    }
  }
}

uint64_t sub_251361C0C(uint64_t a1)
{
  v92 = *v1;
  v3 = sub_251385024();
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251384A64();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
  v11 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251385B74();
  v96 = *(v13 - 8);
  *&v97 = v13;
  v14 = *(v96 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v87 - v21;
  v23 = sub_251384A94();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_251384AB4();
  v98 = *(v28 - 8);
  v99 = v28;
  v29 = *(v98 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, *MEMORY[0x277CC9830], v23);
  v100 = v31;
  sub_251384AA4();
  (*(v24 + 8))(v27, v23);
  v32 = sub_251385004();
  v33 = v32;
  v34 = sub_251384F24();
  LOBYTE(v24) = sub_251384F14();

  if (v24)
  {

    sub_251385B44();
    v35 = sub_251385B64();
    v36 = sub_251385FE4();
    v37 = os_log_type_enabled(v35, v36);
    v88 = v6;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v101[0] = v39;
      *v38 = 136446210;
      v40 = sub_251386484();
      v42 = sub_251352A00(v40, v41, v101);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_25134A000, v35, v36, "[%{public}s] submitting primary pipelines", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x253074E50](v39, -1, -1);
      MEMORY[0x253074E50](v38, -1, -1);
    }

    (*(v96 + 1))(v22, v97);
    v43 = sub_251384FF4();
    *&v97 = sub_2513735C8(v43);

    v44 = sub_251384FF4();
    sub_251384A54();
    v45 = v93;
    sub_251384CA4();
    (*(v89 + 8))(v10, v90);
    sub_251384FE4();
    v46 = sub_251385084();
    v47 = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0);
    *(v45 + *(v47 + 20)) = (v46 & 1) == 0;
    v48 = (v45 + *(v47 + 24));
    *v48 = 0xD000000000000032;
    v48[1] = 0x800000025138A350;
    *(v45 + *(v91 + 20)) = v44;
    sub_251362978(0, &qword_280DF6C28, sub_251362914);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_251387C30;
    v50 = v95;
    v51 = *(v94 + 16);
    v51(v88, a1, v95);
    v96 = v51;
    v52 = *MEMORY[0x277CCC0F0];
    v101[3] = &type metadata for BalancePromotionFeedItemProvider;
    v101[4] = sub_251362B90();
    v53 = sub_2513850A4();
    v54 = MEMORY[0x277D121B0];
    *(v49 + 56) = v53;
    *(v49 + 64) = v54;
    __swift_allocate_boxed_opaque_existential_1((v49 + 32));
    v55 = v52;
    sub_251385094();
    sub_2513626F8(a1, (v49 + 72));
    v56 = type metadata accessor for SleepingSampleChangesAlertGenerator(0);
    *(v49 + 136) = v56;
    *(v49 + 144) = sub_251362C94(&qword_280DF7358, type metadata accessor for SleepingSampleChangesAlertGenerator);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v49 + 112));
    v51(boxed_opaque_existential_1, a1, v50);
    sub_251362BE4();
    v58 = sub_251384FF4();
    v59 = sub_251385FF4();

    sub_251384B04();
    v60 = sub_251384AF4();
    sub_251362C30(v45, boxed_opaque_existential_1 + v56[8]);
    v61 = v97;
    *(boxed_opaque_existential_1 + v56[5]) = v97;
    *(boxed_opaque_existential_1 + v56[6]) = v59;
    *(boxed_opaque_existential_1 + v56[7]) = v60;
    v62 = type metadata accessor for SleepingSampleHelpTileGenerator(0);
    *(v49 + 176) = v62;
    *(v49 + 184) = sub_251362C94(&qword_280DF7538, type metadata accessor for SleepingSampleHelpTileGenerator);
    v63 = __swift_allocate_boxed_opaque_existential_1((v49 + 152));
    v96(v63, a1, v50);
    v64 = *(v61 + 16);
    sub_251362C30(v45, v63 + *(v62 + 24));
    v65 = v100;
    *(v63 + *(v62 + 20)) = v64;
    swift_unknownObjectRetain();
    sub_251362CDC(v45);
  }

  else
  {
    if (v32)
    {

      sub_251385B44();
      v66 = sub_251385B64();
      v67 = sub_251385FE4();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v101[0] = v69;
        *v68 = 136446210;
        v70 = sub_251386484();
        v72 = sub_251352A00(v70, v71, v101);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_25134A000, v66, v67, "[%{public}s] submitting default pipelines", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x253074E50](v69, -1, -1);
        MEMORY[0x253074E50](v68, -1, -1);
      }

      (*(v96 + 1))(v17, v97);
      v49 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_251385B44();
      v73 = sub_251385B64();
      v74 = sub_251385FE4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v101[0] = v76;
        *v75 = 136446210;
        v77 = sub_251386484();
        v79 = sub_251352A00(v77, v78, v101);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_25134A000, v73, v74, "[%{public}s] submitting agnostic pipelines", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        MEMORY[0x253074E50](v76, -1, -1);
        MEMORY[0x253074E50](v75, -1, -1);
      }

      (*(v96 + 1))(v20, v97);
      sub_251362978(0, &qword_280DF6C28, sub_251362914);
      v49 = swift_allocObject();
      v97 = xmmword_251386F80;
      *(v49 + 16) = xmmword_251386F80;
      sub_251362978(0, &qword_280DF6C20, sub_2513629CC);
      v80 = swift_allocObject();
      *(v80 + 16) = v97;
      *(v80 + 56) = &type metadata for AboutBalanceArticleDataProvider;
      *(v80 + 64) = sub_251362A38();
      *(v80 + 72) = sub_251362A8C();
      (*(v94 + 16))(v6, a1, v95);
      sub_251362AE0();
      v82 = v81;
      v83 = *(v81 + 48);
      v84 = *(v81 + 52);
      swift_allocObject();
      v85 = sub_251385B24();
      *(v49 + 56) = v82;
      *(v49 + 64) = sub_251362C94(qword_280DF7038, sub_251362AE0);
      *(v49 + 32) = v85;
    }

    v65 = v100;
  }

  (*(v98 + 8))(v65, v99);
  return v49;
}

uint64_t sub_2513626F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_251385024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_251386224();

  v21 = 0xD000000000000025;
  v22 = 0x800000025138A3D0;
  v9 = sub_251385004();
  v10 = sub_251384F04();
  v12 = v11;

  MEMORY[0x2530742D0](v10, v12);

  v13 = v21;
  v14 = v22;
  (*(v5 + 16))(v8, a1, v4);
  v15 = *MEMORY[0x277CCC0F0];
  v23 = &type metadata for SleepingSampleAnalysisHealthChecklistConfigurationProvider;
  v24 = sub_251356220();
  v21 = v13;
  v22 = v14;
  v16 = sub_2513850A4();
  v17 = MEMORY[0x277D121B0];
  a2[3] = v16;
  a2[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v18 = v15;
  return sub_251385094();
}

uint64_t sub_2513628B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

unint64_t sub_251362914()
{
  result = qword_280DF7848;
  if (!qword_280DF7848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DF7848);
  }

  return result;
}

void sub_251362978(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386394();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2513629CC()
{
  result = qword_280DF7840;
  if (!qword_280DF7840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DF7840);
  }

  return result;
}

unint64_t sub_251362A38()
{
  result = qword_280DF77F8;
  if (!qword_280DF77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77F8);
  }

  return result;
}

unint64_t sub_251362A8C()
{
  result = qword_280DF77F0;
  if (!qword_280DF77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77F0);
  }

  return result;
}

void sub_251362AE0()
{
  if (!qword_280DF7030)
  {
    sub_251362B3C();
    v0 = sub_251385B34();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF7030);
    }
  }
}

unint64_t sub_251362B3C()
{
  result = qword_280DF77E8;
  if (!qword_280DF77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77E8);
  }

  return result;
}

unint64_t sub_251362B90()
{
  result = qword_280DF77D0;
  if (!qword_280DF77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77D0);
  }

  return result;
}

unint64_t sub_251362BE4()
{
  result = qword_280DF6C98;
  if (!qword_280DF6C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF6C98);
  }

  return result;
}

uint64_t sub_251362C30(uint64_t a1, uint64_t a2)
{
  v4 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251362C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251362CDC(uint64_t a1)
{
  v2 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251362DAC(void *a1)
{
  v39 = a1;
  v37 = sub_251384EB4();
  v33 = *(v37 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_251384E54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251384E74();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *v1;
  v35 = *(v1 + 8);
  v17 = *(v1 + 16);
  LOBYTE(v40) = *(v1 + 16);
  sub_25137FF04();
  v18 = *MEMORY[0x277CCC0E0];
  v19 = objc_allocWithZone(MEMORY[0x277D62460]);
  v36 = v16;
  v20 = [v19 initWithFeatureIdentifier:v18 sleepStore:v16];
  sub_2513631F4();
  LOBYTE(v16) = sub_2513860B4();

  v21 = MEMORY[0x277D626F8];
  if ((v16 & 1) == 0)
  {
    v21 = MEMORY[0x277D626F0];
  }

  (*(v5 + 104))(v8, *v21, v4);
  v22 = v9;
  v23 = v34;
  sub_251384E64();
  (*(v23 + 16))(v13, v15, v22);
  if (v17 && v17 != 3)
  {
    sub_25136330C(0, &qword_27F42CA30, MEMORY[0x277D84560]);
    v26 = *(v33 + 72);
    v27 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_251386F80;
    v29 = v35;
    v30 = v36;
    sub_251384EA4();
    v40 = v28;
    sub_251363240();
    sub_25136330C(0, &qword_27F42CA20, MEMORY[0x277D83940]);
    sub_251363298();
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
    sub_251363240();
    sub_25136330C(0, &qword_27F42CA20, MEMORY[0x277D83940]);
    sub_251363298();
    v24 = v35;
    v25 = v36;
  }

  sub_251386164();
  sub_251384EC4();
  v31 = v39;
  sub_251384E94();
  sub_251384E84();

  return (*(v23 + 8))(v15, v22);
}

unint64_t sub_2513631F4()
{
  result = qword_27F42CA10;
  if (!qword_27F42CA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42CA10);
  }

  return result;
}

unint64_t sub_251363240()
{
  result = qword_27F42CA18;
  if (!qword_27F42CA18)
  {
    sub_251384EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CA18);
  }

  return result;
}

unint64_t sub_251363298()
{
  result = qword_27F42CA28;
  if (!qword_27F42CA28)
  {
    sub_25136330C(255, &qword_27F42CA20, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CA28);
  }

  return result;
}

void sub_25136330C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_251384EB4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25136336C(uint64_t a1)
{
  v34 = a1;
  v32 = sub_251384EB4();
  v28 = *(v32 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v32);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251384E54();
  v4 = *(v31 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251384E74();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *v1;
  v29 = *(v1 + 8);
  v16 = *(v1 + 16);
  LOBYTE(v35) = *(v1 + 16);
  sub_25137FF04();
  v17 = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E0] sleepStore:v15];
  sub_2513631F4();
  v18 = sub_2513860B4();

  v19 = MEMORY[0x277D626F8];
  if ((v18 & 1) == 0)
  {
    v19 = MEMORY[0x277D626F0];
  }

  (*(v4 + 104))(v7, *v19, v31);
  v20 = v8;
  v21 = v30;
  sub_251384E64();
  v22 = objc_allocWithZone(MEMORY[0x277D12978]);
  v31 = v29;
  v23 = v15;
  [v22 init];
  (*(v21 + 16))(v12, v14, v20);
  if (v16 && v16 != 3)
  {
    sub_25136330C(0, &qword_27F42CA30, MEMORY[0x277D84560]);
    v24 = *(v28 + 72);
    v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_251386F80;
    sub_251384EA4();
    v35 = v26;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  sub_251363240();
  sub_25136330C(0, &qword_27F42CA20, MEMORY[0x277D83940]);
  sub_251363298();
  sub_251386164();
  sub_251384EC4();
  sub_251384E94();
  sub_251384E84();

  return (*(v21 + 8))(v14, v20);
}

uint64_t type metadata accessor for AllPromotionsForObjectTypeDataSource()
{
  result = qword_27F42CA48;
  if (!qword_27F42CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_251363800()
{
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    v1 = result;
    sub_251385684();

    sub_251385694();
    sub_251385704();
    v2 = 0u;
    v3 = 0u;
    v4 = 0;
    sub_251385904();

    sub_251364350(&v2, &qword_27F42CA58, sub_251363B8C);
    sub_2513856A4();
    *(&v3 + 1) = &type metadata for GetTheRightAmountFromVitalsComponent;
    v4 = sub_251363BF0();
    sub_251385904();

    return sub_251364350(&v2, &qword_27F42CA58, sub_251363B8C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251363960()
{
  v0 = sub_2513854D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2513854C4();
  v5 = sub_2513854B4();
  (*(v1 + 8))(v4, v0);

  return v5;
}

id sub_251363B4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251363B8C()
{
  result = qword_27F42CA60;
  if (!qword_27F42CA60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42CA60);
  }

  return result;
}

unint64_t sub_251363BF0()
{
  result = qword_27F42CA68;
  if (!qword_27F42CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CA68);
  }

  return result;
}

id sub_251363C70()
{
  sub_2513642EC(0, &qword_27F42C9E0, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v33 - v2;
  if ((sub_2513856E4() & 0xFE) == 2)
  {
    v4 = sub_2513854A4();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_251385494();
    sub_251385514();

    sub_2513854E4();

    sub_251364418();
    sub_251364568(&qword_27F42CA90, sub_251364418);

    sub_2513854F4();
LABEL_5:

    sub_2513644AC();
    sub_251364568(&qword_27F42CAA0, sub_2513644AC);

    v32 = sub_2513854E4();

    return v32;
  }

  sub_2513856B4();
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v7 = sub_251384EE4();
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  sub_25135B828(0, &qword_27F42CA70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251387950;
  v9 = sub_2513856D4();
  v10 = sub_251385FB4();

  *(v8 + 32) = v10;
  *(v8 + 40) = 0;
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    v12 = result;
    v35 = objc_allocWithZone(type metadata accessor for AllPromotionsForObjectTypeDataSource());
    sub_2513850F4();
    v34 = v7;
    v13 = MEMORY[0x2530734D0]();
    sub_2513642EC(0, &qword_280DF6C30, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
    v14 = sub_251384EF4();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_251386F80;
    (*(v15 + 104))(v18 + v17, *MEMORY[0x277D11E20], v14);
    sub_25135B828(0, &qword_280DF6C10);
    v19 = swift_allocObject();
    v33 = xmmword_251387960;
    *(v19 + 16) = xmmword_251387960;
    *(v19 + 32) = v12;
    v20 = sub_251384964();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v21 = v12;
    v22 = MEMORY[0x2530734C0](v18, v19, v3, v8);

    sub_251364350(v3, &qword_27F42C9E0, MEMORY[0x277CC88A8]);
    [v13 setPredicate_];

    v23 = swift_allocObject();
    *(v23 + 16) = v33;
    sub_2513643C0();
    swift_getKeyPath();
    *(v23 + 32) = sub_251386044();
    v24 = sub_251385F14();

    [v13 setSortDescriptors_];

    v25 = objc_allocWithZone(MEMORY[0x277CBE430]);
    v26 = v34;
    [v25 initWithFetchRequest:v13 managedObjectContext:v34 sectionNameKeyPath:0 cacheName:0];
    v27 = sub_2513858A4();

    sub_251364418();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = v27;
    sub_251385814();
    sub_251364568(&qword_27F42CA90, sub_251364418);
    sub_251385514();

    sub_2513854E4();

    sub_2513854A4();

    sub_251385504();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2513642EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251364350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2513642EC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2513643C0()
{
  result = qword_27F42CA78;
  if (!qword_27F42CA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42CA78);
  }

  return result;
}

void sub_251364418()
{
  if (!qword_27F42CA80)
  {
    type metadata accessor for AllPromotionsForObjectTypeDataSource();
    sub_251364568(&qword_27F42CA88, type metadata accessor for AllPromotionsForObjectTypeDataSource);
    v0 = sub_251385824();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CA80);
    }
  }
}

void sub_2513644AC()
{
  if (!qword_27F42CA98)
  {
    sub_2513854A4();
    sub_251364418();
    sub_251364568(&qword_27F42CA90, sub_251364418);
    v0 = sub_251385604();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CA98);
    }
  }
}

uint64_t sub_251364568(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2513645B0()
{
  v1 = v0;
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251385E34();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentMode_];
  v7 = [v1 contentView];
  [v7 addSubview_];

  v8 = [v1 contentView];
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  sub_251361AFC();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251387D90;
  v11 = [v6 leadingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [v6 trailingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [v6 topAnchor];
  v20 = [v1 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v10 + 48) = v22;
  v23 = [v6 bottomAnchor];
  v24 = [v1 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v10 + 56) = v26;
  v27 = [v6 heightAnchor];

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    v30 = objc_opt_self();
    v31 = [v29 heightAnchor];

    v32 = [v27 constraintEqualToAnchor:v31 multiplier:0.25];
    *(v10 + 64) = v32;
    sub_251364A38();
    v33 = sub_251385F14();

    [v30 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_251364A38()
{
  result = qword_27F42C8D0;
  if (!qword_27F42C8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42C8D0);
  }

  return result;
}

uint64_t sub_251364A84()
{
  v2 = sub_251384C14();
  MEMORY[0x2530742D0](24366, 0xE200000000000000);
  v0 = sub_251386484();
  MEMORY[0x2530742D0](v0);

  return v2;
}

void sub_251364AE8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_251385464();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_251385804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_251385B74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251385B44();
  v15 = v0;
  v16 = sub_251385B64();
  v17 = sub_251385FE4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = v15;
    v19 = v18;
    v42 = swift_slowAlloc();
    v47 = v42;
    *v19 = 136446722;
    v20 = sub_251386484();
    v40 = v17;
    v22 = sub_251352A00(v20, v21, &v47);
    ObjectType = v11;
    v23 = v6;
    v24 = v5;
    v25 = v22;

    *(v19 + 4) = v25;
    v41 = v10;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_251352A00(0x2928706154646964, 0xE800000000000000, &v47);
    *(v19 + 22) = 2082;
    sub_2513858E4();
    sub_2513857D4();
    (*(v23 + 8))(v9, v24);
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v5 = v24;
    v6 = v23;
    sub_251385784();
    sub_2513653BC(&qword_27F42CAA8, MEMORY[0x277D10E70]);
    v26 = v45;
    v27 = sub_251386384();
    v29 = v28;
    (*(v44 + 8))(v4, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v30 = sub_251352A00(v27, v29, &v47);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_25134A000, v16, v40, "[%{public}s.%{public}s] promo tile tapped from %{public}s", v19, 0x20u);
    v31 = v42;
    swift_arrayDestroy();
    MEMORY[0x253074E50](v31, -1, -1);
    MEMORY[0x253074E50](v19, -1, -1);

    (*(ObjectType + 8))(v14, v41);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_2513858E4();
  sub_2513857D4();
  v32 = *(v6 + 8);
  v32(v9, v5);
  __swift_project_boxed_opaque_existential_1(v49, v50);
  sub_251385784();
  sub_2513801D0(v4, &v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v33 = v47;
  sub_2513858E4();
  sub_2513857D4();
  v32(v9, v5);
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v34 = sub_251385774();
  v35 = type metadata accessor for BalanceOnboardingNavigationController();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator] = 0;
  *&v36[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore] = v34;
  v36[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext] = v33;
  v48.receiver = v36;
  v48.super_class = v35;
  v37 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  sub_25137F11C();
  sub_2513811E0();

  [v37 setModalPresentationStyle_];
  sub_2513858E4();
  v38 = sub_2513857E4();
  v32(v9, v5);
  [v38 presentViewController:v37 animated:1 completion:0];
}

uint64_t BalancePromotionFeedItemViewActionHandler.__allocating_init(context:)(uint64_t a1)
{
  v3 = sub_251385804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_2513858F4();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t BalancePromotionFeedItemViewActionHandler.init(context:)(uint64_t a1)
{
  v2 = sub_251385804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2513858F4();
  (*(v3 + 8))(a1, v2);
  return v6;
}

id BalancePromotionFeedItemViewActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalancePromotionFeedItemViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BalancePromotionFeedItemViewActionHandler()
{
  result = qword_280DF77B8;
  if (!qword_280DF77B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2513653BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2513654C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2513863A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25136554C(uint64_t a1)
{
  v2 = sub_251365770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251365588(uint64_t a1)
{
  v2 = sub_251365770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepingSampleAnalysisHealthChecklistUserData.encode(to:)(void *a1)
{
  sub_251368EE8(0, &qword_27F42CAB0, sub_251365770, &type metadata for SleepingSampleAnalysisHealthChecklistUserData.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251365770();
  sub_251386444();
  type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  sub_251365ABC(&qword_27F42CAC0, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
  sub_251386374();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_251365770()
{
  result = qword_27F42CAB8;
  if (!qword_27F42CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CAB8);
  }

  return result;
}

uint64_t SleepingSampleAnalysisHealthChecklistUserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251368EE8(0, &qword_27F42CAC8, sub_251365770, &type metadata for SleepingSampleAnalysisHealthChecklistUserData.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v22 = *(v6 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251365770();
  v16 = v24;
  sub_251386434();
  if (!v16)
  {
    v17 = v22;
    sub_251365ABC(&qword_27F42CAD0, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
    v18 = v23;
    sub_251386344();
    (*(v17 + 8))(v10, v7);
    sub_251365B04(v18, v14, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
    sub_251365B04(v14, v21, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_251365ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251365B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251365B6C(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_251368EE8(0, &qword_27F42CB18, sub_251368CF0, &type metadata for SleepingSampleAnalysisHealthChecklistAction.OpenURLCodingKeys, MEMORY[0x277D84538]);
  v59 = v3;
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v46 - v5;
  v6 = sub_251384A34();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251368EE8(0, &qword_27F42CB28, sub_251368D44, &type metadata for SleepingSampleAnalysisHealthChecklistAction.EnableAndEditNotificationSettingsCodingKeys, v2);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - v11;
  sub_251368EE8(0, &qword_27F42CB38, sub_251368D98, &type metadata for SleepingSampleAnalysisHealthChecklistAction.EditNotificationSettingsCodingKeys, v2);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v14;
  sub_251368EE8(0, &qword_27F42CB48, sub_251368DEC, &type metadata for SleepingSampleAnalysisHealthChecklistAction.LaunchSleepOnboardingCodingKeys, v2);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  sub_251368EE8(0, &qword_27F42CB58, sub_251368E40, &type metadata for SleepingSampleAnalysisHealthChecklistAction.LaunchOnboardingCodingKeys, v2);
  v20 = v19;
  v56 = *(v19 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251368EE8(0, &qword_27F42CB68, sub_251368E94, &type metadata for SleepingSampleAnalysisHealthChecklistAction.CodingKeys, v2);
  v64 = v28;
  v63 = *(v28 - 8);
  v29 = *(v63 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251368E94();
  v34 = v60;
  v33 = v61;
  sub_251386444();
  sub_251368610(v62, v27);
  v35 = (*(v34 + 48))(v27, 4, v33);
  if (v35 <= 1)
  {
    v40 = v56;
    v42 = v58;
    v41 = v59;
    if (!v35)
    {
      v43 = v57;
      (*(v34 + 32))(v57, v27, v33);
      v69 = 4;
      sub_251368CF0();
      sub_251386364();
      sub_251365ABC(&qword_27F42CB78, MEMORY[0x277CC9260]);
      sub_251386374();
      (*(v55 + 8))(v42, v41);
      (*(v34 + 8))(v43, v33);
      return (*(v63 + 8))(v31, v64);
    }

    v65 = 0;
    sub_251368E40();
    v36 = v64;
    sub_251386364();
    (*(v40 + 8))(v23, v20);
  }

  else
  {
    if (v35 == 2)
    {
      v66 = 1;
      sub_251368DEC();
      v45 = v64;
      sub_251386364();
      (*(v47 + 8))(v18, v48);
      return (*(v63 + 8))(v31, v45);
    }

    v36 = v64;
    if (v35 == 3)
    {
      v67 = 2;
      sub_251368D98();
      v37 = v49;
      sub_251386364();
      v39 = v50;
      v38 = v51;
    }

    else
    {
      v68 = 3;
      sub_251368D44();
      v37 = v52;
      sub_251386364();
      v39 = v53;
      v38 = v54;
    }

    (*(v39 + 8))(v37, v38);
  }

  return (*(v63 + 8))(v31, v36);
}

uint64_t sub_251366320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_251368EE8(0, &qword_27F42CB80, sub_251368CF0, &type metadata for SleepingSampleAnalysisHealthChecklistAction.OpenURLCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v66 - v7;
  sub_251368EE8(0, &qword_27F42CB88, sub_251368D44, &type metadata for SleepingSampleAnalysisHealthChecklistAction.EnableAndEditNotificationSettingsCodingKeys, v3);
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v66 - v10;
  sub_251368EE8(0, &qword_27F42CB90, sub_251368D98, &type metadata for SleepingSampleAnalysisHealthChecklistAction.EditNotificationSettingsCodingKeys, v3);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v66 - v13;
  sub_251368EE8(0, &qword_27F42CB98, sub_251368DEC, &type metadata for SleepingSampleAnalysisHealthChecklistAction.LaunchSleepOnboardingCodingKeys, v3);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v66 - v16;
  sub_251368EE8(0, &qword_27F42CBA0, sub_251368E40, &type metadata for SleepingSampleAnalysisHealthChecklistAction.LaunchOnboardingCodingKeys, v3);
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  sub_251368EE8(0, &qword_27F42CBA8, sub_251368E94, &type metadata for SleepingSampleAnalysisHealthChecklistAction.CodingKeys, v3);
  v22 = v21;
  v84 = *(v21 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  v26 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - v31;
  v33 = a1;
  v35 = a1[3];
  v34 = a1[4];
  v86 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v35);
  sub_251368E94();
  v36 = v85;
  sub_251386434();
  if (!v36)
  {
    v37 = v26;
    v85 = 0;
    v67 = v30;
    v68 = v32;
    v38 = v80;
    v39 = v81;
    v41 = v82;
    v40 = v83;
    v42 = sub_251386354();
    if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 5))
    {
      v48 = sub_251386264();
      swift_allocError();
      v50 = v49;
      sub_251368F50();
      v52 = *(v51 + 48);
      *v50 = v37;
      sub_251386334();
      sub_251386244();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v84 + 8))(v25, v22);
LABEL_10:
      sub_251385894();
      return __swift_destroy_boxed_opaque_existential_0Tm(v86);
    }

    if (*(v42 + 32) <= 1u)
    {
      v47 = v40;
      if (*(v42 + 32))
      {
        v88 = 1;
        sub_251368DEC();
        v60 = v85;
        sub_251386324();
        v55 = v84;
        if (!v60)
        {
          (*(v71 + 8))(v38, v72);
          (*(v55 + 8))(v25, v22);
          sub_251385894();
          v65 = sub_251384A34();
          v46 = v68;
          (*(*(v65 - 8) + 56))(v68, 2, 4, v65);
          goto LABEL_25;
        }
      }

      else
      {
        v87 = 0;
        sub_251368E40();
        v54 = v85;
        sub_251386324();
        v55 = v84;
        if (!v54)
        {
          (*(v69 + 8))(v20, v70);
          (*(v55 + 8))(v25, v22);
          sub_251385894();
          v56 = sub_251384A34();
          v46 = v68;
          (*(*(v56 - 8) + 56))(v68, 1, 4, v56);
          goto LABEL_25;
        }
      }

      (*(v55 + 8))(v25, v22);
      goto LABEL_10;
    }

    if (v43 == 2)
    {
      v89 = 2;
      sub_251368D98();
      v57 = v85;
      sub_251386324();
      if (v57)
      {
        goto LABEL_16;
      }

      (*(v73 + 8))(v39, v74);
      (*(v84 + 8))(v25, v22);
      sub_251385894();
      v61 = sub_251384A34();
      v46 = v68;
      (*(*(v61 - 8) + 56))(v68, 3, 4, v61);
    }

    else
    {
      v81 = v42;
      if (v43 == 3)
      {
        v90 = 3;
        sub_251368D44();
        v44 = v85;
        sub_251386324();
        if (!v44)
        {
          (*(v75 + 8))(v41, v76);
          (*(v84 + 8))(v25, v22);
          sub_251385894();
          v45 = sub_251384A34();
          v46 = v68;
          (*(*(v45 - 8) + 56))(v68, 4, 4, v45);
          v47 = v40;
LABEL_25:
          sub_251365B04(v46, v47, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
          return __swift_destroy_boxed_opaque_existential_0Tm(v86);
        }

        goto LABEL_16;
      }

      v91 = 4;
      sub_251368CF0();
      v58 = v79;
      v59 = v85;
      sub_251386324();
      if (v59)
      {
LABEL_16:
        (*(v84 + 8))(v25, v22);
        goto LABEL_10;
      }

      v62 = sub_251384A34();
      sub_251365ABC(&qword_27F42CBC0, MEMORY[0x277CC9260]);
      v63 = v67;
      v64 = v77;
      sub_251386344();
      (*(v78 + 8))(v58, v64);
      (*(v84 + 8))(v25, v22);
      sub_251385894();
      (*(*(v62 - 8) + 56))(v63, 0, 4, v62);
      v46 = v68;
      sub_251365B04(v63, v68, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
    }

    v47 = v40;
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v86);
}

uint64_t sub_251366E78(void *a1)
{
  sub_251368EE8(0, &qword_27F42CAB0, sub_251365770, &type metadata for SleepingSampleAnalysisHealthChecklistUserData.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251365770();
  sub_251386444();
  type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  sub_251365ABC(&qword_27F42CAC0, type metadata accessor for SleepingSampleAnalysisHealthChecklistAction);
  sub_251386374();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_251367024()
{
  v1 = *v0;
  v2 = 0x4C52556E65706FLL;
  if (v1 == 3)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2513670D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251368674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251367104(uint64_t a1)
{
  v2 = sub_251368E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251367140(uint64_t a1)
{
  v2 = sub_251368E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251367188(uint64_t a1)
{
  v2 = sub_251368D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2513671C4(uint64_t a1)
{
  v2 = sub_251368D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251367200(uint64_t a1)
{
  v2 = sub_251368D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25136723C(uint64_t a1)
{
  v2 = sub_251368D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251367278(uint64_t a1)
{
  v2 = sub_251368E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2513672B4(uint64_t a1)
{
  v2 = sub_251368E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2513672F0(uint64_t a1)
{
  v2 = sub_251368DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25136732C(uint64_t a1)
{
  v2 = sub_251368DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251367374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2513863A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2513673F4(uint64_t a1)
{
  v2 = sub_251368CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251367430(uint64_t a1)
{
  v2 = sub_251368CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25136749C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_251385B74();
  v99 = *(v1 - 1);
  v100 = v1;
  v2 = v99[8];
  MEMORY[0x28223BE20](v1);
  v98 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_251384A34();
  v105 = *(v97 - 8);
  v4 = *(v105 + 8);
  MEMORY[0x28223BE20](v97);
  v90 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251385464();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v92 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v90 - v10;
  v11 = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2513853E4();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = *(v101 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &v90 - v18;
  v19 = sub_251385804();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136882C(0, &qword_27F42C998, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v90 - v26;
  v28 = type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513858E4();
  sub_251365ABC(&qword_27F42CAD8, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  sub_251365ABC(&qword_27F42C9A0, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  sub_2513857F4();
  v33 = *(v20 + 8);
  v33(v23, v19);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_251368900(v27, &qword_27F42C998, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
    v34 = v98;
    sub_251385B44();
    v35 = sub_251385B64();
    v36 = sub_251385FD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v107[0] = v38;
      *v37 = 136315138;
      v39 = sub_251386484();
      v41 = sub_251352A00(v39, v40, v107);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_25134A000, v35, v36, "[%s] Could not access action handler user data", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x253074E50](v38, -1, -1);
      MEMORY[0x253074E50](v37, -1, -1);
    }

    (v99[1])(v34, v100);
    return;
  }

  sub_251365B04(v27, v32, type metadata accessor for SleepingSampleAnalysisHealthChecklistUserData);
  sub_2513858E4();
  v100 = sub_2513857E4();
  v33(v23, v19);
  sub_2513858E4();
  sub_2513857D4();
  v33(v23, v19);
  __swift_project_boxed_opaque_existential_1(v107, v109);
  v99 = sub_251385774();
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  v42 = v0;
  sub_2513858E4();
  v43 = v103;
  sub_251385294();
  v33(v23, v19);
  sub_251384B04();
  v44 = sub_251384AF4();
  v45 = v104;
  sub_251368610(v32, v104);
  v46 = v97;
  v47 = (*(v105 + 6))(v45, 4, v97);
  if (v47 <= 1)
  {
    if (v47)
    {
      sub_2513858E4();
      sub_2513857D4();
      v33(v23, v19);
      __swift_project_boxed_opaque_existential_1(v107, v109);
      v77 = v93;
      sub_251385784();
      v78 = v94;
      v79 = v95;
      v80 = v92;
      (*(v94 + 104))(v92, *MEMORY[0x277D10E48], v95);
      v81 = sub_251385454();
      v82 = *(v78 + 8);
      v82(v80, v79);
      v82(v77, v79);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      if (v81)
      {
        v83 = 3;
      }

      else
      {
        v83 = 0;
      }

      v84 = type metadata accessor for BalanceOnboardingNavigationController();
      v85 = objc_allocWithZone(v84);
      *&v85[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator] = 0;
      v86 = v99;
      *&v85[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore] = v99;
      v85[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext] = v83;
      v106.receiver = v85;
      v106.super_class = v84;
      v87 = v86;
      v88 = objc_msgSendSuper2(&v106, sel_initWithNibName_bundle_, 0, 0);
      sub_25137F11C();
      sub_2513811E0();

      [v88 setModalPresentationStyle_];
      v89 = v100;
      [v100 presentViewController:v88 animated:1 completion:0];

      (*(v101 + 8))(v43, v102);
      v56 = v32;
    }

    else
    {
      v54 = v105;
      v55 = v90;
      (*(v105 + 4))(v90, v104, v46);
      sub_2513849F4();

      (*(v54 + 8))(v55, v46);
      (*(v101 + 8))(v43, v102);
      v56 = v32;
    }

    goto LABEL_21;
  }

  if (v47 != 2)
  {
    if (v47 == 3)
    {
      v49 = v101;
      v48 = v102;
      v50 = v91;
      (*(v101 + 16))(v91, v43, v102);
      v51 = objc_allocWithZone(type metadata accessor for SleepingSampleAnalysisHealthChecklistSettingsViewController(0));
      v52 = sub_251377F58(v44, v50, 0);
      v53 = v100;
      [v100 showAdaptively:v52 sender:v42];
    }

    else
    {
      sub_251384AE4();
      v49 = v101;
      v48 = v102;
      v71 = v91;
      (*(v101 + 16))(v91, v43, v102);
      v72 = objc_allocWithZone(type metadata accessor for SleepingSampleAnalysisHealthChecklistSettingsViewController(0));

      v74 = sub_251377F58(v73, v71, 1);

      sub_2513857B4();
      v75 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      v76 = v100;
      [v100 presentViewController:v75 animated:1 completion:0];
    }

    (*(v49 + 8))(v43, v48);
    v56 = v32;
LABEL_21:
    sub_25135B940(v56);
    return;
  }

  v57 = objc_allocWithZone(MEMORY[0x277D62528]);
  v58 = v99;
  v105 = v32;
  v59 = v58;
  v60 = sub_251385E34();
  v61 = [v57 initWithIdentifier:v60 healthStore:v59];

  sub_2513858E4();
  sub_2513857D4();
  v33(v23, v19);
  __swift_project_boxed_opaque_existential_1(v107, v109);
  v62 = v93;
  sub_251385784();
  v63 = v94;
  v64 = v95;
  v65 = v92;
  (*(v94 + 104))(v92, *MEMORY[0x277D10E48], v95);
  LOBYTE(v57) = sub_251385454();
  v66 = *(v63 + 8);
  v66(v65, v64);
  v66(v62, v64);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  if (v57)
  {
    v67 = 3;
  }

  else
  {
    v67 = 0;
  }

  v107[0] = v61;
  v107[1] = v59;
  v108 = v67;
  v68 = v59;
  v69 = v61;
  v70 = v100;
  sub_25136336C(v100);

  (*(v101 + 8))(v103, v102);
  sub_25135B940(v105);
}