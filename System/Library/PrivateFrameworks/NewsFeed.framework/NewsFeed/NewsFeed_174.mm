uint64_t sub_1D6B35BEC(uint64_t a1)
{
  result = sub_1D5BEAA44(qword_1EDF0CB00, type metadata accessor for PluginGroupLayoutFactory.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B35C6C()
{
  result = qword_1EDF11FD8;
  if (!qword_1EDF11FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FD8);
  }

  return result;
}

uint64_t sub_1D6B35CC8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B35840(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B35D2C()
{
  if (!qword_1EDF1B4C8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B4C8);
    }
  }
}

void sub_1D6B35D7C()
{
  if (!qword_1EDF11FE0)
  {
    type metadata accessor for PluginLayout.Context(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF11FE0);
    }
  }
}

void sub_1D6B35DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6B35E54(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B35EF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B35E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6B35EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PluginLayout;
    v8[1] = &type metadata for PluginLayout.Attributes;
    v8[2] = sub_1D6B35C6C();
    v8[3] = sub_1D6B35A0C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

NewsFeed::FormatArticleStoryType_optional __swiftcall FormatArticleStoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatArticleStoryType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C616D726F6ELL;
  v3 = 0x69706F6C65766564;
  v4 = 0x64657461647075;
  if (v1 != 4)
  {
    v4 = 0x6C61636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79726F7453706F74;
  if (v1 != 1)
  {
    v5 = 0x676E696B61657262;
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

unint64_t sub_1D6B36098()
{
  result = qword_1EC8921B8;
  if (!qword_1EC8921B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921B8);
  }

  return result;
}

uint64_t sub_1D6B360F4()
{
  sub_1D72621EC();
}

void sub_1D6B361F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C616D726F6ELL;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69706F6C65766564;
  v7 = 0xE700000000000000;
  v8 = 0x64657461647075;
  if (v2 != 4)
  {
    v8 = 0x6C61636F6CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x79726F7453706F74;
  if (v2 != 1)
  {
    v9 = 0x676E696B61657262;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
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

unint64_t sub_1D6B362B0(void *a1)
{
  a1[1] = sub_1D5CE4714();
  a1[2] = sub_1D6B362E8();
  result = sub_1D6B36098();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B362E8()
{
  result = qword_1EDF0DB80;
  if (!qword_1EDF0DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB80);
  }

  return result;
}

unint64_t sub_1D6B36408()
{
  result = qword_1EDF28AC0;
  if (!qword_1EDF28AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28AC0);
  }

  return result;
}

uint64_t FCSportsLeagueType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      return 0x69737365666F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    if (a1 == 2)
    {
      return 0x6567656C6C6F63;
    }

    return 0x6E776F6E6B6E75;
  }

  return 0x6C616E6F6974616ELL;
}

uint64_t sub_1D6B364E8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (v1 == 1)
    {
      return 0x69737365666F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    if (v1 == 2)
    {
      return 0x6567656C6C6F63;
    }

    return 0x6E776F6E6B6E75;
  }

  return 0x6C616E6F6974616ELL;
}

uint64_t sub_1D6B36578()
{
  v0 = sub_1D725C42C();
  __swift_allocate_value_buffer(v0, qword_1EC9BAB18);
  __swift_project_value_buffer(v0, qword_1EC9BAB18);
  return sub_1D725C40C();
}

uint64_t FormatColorAndExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  result = FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v2)
  {
    return FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6B366AC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v7[7] = *v2;
  return sub_1D62B81BC(a1, v7);
}

uint64_t _s8NewsFeed24FormatColorAndExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatColorExpression.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatColorExpression.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6B367C0(uint64_t a1)
{
  result = sub_1D6B367E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B367E8()
{
  result = qword_1EC8921C0;
  if (!qword_1EC8921C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921C0);
  }

  return result;
}

unint64_t sub_1D6B3683C(void *a1)
{
  a1[1] = sub_1D667F91C();
  a1[2] = sub_1D66FFF08();
  result = sub_1D6B36874();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B36874()
{
  result = qword_1EC8921C8;
  if (!qword_1EC8921C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921C8);
  }

  return result;
}

uint64_t sub_1D6B368C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 16))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6B36924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FormatGroupCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    sub_1D5C8F9E0();
    v11 = v10;
    v18 = *(v10 - 8);
    sub_1D5C5DC00(v9 + *(v18 + 72) * v8, a3);
    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    sub_1D5C8F9E0();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

char *FormatGroupCollection.columns.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D5C104B8(*(v1 + 16), 0);
  v4 = sub_1D5E2A8C4(&v6, v3 + 32, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_1D5B87E38();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D5E239F4(&v6);

  return v6;
}

uint64_t FormatGroupCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5C509A4(0, &qword_1EDF1B380, MEMORY[0x1E69E62F8]);
  sub_1D5C8FA3C(&qword_1EDF050E0, &qword_1EDF12410);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatGroupCollection __swiftcall FormatGroupCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2B93C(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D5C2BD7C(v2);
  *v1 = v2;
  v1[1] = v4;
  v1[2] = v3;
  result.groupsByIdentifier._rawValue = v6;
  result.groupsByColumn._rawValue = v5;
  result.groups._rawValue = v4;
  return result;
}

void *sub_1D6B36D18@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2B93C(MEMORY[0x1E69E7CC0]);
  result = sub_1D5C2BD7C(v2);
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

__n128 sub_1D6B36D64(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CF3D6C(a1, v7, *v2);
  return result;
}

NewsFeed::FormatFlexBoxNodeDirection_optional __swiftcall FormatFlexBoxNodeDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFlexBoxNodeDirection.rawValue.getter()
{
  v1 = 7827314;
  v2 = 0x6E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 0x65526E6D756C6F63;
  }

  if (*v0)
  {
    v1 = 0x7265766552776F72;
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

unint64_t sub_1D6B36EB4()
{
  result = qword_1EDF233E0;
  if (!qword_1EDF233E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233E0);
  }

  return result;
}

uint64_t sub_1D6B36F08()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B36FD0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B37084()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B37154(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827314;
  v4 = 0xE600000000000000;
  v5 = 0x6E6D756C6F63;
  if (*v1 != 2)
  {
    v5 = 0x65526E6D756C6F63;
    v4 = 0xED00006573726576;
  }

  if (*v1)
  {
    v3 = 0x7265766552776F72;
    v2 = 0xEA00000000006573;
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

unint64_t sub_1D6B371D8(uint64_t a1)
{
  result = sub_1D666621C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B37204()
{
  result = qword_1EC8921D0;
  if (!qword_1EC8921D0)
  {
    sub_1D6B3725C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921D0);
  }

  return result;
}

void sub_1D6B3725C()
{
  if (!qword_1EC8921D8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8921D8);
    }
  }
}

unint64_t sub_1D6B372BC(void *a1)
{
  a1[1] = sub_1D6B372F4();
  a1[2] = sub_1D6B37348();
  result = sub_1D6B36EB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B372F4()
{
  result = qword_1EDF233D0;
  if (!qword_1EDF233D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233D0);
  }

  return result;
}

unint64_t sub_1D6B37348()
{
  result = qword_1EDF233E8;
  if (!qword_1EDF233E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233E8);
  }

  return result;
}

unint64_t sub_1D6B3745C()
{
  result = qword_1EDF233D8;
  if (!qword_1EDF233D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233D8);
  }

  return result;
}

uint64_t sub_1D6B374C0(void *a1)
{
  v3 = v1;
  sub_1D6B3B1FC(0, &qword_1EC892298, sub_1D6B3B1A8, &type metadata for G_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B3B1A8();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6863748();
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5EF9DFC(&qword_1EC880BB0, sub_1D5EF9E8C);
    sub_1D726443C();
    *&v13[0] = *(v3 + 40);
    v14 = 2;
    sub_1D6862D98(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    sub_1D6863644(&qword_1EC88CFF0, sub_1D6863748);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B37794(uint64_t a1)
{
  v2 = sub_1D6B3B1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B377D0(uint64_t a1)
{
  v2 = sub_1D6B3B1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B3780C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6B3AE30(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D6B37868()
{
  sub_1D6B3AA54();

  return sub_1D725A24C();
}

uint64_t sub_1D6B378E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6B3AD94(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6B3B1FC(0, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  v3 = sub_1D7259F9C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_1D6B379E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v60 = &type metadata for G_V1;
  v42 = sub_1D5ECE1E4();
  v61 = v42;
  v57[0] = v17;
  v58 = v18;
  v59 = v19;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for G_V1.Bound();
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6B3A98C(&qword_1EC8921F0, type metadata accessor for G_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for G_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  result = sub_1D6C54CFC(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = result;
  return result;
}

uint64_t sub_1D6B37E78@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for G_V1.Bound();
  v9 = *(v2 + *(v8 + 28));
  v30 = v2;
  v10 = sub_1D5ECA874(sub_1D6B3A9D4, v29, v9);
  v11 = v2 + *(v8 + 24);
  v12 = *(v11 + *(type metadata accessor for GroupLayoutContext() + 24) + 24);
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v26 = v10;
  v27 = v2;
  v28 = v12;
  sub_1D6B3AB90(0, &qword_1EC892210, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v24[2] = sub_1D725A4CC();
  v15 = sub_1D725A4DC();
  v24[1] = v24;
  v36 = v33;
  v37 = v34;
  v35 = v32;
  v38 = v34;
  v39 = v10;
  v31 = v34;
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = MEMORY[0x1E69E62F8];
  sub_1D5EF985C(0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17);
  sub_1D5BD4A40(&qword_1EDF04EC0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
  sub_1D5BD4A40(&qword_1EDF04ED8, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes);

  v18 = sub_1D725C00C();
  sub_1D6862D38(&v38, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17, sub_1D5EF985C);

  v19 = v25;
  *v25 = 0;
  v20 = v33;
  *(v19 + 8) = v32;
  *(v19 + 24) = v20;
  v31 = v18;
  sub_1D5EF985C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v17);
  sub_1D5BD4A40(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v21 = sub_1D72623BC();

  sub_1D6862D38(&v38, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17, sub_1D5EF985C);
  v39 = *(&v37 + 1);
  sub_1D6862D38(&v39, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8], sub_1D6862D98);

  v23 = MEMORY[0x1E69E7CC0];
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  return result;
}

uint64_t sub_1D6B3832C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v155 = v6;
  v156 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v154 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6862D98(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v146 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v145 = &v144 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v144 - v18;
  v153 = &v144 - v18;
  v20 = a1[7];
  v178 = a1[6];
  v179[0] = v20;
  *(v179 + 9) = *(a1 + 121);
  v21 = a1[3];
  v174 = a1[2];
  v175 = v21;
  v22 = a1[5];
  v176 = a1[4];
  v177 = v22;
  v23 = a1[1];
  v172 = *a1;
  v173 = v23;
  v24 = *a2;
  sub_1D5D62850(v180);
  v25 = a2 + *(type metadata accessor for G_V1.Bound() + 24);
  v26 = type metadata accessor for GroupLayoutContext();
  v27 = *(*&v25[*(v26 + 40)] + 16);
  v28 = *&v25[*(v26 + 32)];
  sub_1D5B68374(v27 + 16, &v157);
  sub_1D5B68374(v27 + 56, &v168);
  v29 = v28 * *(v27 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v30 = swift_allocObject();
  sub_1D5B63F14(&v157, v30 + 16);
  sub_1D5B63F14(&v168, v30 + 56);
  *(v30 + 96) = v29;
  sub_1D5ECF2C4(&v172, &v160);
  FeedLayoutStylerFactory.styler()(v171);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v30 + 16);
  __swift_destroy_boxed_opaque_existential_1(v30 + 56);
  swift_deallocClassInstance();
  v31 = v176;
  v32 = a3;
  *(a3 + 88) = v177;
  v33 = v179[0];
  *(a3 + 104) = v178;
  *(a3 + 120) = v33;
  *(a3 + 129) = *(v179 + 9);
  v34 = v172;
  *(a3 + 24) = v173;
  v35 = v175;
  *(a3 + 40) = v174;
  *(a3 + 56) = v35;
  *(a3 + 72) = v31;
  *(a3 + 8) = v34;
  v36 = v180[4];
  *(a3 + 232) = v180[5];
  v37 = v181[0];
  *(a3 + 248) = v180[6];
  *(a3 + 264) = v37;
  *(a3 + 273) = *(v181 + 9);
  v38 = v180[0];
  *(a3 + 168) = v180[1];
  v39 = v180[3];
  *(a3 + 184) = v180[2];
  *(a3 + 200) = v39;
  *(a3 + 216) = v36;
  *a3 = v24;
  *(a3 + 152) = v38;
  sub_1D5B68374(v171, a3 + 296);
  sub_1D5B68374(v171, &v168);
  v151 = *(v7 + 56);
  v152 = v7 + 56;
  v151(v19, 1, 1, v6);
  v40 = swift_allocObject();
  v41 = v179[0];
  v40[7] = v178;
  v40[8] = v41;
  *(v40 + 137) = *(v179 + 9);
  v42 = v175;
  v40[3] = v174;
  v40[4] = v42;
  v43 = v177;
  v40[5] = v176;
  v40[6] = v43;
  v44 = v173;
  v40[1] = v172;
  v40[2] = v44;
  sub_1D6862D98(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v147 = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  sub_1D5ECF2C4(&v172, &v157);

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v154;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = v155;
  v54 = *(v156 + 32);
  v156 += 32;
  v149 = v54;
  v54(&v46[v52], v51, v155);
  v148 = objc_opt_self();
  LOBYTE(v51) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v46[qword_1EDF347F8] = v51;
  v55 = v153;
  sub_1D5DF42F8(v153, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v40;
  v56[4] = v50;
  *(v46 + 3) = sub_1D5EF97B4;
  *(v46 + 4) = v56;
  v32[42] = v46;
  sub_1D5B68374(v171, &v168);
  v151(v55, 1, 1, v53);
  v57 = swift_allocObject();
  v58 = v179[0];
  v57[7] = v178;
  v57[8] = v58;
  *(v57 + 137) = *(v179 + 9);
  v59 = v175;
  v57[3] = v174;
  v57[4] = v59;
  v60 = v177;
  v57[5] = v176;
  v57[6] = v60;
  v61 = v173;
  v57[1] = v172;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v154;
  sub_1D725890C();
  v68 = v155;
  v149(&v62[*(*v62 + 128)], v67, v155);
  LOBYTE(v67) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v153, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D5EF9FF8;
  *(v62 + 4) = v69;
  v150 = v32;
  v32[43] = v62;
  sub_1D5B68374(v171, &v157);
  v151(v145, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v179[0];
  v70[7] = v178;
  v70[8] = v71;
  *(v70 + 137) = *(v179 + 9);
  v72 = v175;
  v70[3] = v174;
  v70[4] = v72;
  v73 = v177;
  v70[5] = v176;
  v70[6] = v73;
  v74 = v173;
  v70[1] = v172;
  v70[2] = v74;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v158;
  v76 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v177 == 1 || !v178)
  {
    v78 = v172;
    sub_1D5ECF2C4(&v172, &v160);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v172, &v160);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v154;
  sub_1D725890C();
  v86 = v155;
  v149(&v75[*(*v75 + 128)], v85, v155);
  LOBYTE(v85) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v145, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D5EF9FF8;
  *(v75 + 4) = v87;
  v150[44] = v75;
  sub_1D5B68374(v171, &v157);
  v151(v146, 1, 1, v86);
  v88 = swift_allocObject();
  v89 = v179[0];
  v88[7] = v178;
  v88[8] = v89;
  *(v88 + 137) = *(v179 + 9);
  v90 = v175;
  v88[3] = v174;
  v88[4] = v90;
  v91 = v177;
  v88[5] = v176;
  v88[6] = v91;
  v92 = v173;
  v88[1] = v172;
  v88[2] = v92;
  v93 = swift_allocObject();
  *(v93 + 2) = 0xC04E000000000000;
  v94 = BYTE8(v173);
  v95 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v94 == 2)
  {
    LOBYTE(v168) = 2;
    sub_1D5ECF2C4(&v172, &v160);
    v96 = sub_1D6CAFB7C();
    v97 = (*(v95 + 96))(v96);
  }

  else
  {
    LOBYTE(v168) = v94;
    sub_1D5ECF2C4(&v172, &v160);
    v98 = sub_1D6CAFB7C();
    v97 = (*(v95 + 104))(v98);
  }

  v99 = v97;

  *&v93[*(*v93 + 120)] = v99;
  *&v93[*(*v93 + 136)] = v99;
  v100 = v99;
  v101 = v154;
  sub_1D725890C();
  v102 = v101;
  v103 = v155;
  v149(&v93[*(*v93 + 128)], v102, v155);
  v104 = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v93[qword_1EDF347F8] = v104;
  sub_1D5DF42F8(v146, &v93[qword_1EDF347F0]);
  v105 = swift_allocObject();
  v105[2] = sub_1D5EF97D0;
  v105[3] = v88;
  v105[4] = v100;
  *(v93 + 3) = sub_1D5EF9FF8;
  *(v93 + 4) = v105;
  v150[45] = v93;
  sub_1D5B68374(v171, &v160);
  v151(v153, 1, 1, v103);
  v106 = swift_allocObject();
  *(v106 + 2) = 0xC04E000000000000;
  v107 = *(&v161 + 1);
  v108 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v146 = ObjCClassFromMetadata;
  v145 = objc_opt_self();
  v110 = [v145 bundleForClass_];
  sub_1D725811C();

  v111 = sub_1D726213C();
  v113 = v112;

  v114 = (*(v108 + 112))(v111, v113, v107, v108);

  *&v106[*(*v106 + 120)] = v114;
  *&v106[*(*v106 + 136)] = v114;
  v115 = v114;
  v116 = v154;
  sub_1D725890C();
  v117 = v155;
  v149(&v106[*(*v106 + 128)], v116, v155);
  LOBYTE(v116) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v106[qword_1EDF347F8] = v116;
  v118 = v153;
  sub_1D5DF42F8(v153, &v106[qword_1EDF347F0]);
  v119 = swift_allocObject();
  v119[2] = sub_1D6EAD6D0;
  v119[3] = 0;
  v119[4] = v115;
  *(v106 + 3) = sub_1D5EF9FF8;
  *(v106 + 4) = v119;
  v150[46] = v106;
  sub_1D5B68374(v171, &v160);
  v151(v118, 1, 1, v117);
  v120 = swift_allocObject();
  *(v120 + 2) = 0xC04E000000000000;
  v121 = *(&v161 + 1);
  v122 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  v123 = [v145 bundleForClass_];
  sub_1D725811C();

  v124 = sub_1D726213C();
  v126 = v125;

  v127 = (*(v122 + 120))(v124, v126, v121, v122);

  *&v120[*(*v120 + 120)] = v127;
  *&v120[*(*v120 + 136)] = v127;
  v128 = v127;
  v129 = v154;
  sub_1D725890C();
  v130 = v155;
  v131 = v149;
  v149(&v120[*(*v120 + 128)], v129, v155);
  v132 = v148;
  LOBYTE(v124) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v120[qword_1EDF347F8] = v124;
  v133 = v153;
  sub_1D5DF42F8(v153, &v120[qword_1EDF347F0]);
  v134 = swift_allocObject();
  v134[2] = sub_1D6EAD7F8;
  v134[3] = 0;
  v134[4] = v128;
  *(v120 + 3) = sub_1D5EF9FF8;
  *(v120 + 4) = v134;
  v150[47] = v120;
  sub_1D5B68374(v171, &v157);
  v151(v133, 1, 1, v130);
  v135 = swift_allocObject();
  v136 = v179[0];
  v135[7] = v178;
  v135[8] = v136;
  *(v135 + 137) = *(v179 + 9);
  v137 = v175;
  v135[3] = v174;
  v135[4] = v137;
  v138 = v177;
  v135[5] = v176;
  v135[6] = v138;
  v139 = v173;
  v135[1] = v172;
  v135[2] = v139;
  sub_1D5EF97E0();
  v140 = swift_allocObject();
  *(v140 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v172, &v160);
  sub_1D6EAD930(&v172, &v160);
  sub_1D5ECF320(&v172);
  v141 = v160;
  *&v140[*(*v140 + 120)] = v160;
  *&v140[*(*v140 + 136)] = v141;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v131(&v140[*(*v140 + 128)], v129, v130);
  LOBYTE(v133) = [v132 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v140[qword_1EDF347F8] = v133;
  sub_1D5DF42F8(v153, &v140[qword_1EDF347F0]);
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1D5EF97D8;
  *(v142 + 24) = v135;
  *(v142 + 32) = v141;
  *(v140 + 3) = sub_1D5EF98AC;
  *(v140 + 4) = v142;
  result = __swift_destroy_boxed_opaque_existential_1(v171);
  v150[48] = v140;
  return result;
}

uint64_t sub_1D6B395B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D6B3B1FC(0, &qword_1EC892228, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v22[-v13];
  v26 = a1;
  (*(v10 + 104))(&v22[-v13], *MEMORY[0x1E69D74A8], v9, v12);
  sub_1D6B3AAB0();
  sub_1D6B3B1FC(0, &qword_1EC892238, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69D7098], v16);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v20 = MEMORY[0x1E69D7150];
  sub_1D6B3AB90(0, &qword_1EC892240, MEMORY[0x1E69D7150]);
  sub_1D6B3AB4C(&qword_1EC892248, &qword_1EC892240, v20);
  sub_1D72599EC();

  return (*(v10 + 8))(v14, v9);
}

void sub_1D6B39874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v114 = a3;
  v135 = a1;
  sub_1D6B3B1FC(0, &qword_1EC892228, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D74B0]);
  v134 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v129 = (&v97 - v8);
  v113 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v113, v9);
  v112 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a2 + 16);
  if (v115)
  {
    v12 = 0;
    v110 = &v139[13];
    v111 = a2 + 32;
    v109 = (v10 + 104);
    v133 = (v6 + 104);
    v132 = (v6 + 8);
    v100 = v115 - 1;
    v108 = *MEMORY[0x1E69D7378];
    v107 = v116 + 56;
    v13 = *MEMORY[0x1E69D71F0];
    v105 = *MEMORY[0x1E69D7208];
    v106 = v13;
    v14 = *MEMORY[0x1E69D7468];
    v103 = *MEMORY[0x1E69D7050];
    v104 = v14;
    v102 = *MEMORY[0x1E69D7080];
    v124 = *MEMORY[0x1E69D7480];
    v99 = *MEMORY[0x1E69D6FD0];
    v98 = *MEMORY[0x1E69D6FB8];
    v101 = xmmword_1D7273AE0;
    v97 = xmmword_1D7270C10;
    while (1)
    {
      *v138 = v12;
      sub_1D5EF92B8(v111 + 392 * v12, &v138[8]);
      if (!*&v138[8])
      {
        return;
      }

      v19 = *v138;
      v136 = *(v139 + 8);
      v20 = *(&v139[14] + 8);
      v21 = *(&v139[15] + 8);
      v22 = *(&v139[16] + 8);
      v23 = *(&v139[17] + 8);
      v24 = *(&v139[18] + 8);
      v25 = *(&v139[19] + 8);
      v26 = *(&v139[20] + 8);
      *v138 = *&v138[8];
      *&v138[16] = *&v138[24];
      *&v138[32] = *&v138[40];
      *&v138[48] = *&v139[0];
      v139[0] = *(v139 + 8);
      v139[1] = *(&v139[1] + 8);
      v139[2] = *(&v139[2] + 8);
      v139[3] = *(&v139[3] + 8);
      v139[4] = *(&v139[4] + 8);
      v139[5] = *(&v139[5] + 8);
      v139[6] = *(&v139[6] + 8);
      v139[7] = *(&v139[7] + 8);
      v139[8] = *(&v139[8] + 8);
      v139[9] = *(&v139[9] + 8);
      v139[10] = *(&v139[10] + 8);
      v139[11] = *(&v139[11] + 8);
      v139[12] = *(&v139[12] + 8);
      v27 = v110;
      *v110 = *(&v139[13] + 8);
      v27[1] = v20;
      v27[2] = v21;
      v27[3] = v22;
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v27[7] = v26;
      v28 = v114 + *(type metadata accessor for G_V1.Bound() + 24);
      v127 = v19;
      v128 = v12;
      v123 = v28;
      if ((v136 & 0x10) == 0)
      {
        break;
      }

      v31 = sub_1D7259EBC();
      v32 = [v31 userInterfaceIdiom];

      v33 = v32 + 1;
      if ((v32 + 1) >= 7 || ((0x5Fu >> v33) & 1) == 0)
      {
        LODWORD(v96) = 0;
        v95 = 53;
        sub_1D726402C();
        __break(1u);
        return;
      }

      v34 = dbl_1D7325028[v33];
      v35 = type metadata accessor for GroupLayoutContext();
      v36 = *(*(v28 + *(v35 + 40)) + 24);
      v38 = MEMORY[0x1EEE9AC00](v35, v37);
      *(&v97 - 4) = v138;
      *(&v97 - 3) = v36;
      v95 = v39;
      (*v109)(v112, v108, v113, v38);
      sub_1D5EF94BC();
      swift_allocObject();

LABEL_17:
      *&v136 = sub_1D725A4CC();

      v137 = v135;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444();
      v45 = v44;
      v46 = swift_allocBox();
      v48 = v47;
      v49 = *(v45 + 48);
      v50 = swift_allocObject();
      *(v50 + 16) = v34;
      *v48 = v50;
      v51 = sub_1D725A09C();
      v52 = *(*(v51 - 8) + 104);
      v52(v48, v106, v51);
      v52((v48 + v49), v105, v51);
      v53 = v129;
      *v129 = v46;
      v54 = v134;
      v126 = *v133;
      v126(v53, v104, v134);
      sub_1D6B3AAB0();
      v56 = v55;
      sub_1D6B3B1FC(0, &qword_1EC892238, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D70D8]);
      v58 = v57;
      v59 = *(v57 - 8);
      v60 = *(v59 + 72);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v119 = *(v59 + 80);
      v120 = v60;
      v121 = v56;
      v62 = swift_allocObject();
      *(v62 + 16) = v101;
      sub_1D6B3B1FC(0, &qword_1EC892250, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v63 - 8) + 104))(v62 + v61, v103, v63);
      v64 = *(v59 + 104);
      v117 = v61;
      v118 = v64;
      v122 = v58;
      v64(v62 + v61, v102, v58);
      v65 = MEMORY[0x1E69D6F38];
      sub_1D6B3AB90(0, &qword_1EC892258, MEMORY[0x1E69D6F38]);
      v67 = v66;
      v68 = sub_1D6B3AB4C(&qword_1EC892260, &qword_1EC892258, v65);
      v95 = sub_1D5EF9664();
      v69 = v136;
      v130 = v67;
      v131 = v68;
      sub_1D7259A4C();

      v70 = v53;
      v71 = *v132;
      (*v132)(v70, v54);
      v72 = v116;
      v73 = v107;
      v74 = v127;
      if (v116)
      {
        if (v116 == 1)
        {
          if (v127 != v100)
          {
            goto LABEL_20;
          }
        }

        else if (*(v116 + 16))
        {
          v91 = sub_1D72649FC();
          v92 = -1 << *(v72 + 32);
          v93 = v91 & ~v92;
          if ((*(v73 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
          {
            v94 = ~v92;
            while (*(*(v72 + 48) + 8 * v93) != v74)
            {
              v93 = (v93 + 1) & v94;
              if (((*(v73 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

LABEL_20:
            v137 = v135;
            v75 = v135;
            v76 = swift_allocObject();
            *&v136 = v69;
            *(v76 + 16) = 0x4034000000000000;
            v77 = v129;
            *v129 = v76;
            v78 = v134;
            v79 = v126;
            v126(v77, v124, v134);
            sub_1D7259A9C();
            KeyPath = v71;
            v71(v77, v78);
            v137 = v75;
            swift_getKeyPath();
            v80 = swift_allocObject();
            sub_1D7259F1C();
            *(v80 + 16) = 1.0 / v81;
            *v77 = v80;
            v79(v77, v124, v78);
            v82 = v120;
            v83 = v117;
            v84 = swift_allocObject();
            *(v84 + 16) = v97;
            v85 = v84 + v83;
            sub_1D725A28C();
            v86 = v122;
            v87 = v118;
            v118(v85, v99, v122);
            v87(v85 + v82, v98, v86);
            sub_1D6B3A98C(&qword_1EDF17FF0, sub_1D6862F68);
            sub_1D7259A7C();

            v88 = v134;
            v89 = KeyPath;
            KeyPath(v77, v134);
            v137 = v135;
            v90 = swift_allocObject();
            *(v90 + 16) = 0x4034000000000000;
            *v77 = v90;
            v79(v77, v124, v88);
            sub_1D7259A9C();

            v89(v77, v88);
            goto LABEL_4;
          }
        }
      }

LABEL_3:
      v15 = v135;
      v137 = v135;
      swift_getKeyPath();
      sub_1D6B3AA00();
      v16 = v129;
      sub_1D725A51C();
      sub_1D6B3A98C(&qword_1EDF17FF0, sub_1D6862F68);
      sub_1D7259A7C();

      v17 = v134;
      v71(v16, v134);
      v137 = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = 0x403E000000000000;
      *v16 = v18;
      v126(v16, v124, v17);
      sub_1D7259A9C();

      v71(v16, v17);
LABEL_4:
      sub_1D5EF93F0(v138);
      v12 = v128 + 1;
      if (v128 + 1 == v115)
      {
        return;
      }
    }

    sub_1D7259E6C();
    if (v29 <= 703.0)
    {
      v30 = 0x4061800000000000;
    }

    else if (v29 < 703.0 || v29 > 818.0)
    {
      if (v29 < 818.0 || v29 > 1111.0)
      {
        if (v29 < 1111.0)
        {
          v34 = 140.0;
        }

        else
        {
          v34 = 220.0;
        }

        goto LABEL_16;
      }

      v30 = 0x4069000000000000;
    }

    else
    {
      v30 = 0x4067200000000000;
    }

    v34 = *&v30;
LABEL_16:
    v40 = type metadata accessor for GroupLayoutContext();
    v41 = *(*(v28 + *(v40 + 40)) + 24);
    v43 = MEMORY[0x1EEE9AC00](v40, v42);
    v95 = v138;
    v96 = v41;
    (*v109)(v112, v108, v113, v43);
    sub_1D5EF94BC();
    swift_allocObject();

    goto LABEL_17;
  }
}

uint64_t sub_1D6B3A5E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_1D5EF92B8(a2, v13 + 16);
  memcpy((v13 + 408), a3, 0x180uLL);
  v14 = a4 + *(type metadata accessor for G_V1.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v16 = *(v14 + *(result + 28));
  v17 = __OFADD__(v16, a1);
  v18 = v16 + a1;
  if (v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v13 + 792) = v18;
  *(v12 + 16) = v13 | 0x5000000000000000;
  sub_1D6862D98(0, &qword_1EDF19A20, type metadata accessor for FeedItemSupplementaryAttributes, MEMORY[0x1E69E6F90]);
  v19 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(a5 + 40);
  if (*(v21 + 16) > a1)
  {
    v22 = result;
    v23 = v21 + 32 * a1;
    v24 = *(v23 + 48);
    v25 = (result + v20);
    *v25 = *(v23 + 32);
    v25[1] = v24;
    result = swift_storeEnumTagMultiPayload();
    *(v12 + 24) = v22;
    *a6 = v12 | 0xB000000000000000;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D6B3A7E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B3A818();
  result = sub_1D6B3A86C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B3A818()
{
  result = qword_1EC8921E0;
  if (!qword_1EC8921E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921E0);
  }

  return result;
}

unint64_t sub_1D6B3A86C()
{
  result = qword_1EC8921E8;
  if (!qword_1EC8921E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921E8);
  }

  return result;
}

uint64_t type metadata accessor for G_V1.Bound()
{
  result = qword_1EC8921F8;
  if (!qword_1EC8921F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B3A934(uint64_t a1)
{
  result = sub_1D6B3A98C(&qword_1EC892208, type metadata accessor for G_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6B3A98C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6B3AA00()
{
  result = qword_1EC892218;
  if (!qword_1EC892218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892218);
  }

  return result;
}

unint64_t sub_1D6B3AA54()
{
  result = qword_1EC892220;
  if (!qword_1EC892220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892220);
  }

  return result;
}

void sub_1D6B3AAB0()
{
  if (!qword_1EC892230)
  {
    sub_1D6B3B1FC(255, &qword_1EC892238, sub_1D6B3AA00, &type metadata for G_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892230);
    }
  }
}

uint64_t sub_1D6B3AB4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B3AB90(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B3AB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for G_V1.Layout;
    v8[1] = &type metadata for G_V1.Layout.Attributes;
    v8[2] = sub_1D6B3AA00();
    v8[3] = sub_1D6B3AA54();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6B3AC38()
{
  result = qword_1EC892268;
  if (!qword_1EC892268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892268);
  }

  return result;
}

unint64_t sub_1D6B3AC90()
{
  result = qword_1EC892270;
  if (!qword_1EC892270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892270);
  }

  return result;
}

unint64_t sub_1D6B3ACE8()
{
  result = qword_1EC892278;
  if (!qword_1EC892278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892278);
  }

  return result;
}

unint64_t sub_1D6B3AD40()
{
  result = qword_1EC892280;
  if (!qword_1EC892280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892280);
  }

  return result;
}

void sub_1D6B3AD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1D6B3A98C(&unk_1EDF1A748, type metadata accessor for CGRect);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6B3AE30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B3B1FC(0, &qword_1EC892288, sub_1D6B3B1A8, &type metadata for G_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B3B1A8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  type metadata accessor for CGRect(0);
  v22 = 0;
  sub_1D6863610();
  v11 = v19;
  sub_1D726431C();
  v17 = v21;
  v18 = v20;
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v22 = 1;
  sub_1D5EF9DFC(&qword_1EDF04ED0, sub_1D5EF9D40);
  sub_1D726431C();
  v12 = v10;
  v13 = v20;
  sub_1D6862D98(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
  v22 = 2;
  sub_1D6863644(&qword_1EDF049B0, sub_1D6863610);
  sub_1D726431C();
  (*(v12 + 8))(v9, v11);
  v14 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v17;
  *a2 = v18;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_1D6B3B1A8()
{
  result = qword_1EC892290;
  if (!qword_1EC892290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892290);
  }

  return result;
}

void sub_1D6B3B1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6B3B278()
{
  result = qword_1EC8922A0;
  if (!qword_1EC8922A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922A0);
  }

  return result;
}

unint64_t sub_1D6B3B2D0()
{
  result = qword_1EC8922A8;
  if (!qword_1EC8922A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922A8);
  }

  return result;
}

unint64_t sub_1D6B3B328()
{
  result = qword_1EC8922B0;
  if (!qword_1EC8922B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922B0);
  }

  return result;
}

uint64_t FeedCachePolicy.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x4F20646568636143;
    }

    else
    {
      return 0x746C7561666544;
    }
  }

  else
  {
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x78614D2074666F53, 0xEE00202C65674120);
    sub_1D7262ABC();
    return 0;
  }
}

uint64_t *FormatServiceCachePolicy.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3)
  {
    v2 = *result != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

_BYTE *FormatServiceCachePolicy.init(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = 0x4122750000000000;
  if (v2 == 1)
  {
    v3 = 1;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (*result)
  {
    v2 = v3;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t static FeedCachePolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t sub_1D6B3B510(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t sub_1D6B3B580(void *a1)
{
  v3 = v1;
  sub_1D6B40088(0, &qword_1EC892368, sub_1D6B40034, &type metadata for A18_V10.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B40034();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6B400F0(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B3B7C8(uint64_t a1)
{
  v2 = sub_1D6B40034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B3B804(uint64_t a1)
{
  v2 = sub_1D6B40034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B3B840@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B3FD94(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6B3B8A0()
{
  sub_1D6B3F9F4();

  return sub_1D725A24C();
}

uint64_t sub_1D6B3B91C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6B40088(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6B3B9D8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v118 = a2;
  v135 = a1;
  v107 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = &v106 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for GroupLayoutContext();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v23);
  v116 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v106 - v27;
  v112 = &v106 - v27;
  v121 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121, v30);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v111 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v135, v32, type metadata accessor for GroupLayoutBindingContext);
  v113 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v118, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v110 = sub_1D725893C();
  v109 = v35;
  (*(v19 + 8))(v22, v18);
  v133 = &type metadata for A18_V10;
  v36 = sub_1D5ECE52C();
  v134 = v36;
  LOBYTE(v131) = v33;
  *(&v131 + 1) = v34;
  v132 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v124[0] = sub_1D7264C5C();
  v124[1] = v39;
  v129 = 95;
  v130 = 0xE100000000000000;
  v127 = 45;
  v128 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v116;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v109;
  *v44 = v110;
  v44[1] = v45;
  sub_1D5B68374(&v131, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v121);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v112, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v114 + 56);
  v114 = v37;
  v48(v37 + v47, 0, 1, v115);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v133 = &type metadata for A18_V10;
  v134 = v36;
  LOBYTE(v131) = v111;
  v49 = v38;
  *(&v131 + 1) = v38;
  v132 = v5;
  sub_1D5BE3ED8(v118, v43, v113);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v118 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v115 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v121[14];
    v59 = v135;
    v60 = *&v135[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v113 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v119;
        v54 = v120;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v64 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v36 + v64 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v123, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v124[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C(v66 > 1, v37 + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v123, v56 + v36 + v37 * v64, type metadata accessor for FeedHeadline);
            v54 = v120;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v135;
      if ((*v135 & 1) == 0)
      {

        v70 = sub_1D62F071C(v56);

        v56 = v70;
      }

      v43 = v116;
      v52 = MEMORY[0x1E69E7CC0];
      v71 = *&v59[v121[18]];
      v72 = *&v59[v121[19]];
      if (__OFSUB__(v71, v72))
      {
        __break(1u);
        goto LABEL_72;
      }

      v73 = sub_1D5C0FAD4(v56, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5113E20, v73, v57);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113E20, v56, v57);

        if (!v36)
        {
          v124[0] = &unk_1F5113E20;
          v4 = v108;
          sub_1D5E239F4(v124);
          if (v4)
          {
            goto LABEL_76;
          }

          if (!*(v124[0] + 2))
          {
            goto LABEL_74;
          }

          v102 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v103, "FeedHeadline");
          v103[13] = 0;
          *(v103 + 7) = -5120;
          *(v103 + 2) = 0;
          *(v103 + 3) = 0;
          *(v103 + 4) = 4;
          *(v103 + 5) = v102;
          *(v103 + 6) = 0;
          *(v103 + 7) = 0;
          v103[64] = 0;
          swift_willThrow();
          goto LABEL_65;
        }
      }

      strcpy(v124, "FeedHeadline");
      BYTE5(v124[1]) = 0;
      HIWORD(v124[1]) = -5120;
      v125 = 0;
      v126 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v124, v75);
      swift_setDeallocating();

      v56 = v113;
    }

    else
    {
      if (qword_1F5113E40)
      {
        v124[0] = &unk_1F5113E20;
        v4 = v108;
        sub_1D5E239F4(v124);
        if (v4)
        {
          goto LABEL_76;
        }

        v67 = *(v124[0] + 2);
        if (v67)
        {
          v68 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v131);
        }

        __break(1u);
LABEL_70:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v123 = v76;
    *(v76 + 16) = v52;
    v60 = (v76 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_70;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v77 = &v57[16 * v54];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v120 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
      if ((*v59 & 1) == 0)
      {

        v88 = sub_1D62F071C(v57);

        v57 = v88;
      }

      v36 = v120;
      v89 = *&v59[v121[18]];
      v90 = *&v59[v121[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_73;
      }

      v91 = sub_1D5C0FAD4(v57, v89 - v90);
      v92 = sub_1D5C11E10(&unk_1F5113E48, v91, v37);

      if (v92)
      {

        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v94 = sub_1D5C107C4(v93);

        sub_1D5BDACA8(v124, v94);
        swift_setDeallocating();

        v87 = v92;
LABEL_57:
        v43 = v116;
        goto LABEL_58;
      }

      v95 = sub_1D5C11E10(&unk_1F5113E48, v57, v37);

      if (v95)
      {
        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v97 = sub_1D5C107C4(v96);

        sub_1D5BDACA8(v124, v97);
        swift_setDeallocating();

        v87 = v95;
        goto LABEL_57;
      }

      v124[0] = &unk_1F5113E48;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_76;
      }

      v43 = v116;
      if (!*(v124[0] + 2))
      {
        goto LABEL_75;
      }

      v104 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v105, "FeedHeadline");
      v105[13] = 0;
      *(v105 + 7) = -5120;
      *(v105 + 2) = 0;
      *(v105 + 3) = 0;
      *(v105 + 4) = 0;
      *(v105 + 5) = v104;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0;
      v105[64] = 0;
      swift_willThrow();
LABEL_65:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v36 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v36 >= v55)
      {
        break;
      }

      v80 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v81 = v117;
      sub_1D5BE3ED8(v37 + v80 + v52 * v36, v117, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v81, v122, type metadata accessor for FeedHeadline);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v57;
      if ((v82 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      v54 = *(v57 + 2);
      v83 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v83 >> 1)
      {
        sub_1D5C0F91C(v83 > 1, v54 + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      ++v36;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v122, &v57[v80 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v135;
      if (v43 == v36)
      {
        goto LABEL_50;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F5113E68 || !qword_1F5113E70)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v124[0] = v36;
    sub_1D5C122E4(v87);
    v98 = v124[0];
    v99 = type metadata accessor for A18_V10.Bound();
    v100 = v107;
    v107[3] = v99;
    v100[4] = sub_1D6B400F0(&qword_1EC8922C8, type metadata accessor for A18_V10.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
    *boxed_opaque_existential_1 = v114;
    sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v99 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v99 + 28)) = v98;
    return result;
  }

  v124[0] = &unk_1F5113E48;
  v4 = v108;
  sub_1D5E239F4(v124);
  if (!v4)
  {

    if (*(v124[0] + 2))
    {
      v84 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v85, "FeedHeadline");
      v85[13] = 0;
      *(v85 + 7) = -5120;
      *(v85 + 2) = 0;
      *(v85 + 3) = 0;
      *(v85 + 4) = 0;
      *(v85 + 5) = v84;
      *(v85 + 6) = 0;
      *(v85 + 7) = 0;
      v85[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_1D6B3CC14@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V10.Bound();
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext();
  v10 = *(v8 + *(v9 + 40));
  v11 = *(v10 + 16);
  v12 = *(v8 + *(v9 + 32));
  sub_1D5B68374(v11 + 16, v47);
  sub_1D5B68374(v11 + 56, v46);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v47, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v13;
  v45[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v48);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  sub_1D5B49474(0, &qword_1EDF27C08);
  v15 = sub_1D726276C();
  *(v15 + 16) = 4;
  sub_1D5B68374(v48, v15 + 32);
  sub_1D5B68374(v48, v15 + 72);
  sub_1D5B68374(v48, v15 + 112);
  sub_1D5B63F14(v48, v15 + 152);
  v16 = *(v10 + 16);
  sub_1D5B68374(v16 + 16, v47);
  sub_1D5B68374(v16 + 56, v46);
  v17 = v12 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v47, v18 + 16);
  sub_1D5B63F14(v46, v18 + 56);
  *(v18 + 96) = v17;
  v45[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v48);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v48, *(*(v2 + *(v7 + 28)) + 16) - 4);
  *&v48[0] = v15;
  sub_1D698609C(v19);
  v20 = *&v48[0];
  v42 = v2;
  v44[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6B3F980, v44);

  if (*(v22 + 16) < 4uLL)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v23 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *MEMORY[0x1E69D7130];
    v26 = sub_1D7259D1C();
    (*(*(v26 - 8) + 104))(v6, v25, v26);
    v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v39 - 6) = v22;
    *(&v39 - 5) = v22;
    *(&v39 - 4) = v24;
    *(&v39 - 24) = xmmword_1D73250E0;
    sub_1D6B3FAC4(0, &qword_1EC8922E8, MEMORY[0x1E69D73B8]);
    swift_allocObject();

    v41 = sub_1D725A4CC();
    sub_1D725A4DC();
    v29 = v49;
    sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD48FC();
    v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
    v39 = v48[1];
    v40 = v48[0];
    *&v48[0] = v22;
    *&v47[0] = v29;
    MEMORY[0x1EEE9AC00](v30, v31);

    v38 = v30;
    v32 = sub_1D725C00C();

    v33 = v43;
    *v43 = 0;
    v34 = v40;
    *(v33 + 24) = v39;
    *(v33 + 8) = v34;
    *&v48[0] = v32;
    sub_1D5B49714(0, &qword_1EDF1B4C8);
    sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
    sub_1D5BDEFF8();
    v35 = sub_1D72623BC();

    v37 = MEMORY[0x1E69E7CC0];
    *(v33 + 5) = v35;
    *(v33 + 6) = v37;
  }

  return result;
}

uint64_t sub_1D6B3D238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6B3D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 18;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D6B3FAC4(0, &qword_1EC892308, MEMORY[0x1E69D7150]);
  sub_1D6B3FA80(&qword_1EC892310, &qword_1EC892308, v19);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D6B3D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v64 = a2;
  v51 = sub_1D6B3F9A0;
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v48 - v11);
  v71 = a1;
  v13 = a1;
  v62 = a1;
  v14 = sub_1D725994C();
  v15 = swift_allocBox();
  v59 = *MEMORY[0x1E69D6F50];
  v16 = *(v14 - 8);
  v17 = *(v16 + 104);
  v57 = v16 + 104;
  v58 = v17;
  v17(v18);
  *v12 = v15;
  v56 = *MEMORY[0x1E69D73C0];
  v61 = *(v9 + 104);
  v61(v12);
  v19 = MEMORY[0x1E69D6F38];
  sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
  v65 = v20;
  v60 = sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v19);
  sub_1D7259A9C();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v63 = v21;
  v71 = v13;
  sub_1D60DF7C0();
  v23 = v22;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v23 + 48);
  *v25 = 11;
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v12 = v24;
  v30 = v61;
  (v61)(v12, *MEMORY[0x1E69D73E0], v8);
  v70 = v64;
  sub_1D72599EC();
  v21(v12, v8);
  v31 = v62;
  v71 = v62;
  v32 = swift_allocBox();
  v49 = v14;
  v58(v33, v59, v14);
  *v12 = v32;
  (v30)(v12, v56, v8);
  sub_1D7259A9C();
  v63(v12, v8);
  v71 = v31;
  HIDWORD(v48) = *MEMORY[0x1E69D74A8];
  v50 = v9 + 104;
  v30(v12);
  sub_1D6B3FB50();
  sub_1D6B40088(0, &qword_1EC892330, v51, &type metadata for A18_V10.Layout, MEMORY[0x1E69D70D8]);
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7273AE0;
  (*(v36 + 104))(v38 + v37, *MEMORY[0x1E69D7098], v35);
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  sub_1D72599EC();

  v39 = v63;
  result = (v63)(v12, v8);
  if (*(v64 + 16) == 7)
  {
    v41 = v62;
    v71 = v62;
    v42 = v49;
    v43 = swift_allocBox();
    v58(v44, v59, v42);
    *v12 = v43;
    v45 = v61;
    (v61)(v12, v56, v8);
    sub_1D7259A9C();
    v39(v12, v8);
    v71 = v41;
    v46 = (v45)(v12, HIDWORD(v48), v8);
    MEMORY[0x1EEE9AC00](v46, v47);
    sub_1D72599EC();
    return (v39)(v12, v8);
  }

  return result;
}

uint64_t sub_1D6B3DBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
    sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v26);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6B3DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a5 >> 1) - a4;
  if (a5 >> 1 != a4)
  {
    if ((a5 >> 1) <= a4)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v17 + 72);
      v30 = *MEMORY[0x1E69D7490];
      v28 = (v11 + 8);
      v29 = (v11 + 104);
      v31 = v21;
      v22 = a3 + v21 * a4;
      v27 = a1;
      do
      {
        sub_1D5BE3ED8(v22, v19, type metadata accessor for HeadlineViewLayout.Context);
        v32 = a1;
        v23 = swift_allocObject();
        *(v23 + 16) = 6;
        *v14 = v23;
        v24 = (*v29)(v14, v30, v10);
        MEMORY[0x1EEE9AC00](v24, v25);
        v26 = MEMORY[0x1E69D6F38];
        sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
        sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v26);
        sub_1D7259A2C();
        a1 = v27;
        (*v28)(v14, v10);
        sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
        v22 += v31;
        --v20;
      }

      while (v20);
    }
  }
}

uint64_t sub_1D6B3E2F8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = sub_1D725A36C();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v4);
  v41 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D725A19C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineViewLayout.Options(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &KeyPath - v18;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v20 = *MEMORY[0x1E69D7460];
  v21 = *(v16 + 104);
  v43 = v15;
  v21(v19, v20, v15);
  v22 = v10[7];
  v23 = *MEMORY[0x1E69D7348];
  v24 = sub_1D725A34C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v13[v22], v23, v24);
  (*(v25 + 56))(&v13[v22], 0, 1, v24);
  v26 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[8]] = 0;
  v27 = *v26;
  *&v13[v10[9]] = v27;
  v28 = qword_1EDF386E8;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v39;
  *(&KeyPath - 4) = v38;
  *(&KeyPath - 3) = v13;
  v36 = v8;
  (*(v3 + 104))(v41, *MEMORY[0x1E69D7378], v33, v32);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v40 + 8))(v8, v42);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  v34 = MEMORY[0x1E69D6F38];
  sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
  sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v34);
  v36 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v16 + 8))(v19, v43);
}

uint64_t sub_1D6B3E800(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v19 - v8);
  v26 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v22 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v19 = v11;
  v25 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
  sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v12);
  sub_1D7259A2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = v21;
  v26 = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  (v11)(v9, v22, v5);
  v16 = v20;
  v24 = v20;
  sub_1D7259A2C();
  v13(v9, v5);
  v26 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 6;
  *v9 = v17;
  (v19)(v9, v22, v5);
  v23 = v16;
  sub_1D7259A2C();
  return (v13)(v9, v5);
}

uint64_t sub_1D6B3EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v29 - v12);
  v29[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 4 * *(v16 + 72);
    v18 = v4[5];
    v29[0] = v9;
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v21 + 56))(&v7[v18], 0, 1, v20);
    v22 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v22;
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = v22;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v17, v7, v23, v24, v25, v26);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v28 = MEMORY[0x1E69D6F38];
    sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
    sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v28);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v29[0]);
  }

  return result;
}

uint64_t sub_1D6B3EF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v32 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + 5 * *(v17 + 72);
    v32[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v33 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
    sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v31);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_1D6B3F2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B40088(0, &qword_1EC892300, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v29 - v12);
  v29[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 7uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 6 * *(v16 + 72);
    v18 = v4[5];
    v29[0] = v9;
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v21 + 56))(&v7[v18], 0, 1, v20);
    v22 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v22;
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = v22;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v17, v7, v23, v24, v25, v26);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v28 = MEMORY[0x1E69D6F38];
    sub_1D6B3FAC4(0, &qword_1EC892318, MEMORY[0x1E69D6F38]);
    sub_1D6B3FA80(&qword_1EC892320, &qword_1EC892318, v28);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v29[0]);
  }

  return result;
}

uint64_t sub_1D6B3F6C8@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V10.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6B3F7DC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B3F80C();
  result = sub_1D6B3F860();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B3F80C()
{
  result = qword_1EC8922B8;
  if (!qword_1EC8922B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922B8);
  }

  return result;
}

unint64_t sub_1D6B3F860()
{
  result = qword_1EC8922C0;
  if (!qword_1EC8922C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922C0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V10.Bound()
{
  result = qword_1EC8922D0;
  if (!qword_1EC8922D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B3F928(uint64_t a1)
{
  result = sub_1D6B400F0(&qword_1EC8922E0, type metadata accessor for A18_V10.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B3F9A0()
{
  result = qword_1EC8922F0;
  if (!qword_1EC8922F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922F0);
  }

  return result;
}

unint64_t sub_1D6B3F9F4()
{
  result = qword_1EC8922F8;
  if (!qword_1EC8922F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8922F8);
  }

  return result;
}

uint64_t sub_1D6B3FA80(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B3FAC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B3FAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V10.Layout;
    v8[1] = &type metadata for A18_V10.Layout.Attributes;
    v8[2] = sub_1D6B3F9A0();
    v8[3] = sub_1D6B3F9F4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6B3FB50()
{
  if (!qword_1EC892328)
  {
    sub_1D6B40088(255, &qword_1EC892330, sub_1D6B3F9A0, &type metadata for A18_V10.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892328);
    }
  }
}

unint64_t sub_1D6B3FC38()
{
  result = qword_1EC892338;
  if (!qword_1EC892338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892338);
  }

  return result;
}

unint64_t sub_1D6B3FC90()
{
  result = qword_1EC892340;
  if (!qword_1EC892340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892340);
  }

  return result;
}

unint64_t sub_1D6B3FCE8()
{
  result = qword_1EC892348;
  if (!qword_1EC892348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892348);
  }

  return result;
}

unint64_t sub_1D6B3FD40()
{
  result = qword_1EC892350;
  if (!qword_1EC892350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892350);
  }

  return result;
}

uint64_t sub_1D6B3FD94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6B40088(0, &qword_1EC892358, sub_1D6B40034, &type metadata for A18_V10.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B40034();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6B400F0(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6B40034()
{
  result = qword_1EC892360;
  if (!qword_1EC892360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892360);
  }

  return result;
}

void sub_1D6B40088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6B400F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6B4014C()
{
  result = qword_1EC892370;
  if (!qword_1EC892370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892370);
  }

  return result;
}

unint64_t sub_1D6B401A4()
{
  result = qword_1EC892378;
  if (!qword_1EC892378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892378);
  }

  return result;
}

unint64_t sub_1D6B401FC()
{
  result = qword_1EC892380;
  if (!qword_1EC892380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892380);
  }

  return result;
}

uint64_t sub_1D6B40260(uint64_t a1)
{
  v2 = sub_1D6B4050C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B4029C(uint64_t a1)
{
  v2 = sub_1D6B4050C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupNeighbor.encode(to:)(void *a1)
{
  sub_1D6B407FC(0, &qword_1EC892388, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B4050C();

  sub_1D7264B5C();
  v14 = v10;
  v13 = 0;
  sub_1D5B81B04();
  sub_1D5CB5D1C(&qword_1EDF047E0);
  sub_1D726443C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1D5B5AD98();
    sub_1D5CB59A8(&qword_1EDF050B0, &qword_1EDF45940);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6B4050C()
{
  result = qword_1EC892390;
  if (!qword_1EC892390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892390);
  }

  return result;
}

uint64_t FormatContentSubgroupNeighbor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D6B407FC(0, &qword_1EC892398, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B4050C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5B81B04();
  v15 = 0;
  sub_1D5CB5D1C(&qword_1EDF3C7D0);
  sub_1D726431C();
  v11 = v16;
  sub_1D5B5AD98();
  v15 = 1;
  sub_1D5CB59A8(&qword_1EDF1B350, &unk_1EDF45930);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6B407FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B4050C();
    v7 = a3(a1, &type metadata for FormatContentSubgroupNeighbor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B408B4()
{
  result = qword_1EC8923A0;
  if (!qword_1EC8923A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923A0);
  }

  return result;
}

unint64_t sub_1D6B4090C()
{
  result = qword_1EC8923A8;
  if (!qword_1EC8923A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923A8);
  }

  return result;
}

unint64_t sub_1D6B40964()
{
  result = qword_1EC8923B0;
  if (!qword_1EC8923B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923B0);
  }

  return result;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:reuseIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, uint64_t a14, uint64_t *a15, char a16, uint64_t *a17)
{
  result = swift_allocObject();
  v26 = *a13;
  v27 = *a15;
  v28 = *a17;
  v29 = *(a17 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = a8;
  *(result + 80) = a9;
  *(result + 88) = a10;
  *(result + 96) = a11;
  *(result + 104) = a12;
  *(result + 112) = v26;
  *(result + 120) = a14;
  *(result + 128) = v27;
  *(result + 136) = a16;
  *(result + 144) = v28;
  *(result + 152) = v29;
  *(result + 160) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t FormatShareAttributionNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatShareAttributionNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:reuseIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, uint64_t a14, uint64_t *a15, char a16, uint64_t *a17)
{
  v18 = *a13;
  v19 = *a15;
  v20 = *a17;
  v21 = *(a17 + 8);
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;
  *(v17 + 64) = a7;
  *(v17 + 72) = a8;
  *(v17 + 80) = a9;
  *(v17 + 88) = a10;
  *(v17 + 96) = a11;
  *(v17 + 104) = a12;
  *(v17 + 112) = v18;
  *(v17 + 120) = a14;
  *(v17 + 128) = v19;
  *(v17 + 136) = a16;
  *(v17 + 144) = v20;
  *(v17 + 152) = v21;
  *(v17 + 160) = MEMORY[0x1E69E7CD0];
  return v17;
}

unint64_t sub_1D6B40C40(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    v7 = 0x6564496573756572;
    if (a1 != 3)
    {
      v7 = 0x656D617266;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0xD000000000000013;
    if (a1 == 9)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0x676E697A69736572;
    v3 = 0x7865646E497ALL;
    if (a1 != 6)
    {
      v3 = 0x696C696269736976;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6B40DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B41F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B40DEC(uint64_t a1)
{
  v2 = sub_1D6B4134C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B40E28(uint64_t a1)
{
  v2 = sub_1D6B4134C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShareAttributionNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 128));

  return v0;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.__deallocating_deinit()
{
  FormatShareAttributionNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatShareAttributionNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B41A10(0, &qword_1EC8923B8, sub_1D6B4134C, &type metadata for FormatShareAttributionNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B4134C();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 3;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 96);
    v14[0] = *(v3 + 80);
    v14[1] = v12;
    v15 = 4;
    type metadata accessor for CGRect(0);
    sub_1D6B422EC(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v14[0] = *(v3 + 112);
    v15 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 6;
    sub_1D726442C();
    *&v14[0] = *(v3 + 128);
    v15 = 7;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 8;
    sub_1D726440C();
    v13 = *(v3 + 152);
    *&v14[0] = *(v3 + 144);
    BYTE8(v14[0]) = v13;
    v15 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 160);
    v15 = 10;
    sub_1D6B41A10(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6B41A78(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6B4134C()
{
  result = qword_1EC8923C0;
  if (!qword_1EC8923C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923C0);
  }

  return result;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatShareAttributionNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatShareAttributionNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6B41A10(0, &qword_1EC8923C8, sub_1D6B4134C, &type metadata for FormatShareAttributionNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B4134C();
  v19 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v17;
    LOBYTE(v20) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v20) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v20) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    LOBYTE(v20) = 3;
    *(v1 + 64) = sub_1D72642BC();
    *(v1 + 72) = v13;
    type metadata accessor for CGRect(0);
    v22 = 4;
    sub_1D6B422EC(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v14 = v21;
    *(v1 + 80) = v20;
    *(v1 + 96) = v14;
    v22 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 112) = v20;
    LOBYTE(v20) = 6;
    *(v1 + 120) = sub_1D72642FC();
    v22 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 128) = v20;
    LOBYTE(v20) = 8;
    *(v1 + 136) = sub_1D72642CC() & 1;
    v22 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v15 = BYTE8(v20);
    *(v1 + 144) = v20;
    *(v1 + 152) = v15;
    sub_1D6B41A10(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v22 = 10;
    sub_1D6B41A78(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v19, v18);
    *(v1 + 160) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6B41A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6B41A78(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B41A10(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D6B41B88()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1D6B41CB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatShareAttributionNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6B41D2C(uint64_t a1, uint64_t a2)
{
  sub_1D6B422EC(&qword_1EC892408, a2, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6B41E60()
{
  result = qword_1EC8923F0;
  if (!qword_1EC8923F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923F0);
  }

  return result;
}

unint64_t sub_1D6B41EB8()
{
  result = qword_1EC8923F8;
  if (!qword_1EC8923F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8923F8);
  }

  return result;
}

unint64_t sub_1D6B41F10()
{
  result = qword_1EC892400;
  if (!qword_1EC892400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892400);
  }

  return result;
}

uint64_t sub_1D6B41F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D6B422EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatWebEmbed.Resolved.headline.getter()
{
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D6B44004(v0 + *(v5 + 36), v4, sub_1D5B5D160);
  sub_1D5B5D194();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v4, 1, v6) == 1)
  {
    sub_1D6B42DDC(v4, sub_1D5B5D160);
    return 0;
  }

  else
  {
    sub_1D725BF7C();
    v9 = v11[1];
    (*(v8 + 8))(v4, v7);
  }

  return v9;
}

uint64_t FormatWebEmbed.Resolved.init(webEmbed:indexFileURLPromise:dataURLPromise:headline:genericDataVisualization:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v26 = a4;
  v11 = type metadata accessor for GenericDataVisualization();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  *a6 = *a1;
  *(a6 + 1) = v16;
  v17 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D6B44004(a1, &a6[v17[5]], type metadata accessor for FormatWebEmbed);
  *&a6[v17[6]] = a2;
  *&a6[v17[7]] = a3;
  v18 = v17[9];

  sub_1D6B42B58(v26, &a6[v18]);
  sub_1D6B42DDC(a1, type metadata accessor for FormatWebEmbed);
  if ((*(v12 + 48))(a5, 1, v11) == 1)
  {
    sub_1D6B42DDC(a5, sub_1D631F958);
    v19 = v17[8];
    v20 = type metadata accessor for WebEmbedDataVisualization();
    v21 = *(*(v20 - 8) + 56);

    return v21(&a6[v19], 1, 1, v20);
  }

  else
  {
    sub_1D5BE75C4(a5, v15, type metadata accessor for GenericDataVisualization);
    v23 = v17[8];
    sub_1D5BE75C4(v15, &a6[v23], type metadata accessor for GenericDataVisualization);
    v24 = type metadata accessor for WebEmbedDataVisualization();
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(&a6[v23], 0, 1, v24);
  }
}

uint64_t FormatWebEmbed.Resolved.init(sportsDataVisualization:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatWebEmbed();
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *a1;
  v17 = v37;
  v39 = v37;
  SportsDataVisualization.configuredEmbedUrl.getter(v11);
  v38 = v17;
  v18 = SportsDataVisualization.identifier.getter();
  v20 = v19;
  v36 = *(v8 + 56);
  v36(v6, 1, 1, v7);
  v21 = (v16 + v13[15]);
  (*(v8 + 16))(v16 + v13[7], v11, v7);
  *v16 = v18;
  v16[1] = v20;
  sub_1D6B44004(v6, v16 + v13[8], sub_1D5B4D3E0);
  *(v16 + v13[9]) = 0;
  v22 = (v16 + v13[10]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v16 + v13[11]);
  *v23 = 0;
  v23[1] = 0;
  *(v16 + v13[12]) = 0;
  *(v16 + v13[13]) = MEMORY[0x1E69E7CD0];
  sub_1D6B42DDC(v6, sub_1D5B4D3E0);
  (*(v8 + 8))(v11, v7);
  *(v16 + v13[14]) = MEMORY[0x1E69E7CC0];
  *v21 = 0;
  v21[1] = 0;
  v24 = v35;
  *v35 = v18;
  v24[1] = v20;
  v25 = v24;
  v26 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D6B44004(v16, v25 + v26[5], type metadata accessor for FormatWebEmbed);
  v27 = v36;
  v36(v6, 1, 1, v7);
  sub_1D5B5D098(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  *(v25 + v26[6]) = sub_1D725BB1C();
  v27(v6, 1, 1, v7);
  swift_allocObject();
  v28 = sub_1D725BB1C();
  sub_1D6B42DDC(v16, type metadata accessor for FormatWebEmbed);
  *(v25 + v26[7]) = v28;
  v29 = v26[9];
  sub_1D5B5D194();
  (*(*(v30 - 8) + 56))(v25 + v29, 1, 1, v30);
  v31 = v26[8];
  *(v25 + v31) = v37;
  v32 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  return (*(*(v32 - 8) + 56))(v25 + v31, 0, 1, v32);
}

uint64_t sub_1D6B42B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  v13 = qword_1EDF17C98;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EDF17CA0);
  v15 = (*(v5 + 16))(v8, v14, v4);
  MEMORY[0x1EEE9AC00](v15, v16);
  v22[-2] = sub_1D5B5D6A0();
  swift_getKeyPath();
  sub_1D725BF5C();
  swift_unknownObjectRelease();
  sub_1D5B5D194();
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v12, 1, v17))
  {
    sub_1D6B42DDC(v12, sub_1D5B5D160);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v12, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t sub_1D6B42DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatWebEmbed.Resolved.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatWebEmbed.Resolved.indexFileURLPromise.getter()
{
  type metadata accessor for FormatWebEmbed.Resolved();
}

uint64_t FormatWebEmbed.Resolved.dataURLPromise.getter()
{
  type metadata accessor for FormatWebEmbed.Resolved();
}

uint64_t FormatWebEmbed.Resolved.sportsDataVisualization.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D6B44004(v1 + *(v12 + 32), v11, sub_1D5B4D72C);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    result = sub_1D6B42DDC(v11, sub_1D5B4D72C);
    *a1 = 0xF000000000000007;
  }

  else
  {
    sub_1D6B44004(v11, v7, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6B42DDC(v7, type metadata accessor for WebEmbedDataVisualization);
      v14 = 0xF000000000000007;
    }

    else
    {
      v14 = *v7;
    }

    *a1 = v14;
    return sub_1D6B42DDC(v11, type metadata accessor for WebEmbedDataVisualization);
  }

  return result;
}

uint64_t FormatWebEmbed.Resolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v41, v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6B4406C(0, &qword_1EDF03AA8, MEMORY[0x1E69E6F48]);
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B43F68();
  v44 = v19;
  v24 = v45;
  sub_1D7264B0C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v12;
  v25 = v23;
  v48 = 0;
  sub_1D6B43FBC(&unk_1EDF11A78, type metadata accessor for FormatWebEmbed);
  sub_1D726431C();
  v26 = v15[1];
  *v23 = *v15;
  v23[1] = v26;
  v41 = v20;
  v37 = *(v20 + 20);
  sub_1D6B44004(v15, v23 + v37, type metadata accessor for FormatWebEmbed);
  sub_1D5B5D194();
  v47 = 1;
  sub_1D6B43FBC(&qword_1EDF17710, sub_1D5B5D194);
  v36 = v26;

  v27 = v45;
  sub_1D726427C();
  v35 = v15;
  v28 = v41;
  sub_1D5BE75C4(v27, v23 + *(v41 + 36), sub_1D5B5D160);
  type metadata accessor for WebEmbedDataVisualization();
  v46 = 2;
  sub_1D6B43FBC(&qword_1EDF0BB78, type metadata accessor for WebEmbedDataVisualization);
  v29 = v40;
  sub_1D726427C();
  sub_1D5BE75C4(v29, v23 + v28[8], sub_1D5B4D72C);
  v30 = sub_1D72585BC();
  v40 = *(*(v30 - 8) + 56);
  v45 = a1;
  v31 = v38;
  v40(v38, 1, 1, v30);
  sub_1D5B5D098(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  *(v25 + v28[6]) = sub_1D725BB1C();
  v40(v31, 1, 1, v30);
  swift_allocObject();
  v32 = sub_1D725BB1C();
  sub_1D6B42DDC(v35, type metadata accessor for FormatWebEmbed);
  (*(v42 + 8))(v44, v43);
  *(v25 + v28[7]) = v32;
  sub_1D6B44004(v25, v39, type metadata accessor for FormatWebEmbed.Resolved);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1D6B42DDC(v25, type metadata accessor for FormatWebEmbed.Resolved);
}

uint64_t FormatWebEmbed.Resolved.encode(to:)(void *a1)
{
  sub_1D6B4406C(0, &qword_1EDF027C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B43F68();
  sub_1D7264B5C();
  type metadata accessor for FormatWebEmbed.Resolved();
  v10[15] = 0;
  type metadata accessor for FormatWebEmbed();
  sub_1D6B43FBC(&qword_1EDF11A88, type metadata accessor for FormatWebEmbed);
  sub_1D726443C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D5B5D194();
    sub_1D6B43FBC(&unk_1EDF17720, sub_1D5B5D194);
    sub_1D72643BC();
    v10[13] = 2;
    type metadata accessor for WebEmbedDataVisualization();
    sub_1D6B43FBC(&qword_1EDF0BB90, type metadata accessor for WebEmbedDataVisualization);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6B43ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0x80000001D73B9080;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73B9080;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465626D45626577;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x656E696C64616568;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465626D45626577;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6B43BC4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B43C6C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B43D00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B43DA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B441E8();
  *a1 = result;
  return result;
}

void sub_1D6B43DD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656E696C64616568;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001D73B9080;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465626D45626577;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6B43E38()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465626D45626577;
  }
}

uint64_t sub_1D6B43E98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B441E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D6B43EC0(uint64_t a1)
{
  v2 = sub_1D6B43F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B43EFC(uint64_t a1)
{
  v2 = sub_1D6B43F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6B43F68()
{
  result = qword_1EDF11AD0;
  if (!qword_1EDF11AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AD0);
  }

  return result;
}

uint64_t sub_1D6B43FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6B44004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6B4406C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B43F68();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B440E4()
{
  result = qword_1EC892410;
  if (!qword_1EC892410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892410);
  }

  return result;
}

unint64_t sub_1D6B4413C()
{
  result = qword_1EDF11AB8;
  if (!qword_1EDF11AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AB8);
  }

  return result;
}

unint64_t sub_1D6B44194()
{
  result = qword_1EDF11AC0;
  if (!qword_1EDF11AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11AC0);
  }

  return result;
}

uint64_t sub_1D6B441E8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6B44234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = &v40 - v20;
  v22 = *(a1 + 40);
  if (*v2 > 1u)
  {
    if (*v2 == 2)
    {
      v26 = [v22 routeURL];
      if (v26)
      {
        v27 = v26;
        sub_1D72584EC();

        v28 = sub_1D72585BC();
        (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      }

      else
      {
        v36 = sub_1D72585BC();
        (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      }

      v21 = v12;
    }

    else
    {
      v32 = [v22 contentURL];
      if (v32)
      {
        v33 = v32;
        sub_1D72584EC();

        v34 = sub_1D72585BC();
        (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
      }

      else
      {
        v38 = sub_1D72585BC();
        (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
      }

      v21 = v8;
    }
  }

  else if (*v2)
  {
    v29 = [v22 videoCallToActionURL];
    if (v29)
    {
      v30 = v29;
      sub_1D72584EC();

      v31 = sub_1D72585BC();
      (*(*(v31 - 8) + 56))(v16, 0, 1, v31);
    }

    else
    {
      v37 = sub_1D72585BC();
      (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
    }

    v21 = v16;
  }

  else
  {
    v23 = [v22 videoURL];
    if (v23)
    {
      v24 = v23;
      sub_1D72584EC();

      v25 = sub_1D72585BC();
      (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
    }

    else
    {
      v35 = sub_1D72585BC();
      (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    }
  }

  return sub_1D5EB8540(v21, a2);
}

uint64_t sub_1D6B445D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B446A8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B44764()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B44830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B45274();
  *a1 = result;
  return result;
}

void sub_1D6B44860(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4C52556F65646976;
  v4 = 0xE800000000000000;
  v5 = 0x4C52556574756F72;
  if (*v1 != 2)
  {
    v5 = 0x55746E65746E6F63;
    v4 = 0xEA00000000004C52;
  }

  if (*v1)
  {
    v3 = 0x6174436F65646976;
    v2 = 0xEB000000004C5255;
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

uint64_t FormatHeadlineBinding.URL.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6B44A24()
{
  result = qword_1EC892418;
  if (!qword_1EC892418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892418);
  }

  return result;
}

unint64_t sub_1D6B44A78(uint64_t a1)
{
  result = sub_1D6B44AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B44AA0()
{
  result = qword_1EC892420;
  if (!qword_1EC892420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892420);
  }

  return result;
}

unint64_t sub_1D6B44AF4(void *a1)
{
  a1[1] = sub_1D66663E4();
  a1[2] = sub_1D66F59EC();
  result = sub_1D6B44A24();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B44B80()
{
  result = qword_1EC892428;
  if (!qword_1EC892428)
  {
    sub_1D6B44BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892428);
  }

  return result;
}

void sub_1D6B44BD8()
{
  if (!qword_1EC892430)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892430);
    }
  }
}

unint64_t sub_1D6B44C2C()
{
  result = qword_1EC892438;
  if (!qword_1EC892438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892438);
  }

  return result;
}

unint64_t sub_1D6B44C80()
{
  result = qword_1EDF297F8;
  if (!qword_1EDF297F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297F8);
  }

  return result;
}

uint64_t sub_1D6B44CD4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v73 = a1;
  v74 = a2;
  v75 = a3;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v70 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v70 - v30;
  v32 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = (&v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v70 - v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (&v70 - v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v70 - v46);
  if (*v73 > 1u)
  {
    if (*v73 == 2)
    {
      sub_1D5C0C74C(v74, v39);
      v51 = [v39[5] routeURL];
      v52 = v75;
      if (v51)
      {
        v53 = v51;
        sub_1D72584EC();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v63 = sub_1D72585BC();
      (*(*(v63 - 8) + 56))(v12, v54, 1, v63);
      v64 = v70;
      sub_1D5EB8540(v12, v70);
      sub_1D711FCD0(0x5255206574756F52, 0xE90000000000004CLL, v64, v52);
      v47 = v39;
    }

    else
    {
      sub_1D5C0C74C(v74, v35);
      v58 = [v35[5] contentURL];
      v52 = v75;
      if (v58)
      {
        v59 = v71;
        v60 = v58;
        sub_1D72584EC();

        v61 = 0;
      }

      else
      {
        v61 = 1;
        v59 = v71;
      }

      v66 = sub_1D72585BC();
      (*(*(v66 - 8) + 56))(v59, v61, 1, v66);
      v67 = v72;
      sub_1D5EB8540(v59, v72);
      sub_1D711FCD0(0x20746E65746E6F43, 0xEB000000004C5255, v67, v52);
      v47 = v35;
    }
  }

  else if (*v73)
  {
    sub_1D5C0C74C(v74, v43);
    v55 = [v43[5] videoCallToActionURL];
    if (v55)
    {
      v56 = v55;
      sub_1D72584EC();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v52 = v75;
    v65 = sub_1D72585BC();
    (*(*(v65 - 8) + 56))(v19, v57, 1, v65);
    sub_1D5EB8540(v19, v23);
    sub_1D711FCD0(0x5443206F65646956, 0xED00004C52552041, v23, v52);
    v47 = v43;
  }

  else
  {
    sub_1D5C0C74C(v74, &v70 - v46);
    v48 = [v47[5] videoURL];
    if (v48)
    {
      v49 = v48;
      sub_1D72584EC();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v62 = sub_1D72585BC();
    (*(*(v62 - 8) + 56))(v27, v50, 1, v62);
    sub_1D5EB8540(v27, v31);
    v52 = v75;
    sub_1D711FCD0(0x5255206F65646956, 0xE90000000000004CLL, v31, v75);
  }

  sub_1D5C10040(v47);
  v68 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v68 - 8) + 56))(v52, 0, 1, v68);
}

uint64_t sub_1D6B45274()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t static FormatColorModifyComponentProcessor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D6DD3A24(*a1, *a2) & (v2 == v3);
}

unint64_t sub_1D6B452FC(uint64_t a1)
{
  result = sub_1D6B45324();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B45324()
{
  result = qword_1EC892440;
  if (!qword_1EC892440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892440);
  }

  return result;
}

id sub_1D6B45378(uint64_t a1, char a2, void *a3, double a4)
{
  v12[1] = a2;
  v7 = sub_1D68669F8() + a4;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [a3 resolvedColorWithTraitCollection_];
  v12[0] = a2;
  v10 = sub_1D6866FC4(v12, v8);

  return v10;
}

uint64_t sub_1D6B45424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D6DD3A24(*a1, *a2) & (v2 == v3);
}

unint64_t sub_1D6B45460(void *a1)
{
  a1[1] = sub_1D665B2F4();
  a1[2] = sub_1D6706108();
  result = sub_1D6B45498();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B45498()
{
  result = qword_1EC892448;
  if (!qword_1EC892448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892448);
  }

  return result;
}

uint64_t FormatDateFormat.Context.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6574497473696CLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x63696D616E7964;
  if (v1 != 1)
  {
    v5 = 0x6F6C61646E617473;
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

uint64_t FormatDateFormat.Style.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6D756964656DLL;
  v4 = 1735290732;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74726F6873;
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

void static FormatDateFormat.default.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t FormatDateFormat.format(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1D6728D5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7258CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7258AAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[2];
  if (v19 == 1)
  {
    return sub_1D725871C();
  }

  if (v19 == 2)
  {
    return sub_1D725870C();
  }

  v37 = a1;
  v21 = v2[5];
  v33[0] = v2[4];
  v36 = *(v2 + 24);
  v22 = *v2;
  v33[1] = v2[1];
  v34 = v9;
  v35 = v22;
  v23 = v16;
  v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D7258A4C();
  v25 = sub_1D72589DC();
  (*(v14 + 8))(v18, v23);
  [v24 setLocale_];

  if (v21)
  {
    sub_1D7258CBC();
    v26 = v34;
    if ((*(v34 + 48))(v7, 1, v8) == 1)
    {
      sub_1D6B45A28(v7);
    }

    else
    {
      (*(v26 + 32))(v12, v7, v8);
      v27 = sub_1D7258CDC();
      [v24 setTimeZone_];

      (*(v26 + 8))(v12, v8);
    }
  }

  v28 = v35;
  [v24 setDateStyle_];
  [v24 setTimeStyle_];
  [v24 setFormattingContext_];
  if (v19)
  {
    v29 = sub_1D726203C();
    [v24 setLocalizedDateFormatFromTemplate_];
  }

  v30 = sub_1D725881C();
  v31 = [v24 stringFromDate_];

  v32 = sub_1D726207C();
  return v32;
}

uint64_t sub_1D6B45A28(uint64_t a1)
{
  sub_1D6728D5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDateFormat.Custom.template.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FormatDateFormat.Custom.timeZone.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

NewsFeed::FormatDateFormat::Style_optional __swiftcall FormatDateFormat.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6B45BA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B45C64()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B45D14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B45DE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 1735290732;
  if (v2 != 3)
  {
    v7 = 1819047270;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x74726F6873;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

NewsFeed::FormatDateFormat::Context_optional __swiftcall FormatDateFormat.Context.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6B45F48()
{
  sub_1D72621EC();
}

void sub_1D6B4605C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6D6574497473696CLL;
  v7 = 0x80000001D73B7E00;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D73B7E20;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x63696D616E7964;
  if (v2 != 1)
  {
    v10 = 0x6F6C61646E617473;
    v9 = 0xEA0000000000656ELL;
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

void sub_1D6B461B0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

BOOL _s8NewsFeed010FormatDateC0O6CustomV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = a1[24];
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v15 = a2[24];
  v17 = *(a2 + 4);
  v16 = *(a2 + 5);
  if (v4 == 5)
  {
    if (v11 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 5)
    {
      return 0;
    }

    v34 = *(a1 + 2);
    v35 = *(a2 + 2);
    v18 = *(a1 + 1);
    v19 = a2[24];
    v20 = a1[24];
    v21 = *(a2 + 4);
    v22 = *(a2 + 5);
    v23 = *(a1 + 5);
    v24 = *(a1 + 4);
    v25 = *(a2 + 1);
    v26 = sub_1D6DE6550(v4, v11);
    v13 = v25;
    v9 = v24;
    v10 = v23;
    v16 = v22;
    v17 = v21;
    v8 = v20;
    v15 = v19;
    v7 = v18;
    v6 = v34;
    v14 = v35;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == 5)
    {
      return 0;
    }

    v27 = v5;
    v28 = v12;
    v29 = v9;
    v30 = v13;
    v31 = sub_1D6DE6550(v27, v28);
    v13 = v30;
    v9 = v29;
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    v32 = v9;
    if ((v7 != v13 || v6 != v14) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v32 = v9;
    if (v14)
    {
      return 0;
    }
  }

  if (sub_1D6DE6350(v8, v15))
  {
    if (v10)
    {
      return v16 && (v32 == v17 && v10 == v16 || (sub_1D72646CC() & 1) != 0);
    }

    if (!v16)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v18 = a2[5];
  if (v5 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_8;
    }

    v13 = 1;
    sub_1D5E1E088(v3, v2, 1);
    v14 = v8;
    v15 = v9;
    v16 = 1;
LABEL_10:
    sub_1D5E1E088(v14, v15, v16);
    return v13;
  }

  if (v5 != 2)
  {
    if ((v10 - 1) < 2)
    {
      goto LABEL_8;
    }

    v25 = *a1;
    v26 = v2;
    v27 = v5;
    v28 = v4;
    v29 = v7;
    v30 = v6;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v18;
    sub_1D5E1DC5C(v8, v9, v10);
    sub_1D5E1DC5C(v3, v2, v5);
    sub_1D5E1DC5C(v8, v9, v10);
    sub_1D5E1DC5C(v3, v2, v5);
    v13 = _s8NewsFeed010FormatDateC0O6CustomV2eeoiySbAE_AEtFZ_0(&v25, &v19);
    sub_1D5E1E088(v3, v2, v5);
    sub_1D5E1E088(v8, v9, v10);
    sub_1D5E1E088(v8, v9, v10);
    v14 = v3;
    v15 = v2;
    v16 = v5;
    goto LABEL_10;
  }

  if (v10 != 2)
  {
LABEL_8:
    sub_1D5E1DC5C(v8, v9, v10);
    sub_1D5E1DC5C(v3, v2, v5);
    sub_1D5E1E088(v3, v2, v5);
    sub_1D5E1E088(v8, v9, v10);
    return 0;
  }

  sub_1D5E1E088(v3, v2, 2);
  sub_1D5E1E088(v8, v9, 2);
  return 1;
}

unint64_t sub_1D6B4665C(uint64_t a1)
{
  result = sub_1D6B46684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B46684()
{
  result = qword_1EC892450;
  if (!qword_1EC892450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892450);
  }

  return result;
}

unint64_t sub_1D6B46718()
{
  result = qword_1EC892458;
  if (!qword_1EC892458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892458);
  }

  return result;
}

unint64_t sub_1D6B46770()
{
  result = qword_1EC892460;
  if (!qword_1EC892460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892460);
  }

  return result;
}

unint64_t sub_1D6B467F0()
{
  result = qword_1EC892468;
  if (!qword_1EC892468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892468);
  }

  return result;
}

unint64_t sub_1D6B46844()
{
  result = qword_1EC892470;
  if (!qword_1EC892470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892470);
  }

  return result;
}

unint64_t sub_1D6B46898(uint64_t a1)
{
  result = sub_1D6B468C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B468C0()
{
  result = qword_1EC892478;
  if (!qword_1EC892478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892478);
  }

  return result;
}

unint64_t sub_1D6B46958()
{
  result = qword_1EC892480;
  if (!qword_1EC892480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892480);
  }

  return result;
}

uint64_t sub_1D6B469D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B46A14()
{
  result = qword_1EC892488;
  if (!qword_1EC892488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892488);
  }

  return result;
}

unint64_t sub_1D6B46A68()
{
  result = qword_1EDF3A868;
  if (!qword_1EDF3A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A868);
  }

  return result;
}

unint64_t sub_1D6B46ABC(uint64_t a1)
{
  result = sub_1D6B46AE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B46AE4()
{
  result = qword_1EC892490;
  if (!qword_1EC892490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892490);
  }

  return result;
}

unint64_t sub_1D6B46B78(uint64_t a1)
{
  result = sub_1D6B46BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B46BA0()
{
  result = qword_1EC892498;
  if (!qword_1EC892498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892498);
  }

  return result;
}

uint64_t sub_1D6B46C34(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B46C88()
{
  result = qword_1EC8924A0;
  if (!qword_1EC8924A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924A0);
  }

  return result;
}

double sub_1D6B46CDC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = a2;
  }

  return result;
}

uint64_t sub_1D6B46D28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D6B46D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *FormatLayoutViewDebugger.__allocating_init()()
{
  result = swift_allocObject();
  result[4] = sub_1D5BEE8B4;
  result[5] = 0;
  result[6] = sub_1D5BEE8B4;
  result[7] = 0;
  result[2] = sub_1D5BEE8B4;
  result[3] = 0;
  return result;
}

void *FormatLayoutViewDebugger.init()()
{
  result = v0;
  v0[4] = sub_1D5BEE8B4;
  v0[5] = 0;
  v0[6] = sub_1D5BEE8B4;
  v0[7] = 0;
  v0[2] = sub_1D5BEE8B4;
  v0[3] = 0;
  return result;
}

void *FormatLayoutViewDebugger.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  return sub_1D6B46F48(a1, a2, sub_1D5BEE8B4, sub_1D5BEE8B4, &unk_1F51B17C8, sub_1D6B48928);
}

{
  return sub_1D6B46F48(a1, a2, sub_1D5BEE8B4, sub_1D5BEE8B4, &unk_1F51B1818, sub_1D6B4892C);
}

void *sub_1D6B46F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[4] = a3;
  v11[5] = 0;
  v11[6] = a4;
  v11[7] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v11[2] = a6;
  v11[3] = v12;
  return v11;
}

uint64_t FormatLayoutViewDebugger.__allocating_init<A>(blueprintLayoutProvider:block:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  FormatLayoutViewDebugger.init<A>(blueprintLayoutProvider:block:)(a1, a2, a3, a4, a5);
  return v10;
}

{
  v10 = swift_allocObject();
  FormatLayoutViewDebugger.init<A>(blueprintLayoutProvider:block:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1D6B472D4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D72816C0;
  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D6B473E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v12[0] = swift_getAssociatedTypeWitness();
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = swift_getAssociatedConformanceWitness();
  v12[3] = swift_getAssociatedConformanceWitness();
  v5 = sub_1D725D34C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  sub_1D725EBEC();
  v10 = a4(v5);
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t objectdestroy_13Tm_1()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D6B475FC(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  v3 = result;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v6 = *(result + 16);
  while (1)
  {
    if (v6 == v4)
    {

      return v5;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    if (*(v3 + 8 * v4++ + 32))
    {

      MEMORY[0x1DA6F9CE0](v8);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      result = sub_1D726278C();
      v5 = v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6B47704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a4;
  v9 = sub_1D725D73C();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725DC6C();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatLayoutViewDebuggerContext();
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = (v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v19, a1, a2, v22);
  sub_1D6B47DF0(v19, a2, a3, v24);
  v25 = *(v5 + 16);
  v65 = v24;
  v60 = v25(v24);
  sub_1D6B48774();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1D7273AE0;
  v26 = sub_1D726203C();
  v59[0] = objc_opt_self();
  v59[1] = [v59[0] systemImageNamed_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7274590;
  v28 = *(a3 + 8);
  v29 = v28(a2, a3);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v30 = sub_1D71D146C(v29, &v70);

  sub_1D5E46B90(&v70);
  v31 = 0;
  if (v30)
  {
    v31 = sub_1D725D3DC();
    v32 = MEMORY[0x1E69D7890];
  }

  else
  {
    v32 = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
  }

  *(v27 + 32) = v30;
  *(v27 + 56) = v31;
  *(v27 + 64) = v32;
  v33 = v28(a2, a3);
  v34 = (*(v5 + 32))();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = _s5TeaUI15ContextMenuItemC8NewsFeedE05debugG6Editor14groupLayoutKey04feedK4Keys19rendererEnvironmentACSgAD05GroupkL0CSg_SayAKGAA08RendererP4Type_pSgtFZ_0(v33, v34, &v70);

  sub_1D5E46B90(&v70);
  v36 = 0;
  if (v35)
  {
    v36 = sub_1D725D3DC();
    v37 = MEMORY[0x1E69D7890];
  }

  else
  {
    v37 = 0;
    *(v27 + 80) = 0;
    *(v27 + 88) = 0;
  }

  *(v27 + 72) = v35;
  *(v27 + 96) = v36;
  *(v27 + 104) = v37;
  v38 = v28(a2, a3);
  v39 = (*(v5 + 48))();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v40 = sub_1D71D1A0C(v38, v39, &v70);

  sub_1D5E46B90(&v70);
  v41 = 0;
  if (v40)
  {
    v41 = sub_1D725D3DC();
    v42 = MEMORY[0x1E69D7890];
  }

  else
  {
    v42 = 0;
    *(v27 + 120) = 0;
    *(v27 + 128) = 0;
  }

  *(v27 + 112) = v40;
  *(v27 + 136) = v41;
  *(v27 + 144) = v42;
  v43 = sub_1D725D72C();
  v44 = v28(a2, a3);
  v45 = qword_1EDF3B0F0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = MEMORY[0x1E69D7890];
  v47 = qword_1EDF3B560;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDF3B568;
  v73 = sub_1D725DEFC();
  v74 = MEMORY[0x1E69D7C78];
  *&v71 = v48;
  *&v70 = v44;
  *(&v70 + 1) = MEMORY[0x1E69E7CC0];
  v49 = v48;
  v50 = sub_1D726203C();
  v51 = [v59[0] systemImageNamed_];

  (*(v61 + 104))(v64, *MEMORY[0x1E69D7B48], v62);
  v52 = sub_1D725D3DC();
  swift_allocObject();
  v53 = sub_1D725D3AC();

  *(v27 + 176) = v52;
  *(v27 + 184) = v46;
  *(v27 + 152) = v53;
  v54 = sub_1D5F645A8(v60);

  *&v70 = v27;
  sub_1D6988798(v54);
  (*(v66 + 104))(v68, *MEMORY[0x1E69D79B0], v67);
  swift_allocObject();
  v55 = sub_1D725D70C();
  v56 = MEMORY[0x1E69D79A8];
  v57 = v63;
  *(v63 + 56) = v43;
  *(v57 + 64) = v56;
  *(v57 + 32) = v55;
  sub_1D725D71C();

  return sub_1D6B488C0(v65, type metadata accessor for FormatLayoutViewDebuggerContext);
}

uint64_t sub_1D6B47DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = (*(a3 + 48))(a2, a3);
  a4[1] = v7;
  v8 = type metadata accessor for FormatLayoutViewDebuggerContext();
  sub_1D6B48010(a1, a2, a4 + *(v8 + 20));
  v9 = *(*(a2 - 8) + 8);

  return v9(a1, a2);
}

uint64_t FormatLayoutViewDebugger.deinit()
{

  return v0;
}

uint64_t FormatLayoutViewDebuggerContext.itemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatLayoutViewDebuggerContext.feedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatLayoutViewDebuggerContext() + 20);

  return sub_1D6B47F90(v3, a1);
}

uint64_t type metadata accessor for FormatLayoutViewDebuggerContext()
{
  result = qword_1EC8924A8;
  if (!qword_1EC8924A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B47F90(uint64_t a1, uint64_t a2)
{
  sub_1D5BB1554(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B48010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5BB1554(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatItemNodeLayoutContext();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, a2, v18);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v9, 0, 1, v15);
    sub_1D6B4885C(v9, v20);
    sub_1D5BC8CF4(&v20[*(v15 + 28)], a3);
    sub_1D6B488C0(v20, type metadata accessor for FormatItemNodeLayoutContext);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22(v9, 1, 1, v15);
    sub_1D6B487E4(v9);
  }

  v24 = type metadata accessor for FeedItem(0);
  return (*(*(v24 - 8) + 56))(a3, v23, 1, v24);
}

uint64_t FormatLayoutViewDebuggerContext.sectionIdentifier<A, B>(blueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v11 = sub_1D725D68C();
  v12 = sub_1D726393C();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v16 = sub_1D725FACC();
  v17 = sub_1D726393C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - v20;
  v22 = *(v16 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v31 - v26;
  (*(v18 + 16))(v21, a1, v17, v25);
  if ((*(v22 + 48))(v21, 1, v16) == 1)
  {
    (*(v18 + 8))(v21, v17);
  }

  else
  {
    (*(v22 + 32))(v27, v21, v16);
    if (*(v5 + 8))
    {
      sub_1D725FA7C();
      v28 = *(v11 - 8);
      if ((*(v28 + 48))(v15, 1, v11) != 1)
      {
        v30 = sub_1D725D62C();
        (*(v22 + 8))(v27, v16);
        (*(v28 + 8))(v15, v11);
        return v30;
      }

      (*(v22 + 8))(v27, v16);
      (*(v31 + 8))(v15, v32);
    }

    else
    {
      (*(v22 + 8))(v27, v16);
    }
  }

  return 0;
}

uint64_t dispatch thunk of FormatLayoutViewDebugger.__allocating_init(block:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

uint64_t dispatch thunk of FormatLayoutViewDebugger.__allocating_init<A>(blueprintLayoutProvider:block:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

void sub_1D6B486B0()
{
  sub_1D5B49E48(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5BB1554(319, qword_1EDF34EF0, type metadata accessor for FeedItem);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D6B48774()
{
  if (!qword_1EDF19AE0)
  {
    sub_1D5BFB8A8(255, &qword_1EDF3B530, &qword_1EDF3B540);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19AE0);
    }
  }
}

uint64_t sub_1D6B487E4(uint64_t a1)
{
  sub_1D5BB1554(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6B4885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatItemNodeLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B488C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL static FormatMicaNodeContent.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 != 1)
      {
        return 0;
      }

      v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *(v6 + 24);
      v21 = *(v5 + 16);
      v19 = v7;
      v20 = v8;

      if (static FormatMicaNodeContent.== infix(_:_:)(&v21, &v19))
      {
        v9 = static FormatMicaNodeContent.== infix(_:_:)(&v21 + 8, &v20);

        return (v9 & 1) != 0;
      }
    }

    else
    {
      if (v3 >> 62 != 2)
      {
        return 0;
      }

      v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      *&v21 = v12;
      *(&v21 + 1) = v13;
      v19 = v16;
      v20 = v15;

      if (static FormatMicaNodeContent.== infix(_:_:)(&v21, &v19))
      {

        v17 = sub_1D6353D78(v13, v15);

        swift_bridgeObjectRelease_n();
        return (v17 & 1) != 0;
      }
    }

    return 0;
  }

  if (v3 >> 62)
  {
    return 0;
  }

  v10 = *(v3 + 16);
  *&v21 = *(v2 + 16);
  v19 = v10;

  v11 = static FormatURL.== infix(_:_:)(&v21, &v19);

  return v11;
}

unint64_t sub_1D6B48B84(uint64_t a1)
{
  result = sub_1D66A3908();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B48BAC(void *a1)
{
  a1[1] = sub_1D66A08C4();
  a1[2] = sub_1D66A0A94();
  result = sub_1D6B48BE4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B48BE4()
{
  result = qword_1EC8924B8;
  if (!qword_1EC8924B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924B8);
  }

  return result;
}

float static FormatPercentage.default.getter@<S0>(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&dword_1EC8924C0;
  *a1 = dword_1EC8924C0;
  return result;
}

uint64_t static FormatPercentage.default.setter(int *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  dword_1EC8924C0 = v1;
  return result;
}

unint64_t sub_1D6B48D5C(uint64_t a1)
{
  result = sub_1D6B48D84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B48D84()
{
  result = qword_1EC8924C8;
  if (!qword_1EC8924C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924C8);
  }

  return result;
}

float sub_1D6B48DD8@<S0>(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&dword_1EC8924C0;
  *a1 = dword_1EC8924C0;
  return result;
}

unint64_t sub_1D6B48E24(void *a1)
{
  a1[1] = sub_1D66B5C60();
  a1[2] = sub_1D66F937C();
  result = sub_1D6B48E5C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B48E5C()
{
  result = qword_1EC8924D0;
  if (!qword_1EC8924D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924D0);
  }

  return result;
}

uint64_t sub_1D6B48F14(void *a1, uint64_t a2)
{
  sub_1D6B49424(0, &qword_1EC884848, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618D0FC();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D6B49204();
  sub_1D6B49488(&qword_1EC884850, sub_1D618D3A4);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6B490BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6B49144(uint64_t a1)
{
  v2 = sub_1D618D0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B49180(uint64_t a1)
{
  v2 = sub_1D618D0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6B491BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6B49254(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D6B49204()
{
  if (!qword_1EDF04B08)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04B08);
    }
  }
}

void *sub_1D6B49254(void *a1)
{
  sub_1D6B49424(0, &qword_1EDF03878, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618D0FC();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6B49204();
    sub_1D6B49488(&qword_1EDF04B00, sub_1D6B494F4);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1D6B49424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D618D0FC();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceRootNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6B49488(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B49204();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6B494F4()
{
  result = qword_1EDF09040;
  if (!qword_1EDF09040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09040);
  }

  return result;
}

unint64_t sub_1D6B4955C()
{
  result = qword_1EC8924D8;
  if (!qword_1EC8924D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924D8);
  }

  return result;
}

unint64_t sub_1D6B495B4()
{
  result = qword_1EDF06F70;
  if (!qword_1EDF06F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F70);
  }

  return result;
}

unint64_t sub_1D6B4960C()
{
  result = qword_1EDF06F78;
  if (!qword_1EDF06F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F78);
  }

  return result;
}

uint64_t sub_1D6B49660()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD00000000000006ELL;
  v0[1] = 0x80000001D73C3790;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D6B49738(uint64_t a1)
{
  v149 = a1;
  sub_1D6B4AB6C();
  v142 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v163 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v141 = &v131 - v7;
  v143 = type metadata accessor for FormatOption();
  v144 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatOptionsNodeStatementResult();
  v140 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B4AE10(0, qword_1EDF1D208, type metadata accessor for FormatOptionsNodeStatementEvaluation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v131 - v21;
  v23 = *(v1 + 2);
  v161[0] = *(v1 + 1);
  v161[1] = v23;
  v25 = *(v1 + 1);
  v24 = *(v1 + 2);
  *v162 = *(v1 + 3);
  v26 = *v1;
  v27 = v1[1];
  *&v162[15] = *(v1 + 63);
  v28 = v1[9];
  v158 = v25;
  v159 = v24;
  *v160 = *(v1 + 3);
  *&v160[15] = *(v1 + 63);
  sub_1D5CF5DBC(v161, &v155);
  v29 = v150;
  sub_1D6D18E2C(v149, v22);
  v136 = v29;
  if (v29)
  {
    v155 = v158;
    v156 = v159;
    v157[0] = *v160;
    *(v157 + 15) = *&v160[15];
    sub_1D5CF603C(&v155);
    return v10;
  }

  v138 = v10;
  v139 = v28;
  v135 = v14;
  v147 = v26;
  v145 = v27;
  v155 = v158;
  v156 = v159;
  v157[0] = *v160;
  *(v157 + 15) = *&v160[15];
  sub_1D5CF603C(&v155);
  sub_1D6B4ACC8(v22, v18, qword_1EDF1D208, type metadata accessor for FormatOptionsNodeStatementEvaluation);
  v30 = type metadata accessor for FormatOptionsNodeStatementEvaluation();
  if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
  {
    sub_1D6B4ABD8(v22);
    return MEMORY[0x1E69E7CC0];
  }

  v137 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v146 = v11;
  if (EnumCaseMultiPayload != 1)
  {
    v70 = v135;
    sub_1D6B4ADA8(v18, v135, type metadata accessor for FormatOptionsNodeStatementResult);
    sub_1D6B4AE10(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v132 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1D7273AE0;
    v71 = *v70;
    v72 = v139;
    v142 = *(v139 + 2);
    if (!v142)
    {

      v125 = v145;

      v10 = v147;
LABEL_75:
      v128 = v133;
      v129 = (v133 + v132);
      v130 = v70[1];
      sub_1D6B4ACC8(v70 + *(v11 + 24), v133 + v132 + *(v143 + 28), &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
      *v129 = v10;
      v129[1] = v125;
      v10 = v128;
      v129[2] = v71;
      v129[3] = v130;
      sub_1D5B71354(v130);
      sub_1D6B4ABD8(v137);
      sub_1D6B4AD48(v70, type metadata accessor for FormatOptionsNodeStatementResult);
      return v10;
    }

    v141 = v139 + 32;

    v73 = 0;
    v10 = v147;
    while (1)
    {
      if (v73 >= *(v72 + 2))
      {
        goto LABEL_86;
      }

      v75 = v141[v73];
      v76 = v71 & 0xF000000000000000;
      if (!(v75 >> 6))
      {
        if (v76 != 0x3000000000000000)
        {
          goto LABEL_73;
        }

        v94 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v95 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LOBYTE(v151) = v141[v73];
        v152 = v94;
        v153 = v95;
        sub_1D6C810F0(&v152, &v154);

        v71 = v154;
        goto LABEL_30;
      }

      if (v75 >> 6 != 1)
      {
        break;
      }

      if (v76 != 0x5000000000000000)
      {
        goto LABEL_73;
      }

      v77 = v71 & 0xFFFFFFFFFFFFFFFLL;
      v79 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v80 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v150 = v77;
      if (v75)
      {
        v144 = v73;
        if ((v78 & 0x2000000000000000) != 0)
        {
          v81 = HIBYTE(v78) & 0xF;
        }

        else
        {
          v81 = v79 & 0xFFFFFFFFFFFFLL;
        }

        v82 = *(v80 + 16);
        if (v82)
        {
          v140 = v81;
          v152 = MEMORY[0x1E69E7CC0];
          v149 = v78;

          swift_bridgeObjectRetain_n();
          v148 = v80;
          result = sub_1D699752C(0, v82, 0);
          v83 = v148;
          v84 = 0;
          v85 = v152;
          v86 = (v148 + 56);
          v163 = v82;
          while (v84 < *(v83 + 16))
          {
            v87 = *(v86 - 3);
            v88 = *(v86 - 2);
            v89 = *(v86 - 1) & 0xFFFFFFFFFFFFLL;
            if ((*v86 & 0x2000000000000000) != 0)
            {
              v89 = HIBYTE(*v86) & 0xFLL;
            }

            v90 = v89 == 0;
            v152 = v85;
            v92 = *(v85 + 2);
            v91 = *(v85 + 3);

            if (v92 >= v91 >> 1)
            {
              result = sub_1D699752C((v91 > 1), v92 + 1, 1);
              v83 = v148;
              v85 = v152;
            }

            v84 = (v84 + 1);
            *(v85 + 2) = v92 + 1;
            v93 = &v85[24 * v92];
            *(v93 + 4) = v87;
            *(v93 + 5) = v88;
            v93[48] = v90;
            v86 += 4;
            v11 = v146;
            v10 = v147;
            if (v163 == v84)
            {
              swift_bridgeObjectRelease_n();

              v81 = v140;
              goto LABEL_67;
            }
          }

          goto LABEL_79;
        }

        v85 = MEMORY[0x1E69E7CC0];
LABEL_67:
        v71 = swift_allocObject();
        *(v71 + 16) = v81 == 0;
        *(v71 + 24) = v85;

LABEL_29:
        v72 = v139;
        v73 = v144;
        goto LABEL_30;
      }

      v163 = sub_1D726221C();
      v114 = *(v80 + 16);
      if (v114)
      {
        v149 = v78;
        v144 = v73;
        v152 = MEMORY[0x1E69E7CC0];

        v115 = v80;
        result = sub_1D699756C(0, v114, 0);
        v116 = 0;
        v117 = v152;
        v118 = v115 + 56;
        while (v116 < *(v115 + 16))
        {
          v119 = *(v118 - 24);
          v120 = *(v118 - 16);

          result = sub_1D726221C();
          v152 = v117;
          v122 = *(v117 + 2);
          v121 = *(v117 + 3);
          if (v122 >= v121 >> 1)
          {
            v148 = result;
            sub_1D699756C((v121 > 1), v122 + 1, 1);
            result = v148;
            v117 = v152;
          }

          ++v116;
          *(v117 + 2) = v122 + 1;
          v123 = &v117[24 * v122];
          *(v123 + 4) = v119;
          *(v123 + 5) = v120;
          *(v123 + 6) = result;
          v118 += 32;
          if (v114 == v116)
          {
            swift_bridgeObjectRelease_n();

            v10 = v147;
            v72 = v139;
            v73 = v144;
            goto LABEL_69;
          }
        }

        goto LABEL_78;
      }

      v117 = MEMORY[0x1E69E7CC0];
LABEL_69:
      v124 = swift_allocObject();
      *(v124 + 16) = v163;
      *(v124 + 24) = v117;

      v71 = v124 | 0x4000000000000000;
      v11 = v146;
LABEL_30:
      if (++v73 == v142)
      {
        v125 = v145;

        v70 = v135;
        goto LABEL_75;
      }
    }

    if (v76 != 0x4000000000000000)
    {
LABEL_73:

      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      v126 = swift_allocError();
      *v127 = v75;
      *(v127 + 8) = v71;
      swift_storeEnumTagMultiPayload();
      v136 = v126;
      swift_willThrow();
      sub_1D6B4ABD8(v137);
      sub_1D6B4AD48(v135, type metadata accessor for FormatOptionsNodeStatementResult);
      *(v133 + 16) = 0;

      return v10;
    }

    v144 = v73;
    v96 = v71 & 0xFFFFFFFFFFFFFFFLL;
    v97 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v152 = *((v71 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v98 = sub_1D5E4049C();

    v150 = v98;
    v99 = sub_1D7263ADC();
    v101 = v99;
    v102 = v100;
    v103 = *(v97 + 16);
    if (v103)
    {
      v134 = v100;
      v138 = v99;
      v140 = v96;
      v152 = MEMORY[0x1E69E7CC0];

      result = sub_1D6997388(0, v103, 0);
      v104 = 0;
      v105 = v152;
      v106 = (v97 + 48);
      v149 = v97;
      v148 = v103;
      while (v104 < *(v97 + 16))
      {
        v107 = *(v106 - 1);
        v163 = *(v106 - 2);
        v151 = *v106;

        result = sub_1D7263ADC();
        v108 = result;
        v110 = v109;
        v152 = v105;
        v112 = *(v105 + 2);
        v111 = *(v105 + 3);
        if (v112 >= v111 >> 1)
        {
          result = sub_1D6997388((v111 > 1), v112 + 1, 1);
          v105 = v152;
        }

        ++v104;
        *(v105 + 2) = v112 + 1;
        v113 = &v105[32 * v112];
        *(v113 + 4) = v163;
        *(v113 + 5) = v107;
        *(v113 + 6) = v108;
        *(v113 + 7) = v110;
        v106 += 3;
        v97 = v149;
        if (v148 == v104)
        {
          swift_bridgeObjectRelease_n();
          v11 = v146;
          v10 = v147;
          v101 = v138;
          v102 = v134;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v105 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v74 = swift_allocObject();
    *(v74 + 16) = v101;
    *(v74 + 24) = v102;
    *(v74 + 32) = v105;

    v71 = v74 | 0x5000000000000000;
    goto LABEL_29;
  }

  v32 = *v18;
  v33 = *(*v18 + 16);
  if (!v33)
  {
    sub_1D6B4ABD8(v137);

    return MEMORY[0x1E69E7CC0];
  }

  v154 = MEMORY[0x1E69E7CC0];
  sub_1D6997860(0, v33, 0);
  v10 = v154;
  v149 = v32 + 64;
  result = sub_1D7263B7C();
  v35 = result;
  v36 = 0;
  v150 = *(v32 + 9);
  v134 = v32 + 72;
  v37 = v142;
  v38 = v141;
  v39 = v140;
  v40 = v32;
  v139 = v32;
  v135 = v33;
  while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << v40[32])
  {
    v43 = v35 >> 6;
    if ((*&v149[8 * (v35 >> 6)] & (1 << v35)) == 0)
    {
      goto LABEL_81;
    }

    if (v150 != *(v40 + 9))
    {
      goto LABEL_82;
    }

    v148 = v36;
    v44 = *(v37 + 48);
    v45 = (*(v40 + 6) + 16 * v35);
    v46 = *v45;
    v47 = v45[1];
    v48 = *(v40 + 7) + *(v39 + 72) * v35;
    v49 = v38;
    sub_1D6B4AC64(v48, &v38[v44]);
    v50 = v163;
    *v163 = v46;
    v50[1] = v47;
    v51 = (v50 + *(v37 + 48));
    sub_1D6B4ADA8(&v49[v44], v51, type metadata accessor for FormatOptionsNodeStatementResult);
    v152 = v147;
    v153 = v145;

    MEMORY[0x1DA6F9910](46, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v46, v47);
    v52 = v152;
    v53 = v153;
    v54 = v10;
    v56 = *v51;
    v55 = v51[1];
    v57 = v51 + *(v146 + 24);
    v58 = v138;
    sub_1D6B4ACC8(v57, v138 + *(v143 + 28), &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
    *v58 = v52;
    v58[1] = v53;
    v59 = v58;
    v58[2] = v56;
    v58[3] = v55;
    v10 = v54;
    v60 = v163;

    sub_1D5B71354(v55);
    sub_1D6B4AD48(v60, sub_1D6B4AB6C);
    v154 = v10;
    v62 = *(v10 + 2);
    v61 = *(v10 + 3);
    if (v62 >= v61 >> 1)
    {
      sub_1D6997860(v61 > 1, v62 + 1, 1);
      v10 = v154;
    }

    *(v10 + 2) = v62 + 1;
    result = sub_1D6B4ADA8(v59, &v10[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v62], type metadata accessor for FormatOption);
    v40 = v139;
    v41 = 1 << v139[32];
    if (v35 >= v41)
    {
      goto LABEL_83;
    }

    v63 = *&v149[8 * v43];
    if ((v63 & (1 << v35)) == 0)
    {
      goto LABEL_84;
    }

    if (v150 != *(v139 + 9))
    {
      goto LABEL_85;
    }

    v64 = v63 & (-2 << (v35 & 0x3F));
    if (v64)
    {
      v41 = __clz(__rbit64(v64)) | v35 & 0x7FFFFFFFFFFFFFC0;
      v39 = v140;
      v42 = v135;
    }

    else
    {
      v65 = v43 << 6;
      v66 = v43 + 1;
      v67 = &v134[8 * v43];
      v39 = v140;
      v42 = v135;
      while (v66 < (v41 + 63) >> 6)
      {
        v69 = *v67++;
        v68 = v69;
        v65 += 64;
        ++v66;
        if (v69)
        {
          sub_1D5C25E1C(v35, v150, 0);
          v40 = v139;
          v41 = __clz(__rbit64(v68)) + v65;
          goto LABEL_10;
        }
      }

      sub_1D5C25E1C(v35, v150, 0);
      v40 = v139;
    }

LABEL_10:
    v36 = v148 + 1;
    v35 = v41;
    result = v137;
    v37 = v142;
    v38 = v141;
    if (v148 + 1 == v42)
    {
      sub_1D6B4ABD8(v137);

      return v10;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t FormatOptionsNodeStatement.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionsNodeStatement.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8[0] = *(v1 + 48);
  v3 = v8[0];
  *(v8 + 15) = *(v1 + 63);
  v4 = *(v8 + 15);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 47) = v4;
  return sub_1D5CF5DBC(v7, v6);
}

uint64_t FormatOptionsNodeStatement.modifiers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t _s8NewsFeed26FormatOptionsNodeStatementV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v32[0] = *(a1 + 1);
  v32[1] = v6;
  v33[0] = *(a1 + 3);
  *(v33 + 15) = *(a1 + 63);
  v7 = a1[9];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(v35 + 15) = *(a2 + 63);
  v34[1] = v11;
  v35[0] = v12;
  v34[0] = v10;
  v13 = a2[9];
  if (v4 == v8 && v5 == v9 || (v14 = sub_1D72646CC(), v15 = 0, (v14 & 1) != 0))
  {
    v16 = *(a1 + 2);
    v25 = *(a1 + 1);
    v17 = *(a1 + 3);
    v26 = v16;
    v27[0] = v17;
    *(v27 + 15) = *(a1 + 63);
    v18 = *(a2 + 2);
    v22 = *(a2 + 1);
    v23 = v18;
    v24[0] = *(a2 + 3);
    *(v24 + 15) = *(a2 + 63);
    sub_1D5CF5DBC(v32, v21);
    sub_1D5CF5DBC(v34, v21);
    v19 = static FormatOptionsNodeStatementValue.== infix(_:_:)(&v25, &v22);
    v28[0] = v22;
    v28[1] = v23;
    v29[0] = v24[0];
    *(v29 + 15) = *(v24 + 15);
    sub_1D5CF603C(v28);
    v30[0] = v25;
    v30[1] = v26;
    v31[0] = v27[0];
    *(v31 + 15) = *(v27 + 15);
    sub_1D5CF603C(v30);
    if (v19)
    {
      v15 = sub_1D633D588(v7, v13);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

unint64_t sub_1D6B4AA48(uint64_t a1)
{
  result = sub_1D6B4AA70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B4AA70()
{
  result = qword_1EC8924E0;
  if (!qword_1EC8924E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924E0);
  }

  return result;
}

unint64_t sub_1D6B4AAC4(void *a1)
{
  a1[1] = sub_1D5C588A4();
  a1[2] = sub_1D5C588F8();
  result = sub_1D6B4AAFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B4AAFC()
{
  result = qword_1EC8924E8;
  if (!qword_1EC8924E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924E8);
  }

  return result;
}

void sub_1D6B4AB6C()
{
  if (!qword_1EDF1B710)
  {
    type metadata accessor for FormatOptionsNodeStatementResult();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B710);
    }
  }
}

uint64_t sub_1D6B4ABD8(uint64_t a1)
{
  sub_1D6B4AE10(0, qword_1EDF1D208, type metadata accessor for FormatOptionsNodeStatementEvaluation, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6B4AC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOptionsNodeStatementResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B4ACC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6B4AE10(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6B4AD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6B4ADA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6B4AE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatImageResize.description.getter()
{
  v1 = 0x656C616373;
  v2 = 1701603700;
  if (*v0 != 2)
  {
    v2 = 0x69736E6972746E69;
  }

  if (*v0)
  {
    v1 = 1886351971;
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

unint64_t sub_1D6B4AEE8()
{
  result = qword_1EC8924F0;
  if (!qword_1EC8924F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924F0);
  }

  return result;
}

uint64_t sub_1D6B4AF3C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B4AFF0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6B4B090()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B4B140(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C616373;
  v4 = 0xE400000000000000;
  v5 = 1701603700;
  if (*v1 != 2)
  {
    v5 = 0x69736E6972746E69;
    v4 = 0xE900000000000063;
  }

  if (*v1)
  {
    v3 = 1886351971;
    v2 = 0xE400000000000000;
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

unint64_t sub_1D6B4B1B0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B4B1E0();
  result = sub_1D5CAAA40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B4B1E0()
{
  result = qword_1EC8924F8;
  if (!qword_1EC8924F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8924F8);
  }

  return result;
}

uint64_t sub_1D6B4B240()
{
  v1 = 0x656C616373;
  v2 = 1701603700;
  if (*v0 != 2)
  {
    v2 = 0x69736E6972746E69;
  }

  if (*v0)
  {
    v1 = 1886351971;
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

unint64_t sub_1D6B4B2AC(uint64_t a1)
{
  result = sub_1D6B4B2D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B4B2D4()
{
  result = qword_1EC892500;
  if (!qword_1EC892500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892500);
  }

  return result;
}

unint64_t sub_1D6B4B328(void *a1)
{
  a1[1] = sub_1D5C93FDC();
  a1[2] = sub_1D6698038();
  result = sub_1D6B4AEE8();
  a1[3] = result;
  return result;
}

id sub_1D6B4B38C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_identifier];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_reuseIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_onReuse;
  sub_1D5BFDBB4();
  *&v0[v4] = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for VideoView()) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for VideoPlaceholderView()) initWithFrame_];
  v0[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_isLiveIconHidden] = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D6B4B52C()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController))
    {
      v3 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D6BCE844(*(v3 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey), *(v3 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey + 8));
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1D6B4B70C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setAutoresizingMask_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = *&v1[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame];
  [v6 addSubview_];

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview_];

    v11 = *(v8 + qword_1EDF1BA08);
    sub_1D726345C();

    v12 = *(v8 + qword_1EDF1BA28);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = sub_1D6B4CAF8;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D5B6B06C;
    v16[3] = &block_descriptor_79;
    v14 = _Block_copy(v16);
    v15 = v12;

    [v15 onTouchUpInside_];
    _Block_release(v14);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1D6B4B948()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D6AF2150(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D6B4BA94(uint64_t a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 5)
    {
      *(v8 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_isViewTransitionInProcess) = 1;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D6B4BBEC()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView];
  v3 = &off_1E84D3000;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  [result bounds];

  sub_1D726344C();
  v6 = [v2 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v7 = sub_1D726267C();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_1D7263BFC();
    if (v8)
    {
LABEL_4:
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        v13 = v3;
        result = [v1 v3[419]];
        if (!result)
        {
          break;
        }

        v14 = result;
        [result bounds];

        sub_1D726344C();
        ++v9;
        v3 = v13;
        if (v12 == v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_16:

  result = [v1 v3[419]];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  [result bounds];

  sub_1D726344C();
  result = [v1 v3[419]];
  if (result)
  {
    v16 = result;
    [result bounds];

    return sub_1D726344C();
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D6B4BF30()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_identifier);

  return v1;
}

uint64_t sub_1D6B4BF70()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D6B4BFCC(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1D6B4C094()
{
  v1 = [v0 childViewControllers];
  sub_1D5B5A498(0, &qword_1EDF1AA80);
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_1D7263BFC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

LABEL_6:

    ++v4;
    if (v9 == v3)
    {
      goto LABEL_19;
    }
  }

  result = [v8 view];
  if (!result)
  {
    goto LABEL_23;
  }

  v10 = result;
  v11 = [result constraints];

  if (!v11)
  {
    sub_1D5B5A498(0, &qword_1EC87FF48);
    sub_1D726267C();
    v11 = sub_1D726265C();
  }

  [objc_opt_self() deactivateConstraints_];

  [v8 willMoveToParentViewController_];
  result = [v8 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    [v8 removeFromParentViewController];
    goto LABEL_6;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1D6B4C2E8()
{
  MEMORY[0x1DA6F6CF0]();
  v0 = sub_1D725F64C();
}

void sub_1D6B4C338()
{
  sub_1D6B4CAB8(&qword_1EC892550);

  JUMPOUT(0x1DA6F6FC0);
}

void sub_1D6B4C3C4(void *a1)
{
  v2 = v1;
  v4 = [a1 parentViewController];
  if (v4)
  {
    v5 = v4;

    if (v5 == v2)
    {
      v16 = [a1 viewIfLoaded];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 isDescendantOfView_];

        if (v18)
        {
          return;
        }
      }
    }
  }

  sub_1D6B4C094();
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [v6 constraints];

  if (!v8)
  {
    sub_1D5B5A498(0, &qword_1EC87FF48);
    sub_1D726267C();
    v8 = sub_1D726265C();
  }

  [objc_opt_self() deactivateConstraints_];

  [a1 willMoveToParentViewController_];
  v9 = [a1 view];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  [v9 removeFromSuperview];

  [a1 removeFromParentViewController];
  [v2 addChildViewController_];
  v11 = *&v2[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView];
  v12 = [a1 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v11 addSubview_];

  v14 = [a1 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v15 = v14;
  [v11 bounds];
  sub_1D726344C();

  [a1 didMoveToParentViewController_];
}

void sub_1D6B4C628(void *a1, void *a2)
{
  [a1 setClipsToBounds_];
  v4 = [a1 layer];
  v5 = [a2 layer];
  v6 = [v5 maskedCorners];

  [v4 setMaskedCorners_];
  v7 = [a1 layer];
  v8 = [a2 layer];
  [v8 cornerRadius];
  v10 = v9;

  [v7 setCornerRadius_];
  v13 = [a1 layer];
  v11 = [a2 layer];
  v12 = [v11 cornerCurve];

  [v13 setCornerCurve_];
}

id sub_1D6B4C7B0()
{
  v1 = v0;
  v2 = sub_1D725EC1C();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = sub_1D725EC1C();
  [v11 contentSize];
  v13 = v12;

  v14 = sub_1D725EC1C();
  [v14 contentSize];
  v16 = v15;

  if (v16 < v13)
  {
    v17 = sub_1D725EC1C();
    v18 = [v17 window];

    if (v18)
    {
      [v18 safeAreaInsets];
      v20 = v19;
      v22 = v21;
    }

    else
    {
      v20 = *MEMORY[0x1E69DDCE0];
      v22 = *(MEMORY[0x1E69DDCE0] + 8);
    }

    v4 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v20, v22);
    v6 = v23;
    v8 = v24;
    v10 = v25;
  }

  v26 = sub_1D725EC1C();
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = result;
  [result bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = [v1 view];
  [v26 convertRect:v37 fromView:{v30, v32, v34, v36}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v64.origin.x = v4;
  v64.origin.y = v6;
  v64.size.width = v8;
  v64.size.height = v10;
  v69.origin.x = v39;
  v69.origin.y = v41;
  v69.size.width = v43;
  v69.size.height = v45;
  v65 = CGRectIntersection(v64, v69);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  v50 = CGRectGetWidth(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v51 = CGRectGetHeight(v66);
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v52 = result;
  [result bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v67.origin.x = v54;
  v67.origin.y = v56;
  v67.size.width = v58;
  v67.size.height = v60;
  v61 = CGRectGetWidth(v67);
  v68.origin.x = v54;
  v68.origin.y = v56;
  v68.size.width = v58;
  v68.size.height = v60;
  v62 = CGRectGetHeight(v68);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D6AF3EF4(v50 * v51 / (v61 * v62));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D6B4CAB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVideoPlayerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B4CB00()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_reuseIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_onReuse;
  sub_1D5BFDBB4();
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  v5 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for VideoView()) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for VideoPlaceholderView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_isLiveIconHidden) = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6B4CC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1D725FC7C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*v3 < 0)
  {
    v19 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);

    v22 = sub_1D6B4D040(a2, a1, v20, v21);

    if (!v4)
    {
      if (*(v22 + 16))
      {
        v23 = *(v22 + 32);

        v28 = v23;

        sub_1D6B4CC64(a1, a2);
      }

      else
      {

        v25 = *(*(type metadata accessor for FormatSourceItemTipSource() - 8) + 56);
        return v25(a3, 1, 1);
      }
    }
  }

  else
  {
    v27 = v10;
    v32 = a3;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    LOBYTE(v28) = v14;
    sub_1D5F586D0(v15, v16, v17);
    sub_1D708C6D0(a1, v12);
    if (v4)
    {
      return sub_1D5F5870C(v15, v16, v17);
    }

    else
    {
      LOBYTE(v28) = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v26 = type metadata accessor for FormatSourceItemTipSource();
      v24 = v32;
      sub_1D6E48ADC(a1, v32 + *(v26 + 20));
      sub_1D5F5870C(v15, v16, v17);
      (*(v27 + 32))(v24, v12, v8);
      return (*(*(v26 - 8) + 56))(v24, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1D6B4CF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D634EA04(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {

      v6 = sub_1D634EB4C(a2, a4);

      if (v6)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D6B4CF98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D634F5E0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {

      v6 = sub_1D633CED4(a2, a4);

      if (v6)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D6B4D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a3 + 16);
  if (v5)
  {

    v9 = (a3 + 40);
    while (1)
    {
      v4 = *v9;

      v11 = sub_1D71C3ED0(v10);
      if (v12)
      {
        v13 = (v11)(a2, a1);
        sub_1D6B4D3F4();
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v11(a2);
        sub_1D6B4D3F4();
        if (v14)
        {
LABEL_11:

          return v4;
        }
      }

      v9 += 2;
      if (!--v5)
      {

        v4 = a4;
        break;
      }
    }
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t _s8NewsFeed16FormatSourceItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v13 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v16 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      LOBYTE(v14) = sub_1D6B4CF04(v15, v14, v17, v18);

      return v14 & 1;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v20 = *(v2 + 16);
    v19 = v7;
    if (_s8NewsFeed26FormatSourceItemTipBindingO2eeoiySbAC_ACtFZ_0(&v20, &v19))
    {

      sub_1D5F586D0(v8, v9, v10);
      v11 = sub_1D5F4F670(v4, v5, v6, v8, v9, v10);
      sub_1D5F5870C(v8, v9, v10);

      if (v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6B4D324(uint64_t a1)
{
  result = sub_1D66B9BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B4D34C(void *a1)
{
  a1[1] = sub_1D5C6590C();
  a1[2] = sub_1D5C65960();
  result = sub_1D6B4D384();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B4D384()
{
  result = qword_1EDF2FE00;
  if (!qword_1EDF2FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FE00);
  }

  return result;
}

id sub_1D6B4D4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugFormatBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6B4D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = objc_opt_self();
  sub_1D5B68374(a4, v24);
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  sub_1D5B63F14(v24, (v12 + 7));
  v22 = sub_1D6B4EA0C;
  v23 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1D5B6B06C;
  v21 = &block_descriptor_80;
  v13 = _Block_copy(&aBlock);

  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D5B68374(a4, v24);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v14;
  v15[5] = a2;
  v15[6] = a3;
  sub_1D5B63F14(v24, (v15 + 7));
  v22 = sub_1D6B4EA20;
  v23 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1D5DF8CE4;
  v21 = &block_descriptor_21_0;
  v16 = _Block_copy(&aBlock);

  [v17 animateWithDuration:v13 animations:v16 completion:0.2];
  _Block_release(v16);
  _Block_release(v13);
}

void sub_1D6B4D7A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for FeedItemDimmingType();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = *(v10 + 120);
        v16 = *(v10 + 128);
        v20 = __swift_project_boxed_opaque_existential_1((v10 + 96), v15);
        __swift_project_boxed_opaque_existential_1(a4, a4[3]);
        *v8 = sub_1D725AA4C();
        v8[1] = v17;
        swift_storeEnumTagMultiPayload();
        v18 = (*(v16 + 8))(v8, v15, v16);
        sub_1D5C24C68(v8, type metadata accessor for FeedItemDimmingType);
        v19 = sub_1D725DBEC();
        sub_1D6B4D9A0(v19, v18 & 1, *(v10 + 144));

        [v12 setAlpha_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D6B4D9A0(id a1, char a2, double a3)
{
  if (a2)
  {
    v5 = [a1 layer];
    v6 = [a1 traitCollection];
    [v6 displayScale];
    v8 = v7;

    [v5 setRasterizationScale_];
    v9 = [a1 layer];
    [v9 setShouldRasterize_];

    [a1 setAlpha_];
  }

  else
  {
    [a1 setAlpha_];
    v10 = [a1 layer];
    [v10 setShouldRasterize_];
  }
}

void sub_1D6B4DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v7 removeFromSuperview];
        v10 = sub_1D725DBEC();
        [v10 setIsAccessibilityElement_];

        sub_1D6B4DC14(a5);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1D6B4DC14(void *a1)
{
  v2 = sub_1D725E84C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F2DC(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 48))(&v21, v11, v12);
  result = v21;
  if (v21 != 2)
  {
    if (v21)
    {

      return sub_1D5D62440(result);
    }

    else
    {
      sub_1D5B68374(a1, v19);
      sub_1D5EFF46C();
      v14 = type metadata accessor for FeedItem(0);
      v15 = swift_dynamicCast();
      v16 = *(*(v14 - 8) + 56);
      if (v15)
      {
        v16(v10, 0, 1, v14);
        v17 = FeedItem.headline.getter();
        result = sub_1D5C24C68(v10, type metadata accessor for FeedItem);
        if (v17)
        {
          if (qword_1EDF3AC08 != -1)
          {
            swift_once();
          }

          v18[1] = v17;
          (*(v3 + 104))(v6, *MEMORY[0x1E69D7FB8], v2);
          memset(v19, 0, sizeof(v19));
          v20 = 1;
          swift_unknownObjectRetain();
          sub_1D725E82C();
          swift_unknownObjectRelease();
          (*(v3 + 8))(v6, v2);
          return swift_unknownObjectRelease();
        }
      }

      else
      {
        v16(v10, 1, 1, v14);
        return sub_1D5C24C68(v10, sub_1D5C1F2DC);
      }
    }
  }

  return result;
}

uint64_t sub_1D6B4DF40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_1D6B4DFB4(void *a1, uint64_t a2, char *a3)
{
  [a3 setFrame_];
  v6 = *&a3[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_titleLabel];
  [v6 setNumberOfLines_];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1 + 1, v7);
  v22 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  v10 = sub_1D5BF9C38(v21);
  __swift_destroy_boxed_opaque_existential_1(v21);
  [v6 setAttributedText_];

  [v6 setFrame_];
  if (!a1[7])
  {
    goto LABEL_4;
  }

  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1 + 1, v11);
  v22 = v11;
  v13 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v14 = sub_1D5BF9C38(v21);
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (*(a2 + 96))
  {

LABEL_4:
    [*&a3[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton] setHidden_];
    return;
  }

  v16 = *(a2 + 80);
  v15 = *(a2 + 88);
  v18 = *(a2 + 64);
  v17 = *(a2 + 72);
  v19 = *&a3[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_dismissalButton];
  v20 = [v19 titleLabel];
  [v20 setNumberOfLines_];

  [v19 setAttributedTitle:v14 forState:0];
  [v19 setFrame_];
}

void *sub_1D6B4E20C(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v12 = *MEMORY[0x1E69E7D40] & *a2;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  result = (*(v14 + 48))(v107, v13, v14);
  v16 = v107[0];
  if (v107[0] != 2)
  {
    if (sub_1D726337C())
    {

      return sub_1D5D62440(v16);
    }

    else
    {
      v17 = sub_1D725DBEC();
      sub_1D726343C();

      v18 = sub_1D725DBEC();
      [v18 setIsAccessibilityElement_];

      *&v101[0] = v16;
      sub_1D5B68374(v7 + 56, v107);
      sub_1D5EE5A94(v16);
      sub_1D70DD208(v101, v107, &v103);
      v19 = [objc_opt_self() mainScreen];
      [v19 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v117.origin.x = v21;
      v117.origin.y = v23;
      v117.size.width = v25;
      v117.size.height = v27;
      Width = CGRectGetWidth(v117);
      v118.origin.x = 0.0;
      v118.origin.y = 0.0;
      v118.size.width = a5;
      v118.size.height = a6;
      if (CGRectGetWidth(v118) / Width <= 0.5)
      {
        v29 = 0.85;
      }

      else
      {
        v29 = 0.6;
      }

      v30 = v105;
      v31 = __swift_project_boxed_opaque_existential_1(v104, v105);
      v108 = *&v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v31, v30);
      v33 = sub_1D5BF9C38(v107);
      __swift_destroy_boxed_opaque_existential_1(v107);
      v119.origin.x = 0.0;
      v119.origin.y = 0.0;
      v119.size.width = a5;
      v119.size.height = a6;
      v99 = v29;
      [v33 boundingRectWithSize:3 options:0 context:{v29 * CGRectGetWidth(v119), 1.79769313e308}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v120.origin.x = 0.0;
      v120.origin.y = 0.0;
      v120.size.width = a5;
      v120.size.height = a6;
      v42 = CGRectGetWidth(v120);
      v121.origin.x = v35;
      v121.origin.y = v37;
      v121.size.width = v39;
      v121.size.height = v41;
      v43 = v42 - CGRectGetWidth(v121);
      v44 = v43 * 0.5;
      if (v103 == 1)
      {
        v122.origin.x = 0.0;
        v122.origin.y = 0.0;
        v122.size.width = a5;
        v122.size.height = a6;
        Height = CGRectGetHeight(v122);
        v123.origin.x = v35;
        v123.origin.y = v37;
        v123.size.width = v39;
        v123.size.height = v41;
        v46 = Height - CGRectGetHeight(v123);
      }

      else
      {
        v97 = v43 * 0.5;
        v47 = 0.0;
        if (v106)
        {
          v48 = v105;
          v49 = __swift_project_boxed_opaque_existential_1(v104, v105);
          v108 = *&v48;
          v50 = __swift_allocate_boxed_opaque_existential_1(v107);
          (*(*(v48 - 8) + 16))(v50, v49, v48);
          v51 = sub_1D5BF9C38(v107);
          __swift_destroy_boxed_opaque_existential_1(v107);
          sub_1D726334C();
          sub_1D726312C();
          v53 = v52;
          v55 = v54;
          v95 = v56;
          rect = v57;

          v124.origin.x = v53;
          v124.origin.y = v55;
          v124.size.width = v95;
          v124.size.height = rect;
          v47 = CGRectGetHeight(v124);
        }

        v125.origin.x = 0.0;
        v125.origin.y = 0.0;
        v125.size.width = a5;
        v125.size.height = a6;
        v58 = CGRectGetHeight(v125);
        v126.origin.x = v35;
        v126.origin.y = v37;
        v126.size.width = v39;
        v126.size.height = v41;
        v46 = v58 - CGRectGetHeight(v126) - v47 + -16.0;
        v44 = v97;
      }

      v127.origin.y = v46 * 0.5;
      v127.origin.x = v44;
      v127.size.width = v39;
      v127.size.height = v41;
      v128 = CGRectIntegral(v127);
      x = v128.origin.x;
      y = v128.origin.y;
      v61 = v128.size.width;
      v62 = v128.size.height;

      v63 = v106;
      if (v106)
      {
        v64 = v105;
        v65 = __swift_project_boxed_opaque_existential_1(v104, v105);
        v108 = *&v64;
        v66 = __swift_allocate_boxed_opaque_existential_1(v107);
        (*(*(v64 - 8) + 16))(v66, v65, v64);
        v67 = sub_1D5BF9C38(v107);
        __swift_destroy_boxed_opaque_existential_1(v107);
        v129.origin.x = 0.0;
        v129.origin.y = 0.0;
        v129.size.width = a5;
        v129.size.height = a6;
        [v67 boundingRectWithSize:3 options:0 context:{v99 * CGRectGetWidth(v129), 1.79769313e308}];
        v96 = v61;
        v98 = y;
        v68 = x;
        v70 = v69;
        v72 = v71;
        v100 = v62;
        v74 = v73;
        v76 = v75;
        v130.origin.x = 0.0;
        v130.origin.y = 0.0;
        v130.size.width = a5;
        v130.size.height = a6;
        v77 = CGRectGetWidth(v130);
        v131.origin.x = v70;
        x = v68;
        v131.origin.y = v72;
        v61 = v96;
        y = v98;
        v131.size.width = v74;
        v131.size.height = v76;
        v78 = (v77 - CGRectGetWidth(v131)) * 0.5;
        v132.origin.x = x;
        v132.origin.y = v98;
        v132.size.width = v96;
        v132.size.height = v100;
        v133.origin.y = CGRectGetMaxY(v132) + 16.0;
        v133.origin.x = v78;
        v133.size.width = v74;
        v62 = v100;
        v133.size.height = v76;
        v134 = CGRectIntegral(v133);
        v91 = v134.origin.x;
        v92 = v134.origin.y;
        v90 = v134.size.width;
        recta = v134.size.height;

        *&v80 = v90;
        *&v79 = v91;
        *(&v79 + 1) = v92;
        *(&v80 + 1) = recta;
      }

      else
      {
        v79 = 0uLL;
        v80 = 0uLL;
      }

      v102 = v63 == 0;
      v107[0] = 0;
      v107[1] = 0;
      *&v107[2] = a5;
      v108 = a6;
      v109 = x;
      v110 = y;
      v111 = v61;
      v112 = v62;
      v113 = v79;
      v114 = v80;
      v115 = v63 == 0;
      v81 = [objc_allocWithZone(type metadata accessor for HiddenContentPlacardView()) initWithFrame_];
      sub_1D6B4DFB4(&v103, v107, v81);
      v82 = *&v81[OBJC_IVAR____TtC8NewsFeed24HiddenContentPlacardView_onTap];
      v83 = swift_allocObject();
      swift_weakInit();
      v84 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v85 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D5B68374(a1, v101);
      v86 = swift_allocObject();
      v87 = (v12 + *MEMORY[0x1E69D7B28]);
      v86[2] = *v87;
      v86[3] = v87[1];
      v86[4] = v83;
      v86[5] = v84;
      v86[6] = v85;
      sub_1D5B63F14(v101, (v86 + 7));
      v88 = v82;

      v89 = [a2 contentView];
      [v89 addSubview_];

      sub_1D5D62440(v16);
      return sub_1D6B4E9B8(&v103);
    }
  }

  return result;
}

uint64_t static FormatImageAdjustmentMask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5F78F40(a1, v6);
  sub_1D5F78F40(a2, v7);
  sub_1D5F78F40(v6, v8);
  sub_1D5F78F40(v7, v9);
  v5[4] = v8[4];
  v5[5] = v8[5];
  v5[6] = v8[6];
  v5[7] = v8[7];
  v5[0] = v8[0];
  v5[1] = v8[1];
  v5[2] = v8[2];
  v5[3] = v8[3];
  v4[4] = v9[4];
  v4[5] = v9[5];
  v4[6] = v9[6];
  v4[7] = v9[7];
  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v4[3] = v9[3];
  return _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v5, v4) & 1;
}

uint64_t sub_1D6B4EB08(uint64_t a1, uint64_t a2)
{
  sub_1D5F78F40(a1, v6);
  sub_1D5F78F40(a2, v7);
  sub_1D5F78F40(v6, v8);
  sub_1D5F78F40(v7, v9);
  v5[4] = v8[4];
  v5[5] = v8[5];
  v5[6] = v8[6];
  v5[7] = v8[7];
  v5[0] = v8[0];
  v5[1] = v8[1];
  v5[2] = v8[2];
  v5[3] = v8[3];
  v4[4] = v9[4];
  v4[5] = v9[5];
  v4[6] = v9[6];
  v4[7] = v9[7];
  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v4[3] = v9[3];
  return _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v5, v4) & 1;
}

unint64_t sub_1D6B4EBAC(uint64_t a1)
{
  result = sub_1D6B4EBD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B4EBD4()
{
  result = qword_1EC892558;
  if (!qword_1EC892558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892558);
  }

  return result;
}

unint64_t sub_1D6B4EC28(void *a1)
{
  a1[1] = sub_1D665C5D0();
  a1[2] = sub_1D6705C00();
  result = sub_1D6B4EC60();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B4EC60()
{
  result = qword_1EC892560[0];
  if (!qword_1EC892560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC892560);
  }

  return result;
}

uint64_t SharingPuzzleActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingPuzzleActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static FormatFileReferenceCollection.== infix(_:_:)()
{
  type metadata accessor for FormatFileReference();
  swift_getWitnessTable();

  return sub_1D726280C();
}

uint64_t FormatFileReferenceCollection.latestFormatCompatible.getter()
{
  type metadata accessor for FormatFileReference();

  return Array<A>.latestFormatCompatible.getter();
}

uint64_t FormatFileReferenceCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v99 = type metadata accessor for FormatFileReferenceCollection.MetadataContainer();
  v86 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v3);
  v103 = &v74 - v4;
  sub_1D6B4FCB0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v94 = &v74 - v7;
  sub_1D6B4FCB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v93 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v88 = &v74 - v13;
  v98 = sub_1D725BD1C();
  v80 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v92 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v102 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v90 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v96 = &v74 - v27;
  v106 = type metadata accessor for FormatMetadata();
  v100 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v28);
  v104 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = &v74 - v32;
  sub_1D6B4FCB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v89 = &v74 - v35;
  v36 = sub_1D7263FCC();
  v79 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatFileReference();
  v78 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v74 - v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v105;
  sub_1D7264ADC();
  v49 = a1;
  if (v48)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v50 = v100;
  v105 = v47;
  v75 = v43;
  v81 = v39;
  v82 = v36;
  v97 = v49;
  v101 = v40;
  v51 = sub_1D726275C();
  v111 = v51;
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  if (sub_1D72644FC())
  {
    v52 = v97;
LABEL_21:
    v73 = v84;
    __swift_destroy_boxed_opaque_existential_1(&v109);
    *v73 = v51;
    v49 = v52;
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v85 = v50 + 6;
  v91 = (v80 + 6);
  v83 = (v80 + 4);
  v100 = (v80 + 1);
  v86 += 8;
  v80 = (v79 + 6);
  v77 = (v79 + 4);
  ++v79;
  v76 = (v78 + 1);
  v78 += 2;
  v52 = v97;
  v53 = v95;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
    swift_getWitnessTable();
    sub_1D72644EC();
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v54 = sub_1D7264AFC();
    v55 = v89;
    sub_1D7263FBC();
    v56 = v82;
    result = (*v80)(v55, 1, v82);
    if (result == 1)
    {
      break;
    }

    v58 = v81;
    (*v77)(v81, v55, v56);
    if (!*(v54 + 16) || (v59 = sub_1D5B7C598(v58), (v60 & 1) == 0))
    {

      (*v79)(v58, v56);
LABEL_13:
      v61 = v101;
LABEL_14:
      FormatFileReference.metadata.getter(v61, v53);
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v63 = sub_1D7264AFC();
      Dictionary<>.appVersion.getter(v63, v96);
      v64 = v98;

      v65 = sub_1D7264AFC();
      v66 = v87;
      Dictionary<>.formatVersion.getter(v65, v87);

      v67 = v88;
      sub_1D6B505C4(&v53[*(v106 + 28)], v88, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v68 = 1;
      if ((*v91)(v67, 1, v64) != 1)
      {
        v69 = v90;
        (*v83)(v90, v67, v64);
        v68 = sub_1D725B9FC();
        (*v100)(v69, v64);
      }

      sub_1D5C3548C(&qword_1EDF415C8);
      v70 = v96;
      v71 = sub_1D725A94C();
      v72 = *v100;
      (*v100)(v70, v64);
      sub_1D5D3A908(v53);
      v72(v66, v64);
      v62 = v105;
      v61 = v101;
      v52 = v97;
      if ((v71 & 1) == 0 || (v68 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    sub_1D5B76B10(*(v54 + 56) + 32 * v59, v108);
    (*v79)(v58, v56);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v61 = v101;
    v62 = v105;
    if ((v107 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    (*v78)(v75, v62, v61);
    sub_1D72627FC();
    sub_1D72627BC();
LABEL_19:
    (*v76)(v62, v61);
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    if (sub_1D72644FC())
    {
      v51 = v111;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}