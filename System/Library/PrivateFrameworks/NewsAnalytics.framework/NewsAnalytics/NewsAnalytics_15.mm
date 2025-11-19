unint64_t sub_217BF431C()
{
  result = qword_27CBA1C58;
  if (!qword_27CBA1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C58);
  }

  return result;
}

unint64_t sub_217BF4374()
{
  result = qword_2811C7DD0;
  if (!qword_2811C7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DD0);
  }

  return result;
}

unint64_t sub_217BF43CC()
{
  result = qword_2811C7DD8;
  if (!qword_2811C7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DD8);
  }

  return result;
}

uint64_t sub_217BF4420(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD03E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD0400 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656C6369747261 && a2 == 0xEB00000000657079 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0420 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478655479646F62 && a2 == 0xEE006874676E654CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6765746143644169 && a2 == 0xED0000736569726FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCCD60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0440 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F696475417369 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD0460 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD0480 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65766E6F43626577 && a2 == 0xEC00000064657472 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD04A0 == a2)
  {

    return 19;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

void __swiftcall CampaignData.init(campaignId:campaignType:creativeId:)(NewsAnalytics::CampaignData *__return_ptr retstr, Swift::String campaignId, Swift::String_optional campaignType, Swift::String_optional creativeId)
{
  retstr->campaignId = campaignId;
  retstr->campaignType = campaignType;
  retstr->creativeId = creativeId;
}

uint64_t CampaignData.campaignId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CampaignData.campaignId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CampaignData.campaignType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CampaignData.campaignType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CampaignData.creativeId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CampaignData.creativeId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_217BF4C20()
{
  v1 = 0x6576697461657263;
  if (*v0 == 1)
  {
    v1 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E676961706D6163;
  }
}

uint64_t sub_217BF4C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BF5338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BF4C9C(uint64_t a1)
{
  v2 = sub_217BF4EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF4CD8(uint64_t a1)
{
  v2 = sub_217BF4EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  sub_217BF518C(0, &qword_2811BC810, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF4EC4();
  sub_217D89E7C();
  v19 = 0;
  v14 = v16[5];
  sub_217D89C6C();
  if (!v14)
  {
    v18 = 1;
    sub_217D89C0C();
    v17 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF4EC4()
{
  result = qword_2811C7AC8;
  if (!qword_2811C7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AC8);
  }

  return result;
}

uint64_t CampaignData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BF518C(0, &qword_2811BCB18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF4EC4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v27 = v12;
  v29 = 1;
  v15 = sub_217D89B2C();
  v17 = v16;
  v26 = v15;
  v28 = 2;
  v18 = sub_217D89B2C();
  v21 = v20;
  v22 = *(v7 + 8);
  v25 = v18;
  v22(v10, v6);
  v23 = v26;
  *a2 = v27;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v25;
  a2[5] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF518C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF4EC4();
    v7 = a3(a1, &type metadata for CampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF5234()
{
  result = qword_27CBA1C60;
  if (!qword_27CBA1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C60);
  }

  return result;
}

unint64_t sub_217BF528C()
{
  result = qword_2811C7AB8;
  if (!qword_2811C7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AB8);
  }

  return result;
}

unint64_t sub_217BF52E4()
{
  result = qword_2811C7AC0;
  if (!qword_2811C7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AC0);
  }

  return result;
}

uint64_t sub_217BF5338(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000065707954 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEA00000000006449)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t MagazineCategoryData.init(identifier:position:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217BF54CC()
{
  if (*v0)
  {
    result = 0x6E6F697469736F70;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_217BF550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217BF55F0(uint64_t a1)
{
  v2 = sub_217BF57DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF562C(uint64_t a1)
{
  v2 = sub_217BF57DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MagazineCategoryData.encode(to:)(void *a1)
{
  sub_217BF59E0(0, &qword_27CBA1C68, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF57DC();
  sub_217D89E7C();
  v16 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217BF57DC()
{
  result = qword_27CBA1C70;
  if (!qword_27CBA1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C70);
  }

  return result;
}

uint64_t MagazineCategoryData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217BF59E0(0, &qword_27CBA1C78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF57DC();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_217D89BDC();
    v16 = 1;
    v14 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF59E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF57DC();
    v7 = a3(a1, &type metadata for MagazineCategoryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF5AA0()
{
  result = qword_27CBA1C80;
  if (!qword_27CBA1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C80);
  }

  return result;
}

unint64_t sub_217BF5AF8()
{
  result = qword_27CBA1C88;
  if (!qword_27CBA1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C88);
  }

  return result;
}

unint64_t sub_217BF5B50()
{
  result = qword_27CBA1C90;
  if (!qword_27CBA1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1C90);
  }

  return result;
}

uint64_t FormatPackageReferenceData.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FormatPackageReferenceData.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217BF5C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217BF5CD4(uint64_t a1)
{
  v2 = sub_217BF5E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF5D10(uint64_t a1)
{
  v2 = sub_217BF5E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FormatPackageReferenceData.encode(to:)(void *a1)
{
  sub_217BF6070(0, &qword_27CBA1C98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF5E98()
{
  result = qword_27CBA1CA0;
  if (!qword_27CBA1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CA0);
  }

  return result;
}

uint64_t FormatPackageReferenceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217BF6070(0, &qword_27CBA1CA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BF6070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF5E98();
    v7 = a3(a1, &type metadata for FormatPackageReferenceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BF60D8()
{
  result = qword_27CBA1CB0;
  if (!qword_27CBA1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CB0);
  }

  return result;
}

unint64_t sub_217BF6130()
{
  result = qword_27CBA1CB8;
  if (!qword_27CBA1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CB8);
  }

  return result;
}

uint64_t sub_217BF619C(void *a1)
{
  sub_217BF6070(0, &qword_27CBA1C98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF5E98();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BF630C()
{
  result = qword_27CBA1CC0;
  if (!qword_27CBA1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CC0);
  }

  return result;
}

unint64_t sub_217BF6364()
{
  result = qword_27CBA1CC8;
  if (!qword_27CBA1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CC8);
  }

  return result;
}

unint64_t sub_217BF63BC()
{
  result = qword_27CBA1CD0;
  if (!qword_27CBA1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1CD0);
  }

  return result;
}

uint64_t sub_217BF64D8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1D08);
  __swift_project_value_buffer(v0, qword_27CBA1D08);
  return sub_217D8866C();
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 28);
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 28);
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 32);
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BF6BEC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SearchResultsReturnedEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 32);
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = v4[5];
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t SearchResultsReturnedEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchResultsReturnedEvent.Model.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v4 = *(v3 + 112);
  v5 = *(v3 + 144);
  v27 = *(v3 + 128);
  v28 = v5;
  v6 = *(v3 + 48);
  v7 = *(v3 + 80);
  v23 = *(v3 + 64);
  v8 = v23;
  v24 = v7;
  v9 = *(v3 + 80);
  v10 = *(v3 + 112);
  v25 = *(v3 + 96);
  v11 = v25;
  v26 = v10;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v21 = *(v3 + 32);
  v14 = v21;
  v22 = v13;
  v15 = *(v3 + 16);
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  v17 = *(v3 + 144);
  *(a1 + 128) = v27;
  *(a1 + 144) = v17;
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v16;
  *(a1 + 16) = v12;
  v29 = *(v3 + 160);
  *(a1 + 160) = *(v3 + 160);
  *(a1 + 32) = v14;
  *(a1 + 48) = v6;
  return sub_217B09D18(v20, v19);
}

uint64_t SearchResultsReturnedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SearchResultsReturnedEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchResultsReturnedEvent.Model.init(eventData:searchData:searchResultsData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = a2[3];
  v14 = a5[1];
  v29 = *a5;
  v15 = *(a5 + 8);
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v18 = a6 + v17[5];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v19 = a6 + v17[6];
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v20;
  v21 = *(a3 + 80);
  *(v19 + 64) = *(a3 + 64);
  *(v19 + 80) = v21;
  v22 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v22;
  *(v19 + 160) = *(a3 + 160);
  v23 = *(a3 + 144);
  *(v19 + 128) = *(a3 + 128);
  *(v19 + 144) = v23;
  v24 = *(a3 + 112);
  *(v19 + 96) = *(a3 + 96);
  *(v19 + 112) = v24;
  v25 = a6 + v17[7];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 16) = v26;
  result = *(a4 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a4 + 48);
  v28 = a6 + v17[8];
  *v28 = v29;
  *(v28 + 8) = v14;
  *(v28 + 16) = v15;
  return result;
}

unint64_t sub_217BF7300()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144686372616573;
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

uint64_t sub_217BF73A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BF86E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BF73D0(uint64_t a1)
{
  v2 = sub_217BF78D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF740C(uint64_t a1)
{
  v2 = sub_217BF78D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BF7EDC(0, &qword_27CBA1D28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v43[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF78D4();
  sub_217D89E7C();
  LOBYTE(v72[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
    v13 = v3;
    v14 = v12;
    v15 = *(v12 + 20);
    v87 = v13;
    v16 = (v13 + v15);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v19 = v16[3];
    v83 = *v16;
    v84 = v17;
    v85 = v18;
    v86 = v19;
    v82 = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v20 = v14;
    v21 = *(v14 + 24);
    v22 = v87;
    v23 = (v87 + v21);
    v24 = v23[7];
    v25 = v23[9];
    v79 = v23[8];
    v80 = v25;
    v26 = v23[3];
    v27 = v23[5];
    v75 = v23[4];
    v76 = v27;
    v28 = v23[5];
    v29 = v23[7];
    v77 = v23[6];
    v78 = v29;
    v30 = v23[1];
    v72[0] = *v23;
    v72[1] = v30;
    v31 = v23[3];
    v33 = *v23;
    v32 = v23[1];
    v73 = v23[2];
    v74 = v31;
    v34 = v23[9];
    v69 = v79;
    v70 = v34;
    v65 = v75;
    v66 = v28;
    v67 = v77;
    v68 = v24;
    v61 = v33;
    v62 = v32;
    v81 = *(v23 + 20);
    v71 = *(v23 + 20);
    v63 = v73;
    v64 = v26;
    v60 = 2;
    sub_217B09D18(v72, v58);
    sub_217B09DDC();
    sub_217D89CAC();
    v58[8] = v69;
    v58[9] = v70;
    v59 = v71;
    v58[4] = v65;
    v58[5] = v66;
    v58[6] = v67;
    v58[7] = v68;
    v58[0] = v61;
    v58[1] = v62;
    v58[2] = v63;
    v58[3] = v64;
    sub_217B09D50(v58);
    v35 = (v22 + *(v20 + 28));
    v36 = v35[2];
    v37 = *v35;
    v38 = *v35;
    v55 = v35[1];
    v56 = v36;
    v54 = v37;
    v57 = *(v35 + 48);
    v50 = v38;
    v51 = v55;
    v52 = v35[2];
    v53 = *(v35 + 48);
    v49 = 3;
    sub_217ACC004(&v54, v47);
    sub_217A55B98();
    sub_217D89CAC();
    v47[0] = v50;
    v47[1] = v51;
    v47[2] = v52;
    v48 = v53;
    sub_217ACC69C(v47);
    v40 = (v22 + *(v20 + 32));
    v41 = *v40;
    v42 = v40[1];
    LOWORD(v40) = *(v40 + 8);
    v44 = v41;
    v45 = v42;
    v46 = v40;
    v43[7] = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BF78D4()
{
  result = qword_27CBA1D30;
  if (!qword_27CBA1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D30);
  }

  return result;
}

uint64_t SearchResultsReturnedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_217D8899C();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BF7EDC(0, &qword_27CBA1D38, MEMORY[0x277D844C8]);
  v44 = v6;
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BF78D4();
  v43 = v9;
  v15 = v66;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v41;
  v17 = a1;
  v66 = v13;
  LOBYTE(v55) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v42;
  sub_217D89BCC();
  v19 = v3;
  v20 = v66;
  (*(v40 + 32))(v66, v18, v19);
  LOBYTE(v50) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v21 = *(&v55 + 1);
  v22 = v56;
  v23 = *(&v56 + 1);
  v24 = v20 + v10[5];
  *v24 = v55;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v54 = 2;
  sub_217B09D84();
  v42 = 0;
  sub_217D89BCC();
  v25 = v20 + v10[6];
  v26 = v62;
  v27 = v64;
  *(v25 + 128) = v63;
  *(v25 + 144) = v27;
  v28 = v58;
  v29 = v60;
  v30 = v61;
  *(v25 + 64) = v59;
  *(v25 + 80) = v29;
  *(v25 + 160) = v65;
  *(v25 + 96) = v30;
  *(v25 + 112) = v26;
  v31 = v56;
  *v25 = v55;
  *(v25 + 16) = v31;
  *(v25 + 32) = v57;
  *(v25 + 48) = v28;
  v49 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v32 = v20 + v10[7];
  v33 = v51;
  *v32 = v50;
  *(v32 + 16) = v33;
  *(v32 + 32) = v52;
  *(v32 + 48) = v53;
  v45 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v16 + 8))(v43, v44);
  v34 = v47;
  v35 = v48;
  v36 = v20 + v10[8];
  *v36 = v46;
  *(v36 + 8) = v34;
  *(v36 + 16) = v35;
  sub_217BF7F40(v20, v39);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_217BF7FA4(v20);
}

void sub_217BF7EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BF78D4();
    v7 = a3(a1, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BF7F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BF7FA4(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BF80D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217BF6BEC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BF6BEC(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BF6BEC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BF6BEC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217BF8360()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217BF6BEC(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
    if (v1 <= 0x3F)
    {
      sub_217BF6BEC(319, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
      if (v2 <= 0x3F)
      {
        sub_217BF6BEC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217BF6BEC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217BF8534()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217BF85E0()
{
  result = qword_27CBA1D60;
  if (!qword_27CBA1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D60);
  }

  return result;
}

unint64_t sub_217BF8638()
{
  result = qword_27CBA1D68;
  if (!qword_27CBA1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D68);
  }

  return result;
}

unint64_t sub_217BF8690()
{
  result = qword_27CBA1D70;
  if (!qword_27CBA1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D70);
  }

  return result;
}

uint64_t sub_217BF86E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD04C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::ArticleType_optional __swiftcall ArticleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleType.rawValue.getter()
{
  v1 = 6712929;
  if (*v0 != 1)
  {
    v1 = 6448503;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217BF8958(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 6712929;
  if (v2 != 1)
  {
    v3 = 6448503;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 6712929;
  if (*a2 != 1)
  {
    v6 = 6448503;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217BF8A40()
{
  result = qword_27CBA1D78;
  if (!qword_27CBA1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D78);
  }

  return result;
}

uint64_t sub_217BF8A94()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217BF8B28()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217BF8BA8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217BF8C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6712929;
  if (v2 != 1)
  {
    v4 = 6448503;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217BF8D54()
{
  result = qword_2811C7DA8;
  if (!qword_2811C7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DA8);
  }

  return result;
}

NewsAnalytics::JourneyMessageDisplayFailureReason_optional __swiftcall JourneyMessageDisplayFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t JourneyMessageDisplayFailureReason.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD000000000000010;
    v6 = 0x6576697463416F6ELL;
    if (v1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (v1 == 5)
    {
      v7 = 0xD000000000000015;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD00000000000001FLL;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0)
    {
      v2 = 0xD000000000000018;
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

unint64_t sub_217BF8F74()
{
  result = qword_27CBA1D80;
  if (!qword_27CBA1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1D80);
  }

  return result;
}

uint64_t sub_217BF8FC8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D8309C();
  return sub_217D89E3C();
}

uint64_t sub_217BF9018()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D8309C();
  return sub_217D89E3C();
}

unint64_t sub_217BF9068@<X0>(unint64_t *a1@<X8>)
{
  result = JourneyMessageDisplayFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217BF9150()
{
  result = qword_2811BDC88;
  if (!qword_2811BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDC88);
  }

  return result;
}

uint64_t sub_217BF926C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1DB8);
  __swift_project_value_buffer(v0, qword_27CBA1DB8);
  return sub_217D8866C();
}

uint64_t IssueNewsletterOptinEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueNewsletterOptinEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 24);
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueNewsletterOptinEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 24);
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 28);
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BF9710(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t IssueNewsletterOptinEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueNewsletterOptinEvent(0) + 28);
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueNewsletterOptinEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueNewsletterOptinEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217BF9A84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueNewsletterOptinEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IssueNewsletterOptinEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueNewsletterOptinEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 IssueNewsletterOptinEvent.Model.init(eventData:timedData:userActionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  v12 = v11[5];
  v13 = sub_217D889CC();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = v9;
  v14 = a5 + v11[7];
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

unint64_t sub_217BF9CBC()
{
  v1 = 0x746144746E657665;
  v2 = 0x6974634172657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_217BF9D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BFAD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BF9D70(uint64_t a1)
{
  v2 = sub_217BFA0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BF9DAC(uint64_t a1)
{
  v2 = sub_217BFA0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueNewsletterOptinEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BFA694(0, &qword_27CBA1DD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFA0E8();
  sub_217D89E7C();
  LOBYTE(v25[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v25[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v29 = *(v3 + v12[6]);
    v28 = 2;
    sub_217B99A48();
    sub_217D89CAC();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v25[2] = v14[2];
    v26 = *(v14 + 48);
    v21 = v17;
    v22 = v16;
    v23 = v14[2];
    v24 = *(v14 + 48);
    v27 = 3;
    sub_217ACC004(v25, v19);
    sub_217A55B98();
    sub_217D89CAC();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v20 = v24;
    sub_217ACC69C(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BFA0E8()
{
  result = qword_27CBA1DD8;
  if (!qword_27CBA1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1DD8);
  }

  return result;
}

uint64_t IssueNewsletterOptinEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BFA694(0, &qword_27CBA1DE0, MEMORY[0x277D844C8]);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFA0E8();
  v34 = v12;
  v18 = v35;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v13;
  v19 = v29;
  v20 = v30;
  LOBYTE(v36) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = *(v19 + 32);
  v22 = v33;
  v33 = v6;
  v21(v16, v22);
  LOBYTE(v36) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v28 + 32))(&v16[*(v35 + 20)], v5, v20);
  v40 = 2;
  sub_217B999F4();
  sub_217D89BCC();
  v23 = v35;
  v16[*(v35 + 24)] = v36;
  v40 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v31 + 8))(v34, v32);
  v24 = &v16[*(v23 + 28)];
  v25 = v37;
  *v24 = v36;
  *(v24 + 1) = v25;
  *(v24 + 2) = v38;
  v24[48] = v39;
  sub_217BFA6F8(v16, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217BFA75C(v16);
}

void sub_217BFA694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFA0E8();
    v7 = a3(a1, &type metadata for IssueNewsletterOptinEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BFA6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BFA75C(uint64_t a1)
{
  v2 = type metadata accessor for IssueNewsletterOptinEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BFA890@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BF9710(0, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BF9710(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217BFAA68()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217BF9710(319, &qword_2811C8580, sub_217B999F4, sub_217B99A48);
      if (v2 <= 0x3F)
      {
        sub_217BF9710(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217BFABB4()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217BFAC64()
{
  result = qword_27CBA1E08;
  if (!qword_27CBA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E08);
  }

  return result;
}

unint64_t sub_217BFACBC()
{
  result = qword_27CBA1E10;
  if (!qword_27CBA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E10);
  }

  return result;
}

unint64_t sub_217BFAD14()
{
  result = qword_27CBA1E18;
  if (!qword_27CBA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E18);
  }

  return result;
}

uint64_t sub_217BFAD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ArticleScoreSummaryData.articleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ArticleScoreSummaryData.articleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double ArticleScoreSummaryData.baselineScoreData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double ArticleScoreSummaryData.baselineScoreData.setter(double *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

void ArticleScoreSummaryData.experimentalScoreData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ArticleScoreSummaryData.experimentalScoreData.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

unint64_t sub_217BFB050()
{
  v1 = 0x49656C6369747261;
  v2 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_217BFB0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BFB984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BFB0FC(uint64_t a1)
{
  v2 = sub_217BFB38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BFB138(uint64_t a1)
{
  v2 = sub_217BFB38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScoreSummaryData.encode(to:)(void *a1)
{
  sub_217BFB670(0, &qword_2811BC5D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v9 = *(v1 + 1);
  v17[1] = *(v1 + 2);
  v17[2] = v9;
  v10 = *(v1 + 3);
  v17[0] = *(v1 + 4);
  v11 = v1[40];
  v12 = a1[4];
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFB38C();
  sub_217D89E7C();
  LOBYTE(v18) = 0;
  v14 = v17[3];
  sub_217D89C1C();
  if (!v14)
  {
    v15 = v17[0];
    LOBYTE(v18) = 1;
    sub_217D89C6C();
    v18 = v10;
    v20 = 2;
    sub_217B86F3C();
    sub_217D89CAC();
    v18 = v15;
    v19 = v11;
    v20 = 3;
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217BFB38C()
{
  result = qword_2811C0120[0];
  if (!qword_2811C0120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C0120);
  }

  return result;
}

uint64_t ArticleScoreSummaryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217BFB670(0, &qword_27CBA1E20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFB38C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v20 = sub_217D89B3C();
  LOBYTE(v21) = 1;
  v12 = sub_217D89B8C();
  v14 = v13;
  v19 = v12;
  v23 = 2;
  sub_217B86EE4();
  sub_217D89BCC();
  v15 = v21;
  v23 = 3;
  sub_217D89B5C();
  (*(v7 + 8))(v10, v6);
  v17 = v21;
  v18 = v22;
  *a2 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217BFB670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFB38C();
    v7 = a3(a1, &type metadata for ArticleScoreSummaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217BFB6D8()
{
  result = qword_27CBA1E28;
  if (!qword_27CBA1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E28);
  }

  return result;
}

unint64_t sub_217BFB730()
{
  result = qword_2811C0108;
  if (!qword_2811C0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0108);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217BFB7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217BFB810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217BFB880()
{
  result = qword_27CBA1E30;
  if (!qword_27CBA1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E30);
  }

  return result;
}

unint64_t sub_217BFB8D8()
{
  result = qword_2811C0110;
  if (!qword_2811C0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0110);
  }

  return result;
}

unint64_t sub_217BFB930()
{
  result = qword_2811C0118;
  if (!qword_2811C0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0118);
  }

  return result;
}

uint64_t sub_217BFB984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000217DD04E0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD0500 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BFBBC0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1E68);
  __swift_project_value_buffer(v0, qword_27CBA1E68);
  return sub_217D8866C();
}

uint64_t ArticleFeedbackEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleFeedbackEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 24);
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 24);
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 28);
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 28);
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 32);
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 32);
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 36);
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 36);
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.feedbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 40);
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleFeedbackEvent.feedbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 40);
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 44);
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217BFC724(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ArticleFeedbackEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleFeedbackEvent(0) + 44);
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleFeedbackEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleFeedbackEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217BFCC8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleFeedbackEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleFeedbackEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ArticleFeedbackEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleFeedbackEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t ArticleFeedbackEvent.Model.feedbackData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleFeedbackEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ArticleFeedbackEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleFeedbackEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 ArticleFeedbackEvent.Model.init(eventData:timedData:articleData:channelData:tagData:issueData:feedbackData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a4;
  v15 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a4 + 17);
  v36 = a4[4];
  v37 = a4[3];
  v38 = a5[1];
  v39 = *a5;
  v40 = *a7;
  v19 = sub_217D8899C();
  v34 = a6[1];
  v35 = *a6;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  v24 = *(a3 + 48);
  *(v23 + 32) = *(a3 + 32);
  *(v23 + 48) = v24;
  v25 = *(a3 + 16);
  *v23 = *a3;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a3 + 127);
  v26 = *(a3 + 112);
  *(v23 + 96) = *(a3 + 96);
  *(v23 + 112) = v26;
  v27 = *(a3 + 80);
  *(v23 + 64) = *(a3 + 64);
  *(v23 + 80) = v27;
  v28 = a9 + v20[7];
  *v28 = v16;
  *(v28 + 8) = v15;
  *(v28 + 16) = v17;
  *(v28 + 17) = v18;
  *(v28 + 24) = v37;
  *(v28 + 32) = v36;
  v29 = (a9 + v20[8]);
  *v29 = v39;
  v29[1] = v38;
  v30 = (a9 + v20[9]);
  *v30 = v35;
  v30[1] = v34;
  *(a9 + v20[10]) = v40;
  v31 = a9 + v20[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  result = *(a8 + 32);
  *(v31 + 32) = result;
  *(v31 + 48) = *(a8 + 48);
  return result;
}

unint64_t sub_217BFD120()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6B63616264656566;
  if (v1 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x61746144676174;
  if (v1 != 4)
  {
    v4 = 0x7461446575737369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217BFD234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217BFECA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217BFD25C(uint64_t a1)
{
  v2 = sub_217BFD85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217BFD298(uint64_t a1)
{
  v2 = sub_217BFD85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleFeedbackEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217BFE214(0, &qword_27CBA1E88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v40 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFD85C();
  sub_217D89E7C();
  LOBYTE(v64[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleFeedbackEvent.Model(0);
    v13 = v12[5];
    v71 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = v3 + v12[6];
    v15 = *(v14 + 80);
    v16 = *(v14 + 112);
    v69 = *(v14 + 96);
    *v70 = v16;
    v17 = *(v14 + 16);
    v18 = *(v14 + 48);
    v65 = *(v14 + 32);
    v66 = v18;
    v19 = *(v14 + 48);
    v20 = *(v14 + 80);
    v67 = *(v14 + 64);
    v68 = v20;
    v21 = *(v14 + 16);
    v64[0] = *v14;
    v64[1] = v21;
    v22 = *(v14 + 112);
    v62 = v69;
    v63[0] = v22;
    v58 = v65;
    v59 = v19;
    v60 = v67;
    v61 = v15;
    *&v70[15] = *(v14 + 127);
    *(v63 + 15) = *(v14 + 127);
    v56 = v64[0];
    v57 = v17;
    v55 = 2;
    sub_217AD1630(v64, v53);
    sub_217ACF52C();
    sub_217D89CAC();
    v53[6] = v62;
    *v54 = v63[0];
    *&v54[15] = *(v63 + 15);
    v53[2] = v58;
    v53[3] = v59;
    v53[4] = v60;
    v53[5] = v61;
    v53[0] = v56;
    v53[1] = v57;
    sub_217AD2864(v53);
    v23 = v3 + v12[7];
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v26 = *(v23 + 17);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    *&v47 = *v23;
    *(&v47 + 1) = v24;
    LOBYTE(v48) = v25;
    BYTE1(v48) = v26;
    *(&v48 + 1) = v27;
    *&v49 = v28;
    LOBYTE(v43) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v29 = (v3 + v12[8]);
    v30 = v29[1];
    *&v47 = *v29;
    *(&v47 + 1) = v30;
    LOBYTE(v43) = 4;
    sub_217AF6B14();

    sub_217D89CAC();

    v31 = (v3 + v12[9]);
    v32 = v31[1];
    v33 = v31[2];
    v34 = v31[3];
    *&v47 = *v31;
    *(&v47 + 1) = v32;
    *&v48 = v33;
    *(&v48 + 1) = v34;
    LOBYTE(v43) = 5;
    sub_217AE39D0(v47, v32);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v47, *(&v47 + 1));
    v52 = *(v3 + v12[10]);
    v51 = 6;
    sub_217B88040();
    sub_217D89CAC();
    v35 = (v3 + v12[11]);
    v36 = v35[1];
    v47 = *v35;
    v48 = v36;
    v38 = *v35;
    v37 = v35[1];
    v49 = v35[2];
    v50 = *(v35 + 48);
    v43 = v38;
    v44 = v37;
    v45 = v35[2];
    v46 = *(v35 + 48);
    v42 = 7;
    sub_217ACC004(&v47, v40);
    sub_217A55B98();
    sub_217D89CAC();
    v40[0] = v43;
    v40[1] = v44;
    v40[2] = v45;
    v41 = v46;
    sub_217ACC69C(v40);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217BFD85C()
{
  result = qword_27CBA1E90;
  if (!qword_27CBA1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1E90);
  }

  return result;
}

uint64_t ArticleFeedbackEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = sub_217D889CC();
  v49 = *(v47 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BFE214(0, &qword_27CBA1E98, MEMORY[0x277D844C8]);
  v52 = v9;
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - v11;
  v13 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217BFD85C();
  v53 = v12;
  v18 = v68;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v20 = v49;
  v68 = v16;
  LOBYTE(v60) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v50;
  v22 = v52;
  sub_217D89BCC();
  (*(v48 + 32))(v68, v21, v6);
  LOBYTE(v60) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v23 = v47;
  sub_217D89BCC();
  v45[1] = v6;
  v50 = 0;
  (*(v20 + 32))(&v68[v13[5]], v5, v23);
  v59 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v24 = &v68[v13[6]];
  v25 = *v67;
  *(v24 + 6) = v66;
  *(v24 + 7) = v25;
  *(v24 + 127) = *&v67[15];
  v26 = v63;
  *(v24 + 2) = v62;
  *(v24 + 3) = v26;
  v27 = v65;
  *(v24 + 4) = v64;
  *(v24 + 5) = v27;
  v28 = v61;
  *v24 = v60;
  *(v24 + 1) = v28;
  v58 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v29 = v19;
  v30 = *(&v54 + 1);
  v31 = v55;
  v32 = BYTE1(v55);
  v33 = *(&v55 + 1);
  v34 = v56;
  v35 = &v68[v13[7]];
  *v35 = v54;
  *(v35 + 1) = v30;
  v35[16] = v31;
  v35[17] = v32;
  *(v35 + 3) = v33;
  *(v35 + 4) = v34;
  v58 = 4;
  sub_217AF6AC0();
  sub_217D89BCC();
  v36 = v51;
  v37 = *(&v54 + 1);
  v38 = &v68[v13[8]];
  *v38 = v54;
  *(v38 + 1) = v37;
  v58 = 5;
  sub_217ACFF40();
  sub_217D89B5C();
  v39 = &v68[v13[9]];
  v40 = v55;
  *v39 = v54;
  *(v39 + 1) = v40;
  v58 = 6;
  sub_217B87FE8();
  sub_217D89BCC();
  v68[v13[10]] = v54;
  v58 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v36 + 8))(v53, v22);
  v41 = v68;
  v42 = &v68[v13[11]];
  v43 = v55;
  *v42 = v54;
  *(v42 + 1) = v43;
  *(v42 + 2) = v56;
  v42[48] = v57;
  sub_217BFE278(v41, v46);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_217BFE2DC(v41);
}

void sub_217BFE214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217BFD85C();
    v7 = a3(a1, &type metadata for ArticleFeedbackEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217BFE278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217BFE2DC(uint64_t a1)
{
  v2 = type metadata accessor for ArticleFeedbackEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217BFE410@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217BFC724(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217BFC724(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217BFC724(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217BFC724(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217BFC724(0, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217BFC724(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217BFE7DC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217BFC724(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217BFC724(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217BFC724(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
          if (v4 <= 0x3F)
          {
            sub_217BFC724(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
            if (v5 <= 0x3F)
            {
              sub_217BFC724(319, &qword_27CBA1E80, sub_217B87FE8, sub_217B88040);
              if (v6 <= 0x3F)
              {
                sub_217BFC724(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
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

void sub_217BFEA68()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217BFEB38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217BFEB38()
{
  if (!qword_2811BD110)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BD110);
    }
  }
}

unint64_t sub_217BFEB9C()
{
  result = qword_27CBA1EC0;
  if (!qword_27CBA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1EC0);
  }

  return result;
}

unint64_t sub_217BFEBF4()
{
  result = qword_27CBA1EC8;
  if (!qword_27CBA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1EC8);
  }

  return result;
}

unint64_t sub_217BFEC4C()
{
  result = qword_27CBA1ED0;
  if (!qword_27CBA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1ED0);
  }

  return result;
}

uint64_t sub_217BFECA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217BFF01C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1F08);
  __swift_project_value_buffer(v0, qword_27CBA1F08);
  return sub_217D8866C();
}

uint64_t SubscriptionWebAuthenticationEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionWebAuthenticationEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 20);
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 20);
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 24);
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 24);
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 28);
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 28);
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 32);
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 32);
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 36);
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 36);
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 40);
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 40);
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 44);
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 44);
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 48);
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 48);
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 52);
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 52);
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 56);
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 56);
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 60);
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 60);
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 64);
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 64);
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 68);
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 68);
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 72);
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 72);
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 76);
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C009C0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SubscriptionWebAuthenticationEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionWebAuthenticationEvent(0) + 76);
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionWebAuthenticationEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionWebAuthenticationEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v6, v35);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.resultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_217B1563C(v4, v5);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.errorData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 44));
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

  return sub_217BC060C(v4, v5, v6, v7);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 48);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 72));
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

  return sub_217AE3AE8(v4, v5);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.recipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0) + 76));
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

  return sub_217AD86BC(v4, v5);
}

__n128 SubscriptionWebAuthenticationEvent.Model.init(eventData:articleData:channelData:feedData:groupData:resultData:campaignData:errorData:sectionData:viewData:purchaseData:purchaseSessionData:paywallData:issueData:articleExposureContextData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, __int16 *a14, __int128 *a15, __int128 *a16, uint64_t a17)
{
  v23 = a3[1];
  v54 = *a3;
  v52 = *(a3 + 17);
  v53 = *(a3 + 16);
  v50 = a3[4];
  v51 = a3[3];
  v57 = *a4;
  v56 = *(a4 + 2);
  v59 = *a6;
  v62 = *(a7 + 5);
  v63 = *(a7 + 4);
  v65 = *(a8 + 4);
  v69 = *a10;
  v68 = *(a10 + 2);
  v67 = *(a10 + 24);
  v71 = a11[1];
  v72 = *a11;
  v70 = *(a11 + 8);
  v76 = *a12;
  v75 = a12[1];
  v74 = *(a12 + 16);
  v78 = a13[1];
  v79 = *a13;
  v80 = *a14;
  v81 = *(a16 + 4);
  v82 = *(a17 + 32);
  v24 = sub_217D8899C();
  v77 = *a17;
  v73 = *(a17 + 16);
  v66 = *a16;
  v64 = a16[1];
  v60 = a15[1];
  v61 = *a15;
  v58 = *a8;
  v55 = a8[1];
  v48 = a7[1];
  v49 = *a7;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  v26 = a9 + v25[5];
  v27 = *(a2 + 48);
  *(v26 + 32) = *(a2 + 32);
  *(v26 + 48) = v27;
  v28 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a2 + 127);
  v29 = *(a2 + 112);
  *(v26 + 96) = *(a2 + 96);
  *(v26 + 112) = v29;
  v30 = *(a2 + 80);
  *(v26 + 64) = *(a2 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v25[6];
  *v31 = v54;
  *(v31 + 8) = v23;
  *(v31 + 16) = v53;
  *(v31 + 17) = v52;
  *(v31 + 24) = v51;
  *(v31 + 32) = v50;
  v32 = a9 + v25[7];
  *v32 = v57;
  *(v32 + 16) = v56;
  v33 = (a9 + v25[8]);
  v34 = a5[7];
  v33[6] = a5[6];
  v33[7] = v34;
  v33[8] = a5[8];
  v35 = a5[3];
  v33[2] = a5[2];
  v33[3] = v35;
  v36 = a5[5];
  v33[4] = a5[4];
  v33[5] = v36;
  v37 = a5[1];
  *v33 = *a5;
  v33[1] = v37;
  *(a9 + v25[9]) = v59;
  v38 = a9 + v25[10];
  *v38 = v49;
  *(v38 + 16) = v48;
  *(v38 + 32) = v63;
  *(v38 + 40) = v62;
  v39 = a9 + v25[11];
  *v39 = v58;
  *(v39 + 16) = v55;
  *(v39 + 32) = v65;
  v40 = a9 + v25[12];
  *v40 = v69;
  *(v40 + 16) = v68;
  *(v40 + 24) = v67;
  v41 = a9 + v25[13];
  *v41 = v72;
  *(v41 + 8) = v71;
  *(v41 + 16) = v70;
  v42 = a9 + v25[14];
  *v42 = v76;
  *(v42 + 8) = v75;
  *(v42 + 16) = v74;
  v43 = (a9 + v25[15]);
  *v43 = v79;
  v43[1] = v78;
  *(a9 + v25[16]) = v80;
  v44 = (a9 + v25[17]);
  *v44 = v61;
  v44[1] = v60;
  v45 = a9 + v25[18];
  *v45 = v66;
  *(v45 + 16) = v64;
  *(v45 + 32) = v81;
  v46 = a9 + v25[19];
  result = v77;
  *v46 = v77;
  *(v46 + 16) = v73;
  *(v46 + 32) = v82;
  return result;
}

uint64_t sub_217C01B90(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x44656C6369747261;
    case 2:
      v3 = 0x656E6E616863;
      goto LABEL_9;
    case 3:
      v4 = 1684366694;
      goto LABEL_12;
    case 4:
      return 0x74614470756F7267;
    case 5:
      v5 = 0x746C75736572;
      goto LABEL_15;
    case 6:
      return 0x6E676961706D6163;
    case 7:
      return 0x746144726F727265;
    case 8:
      return 0x446E6F6974636573;
    case 9:
      v4 = 2003134838;
LABEL_12:
      result = v4 | 0x6174614400000000;
      break;
    case 10:
      result = 0x6573616863727570;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      v3 = 0x6C6177796170;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 13:
      result = 0x7461446575737369;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      v5 = 0x657069636572;
LABEL_15:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C01D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C04834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C01D58(uint64_t a1)
{
  v2 = sub_217C027F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C01D94(uint64_t a1)
{
  v2 = sub_217C027F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionWebAuthenticationEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C035CC(0, &qword_27CBA1F20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v77 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C027F0();
  sub_217D89E7C();
  v128 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v129 = v7;
  v78 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  v79 = v3;
  v13 = v3 + v78[5];
  v14 = *(v13 + 96);
  v15 = *(v13 + 64);
  v125 = *(v13 + 80);
  v126 = v14;
  v16 = *(v13 + 96);
  *v127 = *(v13 + 112);
  v17 = *(v13 + 16);
  v18 = *(v13 + 48);
  v122 = *(v13 + 32);
  v123 = v18;
  v19 = *(v13 + 48);
  v124 = *(v13 + 64);
  v20 = *(v13 + 16);
  v121[0] = *v13;
  v121[1] = v20;
  v118 = v125;
  v119 = v16;
  v120[0] = *(v13 + 112);
  v115 = v122;
  v116 = v19;
  v117 = v15;
  *&v127[15] = *(v13 + 127);
  *(v120 + 15) = *(v13 + 127);
  v113 = v121[0];
  v114 = v17;
  v112 = 1;
  sub_217AE38AC(v121, &v97, &qword_2811C7DB8);
  sub_217ACF52C();
  sub_217D89C3C();
  v110[5] = v118;
  v110[6] = v119;
  *v111 = v120[0];
  *&v111[15] = *(v120 + 15);
  v110[2] = v115;
  v110[3] = v116;
  v110[4] = v117;
  v110[0] = v113;
  v110[1] = v114;
  sub_217AE4A44(v110, &qword_2811C7DB8);
  v22 = v78;
  v21 = v79;
  v23 = v79 + v78[6];
  v24 = *(v23 + 8);
  v25 = *(v23 + 16);
  v26 = *(v23 + 17);
  v27 = *(v23 + 24);
  v28 = *(v23 + 32);
  *&v97 = *v23;
  *(&v97 + 1) = v24;
  LOBYTE(v98) = v25;
  BYTE1(v98) = v26;
  *(&v98 + 1) = v27;
  *&v99 = v28;
  LOBYTE(v88) = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v29 = (v21 + v22[7]);
  v30 = v29[1];
  v31 = v29[2];
  v107 = *v29;
  v108 = v30;
  v109 = v31;
  v106 = 3;
  sub_217AD1A68(v107, v30, v31);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v107, v108, v109);
  v32 = (v21 + v22[8]);
  v33 = v32[6];
  v34 = v32[4];
  v102 = v32[5];
  v103 = v33;
  v35 = v32[6];
  v36 = v32[8];
  v104 = v32[7];
  v105 = v36;
  v37 = v32[2];
  v38 = *v32;
  v98 = v32[1];
  v99 = v37;
  v39 = v32[2];
  v40 = v32[4];
  v100 = v32[3];
  v101 = v40;
  v41 = *v32;
  v94 = v35;
  v95 = v104;
  v96 = v32[8];
  v97 = v41;
  v90 = v39;
  v91 = v100;
  v92 = v34;
  v93 = v102;
  v88 = v38;
  v89 = v98;
  v87 = 4;
  sub_217AE38AC(&v97, v86, &qword_2811BD178);
  sub_217A5D3B4();
  sub_217D89C3C();
  v86[5] = v93;
  v86[6] = v94;
  v86[7] = v95;
  v86[8] = v96;
  v86[2] = v90;
  v86[3] = v91;
  v86[4] = v92;
  v86[0] = v88;
  v86[1] = v89;
  sub_217AE4A44(v86, &qword_2811BD178);
  LOBYTE(v80) = *(v21 + v22[9]);
  v85 = 5;
  sub_217B247D8();
  sub_217D89CAC();
  v42 = (v21 + v22[10]);
  v43 = v42[1];
  v44 = v42[2];
  v45 = v42[3];
  v46 = v42[4];
  v47 = v42[5];
  v80 = *v42;
  *&v81 = v43;
  *(&v81 + 1) = v44;
  v82 = v45;
  v83 = v46;
  v84 = v47;
  v85 = 6;
  sub_217B1563C(v80, v43);
  sub_217A66ADC();
  sub_217D89C3C();
  sub_217B15D30(v80, v81);
  v48 = (v21 + v22[11]);
  v49 = v48[1];
  v50 = v48[2];
  v51 = v48[3];
  v52 = v48[4];
  v80 = *v48;
  *&v81 = v49;
  *(&v81 + 1) = v50;
  v82 = v51;
  v83 = v52;
  v85 = 7;
  sub_217BC060C(v80, v49, v50, v51);
  sub_217A60BE4();
  sub_217D89C3C();
  sub_217BC0DC0(v80, v81, *(&v81 + 1), v82);
  v53 = v21 + v22[12];
  v54 = *(v53 + 24);
  v80 = *v53;
  v81 = *(v53 + 8);
  LOBYTE(v82) = v54;
  v85 = 8;
  sub_217B17644();

  sub_217D89C3C();

  v55 = v21 + v22[13];
  v56 = *v55;
  v57 = *(v55 + 8);
  LOWORD(v55) = *(v55 + 16);
  v80 = v56;
  *&v81 = v57;
  WORD4(v81) = v55;
  v85 = 9;
  sub_217A5E790();

  sub_217D89C3C();

  v58 = v21 + v22[14];
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v58) = *(v58 + 16);
  v80 = v59;
  *&v81 = v60;
  BYTE8(v81) = v58;
  v85 = 10;
  sub_217AFF378();

  sub_217D89C3C();

  v61 = (v79 + v78[15]);
  v62 = v61[1];
  v80 = *v61;
  *&v81 = v62;
  v85 = 11;
  sub_217B1E4A0();

  sub_217D89CAC();

  LOWORD(v80) = *(v79 + v78[16]);
  v85 = 12;
  sub_217B1DEE8();
  sub_217D89CAC();
  v63 = (v79 + v78[17]);
  v64 = v63[1];
  v65 = v63[2];
  v66 = v63[3];
  v80 = *v63;
  *&v81 = v64;
  *(&v81 + 1) = v65;
  v82 = v66;
  v85 = 13;
  sub_217AE39D0(v80, v64);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v80, v81);
  v67 = (v79 + v78[18]);
  v68 = v67[1];
  v69 = v67[2];
  v70 = v67[3];
  v71 = v67[4];
  v80 = *v67;
  *&v81 = v68;
  *(&v81 + 1) = v69;
  v82 = v70;
  v83 = v71;
  v85 = 14;
  sub_217AE3AE8(v80, v68);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v80, v81);
  v72 = (v79 + v78[19]);
  v73 = v72[1];
  v74 = v72[2];
  v75 = v72[3];
  v76 = v72[4];
  v80 = *v72;
  *&v81 = v73;
  *(&v81 + 1) = v74;
  v82 = v75;
  v83 = v76;
  v85 = 15;
  sub_217AD86BC(v80, v73);
  sub_217B1F08C();
  sub_217D89C3C();
  sub_217AD96A4(v80, v81);
  return (*(v129 + 8))(v10, v6);
}

unint64_t sub_217C027F0()
{
  result = qword_27CBA1F28;
  if (!qword_27CBA1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F28);
  }

  return result;
}

uint64_t SubscriptionWebAuthenticationEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_217D8899C();
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C035CC(0, &qword_27CBA1F30, MEMORY[0x277D844C8]);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - v8;
  v10 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C027F0();
  v69 = v9;
  v15 = v93;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = v10;
  v63 = a1;
  v93 = v13;
  LOBYTE(v84) = 0;
  sub_217A602A0(&qword_2811C8408);
  v16 = v66;
  sub_217D89BCC();
  v17 = v93;
  (*(v65 + 32))(v93, v16, v3);
  v75 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v61[1] = v3;
  v66 = 0;
  v18 = v62;
  v19 = &v17[v62[5]];
  v20 = v81;
  v21 = *v83;
  *(v19 + 6) = v82;
  *(v19 + 7) = v21;
  *(v19 + 127) = *&v83[15];
  v22 = v79;
  *(v19 + 2) = v78;
  *(v19 + 3) = v22;
  *(v19 + 4) = v80;
  *(v19 + 5) = v20;
  v23 = v77;
  *v19 = v76;
  *(v19 + 1) = v23;
  LOBYTE(v70) = 2;
  sub_217AD07F8();
  sub_217D89BCC();
  v24 = *(&v84 + 1);
  v25 = v85;
  v26 = BYTE1(v85);
  v27 = *(&v85 + 1);
  v28 = v86;
  v29 = &v17[v18[6]];
  *v29 = v84;
  *(v29 + 1) = v24;
  v29[16] = v25;
  v29[17] = v26;
  *(v29 + 3) = v27;
  *(v29 + 4) = v28;
  LOBYTE(v70) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v30 = v85;
  v31 = &v17[v18[7]];
  *v31 = v84;
  *(v31 + 2) = v30;
  v74 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v32 = &v17[v18[8]];
  v33 = v91;
  *(v32 + 6) = v90;
  *(v32 + 7) = v33;
  *(v32 + 8) = v92;
  v34 = v87;
  *(v32 + 2) = v86;
  *(v32 + 3) = v34;
  v35 = v89;
  *(v32 + 4) = v88;
  *(v32 + 5) = v35;
  v36 = v85;
  *v32 = v84;
  *(v32 + 1) = v36;
  v73 = 5;
  sub_217B24784();
  sub_217D89BCC();
  v17[v18[9]] = v70;
  v73 = 6;
  sub_217A66A84();
  sub_217D89B5C();
  v37 = &v17[v18[10]];
  v38 = v71;
  *v37 = v70;
  *(v37 + 1) = v38;
  *(v37 + 2) = v72;
  v73 = 7;
  sub_217A60B90();
  sub_217D89B5C();
  v39 = v72;
  v40 = &v17[v18[11]];
  v41 = v71;
  *v40 = v70;
  *(v40 + 1) = v41;
  *(v40 + 4) = v39;
  v73 = 8;
  sub_217B175F0();
  sub_217D89B5C();
  v42 = v71;
  v43 = BYTE8(v71);
  v44 = &v93[v62[12]];
  *v44 = v70;
  *(v44 + 2) = v42;
  v44[24] = v43;
  v73 = 9;
  sub_217A5E738();
  sub_217D89B5C();
  v45 = v71;
  v46 = &v93[v62[13]];
  *v46 = v70;
  *(v46 + 8) = v45;
  v73 = 10;
  sub_217AFF324();
  sub_217D89B5C();
  v47 = v71;
  v48 = &v93[v62[14]];
  *v48 = v70;
  v48[16] = v47;
  v73 = 11;
  sub_217B1E44C();
  sub_217D89BCC();
  v49 = *(&v70 + 1);
  v50 = &v93[v62[15]];
  *v50 = v70;
  *(v50 + 1) = v49;
  v73 = 12;
  sub_217B1DE94();
  sub_217D89BCC();
  *&v93[v62[16]] = v70;
  v73 = 13;
  sub_217ACFF40();
  sub_217D89B5C();
  v51 = &v93[v62[17]];
  v52 = v71;
  *v51 = v70;
  *(v51 + 1) = v52;
  v73 = 14;
  sub_217AE2CA8();
  sub_217D89B5C();
  v53 = v72;
  v54 = &v93[v62[18]];
  v55 = v71;
  *v54 = v70;
  *(v54 + 1) = v55;
  *(v54 + 4) = v53;
  v73 = 15;
  sub_217B1F038();
  sub_217D89B5C();
  (*(v67 + 8))(v69, v68);
  v56 = v72;
  v57 = v93;
  v58 = &v93[v62[19]];
  v59 = v71;
  *v58 = v70;
  *(v58 + 1) = v59;
  *(v58 + 4) = v56;
  sub_217C03630(v57, v64);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_217C03694(v57);
}

void sub_217C035CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C027F0();
    v7 = a3(a1, &type metadata for SubscriptionWebAuthenticationEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C03630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C03694(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionWebAuthenticationEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C037C8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C009C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C009C0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217C009C0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217C009C0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_217C009C0(0, &qword_2811C8818, sub_217B24784, sub_217B247D8);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C009C0(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  sub_217C009C0(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  (*(*(v20 - 8) + 104))(a2 + v19, v7, v20);
  v21 = a1[12];
  sub_217C009C0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v22 - 8) + 104))(a2 + v21, v7, v22);
  v23 = a1[13];
  sub_217C009C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_217C009C0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_217C009C0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217C009C0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217C009C0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v32 - 8) + 104))(a2 + v31, v7, v32);
  v33 = a1[18];
  sub_217C009C0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  (*(*(v34 - 8) + 104))(a2 + v33, v7, v34);
  v35 = a1[19];
  sub_217C009C0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v7, v36);
}

void sub_217C03F8C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C009C0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217C009C0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217C009C0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217C009C0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217C009C0(319, &qword_2811C8818, sub_217B24784, sub_217B247D8);
            if (v5 <= 0x3F)
            {
              sub_217C009C0(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
              if (v6 <= 0x3F)
              {
                sub_217C009C0(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
                if (v7 <= 0x3F)
                {
                  sub_217C009C0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
                  if (v8 <= 0x3F)
                  {
                    sub_217C009C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                    if (v9 <= 0x3F)
                    {
                      sub_217C009C0(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
                      if (v10 <= 0x3F)
                      {
                        sub_217C009C0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                        if (v11 <= 0x3F)
                        {
                          sub_217C009C0(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
                          if (v12 <= 0x3F)
                          {
                            sub_217C009C0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                            if (v13 <= 0x3F)
                            {
                              sub_217C009C0(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                              if (v14 <= 0x3F)
                              {
                                sub_217C009C0(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
                                if (v15 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217C044D0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7A98);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CBA1430);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7C80);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BD200);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F108);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811BD110);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811BF120);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811C7EF8);
                        if (v11 <= 0x3F)
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
  }
}

unint64_t sub_217C04730()
{
  result = qword_27CBA1F38;
  if (!qword_27CBA1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F38);
  }

  return result;
}

unint64_t sub_217C04788()
{
  result = qword_27CBA1F40;
  if (!qword_27CBA1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F40);
  }

  return result;
}

unint64_t sub_217C047E0()
{
  result = qword_27CBA1F48;
  if (!qword_27CBA1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1F48);
  }

  return result;
}

uint64_t sub_217C04834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_217C04E24()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA1F80);
  __swift_project_value_buffer(v0, qword_27CBA1F80);
  return sub_217D8866C();
}

uint64_t AudioEngagementBeginEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementBeginEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C056E8()
{
  result = qword_2811BD080;
  if (!qword_2811BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD080);
  }

  return result;
}

unint64_t sub_217C0573C()
{
  result = qword_2811BD088;
  if (!qword_2811BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD088);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C06360()
{
  result = qword_2811C7988;
  if (!qword_2811C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7988);
  }

  return result;
}

unint64_t sub_217C063B4()
{
  result = qword_2811C7990[0];
  if (!qword_2811C7990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C7990);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C065B8()
{
  result = qword_2811BE1A8;
  if (!qword_2811BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1A8);
  }

  return result;
}

unint64_t sub_217C0660C()
{
  result = qword_2811BE1B0;
  if (!qword_2811BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE1B0);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 72);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C06810(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AudioEngagementBeginEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 72);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementBeginEvent(0);
  v5 = v4[5];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v2, v33);
}

uint64_t AudioEngagementBeginEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t AudioEngagementBeginEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t AudioEngagementBeginEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t AudioEngagementBeginEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngagementBeginEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 40));
  *&v9[10] = *(v3 + 26);
  v4 = *&v9[10];
  v5 = v3[1];
  v8 = *v3;
  *v9 = v5;
  *a1 = v8;
  a1[1] = v5;
  *(a1 + 26) = v4;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngagementBeginEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementBeginEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 48);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t AudioEngagementBeginEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t AudioEngagementBeginEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t AudioEngagementBeginEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementBeginEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 64));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngagementBeginEvent.Model.init(eventData:articleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:audioEngagementOriginationData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, const void *a10, uint64_t a11, __n128 *a12, uint64_t *a13, int *a14, char *a15, char *a16)
{
  v21 = *a3;
  v22 = *(a3 + 16);
  v23 = *(a3 + 17);
  v50 = a3[3];
  v51 = a3[1];
  v49 = a3[4];
  v53 = *a5;
  v52 = *(a5 + 2);
  v54 = *(a6 + 4);
  v55 = *a6;
  v57 = a8[1];
  v58 = *a8;
  v56 = *(a8 + 8);
  v61 = a13[1];
  v62 = *a13;
  v24 = *a14;
  v66 = *a16;
  v65 = a16[1];
  v63 = *a15;
  v64 = *(a16 + 1);
  v25 = sub_217D8899C();
  v59 = a12[1];
  v60 = *a12;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v27 = a9 + v26[5];
  v28 = *(a2 + 48);
  *(v27 + 32) = *(a2 + 32);
  *(v27 + 48) = v28;
  v29 = *(a2 + 16);
  *v27 = *a2;
  *(v27 + 16) = v29;
  *(v27 + 127) = *(a2 + 127);
  v30 = *(a2 + 112);
  *(v27 + 96) = *(a2 + 96);
  *(v27 + 112) = v30;
  v31 = *(a2 + 80);
  *(v27 + 64) = *(a2 + 64);
  *(v27 + 80) = v31;
  v32 = a9 + v26[6];
  *v32 = v21;
  *(v32 + 8) = v51;
  *(v32 + 16) = v22;
  *(v32 + 17) = v23;
  *(v32 + 24) = v50;
  *(v32 + 32) = v49;
  v33 = (a9 + v26[7]);
  v34 = a4[3];
  v33[2] = a4[2];
  v33[3] = v34;
  v35 = a4[1];
  *v33 = *a4;
  v33[1] = v35;
  v36 = a4[8];
  v33[7] = a4[7];
  v33[8] = v36;
  v37 = a4[6];
  v33[5] = a4[5];
  v33[6] = v37;
  v33[4] = a4[4];
  v38 = a9 + v26[8];
  *v38 = v53;
  *(v38 + 16) = v52;
  v39 = a9 + v26[9];
  *v39 = v55;
  *(v39 + 4) = v54;
  v40 = (a9 + v26[10]);
  v41 = a7[1];
  *v40 = *a7;
  v40[1] = v41;
  *(v40 + 26) = *(a7 + 26);
  v42 = a9 + v26[11];
  *v42 = v58;
  *(v42 + 8) = v57;
  *(v42 + 16) = v56;
  memcpy((a9 + v26[12]), a10, 0x111uLL);
  v43 = a9 + v26[13];
  v44 = *(a11 + 16);
  *v43 = *a11;
  *(v43 + 16) = v44;
  *(v43 + 32) = *(a11 + 32);
  *(v43 + 48) = *(a11 + 48);
  v45 = (a9 + v26[14]);
  result = v60;
  *v45 = v60;
  v45[1] = v59;
  v47 = (a9 + v26[15]);
  *v47 = v62;
  v47[1] = v61;
  *(a9 + v26[16]) = v24;
  *(a9 + v26[17]) = v63;
  v48 = a9 + v26[18];
  *v48 = v66;
  *(v48 + 1) = v65;
  *(v48 + 2) = v64;
  return result;
}

uint64_t sub_217C07874(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_12;
    case 5:
      result = 0x7461446B63617274;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      v3 = 2003134838;
LABEL_12:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x7461446575737369;
      break;
    case 11:
      result = 0x6569566575737369;
      break;
    case 12:
      result = 0x6B63616279616C70;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C07A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C0A264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C07A5C(uint64_t a1)
{
  v2 = sub_217C08490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C07A98(uint64_t a1)
{
  v2 = sub_217C08490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementBeginEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C09178(0, &qword_27CBA1F98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v64 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C08490();
  sub_217D89E7C();
  v143 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v144 = v7;
  v13 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v65 = v3;
  v66 = v13;
  v14 = v3 + *(v13 + 20);
  v15 = *(v14 + 96);
  v16 = *(v14 + 64);
  v140 = *(v14 + 80);
  v141 = v15;
  v17 = *(v14 + 96);
  *v142 = *(v14 + 112);
  v18 = *(v14 + 16);
  v19 = *(v14 + 48);
  v137 = *(v14 + 32);
  v138 = v19;
  v20 = *(v14 + 48);
  v139 = *(v14 + 64);
  v21 = *(v14 + 16);
  v136[0] = *v14;
  v136[1] = v21;
  v133 = v140;
  v134 = v17;
  v135[0] = *(v14 + 112);
  v130 = v137;
  v131 = v20;
  v132 = v16;
  *&v142[15] = *(v14 + 127);
  *(v135 + 15) = *(v14 + 127);
  v128 = v136[0];
  v129 = v18;
  v127 = 1;
  sub_217AD1630(v136, v83);
  sub_217ACF52C();
  sub_217D89CAC();
  v125[5] = v133;
  v125[6] = v134;
  *v126 = v135[0];
  *&v126[15] = *(v135 + 15);
  v125[2] = v130;
  v125[3] = v131;
  v125[4] = v132;
  v125[0] = v128;
  v125[1] = v129;
  sub_217AD2864(v125);
  v22 = v65;
  v23 = (v65 + v66[6]);
  v24 = v23[1];
  v25 = *(v23 + 16);
  v26 = *(v23 + 17);
  v27 = v23[3];
  v28 = v23[4];
  v119 = *v23;
  v120 = v24;
  v121 = v25;
  v122 = v26;
  v123 = v27;
  v124 = v28;
  v118 = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v29 = (v22 + v66[7]);
  v30 = v29[6];
  v31 = v29[4];
  v114 = v29[5];
  v115 = v30;
  v32 = v29[6];
  v33 = v29[8];
  v116 = v29[7];
  v117 = v33;
  v34 = v29[2];
  v35 = *v29;
  v110 = v29[1];
  v111 = v34;
  v36 = v29[2];
  v37 = v29[4];
  v112 = v29[3];
  v113 = v37;
  v38 = *v29;
  v106 = v32;
  v107 = v116;
  v108 = v29[8];
  v109 = v38;
  v102 = v36;
  v103 = v112;
  v104 = v31;
  v105 = v114;
  v100 = v35;
  v101 = v110;
  v99 = 3;
  sub_217AD87FC(&v109, v83);
  sub_217A5D3B4();
  sub_217D89C3C();
  v98[6] = v106;
  v98[7] = v107;
  v98[8] = v108;
  v98[2] = v102;
  v98[3] = v103;
  v98[4] = v104;
  v98[5] = v105;
  v98[0] = v100;
  v98[1] = v101;
  sub_217AD96E8(v98);
  v39 = (v22 + v66[8]);
  v40 = v39[1];
  v41 = v39[2];
  *v83 = *v39;
  *&v83[8] = v40;
  *&v83[16] = v41;
  v82[0] = 4;
  sub_217AD1A68(*v83, v40, v41);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(*v83, *&v83[8], *&v83[16]);
  v42 = (v22 + v66[9]);
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 4);
  v96 = v43;
  v97 = v42;
  v95 = 5;
  sub_217C0573C();
  sub_217D89CAC();
  v44 = (v22 + v66[10]);
  v45 = v44[1];
  v93 = *v44;
  v94[0] = v45;
  *(v94 + 10) = *(v44 + 26);
  v46 = v44[1];
  v91 = *v44;
  v92[0] = v46;
  *(v92 + 10) = *(v44 + 26);
  v90 = 6;
  sub_217AEC604(&v93, v83);
  sub_217AEC6C8();
  sub_217D89CAC();
  v88 = v91;
  *v89 = v92[0];
  *&v89[10] = *(v92 + 10);
  sub_217AEC63C(&v88);
  v47 = (v22 + v66[11]);
  v48 = *v47;
  v49 = v47[1];
  LOWORD(v47) = *(v47 + 8);
  v85 = v48;
  v86 = v49;
  v87 = v47;
  v84 = 7;
  sub_217A5E790();

  sub_217D89C3C();

  v50 = v66[12];
  memcpy(v83, (v22 + v50), sizeof(v83));
  memcpy(v82, (v22 + v50), sizeof(v82));
  v81[279] = 8;
  sub_217AD1744(v83, v81);
  sub_217ACF934();
  sub_217D89CAC();
  memcpy(v81, v82, 0x111uLL);
  sub_217AD28B8(v81);
  v51 = (v22 + v66[13]);
  v52 = v51[1];
  v79[0] = *v51;
  v79[1] = v52;
  v54 = *v51;
  v53 = v51[1];
  v79[2] = v51[2];
  v80 = *(v51 + 48);
  v75 = v54;
  v76 = v53;
  v77 = v51[2];
  v78 = *(v51 + 48);
  v74 = 9;
  sub_217ACC004(v79, v72);
  sub_217A55B98();
  sub_217D89CAC();
  v72[0] = v75;
  v72[1] = v76;
  v72[2] = v77;
  v73 = v78;
  sub_217ACC69C(v72);
  v55 = (v22 + v66[14]);
  v56 = v55[1];
  v57 = v55[2];
  v58 = v55[3];
  v68 = *v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v67 = 10;
  sub_217AE39D0(v68, v56);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v68, v69);
  v59 = (v65 + v66[15]);
  v60 = v59[1];
  v68 = *v59;
  v69 = v60;
  v67 = 11;
  sub_217AD01EC();

  sub_217D89C3C();

  LODWORD(v68) = *(v65 + v66[16]);
  v67 = 12;
  sub_217C063B4();
  sub_217D89CAC();
  LOBYTE(v68) = *(v65 + v66[17]);
  v67 = 13;
  sub_217C0660C();
  sub_217D89CAC();
  v61 = (v65 + v66[18]);
  v62 = *v61;
  v63 = v61[1];
  LOWORD(v61) = *(v61 + 1);
  LOBYTE(v68) = v62;
  BYTE1(v68) = v63;
  WORD1(v68) = v61;
  v67 = 14;
  sub_217ACFB8C();
  sub_217D89CAC();
  return (*(v144 + 8))(v10, v6);
}

unint64_t sub_217C08490()
{
  result = qword_27CBA1FA0;
  if (!qword_27CBA1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FA0);
  }

  return result;
}

uint64_t AudioEngagementBeginEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D8899C();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C09178(0, &qword_27CBA1FA8, MEMORY[0x277D844C8]);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C08490();
  v61 = v9;
  v15 = v94;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v58;
  v54 = v10;
  v55 = a1;
  v94 = v13;
  LOBYTE(v93[0]) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  v17 = *(v57 + 32);
  v18 = v94;
  v19 = v60;
  v60 = v3;
  v17(v94, v19, v3);
  v84 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v53 = 0;
  v20 = &v18[v54[5]];
  v21 = v90;
  v22 = *v92;
  *(v20 + 6) = v91;
  *(v20 + 7) = v22;
  *(v20 + 127) = *&v92[15];
  v23 = v88;
  *(v20 + 2) = v87;
  *(v20 + 3) = v23;
  *(v20 + 4) = v89;
  *(v20 + 5) = v21;
  v24 = v86;
  *v20 = v85;
  *(v20 + 1) = v24;
  LOBYTE(v75) = 2;
  sub_217AD07F8();
  sub_217D89BCC();
  v25 = *(&v93[0] + 1);
  v26 = v93[1];
  v27 = BYTE1(v93[1]);
  v28 = *(&v93[1] + 1);
  v29 = *&v93[2];
  v30 = &v18[v54[6]];
  *v30 = *&v93[0];
  *(v30 + 1) = v25;
  v30[16] = v26;
  v30[17] = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  v74 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v31 = &v18[v54[7]];
  v32 = v82;
  *(v31 + 6) = v81;
  *(v31 + 7) = v32;
  *(v31 + 8) = v83;
  v33 = v78;
  *(v31 + 2) = v77;
  *(v31 + 3) = v33;
  v34 = v80;
  *(v31 + 4) = v79;
  *(v31 + 5) = v34;
  v35 = v76;
  *v31 = v75;
  *(v31 + 1) = v35;
  LOBYTE(v66) = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v36 = *&v93[1];
  v37 = &v18[v54[8]];
  *v37 = v93[0];
  *(v37 + 2) = v36;
  LOBYTE(v66) = 5;
  sub_217C056E8();
  sub_217D89BCC();
  v38 = BYTE4(v93[0]);
  v39 = &v18[v54[9]];
  *v39 = v93[0];
  v39[4] = v38;
  v71 = 6;
  sub_217AEC670();
  sub_217D89BCC();
  v40 = &v18[v54[10]];
  v41 = *v73;
  *v40 = v72;
  *(v40 + 1) = v41;
  *(v40 + 26) = *&v73[10];
  LOBYTE(v66) = 7;
  sub_217A5E738();
  sub_217D89B5C();
  v42 = v93[1];
  v43 = &v18[v54[11]];
  *v43 = v93[0];
  *(v43 + 8) = v42;
  v70 = 8;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v94[v54[12]], v93, 0x111uLL);
  v65 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v44 = &v94[v54[13]];
  v45 = v67;
  *v44 = v66;
  *(v44 + 1) = v45;
  *(v44 + 2) = v68;
  v44[48] = v69;
  v62 = 10;
  sub_217ACFF40();
  sub_217D89B5C();
  v46 = &v94[v54[14]];
  v47 = v64;
  *v46 = v63;
  *(v46 + 1) = v47;
  v62 = 11;
  sub_217AD0198();
  sub_217D89B5C();
  *&v94[v54[15]] = v63;
  v62 = 12;
  sub_217C06360();
  sub_217D89BCC();
  *&v94[v54[16]] = v63;
  v62 = 13;
  sub_217C065B8();
  sub_217D89BCC();
  v94[v54[17]] = v63;
  v62 = 14;
  sub_217ACFB38();
  sub_217D89BCC();
  (*(v16 + 8))(v61, v59);
  v48 = BYTE1(v63);
  v49 = WORD1(v63);
  v50 = v94;
  v51 = &v94[v54[18]];
  *v51 = v63;
  v51[1] = v48;
  *(v51 + 1) = v49;
  sub_217C091DC(v50, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_217C09240(v50);
}

void sub_217C09178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C08490();
    v7 = a3(a1, &type metadata for AudioEngagementBeginEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C091DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C09240(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C09374@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v4, v34);
}

void sub_217C09AC0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C06810(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217C06810(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217C06810(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217C06810(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
          if (v4 <= 0x3F)
          {
            sub_217C06810(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
            if (v5 <= 0x3F)
            {
              sub_217C06810(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
              if (v6 <= 0x3F)
              {
                sub_217C06810(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                if (v7 <= 0x3F)
                {
                  sub_217C06810(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
                  if (v8 <= 0x3F)
                  {
                    sub_217C06810(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                    if (v9 <= 0x3F)
                    {
                      sub_217C06810(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                      if (v10 <= 0x3F)
                      {
                        sub_217C06810(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                        if (v11 <= 0x3F)
                        {
                          sub_217C06810(319, &qword_2811C8798, sub_217C06360, sub_217C063B4);
                          if (v12 <= 0x3F)
                          {
                            sub_217C06810(319, &qword_2811C8520, sub_217C065B8, sub_217C0660C);
                            if (v13 <= 0x3F)
                            {
                              sub_217C06810(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                              if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_217C09FB4()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8);
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

unint64_t sub_217C0A160()
{
  result = qword_27CBA1FD0;
  if (!qword_27CBA1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FD0);
  }

  return result;
}

unint64_t sub_217C0A1B8()
{
  result = qword_27CBA1FD8;
  if (!qword_27CBA1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FD8);
  }

  return result;
}

unint64_t sub_217C0A210()
{
  result = qword_27CBA1FE0;
  if (!qword_27CBA1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FE0);
  }

  return result;
}

uint64_t sub_217C0A264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD0560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217C0A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C0A820(uint64_t a1)
{
  v2 = sub_217C0A9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0A85C(uint64_t a1)
{
  v2 = sub_217C0A9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdGroupData.encode(to:)(void *a1)
{
  sub_217C0AC34(0, &qword_2811BC870, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0A9F4();
  sub_217D89E7C();
  v13 = v9;
  sub_217C0AA48();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C0A9F4()
{
  result = qword_2811C7E30;
  if (!qword_2811C7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E30);
  }

  return result;
}

unint64_t sub_217C0AA48()
{
  result = qword_2811BD158;
  if (!qword_2811BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD158);
  }

  return result;
}

uint64_t AdGroupData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C0AC34(0, &qword_27CBA1FE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0A9F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C0AC98();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C0AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0A9F4();
    v7 = a3(a1, &type metadata for AdGroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0AC98()
{
  result = qword_2811BD140;
  if (!qword_2811BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA4)
  {
    goto LABEL_17;
  }

  if (a2 + 92 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 92) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 92;
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

      return (*a1 | (v4 << 8)) - 92;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 92;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5D;
  v8 = v6 - 93;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 92 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 92) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA4)
  {
    v4 = 0;
  }

  if (a2 > 0xA3)
  {
    v5 = ((a2 - 164) >> 8) + 1;
    *result = a2 + 92;
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
    *result = a2 + 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C0AE88()
{
  result = qword_27CBA1FF0;
  if (!qword_27CBA1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA1FF0);
  }

  return result;
}

unint64_t sub_217C0AEE0()
{
  result = qword_2811C7E20;
  if (!qword_2811C7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E20);
  }

  return result;
}

unint64_t sub_217C0AF38()
{
  result = qword_2811C7E28;
  if (!qword_2811C7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E28);
  }

  return result;
}

uint64_t sub_217C0B054()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2028);
  __swift_project_value_buffer(v0, qword_27CBA2028);
  return sub_217D8866C();
}

uint64_t SportsAddFavoritesSyncEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportsAddFavoritesSyncEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsAddFavoritesSyncEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsAddFavoritesSyncEvent.addFavoritesSyncData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C0B408()
{
  result = qword_27CBA2048;
  if (!qword_27CBA2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2048);
  }

  return result;
}

unint64_t sub_217C0B45C()
{
  result = qword_27CBA2050;
  if (!qword_27CBA2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2050);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncEvent.addFavoritesSyncData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsAddFavoritesSyncEvent(0) + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportsAddFavoritesSyncEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SportsAddFavoritesSyncEvent(0);
  v5 = *(v4 + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SportsAddFavoritesSyncEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportsAddFavoritesSyncEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SportsAddFavoritesSyncEvent.Model.addFavoritesSyncData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 SportsAddFavoritesSyncEvent.Model.init(eventData:userBundleSubscriptionContextData:addFavoritesSyncData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_217C0B898()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C0B904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C0C708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C0B92C(uint64_t a1)
{
  v2 = sub_217C0BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0B968(uint64_t a1)
{
  v2 = sub_217C0BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsAddFavoritesSyncEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C0C0A4(0, &qword_27CBA2058, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0BC50();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(v12 + 24));
    v18[11] = 2;
    sub_217C0B45C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C0BC50()
{
  result = qword_27CBA2060;
  if (!qword_27CBA2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2060);
  }

  return result;
}

uint64_t SportsAddFavoritesSyncEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C0C0A4(0, &qword_27CBA2068, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0BC50();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v37 = 2;
  sub_217C0B408();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v36;
  sub_217C0C108(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C0C16C(v22);
}

void sub_217C0C0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0BC50();
    v7 = a3(a1, &type metadata for SportsAddFavoritesSyncEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C0C108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C0C16C(uint64_t a1)
{
  v2 = type metadata accessor for SportsAddFavoritesSyncEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C0C2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62C68(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62C68(0, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C0C438()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62C68(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62C68(319, &qword_27CBA2040, sub_217C0B408, sub_217C0B45C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C0C56C()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C0C604()
{
  result = qword_27CBA2090;
  if (!qword_27CBA2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2090);
  }

  return result;
}

unint64_t sub_217C0C65C()
{
  result = qword_27CBA2098;
  if (!qword_27CBA2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2098);
  }

  return result;
}

unint64_t sub_217C0C6B4()
{
  result = qword_27CBA20A0;
  if (!qword_27CBA20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20A0);
  }

  return result;
}

uint64_t sub_217C0C708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0580 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t SportsTagData.sportTagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SportsTagData.sportTagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SportsTagData.leagueTagIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

NewsAnalytics::SportsTagData __swiftcall SportsTagData.init(sportTagID:leagueTagIDs:)(NewsAnalytics::SportsTagData sportTagID, Swift::OpaquePointer_optional leagueTagIDs)
{
  *v2 = sportTagID.sportTagID;
  v2[1]._countAndFlagsBits = leagueTagIDs.value._rawValue;
  sportTagID.leagueTagIDs = leagueTagIDs;
  return sportTagID;
}

uint64_t sub_217C0C924()
{
  if (*v0)
  {
    result = 0x615465756761656CLL;
  }

  else
  {
    result = 0x67615474726F7073;
  }

  *v0;
  return result;
}

uint64_t sub_217C0C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x67615474726F7073 && a2 == 0xEA00000000004449;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEC00000073444967)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217C0CA54(uint64_t a1)
{
  v2 = sub_217C0CC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0CA90(uint64_t a1)
{
  v2 = sub_217C0CC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsTagData.encode(to:)(void *a1)
{
  sub_217C0CF3C(0, &qword_27CBA20A8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v17[0] = v1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_217C0CC9C();
  sub_217D89E7C();
  v19 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v17[1] = v17[0];
    v18 = 1;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_217C0CC9C()
{
  result = qword_27CBA20B0;
  if (!qword_27CBA20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20B0);
  }

  return result;
}

uint64_t SportsTagData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C0CF3C(0, &qword_27CBA20B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0CC9C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  sub_217A55F8C();
  v19 = 1;
  sub_217A55FDC(&qword_2811BCD38);
  sub_217D89B5C();
  (*(v7 + 8))(v10, v6);
  v16 = v18[1];
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C0CF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0CC9C();
    v7 = a3(a1, &type metadata for SportsTagData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0CFFC()
{
  result = qword_27CBA20C0;
  if (!qword_27CBA20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20C0);
  }

  return result;
}

unint64_t sub_217C0D054()
{
  result = qword_27CBA20C8;
  if (!qword_27CBA20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20C8);
  }

  return result;
}

unint64_t sub_217C0D0AC()
{
  result = qword_27CBA20D0;
  if (!qword_27CBA20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20D0);
  }

  return result;
}

uint64_t sub_217C0D100()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20]();
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = sub_217C0D358;
  v4[1] = 0;
  v5 = *MEMORY[0x277D6D278];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_217D88E9C();
  v7 = v1[1];
  v7(v4, v0);
  *v4 = sub_217C0D36C;
  v4[1] = 0;
  v6(v4, v5, v0);
  sub_217D88E9C();
  v7(v4, v0);
  *v4 = sub_217C0D378;
  v4[1] = 0;
  v6(v4, v5, v0);
  sub_217D88E9C();
  v7(v4, v0);
  *v4 = sub_217C0D384;
  v4[1] = 0;
  v6(v4, v5, v0);
  sub_217D88E9C();
  return (v7)(v4, v0);
}

void sub_217C0D390(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D6D028]) init];
  [v2 *a1];
}

uint64_t NewspaperData.sectionIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::NewspaperData __swiftcall NewspaperData.init(sectionIDs:)(Swift::OpaquePointer_optional sectionIDs)
{
  rawValue = sectionIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.sectionIDs.value._rawValue = v4;
  result.sectionIDs.is_nil = v5;
  return result;
}

uint64_t sub_217C0D47C(uint64_t a1)
{
  v2 = sub_217C0D690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0D4B8(uint64_t a1)
{
  v2 = sub_217C0D690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewspaperData.encode(to:)(void *a1)
{
  sub_217C0D8A8(0, &qword_27CBA20D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0D690();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89C3C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C0D690()
{
  result = qword_27CBA20E0;
  if (!qword_27CBA20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20E0);
  }

  return result;
}

uint64_t NewspaperData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217C0D8A8(0, &qword_27CBA20E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0D690();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C0D8A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0D690();
    v7 = a3(a1, &type metadata for NewspaperData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C0D910()
{
  result = qword_27CBA20F0;
  if (!qword_27CBA20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20F0);
  }

  return result;
}

unint64_t sub_217C0D968()
{
  result = qword_27CBA20F8;
  if (!qword_27CBA20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA20F8);
  }

  return result;
}

unint64_t sub_217C0DA10()
{
  result = qword_27CBA2100;
  if (!qword_27CBA2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2100);
  }

  return result;
}

unint64_t sub_217C0DA68()
{
  result = qword_27CBA2108;
  if (!qword_27CBA2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2108);
  }

  return result;
}

unint64_t sub_217C0DAC0()
{
  result = qword_27CBA2110;
  if (!qword_27CBA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2110);
  }

  return result;
}

uint64_t sub_217C0DBDC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1878);
  __swift_project_value_buffer(v0, qword_2811C1878);
  return sub_217D8866C();
}

uint64_t AppSessionResumeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResumeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResumeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResumeEvent(0) + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionResumeEvent(0);
  v5 = *(v4 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AppSessionResumeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionResumeEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AppSessionResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 AppSessionResumeEvent.Model.init(eventData:userBundleSubscriptionContextData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AppSessionResumeEvent.Model(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a2 + 48);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_217C0E358()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C0E3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C0F0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C0E3F0(uint64_t a1)
{
  v2 = sub_217C0E714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C0E42C(uint64_t a1)
{
  v2 = sub_217C0E714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C0EB68(0, &qword_27CBA2118, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0E714();
  sub_217D89E7C();
  v31 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppSessionResumeEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v28 = v13[1];
    v29 = v14;
    v27 = v15;
    v30 = *(v13 + 48);
    v23 = v16;
    v24 = v28;
    v25 = v13[2];
    v26 = *(v13 + 48);
    v22 = 1;
    sub_217ACC004(&v27, v20);
    sub_217A55B98();
    sub_217D89CAC();
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_217ACC69C(v20);
    v19 = *(v3 + *(v12 + 24));
    v18[13] = 2;
    sub_217A4CF88();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C0E714()
{
  result = qword_27CBA2120;
  if (!qword_27CBA2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2120);
  }

  return result;
}

uint64_t AppSessionResumeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C0EB68(0, &qword_27CBA2128, MEMORY[0x277D844C8]);
  v31 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppSessionResumeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C0E714();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v28;
  v16 = v29;
  v25 = v11;
  v26 = v14;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v30;
  v18 = v31;
  sub_217D89BCC();
  (*(v16 + 32))(v26, v19, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = &v26[*(v25 + 20)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  v20[48] = v35;
  v36 = 2;
  sub_217A4CF30();
  sub_217D89BCC();
  (*(v17 + 8))(v10, v18);
  v22 = v26;
  *&v26[*(v25 + 24)] = v37;
  sub_217C0EBCC(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C0EC30(v22);
}

void sub_217C0EB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C0E714();
    v7 = a3(a1, &type metadata for AppSessionResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C0EBCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C0EC30(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C0ED64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A62CE4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217A62CE4(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_217C0EF24()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C0EFBC()
{
  result = qword_27CBA2140;
  if (!qword_27CBA2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2140);
  }

  return result;
}

unint64_t sub_217C0F014()
{
  result = qword_27CBA2148;
  if (!qword_27CBA2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2148);
  }

  return result;
}

unint64_t sub_217C0F06C()
{
  result = qword_27CBA2150;
  if (!qword_27CBA2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2150);
  }

  return result;
}

uint64_t sub_217C0F0C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217C0F2B8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE140);
  __swift_project_value_buffer(v0, qword_2811BE140);
  return sub_217D8866C();
}

uint64_t JourneyMessageAMSExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t JourneyMessageAMSExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 24);
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 28);
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 32);
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 36);
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.dialogStyleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.dialogStyleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 40);
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 44);
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 48);
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.engagementPlacementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.engagementPlacementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 52);
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JourneyMessageAMSExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JourneyMessageAMSExposureEvent(0) + 56);
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t JourneyMessageAMSExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for JourneyMessageAMSExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AFF2A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217AFF2A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217AFF2A8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217AFF2A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217AFF2A8(0, &qword_2811C86F8, sub_217AFE9F0, sub_217AFEA44);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217AFF2A8(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217AFF2A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217AFF2A8(0, &qword_2811C8508, sub_217AFF050, sub_217AFF0A4);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217AFF2A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_217C10980@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t JourneyMessageAMSExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t JourneyMessageAMSExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t JourneyMessageAMSExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JourneyMessageAMSExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t JourneyMessageAMSExposureEvent.Model.dialogStyleData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
}

uint64_t JourneyMessageAMSExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t JourneyMessageAMSExposureEvent.Model.engagementPlacementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JourneyMessageAMSExposureEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 JourneyMessageAMSExposureEvent.Model.init(eventData:timedData:viewData:articleData:tagData:feedData:dialogStyleData:placementData:userBundleSubscriptionContextData:engagementPlacementOriginationData:purchaseData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a3 + 8);
  v20 = a5[1];
  v42 = *a6;
  v40 = *a5;
  v41 = *(a6 + 2);
  v43 = *a7;
  v44 = a8[1];
  v45 = *a8;
  v46 = *a11;
  v49 = *a12;
  v48 = a12[1];
  v47 = *(a12 + 16);
  v21 = sub_217D8899C();
  v38 = *(a8 + 2);
  v39 = *(a8 + 1);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v17;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v26 = a9 + v22[7];
  v27 = *(a4 + 48);
  *(v26 + 32) = *(a4 + 32);
  *(v26 + 48) = v27;
  v28 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a4 + 127);
  v29 = *(a4 + 112);
  *(v26 + 96) = *(a4 + 96);
  *(v26 + 112) = v29;
  v30 = *(a4 + 80);
  *(v26 + 64) = *(a4 + 64);
  *(v26 + 80) = v30;
  v31 = (a9 + v22[8]);
  *v31 = v40;
  v31[1] = v20;
  v32 = a9 + v22[9];
  *v32 = v42;
  *(v32 + 16) = v41;
  *(a9 + v22[10]) = v43;
  v33 = a9 + v22[11];
  *v33 = v45;
  *(v33 + 8) = v44;
  *(v33 + 16) = v39;
  *(v33 + 32) = v38;
  v34 = a9 + v22[12];
  v35 = *(a10 + 16);
  *v34 = *a10;
  *(v34 + 16) = v35;
  result = *(a10 + 32);
  *(v34 + 32) = result;
  *(v34 + 48) = *(a10 + 48);
  *(a9 + v22[13]) = v46;
  v37 = a9 + v22[14];
  *v37 = v49;
  *(v37 + 8) = v48;
  *(v37 + 16) = v47;
  return result;
}

uint64_t sub_217C10F54(uint64_t a1)
{
  v2 = sub_217C116C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C10F90(uint64_t a1)
{
  v2 = sub_217C116C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyMessageAMSExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C12294(0, &qword_27CBA2158, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v43 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C116C4();
  sub_217D89E7C();
  LOBYTE(v77[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v77[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    v85 = v15;
    v86 = v16;
    v87 = v14;
    v84 = 2;
    sub_217A5E790();

    sub_217D89CAC();

    v88 = v12;
    v17 = v3 + v12[7];
    v18 = *(v17 + 96);
    v19 = *(v17 + 64);
    v81 = *(v17 + 80);
    v82 = v18;
    v20 = *(v17 + 96);
    *v83 = *(v17 + 112);
    v21 = *(v17 + 16);
    v22 = *(v17 + 48);
    v78 = *(v17 + 32);
    v79 = v22;
    v23 = *(v17 + 48);
    v80 = *(v17 + 64);
    v24 = *(v17 + 16);
    v77[0] = *v17;
    v77[1] = v24;
    v74 = v81;
    v75 = v20;
    v76[0] = *(v17 + 112);
    v71 = v78;
    v72 = v23;
    v73 = v19;
    *&v83[15] = *(v17 + 127);
    *(v76 + 15) = *(v17 + 127);
    v69 = v77[0];
    v70 = v21;
    v68 = 3;
    sub_217AFFBC0(v77, v66);
    sub_217ACF52C();
    sub_217D89C3C();
    v66[6] = v75;
    *v67 = v76[0];
    *&v67[15] = *(v76 + 15);
    v66[2] = v71;
    v66[3] = v72;
    v66[4] = v73;
    v66[5] = v74;
    v66[0] = v69;
    v66[1] = v70;
    sub_217B009E0(v66);
    v26 = v88;
    v27 = (v3 + v88[8]);
    v28 = v27[1];
    *&v56 = *v27;
    *(&v56 + 1) = v28;
    LOBYTE(v52) = 4;
    sub_217AF6B14();

    sub_217D89C3C();

    v29 = (v3 + v26[9]);
    v30 = v29[1];
    v31 = v29[2];
    *&v56 = *v29;
    *(&v56 + 1) = v30;
    *&v57 = v31;
    LOBYTE(v52) = 5;
    sub_217AD1A68(v56, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v56, *(&v56 + 1), v57);
    LOBYTE(v56) = *(v3 + v26[10]);
    LOBYTE(v52) = 6;
    sub_217AFEA44();
    sub_217D89CAC();
    v32 = (v3 + v26[11]);
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[5];
    v61 = *v32;
    v62 = v33;
    v64 = *(v32 + 3);
    v63 = v34;
    v65 = v35;
    v60 = 7;
    v43[1] = v64;
    v44 = v35;
    sub_217AFEC9C();

    sub_217D89CAC();
    v44 = v65;

    v36 = (v3 + v26[12]);
    v37 = v36[1];
    v56 = *v36;
    v57 = v37;
    v39 = *v36;
    v38 = v36[1];
    v58 = v36[2];
    v59 = *(v36 + 48);
    v52 = v39;
    v53 = v38;
    v54 = v36[2];
    v55 = *(v36 + 48);
    v51 = 8;
    sub_217ACC004(&v56, v49);
    sub_217A55B98();
    sub_217D89CAC();
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v50 = v55;
    sub_217ACC69C(v49);
    LOBYTE(v45) = *(v3 + v26[13]);
    v48 = 9;
    sub_217AFF0A4();
    sub_217D89C3C();
    v40 = (v3 + v26[14]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v40) = *(v40 + 16);
    v45 = v41;
    v46 = v42;
    v47 = v40;
    v48 = 10;
    sub_217AFF378();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C116C4()
{
  result = qword_27CBA2160;
  if (!qword_27CBA2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2160);
  }

  return result;
}

uint64_t JourneyMessageAMSExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217D889CC();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C12294(0, &qword_27CBA2168, MEMORY[0x277D844C8]);
  v53 = v10;
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - v12;
  v14 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217C116C4();
  v54 = v13;
  v20 = v55;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v21 = v51;
  v46 = v3;
  v47 = v14;
  v55 = v17;
  LOBYTE(v65) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v22 = v52;
  sub_217D89BCC();
  v23 = v55;
  (*(v50 + 32))(v55, v22, v7);
  LOBYTE(v65) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v24 = v46;
  sub_217D89BCC();
  v45[1] = v7;
  v52 = 0;
  v25 = v47;
  (*(v49 + 32))(&v23[v47[5]], v6, v24);
  LOBYTE(v60) = 2;
  sub_217A5E738();
  sub_217D89BCC();
  v26 = *(&v65 + 1);
  v27 = v66;
  v28 = &v23[v25[6]];
  *v28 = v65;
  *(v28 + 1) = v26;
  *(v28 + 8) = v27;
  v64 = 3;
  sub_217ACF4D8();
  sub_217D89B5C();
  v29 = &v23[v25[7]];
  v30 = *v72;
  *(v29 + 6) = v71;
  *(v29 + 7) = v30;
  *(v29 + 127) = *&v72[15];
  v31 = v68;
  *(v29 + 2) = v67;
  *(v29 + 3) = v31;
  v32 = v70;
  *(v29 + 4) = v69;
  *(v29 + 5) = v32;
  v33 = v66;
  *v29 = v65;
  *(v29 + 1) = v33;
  LOBYTE(v56) = 4;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v23[v25[8]] = v60;
  LOBYTE(v56) = 5;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = v61;
  v35 = &v23[v25[9]];
  *v35 = v60;
  *(v35 + 2) = v34;
  LOBYTE(v56) = 6;
  sub_217AFE9F0();
  sub_217D89BCC();
  v23[v25[10]] = v60;
  LOBYTE(v56) = 7;
  sub_217AFEC48();
  sub_217D89BCC();
  v36 = *(&v60 + 1);
  v37 = &v55[v47[11]];
  *v37 = v60;
  *(v37 + 1) = v36;
  v38 = v62;
  *(v37 + 1) = v61;
  *(v37 + 2) = v38;
  v59 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v55[v47[12]];
  v40 = v61;
  *v39 = v60;
  *(v39 + 1) = v40;
  *(v39 + 2) = v62;
  v39[48] = v63;
  v58 = 9;
  sub_217AFF050();
  sub_217D89B5C();
  v55[v47[13]] = v56;
  v58 = 10;
  sub_217AFF324();
  sub_217D89B5C();
  (*(v21 + 8))(v54, v53);
  v41 = v57;
  v42 = v55;
  v43 = &v55[v47[14]];
  *v43 = v56;
  v43[16] = v41;
  sub_217C122F8(v42, v48);
  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_217C1235C(v42);
}

void sub_217C12294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C116C4();
    v7 = a3(a1, &type metadata for JourneyMessageAMSExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C122F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C1235C(uint64_t a1)
{
  v2 = type metadata accessor for JourneyMessageAMSExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C124F4()
{
  result = qword_27CBA2180;
  if (!qword_27CBA2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2180);
  }

  return result;
}

unint64_t sub_217C1254C()
{
  result = qword_27CBA2188;
  if (!qword_27CBA2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2188);
  }

  return result;
}

unint64_t sub_217C125A4()
{
  result = qword_27CBA2190;
  if (!qword_27CBA2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2190);
  }

  return result;
}

void __swiftcall ReferralData.with(referringUrl:)(NewsAnalytics::ReferralData *__return_ptr retstr, Swift::String referringUrl)
{
  v3 = v2[1];
  v5 = v2[4];
  v4 = v2[5];
  retstr->referringApplication._countAndFlagsBits = *v2;
  retstr->referringApplication._object = v3;
  retstr->referringUrl = referringUrl;
  retstr->userActivityType.value._countAndFlagsBits = v5;
  retstr->userActivityType.value._object = v4;
}

NewsAnalytics::Milestone_optional __swiftcall Milestone.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Milestone.rawValue.getter()
{
  v1 = *v0;
  v2 = 1869768058;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7234932;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

unint64_t sub_217C12778()
{
  result = qword_27CBA2198;
  if (!qword_27CBA2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2198);
  }

  return result;
}

uint64_t sub_217C127D4()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217C128D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7234932;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217C12A48()
{
  result = qword_27CBA21A0;
  if (!qword_27CBA21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21A0);
  }

  return result;
}

uint64_t WidgetExposureData.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetExposureData.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetExposureData.init(identifier:articleCount:articleExposureCount:appearanceType:contentFetchDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = a6;
  return result;
}

unint64_t sub_217C12C1C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000014;
  v4 = 0x6E61726165707061;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x43656C6369747261;
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

uint64_t sub_217C12CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C134E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C12D04(uint64_t a1)
{
  v2 = sub_217C12F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C12D40(uint64_t a1)
{
  v2 = sub_217C12F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureData.encode(to:)(void *a1)
{
  sub_217C132D0(0, &qword_27CBA21A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  v17 = *(v1 + 32);
  v16[1] = v1[5];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C12F94();
  sub_217D89E7C();
  v26 = 0;
  v13 = v20;
  sub_217D89C6C();
  if (!v13)
  {
    v14 = v17;
    v25 = 1;
    sub_217D89CCC();
    v24 = 2;
    sub_217D89CCC();
    v23 = v14;
    v22 = 3;
    sub_217C12FE8();
    sub_217D89CAC();
    v21 = 4;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C12F94()
{
  result = qword_27CBA21B0;
  if (!qword_27CBA21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21B0);
  }

  return result;
}

unint64_t sub_217C12FE8()
{
  result = qword_27CBA21B8;
  if (!qword_27CBA21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21B8);
  }

  return result;
}

uint64_t WidgetExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C132D0(0, &qword_27CBA21C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C12F94();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v27 = 1;
  v22 = sub_217D89BEC();
  v26 = 2;
  v21 = sub_217D89BEC();
  v24 = 3;
  sub_217C13334();
  sub_217D89BCC();
  v20 = v25;
  v23 = 4;
  v17 = sub_217D89BEC();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  *(a2 + 8) = v14;
  v18 = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C132D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C12F94();
    v7 = a3(a1, &type metadata for WidgetExposureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C13334()
{
  result = qword_27CBA21C8;
  if (!qword_27CBA21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21C8);
  }

  return result;
}

unint64_t sub_217C133E4()
{
  result = qword_27CBA21D0;
  if (!qword_27CBA21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21D0);
  }

  return result;
}

unint64_t sub_217C1343C()
{
  result = qword_27CBA21D8;
  if (!qword_27CBA21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21D8);
  }

  return result;
}

unint64_t sub_217C13494()
{
  result = qword_27CBA21E0;
  if (!qword_27CBA21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA21E0);
  }

  return result;
}

uint64_t sub_217C134E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43656C6369747261 && a2 == 0xEC000000746E756FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD0630 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEE00657079546563 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEF10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217C13784()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2218);
  __swift_project_value_buffer(v0, qword_27CBA2218);
  return sub_217D8866C();
}

uint64_t PDFPageViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PDFPageViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 20);
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 20);
  sub_217C14EB8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 24);
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 24);
  sub_217C14EB8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 28);
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 28);
  sub_217C14EB8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 32);
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 32);
  sub_217C14EB8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 36);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 40);
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 40);
  sub_217C14EB8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 44);
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 44);
  sub_217C14EB8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.pdfPageContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 48);
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.pdfPageContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 48);
  sub_217C14EB8(0, &qword_2811C8720, sub_217BB0C7C, sub_217BB0CD4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 52);
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 52);
  sub_217C14EB8(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 56);
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 56);
  sub_217C14EB8(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 60);
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 60);
  sub_217C14EB8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 64);
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PDFPageViewEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 64);
  sub_217C14EB8(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PDFPageViewEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PDFPageViewEvent(0) + 68);
  sub_217C14EB8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}