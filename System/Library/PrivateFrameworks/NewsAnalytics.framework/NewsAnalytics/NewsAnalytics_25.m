void sub_217D09AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D09550();
    v7 = a3(a1, &type metadata for IgnoreSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D09B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D09B78(uint64_t a1)
{
  v2 = type metadata accessor for IgnoreSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D09D10()
{
  result = qword_27CBA4928;
  if (!qword_27CBA4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4928);
  }

  return result;
}

unint64_t sub_217D09D68()
{
  result = qword_27CBA4930;
  if (!qword_27CBA4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4930);
  }

  return result;
}

unint64_t sub_217D09DC0()
{
  result = qword_27CBA4938;
  if (!qword_27CBA4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4938);
  }

  return result;
}

uint64_t sub_217D09E60(uint64_t a1)
{
  v2 = sub_217D0A034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D09E9C(uint64_t a1)
{
  v2 = sub_217D0A034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsUserSelectionData.encode(to:)(void *a1)
{
  sub_217D0A274(0, &qword_27CBA4940, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0A034();
  sub_217D89E7C();
  v13 = v9;
  sub_217D0A088();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D0A034()
{
  result = qword_27CBA4948;
  if (!qword_27CBA4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4948);
  }

  return result;
}

unint64_t sub_217D0A088()
{
  result = qword_27CBA4950;
  if (!qword_27CBA4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4950);
  }

  return result;
}

uint64_t PersonalizedAdsUserSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D0A274(0, &qword_27CBA4958, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0A034();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D0A2D8();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0A274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0A034();
    v7 = a3(a1, &type metadata for PersonalizedAdsUserSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D0A2D8()
{
  result = qword_27CBA4960;
  if (!qword_27CBA4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4960);
  }

  return result;
}

unint64_t sub_217D0A388()
{
  result = qword_27CBA4968;
  if (!qword_27CBA4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4968);
  }

  return result;
}

unint64_t sub_217D0A3E0()
{
  result = qword_27CBA4970;
  if (!qword_27CBA4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4970);
  }

  return result;
}

unint64_t sub_217D0A438()
{
  result = qword_27CBA4978;
  if (!qword_27CBA4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4978);
  }

  return result;
}

NewsAnalytics::GroupLocation_optional __swiftcall GroupLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GroupLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1684366694;
  v4 = 0x747241664F646E65;
  if (v1 != 3)
  {
    v4 = 0x636552664F646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C6369747261;
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

unint64_t sub_217D0A59C()
{
  result = qword_27CBA4980;
  if (!qword_27CBA4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4980);
  }

  return result;
}

uint64_t sub_217D0A5F0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0A6DC()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D0A7B4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0A8A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1684366694;
  v7 = 0xEC000000656C6369;
  v8 = 0x747241664F646E65;
  if (v2 != 3)
  {
    v8 = 0x636552664F646E65;
    v7 = 0xEB00000000657069;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C6369747261;
    v3 = 0xE700000000000000;
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

unint64_t sub_217D0AA10()
{
  result = qword_2811C72A0;
  if (!qword_2811C72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72A0);
  }

  return result;
}

uint64_t DismissalData.dismissingIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DismissalData.dismissingIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::DismissalData __swiftcall DismissalData.init(dismissingIdentifier:isDismissed:)(NewsAnalytics::DismissalData dismissingIdentifier, Swift::Bool isDismissed)
{
  *v2 = dismissingIdentifier.dismissingIdentifier;
  *(v2 + 16) = isDismissed;
  dismissingIdentifier.isDismissed = isDismissed;
  return dismissingIdentifier;
}

unint64_t sub_217D0AB30()
{
  if (*v0)
  {
    result = 0x73696D7369447369;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_217D0AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DD2900 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73696D7369447369 && a2 == 0xEB00000000646573)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217D0AC64(uint64_t a1)
{
  v2 = sub_217D0AE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0ACA0(uint64_t a1)
{
  v2 = sub_217D0AE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissalData.encode(to:)(void *a1)
{
  sub_217D0B0A0(0, &qword_2811BC7D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0AE5C();
  sub_217D89E7C();
  v17 = 0;
  v12 = v14[1];
  sub_217D89C6C();
  if (!v12)
  {
    v16 = 1;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D0AE5C()
{
  result = qword_2811C7650;
  if (!qword_2811C7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7650);
  }

  return result;
}

uint64_t DismissalData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D0B0A0(0, &qword_2811BCAF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0AE5C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_217D89B9C();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0B0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0AE5C();
    v7 = a3(a1, &type metadata for DismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D0B160()
{
  result = qword_27CBA4988;
  if (!qword_27CBA4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4988);
  }

  return result;
}

unint64_t sub_217D0B1B8()
{
  result = qword_2811C7640;
  if (!qword_2811C7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7640);
  }

  return result;
}

unint64_t sub_217D0B210()
{
  result = qword_2811C7648;
  if (!qword_2811C7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7648);
  }

  return result;
}

NewsAnalytics::ListenSheetActionData_optional __swiftcall ListenSheetActionData.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ListenSheetActionData.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x654E6E657473696CLL;
  v4 = 0x614C6E657473696CLL;
  if (v1 != 3)
  {
    v4 = 0x6C65636E6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4E6E657473696CLL;
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

unint64_t sub_217D0B3A4()
{
  result = qword_27CBA4990;
  if (!qword_27CBA4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4990);
  }

  return result;
}

uint64_t sub_217D0B3F8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0B4E8()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D0B5C4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0B6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA00000000007478;
  v6 = 0x654E6E657473696CLL;
  v7 = 0xEB00000000726574;
  v8 = 0x614C6E657473696CLL;
  if (v2 != 3)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4E6E657473696CLL;
    v3 = 0xE900000000000077;
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

unint64_t sub_217D0B828()
{
  result = qword_27CBA4998;
  if (!qword_27CBA4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4998);
  }

  return result;
}

uint64_t sub_217D0B944()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA49D0);
  __swift_project_value_buffer(v0, qword_27CBA49D0);
  return sub_217D8866C();
}

uint64_t SearchResultSelectEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultSelectEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D0C208(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t SearchResultSelectEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultSelectEvent(0);
  v5 = v4[5];
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t SearchResultSelectEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchResultSelectEvent.Model.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SearchResultSelectEvent.Model.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 28);
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

uint64_t SearchResultSelectEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 32));
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

uint64_t SearchResultSelectEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchResultSelectEvent.Model.init(eventData:searchData:searchSelectionData:searchResultsData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = a2[3];
  v15 = *a3;
  v16 = a3[1];
  v33 = a6[1];
  v34 = *a6;
  v31 = *(a3 + 16);
  v32 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for SearchResultSelectEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  v20 = a7 + v18[6];
  *v20 = v15;
  *(v20 + 8) = v16;
  *(v20 + 16) = v31;
  v21 = a7 + v18[7];
  v22 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v22;
  v23 = *(a4 + 80);
  *(v21 + 64) = *(a4 + 64);
  *(v21 + 80) = v23;
  v24 = *(a4 + 48);
  *(v21 + 32) = *(a4 + 32);
  *(v21 + 48) = v24;
  *(v21 + 160) = *(a4 + 160);
  v25 = *(a4 + 144);
  *(v21 + 128) = *(a4 + 128);
  *(v21 + 144) = v25;
  v26 = *(a4 + 112);
  *(v21 + 96) = *(a4 + 96);
  *(v21 + 112) = v26;
  v27 = a7 + v18[8];
  v28 = *(a5 + 16);
  *v27 = *a5;
  *(v27 + 16) = v28;
  result = *(a5 + 32);
  *(v27 + 32) = result;
  *(v27 + 48) = *(a5 + 48);
  v30 = a7 + v18[9];
  *v30 = v34;
  *(v30 + 8) = v33;
  *(v30 + 16) = v32;
  return result;
}

unint64_t sub_217D0CA08()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 4)
  {
    v3 = 0x6174614477656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x6144686372616573;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_217D0CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D0E008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D0CAF8(uint64_t a1)
{
  v2 = sub_217D0D068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0CB34(uint64_t a1)
{
  v2 = sub_217D0D068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultSelectEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D0D730(0, &qword_27CBA49F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v45[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0D068();
  sub_217D89E7C();
  LOBYTE(v72) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SearchResultSelectEvent.Model(0);
    v13 = v3;
    v14 = v12;
    v15 = *(v12 + 20);
    v87 = v13;
    v16 = v13 + v15;
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    *&v72 = *v16;
    *(&v72 + 1) = v17;
    LOBYTE(v73) = v18;
    *(&v73 + 1) = v19;
    LOBYTE(v61) = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v20 = v14;
    v21 = v14[6];
    v22 = v87;
    v23 = (v87 + v21);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = *(v23 + 16);
    v84 = v24;
    v85 = v25;
    v86 = v23;
    v83 = 2;
    sub_217BA2EE8();

    sub_217D89CAC();

    v27 = (v22 + v20[7]);
    v28 = v27[7];
    v29 = v27[9];
    v80 = v27[8];
    v81 = v29;
    v30 = v27[3];
    v31 = v27[5];
    v76 = v27[4];
    v77 = v31;
    v32 = v27[5];
    v33 = v27[7];
    v78 = v27[6];
    v79 = v33;
    v34 = v27[1];
    v72 = *v27;
    v73 = v34;
    v35 = v27[3];
    v37 = *v27;
    v36 = v27[1];
    v74 = v27[2];
    v75 = v35;
    v38 = v27[9];
    v69 = v80;
    v70 = v38;
    v65 = v76;
    v66 = v32;
    v67 = v78;
    v68 = v28;
    v61 = v37;
    v62 = v36;
    v82 = *(v27 + 20);
    v71 = *(v27 + 20);
    v63 = v74;
    v64 = v30;
    v60 = 3;
    sub_217B09D18(&v72, v58);
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
    v39 = v22 + v20[8];
    v40 = *(v39 + 16);
    v41 = *(v39 + 32);
    v56[0] = *v39;
    v56[1] = v40;
    v56[2] = v41;
    v57 = *(v39 + 48);
    v52 = v56[0];
    v53 = v40;
    v54 = *(v39 + 32);
    v55 = *(v39 + 48);
    v51 = 4;
    sub_217ACC004(v56, v49);
    sub_217A55B98();
    sub_217D89CAC();
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v50 = v55;
    sub_217ACC69C(v49);
    v42 = (v22 + v20[9]);
    v43 = *v42;
    v44 = v42[1];
    LOWORD(v42) = *(v42 + 8);
    v46 = v43;
    v47 = v44;
    v48 = v42;
    v45[7] = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D0D068()
{
  result = qword_27CBA49F8;
  if (!qword_27CBA49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA49F8);
  }

  return result;
}

uint64_t SearchResultSelectEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_217D8899C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D0D730(0, &qword_27CBA4A00, MEMORY[0x277D844C8]);
  v48 = v7;
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for SearchResultSelectEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217D0D068();
  v47 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v17 = v44;
  v18 = v45;
  v42 = v14;
  LOBYTE(v59) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v46;
  sub_217D89BCC();
  v20 = *(v18 + 32);
  v21 = v42;
  v20(v42, v19, v4);
  LOBYTE(v54) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v22 = *(&v59 + 1);
  v23 = v60;
  v24 = *(&v60 + 1);
  v25 = v21 + v11[5];
  *v25 = v59;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  LOBYTE(v54) = 2;
  sub_217BA2E90();
  v46 = 0;
  sub_217D89BCC();
  v26 = *(&v59 + 1);
  v27 = v60;
  v28 = v21 + v11[6];
  *v28 = v59;
  *(v28 + 8) = v26;
  *(v28 + 16) = v27;
  v58 = 3;
  sub_217B09D84();
  sub_217D89BCC();
  v29 = v21 + v11[7];
  v30 = v66;
  v31 = v68;
  *(v29 + 128) = v67;
  *(v29 + 144) = v31;
  v32 = v62;
  v33 = v64;
  v34 = v65;
  *(v29 + 64) = v63;
  *(v29 + 80) = v33;
  *(v29 + 160) = v69;
  *(v29 + 96) = v34;
  *(v29 + 112) = v30;
  v35 = v60;
  *v29 = v59;
  *(v29 + 16) = v35;
  *(v29 + 32) = v61;
  *(v29 + 48) = v32;
  v53 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v36 = v21 + v11[8];
  v37 = v55;
  *v36 = v54;
  *(v36 + 16) = v37;
  *(v36 + 32) = v56;
  *(v36 + 48) = v57;
  v49 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v17 + 8))(v47, v48);
  v38 = v51;
  v39 = v52;
  v40 = v21 + v11[9];
  *v40 = v50;
  *(v40 + 8) = v38;
  *(v40 + 16) = v39;
  sub_217D0D794(v21, v43);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_217D0D7F8(v21);
}

void sub_217D0D730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0D068();
    v7 = a3(a1, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0D794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D0D7F8(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D0D92C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_217D0DC2C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D0C208(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
    if (v1 <= 0x3F)
    {
      sub_217D0C208(319, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8);
      if (v2 <= 0x3F)
      {
        sub_217D0C208(319, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC);
        if (v3 <= 0x3F)
        {
          sub_217D0C208(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
          if (v4 <= 0x3F)
          {
            sub_217D0C208(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
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

uint64_t sub_217D0DE50()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D0DF04()
{
  result = qword_27CBA4A28;
  if (!qword_27CBA4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A28);
  }

  return result;
}

unint64_t sub_217D0DF5C()
{
  result = qword_27CBA4A30;
  if (!qword_27CBA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A30);
  }

  return result;
}

unint64_t sub_217D0DFB4()
{
  result = qword_27CBA4A38;
  if (!qword_27CBA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A38);
  }

  return result;
}

uint64_t sub_217D0E008(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2920 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD04C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Priority.rawValue.getter()
{
  v1 = 7827308;
  v2 = 1751607656;
  if (*v0 != 2)
  {
    v2 = 0x6867694879726576;
  }

  if (*v0)
  {
    v1 = 0x6C616D726F6ELL;
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

unint64_t sub_217D0E2F4()
{
  result = qword_27CBA4A40;
  if (!qword_27CBA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A40);
  }

  return result;
}

uint64_t sub_217D0E348()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D0E3F8()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D0E494()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D0E54C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827308;
  v4 = 0xE400000000000000;
  v5 = 1751607656;
  if (*v1 != 2)
  {
    v5 = 0x6867694879726576;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C616D726F6ELL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217D0E678()
{
  result = qword_2811BD2C8;
  if (!qword_2811BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2C8);
  }

  return result;
}

uint64_t sub_217D0E6CC()
{
  result = sub_217D879FC();
  if (result)
  {
    v2 = result;
    v27 = 0xD000000000000012;
    v28 = 0x8000000217DD2960;
    sub_217D899BC();
    if (*(v2 + 16) && (v3 = sub_217D7AB6C(v26), (v4 & 1) != 0))
    {
      sub_217AE02B0(*(v2 + 56) + 32 * v3, &v27);
      sub_217B74D38(v26);
      v5 = swift_dynamicCast();
      if (v5)
      {
        v6 = v24;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = v25;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      sub_217B74D38(v26);
      v6 = 0;
      v7 = 0;
    }

    v27 = 0x6E676961706D6163;
    v28 = 0xEA00000000004449;
    sub_217D899BC();
    if (*(v2 + 16) && (v8 = sub_217D7AB6C(v26), (v9 & 1) != 0))
    {
      sub_217AE02B0(*(v2 + 56) + 32 * v8, &v27);
      sub_217B74D38(v26);
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v24;
      }

      else
      {
        v11 = 0;
      }

      if (v10)
      {
        v12 = v25;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      sub_217B74D38(v26);
      v11 = 0;
      v12 = 0;
    }

    v13 = swift_allocObject();
    sub_217D899BC();
    if (*(v2 + 16) && (v14 = sub_217D7AB6C(v26), (v15 & 1) != 0))
    {
      sub_217AE02B0(*(v2 + 56) + 32 * v14, &v27);
      sub_217B74D38(v26);
      if (swift_dynamicCast())
      {
        v16 = *(v13 + 16);
        if (v16 == 2 || (v16 & 1) != 0)
        {
LABEL_28:
          v17 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v7;
          v18[4] = v11;
          v18[5] = v12;
          v18[6] = v13;

          sub_217D8833C();

          sub_217D899BC();
          if (*(v2 + 16) && (v19 = sub_217D7AB6C(v26), (v20 & 1) != 0))
          {
            sub_217AE02B0(*(v2 + 56) + 32 * v19, &v27);
            sub_217B74D38(v26);

            if (swift_dynamicCast())
            {
              v21 = 0x656449726566666FLL;
              v22 = 0xEF7265696669746ELL;
LABEL_34:
              v23 = swift_allocObject();
              *(v23 + 16) = v21;
              *(v23 + 24) = v22;
              sub_217D8833C();
            }
          }

          else
          {

            sub_217B74D38(v26);
          }

          v21 = 0;
          v22 = 0xE000000000000000;
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_217B74D38(v26);
    }

    *(v13 + 16) = 2;
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_217D0EABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a1;
  sub_217D0F0A0(0, &unk_2811C89E8, sub_217D0F100);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v24 - v15;
  swift_beginAccess();
  v17 = *(a6 + 16);
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = a5;
  v25 = v17;
  sub_217D0F100();

  sub_217D880EC();
  sub_217A4CA88();
  v18 = sub_217D882DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_217D8D8F0;
  (*(v19 + 104))(v22 + v21, *MEMORY[0x277CEAD10], v18);
  sub_217D8854C();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_217D0ED20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217D0F0A0(0, &unk_2811C89D0, sub_217D0F04C);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v17[0] = a2;
  v17[1] = a3;
  sub_217D0F04C();

  sub_217D880EC();
  sub_217A4CA88();
  v11 = sub_217D882DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_217D8D8F0;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x277CEAD10], v11);
  sub_217D8854C();

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D0F04C()
{
  result = qword_2811C04F8;
  if (!qword_2811C04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04F8);
  }

  return result;
}

void sub_217D0F0A0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_217D880FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217D0F100()
{
  result = qword_2811C2460;
  if (!qword_2811C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2460);
  }

  return result;
}

NewsAnalytics::AlternateHeadlineTreatmentStateData_optional __swiftcall AlternateHeadlineTreatmentStateData.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlternateHeadlineTreatmentStateData.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x654472656E6E6977;
  if (v1 != 5)
  {
    v3 = 0x6C4172656E6E6977;
  }

  v4 = 1953719668;
  if (v1 != 3)
  {
    v4 = 0x724172656E6E6977;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746C7561666564;
  if (v1 != 1)
  {
    v5 = 0x6C6F72746E6F63;
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

unint64_t sub_217D0F2B8()
{
  result = qword_27CBA4A48;
  if (!qword_27CBA4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A48);
  }

  return result;
}

uint64_t sub_217D0F318()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217D0F458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xED0000746C756166;
  v6 = 0x654472656E6E6977;
  if (v2 != 5)
  {
    v6 = 0x6C4172656E6E6977;
    v5 = 0xEF6574616E726574;
  }

  v7 = 0xE400000000000000;
  v8 = 1953719668;
  if (v2 != 3)
  {
    v8 = 0x724172656E6E6977;
    v7 = 0xED0000656C636974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x746C7561666564;
  if (v2 != 1)
  {
    v9 = 0x6C6F72746E6F63;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217D0F614()
{
  result = qword_2811BDA28;
  if (!qword_2811BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA28);
  }

  return result;
}

uint64_t sub_217D0F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F43646964 && a2 == 0xEA0000000000746ELL)
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

uint64_t sub_217D0F754(uint64_t a1)
{
  v2 = sub_217D0F914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0F790(uint64_t a1)
{
  v2 = sub_217D0F914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenActionData.encode(to:)(void *a1)
{
  sub_217D0FAEC(0, &qword_27CBA4A50, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D0F914()
{
  result = qword_27CBA4A58;
  if (!qword_27CBA4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A58);
  }

  return result;
}

uint64_t ConsentScreenActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D0FAEC(0, &qword_27CBA4A60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B9C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D0FAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D0F914();
    v7 = a3(a1, &type metadata for ConsentScreenActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D0FB70(void *a1)
{
  sub_217D0FAEC(0, &qword_27CBA4A50, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D0F914();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D0FCDC()
{
  result = qword_27CBA4A68;
  if (!qword_27CBA4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A68);
  }

  return result;
}

unint64_t sub_217D0FD34()
{
  result = qword_27CBA4A70;
  if (!qword_27CBA4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A70);
  }

  return result;
}

unint64_t sub_217D0FD8C()
{
  result = qword_27CBA4A78;
  if (!qword_27CBA4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A78);
  }

  return result;
}

uint64_t sub_217D0FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000217DD2A50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217D0FEDC(uint64_t a1)
{
  v2 = sub_217D100B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D0FF18(uint64_t a1)
{
  v2 = sub_217D100B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityOriginationData.encode(to:)(void *a1)
{
  sub_217D102F0(0, &qword_27CBA4A80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D100B0();
  sub_217D89E7C();
  v13 = v9;
  sub_217D10104();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D100B0()
{
  result = qword_27CBA4A88;
  if (!qword_27CBA4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A88);
  }

  return result;
}

unint64_t sub_217D10104()
{
  result = qword_27CBA4A90;
  if (!qword_27CBA4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4A90);
  }

  return result;
}

uint64_t LiveActivityOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D102F0(0, &qword_27CBA4A98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D100B0();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D10354();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D102F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D100B0();
    v7 = a3(a1, &type metadata for LiveActivityOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D10354()
{
  result = qword_27CBA4AA0;
  if (!qword_27CBA4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AA0);
  }

  return result;
}

unint64_t sub_217D10404()
{
  result = qword_27CBA4AA8;
  if (!qword_27CBA4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AA8);
  }

  return result;
}

unint64_t sub_217D1045C()
{
  result = qword_27CBA4AB0;
  if (!qword_27CBA4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AB0);
  }

  return result;
}

unint64_t sub_217D104B4()
{
  result = qword_27CBA4AB8;
  if (!qword_27CBA4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AB8);
  }

  return result;
}

uint64_t sub_217D10594()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_217D105C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_217D1069C(uint64_t a1)
{
  v2 = sub_217D108C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D106D8(uint64_t a1)
{
  v2 = sub_217D108C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryData.encode(to:)(void *a1)
{
  sub_217D10BA0(0, &qword_2811BC6C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D108C0();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217D10914();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217D10968();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217D108C0()
{
  result = qword_2811C4070[0];
  if (!qword_2811C4070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4070);
  }

  return result;
}

unint64_t sub_217D10914()
{
  result = qword_2811C2448;
  if (!qword_2811C2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2448);
  }

  return result;
}

unint64_t sub_217D10968()
{
  result = qword_2811C2D90;
  if (!qword_2811C2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2D90);
  }

  return result;
}

uint64_t AdJournalEntryData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D10BA0(0, &qword_27CBA4AC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D108C0();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217D10C04();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217D10C58();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D10BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D108C0();
    v7 = a3(a1, &type metadata for AdJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D10C04()
{
  result = qword_27CBA4AC8;
  if (!qword_27CBA4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AC8);
  }

  return result;
}

unint64_t sub_217D10C58()
{
  result = qword_27CBA4AD0;
  if (!qword_27CBA4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdJournalEntryData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_217D10DAC()
{
  result = qword_27CBA4AD8;
  if (!qword_27CBA4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AD8);
  }

  return result;
}

unint64_t sub_217D10E04()
{
  result = qword_2811C4060;
  if (!qword_2811C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4060);
  }

  return result;
}

unint64_t sub_217D10E5C()
{
  result = qword_2811C4068;
  if (!qword_2811C4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4068);
  }

  return result;
}

uint64_t sub_217D10F04(uint64_t a1)
{
  v2 = sub_217D110C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D10F40(uint64_t a1)
{
  v2 = sub_217D110C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedPositionData.encode(to:)(void *a1)
{
  sub_217D11298(0, &qword_2811BC720, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D110C4()
{
  result = qword_2811C5260;
  if (!qword_2811C5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5260);
  }

  return result;
}

uint64_t FeedPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217D11298(0, &qword_2811BCA78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D11298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D110C4();
    v7 = a3(a1, &type metadata for FeedPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1131C(void *a1)
{
  sub_217D11298(0, &qword_2811BC720, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D110C4();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D11488()
{
  result = qword_27CBA4AE0;
  if (!qword_27CBA4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AE0);
  }

  return result;
}

unint64_t sub_217D114E0()
{
  result = qword_2811C5250;
  if (!qword_2811C5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5250);
  }

  return result;
}

unint64_t sub_217D11538()
{
  result = qword_2811C5258;
  if (!qword_2811C5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5258);
  }

  return result;
}

uint64_t SportScoreConcernData.competitorTagIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SportScoreConcernData.umcCanonicalID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SportScoreConcernData.umcCanonicalID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SportScoreConcernData.embedURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SportScoreConcernData.embedURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SportScoreConcernData.dataURLs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t SportScoreConcernData.leagueUmcId.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SportScoreConcernData.leagueUmcId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t SportScoreConcernData.leagueName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t SportScoreConcernData.leagueName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

unint64_t sub_217D118C0()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x6D5565756761656CLL;
  if (v1 != 5)
  {
    v3 = 0x614E65756761656CLL;
  }

  v4 = 0x4C52556465626D65;
  if (v1 != 3)
  {
    v4 = 0x734C525561746164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_217D119C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D12640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D119E8(uint64_t a1)
{
  v2 = sub_217D11D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D11A24(uint64_t a1)
{
  v2 = sub_217D11D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportScoreConcernData.encode(to:)(void *a1)
{
  sub_217D1238C(0, &qword_27CBA4AE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v26 = *(v1 + 2);
  v27 = v10;
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 6);
  v24 = *(v1 + 5);
  v25 = v11;
  v22 = v13;
  v23 = v12;
  v14 = *(v1 + 8);
  v21[2] = *(v1 + 7);
  v21[3] = v14;
  v15 = *(v1 + 10);
  v21[1] = *(v1 + 9);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D11D48();
  sub_217D89E7C();
  LOBYTE(v29) = v9;
  v30 = 0;
  sub_217D11D9C();
  v17 = v28;
  sub_217D89CAC();
  if (!v17)
  {
    v28 = v15;
    v29 = v27;
    v30 = 1;
    sub_217A55F8C();
    v19 = v18;
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89CAC();
    v27 = v19;
    LOBYTE(v29) = 2;
    sub_217D89C6C();
    LOBYTE(v29) = 3;
    sub_217D89C6C();
    v29 = v22;
    v30 = 4;
    sub_217D89CAC();
    LOBYTE(v29) = 5;
    sub_217D89C0C();
    LOBYTE(v29) = 6;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D11D48()
{
  result = qword_27CBA4AF0;
  if (!qword_27CBA4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AF0);
  }

  return result;
}

unint64_t sub_217D11D9C()
{
  result = qword_27CBA4AF8;
  if (!qword_27CBA4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4AF8);
  }

  return result;
}

uint64_t SportScoreConcernData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D1238C(0, &qword_27CBA4B00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D11D48();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_217D123F0();
    sub_217D89BCC();
    v48 = LOBYTE(v45[0]);
    sub_217A55F8C();
    LOBYTE(v39) = 1;
    v12 = sub_217A55FDC(&qword_2811BCD38);
    sub_217D89BCC();
    v36 = v12;
    v38 = v45[0];
    LOBYTE(v45[0]) = 2;
    v13 = sub_217D89B8C();
    v37 = v14;
    v34 = v13;
    LOBYTE(v45[0]) = 3;
    v33 = sub_217D89B8C();
    v35 = v15;
    LOBYTE(v39) = 4;
    sub_217D89BCC();
    v36 = v45[0];
    LOBYTE(v45[0]) = 5;
    v16 = sub_217D89B2C();
    v18 = v17;
    v19 = v16;
    v46 = 6;
    v20 = sub_217D89B2C();
    v32 = v21;
    v22 = v20;
    (*(v7 + 8))(v10, v6);
    LOBYTE(v39) = v48;
    DWORD1(v39) = *(v47 + 3);
    *(&v39 + 1) = v47[0];
    v23 = v38;
    *(&v39 + 1) = v38;
    v24 = v37;
    *&v40 = v34;
    *(&v40 + 1) = v37;
    *&v41 = v33;
    *(&v41 + 1) = v35;
    *&v42 = v36;
    *(&v42 + 1) = v19;
    *&v43 = v18;
    *(&v43 + 1) = v22;
    v25 = v32;
    v44 = v32;
    v27 = v41;
    v26 = v42;
    v28 = v43;
    *(a2 + 80) = v32;
    *(a2 + 48) = v26;
    *(a2 + 64) = v28;
    v29 = v39;
    *(a2 + 16) = v40;
    *(a2 + 32) = v27;
    *a2 = v29;
    sub_217CCC334(&v39, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v45[0]) = v48;
    *(v45 + 1) = v47[0];
    HIDWORD(v45[0]) = *(v47 + 3);
    v45[1] = v23;
    v45[2] = v34;
    v45[3] = v24;
    v45[4] = v33;
    v45[5] = v35;
    v45[6] = v36;
    v45[7] = v19;
    v45[8] = v18;
    v45[9] = v22;
    v45[10] = v25;
    return sub_217CCC870(v45);
  }
}

void sub_217D1238C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D11D48();
    v7 = a3(a1, &type metadata for SportScoreConcernData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D123F0()
{
  result = qword_27CBA4B08;
  if (!qword_27CBA4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B08);
  }

  return result;
}

uint64_t sub_217D1247C(uint64_t a1, int a2)
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

uint64_t sub_217D124C4(uint64_t result, int a2, int a3)
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

unint64_t sub_217D1253C()
{
  result = qword_27CBA4B10;
  if (!qword_27CBA4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B10);
  }

  return result;
}

unint64_t sub_217D12594()
{
  result = qword_27CBA4B18;
  if (!qword_27CBA4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B18);
  }

  return result;
}

unint64_t sub_217D125EC()
{
  result = qword_27CBA4B20;
  if (!qword_27CBA4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B20);
  }

  return result;
}

uint64_t sub_217D12640(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000217DD1970 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2A70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0044496C616369 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556465626D65 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734C525561746164 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D5565756761656CLL && a2 == 0xEB00000000644963 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E65756761656CLL && a2 == 0xEA0000000000656DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

NewsAnalytics::FeedType_optional __swiftcall FeedType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FeedType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x756F59726F66;
      break;
    case 2:
    case 3:
      result = 0x656E697A6167616DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C656E6E616863;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x697A6167614D796DLL;
      break;
    case 9:
      result = 6385509;
      break;
    case 0xA:
      result = 0x6F69647561;
      break;
    case 0xB:
      result = 0x7369486F69647561;
      break;
    case 0xC:
      result = 0x616C506F69647561;
      break;
    case 0xD:
      result = 0x6465766173;
      break;
    case 0xE:
      result = 0x79726F74736968;
      break;
    case 0xF:
      result = 0x686372616573;
      break;
    case 0x10:
      result = 0x6F48686372616573;
      break;
    case 0x11:
      result = 0x6957646572616873;
      break;
    case 0x12:
      result = 0x7374726F7073;
      break;
    case 0x13:
      result = 0x76457374726F7073;
      break;
    case 0x14:
      result = 0x7548656C7A7A7570;
      break;
    case 0x15:
      result = 0x7954656C7A7A7570;
      break;
    case 0x16:
      result = 0xD000000000000011;
      break;
    case 0x17:
      result = 0x6F42657069636572;
      break;
    case 0x18:
      result = 0x627548646F6F66;
      break;
    case 0x19:
      result = 0x6143657069636572;
      break;
    case 0x1A:
      result = 7499621;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D12CD8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FeedType.rawValue.getter();
  v4 = v3;
  if (v2 == FeedType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217D12D78()
{
  result = qword_27CBA4B28;
  if (!qword_27CBA4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B28);
  }

  return result;
}

uint64_t sub_217D12DCC()
{
  v1 = *v0;
  sub_217D89E1C();
  FeedType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D12E34()
{
  v2 = *v0;
  FeedType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217D12E98()
{
  v1 = *v0;
  sub_217D89E1C();
  FeedType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217D12F08@<X0>(unint64_t *a1@<X8>)
{
  result = FeedType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D12FF0()
{
  result = qword_2811BD2E0;
  if (!qword_2811BD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2E0);
  }

  return result;
}

uint64_t sub_217D1310C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4B60);
  __swift_project_value_buffer(v0, qword_27CBA4B60);
  return sub_217D8866C();
}

uint64_t WebAccessEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebAccessEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 20);
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 20);
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.emailShareResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 24);
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.emailShareResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 24);
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 28);
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 28);
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 32);
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 32);
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 36);
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 36);
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 40);
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 40);
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 44);
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebAccessEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 44);
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 48);
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D13EE0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t WebAccessEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebAccessEvent(0) + 48);
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebAccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebAccessEvent(0);
  v5 = v4[5];
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t WebAccessEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebAccessEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t WebAccessEvent.Model.emailShareResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebAccessEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WebAccessEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebAccessEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 32);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t WebAccessEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 36);
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

uint64_t WebAccessEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebAccessEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebAccessEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebAccessEvent.Model(0) + 48);
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

__n128 WebAccessEvent.Model.init(eventData:userActionData:emailShareResultData:tagData:sectionData:articleData:feedData:purchaseSessionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = *a2;
  v14 = *a3;
  v16 = *a4;
  v15 = a4[1];
  v33 = *a5;
  v17 = *(a5 + 2);
  v18 = *(a5 + 24);
  v35 = *a7;
  v34 = *(a7 + 2);
  v36 = a8[1];
  v37 = *a8;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for WebAccessEvent.Model(0);
  *(a9 + v20[5]) = v13;
  *(a9 + v20[6]) = v14;
  v21 = (a9 + v20[7]);
  *v21 = v16;
  v21[1] = v15;
  v22 = a9 + v20[8];
  *v22 = v33;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  v23 = a9 + v20[9];
  v24 = *(a6 + 48);
  *(v23 + 32) = *(a6 + 32);
  *(v23 + 48) = v24;
  v25 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a6 + 127);
  v26 = *(a6 + 112);
  *(v23 + 96) = *(a6 + 96);
  *(v23 + 112) = v26;
  v27 = *(a6 + 80);
  *(v23 + 64) = *(a6 + 64);
  *(v23 + 80) = v27;
  v28 = a9 + v20[10];
  *v28 = v35;
  *(v28 + 16) = v34;
  v29 = (a9 + v20[11]);
  *v29 = v37;
  v29[1] = v36;
  v30 = a9 + v20[12];
  v31 = *(a10 + 16);
  *v30 = *a10;
  *(v30 + 16) = v31;
  result = *(a10 + 32);
  *(v30 + 32) = result;
  *(v30 + 48) = *(a10 + 48);
  return result;
}

unint64_t sub_217D14914(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x61746144676174;
    }

    if (a1)
    {
      v5 = 0x6974634172657375;
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
    v1 = 0x6174614464656566;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x446E6F6974636573;
    if (a1 != 4)
    {
      v3 = 0x44656C6369747261;
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

uint64_t sub_217D14A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D1653C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D14A88(uint64_t a1)
{
  v2 = sub_217D1508C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D14AC4(uint64_t a1)
{
  v2 = sub_217D1508C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAccessEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D15944(0, &qword_27CBA4B88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v36 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1508C();
  sub_217D89E7C();
  LOBYTE(v61[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WebAccessEvent.Model(0);
    LOBYTE(v61[0]) = *(v3 + v12[5]);
    LOBYTE(v53) = 1;
    sub_217C810B4();
    sub_217D89CAC();
    LOBYTE(v61[0]) = *(v3 + v12[6]);
    LOBYTE(v53) = 2;
    sub_217B40680();
    sub_217D89CAC();
    v13 = (v3 + v12[7]);
    v14 = v13[1];
    *&v61[0] = *v13;
    *(&v61[0] + 1) = v14;
    LOBYTE(v53) = 3;
    sub_217AF6B14();

    sub_217D89C3C();

    v15 = (v3 + v12[8]);
    v16 = *(v15 + 24);
    v69 = *v15;
    v70 = *(v15 + 1);
    v71 = v16;
    v68 = 4;
    sub_217B17644();

    sub_217D89C3C();

    v17 = v3 + v12[9];
    v18 = *(v17 + 80);
    v19 = *(v17 + 112);
    v66 = *(v17 + 96);
    *v67 = v19;
    v20 = *(v17 + 16);
    v21 = *(v17 + 48);
    v62 = *(v17 + 32);
    v63 = v21;
    v22 = *(v17 + 48);
    v23 = *(v17 + 80);
    v64 = *(v17 + 64);
    v65 = v23;
    v24 = *(v17 + 16);
    v61[0] = *v17;
    v61[1] = v24;
    v25 = *(v17 + 112);
    v59 = v66;
    v60[0] = v25;
    v55 = v62;
    v56 = v22;
    v57 = v64;
    v58 = v18;
    *&v67[15] = *(v17 + 127);
    *(v60 + 15) = *(v17 + 127);
    v53 = v61[0];
    v54 = v20;
    v52 = 5;
    sub_217AFFBC0(v61, v50);
    sub_217ACF52C();
    sub_217D89C3C();
    v50[6] = v59;
    *v51 = v60[0];
    *&v51[15] = *(v60 + 15);
    v50[2] = v55;
    v50[3] = v56;
    v50[4] = v57;
    v50[5] = v58;
    v50[0] = v53;
    v50[1] = v54;
    sub_217B009E0(v50);
    v26 = (v3 + v12[10]);
    v27 = v26[1];
    v28 = v26[2];
    *&v43 = *v26;
    *(&v43 + 1) = v27;
    *&v44 = v28;
    LOBYTE(v39) = 6;
    sub_217AD1A68(v43, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v43, *(&v43 + 1), v44);
    v29 = (v3 + v12[11]);
    v30 = v29[1];
    v48 = *v29;
    v49 = v30;
    v47 = 7;
    sub_217B1E4A0();

    sub_217D89C3C();

    v31 = (v3 + v12[12]);
    v32 = v31[1];
    v43 = *v31;
    v44 = v32;
    v34 = *v31;
    v33 = v31[1];
    v45 = v31[2];
    v46 = *(v31 + 48);
    v39 = v34;
    v40 = v33;
    v41 = v31[2];
    v42 = *(v31 + 48);
    v38 = 8;
    sub_217ACC004(&v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D1508C()
{
  result = qword_27CBA4B90;
  if (!qword_27CBA4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4B90);
  }

  return result;
}

uint64_t WebAccessEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_217D8899C();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D15944(0, &qword_27CBA4B98, MEMORY[0x277D844C8]);
  v38 = v7;
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for WebAccessEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1508C();
  v54 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v37;
  v17 = v11;
  LOBYTE(v46) = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v38;
  sub_217D89BCC();
  v19 = *(v36 + 32);
  v20 = v39;
  v39 = v4;
  v19(v14, v20);
  LOBYTE(v40) = 1;
  sub_217C8105C();
  sub_217D89BCC();
  v14[v17[5]] = v46;
  LOBYTE(v40) = 2;
  sub_217B40628();
  sub_217D89BCC();
  v14[v17[6]] = v46;
  LOBYTE(v40) = 3;
  sub_217AF6AC0();
  sub_217D89B5C();
  v34 = a1;
  *&v14[v17[7]] = v46;
  LOBYTE(v40) = 4;
  sub_217B175F0();
  sub_217D89B5C();
  v21 = v47;
  v22 = BYTE8(v47);
  v23 = &v14[v17[8]];
  *v23 = v46;
  *(v23 + 2) = v21;
  v23[24] = v22;
  v45 = 5;
  sub_217ACF4D8();
  sub_217D89B5C();
  v24 = &v14[v17[9]];
  v25 = v53[0];
  *(v24 + 6) = v52;
  *(v24 + 7) = v25;
  *(v24 + 127) = *(v53 + 15);
  v26 = v49;
  *(v24 + 2) = v48;
  *(v24 + 3) = v26;
  v27 = v51;
  *(v24 + 4) = v50;
  *(v24 + 5) = v27;
  v28 = v47;
  *v24 = v46;
  *(v24 + 1) = v28;
  v44 = 6;
  sub_217A5B978();
  sub_217D89B5C();
  v29 = v41;
  v30 = &v14[v17[10]];
  *v30 = v40;
  *(v30 + 2) = v29;
  v44 = 7;
  sub_217B1E44C();
  sub_217D89B5C();
  *&v14[v17[11]] = v40;
  v44 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v16 + 8))(v54, v18);
  v31 = &v14[v17[12]];
  v32 = v41;
  *v31 = v40;
  *(v31 + 1) = v32;
  *(v31 + 2) = v42;
  v31[48] = v43;
  sub_217D159A8(v14, v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_217D15A0C(v14);
}

void sub_217D15944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1508C();
    v7 = a3(a1, &type metadata for WebAccessEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D159A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D15A0C(uint64_t a1)
{
  v2 = type metadata accessor for WebAccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D15B40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_217D15FBC()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D13EE0(319, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4);
    if (v1 <= 0x3F)
    {
      sub_217D13EE0(319, &qword_27CBA4B80, sub_217B40628, sub_217B40680);
      if (v2 <= 0x3F)
      {
        sub_217D13EE0(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
        if (v3 <= 0x3F)
        {
          sub_217D13EE0(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
          if (v4 <= 0x3F)
          {
            sub_217D13EE0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
            if (v5 <= 0x3F)
            {
              sub_217D13EE0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
              if (v6 <= 0x3F)
              {
                sub_217D13EE0(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                if (v7 <= 0x3F)
                {
                  sub_217D13EE0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                  if (v8 <= 0x3F)
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

void sub_217D162D0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD360);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7C80);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7DB8);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD308);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9F7C8);
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

unint64_t sub_217D16438()
{
  result = qword_27CBA4BC0;
  if (!qword_27CBA4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BC0);
  }

  return result;
}

unint64_t sub_217D16490()
{
  result = qword_27CBA4BC8;
  if (!qword_27CBA4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BC8);
  }

  return result;
}

unint64_t sub_217D164E8()
{
  result = qword_27CBA4BD0;
  if (!qword_27CBA4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4BD0);
  }

  return result;
}

uint64_t sub_217D1653C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD2A90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

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

void SessionObserver.subscriptionController(_:didAddTags:changeTags:moveTags:removeTags:subscriptionType:)(void *a1)
{
  if (a1)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext) shortcutList];
    sub_217A54D60(a1, v3);

    sub_217A4DFD8(a1);
    sub_217A4F918(a1);

    SessionObserver.pushNotificationSettingsData()();
  }

  else
  {
    __break(1u);
  }
}

void SessionObserver.shortcutList(_:didAdd:changedShortcuts:removedShortcuts:)(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext) subscriptionController];
  if (v3)
  {
    v4 = v3;
    sub_217A54D60(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217D16B58()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE730);
  __swift_project_value_buffer(v0, qword_2811BE730);
  return sub_217D8866C();
}

uint64_t AppLaunchTakeoverTriggerEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppLaunchTakeoverTriggerEvent.altData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.altData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 24);
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D16F0C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t AppLaunchTakeoverTriggerEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTakeoverTriggerEvent(0) + 24);
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppLaunchTakeoverTriggerEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppLaunchTakeoverTriggerEvent(0);
  v5 = *(v4 + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = *MEMORY[0x277CEACF0];
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.altData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_217C50AA4(v4, v5, v6);
}

__n128 AppLaunchTakeoverTriggerEvent.Model.init(eventData:altData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  v12 = *(a3 + 48);
  v13 = sub_217D8899C();
  v18 = *(a3 + 16);
  v19 = *a3;
  (*(*(v13 - 8) + 32))(a4, a1, v13);
  v14 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  v15 = a4 + *(v14 + 20);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v16 = a4 + *(v14 + 24);
  result = v19;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = v12;
  return result;
}

uint64_t sub_217D173C4()
{
  v1 = 0x61746144746C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_217D17428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D1824C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D17450(uint64_t a1)
{
  v2 = sub_217D1773C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1748C(uint64_t a1)
{
  v2 = sub_217D1773C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D17B84(0, &qword_27CBA4CA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1773C();
  sub_217D89E7C();
  LOBYTE(v25) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
    v13 = v3 + *(v12 + 20);
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v25) = *v13;
    v26 = v14;
    v27 = v15;
    v32 = 1;
    sub_217CFD2EC();

    sub_217D89CAC();

    v16 = v3 + *(v12 + 24);
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v21 = *(v16 + 40);
    v22 = *(v16 + 48);
    v25 = *v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = 2;
    sub_217C50AA4(v25, v17, v18);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(v25, v26, v27);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D1773C()
{
  result = qword_27CBA4CA8;
  if (!qword_27CBA4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CA8);
  }

  return result;
}

uint64_t AppLaunchTakeoverTriggerEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_217D8899C();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D17B84(0, &qword_27CBA4CB0, MEMORY[0x277D844C8]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1773C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v11;
  v29 = v14;
  v16 = v31;
  v17 = v32;
  v35[0] = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v33;
  sub_217D89BCC();
  (*(v17 + 32))(v29, v6, v34);
  v38 = 1;
  sub_217CFD294();
  sub_217D89BCC();
  v19 = v28;
  v20 = &v29[*(v28 + 20)];
  *v20 = v35[0];
  *(v20 + 8) = *&v35[8];
  v38 = 2;
  sub_217A54D08();
  sub_217D89B5C();
  (*(v16 + 8))(v10, v18);
  v21 = v37;
  v23 = v29;
  v22 = v30;
  v24 = &v29[*(v19 + 24)];
  v25 = *&v35[16];
  *v24 = *v35;
  *(v24 + 1) = v25;
  *(v24 + 2) = v36;
  v24[48] = v21;
  sub_217D17BE8(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D17C4C(v23);
}

void sub_217D17B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1773C();
    v7 = a3(a1, &type metadata for AppLaunchTakeoverTriggerEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D17BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D17C4C(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchTakeoverTriggerEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D17D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = *MEMORY[0x277CEACF0];
  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

void sub_217D17F24()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217D16F0C(319, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC);
    if (v1 <= 0x3F)
    {
      sub_217D16F0C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217D18058()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D180E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217D180E4()
{
  if (!qword_2811BDCD8)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BDCD8);
    }
  }
}

unint64_t sub_217D18148()
{
  result = qword_27CBA4CC8;
  if (!qword_27CBA4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CC8);
  }

  return result;
}

unint64_t sub_217D181A0()
{
  result = qword_27CBA4CD0;
  if (!qword_27CBA4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CD0);
  }

  return result;
}

unint64_t sub_217D181F8()
{
  result = qword_27CBA4CD8;
  if (!qword_27CBA4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CD8);
  }

  return result;
}

uint64_t sub_217D1824C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144746C61 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

NewsAnalytics::SubscriptionResultType_optional __swiftcall SubscriptionResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6572756C696166;
  v4 = 0x6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73736563637573;
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

unint64_t sub_217D1847C()
{
  result = qword_27CBA4CE0;
  if (!qword_27CBA4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CE0);
  }

  return result;
}

uint64_t sub_217D184D0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D185B4()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217D18684()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D18770(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6572756C696166;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000217DCC720;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73736563637573;
    v3 = 0xE700000000000000;
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

unint64_t sub_217D188D0()
{
  result = qword_27CBA4CE8;
  if (!qword_27CBA4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CE8);
  }

  return result;
}

uint64_t LiveActivityData.liveActivityID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LiveActivityData.liveActivityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D189E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697463416576696CLL && a2 == 0xEE00444979746976)
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

uint64_t sub_217D18A70(uint64_t a1)
{
  v2 = sub_217D18C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D18AAC(uint64_t a1)
{
  v2 = sub_217D18C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityData.encode(to:)(void *a1)
{
  sub_217D18E0C(0, &qword_27CBA4CF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D18C34()
{
  result = qword_27CBA4CF8;
  if (!qword_27CBA4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4CF8);
  }

  return result;
}

uint64_t LiveActivityData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D18E0C(0, &qword_27CBA4D00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
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

void sub_217D18E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D18C34();
    v7 = a3(a1, &type metadata for LiveActivityData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D18E90(void *a1)
{
  sub_217D18E0C(0, &qword_27CBA4CF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D18C34();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D19000()
{
  result = qword_27CBA4D08;
  if (!qword_27CBA4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D08);
  }

  return result;
}

unint64_t sub_217D19058()
{
  result = qword_27CBA4D10;
  if (!qword_27CBA4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D10);
  }

  return result;
}

unint64_t sub_217D190B0()
{
  result = qword_27CBA4D18;
  if (!qword_27CBA4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D18);
  }

  return result;
}

uint64_t sub_217D191CC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4D20);
  __swift_project_value_buffer(v0, qword_27CBA4D20);
  return sub_217D8866C();
}

uint64_t WebEmbedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 24);
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 24);
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 28);
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 28);
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 32);
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 32);
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 36);
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 36);
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 40);
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLoadFailureEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 40);
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 44);
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D19D30(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t WebEmbedLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLoadFailureEvent(0) + 44);
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for WebEmbedLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = FailureEvent[8];
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = FailureEvent[9];
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = FailureEvent[10];
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = FailureEvent[11];
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t sub_217D1A298@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedLoadFailureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 24));
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

uint64_t WebEmbedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedLoadFailureEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedLoadFailureEvent.Model(0) + 44);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 WebEmbedLoadFailureEvent.Model.init(eventData:timedData:groupData:feedData:feedPositionData:inGroupPositionData:webEmbedData:errorData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v33 = *a4;
  v13 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 4);
  v16 = *a6;
  v17 = *(a6 + 4);
  v34 = a7[1];
  v35 = *a7;
  v37 = a8[1];
  v38 = *a8;
  v36 = *(a8 + 4);
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v20 = Failure[5];
  v21 = sub_217D889CC();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + Failure[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  v22[8] = a3[8];
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  v27 = a9 + Failure[7];
  *v27 = v33;
  *(v27 + 16) = v13;
  v28 = a9 + Failure[8];
  *v28 = v14;
  *(v28 + 4) = v15;
  v29 = a9 + Failure[9];
  *v29 = v16;
  *(v29 + 4) = v17;
  v30 = (a9 + Failure[10]);
  *v30 = v35;
  v30[1] = v34;
  v31 = a9 + Failure[11];
  result = v37;
  *v31 = v38;
  *(v31 + 16) = v37;
  *(v31 + 32) = v36;
  return result;
}

uint64_t sub_217D1A6F8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6465626D45626577;
  if (v1 != 6)
  {
    v3 = 0x746144726F727265;
  }

  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 2)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217D1A7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D1C168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D1A820(uint64_t a1)
{
  v2 = sub_217D1ADC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1A85C(uint64_t a1)
{
  v2 = sub_217D1ADC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D1B6C0(0, &qword_27CBA4D38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1ADC0();
  sub_217D89E7C();
  LOBYTE(v51[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
    v13 = Failure[5];
    v61 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + Failure[6]);
    v15 = v14[5];
    v16 = v14[7];
    v56 = v14[6];
    v57 = v16;
    v17 = v14[7];
    v58 = v14[8];
    v18 = v14[1];
    v19 = v14[3];
    v52 = v14[2];
    v53 = v19;
    v20 = v14[3];
    v21 = v14[5];
    v54 = v14[4];
    v55 = v21;
    v22 = v14[1];
    v51[0] = *v14;
    v51[1] = v22;
    v48 = v56;
    v49 = v17;
    v50 = v14[8];
    v44 = v52;
    v45 = v20;
    v46 = v54;
    v47 = v15;
    v42 = v51[0];
    v43 = v18;
    v60 = 2;
    sub_217AD87FC(v51, v41);
    sub_217A5D3B4();
    sub_217D89C3C();
    v41[6] = v48;
    v41[7] = v49;
    v41[8] = v50;
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_217AD96E8(v41);
    v23 = (v3 + Failure[7]);
    v24 = v23[1];
    v25 = v23[2];
    v37 = *v23;
    *&v38 = v24;
    *(&v38 + 1) = v25;
    v59 = 3;
    sub_217AD1A68(v37, v24, v25);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v37, v38, *(&v38 + 1));
    v26 = (v3 + Failure[8]);
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 4);
    LODWORD(v37) = v27;
    BYTE4(v37) = v26;
    v59 = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v28 = (v3 + Failure[9]);
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 4);
    LODWORD(v37) = v29;
    BYTE4(v37) = v28;
    v59 = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v30 = (v3 + Failure[10]);
    v31 = v30[1];
    v37 = *v30;
    *&v38 = v31;
    v59 = 6;
    sub_217AE89C8();

    sub_217D89CAC();

    v32 = v3 + Failure[11];
    v33 = *(v32 + 24);
    v34 = *(v32 + 32);
    v37 = *v32;
    v38 = *(v32 + 8);
    v39 = v33;
    v40 = v34;
    v59 = 7;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D1ADC0()
{
  result = qword_27CBA4D40;
  if (!qword_27CBA4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D40);
  }

  return result;
}

uint64_t WebEmbedLoadFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v46 = sub_217D889CC();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D1B6C0(0, &qword_27CBA4D48, MEMORY[0x277D844C8]);
  v50 = v9;
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  v14 = *(*(Failure - 1) + 64);
  MEMORY[0x28223BE20](Failure);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1ADC0();
  v49 = v12;
  v18 = v51;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v45;
  v21 = v46;
  LOBYTE(v55) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v22 = *(v20 + 32);
  v51 = v6;
  v22(v16, v48);
  LOBYTE(v55) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  v48 = 0;
  (*(v44 + 32))(&v16[Failure[5]], v19, v21);
  v65 = 2;
  sub_217A5D308();
  sub_217D89B5C();
  v23 = a1;
  v24 = &v16[Failure[6]];
  v25 = v62;
  *(v24 + 6) = v61;
  *(v24 + 7) = v25;
  *(v24 + 8) = v63;
  v26 = v58;
  *(v24 + 2) = v57;
  *(v24 + 3) = v26;
  v27 = v60;
  *(v24 + 4) = v59;
  *(v24 + 5) = v27;
  v28 = v56;
  *v24 = v55;
  *(v24 + 1) = v28;
  v64 = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v29 = v47;
  v30 = v53;
  v31 = &v16[Failure[7]];
  *v31 = v52;
  *(v31 + 2) = v30;
  v64 = 4;
  sub_217AD76BC();
  sub_217D89B5C();
  v32 = BYTE4(v52);
  v33 = &v16[Failure[8]];
  *v33 = v52;
  v33[4] = v32;
  v64 = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v34 = BYTE4(v52);
  v35 = &v16[Failure[9]];
  *v35 = v52;
  v35[4] = v34;
  v64 = 6;
  sub_217AE8974();
  sub_217D89BCC();
  v36 = *(&v52 + 1);
  v37 = &v16[Failure[10]];
  *v37 = v52;
  *(v37 + 1) = v36;
  v64 = 7;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v29 + 8))(v49, v50);
  v38 = v54;
  v39 = &v16[Failure[11]];
  v40 = v53;
  *v39 = v52;
  *(v39 + 1) = v40;
  *(v39 + 4) = v38;
  sub_217D1B724(v16, v43);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_217D1B788(v16);
}

void sub_217D1B6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1ADC0();
    v7 = a3(a1, &type metadata for WebEmbedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1B724(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217D1B788(uint64_t a1)
{
  Failure = type metadata accessor for WebEmbedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217D1B8BC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217D1BC88()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217D19D30(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
      if (v2 <= 0x3F)
      {
        sub_217D19D30(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217D19D30(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217D19D30(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217D19D30(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
              if (v6 <= 0x3F)
              {
                sub_217D19D30(319, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
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

void sub_217D1BF14()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C5238);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C29D8);
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

unint64_t sub_217D1C064()
{
  result = qword_27CBA4D60;
  if (!qword_27CBA4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D60);
  }

  return result;
}

unint64_t sub_217D1C0BC()
{
  result = qword_27CBA4D68;
  if (!qword_27CBA4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D68);
  }

  return result;
}

unint64_t sub_217D1C114()
{
  result = qword_27CBA4D70;
  if (!qword_27CBA4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D70);
  }

  return result;
}

uint64_t sub_217D1C168(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
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

uint64_t DeviceData.deviceModel.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceData.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceData.osVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_217D1C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D1CC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D1C66C(uint64_t a1)
{
  v2 = sub_217A623F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1C6A8(uint64_t a1)
{
  v2 = sub_217A623F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217A6201C(0, &qword_2811BCB60, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A623F4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v34 = v12;
  LOBYTE(v35) = 1;
  sub_217D1CA40();
  sub_217D89BCC();
  v15 = LOBYTE(v39[0]);
  LOBYTE(v35) = 2;
  sub_217D1CA94();
  sub_217D89BCC();
  v32 = v15;
  v16 = LOBYTE(v39[0]);
  LOBYTE(v39[0]) = 3;
  v17 = sub_217D89B8C();
  v33 = v18;
  v31 = v17;
  v48 = 4;
  v19 = sub_217D89B8C();
  v20 = v10;
  v22 = v21;
  (*(v7 + 8))(v20, v6);
  v23 = v16;
  v30 = v16;
  v24 = v34;
  *&v35 = v34;
  *(&v35 + 1) = v14;
  v25 = v32;
  LOBYTE(v36) = v32;
  BYTE1(v36) = v23;
  *(&v36 + 2) = v49;
  WORD3(v36) = v50;
  v26 = v31;
  *(&v36 + 1) = v31;
  *&v37 = v33;
  *(&v37 + 1) = v19;
  v38 = v22;
  *(a2 + 48) = v22;
  v27 = v37;
  *(a2 + 16) = v36;
  *(a2 + 32) = v27;
  *a2 = v35;
  sub_217A61B90(&v35, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v24;
  v39[1] = v14;
  v40 = v25;
  v41 = v30;
  v42 = v49;
  v43 = v50;
  v44 = v26;
  v45 = v33;
  v46 = v19;
  v47 = v22;
  return sub_217D1CAE8(v39);
}

unint64_t sub_217D1CA40()
{
  result = qword_2811C70C0;
  if (!qword_2811C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70C0);
  }

  return result;
}

unint64_t sub_217D1CA94()
{
  result = qword_2811C4F18;
  if (!qword_2811C4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F18);
  }

  return result;
}

uint64_t sub_217D1CB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_217D1CB78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217D1CBD8()
{
  result = qword_27CBA4D78;
  if (!qword_27CBA4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D78);
  }

  return result;
}

uint64_t sub_217D1CC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2BA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
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

uint64_t sub_217D1CEC8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BF450);
  __swift_project_value_buffer(v0, qword_2811BF450);
  return sub_217D8866C();
}

uint64_t ANFComponentExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ANFComponentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 36);
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 36);
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 40);
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 40);
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 44);
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 44);
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 48);
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 48);
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 52);
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D1DD8C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ANFComponentExposureEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 52);
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ANFComponentExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v19 - 8) + 104))(a1 + v18, v16, v19);
  v20 = v4[12];
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t sub_217D1E3E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ANFComponentExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 24);
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

uint64_t ANFComponentExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 28);
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

uint64_t ANFComponentExposureEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 32));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_217C83BD4(v9, &v8);
}

uint64_t ANFComponentExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 36));
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

uint64_t ANFComponentExposureEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 40));
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

uint64_t ANFComponentExposureEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ANFComponentExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ANFComponentExposureEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

void *ANFComponentExposureEvent.Model.init(eventData:timedData:articleData:channelData:anfComponentData:userBundleSubscriptionContextData:issueData:issueViewData:viewData:articleScienceData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11)
{
  v19 = *a4;
  v18 = a4[1];
  v20 = *(a4 + 16);
  v43 = *(a4 + 17);
  v41 = a4[4];
  v42 = a4[3];
  v46 = a8[1];
  v47 = *a8;
  v49 = a10[1];
  v50 = *a10;
  v48 = *(a10 + 8);
  v21 = sub_217D8899C();
  v44 = a7[1];
  v45 = *a7;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_217D889CC();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  v26 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v26;
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a3 + 127);
  v28 = *(a3 + 112);
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = v28;
  v29 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v22[7];
  *v30 = v19;
  *(v30 + 8) = v18;
  *(v30 + 16) = v20;
  *(v30 + 17) = v43;
  *(v30 + 24) = v42;
  *(v30 + 32) = v41;
  v31 = (a9 + v22[8]);
  v32 = a5[1];
  *v31 = *a5;
  v31[1] = v32;
  v33 = a5[3];
  v31[2] = a5[2];
  v31[3] = v33;
  v34 = a9 + v22[9];
  v35 = *(a6 + 16);
  *v34 = *a6;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a6 + 32);
  *(v34 + 48) = *(a6 + 48);
  v36 = (a9 + v22[10]);
  *v36 = v45;
  v36[1] = v44;
  v37 = (a9 + v22[11]);
  *v37 = v47;
  v37[1] = v46;
  v38 = a9 + v22[12];
  *v38 = v50;
  *(v38 + 8) = v49;
  *(v38 + 16) = v48;
  v39 = (a9 + v22[13]);

  return memcpy(v39, a11, 0x111uLL);
}

unint64_t sub_217D1E9B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6569566575737369;
    v6 = 0x6174614477656976;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000021;
    if (a1 != 5)
    {
      v7 = 0x7461446575737369;
    }

    if (a1 <= 6u)
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
    v1 = 0x746144746E657665;
    v2 = 0x44656C6369747261;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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
}

uint64_t sub_217D1EB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D209C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D1EB48(uint64_t a1)
{
  v2 = sub_217D1F348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D1EB84(uint64_t a1)
{
  v2 = sub_217D1F348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D1FDB4(0, &qword_27CBA4D80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v49[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1F348();
  sub_217D89E7C();
  v51[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ANFComponentExposureEvent.Model(0);
    v13 = v12[5];
    v97 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = v3 + v12[6];
    v15 = *(v14 + 80);
    v16 = *(v14 + 112);
    v95 = *(v14 + 96);
    *v96 = v16;
    v17 = *(v14 + 16);
    v18 = *(v14 + 48);
    v91 = *(v14 + 32);
    v92 = v18;
    v19 = *(v14 + 48);
    v20 = *(v14 + 80);
    v93 = *(v14 + 64);
    v94 = v20;
    v21 = *(v14 + 16);
    v90[0] = *v14;
    v90[1] = v21;
    v22 = *(v14 + 112);
    v88 = v95;
    v89[0] = v22;
    v84 = v91;
    v85 = v19;
    v87 = v15;
    v86 = v93;
    *&v96[15] = *(v14 + 127);
    *(v89 + 15) = *(v14 + 127);
    v83 = v17;
    v82 = v90[0];
    v81 = 2;
    sub_217AD1630(v90, v51);
    sub_217ACF52C();
    sub_217D89CAC();
    v79[6] = v88;
    *v80 = v89[0];
    *&v80[15] = *(v89 + 15);
    v79[2] = v84;
    v79[3] = v85;
    v79[5] = v87;
    v79[4] = v86;
    v79[1] = v83;
    v79[0] = v82;
    sub_217AD2864(v79);
    v23 = (v3 + v12[7]);
    v24 = v23[1];
    v25 = *(v23 + 16);
    v26 = *(v23 + 17);
    v27 = v23[3];
    v28 = v23[4];
    v73 = *v23;
    v74 = v24;
    v75 = v25;
    v76 = v26;
    v77 = v27;
    v78 = v28;
    v72 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v29 = (v3 + v12[8]);
    v30 = v29[1];
    v71[0] = *v29;
    v71[1] = v30;
    v31 = v29[3];
    v33 = *v29;
    v32 = v29[1];
    v71[2] = v29[2];
    v71[3] = v31;
    v67 = v33;
    v68 = v32;
    v34 = v29[3];
    v69 = v29[2];
    v70 = v34;
    v66 = 4;
    sub_217C83BD4(v71, v51);
    sub_217AE2368();
    sub_217D89CAC();
    v63[0] = v67;
    v63[1] = v68;
    v63[2] = v69;
    v63[3] = v70;
    sub_217C83C0C(v63);
    v35 = v3 + v12[9];
    v36 = *(v35 + 16);
    v64[2] = *(v35 + 32);
    v37 = *(v35 + 16);
    v64[0] = *v35;
    v64[1] = v37;
    v65 = *(v35 + 48);
    v59 = v64[0];
    v60 = v36;
    v61 = *(v35 + 32);
    v62 = *(v35 + 48);
    v58 = 5;
    sub_217ACC004(v64, v51);
    sub_217A55B98();
    sub_217D89CAC();
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v57 = v62;
    sub_217ACC69C(v56);
    v38 = (v3 + v12[10]);
    v39 = v38[1];
    v40 = v38[2];
    v41 = v38[3];
    *v51 = *v38;
    *&v51[8] = v39;
    *&v51[16] = v40;
    *&v51[24] = v41;
    v50[0] = 6;
    sub_217AE39D0(*v51, v39);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*v51, *&v51[8]);
    v42 = (v3 + v12[11]);
    v43 = v42[1];
    *v51 = *v42;
    *&v51[8] = v43;
    v50[0] = 7;
    sub_217AD01EC();

    sub_217D89C3C();

    v44 = (v3 + v12[12]);
    v45 = *v44;
    v46 = v44[1];
    LOWORD(v44) = *(v44 + 8);
    v53 = v45;
    v54 = v46;
    v55 = v44;
    v52 = 8;
    sub_217A5E790();

    sub_217D89CAC();

    v47 = v12[13];
    memcpy(v51, (v3 + v47), sizeof(v51));
    memcpy(v50, (v3 + v47), sizeof(v50));
    v49[279] = 9;
    sub_217AD1744(v51, v49);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v49, v50, 0x111uLL);
    sub_217AD28B8(v49);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D1F348()
{
  result = qword_27CBA4D88;
  if (!qword_27CBA4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D88);
  }

  return result;
}

uint64_t ANFComponentExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_217D889CC();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D1FDB4(0, &qword_27CBA4D90, MEMORY[0x277D844C8]);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D1F348();
  v58 = v13;
  v19 = v80;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v54;
  v48 = v14;
  v49 = a1;
  v80 = v17;
  v59[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = v80;
  (*(v53 + 32))();
  v59[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v22 = v52;
  sub_217D89BCC();
  v47 = v6;
  v55 = 0;
  v23 = v48;
  (*(v51 + 32))(&v21[v48[5]], v20, v22);
  v71 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v24 = &v21[v23[6]];
  v25 = v79[0];
  *(v24 + 6) = v78;
  *(v24 + 7) = v25;
  *(v24 + 127) = *(v79 + 15);
  v26 = v75;
  *(v24 + 2) = v74;
  *(v24 + 3) = v26;
  v27 = v77;
  *(v24 + 4) = v76;
  *(v24 + 5) = v27;
  v28 = v73;
  *v24 = v72;
  *(v24 + 1) = v28;
  LOBYTE(v67) = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v29 = *&v59[8];
  v30 = v59[16];
  v31 = v59[17];
  v32 = *&v59[24];
  v33 = *&v59[32];
  v34 = &v21[v23[7]];
  *v34 = *v59;
  *(v34 + 1) = v29;
  v34[16] = v30;
  v34[17] = v31;
  *(v34 + 3) = v32;
  *(v34 + 4) = v33;
  v66 = 4;
  sub_217AE2314();
  sub_217D89BCC();
  v35 = &v21[v23[8]];
  v36 = v68;
  *v35 = v67;
  *(v35 + 1) = v36;
  v37 = v70;
  *(v35 + 2) = v69;
  *(v35 + 3) = v37;
  v61 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v38 = &v21[v23[9]];
  v39 = v63;
  *v38 = v62;
  *(v38 + 1) = v39;
  *(v38 + 2) = v64;
  v38[48] = v65;
  v60 = 6;
  sub_217ACFF40();
  sub_217D89B5C();
  v40 = &v21[v23[10]];
  v41 = *&v59[16];
  *v40 = *v59;
  *(v40 + 1) = v41;
  v60 = 7;
  sub_217AD0198();
  sub_217D89B5C();
  *&v21[v23[11]] = *v59;
  v60 = 8;
  sub_217A5E738();
  sub_217D89BCC();
  v42 = *&v59[8];
  v43 = *&v59[16];
  v44 = &v80[v48[12]];
  *v44 = *v59;
  *(v44 + 1) = v42;
  *(v44 + 8) = v43;
  v60 = 9;
  sub_217ACF8E0();
  sub_217D89BCC();
  (*(v57 + 8))(v58, v56);
  v45 = v80;
  memcpy(&v80[v48[13]], v59, 0x111uLL);
  sub_217D1FE18(v45, v50);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_217D1FE7C(v45);
}

void sub_217D1FDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D1F348();
    v7 = a3(a1, &type metadata for ANFComponentExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D1FE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D1FE7C(uint64_t a1)
{
  v2 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D1FFB0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v20 - 8) + 104))(a2 + v19, v17, v20);
  v21 = a1[12];
  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_217D2046C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217D1DD8C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        sub_217D1DD8C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
        if (v3 <= 0x3F)
        {
          sub_217D1DD8C(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368);
          if (v4 <= 0x3F)
          {
            sub_217D1DD8C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
            if (v5 <= 0x3F)
            {
              sub_217D1DD8C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
              if (v6 <= 0x3F)
              {
                sub_217D1DD8C(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                if (v7 <= 0x3F)
                {
                  sub_217D1DD8C(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                  if (v8 <= 0x3F)
                  {
                    sub_217D1DD8C(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
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

void sub_217D20798()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD110);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C71A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217D208C4()
{
  result = qword_27CBA4D98;
  if (!qword_27CBA4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4D98);
  }

  return result;
}

unint64_t sub_217D2091C()
{
  result = qword_27CBA4DA0;
  if (!qword_27CBA4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DA0);
  }

  return result;
}

unint64_t sub_217D20974()
{
  result = qword_27CBA4DA8;
  if (!qword_27CBA4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DA8);
  }

  return result;
}

uint64_t sub_217D209C8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

NewsAnalytics::AudioEngagementOrigin_optional __swiftcall AudioEngagementOrigin.init(rawValue:)(Swift::String rawValue)
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

unint64_t AudioEngagementOrigin.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0xD000000000000016;
    if (v1 != 8)
    {
      v7 = 0x6E65746E49707061;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1869768040;
    if (v1 != 5)
    {
      v8 = 1769105779;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x776F4E79616C70;
    v4 = 0x636172547478656ELL;
    if (v1 != 3)
    {
      v4 = 0x697242796C696164;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7473696C79616C70;
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

unint64_t sub_217D20EC4()
{
  result = qword_27CBA4DB0;
  if (!qword_27CBA4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DB0);
  }

  return result;
}

uint64_t sub_217D20F18()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83230();
  return sub_217D89E3C();
}

uint64_t sub_217D20F68()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83230();
  return sub_217D89E3C();
}

unint64_t sub_217D20FB8@<X0>(unint64_t *a1@<X8>)
{
  result = AudioEngagementOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D210A0()
{
  result = qword_27CBA4DB8;
  if (!qword_27CBA4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DB8);
  }

  return result;
}

uint64_t SubscriptionData.subscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t SubscriptionData.autoSubscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t SubscriptionData.paidSubscribedTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t SubscriptionData.webAccessTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t SubscriptionData.mutedTagList.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

uint64_t SubscriptionData.init(channelCount:topicCount:subscribedTagList:autoSubscribedTagList:paidSubscribedTagList:webAccessTagList:mutedTagList:favoritesSportsTopicCount:favoritesTagsTopicCount:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;

  *(a9 + 40) = v16;
  *(a9 + 48) = a8;
  *(a9 + 52) = a10;
  return result;
}

uint64_t sub_217D213D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D21A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D213FC(uint64_t a1)
{
  v2 = sub_217A68198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D21438(uint64_t a1)
{
  v2 = sub_217A68198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A6811C(0, &qword_2811BCA68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68198();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v12 = sub_217D89BDC();
    LOBYTE(v33[0]) = 1;
    v13 = sub_217D89BDC();
    LOBYTE(v29) = 2;
    sub_217B7D2A0();
    sub_217D89BCC();
    v28 = v33[0];
    LOBYTE(v29) = 3;
    sub_217C90C74();
    sub_217D89BCC();
    v27 = v33[0];
    LOBYTE(v29) = 4;
    sub_217CE9EFC();
    v26 = 0;
    sub_217D89BCC();
    v25 = v33[0];
    LOBYTE(v29) = 5;
    sub_217CE6A4C();
    sub_217D89BCC();
    v24 = v33[0];
    LOBYTE(v29) = 6;
    sub_217AEA730();
    sub_217D89B5C();
    v23 = a2;
    v14 = v33[0];

    LOBYTE(v33[0]) = 7;
    LODWORD(v26) = sub_217D89BDC();
    v36 = 8;
    v15 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *&v29 = __PAIR64__(v13, v12);
    v17 = v27;
    v16 = v28;
    *(&v29 + 1) = v28;
    *&v30 = v27;
    v18 = v25;
    *(&v30 + 1) = v25;
    *&v31 = v24;
    *(&v31 + 1) = v14;
    v32 = __PAIR64__(v15, v26);
    v19 = v30;
    v20 = v23;
    *v23 = v29;
    v20[1] = v19;
    v20[2] = v31;
    *(v20 + 6) = v32;
    sub_217B9E08C(&v29, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = __PAIR64__(v13, v12);
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v33[4] = v24;
    v33[5] = v14;
    v34 = v26;
    v35 = v15;
    return sub_217B9F26C(v33);
  }
}

unint64_t sub_217D219E4()
{
  result = qword_27CBA4DC0;
  if (!qword_27CBA4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DC0);
  }

  return result;
}

uint64_t sub_217D21A38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436369706F74 && a2 == 0xEA0000000000746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2BC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2BE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD2C00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD2C20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676154646574756DLL && a2 == 0xEC0000007473694CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DD2C40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD2C60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::MediaType_optional __swiftcall MediaType.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7972656C6C6167;
  v4 = 0x6F69647561;
  if (v1 != 4)
  {
    v4 = 7364973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F65646976;
  if (v1 != 1)
  {
    v5 = 0x6567616D69;
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

unint64_t sub_217D21E3C()
{
  result = qword_27CBA4DC8;
  if (!qword_27CBA4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DC8);
  }

  return result;
}

uint64_t sub_217D21E98()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217D21F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x7972656C6C6167;
  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (v2 != 4)
  {
    v8 = 7364973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6F65646976;
  if (v2 != 1)
  {
    v9 = 0x6567616D69;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_217D220F4()
{
  result = qword_2811BD0C0;
  if (!qword_2811BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0C0);
  }

  return result;
}

uint64_t sub_217D22210()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BD018);
  __swift_project_value_buffer(v0, qword_2811BD018);
  return sub_217D8866C();
}

uint64_t ViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217D22308();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_217D22308()
{
  if (!qword_2811C84D8)
  {
    sub_217A5E738();
    sub_217A5E790();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C84D8);
    }
  }
}

uint64_t ViewEvent.viewData.setter(uint64_t a1)
{
  sub_217D22308();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217D22308();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_217D224AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t sub_217D22534(uint64_t a1)
{
  v2 = sub_217D2272C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D22570(uint64_t a1)
{
  v2 = sub_217D2272C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEvent.Model.encode(to:)(void *a1)
{
  sub_217D22924(0, &qword_27CBA4DD0, MEMORY[0x277D84538]);
  v4 = v3;
  v15 = *(v3 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2272C();

  sub_217D89E7C();
  v13[1] = v8;
  v13[2] = v9;
  v14 = v10;
  sub_217A5E790();
  sub_217D89CAC();

  return (*(v15 + 8))(v7, v4);
}

unint64_t sub_217D2272C()
{
  result = qword_27CBA4DD8;
  if (!qword_27CBA4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DD8);
  }

  return result;
}

uint64_t ViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D22924(0, &qword_27CBA4DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D2272C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5E738();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v12 = v15[2];
    v13 = v16;
    *a2 = v15[1];
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D22924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D2272C();
    v7 = a3(a1, &type metadata for ViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D22A60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217D22308();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ViewEvent()
{
  result = qword_2811BCFD8;
  if (!qword_2811BCFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217D22B48()
{
  sub_217D22308();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_217D22BD8()
{
  result = qword_27CBA4DE8;
  if (!qword_27CBA4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DE8);
  }

  return result;
}

unint64_t sub_217D22C30()
{
  result = qword_27CBA4DF0;
  if (!qword_27CBA4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DF0);
  }

  return result;
}

unint64_t sub_217D22C88()
{
  result = qword_27CBA4DF8;
  if (!qword_27CBA4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4DF8);
  }

  return result;
}

NewsAnalytics::TextSize_optional __swiftcall TextSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_217D22D38(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TextSize.rawValue.getter();
  v4 = v3;
  if (v2 == TextSize.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217D22DD8()
{
  result = qword_27CBA4E00;
  if (!qword_27CBA4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E00);
  }

  return result;
}

uint64_t sub_217D22E2C()
{
  v1 = *v0;
  sub_217D89E1C();
  TextSize.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D22E94()
{
  v2 = *v0;
  TextSize.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217D22EF8()
{
  v1 = *v0;
  sub_217D89E1C();
  TextSize.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D22FD8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  sub_217D23BBC();
  v13[0] = 0;
  v13[1] = 0;
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8AA8 = result;
  return result;
}

uint64_t sub_217D231F8()
{
  v0 = sub_217D87F3C();
  __swift_allocate_value_buffer(v0, qword_2811C8B10);
  v1 = __swift_project_value_buffer(v0, qword_2811C8B10);
  v2 = *MEMORY[0x277D6D0C8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.dataType.setter(uint64_t a1)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Settings.AppIconBadge.AppIconBadgeSource.dataType.modify())()
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v0 = sub_217D87F3C();
  __swift_project_value_buffer(v0, qword_2811C8B10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_217D234C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_217D23588(uint64_t a1)
{
  if (qword_2811C8B08 != -1)
  {
    swift_once();
  }

  v2 = sub_217D87F3C();
  v3 = __swift_project_value_buffer(v2, qword_2811C8B10);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static Settings.AppIconBadge.AppIconBadgeSource.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_217AE02B0(a1, v18);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v16 == 1937204590 && v17 == 0xE400000000000000;
    if (v4 || (sub_217D89D4C() & 1) != 0)
    {

      *a2 = xmmword_217DA3B00;
      return result;
    }

    v18[0] = v16;
    v18[1] = v17;
    sub_217D237C0();
    sub_217D23814();
    if (sub_217D894CC())
    {
      v5 = sub_217D895DC();
      v6 = sub_217D23AE8(v5, v16, v17);
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = MEMORY[0x21CEACC20](v6, v8, v10, v12);
      v15 = v14;

      *a2 = v13;
      *(a2 + 8) = v15;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_217D237C0()
{
  result = qword_27CBA4E08;
  if (!qword_27CBA4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E08);
  }

  return result;
}

unint64_t sub_217D23814()
{
  result = qword_27CBA4E10;
  if (!qword_27CBA4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E10);
  }

  return result;
}

uint64_t Settings.AppIconBadge.AppIconBadgeSource.toData()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE400000000000000;
      v4 = 1937204590;
    }

    else
    {
      v5 = a1;
      result = MEMORY[0x21CEACC70](*v1);
      a1 = v5;
      v4 = 0x7972756372656DLL;
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall Settings.AppIconBadge.AppIconBadgeSource.toString()()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xE400000000000000;
      v3 = 1937204590;
    }

    else
    {
      MEMORY[0x21CEACC70](*v0);
      v3 = 0x7972756372656DLL;
      v2 = 0xE700000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _s11TeaSettings0B0C13NewsAnalyticsE12AppIconBadgeV0efG6SourceO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_217CB24AC(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_217CB24AC(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_217D89D4C();
      sub_217D23BA8(v4, v5);
      sub_217D23BA8(v2, v3);
      sub_217CB24AC(v2, v3);
      sub_217CB24AC(v4, v5);
      return v11 & 1;
    }

    sub_217D23BA8(v9, v3);
    sub_217D23BA8(v2, v3);
    sub_217CB24AC(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_217D23BA8(*a2, *(a2 + 8));
    sub_217D23BA8(v2, v3);
    sub_217CB24AC(v2, v3);
    sub_217CB24AC(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_217CB24AC(*a1, 1uLL);
  sub_217CB24AC(v4, 1uLL);
  return v6;
}

unint64_t sub_217D23AE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_217D895EC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_217D8966C();
}

uint64_t sub_217D23BA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_217D23BBC()
{
  if (!qword_2811C8A68)
  {
    sub_217A5D360();
    v0 = sub_217D87F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8A68);
    }
  }
}

uint64_t ArticleLoadData.articleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArticleLoadData.articleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D23CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044)
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

uint64_t sub_217D23D5C(uint64_t a1)
{
  v2 = sub_217D23F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D23D98(uint64_t a1)
{
  v2 = sub_217D23F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleLoadData.encode(to:)(void *a1)
{
  sub_217D240F8(0, &qword_2811BC770, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D23F20()
{
  result = qword_2811C6960;
  if (!qword_2811C6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6960);
  }

  return result;
}

uint64_t ArticleLoadData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D240F8(0, &qword_27CBA4E18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
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

void sub_217D240F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D23F20();
    v7 = a3(a1, &type metadata for ArticleLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D2417C(void *a1)
{
  sub_217D240F8(0, &qword_2811BC770, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D23F20();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217D242EC()
{
  result = qword_27CBA4E20;
  if (!qword_27CBA4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E20);
  }

  return result;
}

unint64_t sub_217D24344()
{
  result = qword_2811C6950;
  if (!qword_2811C6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6950);
  }

  return result;
}

unint64_t sub_217D2439C()
{
  result = qword_2811C6958;
  if (!qword_2811C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6958);
  }

  return result;
}

NewsAnalytics::EmailShareResultType_optional __swiftcall EmailShareResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_217D24464(char *a1, char *a2)
{
  if (*&aUnknown_99[8 * *a1] == *&aUnknown_99[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_217D89D4C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_217D244D0()
{
  result = qword_27CBA4E28;
  if (!qword_27CBA4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E28);
  }

  return result;
}

uint64_t sub_217D24524()
{
  v1 = *v0;
  sub_217D89E1C();
  v2 = *&aUnknown_99[8 * v1];
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D24580()
{
  v1 = *&aUnknown_99[8 * *v0];
  sub_217D895CC();
}

uint64_t sub_217D245C0()
{
  v1 = *v0;
  sub_217D89E1C();
  v2 = *&aUnknown_99[8 * v1];
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217D24700()
{
  result = qword_27CBA4E30;
  if (!qword_27CBA4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E30);
  }

  return result;
}

uint64_t TabiRequestData.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217D889CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TabiRequestData.timedData.setter(uint64_t a1)
{
  v3 = sub_217D889CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for TabiRequestData()
{
  result = qword_2811C8D40;
  if (!qword_2811C8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabiRequestData.successful.setter(char a1)
{
  result = type metadata accessor for TabiRequestData();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TabiRequestData.init(timedData:successful:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_217D889CC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TabiRequestData();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_217D249B0()
{
  if (*v0)
  {
    result = 0x6673736563637573;
  }

  else
  {
    result = 0x74614464656D6974;
  }

  *v0;
  return result;
}

uint64_t sub_217D249F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEA00000000006C75)
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

uint64_t sub_217D24AE0(uint64_t a1)
{
  v2 = sub_217D24D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D24B1C(uint64_t a1)
{
  v2 = sub_217D24D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiRequestData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D250C4(0, &qword_2811BC730, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D24D20();
  sub_217D89E7C();
  v14[15] = 0;
  sub_217D889CC();
  sub_217D25278(&qword_2811C83F8, MEMORY[0x277CEAED0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for TabiRequestData() + 20));
    v14[14] = 1;
    sub_217D89C7C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D24D20()
{
  result = qword_2811C6090;
  if (!qword_2811C6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6090);
  }

  return result;
}

uint64_t TabiRequestData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_217D889CC();
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D250C4(0, &qword_2811BCA98, MEMORY[0x277D844C8]);
  v26 = v7;
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TabiRequestData();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D24D20();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v14;
  v16 = v23;
  v28 = 0;
  sub_217D25278(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v17 = v25;
  sub_217D89BCC();
  v18 = v21;
  (*(v16 + 32))(v21, v6, v17);
  v27 = 1;
  v19 = sub_217D89B9C();
  (*(v24 + 8))(v10, v26);
  *(v18 + *(v11 + 20)) = v19 & 1;
  sub_217D25128(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D2518C(v18);
}

void sub_217D250C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D24D20();
    v7 = a3(a1, &type metadata for TabiRequestData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D25128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabiRequestData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D2518C(uint64_t a1)
{
  v2 = type metadata accessor for TabiRequestData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D25278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217D25318()
{
  result = sub_217D889CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D253A0()
{
  result = qword_27CBA4E38;
  if (!qword_27CBA4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E38);
  }

  return result;
}

unint64_t sub_217D253F8()
{
  result = qword_2811C6080;
  if (!qword_2811C6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6080);
  }

  return result;
}

unint64_t sub_217D25450()
{
  result = qword_2811C6088;
  if (!qword_2811C6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6088);
  }

  return result;
}

uint64_t sub_217D2556C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811BE018);
  __swift_project_value_buffer(v0, qword_2811BE018);
  return sub_217D8866C();
}

uint64_t FeedLoadingSpinnerExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadingSpinnerExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadingSpinnerExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 24);
  sub_217D25828();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D25828()
{
  if (!qword_2811C84E8)
  {
    sub_217A5B978();
    sub_217A5BA2C();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C84E8);
    }
  }
}

uint64_t FeedLoadingSpinnerExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadingSpinnerExposureEvent(0) + 24);
  sub_217D25828();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadingSpinnerExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedLoadingSpinnerExposureEvent(0);
  v5 = *(v4 + 20);
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217D25828();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_217D25AA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.init(eventData:timedData:feedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  v12 = *(v11 + 20);
  v13 = sub_217D889CC();
  result = (*(*(v13 - 8) + 32))(a4 + v12, a2, v13);
  v15 = a4 + *(v11 + 24);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  return result;
}

uint64_t sub_217D25C7C()
{
  v1 = 0x74614464656D6974;
  if (*v0 != 1)
  {
    v1 = 0x6174614464656566;
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

uint64_t sub_217D25CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217D26AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217D25D00(uint64_t a1)
{
  v2 = sub_217D25FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D25D3C(uint64_t a1)
{
  v2 = sub_217D25FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D2651C(0, &qword_27CBA4E40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D25FF0();
  sub_217D89E7C();
  v19 = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
    v13 = *(v12 + 20);
    v19 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = v3 + *(v12 + 24);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v19 = *v14;
    v20 = v15;
    v21 = v16;
    v18[7] = 2;
    sub_217A5BA2C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217D25FF0()
{
  result = qword_27CBA4E48;
  if (!qword_27CBA4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E48);
  }

  return result;
}

uint64_t FeedLoadingSpinnerExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_217D889CC();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_217D8899C();
  v30 = *(v36 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D2651C(0, &qword_27CBA4E50, MEMORY[0x277D844C8]);
  v35 = v10;
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D25FF0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v14;
  v28 = a1;
  v19 = v17;
  v21 = v31;
  v20 = v32;
  v22 = v33;
  v37 = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v30 + 32))(v19, v34, v36);
  v37 = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v20 + 32))(v19 + *(v27 + 20), v7, v22);
  v39 = 2;
  sub_217A5B978();
  sub_217D89BCC();
  v23 = v28;
  (*(v21 + 8))(v13, v35);
  v24 = v19 + *(v27 + 24);
  *v24 = v37;
  *(v24 + 8) = v38;
  sub_217D26580(v19, v29);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_217D265E4(v19);
}

void sub_217D2651C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D25FF0();
    v7 = a3(a1, &type metadata for FeedLoadingSpinnerExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D26580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D265E4(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadingSpinnerExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D26718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217D25828();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217D26840()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217D25828();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217D26904()
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

unint64_t sub_217D269A4()
{
  result = qword_27CBA4E68;
  if (!qword_27CBA4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E68);
  }

  return result;
}

unint64_t sub_217D269FC()
{
  result = qword_27CBA4E70;
  if (!qword_27CBA4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E70);
  }

  return result;
}

unint64_t sub_217D26A54()
{
  result = qword_27CBA4E78;
  if (!qword_27CBA4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4E78);
  }

  return result;
}

uint64_t sub_217D26AA8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
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

uint64_t sub_217D26C98()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4E80);
  __swift_project_value_buffer(v0, qword_27CBA4E80);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.feedGroupLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.feedGroupLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 32);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutEvent(0);
  v5 = v4[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A608E0();
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedGroupLayoutEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent.Model(0) + 24));
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
  return sub_217AF7618(v17, &v16);
}