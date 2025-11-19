uint64_t sub_1D7BBE5D0(uint64_t a1)
{
  v2 = sub_1D7BBF198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BBE60C(uint64_t a1)
{
  v2 = sub_1D7BBF198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7BBE648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7BBE6C8(uint64_t a1)
{
  v2 = sub_1D7BBF144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BBE704(uint64_t a1)
{
  v2 = sub_1D7BBF144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7BBE740@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](v3, a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1D7BBF0E4(v6, type metadata accessor for EndOfRecipeFeedGroup);
  *a2 = EnumCaseMultiPayload;
  return result;
}

uint64_t sub_1D7BBE88C(uint64_t a1)
{
  v2 = sub_1D7BBF420(&qword_1EC9E1F70, type metadata accessor for EndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21DE0](a1, v2);
}

uint64_t sub_1D7BBE908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7BBF420(&qword_1EC9E6190, type metadata accessor for EndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21E10](a1, a2, a3, v6);
}

uint64_t sub_1D7BBE9B8(uint64_t a1)
{
  v2 = sub_1D7BBF420(&qword_1EC9E6190, type metadata accessor for EndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7BBEA24(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7BBF0E4(v4, type metadata accessor for EndOfRecipeFeedGroup);
  if (!EnumCaseMultiPayload)
  {
    return 0x6F54657069636552;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x41646574616C6552;
  }

  return 0x52646574616C6552;
}

uint64_t sub_1D7BBEB5C(uint64_t a1)
{
  v2 = sub_1D7BBF420(&qword_1EC9E6198, type metadata accessor for EndOfRecipeFeedGroup);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7BBEBC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v19, v11, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v22 = v11;
    }

    else
    {
      v21 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v19, v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v22 = v7;
    }
  }

  else
  {
    v21 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    sub_1D7BBF350(v19, v15, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v22 = v15;
  }

  sub_1D7BBF0E4(v22, v21);
  v23 = sub_1D7D2F05C();
  return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
}

uint64_t type metadata accessor for EndOfRecipeFeedGroup()
{
  result = qword_1EC9E61D0;
  if (!qword_1EC9E61D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7BBEF10()
{
  result = qword_1EC9E61A0;
  if (!qword_1EC9E61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E61A0);
  }

  return result;
}

unint64_t sub_1D7BBEF6C()
{
  result = qword_1EC9E61A8;
  if (!qword_1EC9E61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E61A8);
  }

  return result;
}

uint64_t sub_1D7BBF0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7BBF144()
{
  result = qword_1EC9E61E8;
  if (!qword_1EC9E61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E61E8);
  }

  return result;
}

unint64_t sub_1D7BBF198()
{
  result = qword_1EC9E61F8;
  if (!qword_1EC9E61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E61F8);
  }

  return result;
}

unint64_t sub_1D7BBF1EC()
{
  result = qword_1EC9E6208;
  if (!qword_1EC9E6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6208);
  }

  return result;
}

unint64_t sub_1D7BBF240()
{
  result = qword_1EC9E6218;
  if (!qword_1EC9E6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6218);
  }

  return result;
}

void sub_1D7BBF294()
{
  if (!qword_1EC9E6220)
  {
    sub_1D7BBF304();
    sub_1D7D314CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6220);
    }
  }
}

unint64_t sub_1D7BBF304()
{
  result = qword_1EC9E6228;
  if (!qword_1EC9E6228)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC9E6228);
  }

  return result;
}

uint64_t sub_1D7BBF350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7BBF3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D7BBF420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7BBF4AC()
{
  result = qword_1EC9E6280;
  if (!qword_1EC9E6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6280);
  }

  return result;
}

unint64_t sub_1D7BBF504()
{
  result = qword_1EC9E6288;
  if (!qword_1EC9E6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6288);
  }

  return result;
}

unint64_t sub_1D7BBF55C()
{
  result = qword_1EC9E6290;
  if (!qword_1EC9E6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6290);
  }

  return result;
}

unint64_t sub_1D7BBF5B4()
{
  result = qword_1EC9E6298;
  if (!qword_1EC9E6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6298);
  }

  return result;
}

unint64_t sub_1D7BBF60C()
{
  result = qword_1EC9E62A0;
  if (!qword_1EC9E62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62A0);
  }

  return result;
}

unint64_t sub_1D7BBF664()
{
  result = qword_1EC9E62A8;
  if (!qword_1EC9E62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62A8);
  }

  return result;
}

unint64_t sub_1D7BBF6BC()
{
  result = qword_1EC9E62B0;
  if (!qword_1EC9E62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62B0);
  }

  return result;
}

unint64_t sub_1D7BBF714()
{
  result = qword_1EC9E62B8;
  if (!qword_1EC9E62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62B8);
  }

  return result;
}

unint64_t sub_1D7BBF76C()
{
  result = qword_1EC9E62C0;
  if (!qword_1EC9E62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62C0);
  }

  return result;
}

unint64_t sub_1D7BBF7C4()
{
  result = qword_1EC9E62C8;
  if (!qword_1EC9E62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62C8);
  }

  return result;
}

unint64_t sub_1D7BBF81C()
{
  result = qword_1EC9E62D0;
  if (!qword_1EC9E62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62D0);
  }

  return result;
}

unint64_t sub_1D7BBF874()
{
  result = qword_1EC9E62D8;
  if (!qword_1EC9E62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62D8);
  }

  return result;
}

uint64_t sub_1D7BBF8C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54657069636572 && a2 == 0xEC00000073636970;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41646574616C6572 && a2 == 0xEF73656C63697472 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52646574616C6572 && a2 == 0xEE00736570696365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7BBFA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = type metadata accessor for EndOfRecipeFeedConfig();
  MEMORY[0x1EEE9AC00](v44, v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D798EAF8(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v43 - v8;
  sub_1D798EAF8(0, &qword_1EC9E62E0, sub_1D7BC05C4, v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - v11;
  sub_1D798EAF8(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - v15;
  sub_1D7BC07B8(0, &qword_1EC9E62F0, MEMORY[0x1E69D6990]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v43 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BC0690();
  v23 = v48;
  sub_1D7D31ADC();
  if (v23)
  {
    v36 = a1;
  }

  else
  {
    v24 = v19;
    v48 = a1;
    v25 = v47;
    sub_1D7D2833C();
    v51 = 0;
    sub_1D7BC08F4(&qword_1EE0CB748, MEMORY[0x1E6969530]);
    v26 = v22;
    sub_1D7D2926C();
    v43 = v16;
    sub_1D7BC05C4();
    v28 = v27;
    v50 = 1;
    sub_1D7BC08F4(&qword_1EC9E6300, sub_1D7BC05C4);
    v29 = v12;
    sub_1D7D2926C();
    v30 = v24;
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {
      sub_1D7BC06E4(v29, &qword_1EC9E62E0, sub_1D7BC05C4);
      v32 = 0;
    }

    else
    {
      v33 = sub_1D7D28D3C();
      v34 = v29;
      v32 = v33;
      (*(v31 + 8))(v34, v28);
    }

    v35 = v45;
    sub_1D7D2E1BC();
    v49 = 2;
    sub_1D7BC08F4(&qword_1EE0BF9C0, MEMORY[0x1E69B59C0]);
    sub_1D7D2926C();
    v38 = MEMORY[0x1E6969530];
    v39 = v32;
    v40 = v43;
    sub_1D7BC0544(v43, v35, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
    if (!v39)
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    sub_1D7BC06E4(v40, &qword_1EE0CFC20, v38);
    (*(v30 + 8))(v26, v18);
    v41 = v25;
    v42 = v44;
    *(v35 + *(v44 + 20)) = v39;
    sub_1D7A7F608(v46, v35 + *(v42 + 24));
    sub_1D7BC0754(v35, v41);
    v36 = v48;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1D7BC0014(void *a1)
{
  v3 = v1;
  sub_1D7BC07B8(0, &qword_1EC9E6308, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BC0690();
  sub_1D7D31B1C();
  v14 = 0;
  sub_1D7D2833C();
  sub_1D7BC08F4(&qword_1EC9E3378, MEMORY[0x1E6969530]);
  sub_1D7D3186C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for EndOfRecipeFeedConfig() + 20));
    v12[15] = 1;
    sub_1D798EAF8(0, &qword_1EE0CBAF8, type metadata accessor for EndOfRecipeFeedGroupConfig, MEMORY[0x1E69E62F8]);
    sub_1D7BC081C();
    sub_1D7D318BC();
    v12[14] = 2;
    sub_1D7D2E1BC();
    sub_1D7BC08F4(&qword_1EC9E3388, MEMORY[0x1E69B59C0]);
    sub_1D7D3186C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7BC02A4(uint64_t a1)
{
  v2 = sub_1D7BC0690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BC02E0(uint64_t a1)
{
  v2 = sub_1D7BC0690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7BC0398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x1E6969530];
  sub_1D798EAF8(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1D7BC0544(v5, &v14 - v11, &qword_1EE0CFC20, v8);
  sub_1D7BC0544(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_1EE0BF9B8, MEMORY[0x1E69B59C0]);
  sub_1D7BC0544(v12, a3, &qword_1EE0CFC20, v8);

  result = sub_1D7BC06E4(v12, &qword_1EE0CFC20, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

uint64_t sub_1D7BC0544(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D798EAF8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7BC05C4()
{
  if (!qword_1EC9E62E8)
  {
    type metadata accessor for EndOfRecipeFeedGroupConfig();
    sub_1D7BC08F4(&qword_1EC9E45D8, type metadata accessor for EndOfRecipeFeedGroupConfig);
    sub_1D7BC08F4(&qword_1EC9E45E0, type metadata accessor for EndOfRecipeFeedGroupConfig);
    v0 = sub_1D7D28D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E62E8);
    }
  }
}

unint64_t sub_1D7BC0690()
{
  result = qword_1EC9E62F8;
  if (!qword_1EC9E62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E62F8);
  }

  return result;
}

uint64_t sub_1D7BC06E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D798EAF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7BC0754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7BC07B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7BC0690();
    v7 = a3(a1, &type metadata for EndOfRecipeFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7BC081C()
{
  result = qword_1EC9E6310;
  if (!qword_1EC9E6310)
  {
    sub_1D798EAF8(255, &qword_1EE0CBAF8, type metadata accessor for EndOfRecipeFeedGroupConfig, MEMORY[0x1E69E62F8]);
    sub_1D7BC08F4(&qword_1EC9E45E0, type metadata accessor for EndOfRecipeFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6310);
  }

  return result;
}

uint64_t sub_1D7BC08F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7BC0950()
{
  result = qword_1EC9E6318;
  if (!qword_1EC9E6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6318);
  }

  return result;
}

unint64_t sub_1D7BC09A8()
{
  result = qword_1EC9E6320;
  if (!qword_1EC9E6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6320);
  }

  return result;
}

unint64_t sub_1D7BC0A00()
{
  result = qword_1EC9E6328;
  if (!qword_1EC9E6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6328);
  }

  return result;
}

void sub_1D7BC0A54(void *a1)
{
  v3 = [v1 nowPlayingInfo];
  if (v3)
  {
    v4 = v3;
    sub_1D7D3028C();
  }

  v5 = sub_1D7D3034C();
  v7 = v6;
  [a1 size];
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_allocWithZone(MEMORY[0x1E69705D8]);
  v23 = sub_1D7BC3AF0;
  v24 = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v21 = sub_1D7BC393C;
  v22 = &block_descriptor_26;
  v14 = _Block_copy(&aBlock);
  v15 = a1;
  v16 = [v13 initWithBoundsSize:v14 requestHandler:{v9, v11}];
  _Block_release(v14);

  v22 = sub_1D7992EFC(0, &qword_1EE0BAFC0);
  *&aBlock = v16;
  sub_1D7A51B58(&aBlock, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D7B95F94(v19, v5, v7, isUniquelyReferenced_nonNull_native);

  v18 = sub_1D7D3027C();

  [v1 setNowPlayingInfo_];
}

uint64_t sub_1D7BC0C90(void *a1, double a2, double a3)
{
  v25 = sub_1D7D3119C();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE0C05E8;
  v23 = sub_1D7D30C6C();
  sub_1D79F3AB0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3B4E0;
  v28 = 0;
  v29 = 0xE000000000000000;
  [a1 size];
  v26 = v11;
  v27 = v12;
  type metadata accessor for CGSize(0);
  sub_1D7D315DC();
  v14 = v28;
  v13 = v29;
  v22 = a1;
  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D79D6AE0();
  *(v10 + 64) = v16;
  *(v10 + 32) = v14;
  *(v10 + 40) = v13;
  v28 = 0;
  v29 = 0xE000000000000000;
  v26 = a2;
  v27 = a3;
  sub_1D7D315DC();
  v17 = v28;
  v18 = v29;
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;
  sub_1D7D29AAC();

  v19 = v25;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D88B0], v25);
  v20 = sub_1D7D3118C();
  (*(v6 + 8))(v9, v19);
  return v20;
}

id sub_1D7BC0EFC(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v91 = a2;
  v93 = a1;
  strcpy(v98, "track time playbackRate waiting ");
  v5 = MEMORY[0x1E69E63B0];
  *&v102 = a3;
  *(&v102 + 1) = MEMORY[0x1E69E63B0];
  v6 = MEMORY[0x1E69E6370];
  v103 = &type metadata for AudioPlaybackRate;
  v104 = MEMORY[0x1E69E6370];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = sub_1D7D3130C();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v8);
  v10 = &v86 - v9;
  *&v102 = a3;
  *(&v102 + 1) = v5;
  v103 = &type metadata for AudioPlaybackRate;
  v104 = v6;
  v87 = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](v87, v11);
  v13 = &v86 - v12;
  v95 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v94 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D79F3AB0();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7D3B4D0;
  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  v92 = *(v97 + 8);
  v18 = type metadata accessor for AudioNowPlayingPlaybackState();
  sub_1D7D3193C();
  v90 = a3;
  v19 = v102;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D79D6AE0();
  *(v17 + 32) = v19;
  sub_1D7D29AAC();

  v20 = sub_1D7BC17FC(v18);
  v21 = v96;
  [v96 setPlaybackState_];
  sub_1D7BC19E0(v18, v10);
  if ((*(*(TupleTypeMetadata - 8) + 48))(v10, 1, TupleTypeMetadata) == 1)
  {
    (*(v88 + 8))(v10, v89);
    return [v21 setNowPlayingInfo_];
  }

  else
  {
    v23 = *&v10[*(TupleTypeMetadata + 48)];
    v24 = *(TupleTypeMetadata + 64);
    v25 = v21;
    v26 = v10[v24];
    v27 = v87;
    v28 = *(v87 + 48);
    v29 = *(v87 + 64);
    v30 = *(v95 + 32);
    v31 = v90;
    v30(v13, v10, v90);
    *&v13[v28] = v23;
    v13[v29] = v26;
    v32 = *&v13[*(v27 + 48)];
    v89 = v13[*(v27 + 64)];
    v30(v94, v13, v31);
    v33 = v97;
    v34 = (*(v97 + 16))(v31, v97);
    v101 = sub_1D7BC1EE8(v91 & 1, v25);
    v35 = sub_1D7D3034C();
    v37 = v36;
    v93 = v34;
    v38 = [v34 identifier];
    v39 = sub_1D7D3034C();
    v41 = v40;

    MEMORY[0x1DA70DF30](v39, v41);

    v42 = sub_1D7D309DC();
    v43 = sub_1D7992EFC(0, &qword_1EE0BECA0);
    v104 = v43;
    *&v102 = v42;
    sub_1D7A51B58(&v102, v100);
    v44 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v44;
    sub_1D7B95F94(v100, v35, v37, isUniquelyReferenced_nonNull_native);

    v46 = v99;
    v101 = v99;
    v47 = sub_1D7D3034C();
    v49 = v48;
    v50 = (*(v33 + 32))(v31, v33);
    v104 = MEMORY[0x1E69E6158];
    *&v102 = v50;
    *(&v102 + 1) = v51;
    sub_1D7A51B58(&v102, v100);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v46;
    sub_1D7B95F94(v100, v47, v49, v52);

    v53 = v99;
    v101 = v99;
    v54 = sub_1D7D3034C();
    v56 = v55;
    v57 = (*(v33 + 40))(v31, v33);
    if (v58)
    {
      v104 = MEMORY[0x1E69E6158];
      *&v102 = v57;
      *(&v102 + 1) = v58;
      sub_1D7A51B58(&v102, v100);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v53;
      sub_1D7B95F94(v100, v54, v56, v59);

      v60 = v99;
      v101 = v99;
    }

    else
    {
      sub_1D7B90D8C(v54, v56, &v102);

      sub_1D79F0014(&v102);
      v60 = v101;
    }

    v61 = sub_1D7D3034C();
    v63 = v62;
    v64 = sub_1D7D3132C();
    v104 = v43;
    *&v102 = v64;
    sub_1D7A51B58(&v102, v100);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v60;
    sub_1D7B95F94(v100, v61, v63, v65);

    v66 = v99;
    v101 = v99;
    v67 = sub_1D7D3034C();
    v69 = v68;
    v70 = MEMORY[0x1E69E63B0];
    v104 = MEMORY[0x1E69E63B0];
    *&v102 = v32;
    sub_1D7A51B58(&v102, v100);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v66;
    sub_1D7B95F94(v100, v67, v69, v71);

    v72 = v99;
    v101 = v99;
    v73 = sub_1D7D3034C();
    v75 = v74;
    v76 = qword_1D7D54DE0[v89];
    v104 = v70;
    *&v102 = v76;
    sub_1D7A51B58(&v102, v100);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v72;
    sub_1D7B95F94(v100, v73, v75, v77);

    v78 = v99;
    v101 = v99;
    v79 = sub_1D7D3034C();
    v81 = v80;
    v82 = v94;
    v83 = (*(v92 + 32))(v31);
    v104 = v70;
    *&v102 = v83;
    sub_1D7A51B58(&v102, v100);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v78;
    sub_1D7B95F94(v100, v79, v81, v84);

    v85 = sub_1D7D3027C();

    [v96 setNowPlayingInfo_];
    swift_unknownObjectRelease();

    return (*(v95 + 8))(v82, v31);
  }
}

uint64_t sub_1D7BC17FC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](a1, v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 3;
    }

    v10 = *(a1 + 16);
    v11 = 2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v9);
    strcpy(&v13[-6], "item time playbackRate waiting ");
    v10 = *(a1 + 16);
    v13[0] = v10;
    v13[1] = MEMORY[0x1E69E63B0];
    v13[2] = &type metadata for AudioPlaybackRate;
    v13[3] = MEMORY[0x1E69E6370];
    if (v6[*(swift_getTupleTypeMetadata() + 80)])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  (*(*(v10 - 8) + 8))(v6, v10);
  return v11;
}

uint64_t sub_1D7BC19E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
    strcpy(&v34 - 48, "item time playbackRate waiting ");
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E63B0];
    v34 = v21;
    v35 = MEMORY[0x1E69E63B0];
    v23 = MEMORY[0x1E69E6370];
    v36 = &type metadata for AudioPlaybackRate;
    v37 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v25 = *&v7[TupleTypeMetadata[12]];
    v26 = v7[TupleTypeMetadata[16]];
    v27 = v7[TupleTypeMetadata[20]];
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, v28);
    strcpy(&v34 - 48, "track time playbackRate waiting ");
    v34 = v21;
    v35 = v22;
    v36 = &type metadata for AudioPlaybackRate;
    v37 = v23;
    v17 = swift_getTupleTypeMetadata();
    v29 = v17[12];
    v30 = v17[16];
    v31 = v17[20];
    (*(*(v21 - 8) + 32))(a2, v7, v21);
    *(a2 + v29) = v25;
    *(a2 + v30) = v26;
    *(a2 + v31) = v27;
    return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 16);
    v12 = MEMORY[0x1E69E63B0];
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v14 = *&v7[*(TupleTypeMetadata3 + 48)];
    v15 = v7[*(TupleTypeMetadata3 + 64)];
    MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v16);
    strcpy(&v34 - 48, "track time playbackRate waiting ");
    v34 = v11;
    v35 = v12;
    v36 = &type metadata for AudioPlaybackRate;
    v37 = MEMORY[0x1E69E6370];
    v17 = swift_getTupleTypeMetadata();
    v18 = v17[12];
    v19 = v17[16];
    v20 = v17[20];
    (*(*(v11 - 8) + 32))(a2, v7, v11);
    *(a2 + v18) = v14;
    *(a2 + v19) = v15;
    *(a2 + v20) = 0;
    return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
  }

  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
  strcpy(&v34 - 48, "track time playbackRate waiting ");
  v34 = *(a1 + 16);
  v35 = MEMORY[0x1E69E63B0];
  v36 = &type metadata for AudioPlaybackRate;
  v37 = MEMORY[0x1E69E6370];
  v33 = swift_getTupleTypeMetadata();
  return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
}

uint64_t sub_1D7BC1EE8(char a1, id a2)
{
  result = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v5 = [a2 nowPlayingInfo];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D7D3028C();

      v8 = sub_1D7D3034C();
      if (*(v7 + 16))
      {
        v10 = sub_1D7A18FFC(v8, v9);
        v12 = v11;

        if (v12)
        {
          sub_1D79FBED0(*(v7 + 56) + 32 * v10, v17);

          sub_1D7A51B58(v17, v18);
          v13 = sub_1D7D3034C();
          v15 = v14;
          sub_1D79FBED0(v18, v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1D7B95F94(v17, v13, v15, isUniquelyReferenced_nonNull_native);

          __swift_destroy_boxed_opaque_existential_1(v18);
          return v4;
        }
      }

      else
      {
      }
    }

    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AudioNowPlayingInfoCenterManager.__allocating_init<A>(playingItemState:thumbnailImageCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D79A4D40(a1, a2, a3);

  return v6;
}

void sub_1D7BC20BC(uint64_t a1, void (*a2)(void), void *a3, void *a4, uint64_t a5)
{
  v122 = a5;
  v103 = a3;
  v104 = a4;
  v7 = *(*a4 + *MEMORY[0x1E69D6540]);
  v8 = *(v7 + 16);
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v108 = &v101 - v12;
  v13 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v15);
  v115 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v101 - v19;
  v109 = *(v13 - 8);
  v21 = v109;
  MEMORY[0x1EEE9AC00](v22, v23);
  v106 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v105 = &v101 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v117 = &v101 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v118 = &v101 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v114 = &v101 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v101 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v101 - v43;
  v123 = [objc_opt_self() defaultCenter];
  v111 = a1;
  AudioNowPlayingPlaybackState.nowPlaying.getter(v7, v44);
  v120 = v7;
  v121 = a2;
  AudioNowPlayingPlaybackState.nowPlaying.getter(v7, v40);
  v113 = TupleTypeMetadata2;
  v45 = *(TupleTypeMetadata2 + 48);
  v116 = v21;
  v46 = *(v21 + 2);
  (v46)(v20, v44, v13);
  (v46)(&v20[v45], v40, v13);
  v47 = v124 + 48;
  v48 = *(v124 + 48);
  v125 = v8;
  v49 = v48(v20, 1, v8);
  v119 = v47;
  v110 = v48;
  if (v49 == 1)
  {
    v114 = v46;
    v50 = *(v109 + 1);
    v50(v40, v13);
    v50(v44, v13);
    v51 = v48(&v20[v45], 1, v125);
    v109 = v50;
    if (v51 == 1)
    {
      v50(v20, v13);
      v52 = 1;
      v53 = v120;
      v54 = v121;
      v55 = v115;
      v56 = v113;
      v46 = v114;
      goto LABEL_9;
    }

    v54 = v121;
    v55 = v115;
    v56 = v113;
    v46 = v114;
    goto LABEL_7;
  }

  (v46)(v114, v20, v13);
  if (v48(&v20[v45], 1, v125) == 1)
  {
    v57 = *(v109 + 1);
    v57(v40, v13);
    v109 = v57;
    v57(v44, v13);
    (*(v124 + 8))(v114, v125);
    v54 = v121;
    v55 = v115;
    v56 = v113;
LABEL_7:
    (*(v112 + 8))(v20, v56);
    v52 = 0;
    v53 = v120;
    goto LABEL_9;
  }

  v58 = v124;
  v59 = v108;
  (*(v124 + 32))(v108, &v20[v45], v125);
  v52 = sub_1D7D3030C();
  v101 = *(v58 + 8);
  v101(v59, v125);
  v60 = *(v109 + 1);
  v60(v40, v13);
  v60(v44, v13);
  v101(v114, v125);
  v109 = v60;
  v60(v20, v13);
  v53 = v120;
  v54 = v121;
  v55 = v115;
  v56 = v113;
LABEL_9:
  v61 = v125;
  sub_1D7BC0EFC(v54, v52 & 1, v125, v122);
  v62 = v118;
  AudioNowPlayingPlaybackState.nowPlaying.getter(v53, v118);
  v63 = v53;
  v64 = v117;
  AudioNowPlayingPlaybackState.nowPlaying.getter(v63, v117);
  v65 = *(v56 + 48);
  (v46)(v55, v62, v13);
  (v46)(&v55[v65], v64, v13);
  v66 = v61;
  v67 = v110;
  if (v110(v55, 1, v66) == 1)
  {
    v68 = v109;
    v109(v64, v13);
    v68(v62, v13);
    v69 = v67;
    if (v67(&v55[v65], 1, v125) == 1)
    {
      v68(v55, v13);
LABEL_22:

      return;
    }

    goto LABEL_14;
  }

  v70 = v105;
  (v46)(v105, v55, v13);
  v69 = v67;
  if (v67(&v55[v65], 1, v125) == 1)
  {
    v68 = v109;
    v109(v117, v13);
    v68(v118, v13);
    (*(v124 + 8))(v70, v125);
LABEL_14:
    (*(v112 + 8))(v55, v56);
    goto LABEL_15;
  }

  v94 = v124;
  v95 = v125;
  v96 = &v55[v65];
  v97 = v108;
  (*(v124 + 32))(v108, v96, v125);
  v98 = sub_1D7D3030C();
  v99 = *(v94 + 8);
  v99(v97, v95);
  v100 = v109;
  v109(v117, v13);
  v100(v118, v13);
  v99(v70, v95);
  v68 = v100;
  v100(v115, v13);
  if (v98)
  {
    goto LABEL_22;
  }

LABEL_15:
  v71 = v106;
  AudioNowPlayingPlaybackState.nowPlaying.getter(v120, v106);
  if (v69(v71, 1, v125) == 1)
  {

    v68(v71, v13);
  }

  else
  {
    v72 = v125;
    v73 = v124;
    v74 = *(v124 + 32);
    v120 = v124 + 32;
    v121 = v74;
    v75 = v107;
    v74();
    MSVGetMaximumScreenSize();
    if (v77 >= v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = v77;
    }

    type metadata accessor for AudioArtworkImageRequestFactory();
    v79 = [objc_opt_self() mainScreen];
    [v79 scale];
    v81 = v80;

    v82 = v75;
    v83 = v122;
    static AudioArtworkImageRequestFactory.artworkRequest<A>(for:targetSize:scale:roundedCorners:cornerRadius:)(0, v72, v122, v127, v78, v78, v81, 0.0);
    v84 = v103;
    v85 = v103[4];
    v118 = v103[3];
    v119 = v85;
    v117 = __swift_project_boxed_opaque_existential_1(v103, v118);
    v86 = v108;
    (*(v73 + 16))(v108, v82, v72);
    sub_1D799CC84(v84, v126);
    v87 = (*(v73 + 80) + 40) & ~*(v73 + 80);
    v88 = (v102 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = v123;
    v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    v91[2] = v72;
    v91[3] = v83;
    v91[4] = v104;
    (v121)(v91 + v87, v86, v72);
    *(v91 + v88) = v89;
    v92 = (v91 + v90);
    *v92 = v78;
    v92[1] = v78;
    sub_1D799D69C(v126, v91 + ((v90 + 23) & 0xFFFFFFFFFFFFFFF8));

    v93 = v89;
    sub_1D7D2A05C();

    __swift_destroy_boxed_opaque_existential_1(v127);
    (*(v124 + 8))(v107, v72);
  }
}

uint64_t sub_1D7BC2C8C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(*(*a3 + *MEMORY[0x1E69D6540]) + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = (v49 - v19);
  if (v21)
  {
    (*(v14 + 16))(v20, a4, v13, v17);
    v22 = *(v14 + 80);
    v53 = v20;
    v23 = a7;
    v24 = (v22 + 40) & ~v22;
    v25 = a5;
    v26 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v13;
    *(v27 + 3) = v23;
    *(v27 + 4) = a3;
    (*(v14 + 32))(&v27[v24], v53, v13);
    *&v27[v26] = v25;
    *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = a1;
    v28 = a1;

    v29 = v25;
    sub_1D7D294EC();
  }

  else
  {
    v53 = v16;
    v31 = v17;
    v32 = v18;
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE0C05E8;
    v49[3] = sub_1D7D30C4C();
    sub_1D79F3AB0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7D3B4D0;
    v54 = 0;
    v55 = 0xE000000000000000;
    v51 = a7;
    v52 = a5;
    if (a2)
    {
      swift_getErrorValue();
      v34 = sub_1D7D31A3C();
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v56 = v34;
    v57 = v35;
    v36 = MEMORY[0x1E69E6158];
    sub_1D799956C(0, &qword_1EE0CBB10);
    v37 = sub_1D7D303AC();
    MEMORY[0x1DA70DE90](v37);

    v38 = v54;
    v39 = v55;
    *(v33 + 56) = v36;
    *(v33 + 64) = sub_1D79D6AE0();
    *(v33 + 32) = v38;
    *(v33 + 40) = v39;
    sub_1D7D29AAC();

    type metadata accessor for AudioArtworkImageRequestFactory();
    v40 = [objc_opt_self() mainScreen];
    [v40 scale];
    v42 = v41;

    static AudioArtworkImageRequestFactory.fallbackArtworkRequest(targetSize:scale:roundedCorners:cornerRadius:)(0, &v54, v31, v32, v42, 0.0);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    (*(v14 + 16))(v20, a4, v13);
    v43 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v44 = (v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = v51;
    *(v45 + 2) = v13;
    *(v45 + 3) = v46;
    *(v45 + 4) = a3;
    (*(v14 + 32))(&v45[v43], v20, v13);
    v47 = v52;
    *&v45[v44] = v52;

    v48 = v47;
    sub_1D7D2A05C();

    return __swift_destroy_boxed_opaque_existential_1(&v54);
  }
}

uint64_t sub_1D7BC30D0(void *a1, uint64_t a2, void *a3)
{
  v6 = *(*(*a3 + *MEMORY[0x1E69D6540]) + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v32 - v13;
  if (v15)
  {
    v16 = *(v7 + 16);
    v33 = v11;
    v17 = v10;
    v16(v14, v9, v6, v12);
    v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v21 = v33;
    *(v20 + 2) = v6;
    *(v20 + 3) = v21;
    *(v20 + 4) = a3;
    (*(v7 + 32))(&v20[v18], v14, v6);
    *&v20[v19] = v17;
    *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = a1;
    v22 = a1;

    v23 = v17;
    sub_1D7D294EC();
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79F3AB0();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7D3B4D0;
    v36 = 0;
    v37 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v26 = sub_1D7D31A3C();
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v34 = v26;
    v35 = v27;
    v28 = MEMORY[0x1E69E6158];
    sub_1D799956C(0, &qword_1EE0CBB10);
    v29 = sub_1D7D303AC();
    MEMORY[0x1DA70DE90](v29);

    v30 = v36;
    v31 = v37;
    *(v25 + 56) = v28;
    *(v25 + 64) = sub_1D79D6AE0();
    *(v25 + 32) = v30;
    *(v25 + 40) = v31;
    sub_1D7D29AAC();
  }
}

void sub_1D7BC33AC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v54 = a3;
  v61 = a2;
  v5 = *(*a1 + *MEMORY[0x1E69D6540]);
  v6 = *(v5 + 16);
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = &v50 - v7;
  v8 = sub_1D7D3130C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v10);
  v12 = &v50 - v11;
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - v22;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v50 - v27;
  sub_1D7D28EDC();
  AudioNowPlayingPlaybackState.nowPlaying.getter(v5, v23);
  (*(v24 + 8))(v28, v5);
  v29 = v60;
  (*(v60 + 16))(v19, v61, v6);
  v30 = v29;
  (*(v29 + 56))(v19, 0, 1, v6);
  v56 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = v59;
  v33 = *(v59 + 16);
  v33(v12, v23, v8);
  v57 = v31;
  v61 = v8;
  v33(&v12[v31], v19, v8);
  v34 = *(v30 + 48);
  if (v34(v12, 1, v6) != 1)
  {
    v33(v58, v12, v61);
    v38 = v57;
    if (v34(&v12[v57], 1, v6) != 1)
    {
      v42 = v60;
      v43 = v51;
      (*(v60 + 32))(v51, &v12[v38], v6);
      v44 = v58;
      v45 = sub_1D7D3030C();
      v46 = *(v42 + 8);
      v46(v43, v6);
      v47 = *(v59 + 8);
      v48 = v19;
      v49 = v61;
      v47(v48, v61);
      v47(v23, v49);
      v46(v44, v6);
      v47(v12, v49);
      if ((v45 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    v39 = *(v59 + 8);
    v40 = v19;
    v41 = v61;
    v39(v40, v61);
    v39(v23, v41);
    (*(v60 + 8))(v58, v6);
LABEL_6:
    (*(v55 + 8))(v12, v56);
    return;
  }

  v35 = *(v32 + 8);
  v36 = v19;
  v37 = v61;
  v35(v36, v61);
  v35(v23, v37);
  if (v34(&v12[v57], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  v35(v12, v61);
LABEL_8:
  sub_1D7BC0A54(v53);
}

id sub_1D7BC393C(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6, a2, a3);

  return v7;
}

uint64_t sub_1D7BC3A04(void *a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7BC2C8C(a1, a2, *(v2 + 32), v2 + v3, *(v2 + v4), v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), *(v2 + 24));
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

void sub_1D7BC3BFC()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D7BC33AC(*(v0 + 32), v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 24));
}

uint64_t sub_1D7BC3C88(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v116 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v116, v3);
  v117 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1D7D295CC();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v5);
  v120 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v119 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v115 - v12;
  v126 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v126, v14);
  v16 = (&v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v124 = (&v115 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v115 - v22;
  v24 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v24, v25);
  v123 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v115 - v29;
  v122 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v122, v31);
  v118 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v115 - v35;
  v37 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a1;
  sub_1D7BC4E10(a1, v40, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v53 = v120;
    v123 = v30;
    v124 = v23;
    if (EnumCaseMultiPayload)
    {
      v105 = *(v40 + 3);
      v149 = *(v40 + 2);
      v150 = v105;
      v106 = *(v40 + 5);
      v151 = *(v40 + 4);
      v152 = v106;
      v107 = *(v40 + 1);
      v147 = *v40;
      v148 = v107;
      v108 = v128[5];
      v109 = v128[6];
      __swift_project_boxed_opaque_existential_1(v128 + 2, v108);
      sub_1D7996048();
      v110 = v148;
      *v16 = v147;
      v16[1] = v110;
      v111 = v150;
      v16[2] = v149;
      v16[3] = v111;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v133[0] = 0uLL;
      v130 = 0uLL;
      *v53 = 0;
      v112 = v127;
      v113 = v129;
      (*(v127 + 104))(v53, *MEMORY[0x1E69B6A80], v129);
      *&v139 = 0;
      v137 = 0u;
      v138 = 0u;
      sub_1D79F5B54(&v147, v158);
      v52 = ArticleModuleType.createViewController(with:presentationContext:issue:access:tracker:contextBuilder:)(v16, v133, &v130, v53, 0, &v137, v108, v109);
      sub_1D7A1EF80(&v147);
      sub_1D7BC4D48(&v137, sub_1D7B5A8F8);
      (*(v112 + 8))(v53, v113);
      sub_1D7BC4D48(v16, type metadata accessor for ArticleModel);
      return v52;
    }

    v54 = v36;
    sub_1D7BC4DA8(v40, v36, type metadata accessor for ArticleViewerArticlePage);
    v55 = v123;
    v56 = v128;
    sub_1D7BC47B0(v123);
    sub_1D7996048();
    v58 = *(v57 + 48);
    v59 = *(v54 + 16);
    v147 = *v54;
    v148 = v59;
    v60 = *(v54 + 48);
    v149 = *(v54 + 32);
    v61 = v149;
    v150 = v60;
    v62 = v124;
    *v124 = v147;
    v62[1] = v59;
    v62[2] = v61;
    v62[3] = v60;
    sub_1D7BC4E10(v55, v62 + v58, type metadata accessor for ArticleNavigationAction);
    swift_storeEnumTagMultiPayload();
    sub_1D799CC84((v56 + 2), &v137);
    v63 = v139;
    v128 = *(&v138 + 1);
    v126 = __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    v64 = 0;
    v65 = 0;
    v66 = v122;
    v67 = (v54 + *(v122 + 32));
    v69 = v67[1];
    *&v130 = *v67;
    v68 = v130;
    *(&v130 + 1) = v69;
    if (v130 >= 2)
    {
      v70 = v130;

      v64 = v68;
      v65 = v69;
    }

    v135 = v64;
    v136 = v65;
    v71 = v127;
    v72 = v13;
    (*(v127 + 16))(v13, v54 + *(v66 + 28), v129);
    v73 = *(v54 + 64);
    sub_1D799CC84(v54 + 72, v133);
    v74 = *(v63 + 8);
    sub_1D79F5B54(&v147, v158);
    sub_1D7B08184(v68);
    v75 = v124;
    v52 = v74(v124, &v130, &v135, v72, v125 & 1, v73, v133, v128, v63);
    sub_1D7BC4D48(v133, sub_1D7B5A8F8);
    (*(v71 + 8))(v72, v129);
    sub_1D7B62014(v135);
    sub_1D7B081C8(v130);
    sub_1D7BC4D48(v75, type metadata accessor for ArticleModel);
    sub_1D7BC4D48(v123, type metadata accessor for ArticleNavigationAction);
    sub_1D7BC4D48(v54, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v76 = v117;
    sub_1D7BC4DA8(v40, v117, type metadata accessor for InterstitialAdvertisementPage);
    sub_1D799CC84((v128 + 12), &v147);
    v77 = *(&v148 + 1);
    v78 = v149;
    __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
    v52 = (*(v78 + 8))(v76, *(v76 + *(v116 + 20)), v77, v78);
    sub_1D7BC4D48(v76, type metadata accessor for InterstitialAdvertisementPage);
    __swift_destroy_boxed_opaque_existential_1(&v147);
    return v52;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC();
    v80 = &v40[*(v79 + 48)];
    v81 = *v80;
    v120 = *(v80 + 1);
    v82 = *(v80 + 2);
    v116 = *(v80 + 3);
    v117 = v82;
    v83 = v118;
    sub_1D7BC4DA8(v40, v118, type metadata accessor for ArticleViewerArticlePage);
    v84 = v123;
    v85 = v128;
    sub_1D7BC47B0(v123);
    sub_1D7996048();
    v87 = *(v86 + 48);
    v88 = *(v83 + 16);
    v147 = *v83;
    v148 = v88;
    v89 = *(v83 + 48);
    v149 = *(v83 + 32);
    v90 = v149;
    v150 = v89;
    v91 = v124;
    *v124 = v147;
    v91[1] = v88;
    v91[2] = v90;
    v91[3] = v89;
    sub_1D7BC4E10(v84, v91 + v87, type metadata accessor for ArticleNavigationAction);
    swift_storeEnumTagMultiPayload();
    sub_1D799CC84((v85 + 2), &v137);
    v92 = v139;
    v121 = *(&v138 + 1);
    v126 = __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
    v93 = 0;
    v94 = 0;
    v95 = v122;
    v96 = v83 + *(v122 + 32);
    v97 = *(v96 + 8);
    v135 = *v96;
    v98 = v135;
    v136 = v97;
    if (v135 >= 2)
    {
      v99 = v135;

      v93 = v98;
      v94 = v97;
    }

    v134[0] = v93;
    v134[1] = v94;
    v100 = v127;
    v101 = v119;
    (*(v127 + 16))(v119, v83 + *(v95 + 28), v129);
    v102 = v125;
    v125 = *(v83 + 64);
    sub_1D799CC84(v83 + 72, v133);
    *&v130 = v81;
    *(&v130 + 1) = v120;
    v131 = v117;
    v132 = v116;
    v128 = v81;
    v103 = *(v92 + 16);
    sub_1D79F5B54(&v147, v158);
    sub_1D7B08184(v98);
    v104 = v124;
    v52 = v103(v124, &v135, v134, v101, v102 & 1, v125, v133, &v130, v121, v92);
    sub_1D7BC4D48(v133, sub_1D7B5A8F8);
    (*(v100 + 8))(v101, v129);
    sub_1D7B62014(v134[0]);
    sub_1D7B081C8(v135);
    sub_1D7BC4D48(v104, type metadata accessor for ArticleModel);
    sub_1D7BC4D48(v123, type metadata accessor for ArticleNavigationAction);
    sub_1D7BC4D48(v83, type metadata accessor for ArticleViewerArticlePage);
    sub_1D79DA510(v128, v120, v117);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(&v137);
    return v52;
  }

  v42 = *(v40 + 9);
  v155 = *(v40 + 8);
  v156 = v42;
  v157 = *(v40 + 20);
  v43 = *(v40 + 5);
  v151 = *(v40 + 4);
  v152 = v43;
  v44 = *(v40 + 7);
  v153 = *(v40 + 6);
  v154 = v44;
  v45 = *(v40 + 1);
  v147 = *v40;
  v148 = v45;
  v46 = *(v40 + 3);
  v149 = *(v40 + 2);
  v150 = v46;
  v47 = v128[10];
  v48 = v128[11];
  __swift_project_boxed_opaque_existential_1(v128 + 7, v47);
  v143 = v153;
  v144 = v154;
  v145 = v155;
  v49 = *(&v156 + 1);
  v146 = v156;
  v139 = v149;
  v140 = v150;
  v141 = v151;
  v142 = v152;
  v137 = v147;
  v138 = v148;
  v50 = v157;
  v51 = *(v48 + 16);
  sub_1D7BA03E0(&v147, v158);
  v52 = v51(&v137, v49, v50, v47, v48);
  sub_1D79F949C(&v147);
  v158[6] = v143;
  v158[7] = v144;
  v158[8] = v145;
  v159 = v146;
  v158[2] = v139;
  v158[3] = v140;
  v158[4] = v141;
  v158[5] = v142;
  v158[0] = v137;
  v158[1] = v138;
  sub_1D7BC4CF4(v158);
  return v52;
}

uint64_t sub_1D7BC47B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArticleViewerPage.article.getter(&v38);
  if (!*(&v38 + 1))
  {
    return sub_1D7C3C6EC(a1);
  }

  v7 = v39;
  swift_unknownObjectRetain();
  sub_1D79DA7DC(&v38, &qword_1EE0C0600);
  sub_1D7C3C6EC(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7BC4D48(v6, type metadata accessor for ArticleNavigationAction);
  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_16;
  }

  v9 = *(v1 + 136);
  v10 = [v7 isPaid];
  if ([v7 respondsToSelector_])
  {
    v11 = [v7 isBundlePaid];
  }

  else
  {
    v11 = 0;
  }

  v13 = [v7 sourceChannel];
  if (v13)
  {
    v14 = [v13 identifier];
    swift_unknownObjectRelease();
    v32 = sub_1D7D3034C();
    v16 = v15;

    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v32 = 0;
  v16 = 0;
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  v17 = [v9 purchaseProvider];
  if (v16)
  {
    v18 = [v17 purchasedTagIDs];
    v19 = sub_1D7D309AC();

    LOBYTE(v18) = sub_1D7D053C8(v32, v16, v19);

    swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (!v16)
      {
LABEL_41:
        swift_unknownObjectRelease();
        return swift_storeEnumTagMultiPayload();
      }

      v20 = [objc_msgSend(v9 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v20, v20 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      v36 = v34;
      v37 = v35;
      if (*(&v35 + 1))
      {
        sub_1D79A4870();
        if (swift_dynamicCast())
        {
          v21 = v33;
          v22 = [v33 integerValue];
          if (v22 == -1)
          {

            goto LABEL_40;
          }

          v23 = v22;
          v31 = v21;
LABEL_29:
          if (objc_getAssociatedObject(v20, ~v23))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0u;
            v35 = 0u;
          }

          v36 = v34;
          v37 = v35;
          if (*(&v35 + 1))
          {
            sub_1D79A4870();
            if (swift_dynamicCast())
            {
              v24 = v33;
              v25 = [v24 integerValue];

              if ((v25 ^ v23))
              {
LABEL_40:
                v26 = [objc_msgSend(v9 bundleSubscriptionProvider)];
                swift_unknownObjectRelease();
                v27 = [v26 bundleChannelIDs];

                v28 = sub_1D7D3031C();
                v29 = [v27 containsObject_];

                if ((v29 & 1) == 0)
                {
                  goto LABEL_41;
                }

LABEL_16:
                sub_1D7C3C6EC(a1);
                return swift_unknownObjectRelease();
              }

              goto LABEL_38;
            }
          }

          else
          {
            sub_1D79DA7DC(&v36, &qword_1EE0BE7A0);
          }

          if (v23)
          {
            goto LABEL_40;
          }

LABEL_38:

          goto LABEL_41;
        }
      }

      else
      {
        sub_1D79DA7DC(&v36, &qword_1EE0BE7A0);
      }

      v31 = 0;
      v23 = 0;
      goto LABEL_29;
    }

LABEL_15:

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_21:
  swift_unknownObjectRelease();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7BC4D48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BC4DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BC4E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AnalyticsLinkData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2824C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnalyticsLinkData.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnalyticsLinkData() + 20));

  return v1;
}

uint64_t type metadata accessor for AnalyticsLinkData()
{
  result = qword_1EE0C9CE8;
  if (!qword_1EE0C9CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7BC4F94()
{
  sub_1D7D2824C();
  if (v0 <= 0x3F)
  {
    sub_1D7992238();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7BC5018()
{
  sub_1D7D286BC();
  swift_allocObject();
  result = sub_1D7D286AC();
  qword_1EC9E6330 = result;
  return result;
}

uint64_t sub_1D7BC5078(void *a1)
{
  v2 = sub_1D7D2833C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9DFF08 != -1)
  {
    swift_once();
  }

  sub_1D7D2829C();
  sub_1D7BC5298();
  sub_1D7D2865C();
  (*(v3 + 8))(v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9DFF00 != -1)
  {
    swift_once();
  }

  v8[1] = 0;
  return sub_1D7D2865C();
}

uint64_t static Presets.ArticleViewer.initialBrandBarSettings.getter()
{
  if (qword_1EC9DFE38 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D7BC5298()
{
  result = qword_1EC9E6338;
  if (!qword_1EC9E6338)
  {
    sub_1D7D2833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6338);
  }

  return result;
}

uint64_t sub_1D7BC5314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D7D2ACCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D799CC84(v2 + 16, v13);
  type metadata accessor for ArticleViewerNavigationItemStyleProvider();
  inited = swift_initStackObject();
  sub_1D799D69C(v13, inited + 16);
  sub_1D7BC58F0(a1, inited, v9);
  if (sub_1D7D2DB0C())
  {
    sub_1D7D2ACBC();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {

    return (*(v6 + 32))(a2, v9, v5);
  }
}

void sub_1D7BC5464(void *a1)
{
  v20 = a1;
  sub_1D7BC6224(0, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent, MEMORY[0x1E69D7640]);
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ArticleViewerColorPalette();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
  (*(v14 + 8))(v13, v14);
  v15 = *v12;
  sub_1D7BC61C4(v12, type metadata accessor for ArticleViewerColorPalette);
  [a1 setBackgroundColor_];
  v17 = v1[5];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
  (*(v16 + 8))(v17, v16);
  v18 = v21;
  (*(v4 + 16))(v7, v12 + *(v9 + 32), v21);
  sub_1D7BC61C4(v12, type metadata accessor for ArticleViewerColorPalette);
  sub_1D7D29DFC();
  (*(v4 + 8))(v7, v18);
  [v20 setTs:v22 accessibilityInterfaceStyleIntent:?];
}

uint64_t sub_1D7BC56C0@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  sub_1D7BC6224(0, &unk_1EE0C0118, MEMORY[0x1E69D8428], MEMORY[0x1E69D7640]);
  v19[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - v5;
  v7 = type metadata accessor for ArticleViewerColorPalette();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1[5];
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  (*(v13 + 8))(v12, v13);
  v14 = *v11;
  sub_1D7BC61C4(v11, type metadata accessor for ArticleViewerColorPalette);
  v16 = v1[5];
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
  (*(v15 + 8))(v16, v15);
  v17 = v19[0];
  (*(v3 + 16))(v6, v11 + *(v8 + 36), v19[0]);
  sub_1D7BC61C4(v11, type metadata accessor for ArticleViewerColorPalette);
  sub_1D7D29DFC();

  return (*(v3 + 8))(v6, v17);
}

uint64_t sub_1D7BC58F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_1D7D2AC3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - v11;
  sub_1D7BC6224(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79F93E8(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v34 = *(v20 + 3);
      v54 = *(v20 + 2);
      v55 = v34;
      v35 = *(v20 + 5);
      v56 = *(v20 + 4);
      v57 = v35;
      v36 = *(v20 + 1);
      v52 = *v20;
      v53 = v36;
      v37 = v36;
      v38 = sub_1D7D295CC();
      (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
      sub_1D7B5B084(v37, 0, v16, v51);
      sub_1D7A1EF80(&v52);
      return sub_1D7BC6138(v16);
    }

LABEL_9:
    sub_1D7A74E98(v20, v24);
    v46 = *(v24 + 2);
    v47 = *(v21 + 28);
    v48 = sub_1D7D295CC();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v16, &v24[v47], v48);
    swift_unknownObjectRetain();
    sub_1D7BC61C4(v24, type metadata accessor for ArticleViewerArticlePage);
    (*(v49 + 56))(v16, 0, 1, v48);
    sub_1D7B5B084(v46, 0, v16, v51);
    swift_unknownObjectRelease();
    return sub_1D7BC6138(v16);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v39 = objc_opt_self();
    v40 = [v39 systemBackgroundColor];
    v41 = [v39 labelColor];
    v42 = [v39 secondarySystemFillColor];
    *v12 = v40;
    *(v12 + 1) = v41;
    v12[16] = 1;
    *(v12 + 3) = v42;
    v43 = *(v5 + 104);
    v43(v12, *MEMORY[0x1E69D7C50], v4);
    v43(v8, *MEMORY[0x1E69D7C60], v4);
    sub_1D7D2AC7C();
    return sub_1D7BC61C4(v20, type metadata accessor for ArticleViewerPage);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v20[*(v45 + 48)], *&v20[*(v45 + 48) + 8], *&v20[*(v45 + 48) + 16]);
    goto LABEL_9;
  }

  v26 = *(v20 + 9);
  v60 = *(v20 + 8);
  v61 = v26;
  v62 = *(v20 + 20);
  v27 = *(v20 + 5);
  v56 = *(v20 + 4);
  v57 = v27;
  v28 = *(v20 + 7);
  v58 = *(v20 + 6);
  v59 = v28;
  v29 = *(v20 + 1);
  v52 = *v20;
  v53 = v29;
  v30 = *(v20 + 3);
  v54 = *(v20 + 2);
  v55 = v30;
  v31 = *(&v61 + 1);
  v32 = sub_1D7D295CC();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  v33 = swift_unknownObjectRetain();
  sub_1D7B5B084(v33, v31, v16, v51);
  swift_unknownObjectRelease();
  sub_1D79F949C(&v52);
  return sub_1D7BC6138(v16);
}

uint64_t sub_1D7BC5E34(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v4 = sub_1D7D2ACCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - v11;
  sub_1D799CC84(v2 + 16, v16);
  type metadata accessor for ArticleViewerNavigationItemStyleProvider();
  inited = swift_initStackObject();
  sub_1D799D69C(v16, inited + 16);
  sub_1D7BC58F0(a1, inited, v8);
  if (sub_1D7D2DB0C())
  {
    sub_1D7D2ACBC();

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    (*(v5 + 32))(v12, v8, v4);
  }

  sub_1D7D2ACAC();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1D7BC60A0(void *a1)
{
  result = (*(**v1 + 104))();
  if (result)
  {

    return [a1 ts_setTransparentBackground];
  }

  return result;
}

uint64_t sub_1D7BC6138(uint64_t a1)
{
  sub_1D7BC6224(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BC61C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7BC6224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D7BC6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD696C();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD69F4;
  v4[10] = v11;
  v4[11] = sub_1D7BD6A00;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC63B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD6AD4();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6B5C;
  v4[10] = v11;
  v4[11] = sub_1D7BD6B68;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC64D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7BD6C30(0, &qword_1EE0C8918, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7A08684();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6BA4;
  v4[10] = v11;
  v4[11] = sub_1D7BD6BB0;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC65F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C8870, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD6C80();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6D08;
  v4[10] = v11;
  v4[11] = sub_1D7BD6D14;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C8908, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD6D4C();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6DD4;
  v4[10] = v11;
  v4[11] = sub_1D7BD6DE0;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC6844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C88F0, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD6E40();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6EC8;
  v4[10] = v11;
  v4[11] = sub_1D7BD6ED4;
  v4[12] = a2;
  v4[13] = sub_1D7A96374;
  v4[14] = a2;
  v4[15] = sub_1D7BD6EDC;
  v4[16] = a2;
  v4[17] = sub_1D7BD6EE0;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C88D8, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD6F50();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD6FD8;
  v4[10] = v11;
  v4[11] = sub_1D7BD6FE4;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC6A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &unk_1EE0C8930, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD7010();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD7098;
  v4[10] = v11;
  v4[11] = sub_1D7BD70A4;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D79B2C84;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC6BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD70A8();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = sub_1D7BD7130;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD7158;
  v4[10] = v11;
  v4[11] = sub_1D7BD7164;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC6CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C88C0, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD7168();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = sub_1D7BD71F0;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD71FC;
  v4[10] = v11;
  v4[11] = sub_1D7BD7208;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

void *sub_1D7BC6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7993EC4(0, &qword_1EE0C88A8, type metadata accessor for ArticleViewerMoreFeatureContext, type metadata accessor for ArticleViewerFeature);
  v4[5] = v9;
  v10 = sub_1D7BD7234();
  v4[2] = a1;
  v4[6] = v10;
  v4[7] = nullsub_1;
  v4[8] = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  v4[9] = sub_1D7BD72FC;
  v4[10] = v11;
  v4[11] = j___s12NewsArticles32MoreArticleViewerFeatureProviderC10shouldShow3for20featureUpdateOptionsSbAA0dE4PageO_AA0deflM0VtF;
  v4[12] = a2;
  v4[13] = sub_1D7ABC544;
  v4[14] = a2;
  v4[15] = sub_1D79EF958;
  v4[16] = a2;
  v4[17] = sub_1D7ABC600;
  v4[18] = a2;
  swift_retain_n();
  return v4;
}

uint64_t sub_1D7BC6F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for ArticleViewerRecipeFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B00, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for ArticleViewerRecipeFeatureContext(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA930, sub_1D7A1EDDC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, &qword_1EE0C2B60, type metadata accessor for ArticleViewerRecipeFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, &qword_1EE0C2B60, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, &qword_1EE0C2B60, type metadata accessor for ArticleViewerRecipeFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7A1EDDC(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for ArticleViewerRecipeFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for ArticleViewerRecipeFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for ArticleViewerRecipeFeatureContext);
  sub_1D7A1EDDC(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA930, sub_1D7A1EDDC);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA930, sub_1D7A1EDDC);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), &qword_1EE0C2B60, type metadata accessor for ArticleViewerRecipeFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7A1D7DC(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B00, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA930, sub_1D7A1EDDC, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, &qword_1EE0C2B60, type metadata accessor for ArticleViewerRecipeFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, &qword_1EE0C2B60, type metadata accessor for ArticleViewerRecipeFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC7614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for ArticleViewerAudioFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B10, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for ArticleViewerAudioFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA990, sub_1D7BD6B70, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, &qword_1EE0C3820, type metadata accessor for ArticleViewerAudioFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, &qword_1EE0C3820, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, &qword_1EE0C3820, type metadata accessor for ArticleViewerAudioFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7BD6B70(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for ArticleViewerAudioFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for ArticleViewerAudioFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for ArticleViewerAudioFeatureContext);
  sub_1D7BD6B70(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA990, sub_1D7BD6B70);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA990, sub_1D7BD6B70);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), &qword_1EE0C3820, type metadata accessor for ArticleViewerAudioFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7C998E0(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B10, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA990, sub_1D7BD6B70, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, &qword_1EE0C3820, type metadata accessor for ArticleViewerAudioFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, &qword_1EE0C3820, type metadata accessor for ArticleViewerAudioFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC7CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1D7BD6A04(a1, v14, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v29 = swift_dynamicCast() ^ 1;
  sub_1D7BD6A04(a2, v14, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v28 = swift_dynamicCast() ^ 1;
  if (v29)
  {
    goto LABEL_5;
  }

  sub_1D7BD6A04(a3, v14, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v15)
  {
    sub_1D7BD6A78(v14, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
LABEL_5:
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  sub_1D7A966C0(v14, v27);
  sub_1D7A966C0(v27, v14);
LABEL_6:
  sub_1D7BD74A0(v14, v27, sub_1D7BD6BB4);
  sub_1D7BD6EE8(v27, v14, sub_1D7BD6BB4);
  v24 = v28;
  v25 = a5;
  v26 = a6;

  sub_1D7C489E4(v14, a4, a7);
  sub_1D7BD6A78(v14, &qword_1EE0C1B58, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  return sub_1D7BD7508(v27, sub_1D7BD6BB4);
}

uint64_t sub_1D7BC7F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for ArticleViewerShareFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B08, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for ArticleViewerShareFeatureContext(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA970, sub_1D7BD6D18, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C34A0, type metadata accessor for ArticleViewerShareFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C34A0, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C34A0, type metadata accessor for ArticleViewerShareFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7BD6D18(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for ArticleViewerShareFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for ArticleViewerShareFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for ArticleViewerShareFeatureContext);
  sub_1D7BD6D18(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA970, sub_1D7BD6D18);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA970, sub_1D7BD6D18);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C34A0, type metadata accessor for ArticleViewerShareFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7C4FB50(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B08, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA970, sub_1D7BD6D18, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C34A0, type metadata accessor for ArticleViewerShareFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C34A0, type metadata accessor for ArticleViewerShareFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC864C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for LikeDislikeArticleFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for LikeDislikeArticleFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C3208, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7BD6E0C(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for LikeDislikeArticleFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for LikeDislikeArticleFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for LikeDislikeArticleFeatureContext);
  sub_1D7BD6E0C(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &qword_1EE0CA948, sub_1D7BD6E0C);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &qword_1EE0CA948, sub_1D7BD6E0C);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7CBDE2C(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B50, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &qword_1EE0CA948, sub_1D7BD6E0C, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C3208, type metadata accessor for LikeDislikeArticleFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for BottomPaletteFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B48, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for BottomPaletteFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &qword_1EE0CA9D0, sub_1D7A964B0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C5290, type metadata accessor for BottomPaletteFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C5290, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C5290, type metadata accessor for BottomPaletteFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7A964B0(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for BottomPaletteFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for BottomPaletteFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for BottomPaletteFeatureContext);
  sub_1D7A964B0(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &qword_1EE0CA9D0, sub_1D7A964B0);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &qword_1EE0CA9D0, sub_1D7A964B0);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C5290, type metadata accessor for BottomPaletteFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7A95030(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B48, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &qword_1EE0CA9D0, sub_1D7A964B0, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C5290, type metadata accessor for BottomPaletteFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C5290, type metadata accessor for BottomPaletteFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for SaveArticleFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B40, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for SaveArticleFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA9E0, sub_1D7B860CC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C5F88, type metadata accessor for SaveArticleFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C5F88, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C5F88, type metadata accessor for SaveArticleFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7B860CC(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for SaveArticleFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for SaveArticleFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for SaveArticleFeatureContext);
  sub_1D7B860CC(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA9E0, sub_1D7B860CC);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA9E0, sub_1D7B860CC);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C5F88, type metadata accessor for SaveArticleFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7B84944(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B40, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA9E0, sub_1D7B860CC, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C5F88, type metadata accessor for SaveArticleFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C5F88, type metadata accessor for SaveArticleFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BC9AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for TextResizeFeatureContext;
  sub_1D7993EC4(0, qword_1EE0C1B60, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for TextResizeFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &qword_1EE0CAA00, sub_1D7B1EFF4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C6810, type metadata accessor for TextResizeFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C6810, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C6810, type metadata accessor for TextResizeFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7B1EFF4(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for TextResizeFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for TextResizeFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for TextResizeFeatureContext);
  sub_1D7B1EFF4(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &qword_1EE0CAA00, sub_1D7B1EFF4);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &qword_1EE0CAA00, sub_1D7B1EFF4);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C6810, type metadata accessor for TextResizeFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7B1E47C(v46, v63, v61);
  sub_1D7BD7440(v46, qword_1EE0C1B60, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &qword_1EE0CAA00, sub_1D7B1EFF4, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C6810, type metadata accessor for TextResizeFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C6810, type metadata accessor for TextResizeFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BCA1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for TitleViewContext;
  sub_1D7993EC4(0, &unk_1EE0C1B30, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for TitleViewContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA900, sub_1D79DA600, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C9DF8, type metadata accessor for TitleViewContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C9DF8, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C9DF8, type metadata accessor for TitleViewContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D79DA600(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for TitleViewContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for TitleViewContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for TitleViewContext);
  sub_1D79DA600(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA900, sub_1D79DA600);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA900, sub_1D79DA600);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C9DF8, type metadata accessor for TitleViewContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D79D87DC(v46, v63, v61);
  sub_1D7BD7440(v46, &unk_1EE0C1B30, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA900, sub_1D79DA600, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C9DF8, type metadata accessor for TitleViewContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C9DF8, type metadata accessor for TitleViewContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BCA8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for ArticleViewerOverflowMenuContext;
  sub_1D7993EC4(0, &unk_1EE0C1B20, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for ArticleViewerOverflowMenuContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA8E0, sub_1D7AECC3C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C35E8, type metadata accessor for ArticleViewerOverflowMenuContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C35E8, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C35E8, type metadata accessor for ArticleViewerOverflowMenuContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7AECC3C(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for ArticleViewerOverflowMenuContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for ArticleViewerOverflowMenuContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for ArticleViewerOverflowMenuContext);
  sub_1D7AECC3C(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA8E0, sub_1D7AECC3C);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA8E0, sub_1D7AECC3C);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C35E8, type metadata accessor for ArticleViewerOverflowMenuContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  sub_1D7AEBAE0(v46, v63, v61);
  sub_1D7BD7440(v46, &unk_1EE0C1B20, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA8E0, sub_1D7AECC3C, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C35E8, type metadata accessor for ArticleViewerOverflowMenuContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C35E8, type metadata accessor for ArticleViewerOverflowMenuContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BCAF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a4;
  v64 = a7;
  v61 = a8;
  v62 = a6;
  v60 = a5;
  v53 = a3;
  v55 = a2;
  v54 = type metadata accessor for ArticleViewerMoreFeatureContext;
  sub_1D7993EC4(0, &qword_1EE0C1B18, type metadata accessor for ArticleViewerMoreFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v52 - v11;
  v12 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, &unk_1EE0CA9B0, sub_1D7BD730C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = &v52 - v22;
  sub_1D7993EC4(0, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, v16);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  sub_1D7BD6A04(a1, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  sub_1D7B61D38(0, &qword_1EE0C9188, qword_1EE0C9190);
  v35 = swift_dynamicCast();
  v36 = v13;
  v37 = *(v13 + 56);
  v37(v34, v35 ^ 1u, 1, v12);
  sub_1D7BD6A04(v55, v66, &qword_1EE0C9188, qword_1EE0C9190, &protocol descriptor for FeatureContextType, sub_1D7B61D38);
  v38 = swift_dynamicCast();
  v37(v30, v38 ^ 1u, 1, v12);
  v39 = v34;
  sub_1D7BD73C0(v34, v26, qword_1EE0C3C00, v54);
  if ((*(v36 + 48))(v26, 1, v12) == 1)
  {
    sub_1D7BD7440(v26, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, MEMORY[0x1E69E6720], sub_1D7993EC4);
LABEL_6:
    v41 = v56;
    sub_1D7BD730C(0);
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    goto LABEL_7;
  }

  v40 = v52;
  sub_1D7BD74A0(v26, v52, type metadata accessor for ArticleViewerMoreFeatureContext);
  sub_1D7BD6A04(v53, v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7BD6C30);
  if (!v65[6])
  {
    sub_1D7BD7508(v40, type metadata accessor for ArticleViewerMoreFeatureContext);
    sub_1D7BD6A78(v65, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
    goto LABEL_6;
  }

  sub_1D7A966C0(v65, v66);
  v41 = v56;
  sub_1D7BD74A0(v40, v56, type metadata accessor for ArticleViewerMoreFeatureContext);
  sub_1D7BD730C(0);
  v43 = v42;
  sub_1D7A966C0(v66, v41 + *(v42 + 28));
  (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
LABEL_7:
  v45 = v57;
  sub_1D7BD7340(v41, v57, &unk_1EE0CA9B0, sub_1D7BD730C);
  v46 = v59;
  sub_1D7BD73C0(v45, v59, &unk_1EE0CA9B0, sub_1D7BD730C);
  v47 = v58;
  sub_1D7BD73C0(v30, v46 + *(v58 + 28), qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext);
  v48 = (v46 + *(v47 + 32));
  v49 = v62;
  *v48 = v60;
  v48[1] = v49;

  MoreArticleViewerFeatureProvider.transition(for:updateOptions:)(v46, v63, v61);
  sub_1D7BD7440(v46, &qword_1EE0C1B18, type metadata accessor for ArticleViewerMoreFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext, sub_1D7993EC4);
  v50 = MEMORY[0x1E69E6720];
  sub_1D7BD7440(v45, &unk_1EE0CA9B0, sub_1D7BD730C, MEMORY[0x1E69E6720], sub_1D7993EC4);
  sub_1D7BD7440(v30, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, v50, sub_1D7993EC4);
  return sub_1D7BD7440(v39, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, v50, sub_1D7993EC4);
}

uint64_t sub_1D7BCB66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D7D2DB0C() & 1) != 0 && (*(a2 + 153) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a3 + 56), *(a3 + 80));
    if (sub_1D7D2F95C())
    {
      ArticleViewerPage.article.getter(&v8);
      if (*(&v8 + 1))
      {
        v5 = v9;
        swift_unknownObjectRetain();
        sub_1D7BD6A78(&v8, &qword_1EE0C0600, &type metadata for Article, MEMORY[0x1E69E6720]);
        if ([v5 respondsToSelector_])
        {
          v6 = [v5 hasAudioTrack];
          swift_unknownObjectRelease();
          if (v6)
          {
            return 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D7BCB770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
      return v9 != -1;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v10 = result + 40;
    sub_1D799CC84(result, v14);
    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = (*(v12 + 16))(a1, a2, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    result = v10;
    if (v13)
    {
      return v9 != -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCB850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v9 = *(a5 + 16);
  v10 = v9 + 32;
  v11 = -*(v9 + 16);
  v12 = -1;
  result = v9 + 32;
  while (1)
  {
    v14 = v11 + v12;
    v15 = *(v9 + 16);
    if (v11 + v12 == -1)
    {
      break;
    }

    if (++v12 >= v15)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v16 = result + 40;
    sub_1D799CC84(result, v37);
    v17 = v38;
    v18 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v19 = (*(v18 + 16))(a1, a4, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v37);
    result = v16;
    if (v19)
    {
      v15 = *(v9 + 16);
      break;
    }
  }

  v20 = -v15;
  v21 = -1;
  do
  {
    if (v20 + v21 == -1)
    {
      if (v14 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (++v21 >= *(v9 + 16))
    {
      goto LABEL_23;
    }

    v22 = v10 + 40;
    sub_1D799CC84(v10, v37);
    v23 = v38;
    v24 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v25 = (*(v24 + 16))(a2, a4, v23, v24);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v10 = v22;
  }

  while ((v25 & 1) == 0);
  if (v14 != -1)
  {
LABEL_11:
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

LABEL_13:
  if (*(a4 + 40))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(a4 + 24);
  }

  v27 = -v26;
  if (a3 == 2)
  {
    v27 = v26;
  }

  if (v14 == -1)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = type metadata accessor for BottomPaletteArticleViewerFeatureScrollAnimator();
  *(a6 + 24) = v29;
  *(a6 + 32) = &off_1F529EEA0;
  v31 = *(a5 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  sub_1D799CC84(a5 + 40, (boxed_opaque_existential_1 + 2));
  sub_1D7BD6EE8(a1, boxed_opaque_existential_1 + v29[6], type metadata accessor for ArticleViewerPage);
  sub_1D7BD6EE8(a2, boxed_opaque_existential_1 + v29[7], type metadata accessor for ArticleViewerPage);
  *boxed_opaque_existential_1 = v31;
  *(boxed_opaque_existential_1 + v29[8]) = a7;
  *(boxed_opaque_existential_1 + v29[9]) = a3;
  *(boxed_opaque_existential_1 + v29[10]) = v28;
  *(boxed_opaque_existential_1 + v29[11]) = v26;
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7BCBAC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0);
  result = sub_1D7D28D2C();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  if (v11 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v11;
  }

  v7 = type metadata accessor for ArticleViewerModule();
  v8 = objc_allocWithZone(v7);
  sub_1D799CC84(v14, &v8[OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_resolver]);
  *&v8[OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_tracker] = v5;
  sub_1D799CC84(v12, &v8[OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_contextBuilder]);
  v8[OBJC_IVAR____TtC12NewsArticles19ArticleViewerModule_pageKind] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  v9 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  a2[3] = v7;
  a2[4] = &off_1F529D838;
  *a2 = v9;
  return result;
}

void *sub_1D7BCBC5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF090);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = [result articleController];

    v6 = type metadata accessor for ArticleViewerArticleFactory();
    result = swift_allocObject();
    result[2] = v5;
    a2[3] = v6;
    a2[4] = &off_1F52B2658;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7BCBD10(void *a1)
{
  v2 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7088);
  result = sub_1D7D28D2C();
  if (!v145)
  {
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C6400);
  result = sub_1D7D28D2C();
  v7 = v143;
  if (!v143)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C4970);
  result = sub_1D7D28D2C();
  v108 = v141;
  if (!v141)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v142;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BB84();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BCF4(0);
  result = sub_1D7D28D1C();
  v107 = result;
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C2690);
  result = sub_1D7D28D2C();
  if (!v140)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2AEBC();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0950);
  result = sub_1D7D28D2C();
  if (!v138)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCC38);
  result = sub_1D7D28D2C();
  if (!v136[3])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C3C58);
  result = sub_1D7D28D2C();
  if (!v135[3])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFF60);
  result = sub_1D7D28D2C();
  v106 = v133;
  if (!v133)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v97 = v134;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C15E0);
  result = sub_1D7D28D2C();
  v104 = v131;
  if (!v131)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v96 = v132;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C15E8);
  result = sub_1D7D28D2C();
  if (!v130)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v94 = v5;
  v95 = v8;
  v103 = v10;
  v99 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v128[0])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = result;
  v110 = v11;
  v111 = sub_1D799C134(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v109[0] = v12;
  sub_1D7D2A50C();
  swift_allocObject();
  v13 = sub_1D7D2A4FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFDD8);
  result = sub_1D7D28D2C();
  if (!v128[3])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v127)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD777C(0, &qword_1EE0CBB88, sub_1D79906C8, &type metadata for ArticleOfflineModel, MEMORY[0x1E69B6158]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  v102 = result;
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D29C0C();
  result = sub_1D7D28D1C();
  v101 = result;
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF618);
  result = sub_1D7D28D2C();
  if (!v125[3])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CDBE0);
  result = sub_1D7D28D2C();
  if (!v124[3])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, qword_1EE0CDBF8);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v92 = v14;
  v93 = v7;
  v100 = v9;
  v105 = v13;
  v91 = [result currentlyPlaying];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BAAC();
  v90 = sub_1D7D28D1C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C4C68);
  result = sub_1D7D28D2C();
  if (!v123)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28D2C();
  v15 = LOBYTE(v109[0]);
  if (LOBYTE(v109[0]) == 3)
  {
    v15 = 0;
  }

  v85 = v15;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  v89 = v84;
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = &v84[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19, v17);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
  v88 = v84;
  v22 = MEMORY[0x1EEE9AC00](v21, v21);
  v24 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v25 + 16))(v24, v22);
  v26 = *v19;
  v27 = *v24;
  v28 = type metadata accessor for InterstitialAdManager();
  v120 = v28;
  v121 = &off_1F52B3B60;
  v119[0] = v26;
  v29 = type metadata accessor for ArticleViewerAudioStyler();
  v117 = v29;
  v118 = &off_1F52A9A58;
  v116[0] = v27;
  v98 = type metadata accessor for ArticleViewerViewController();
  v30 = objc_allocWithZone(v98);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
  v87 = v84;
  v32 = MEMORY[0x1EEE9AC00](v31, v31);
  v34 = &v84[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
  v86 = v84;
  v37 = MEMORY[0x1EEE9AC00](v36, v36);
  v39 = &v84[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v40 + 16))(v39, v37);
  v41 = *v34;
  v42 = *v39;
  v115[3] = v28;
  v115[4] = &off_1F52B3B60;
  v114[4] = &off_1F52A9A58;
  v115[0] = v41;
  v114[3] = v29;
  v114[0] = v42;
  v43 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_navigationItemStyle;
  sub_1D7D2ACBC();
  v44 = MEMORY[0x1E69D6538];
  sub_1D7993EC4(0, &qword_1EE0C0470, MEMORY[0x1E69D7C68], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v30[v43] = sub_1D7D28ECC();
  v45 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_observableScrollView;
  v109[0] = 0;
  sub_1D7993EC4(0, &qword_1EE0C0420, sub_1D7A469D4, v44);
  swift_allocObject();
  *&v30[v45] = sub_1D7D28ECC();
  v46 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *&v30[v46] = sub_1D7D2A58C();
  v47 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventManager;
  sub_1D7BD777C(0, &qword_1EE0C04B8, sub_1D7B23AFC, &type metadata for ArticleViewerViewController.Event, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *&v30[v47] = sub_1D7D28C9C();
  v48 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm];
  *v48 = 0;
  v48[1] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionNavigationItemStash] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureTransitions] = MEMORY[0x1E69E7CC0];
  v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_hasPresentedFirstPage] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageSheetPresentationObserver] = 0;
  v49 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented];
  *v49 = 0;
  v49[1] = 0;
  v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_state] = 0;
  v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled] = 1;
  v50 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pendingPageIdentifier];
  *v50 = 0;
  v50[1] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleViewController] = 0;
  v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState] = 2;
  v51 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_issueCoverContainerView;
  *&v30[v51] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v52 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_windowTitle];
  *v52 = 0;
  v52[1] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController] = 0;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin] = 0;
  v53 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pocketStatusBarView;
  *&v30[v53] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D799CC84(v144, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler]);
  v54 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler];
  v55 = v95;
  *v54 = v108;
  v54[1] = v55;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController] = v100;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageBlueprintProvider] = v107;
  sub_1D799CC84(v139, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_blueprintProvider]);
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionManager] = v103;
  sub_1D799CC84(v137, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_barCompressionAnimationFactory]);
  sub_1D799CC84(v136, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleViewerImpressionManager]);
  sub_1D799CC84(v135, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager]);
  v56 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_windowToolbarManager];
  v57 = v96;
  v58 = v97;
  *v56 = v106;
  v56[1] = v58;
  v59 = &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleToolbarManager];
  *v59 = v104;
  v59[1] = v57;
  sub_1D799CC84(v115, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_interstitialAdManager]);
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_paidAccessChecker] = v99;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_commands] = v105;
  sub_1D799CC84(v128, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_shareMenuItemManager]);
  sub_1D799CC84(v126, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability]);
  v60 = v92;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_offlineManager] = v92;
  v61 = v101;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_bundleSubscriptionManager] = v102;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_tipManager] = v61;
  sub_1D799CC84(v125, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_sharedItemManager]);
  sub_1D799CC84(v124, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_searchInArticleModule]);
  v62 = v90;
  v63 = v91;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_currentlyPlayingObservable] = v91;
  *&v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_tabBarAccessoryManager] = v62;
  sub_1D799CC84(v114, &v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_audioMessagingStyler]);
  v30[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageKind] = v85;
  v113.receiver = v30;
  v113.super_class = v98;
  swift_unknownObjectRetain();
  v100 = v100;

  v103 = v103;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v97 = v60;
  swift_unknownObjectRetain();

  v96 = v63;
  v95 = v62;
  v64 = objc_msgSendSuper2(&v113, sel_initWithNibName_bundle_, 0, 0);
  *(*&v64[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_eventHandler] + 24) = &off_1F52AC6A8;
  swift_unknownObjectWeakAssign();
  v65 = *&v64[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageViewController];
  v66 = v64;
  v67 = v65;
  sub_1D7D2AACC();

  v68 = &v66[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager];
  swift_beginAccess();
  v70 = *(v68 + 24);
  v69 = *(v68 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v70);
  v71 = *(v69 + 16);
  v72 = v66;
  v71(v64, &protocol witness table for ArticleViewerViewController, v70, v69);
  swift_endAccess();
  *(*&v72[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_articleToolbarManager] + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_delegate + 8) = &off_1F52AC6F8;
  swift_unknownObjectWeakAssign();
  sub_1D7D2B9CC();
  swift_allocObject();
  *&v72[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_pageSheetPresentationObserver] = sub_1D7D2B9AC();

  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = &v72[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm];
  v75 = *&v72[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm];
  *v74 = sub_1D7BD77E4;
  v74[1] = v73;

  sub_1D79AD740(v75);

  __swift_project_boxed_opaque_existential_1(v126, v127);
  if (sub_1D7D2F9AC())
  {
    sub_1D7D2A4DC();
    swift_getObjectType();
    v109[0] = v72;
    sub_1D7D2C51C();
    sub_1D799C134(&qword_1EC9E6348, type metadata accessor for ArticleViewerViewController);
    sub_1D7D2A79C();

    swift_unknownObjectRelease();
    sub_1D7D2A4DC();
    swift_getObjectType();
    v109[0] = v72;
    sub_1D7D2C52C();
    sub_1D7D2A79C();

    swift_unknownObjectRelease();
  }

  v76 = [objc_opt_self() defaultCenter];
  [v76 addObserver:v72 selector:sel_smartInvertStatusDidChange name:*MEMORY[0x1E69DD8D8] object:0];

  sub_1D799CC84(v68, v109);
  v77 = v110;
  v78 = v111;
  __swift_project_boxed_opaque_existential_1(v109, v110);
  (*(v78 + 40))(v72, v77, v78);
  __swift_destroy_boxed_opaque_existential_1(v109);
  v79 = *&v72[OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_currentlyPlayingObservable];
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = sub_1D7BD77EC;
  v112 = v80;
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 1107296256;
  v109[2] = sub_1D7BD5E84;
  v110 = &block_descriptor_27;
  v81 = _Block_copy(v109);
  v82 = v79;

  v83 = [v82 observe_];
  _Block_release(v81);

  [v83 disposeOn_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v125);
  __swift_destroy_boxed_opaque_existential_1(v128);
  __swift_destroy_boxed_opaque_existential_1(v135);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v139);
  __swift_destroy_boxed_opaque_existential_1(v144);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v126);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v129);
  return v72;
}

uint64_t sub_1D7BCD3D4()
{
  type metadata accessor for NoPlayingAudioInfoProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69B5408]) initWithValue_];
  return v0;
}

char *sub_1D7BCD44C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CCA58);
  result = sub_1D7D28D2C();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, qword_1EE0CDBF8);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = [result currentlyPlaying];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDD80);
  result = sub_1D7D28D2C();
  if (v7[3])
  {
    v5 = objc_allocWithZone(type metadata accessor for AudioButton());
    v6 = sub_1D7CDA814(v8, v3, v4, v7);

    swift_unknownObjectRelease();
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7BCD608(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF040);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, qword_1EE0CDBF8);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = [result currentlyPlaying];
      swift_unknownObjectRelease();
      type metadata accessor for ArticleScrollPositionManager();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCD6FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C4C68);
  result = sub_1D7D28D2C();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ArticleViewerAudioStyler();
    v19[3] = v10;
    v19[4] = &off_1F52A9A58;
    v19[0] = v9;
    v11 = type metadata accessor for ArticleViewerAudioRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_1F52A9A58;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_1F52A93F8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7BCD928(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFF60);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v2 = v8;
    v3 = type metadata accessor for ChromeControl();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12NewsArticles13ChromeControl_toolbarManager];
    *v5 = v7;
    *(v5 + 1) = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BCD9E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7993EC4(0, &qword_1EE0C0200, MEMORY[0x1E69B6AC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D7D2966C();
  sub_1D7D28D2C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0C01E0);
    result = sub_1D7D28D2C();
    if (v15)
    {
      v11 = type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider();
      v12 = swift_allocObject();
      (*(v9 + 32))(v12 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_articleAccessMap, v7, v8);
      result = sub_1D799D69C(&v14, v12 + OBJC_IVAR____TtC12NewsArticles53TableOfContentsArticleViewerFeatureVisibilityProvider_paywallFactory);
      a2[3] = v11;
      a2[4] = &off_1F52B16D8;
      *a2 = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCDBD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v8 = sub_1D7A51764(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReloadArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1D7BD5EFC(result, 1, &v8, &off_1F52A24E8);

  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for TableOfContentsArticleViewerToolbarFeatureProvider();
    result = sub_1D7D28D1C();
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    sub_1D7BD5EFC(result, 0, &v8, &off_1F52B3D20);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1D799D69C(&v5, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  if (sub_1D7D2F94C() & 1) == 0 || (sub_1D7D2DB0C())
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7BD5EFC(result, 2, &v8, &off_1F52B0AE8);

LABEL_10:
    *a2 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D7BCDDC0(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SubscriptionAccessMeterIncrementer();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v4 + 8);
  v6();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleReadingHistoryRecorder();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for IssueReadingHistoryRecorder();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  (v6)(result, &off_1F52AB978, v3, v4);
}

uint64_t sub_1D7BCDF5C(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BCDFB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BCF4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleViewerPageViewControllerProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BDC4(0, &unk_1EE0BFE70, sub_1D799BCF4, sub_1D799C028, MEMORY[0x1E69D7E50]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AA1C();
    swift_allocObject();
    sub_1D7D2AA0C();
    sub_1D799BB84();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B4EC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BCE148(uint64_t a1, void *a2, void (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &unk_1EE0CBEA0);
  result = sub_1D7D28D2C();
  if (v6)
  {
    sub_1D799D69C(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    a3();
    sub_1D7D291FC();
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BCE23C()
{
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D799BDC4(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = type metadata accessor for ArticleViewerPage(0);
  v5 = sub_1D799C134(&qword_1EE0C9920, type metadata accessor for ArticleViewerPage);
  v6 = sub_1D799C134(&unk_1EE0C9940, type metadata accessor for ArticleViewerPage);
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], v4, v5, v6);
  sub_1D799BE44();
  sub_1D7D29FBC();
  sub_1D799BCF4(0);
  swift_allocObject();
  return sub_1D7D2ADFC();
}

uint64_t sub_1D7BCE3F8(void *a1)
{
  v2 = sub_1D7D2B99C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BCF4(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2B98C();
    sub_1D799BDC4(0, &unk_1EE0BFE70, sub_1D799BCF4, sub_1D799C028, MEMORY[0x1E69D7E50]);
    swift_allocObject();
    return sub_1D7D2B1DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BCE520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CED80);
  result = sub_1D7D28D2C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CE8B8);
  result = sub_1D7D28D2C();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDE40);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    type metadata accessor for ArticleViewerPageViewControllerProvider();
    v4 = swift_allocObject();
    sub_1D799D69C(&v9, v4 + 16);
    sub_1D799D69C(&v7, v4 + 56);
    sub_1D799D69C(&v5, v4 + 96);
    *(v4 + 136) = v3;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BCE6C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBB50);
    result = sub_1D7D28D2C();
    if (v8)
    {
      v5 = type metadata accessor for ArticleViewerStyler();
      v6 = swift_allocObject();
      sub_1D799D69C(&v9, v6 + 16);
      result = sub_1D799D69C(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_1F52AA068;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCE7E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArticleViewerRenderer();
  result = swift_allocObject();
  *(result + 16) = 0x4046000000000000;
  *a1 = result;
  a1[1] = &off_1F52AA050;
  return result;
}

uint64_t sub_1D7BCE82C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0CF990);
    result = sub_1D7D28D2C();
    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D7BD777C(0, &qword_1EE0BF720, sub_1D7B683A0, &type metadata for RecipeOfflineModel, MEMORY[0x1E69B6158]);
      v6 = sub_1D7D28D1C();
      v7 = type metadata accessor for ArticleViewerRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D799D69C(v11, v8 + 24);
      *(v8 + 64) = v5;
      result = sub_1D799D69C(&v9, v8 + 72);
      *(v8 + 112) = v6;
      a2[3] = v7;
      a2[4] = &off_1F52A7408;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7BCE9B8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleViewerViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7BCEA38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C53B0);
  result = sub_1D7D28D2C();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C7098);
    result = sub_1D7D28D2C();
    if (v9)
    {
      type metadata accessor for ArticleViewerEventHandler();
      v7 = swift_allocObject();
      v7[3] = 0;
      swift_unknownObjectWeakInit();
      v7[4] = v5;
      v7[5] = v6;
      sub_1D799D69C(&v8, (v7 + 6));
      *(v5 + OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_delegate + 8) = &off_1F52A6CC8;
      result = swift_unknownObjectWeakAssign();
      *a2 = v7;
      a2[1] = &off_1F52A6D00;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCEB84@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ArticleViewerImpressionManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  a1[3] = v2;
  a1[4] = &off_1F52AF5C8;
  *a1 = result;
  return result;
}

uint64_t sub_1D7BCEBF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1D799CC84(a1, v10);
  v7 = a2(0);
  v8 = swift_allocObject();
  result = sub_1D799D69C(v10, v8 + 16);
  a4[3] = v7;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_1D7BCEC6C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C4C48);
  result = sub_1D7D28D2C();
  if (!v94)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C2690);
  result = sub_1D7D28D2C();
  if (!v92)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BCF4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C17C0);
  result = sub_1D7D28D2C();
  if (!v90)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C4C38);
  result = sub_1D7D28D2C();
  if (!v88)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v65 = v95;
  v66 = result;
  v67 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v81)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  v85 = v6;
  v86 = sub_1D799C134(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v84[0] = v7;
  sub_1D7D2B48C();
  swift_allocObject();
  v8 = sub_1D7D2B46C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CED70);
  result = sub_1D7D28D2C();
  if (!v85)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v63 = v8;
  v64 = a2;
  v68 = v94;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD777C(0, &qword_1EE0CBB88, sub_1D79906C8, &type metadata for ArticleOfflineModel, MEMORY[0x1E69B6158]);
  result = sub_1D7D28D1C();
  v62 = result;
  if (result)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    v61[6] = v61;
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v61[5] = v61;
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v61[4] = v61;
    v20 = MEMORY[0x1EEE9AC00](v19, v19);
    v22 = (v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v12;
    v25 = *v17;
    v26 = *v22;
    v27 = type metadata accessor for ArticleViewerPageBlueprintFactory();
    v82 = v27;
    v83 = &off_1F52ADB80;
    v81 = v24;
    v28 = type metadata accessor for ArticleViewerPageTracker();
    v79 = v28;
    v80 = &off_1F52A02E8;
    v78[0] = v25;
    v29 = type metadata accessor for HistoryService();
    v76 = v29;
    v77 = &off_1F52A2428;
    v75[0] = v26;
    v61[0] = type metadata accessor for ArticleViewerInteractor();
    v30 = objc_allocWithZone(v61[0]);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(&v81, v82);
    v61[3] = v61;
    v32 = MEMORY[0x1EEE9AC00](v31, v31);
    v34 = (v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v61[2] = v61;
    v37 = MEMORY[0x1EEE9AC00](v36, v36);
    v39 = (v61 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39, v37);
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v61[1] = v61;
    v42 = MEMORY[0x1EEE9AC00](v41, v41);
    v44 = (v61 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44, v42);
    v46 = *v34;
    v47 = *v39;
    v48 = *v44;
    v74[3] = v27;
    v74[4] = &off_1F52ADB80;
    v74[0] = v46;
    v73[3] = v28;
    v73[4] = &off_1F52A02E8;
    v73[0] = v47;
    v72[3] = v29;
    v72[4] = &off_1F52A2428;
    v72[0] = v48;
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v49 = &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_coordinator];
    *(v49 + 4) = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_insertAdvertisementBlueprintModifier] = 0;
    v50 = &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_dataManager];
    v51 = v65;
    *v50 = v68;
    *(v50 + 1) = v51;
    sub_1D799CC84(v91, &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_blueprintProvider]);
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintManager] = v67;
    sub_1D799CC84(v74, &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageBlueprintFactory]);
    sub_1D799CC84(v73, &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_pageTracker]);
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_paidAccessChecker] = v66;
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_commandCenter] = v63;
    sub_1D799CC84(v72, &v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_historyService]);
    v52 = v62;
    *&v30[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_offlineManager] = v62;
    v71.receiver = v30;
    v71.super_class = v61[0];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v65 = v52;
    v53 = objc_msgSendSuper2(&v71, sel_init);
    v54 = *&v53[OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_offlineManager];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = v53;
    v56 = v54;

    v57 = v92;
    v58 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    (*(v58 + 8))(v57, v58);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = v55;
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_1D7D2ADEC();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(v69, v70);
    sub_1D7D28AEC();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v91);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v87);
    result = __swift_destroy_boxed_opaque_existential_1(v89);
    v60 = v64;
    *v64 = v59;
    v60[1] = &off_1F52A0140;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_1D7BCF85C(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &unk_1EE0C4C58);
  sub_1D7D28D2C();
  v4 = v21;
  if (v21)
  {
    v5 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v6 = *(v5 + 16);
    v7 = v3;
    v6(v3, &off_1F52A0120, v4, v5);
  }

  v8 = OBJC_IVAR____TtC12NewsArticles23ArticleViewerInteractor_coordinator;
  swift_beginAccess();
  sub_1D7BD7680(v20, v3 + v8);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &qword_1EE0BEEA0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v10 = result;
    [result addObserver_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &qword_1EE0C15E8);
    result = sub_1D7D28D2C();
    if (v16)
    {
      sub_1D799D69C(&v15, v17);
      v11 = v18;
      v12 = v19;
      __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v13 = *(v12 + 16);
      v14 = v3;
      v13(v3, &off_1F52A0128, v11, v12);

      __swift_destroy_boxed_opaque_existential_1(v17);
      return sub_1D7BD7440(v20, &qword_1EE0C4C50, &unk_1EE0C4C58, &protocol descriptor for ArticleViewerCoordinatorType, sub_1D7B61D38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BCFA94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CCEC0);
  result = sub_1D7D28D2C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB60);
  result = sub_1D7D28D2C();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CDCA0);
  result = sub_1D7D28D2C();
  if (v21)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for ArticlePreviewService();
    v19[3] = v11;
    v19[4] = &off_1F52A4228;
    v19[0] = v10;
    type metadata accessor for ArticleViewerDataManager();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[15] = v11;
    v12[16] = &off_1F52A4228;
    v12[12] = v18;
    sub_1D799D69C(&v24, (v12 + 2));
    sub_1D799D69C(&v22, (v12 + 7));
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v12;
    a2[1] = &off_1F52A8BB0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BCFD74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7993EC4(0, &qword_1EE0C0200, MEMORY[0x1E69B6AC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0);
  result = sub_1D7D28D2C();
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7D2966C();
  sub_1D7D28D2C();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF600);
  result = sub_1D7D28D2C();
  if (v16)
  {
    v12 = type metadata accessor for ArticleViewerPageBlueprintFactory();
    v13 = swift_allocObject();
    *(v13 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_cache) = MEMORY[0x1E69E7CC8];
    *(v13 + 16) = v9;
    sub_1D799D69C(&v19, v13 + 24);
    (*(v11 + 32))(v13 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_articleAccessMap, v7, v10);
    sub_1D799D69C(&v17, v13 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_recipeService);
    result = sub_1D799D69C(&v15, v13 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_localRecipeManager);
    a2[3] = v12;
    a2[4] = &off_1F52ADB80;
    *a2 = v13;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD007C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C0220);
  result = sub_1D7D28D2C();
  if (v2)
  {
    type metadata accessor for SubscriptionAccessMeterIncrementer();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7BD014C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEE80);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF040);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    type metadata accessor for IssueReadingHistoryRecorder();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD026C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBEA0);
  result = sub_1D7D28D2C();
  if (v3)
  {
    v2 = objc_allocWithZone(sub_1D7D2AEBC());
    return sub_1D7D2AE4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD02FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for InterstitialAdManager();
  result = sub_1D7D28D1C();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_1F52B3B60;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD0370(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD7568(0, &qword_1EE0CBE30, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799C338(0, &unk_1EE0BFB40, MEMORY[0x1E69B4248], MEMORY[0x1E69B4038]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C3F20);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD7568(0, &qword_1EE0CBD10, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CCD30);
  result = sub_1D7D28D2C();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for InterstitialAdModelFactory();
    v21[3] = v12;
    v21[4] = &off_1F52ABA40;
    v21[0] = v11;
    type metadata accessor for InterstitialAdManager();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[9] = v12;
    v13[10] = &off_1F52ABA40;
    v13[6] = v19;
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1D7BD777C(0, &qword_1EE0C04C8, sub_1D7BD762C, &type metadata for InterstitialAdManager.Event, MEMORY[0x1E69D6460]);
    swift_allocObject();
    v13[17] = sub_1D7D28C9C();
    v13[18] = 0x64696C61766E69;
    v13[19] = 0xE700000000000000;
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[4] = v3;
    v13[5] = v4;
    v13[11] = v5;
    sub_1D799D69C(&v22, (v13 + 12));
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD0784(void *a1)
{
  v2 = sub_1D7D2CE0C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0);
  result = sub_1D7D28D2C();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1D7AD388C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD7568(0, &qword_1EE0CBE30, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BD7568(0, &qword_1EE0CBD10, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2CDFC();
    sub_1D799C338(0, &unk_1EE0BFB40, MEMORY[0x1E69B4248], MEMORY[0x1E69B4038]);
    swift_allocObject();
    v5 = sub_1D7D2CD5C();
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD0A08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799C338(0, &qword_1EE0CBDA8, MEMORY[0x1E69B4240], MEMORY[0x1E69B42D8]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7BD7568(0, &qword_1EE0CBD10, MEMORY[0x1E69B43B0]);
    result = sub_1D7D28D1C();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for InterstitialAdModelFactory();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_1F52ABA40;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD0B14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v102)
  {
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v89 = a2;
  v88 = type metadata accessor for ArticleViewerFeatureManager();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  v8 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers) = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState) = v9;
  sub_1D799D69C(&v101, v6 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_featureAvailability);
  *(v6 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_tipSourceManager) = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MoreArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  sub_1D7993EC4(0, &qword_1EE0C88A8, type metadata accessor for ArticleViewerMoreFeatureContext, type metadata accessor for ArticleViewerFeature);
  inited = swift_initStaticObject();
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ArticleViewerFeatureManager.FeatureProviderWrapper();
  swift_allocObject();

  v13 = sub_1D7BC6E0C(inited, v10, sub_1D7B8BE60, v12);
  v15 = *(inited + 16);
  v14 = *(inited + 24);
  v16 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v13, v15, v14, isUniquelyReferenced_nonNull_native);

  *(v6 + v16) = v90;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for OverflowMenuArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = result;
  sub_1D7993EC4(0, &qword_1EE0C88C0, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeature);
  v19 = swift_initStaticObject();
  v20 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v21 = sub_1D7BC6CE4(v19, v18, sub_1D7BD780C, v20);
  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  swift_beginAccess();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v21, v23, v22, v24);

  *(v6 + v16) = v91;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TitleViewArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = result;
  sub_1D7993EC4(0, &qword_1EE0C8840, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeature);
  v26 = swift_initStaticObject();
  v27 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v28 = sub_1D7BC6BBC(v26, v25, sub_1D7BD780C, v27);
  v30 = *(v26 + 16);
  v29 = *(v26 + 24);
  swift_beginAccess();

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v28, v30, v29, v31);

  *(v6 + v16) = v92;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TextResizeArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = result;
  sub_1D7993EC4(0, &unk_1EE0C8930, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeature);
  v33 = swift_initStaticObject();
  v34 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v35 = sub_1D7BC6A94(v33, v32, sub_1D7BD780C, v34);
  v37 = *(v33 + 16);
  v36 = *(v33 + 24);
  swift_beginAccess();

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v35, v37, v36, v38);

  *(v6 + v16) = v93;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SaveArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = result;
  sub_1D7993EC4(0, &qword_1EE0C88D8, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v40 = swift_initStaticObject();
  v41 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v42 = sub_1D7BC696C(v40, v39, sub_1D7BD780C, v41);
  v44 = *(v40 + 16);
  v43 = *(v40 + 24);
  swift_beginAccess();

  v45 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v42, v44, v43, v45);

  *(v6 + v16) = v94;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for BottomPaletteArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = result;
  sub_1D7993EC4(0, &qword_1EE0C88F0, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeature);
  v47 = swift_initStaticObject();
  v48 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v49 = sub_1D7BC6844(v47, v46, sub_1D7BD780C, v48);
  v51 = *(v47 + 16);
  v50 = *(v47 + 24);
  swift_beginAccess();

  v52 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v49, v51, v50, v52);

  *(v6 + v16) = v95;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LikeDislikeArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v53 = result;
  sub_1D7993EC4(0, &qword_1EE0C8908, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v54 = swift_initStaticObject();
  v55 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v56 = sub_1D7BC671C(v54, v53, sub_1D7BD780C, v55);
  v58 = *(v54 + 16);
  v57 = *(v54 + 24);
  swift_beginAccess();

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v56, v58, v57, v59);

  *(v6 + v16) = v96;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ShareArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = result;
  sub_1D7993EC4(0, &qword_1EE0C8870, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeature);
  v61 = swift_initStaticObject();
  v62 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v63 = sub_1D7BC65F4(v61, v60, sub_1D7BD780C, v62);
  v65 = *(v61 + 16);
  v64 = *(v61 + 24);
  swift_beginAccess();

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v63, v65, v64, v66);

  *(v6 + v16) = v97;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HardPaywallArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v67 = result;
  sub_1D7BD6C30(0, &qword_1EE0C8918, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
  v68 = swift_initStaticObject();
  v69 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v70 = sub_1D7BC64D8(v68, v67, sub_1D7BD780C, v69);
  v72 = *(v68 + 16);
  v71 = *(v68 + 24);
  swift_beginAccess();

  v73 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v70, v72, v71, v73);

  *(v6 + v16) = v98;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v74 = result;
  sub_1D7993EC4(0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeature);
  v75 = swift_initStaticObject();
  v76 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v77 = sub_1D7BC63B0(v75, v74, sub_1D7BD780C, v76);
  v79 = *(v75 + 16);
  v78 = *(v75 + 24);
  swift_beginAccess();

  v80 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  sub_1D7B95DC8(v77, v79, v78, v80);

  *(v6 + v16) = v99;
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeArticleViewerFeatureProvider();
  result = sub_1D7D28D1C();
  if (result)
  {
    v81 = result;
    sub_1D7993EC4(0, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeature);
    v82 = swift_initStaticObject();
    v83 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();

    v84 = sub_1D7BC6288(v82, v81, sub_1D7BD780C, v83);
    v86 = *(v82 + 16);
    v85 = *(v82 + 24);
    swift_beginAccess();

    v87 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v6 + v16);
    *(v6 + v16) = 0x8000000000000000;
    sub_1D7B95DC8(v84, v86, v85, v87);

    *(v6 + v16) = v100;
    swift_endAccess();

    v89[3] = v88;
    v89[4] = &protocol witness table for ArticleViewerFeatureManager;
    *v89 = v6;
    return result;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD1C50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D2C();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2A66C();
    result = sub_1D7D28CDC();
    if (result)
    {
      v5 = result;
      type metadata accessor for ArticleViewerToolbarFeatureManager();
      v6 = swift_allocObject();
      v7 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_currentPage;
      v8 = type metadata accessor for ArticleViewerPage(0);
      (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
      v9 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_providers;
      v10 = MEMORY[0x1E69E7CC8];
      *(v6 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_providers) = MEMORY[0x1E69E7CC8];
      *(v6 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots) = v10;
      *(v6 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      *(v6 + v9) = v11;

      *(v6 + OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_tipSourceManager) = v5;
      *a2 = v6;
      a2[1] = &off_1F52B14D8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD1DF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28CEC();
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD1E7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBEE0);
  result = sub_1D7D28D2C();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CCEA8);
    result = sub_1D7D28D2C();
    if (v15)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v4 = MEMORY[0x1EEE9AC00](v3, v3);
      v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      v9 = MEMORY[0x1EEE9AC00](v8, v8);
      v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v11, v9);
      v13 = sub_1D7BD63D8(*v6, *v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD20B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEEC0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for ShareArticleViewerFeatureVisibilityProvider();
      v7 = swift_allocObject();
      result = sub_1D799D69C(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_1F52AADE0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD21C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799BCF4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for LikeDislikeArticleViewerFeatureVisibilityProvider();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    result = sub_1D799D69C(&v9, v8 + 24);
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_1F52A8BA0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD2308@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF0D0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SaveArticleViewerFeatureVisibilityProvider();
    v8 = swift_allocObject();
    result = sub_1D799D69C(&v9, v8 + 16);
    *(v8 + 56) = v5;
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_1F52A9BE0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD245C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBE70);
  result = sub_1D7D28CEC();
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0C09F8);
    result = sub_1D7D28D2C();
    if (v25)
    {
      sub_1D7BD686C();
      swift_allocObject();
      v5 = sub_1D7D291AC();
      sub_1D7BD68F4();
      swift_allocObject();
      v6 = sub_1D7D291AC();
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for ArticleViewerNavigationItemStyleProvider();
      v23[3] = v13;
      v23[4] = &off_1F52A6AB0;
      v23[0] = v12;
      v14 = type metadata accessor for ArticleViewerTitleViewRenderer();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
      v17 = MEMORY[0x1EEE9AC00](v16, v16);
      v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19, v17);
      v21 = *v19;
      v15[12] = v13;
      v15[13] = &off_1F52A6AB0;
      v15[9] = v21;
      sub_1D799D69C(&v26, (v15 + 2));
      v15[7] = v5;
      v15[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v23);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      a2[3] = v14;
      a2[4] = &off_1F52ADF08;
      *a2 = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD2758@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ArticleViewerNavigationItemStyleProvider();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A6AB0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD280C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v13)
  {
    v7 = type metadata accessor for ArticleViewerMenuProvider(0);
    v8 = swift_allocObject();
    v9 = OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_menuModel;
    v10 = type metadata accessor for ArticleViewerMenuProviderModel(0);
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    v11 = (v8 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_commandCenter);
    *v11 = v14;
    v11[1] = v5;
    *(v8 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_paidAccessChecker) = v6;
    result = sub_1D799D69C(&v12, v8 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_featureAvailability);
    a2[3] = v7;
    a2[4] = &off_1F52A9BB8;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD29E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v10)
  {
    v7 = type metadata accessor for ArticleViewerOverflowMenuProvider();
    v8 = swift_allocObject();
    v8[2] = v11;
    v8[3] = v5;
    v8[4] = v6;
    result = sub_1D799D69C(&v9, (v8 + 5));
    a2[3] = v7;
    a2[4] = &off_1F52AA618;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD2B6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFFE0);
  result = sub_1D7D28D2C();
  if (!v30)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFF60);
  result = sub_1D7D28D2C();
  v3 = v27;
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB38);
  result = sub_1D7D28D2C();
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C4960);
  result = sub_1D7D28D2C();
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for ArticleViewerMenuProvider(0);
    v22[3] = v13;
    v22[4] = &off_1F52A9BB8;
    v22[0] = v12;
    type metadata accessor for MoreArticleViewerFeatureProvider();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    v16 = MEMORY[0x1EEE9AC00](v15, v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[17] = v13;
    v14[18] = &off_1F52A9BB8;
    v14[14] = v20;
    sub_1D799D69C(&v29, (v14 + 2));
    v14[7] = v3;
    v14[8] = v4;
    sub_1D799D69C(&v25, (v14 + 9));
    v14[19] = v5;
    v14[20] = v6;
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v14;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD2F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C17C8);
  result = sub_1D7D28D2C();
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEEC0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x1EEE9AC00](v4, v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for ArticleViewerOverflowMenuProvider();
      v18[3] = v10;
      v18[4] = &off_1F52AA618;
      v18[0] = v9;
      type metadata accessor for OverflowMenuArticleViewerFeatureProvider();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x1EEE9AC00](v12, v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[5] = v10;
      v11[6] = &off_1F52AA618;
      v11[2] = v17;
      swift_unknownObjectWeakInit();
      v11[7] = v3;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD31C4(void *a1)
{
  v2 = sub_1D7D2C09C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C2680);
  result = sub_1D7D28D2C();
  if (!v68)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0940);
  result = sub_1D7D28D2C();
  if (!v66)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFF60);
  result = sub_1D7D28D2C();
  v8 = v63;
  if (!v63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v62)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v43 = v9;
  v44 = v8;
  v45 = v3;
  v46 = v6;
  v47 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  if (!v60)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v42[2] = v42;
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v42[1] = v42;
  v16 = MEMORY[0x1EEE9AC00](v15, v15);
  v18 = (v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v13;
  v21 = *v18;
  v22 = type metadata accessor for ArticleViewerTitleViewRenderer();
  v58[3] = v22;
  v58[4] = &off_1F52ADF08;
  v58[0] = v20;
  v23 = type metadata accessor for ArticleViewerTitleViewLayoutAttributesFactory();
  v56 = v23;
  v57 = &off_1F52A0828;
  v55[0] = v21;
  type metadata accessor for TitleViewArticleViewerFeatureProvider();
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v58, v22);
  v26 = MEMORY[0x1EEE9AC00](v25, v25);
  v28 = (v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v31 = MEMORY[0x1EEE9AC00](v30, v30);
  v33 = (v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  v35 = *v28;
  v36 = *v33;
  v53 = v22;
  v54 = &off_1F52ADF08;
  v51 = &off_1F52A0828;
  *&v52 = v35;
  v50 = v23;
  *&v49 = v36;
  v37 = sub_1D7D2DB0C();
  v38 = v46;
  v39 = MEMORY[0x1E69D86A8];
  if ((v37 & 1) == 0)
  {
    v39 = MEMORY[0x1E69D86B0];
  }

  (*(v45 + 104))(v46, *v39, v47);
  v40 = objc_allocWithZone(type metadata accessor for TitleView());
  v24[14] = TitleView.init(layout:)(v38);
  sub_1D799D69C(&v52, (v24 + 2));
  sub_1D799D69C(&v49, (v24 + 7));
  v41 = v48;
  v24[12] = v44;
  v24[13] = v41;
  v24[15] = v43;
  sub_1D799D69C(&v61, (v24 + 16));
  sub_1D799D69C(&v59, (v24 + 21));
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v24;
}

uint64_t sub_1D7BD3838(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBEE0);
  result = sub_1D7D28D2C();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CCEA8);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v16)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v4 = MEMORY[0x1EEE9AC00](v3, v3);
    v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_1D7BD665C(*v6, *v11, &v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD3AC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2A66C();
    result = sub_1D7D28CDC();
    if (result)
    {
      v4 = result;
      type metadata accessor for TextResizeArticleViewerFeatureProvider();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD3BE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C09F8);
  result = sub_1D7D28D2C();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for ArticleViewerNavigationItemStyleProvider();
    v23[3] = v14;
    v23[4] = &off_1F52A6AB0;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_1F52A6AB0;
    v16[2] = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD3E20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, qword_1EE0CDBF8);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCF90);
  result = sub_1D7D28D2C();
  if (!v66)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = [v5 currentlyPlaying];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C4C68);
  result = sub_1D7D28D2C();
  if (!v62)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CCA58);
  result = sub_1D7D28D2C();
  if (!v60)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v58)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDD80);
  result = sub_1D7D28D2C();
  if (!v56)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7460);
  result = sub_1D7D28D2C();
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C4C38);
  result = sub_1D7D28D2C();
  if (!v52)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v7;
  v41 = v63;
  v42 = v6;
  v43 = v5;
  v44 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7993EC4(0, &qword_1EE0CBAE0, type metadata accessor for NUArticleMessage, MEMORY[0x1E69E62F8]);
  result = sub_1D7D28D2C();
  v39 = v50;
  if (v50)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v38[1] = v38;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v38[0] = v38;
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v11;
    v19 = *v16;
    v20 = type metadata accessor for ArticleViewerAudioStyler();
    v49[3] = v20;
    v49[4] = &off_1F52A9A58;
    v49[0] = v18;
    v21 = type metadata accessor for ArticleViewerPageTracker();
    v47 = v21;
    v48 = &off_1F52A02E8;
    v46[0] = v19;
    v22 = type metadata accessor for AudioArticleViewerFeatureDescriptor();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v49, v20);
    v25 = MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v30 = MEMORY[0x1EEE9AC00](v29, v29);
    v32 = (v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = *v27;
    v35 = *v32;
    v23[13] = v20;
    v23[14] = &off_1F52A9A58;
    v23[10] = v34;
    v23[39] = v21;
    v23[40] = &off_1F52A02E8;
    v23[41] = 0;
    v23[36] = v35;
    sub_1D799D69C(&v65, (v23 + 2));
    v36 = v41;
    v23[7] = v42;
    v23[8] = v36;
    v23[9] = v45;
    sub_1D799D69C(&v59, (v23 + 15));
    sub_1D799D69C(&v57, (v23 + 20));
    v23[25] = v40;
    sub_1D799D69C(&v55, (v23 + 26));
    sub_1D799D69C(&v53, (v23 + 31));
    v23[42] = v39;
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v37 = v44;
    v44[3] = v22;
    v37[4] = &off_1F52B08F8;
    result = swift_unknownObjectRelease();
    *v37 = v23;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD4608(void *a1)
{
  v2 = sub_1D7BD48F0(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C6400);
  result = sub_1D7D28D2C();
  v4 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7088);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C1BF0);
  result = sub_1D7D28D2C();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for ArticleViewerBottomPaletteStyler();
    v21[3] = v12;
    v21[4] = &off_1F52B4C88;
    v21[0] = v11;
    type metadata accessor for BottomPaletteArticleViewerFeatureProvider();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[13] = v12;
    v13[14] = &off_1F52B4C88;
    v13[10] = v19;
    v13[2] = v2;
    v13[3] = v4;
    v13[4] = v5;
    sub_1D799D69C(&v24, (v13 + 5));
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD48F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1D799D69C(&v10, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((sub_1D7D2F95C() & 1) != 0 && (sub_1D7D2DB0C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C0B68);
    result = sub_1D7D28CEC();
    if (v9)
    {
      sub_1D799D69C(&v8, &v10);
      sub_1D799CC84(&v10, &v8);
      v3 = sub_1D79E47B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_1D79E47B0((v4 > 1), v5 + 1, 1, v3);
      }

      __swift_destroy_boxed_opaque_existential_1(&v10);
      v3[2] = v5 + 1;
      sub_1D799D69C(&v8, &v3[5 * v5 + 4]);
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_9:
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (sub_1D7D2F9CC() & 1) == 0 || (sub_1D7D2DB0C())
  {
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v3;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0B68);
  result = sub_1D7D28CEC();
  if (v9)
  {
    sub_1D799D69C(&v8, &v10);
    sub_1D799CC84(&v10, &v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D79E47B0(0, v3[2] + 1, 1, v3);
    }

    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D79E47B0((v6 > 1), v7 + 1, 1, v3);
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    v3[2] = v7 + 1;
    sub_1D799D69C(&v8, &v3[5 * v7 + 4]);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD4BC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF618);
  result = sub_1D7D28D2C();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D3010C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SharedArticleViewerFeatureDescriptor();
    v7 = swift_allocObject();
    sub_1D799D69C(&v10, v7 + 16);
    result = sub_1D799D69C(&v8, v7 + 56);
    *(v7 + 96) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52A51E0;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD4D20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C0958);
  result = sub_1D7D28D2C();
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    type metadata accessor for SaveArticleViewerFeatureProvider();
    v5 = swift_allocObject();
    sub_1D799D69C(&v12, (v5 + 2));
    sub_1D799D69C(&v10, (v5 + 7));
    v5[12] = v8;
    v5[13] = v3;
    sub_1D799D69C(&v6, (v5 + 14));
    v5[19] = v4;
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD4F38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBE60);
    result = sub_1D7D28D2C();
    if (v4)
    {
      type metadata accessor for ReloadArticleViewerFeatureProvider();
      v3 = swift_allocObject();
      *(v3 + 72) = 0;
      sub_1D799D69C(&v6, v3 + 16);
      *(v3 + 56) = v4;
      *(v3 + 64) = v5;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BD5038(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C07A0);
  result = sub_1D7D28D2C();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    type metadata accessor for LikeDislikeArticleViewerFeatureProvider();
    v5 = swift_allocObject();
    v5[11] = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
    sub_1D799D69C(&v8, (v5 + 2));
    v5[7] = v6;
    v5[8] = v7;
    v5[9] = v3;
    v5[10] = v4;
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD5208(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0C0948);
  result = sub_1D7D28D2C();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for ShareArticleViewerFeatureVisibilityProvider();
    v21[3] = v13;
    v21[4] = &off_1F52AADE0;
    v21[0] = v12;
    type metadata accessor for ShareArticleViewerFeatureProvider();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    v16 = MEMORY[0x1EEE9AC00](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[8] = v13;
    v14[9] = &off_1F52AADE0;
    v14[2] = v3;
    v14[3] = v4;
    v14[4] = v5;
    v14[5] = v20;
    v14[10] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD5558(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0, a2, a3);
  result = sub_1D7D28D1C();
  if (result)
  {
    v10 = result;
    a5(0);
    result = swift_allocObject();
    *(result + 16) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD55FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCD20);
  result = sub_1D7D28D2C();
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C0240);
  result = sub_1D7D28D2C();
  if (v22)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for RecipeArticleViewButtonFactory();
    v20[3] = v12;
    v20[4] = &off_1F52B2448;
    v20[0] = v11;
    type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    v15 = MEMORY[0x1EEE9AC00](v14, v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    *(v13 + 80) = v12;
    *(v13 + 88) = &off_1F52B2448;
    *(v13 + 56) = v19;
    *(v13 + 160) = 0;
    *(v13 + 104) = v3;
    sub_1D799D69C(&v25, v13 + 16);
    *(v13 + 96) = v4;
    *(v13 + 112) = v5;
    sub_1D799D69C(&v21, v13 + 120);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v13;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD59D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v3 = v10;
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v9)
  {
    type metadata accessor for AudioArticleViewerFeatureProvider();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v3;
    v7[4] = v4;
    v7[5] = v5;
    v7[6] = v6;
    sub_1D799D69C(&v8, (v7 + 7));
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD5B78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A66C();
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF0D0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    type metadata accessor for RecipeArticleViewerFeatureProvider();
    v6 = swift_allocObject();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = v3;
    sub_1D799D69C(&v7, v6 + 48);
    *(v6 + 88) = v4;
    *(v6 + 96) = v5;
    *(v6 + 16) = 1;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BD5D60(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v8 = result;
    a3(0);
    swift_allocObject();
    return a4(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BD5E00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleViewerViewController();
  result = sub_1D7D28D1C();
  if (result)
  {
    return sub_1D7D2A64C();
  }

  __break(1u);
  return result;
}

void sub_1D7BD5E84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D7BD5EFC(uint64_t a1, char a2, void **a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a3;
  v23 = *a3;
  *a3 = 0x8000000000000000;
  v11 = sub_1D7A5B954(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_16:
    v9 = sub_1D79E569C(0, v9[2] + 1, 1, v9);
    a3[v11] = v9;
    goto LABEL_10;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7B97FE8();
      v9 = v23;
    }
  }

  else
  {
    sub_1D7B93400(v14, isUniquelyReferenced_nonNull_native);
    v9 = v23;
    v16 = sub_1D7A5B954(a2);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }

    v11 = v16;
  }

  *a3 = v9;
  if ((v15 & 1) == 0)
  {
    sub_1D7B9695C(v11, a2, MEMORY[0x1E69E7CC0], v9);
  }

  a3 = v9[7];
  v9 = a3[v11];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  a3[v11] = v9;
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v20 = v9[2];
  v19 = v9[3];
  if (v20 >= v19 >> 1)
  {
    v9 = sub_1D79E569C((v19 > 1), v20 + 1, 1, v9);
    a3[v11] = v9;
  }

  v9[2] = v20 + 1;
  v21 = &v9[2 * v20];
  v21[4] = a1;
  v21[5] = a4;
}

uint64_t sub_1D7BD60A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 153))
  {
    return 0;
  }

  v4 = *(*a3 + 40);
  v5 = *(*a3 + 48);
  __swift_project_boxed_opaque_existential_1((*a3 + 16), v4);
  return (*(v5 + 8))(a1, v4, v5) & 1;
}

uint64_t sub_1D7BD611C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*a3 + 40);
  v7 = *(*a3 + 48);
  __swift_project_boxed_opaque_existential_1((*a3 + 16), v6);
  if (((*(v7 + 8))(a1, a2, v6, v7) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  return sub_1D7D2F9FC() & 1;
}

void sub_1D7BD61C0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1D7D2DB0C();
  v4 = sub_1D7D30D8C();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 112);
  }

  v6 = v4;
  [v4 setTitleView_];
}

BOOL sub_1D7BD6234(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D7993EC4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13[-v7 - 8];
  sub_1D7BD6EE8(a1, &v13[-v7 - 8], type metadata accessor for ArticleViewerPage);
  v9 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_1D79DA880(a2, v13);
  v10 = sub_1D7AEB250(v8, v13);
  sub_1D7BD6A78(v13, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
  sub_1D7BD7440(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v4, sub_1D7993EC4);
  return v10;
}

char *sub_1D7BD63D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider();
  v26[3] = v5;
  v26[4] = &off_1F52B16D8;
  v26[0] = a1;
  v24 = v4;
  v25 = &off_1F52B12E8;
  v23[0] = a2;
  type metadata accessor for CombinedToolbarFeatureProvider();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v5);
  v8 = MEMORY[0x1EEE9AC00](v7, v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v13 = MEMORY[0x1EEE9AC00](v12, v12);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v10;
  v18 = *v15;
  *(v6 + 5) = v5;
  *(v6 + 6) = &off_1F52B16D8;
  *(v6 + 2) = v17;
  *(v6 + 10) = v4;
  *(v6 + 11) = &off_1F52B12E8;
  *(v6 + 7) = v18;
  *(v6 + 12) = 0;
  v19 = OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_currentArticle;
  v20 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v20 - 8) + 56))(&v6[v19], 1, 1, v20);
  v6[OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_isTableOfContentsVisible] = 0;
  v21 = &v6[OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_actionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v6[OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_transition] = 1;
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v6;
}

uint64_t sub_1D7BD665C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider();
  v25[3] = v6;
  v25[4] = &off_1F52B16D8;
  v25[0] = a1;
  v7 = type metadata accessor for IssueCoverViewButtonFactory();
  v23 = v7;
  v24 = &off_1F52B12E8;
  v22[0] = a2;
  type metadata accessor for TableOfContentsArticleViewerToolbarFeatureProvider();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x1EEE9AC00](v9, v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v15 = MEMORY[0x1EEE9AC00](v14, v14);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  *(v8 + 40) = v6;
  *(v8 + 48) = &off_1F52B16D8;
  *(v8 + 16) = v19;
  *(v8 + 120) = v7;
  *(v8 + 128) = &off_1F52B12E8;
  *(v8 + 96) = v20;
  *(v8 + 136) = 0;
  *(v8 + 144) = 1;
  sub_1D799D69C(a3, v8 + 56);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v8;
}

void sub_1D7BD686C()
{
  if (!qword_1EE0C0368)
  {
    sub_1D7992EFC(255, &unk_1EE0BED20);
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    v0 = sub_1D7D291BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0368);
    }
  }
}

void sub_1D7BD68F4()
{
  if (!qword_1EE0C0370)
  {
    sub_1D7D2AF4C();
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    v0 = sub_1D7D291BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0370);
    }
  }
}

unint64_t sub_1D7BD696C()
{
  result = qword_1EE0C8860;
  if (!qword_1EE0C8860)
  {
    sub_1D7993EC4(255, &unk_1EE0C8850, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8860);
  }

  return result;
}

uint64_t sub_1D7BD6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D7BD6A78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D7BD6C30(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1D7BD6AD4()
{
  result = qword_1EE0C88A0;
  if (!qword_1EE0C88A0)
  {
    sub_1D7993EC4(255, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C88A0);
  }

  return result;
}

void sub_1D7BD6BB4()
{
  if (!qword_1EE0CA958)
  {
    sub_1D7BD6C30(255, &unk_1EE0CA960, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for FeatureState);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CA958);
    }
  }
}

void sub_1D7BD6C30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7BD6C80()
{
  result = qword_1EE0C8880;
  if (!qword_1EE0C8880)
  {
    sub_1D7993EC4(255, &qword_1EE0C8870, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8880);
  }

  return result;
}

unint64_t sub_1D7BD6D4C()
{
  result = qword_1EE0C8910;
  if (!qword_1EE0C8910)
  {
    sub_1D7993EC4(255, &qword_1EE0C8908, type metadata accessor for LikeDislikeArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8910);
  }

  return result;
}

unint64_t sub_1D7BD6E40()
{
  result = qword_1EE0C8900;
  if (!qword_1EE0C8900)
  {
    sub_1D7993EC4(255, &qword_1EE0C88F0, type metadata accessor for BottomPaletteFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8900);
  }

  return result;
}

uint64_t sub_1D7BD6EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7BD6F50()
{
  result = qword_1EE0C88E0;
  if (!qword_1EE0C88E0)
  {
    sub_1D7993EC4(255, &qword_1EE0C88D8, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C88E0);
  }

  return result;
}

unint64_t sub_1D7BD7010()
{
  result = qword_1EE0C8940[0];
  if (!qword_1EE0C8940[0])
  {
    sub_1D7993EC4(255, &unk_1EE0C8930, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C8940);
  }

  return result;
}

unint64_t sub_1D7BD70A8()
{
  result = qword_1EE0C8848;
  if (!qword_1EE0C8848)
  {
    sub_1D7993EC4(255, &qword_1EE0C8840, type metadata accessor for TitleViewContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8848);
  }

  return result;
}

unint64_t sub_1D7BD7168()
{
  result = qword_1EE0C88D0;
  if (!qword_1EE0C88D0)
  {
    sub_1D7993EC4(255, &qword_1EE0C88C0, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C88D0);
  }

  return result;
}

unint64_t sub_1D7BD7234()
{
  result = qword_1EE0C88B0;
  if (!qword_1EE0C88B0)
  {
    sub_1D7993EC4(255, &qword_1EE0C88A8, type metadata accessor for ArticleViewerMoreFeatureContext, type metadata accessor for ArticleViewerFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C88B0);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7BD7340(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7993EC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7BD73C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7993EC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7BD7440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7BD74A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BD7508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7BD7568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D39C();
    v8[1] = sub_1D7D2D12C();
    v8[2] = sub_1D799C134(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v8[3] = MEMORY[0x1E69B4280];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7BD762C()
{
  result = qword_1EE0C7C20[0];
  if (!qword_1EE0C7C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C7C20);
  }

  return result;
}

uint64_t sub_1D7BD7680(uint64_t a1, uint64_t a2)
{
  sub_1D7B61D38(0, &qword_1EE0C4C50, &unk_1EE0C4C58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D7BD777C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D7BD7810(uint64_t a1, char *a2, CGFloat *a3)
{
  v18 = a1;
  v6 = sub_1D7D2F64C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v11 = *&a2[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_coverView];
  v19 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributes();
  sub_1D7CCD1E0();
  v12 = v18;
  sub_1D7D2FC1C();
  (*(v7 + 8))(v10, v6);
  [a2 setFrame_];
  [v11 setFrame_];
  v13 = *&a2[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_highlightView];
  [a2 bounds];
  [v13 setFrame_];
  v14 = *&a2[OBJC_IVAR____TtC12NewsArticles23ToolbarIssueCoverButton_callToActionLabel];
  v15 = v19;
  [v14 setFrame_];
  [v14 setAttributedText_];
  __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
  return sub_1D79F7360(a2, v12, a3);
}

uint64_t sub_1D7BD7A58(void **a1)
{
  v2 = v1;
  Config = type metadata accessor for ArticleRecirculationFetchConfig();
  MEMORY[0x1EEE9AC00](Config, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for EndOfArticleFeedKnobsConfig();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for EndOfArticleFeedServiceConfig() + 20);
  v17 = type metadata accessor for EndOfArticleFeedContentConfig();
  sub_1D7BD7E34(&v16[*(v17 + 20)], v11);
  sub_1D7AD7F2C(&v11[*(v8 + 28)], v15);
  type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  sub_1D7D2E70C();
  v29 = v31;
  type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  sub_1D7D2E70C();
  v28 = v31;
  type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  sub_1D7D2E70C();
  v27 = v31;
  v18 = *a1;
  if (([v18 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v18, sel_parentIssue)) != 0)
  {
    v20 = v19;
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
    sub_1D7D2E70C();
  }

  else
  {
    type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
    sub_1D7D2E70C();
  }

  v21 = v31;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if ([v18 respondsToSelector_])
  {
    v22 = [v18 parentIssue];
    if (v22)
    {
    }
  }

  v23 = v28;
  *v6 = v29;
  v6[1] = v23;
  v6[2] = v27;
  v6[3] = v21;
  swift_storeEnumTagMultiPayload();
  v24 = sub_1D7C78270();
  sub_1D7BD7E98(v6, type metadata accessor for ArticleRecirculationFetchConfig);
  sub_1D7BD7E98(v15, type metadata accessor for EndOfArticleFeedGroupKnobs);
  return v24;
}

void *sub_1D7BD7D9C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  sub_1D7BD7A58(a1);
  type metadata accessor for EndOfArticleFeedPool();
  swift_allocObject();
  result = sub_1D7AD9F2C(v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D7BD7E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedKnobsConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BD7E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id WebViewControllerFactory.init(navigator:webViewStyle:sceneStateManager:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *a2;
  *&v3[qword_1EC9E6350] = a1;
  *&v3[qword_1EC9E6358] = v8;
  sub_1D799CC84(a3, &v3[qword_1EC9E6360]);
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

char *WebViewControllerFactory.createViewController(with:webViewCoordinator:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7BD8AE8(0, &qword_1EE0BDEC0, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23[-v7 - 8];
  sub_1D7D2807C();
  v9 = sub_1D7D280DC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D7BD83D0(v8, &qword_1EE0BDEC0, MEMORY[0x1E69681B8]);
    return 0;
  }

  sub_1D7D280BC();
  v12 = v11;
  (*(v10 + 8))(v8, v9);
  if (!v12)
  {
    return 0;
  }

  if ((sub_1D7D304AC() & 1) == 0)
  {

    return 0;
  }

  type metadata accessor for WebViewController();
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_1D7D281BC();
  v15 = [v13 initWithURL_];

  v16 = v15;
  [v16 setDismissButtonStyle_];
  [v16 setPreferredControlTintColor_];
  v17 = v16;
  result = [v17 view];
  if (result)
  {
    v19 = result;

    [v19 setAutoresizingMask_];

    v20 = qword_1EC9E5B60;
    swift_beginAccess();
    sub_1D7BD8868(a2, &v17[v20]);
    swift_endAccess();
    *&v17[qword_1EC9E5B68] = *(v3 + qword_1EC9E6350);

    [v17 setDelegate_];

    __swift_project_boxed_opaque_existential_1((v3 + qword_1EC9E6360), *(v3 + qword_1EC9E6360 + 24));
    swift_getWitnessTable();
    v21 = v17;
    sub_1D7D291FC();

    __swift_destroy_boxed_opaque_existential_1(v23);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7BD836C()
{
  result = qword_1EC9E6370;
  if (!qword_1EC9E6370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E6370);
  }

  return result;
}

uint64_t sub_1D7BD83D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7BD8AE8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1D7BD8444(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = WebViewControllerFactory.createViewController(with:webViewCoordinator:)(a1, v3);
  sub_1D7BD83D0(v3, &unk_1EC9E4530, sub_1D7BD836C);
  return v1;
}

id sub_1D7BD84A8(void *a1)
{
  v2 = sub_1D7D2824C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  v7 = a1;
  v8 = WebViewControllerFactory.createViewController(for:)(v6);

  (*(v3 + 8))(v6, v2);

  return v8;
}

id sub_1D7BD85B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D7D2824C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  if (a5)
  {
    sub_1D7D3034C();
  }

  sub_1D7BD88FC();

  (*(v7 + 8))(v10, v6);
  type metadata accessor for ActivityType(0);
  v11 = sub_1D7D3062C();

  return v11;
}

id WebViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WebViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7BD87C4(uint64_t a1)
{

  v2 = a1 + qword_1EC9E6360;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D7BD8868(uint64_t a1, uint64_t a2)
{
  sub_1D7BD8AE8(0, &unk_1EC9E4530, sub_1D7BD836C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BD88FC()
{
  sub_1D7BD8AE8(0, &unk_1EC9E6440, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7D50440;
  v1 = *MEMORY[0x1E69CDAF0];
  v2 = *MEMORY[0x1E69CDA80];
  *(v0 + 32) = *MEMORY[0x1E69CDAF0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69CDAF8];
  v4 = *MEMORY[0x1E69CDAC8];
  *(v0 + 48) = *MEMORY[0x1E69CDAF8];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69CDAE0];
  v6 = *MEMORY[0x1E69B7088];
  *(v0 + 64) = *MEMORY[0x1E69CDAE0];
  *(v0 + 72) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return v0;
}

void sub_1D7BD8AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D7BD8BC0(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v28 = a3;
  v27 = a2;
  v7 = [a4 componentStyleForComponent_];
  sub_1D799CC84(v4 + OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_layoutStore, v36);
  v8 = *(v4 + OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_bannerAdLayoutAttributesFactory);
  sub_1D799CC84(v4 + OBJC_IVAR____TtC12NewsArticles23AdComponentSizerFactory_bannerAdFactory, v34);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v10 = MEMORY[0x1EEE9AC00](v9, v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v15 = type metadata accessor for ArticleBannerAdFactory();
  v32 = v15;
  v33 = &off_1F52B4328;
  v31[0] = v14;
  v16 = type metadata accessor for AdComponentSizer();
  v17 = objc_allocWithZone(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v30[3] = v15;
  v30[4] = &off_1F52B4328;
  v30[0] = v23;
  v17[OBJC_IVAR____TtC12NewsArticles16AdComponentSizer____lazy_storage___isVisualDebuggingEnabled] = 2;
  sub_1D799CC84(v36, &v17[OBJC_IVAR____TtC12NewsArticles16AdComponentSizer_layoutStore]);
  *&v17[OBJC_IVAR____TtC12NewsArticles16AdComponentSizer_bannerAdLayoutAttributesFactory] = v8;
  sub_1D799CC84(v30, &v17[OBJC_IVAR____TtC12NewsArticles16AdComponentSizer_bannerAdFactory]);
  v29.receiver = v17;
  v29.super_class = v16;

  v24 = objc_msgSendSuper2(&v29, sel_initWithComponent_componentLayout_componentStyle_DOMObjectProvider_layoutOptions_, a1, v27, v7, a4, v28);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v24;
}

uint64_t sub_1D7BD9028(void *a1)
{
  v3 = v1;
  sub_1D7BDCF74(0, &qword_1EC9E6660, sub_1D7BDCD78, &type metadata for TableOfContentsGridLayout.LayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BDCD78();
  sub_1D7D31B1C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D7BDC8A0(&qword_1EC9E6668, type metadata accessor for CGRect);
  sub_1D7D318BC();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D7BDCDCC(0, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes, MEMORY[0x1E69E62F8]);
    sub_1D7BDCFDC(&qword_1EC9E6670, sub_1D7BDD078);
    sub_1D7D318BC();
    *&v13[0] = *(v3 + 40);
    v14 = 2;
    sub_1D7BDCE64();
    sub_1D7BDCEB4(&qword_1EC9E6680, sub_1D7BDD0AC);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7BD9308()
{
  v1 = 0xD000000000000016;
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
    return 0x656D617266;
  }
}

uint64_t sub_1D7BD936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7BDB8F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7BD9394(uint64_t a1)
{
  v2 = sub_1D7BDCD78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BD93D0(uint64_t a1)
{
  v2 = sub_1D7BDCD78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7BD9418@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D7BDBA1C(a1, v6);
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

uint64_t sub_1D7BD9474(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1D7BDC18C();
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x1EEE45C50](a1, v10, v11, v12, v13, v14);
}

uint64_t sub_1D7BD94F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7BDCCE4();
  swift_allocObject();
  v2 = sub_1D7D2876C();
  sub_1D7BDC8E8();
  swift_allocObject();
  v3 = sub_1D7D288AC();
  sub_1D7BDCF74(0, &qword_1EC9E65C0, sub_1D7BDC7EC, &type metadata for TableOfContentsPDFCellViewLayout.LayoutAttributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7D288AC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_1D7BD95D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17[-v12];
  v21 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x3FF0000000000000;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7408], v9);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v15 = MEMORY[0x1E69D7150];
  sub_1D7BDC2B0(0, &qword_1EC9E6560, MEMORY[0x1E69D7150]);
  sub_1D7BDC334(&qword_1EC9E6568, &qword_1EC9E6560, v15);
  sub_1D7D287AC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D7BD97CC(void (*a1)(void, void, void), uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a5;
  v53 = a7;
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v45 - v14);
  v16 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69D7460];
  if (*(a2 + 16))
  {
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v50 = type metadata accessor for TableOfContentsHeaderViewLayout.Context;
    v23 = sub_1D7BDC4D0(a2 + v22, &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TableOfContentsHeaderViewLayout.Context);
    v49 = &v45;
    v54 = a1;
    v25 = MEMORY[0x1EEE9AC00](v23, v24);
    (*(v12 + 104))(v15, *v21, v11, v25);
    v26 = v12;
    v27 = a1;
    v28 = MEMORY[0x1E69D6F38];
    sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
    v51 = a3;
    v29 = v28;
    a1 = v27;
    v12 = v26;
    v21 = MEMORY[0x1E69D7460];
    sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v29);
    a3 = v51;
    sub_1D7D2878C();
    (*(v26 + 8))(v15, v11);
    sub_1D7BDC840(v20, v50);
  }

  v54 = a1;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x4024000000000000;
  *v15 = v30;
  v31 = *MEMORY[0x1E69D7488];
  v51 = *(v12 + 104);
  v52 = v12 + 104;
  v51(v15, v31, v11);
  v32 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  v34 = v33;
  v49 = sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v32);
  v50 = v34;
  sub_1D7D2880C();
  v48 = *(v12 + 8);
  v48(v15, v11);
  v54 = a3;
  sub_1D7BDCDCC(0, &qword_1EC9E6580, type metadata accessor for TableOfContentsPDFCellViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D7BDC378();
  v35 = sub_1D7D30A0C();
  v46 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = a1;
    v39 = v15;
    v40 = v38;
    v41 = v11;
    v42 = v46 + 32;
    v47 = *v21;
    do
    {
      v42 += 8;
      v54 = v40;
      v43 = MEMORY[0x1EEE9AC00](v35, v36);
      (v51)(v39, v47, v41, v43);

      sub_1D7D287AC();

      v35 = (v48)(v39, v41);
      --v37;
    }

    while (v37);
  }
}

uint64_t sub_1D7BD9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v17[-v13];
  v20 = a4;
  v21 = a1;
  v18 = a2;
  v19 = a3;
  (*(v10 + 104))(&v17[-v13], *MEMORY[0x1E69D7460], v9, v12);
  v15 = MEMORY[0x1E69D7150];
  sub_1D7BDC2B0(0, &qword_1EC9E6560, MEMORY[0x1E69D7150]);
  sub_1D7BDC334(&qword_1EC9E6568, &qword_1EC9E6560, v15);
  sub_1D7D287AC();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1D7BD9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v17 = a2;
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v16 - v9);
  v23 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4034000000000000;
  *v10 = v11;
  v12 = *(v7 + 104);
  v12(v10, *MEMORY[0x1E69D7488], v6);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v13);
  sub_1D7D2880C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = a1;
  v12(v10, *MEMORY[0x1E69D7460], v6);
  sub_1D7D2878C();
  return (v14)(v10, v6);
}

uint64_t sub_1D7BDA11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v26 = a2;
  v27 = a3;
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (v22 - v9);
  v33 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4044000000000000;
  *v10 = v11;
  v25 = *MEMORY[0x1E69D7480];
  v12 = *(v7 + 104);
  v12(v10);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  v15 = v14;
  v22[2] = sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v13);
  sub_1D7D2880C();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v33 = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x3FE0000000000000;
  *v10 = v17;
  v23 = *MEMORY[0x1E69D7430];
  v12(v10);
  v30 = v26;
  v31 = v27;
  v32 = v24;
  v22[1] = v15;
  sub_1D7D287AC();
  v16(v10, v6);
  v33 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4044000000000000;
  *v10 = v18;
  (v12)(v10, v25, v6);
  sub_1D7D2880C();
  v16(v10, v6);
  v33 = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3FE0000000000000;
  *v10 = v19;
  (v12)(v10, v23, v6);
  v28 = v26;
  v29 = v27;
  sub_1D7D287AC();
  v16(v10, v6);
  v33 = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4044000000000000;
  *v10 = v20;
  (v12)(v10, v25, v6);
  sub_1D7D2880C();
  return (v16)(v10, v6);
}

void sub_1D7BDA520(uint64_t a1, uint64_t a2)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v15 = sub_1D7BDC4D0(a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TableOfContentsHeaderViewLayout.Context);
    v19[1] = a1;
    v17 = MEMORY[0x1EEE9AC00](v15, v16);
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7460], v5, v17);
    v18 = MEMORY[0x1E69D6F38];
    sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
    sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v18);
    sub_1D7D2878C();
    (*(v6 + 8))(v9, v5);
    sub_1D7BDC840(v14, type metadata accessor for TableOfContentsHeaderViewLayout.Context);
  }
}

uint64_t sub_1D7BDA7DC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v17 - v10;
  v17[1] = a1;
  swift_getKeyPath();
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7460], v7);
  v12 = [a2 horizontalSizeClass];
  v13 = [a2 verticalSizeClass];
  if (v12 == 2 && v13 == 2)
  {
    sub_1D7C5DC8C(a3);
  }

  else
  {
    sub_1D7C5EAC4(a3);
  }

  v15 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v15);
  sub_1D7BDC8A0(&qword_1EC9E65D0, sub_1D7BDC8E8);
  sub_1D7D287CC();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7BDAA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v23 - v9);
  v29 = a1;
  v30 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4044000000000000;
  *v10 = v11;
  v12 = *MEMORY[0x1E69D7488];
  v27 = *(v7 + 104);
  v28 = v7 + 104;
  v27(v10, v12, v6);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  v15 = v14;
  v25 = sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v13);
  v26 = v15;
  sub_1D7D2880C();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v30 = a3;
  sub_1D7BDCDCC(0, &qword_1EC9E6580, type metadata accessor for TableOfContentsPDFCellViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D7BDC378();
  v17 = sub_1D7D30A0C();
  v23 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = v23 + 32;
    v24 = *MEMORY[0x1E69D7460];
    do
    {
      v20 += 8;
      v30 = v29;
      v21 = MEMORY[0x1EEE9AC00](v17, v18);
      (v27)(v10, v24, v6, v21);

      sub_1D7D287AC();

      v17 = (v16)(v10, v6);
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1D7BDAD70(uint64_t a1, uint64_t a2)
{
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v16[-v9];
  v17 = a2;
  v18 = a1;
  v11 = *(v6 + 104);
  (v11)(&v16[-v9], *MEMORY[0x1E69D7460], v5, v8);
  v12 = MEMORY[0x1E69D6F38];
  sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
  sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v12);
  sub_1D7D2878C();
  v13 = *(v6 + 8);
  v13(v10, v5);
  v18 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4024000000000000;
  *v10 = v14;
  v11(v10, *MEMORY[0x1E69D7488], v5);
  sub_1D7D2880C();
  return (v13)(v10, v5);
}

uint64_t sub_1D7BDAFB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v80 = a3;
  v83 = a1;
  v79 = sub_1D7D2897C();
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v7);
  v78 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7BDCF74(0, &qword_1EC9E6558, sub_1D7BDC138, &type metadata for TableOfContentsGridLayout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v63 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v88 = &v61[-v16];
  v77 = type metadata accessor for TableOfContentsPDFCellViewLayout.Context();
  v69 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v17);
  v19 = &v61[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7BDC464();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v68 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7BDCDCC(0, &qword_1EC9E6598, sub_1D7BDC464, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v61[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v61[-v31];
  v89 = a2;
  sub_1D7BDCDCC(0, &qword_1EC9E6580, type metadata accessor for TableOfContentsPDFCellViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D7BDC378();
  result = sub_1D7D30A0C();
  v66 = result;
  v65 = *(result + 16);
  if (!v65)
  {
  }

  v34 = 0;
  v64 = v66 + 32;
  v86 = (v22 + 48);
  v87 = (v22 + 56);
  v76 = *MEMORY[0x1E69D7430];
  v82 = (v11 + 104);
  v74 = *MEMORY[0x1E69D7378];
  v73 = (v6 + 104);
  v81 = (v11 + 8);
  v62 = *MEMORY[0x1E69D7480];
  v75 = v10;
  v72 = v32;
  v71 = v21;
  while (v34 < *(v66 + 16))
  {
    v35 = *(v64 + 8 * v34);
    v67 = v34 + 1;
    v36 = *(v35 + 16);
    v84 = 2 * v34;
    v85 = v34 + 0x4000000000000000;
    v70 = v35;

    v37 = 0;
    if (!v36)
    {
LABEL_6:
      v38 = 1;
      v37 = v36;
      goto LABEL_10;
    }

    while (1)
    {
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v37 >= *(v70 + 16))
      {
        goto LABEL_21;
      }

      v39 = v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v37;
      v40 = *(v21 + 48);
      v41 = v68;
      *v68 = v37;
      sub_1D7BDC4D0(v39, v41 + v40, type metadata accessor for TableOfContentsPDFCellViewLayout.Context);
      sub_1D7BDC5CC(v41, v28, sub_1D7BDC464);
      v38 = 0;
      ++v37;
LABEL_10:
      (*v87)(v28, v38, 1, v21);
      sub_1D7BDC538(v28, v32);
      if ((*v86)(v32, 1, v21) == 1)
      {
        break;
      }

      v42 = *v32;
      sub_1D7BDC5CC(v32 + *(v21 + 48), v19, type metadata accessor for TableOfContentsPDFCellViewLayout.Context);
      v89 = v83;
      swift_getKeyPath();
      v43 = swift_allocObject();
      *(v43 + 16) = a4;
      v44 = v88;
      *v88 = v43;
      result = (*v82)(v44, v76, v10);
      if ((v85 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (__OFADD__(v84, v42))
      {
        goto LABEL_19;
      }

      v45 = sub_1D7D2888C();
      v47 = MEMORY[0x1EEE9AC00](v45, v46);
      *&v61[-48] = v19;
      *&v61[-40] = v47;
      *&v61[-32] = v48;
      *&v61[-24] = v50;
      v60 = v49;
      (*v73)(v78, v74, v79);
      sub_1D7BDC638();
      swift_allocObject();
      sub_1D7D2899C();
      v51 = MEMORY[0x1E69D6F38];
      sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
      sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v51);
      v60 = sub_1D7BDC75C();
      v52 = v28;
      v53 = v19;
      v54 = v88;
      v10 = v75;
      sub_1D7D287CC();

      v55 = v54;
      v19 = v53;
      v28 = v52;
      (*v81)(v55, v10);
      result = sub_1D7BDC840(v19, type metadata accessor for TableOfContentsPDFCellViewLayout.Context);
      v21 = v71;
      v32 = v72;
      if (v37 == v36)
      {
        goto LABEL_6;
      }
    }

    v56 = v67;
    if (v67 < *(v66 + 16))
    {
      v89 = v83;
      v57 = swift_allocObject();
      *(v57 + 16) = 0x4024000000000000;
      v58 = v63;
      *v63 = v57;
      (*v82)(v58, v62, v10);
      v59 = MEMORY[0x1E69D6F38];
      sub_1D7BDC2B0(0, &qword_1EC9E6570, MEMORY[0x1E69D6F38]);
      sub_1D7BDC334(&qword_1EC9E6578, &qword_1EC9E6570, v59);
      sub_1D7D2880C();
      result = (*v81)(v58, v10);
      v56 = v67;
    }

    v34 = v56;
    if (v56 == v65)
    {
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D7BDB8F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7D77330 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7D77350 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7BDBA1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7BDCF74(0, &qword_1EC9E6618, sub_1D7BDCD78, &type metadata for TableOfContentsGridLayout.LayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BDCD78();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  type metadata accessor for CGRect(0);
  v22 = 0;
  sub_1D7BDC8A0(&qword_1EC9E6628, type metadata accessor for CGRect);
  v11 = v19;
  sub_1D7D317DC();
  v17 = v21;
  v18 = v20;
  sub_1D7BDCDCC(0, &qword_1EC9E6630, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes, MEMORY[0x1E69E62F8]);
  v22 = 1;
  sub_1D7BDCFDC(&qword_1EC9E6638, sub_1D7BDCE30);
  sub_1D7D317DC();
  v12 = v10;
  v13 = v20;
  sub_1D7BDCE64();
  v22 = 2;
  sub_1D7BDCEB4(&qword_1EC9E6650, sub_1D7BDCF20);
  sub_1D7D317DC();
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

uint64_t sub_1D7BDBDA0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2897C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 horizontalSizeClass];
  v13 = [a1 verticalSizeClass];
  if (v12 != 2)
  {
    if (v12 == 1 && (v13 == 1 || v13 == 2))
    {
      goto LABEL_5;
    }

LABEL_8:
    v19 = MEMORY[0x1EEE9AC00](v13, v14);
    *(&v21 - 4) = a2;
    *(&v21 - 3) = a3;
    *(&v21 - 2) = a1;
    (*(v7 + 104))(v11, *MEMORY[0x1E69D7378], v6, v19);
    sub_1D7BDC2B0(0, &qword_1EC9E6540, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    return sub_1D7D2899C();
  }

  if (v13 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v15 = *MEMORY[0x1E69D7130];
  v16 = sub_1D7D2883C();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  v17 = (*(v7 + 104))(v11, *MEMORY[0x1E69D7370], v6);
  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v21 - 4) = a2;
  *(&v21 - 3) = a3;
  *(&v21 - 2) = a1;
  sub_1D7BDC2B0(0, &qword_1EC9E6540, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D7D2899C();
}

unint64_t sub_1D7BDC138()
{
  result = qword_1EC9E6548;
  if (!qword_1EC9E6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6548);
  }

  return result;
}

unint64_t sub_1D7BDC18C()
{
  result = qword_1EC9E6550;
  if (!qword_1EC9E6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6550);
  }

  return result;
}

void sub_1D7BDC2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableOfContentsGridLayout;
    v8[1] = &type metadata for TableOfContentsGridLayout.LayoutAttributes;
    v8[2] = sub_1D7BDC138();
    v8[3] = sub_1D7BDC18C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7BDC334(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D7BDC2B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7BDC378()
{
  result = qword_1EC9E6588;
  if (!qword_1EC9E6588)
  {
    sub_1D7BDCDCC(255, &qword_1EC9E6580, type metadata accessor for TableOfContentsPDFCellViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6588);
  }

  return result;
}

void sub_1D7BDC464()
{
  if (!qword_1EC9E6590)
  {
    type metadata accessor for TableOfContentsPDFCellViewLayout.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6590);
    }
  }
}

uint64_t sub_1D7BDC4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BDC538(uint64_t a1, uint64_t a2)
{
  sub_1D7BDCDCC(0, &qword_1EC9E6598, sub_1D7BDC464, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BDC5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7BDC638()
{
  if (!qword_1EC9E65A0)
  {
    sub_1D7BDC6B4();
    sub_1D7BDC708();
    v0 = sub_1D7D289BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E65A0);
    }
  }
}

unint64_t sub_1D7BDC6B4()
{
  result = qword_1EC9E65A8;
  if (!qword_1EC9E65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65A8);
  }

  return result;
}

unint64_t sub_1D7BDC708()
{
  result = qword_1EC9E65B0;
  if (!qword_1EC9E65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65B0);
  }

  return result;
}

unint64_t sub_1D7BDC75C()
{
  result = qword_1EC9E65B8;
  if (!qword_1EC9E65B8)
  {
    sub_1D7BDCF74(255, &qword_1EC9E65C0, sub_1D7BDC7EC, &type metadata for TableOfContentsPDFCellViewLayout.LayoutAttributes, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65B8);
  }

  return result;
}

unint64_t sub_1D7BDC7EC()
{
  result = qword_1EC9E65C8;
  if (!qword_1EC9E65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E65C8);
  }

  return result;
}

uint64_t sub_1D7BDC840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BDC8A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7BDC8E8()
{
  if (!qword_1EC9E65D8)
  {
    type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(255);
    sub_1D7BDC8A0(&qword_1EC9E65E0, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
    v0 = sub_1D7D288BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E65D8);
    }
  }
}