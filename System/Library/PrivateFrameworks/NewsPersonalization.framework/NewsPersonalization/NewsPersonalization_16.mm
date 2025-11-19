uint64_t sub_1C6C9740C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C974B8()
{
  if (v0[2] < 0)
  {
    MEMORY[0x1CCA56740](1);

    return sub_1C6D79610();
  }

  else
  {
    v2 = *v0;
    v1 = v0[1];
    MEMORY[0x1CCA56740](0);
    return PersonalizationScript.Tag.hash(into:)();
  }
}

uint64_t sub_1C6C97578()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9760C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656B696C736964;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000736ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x656B696C736964;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C976B8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C97740()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C977B4()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C97844(uint64_t *a1@<X8>)
{
  v2 = 0x6F697469646E6F63;
  if (*v1)
  {
    v2 = 0x656B696C736964;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C97888()
{
  if (*v0)
  {
    result = 0x656B696C736964;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C978D4(uint64_t a1)
{
  v2 = sub_1C6CA5F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C97910(uint64_t a1)
{
  v2 = sub_1C6CA5F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.HeadlineCondition.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1C6CA6FEC(0, &qword_1EC1D8938, sub_1C6CA5F70, &type metadata for PersonalizationScript.HeadlineCondition.PublishedBy.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v21 - v7;
  sub_1C6CA6FEC(0, &qword_1EC1D8948, sub_1C6CA5FC4, &type metadata for PersonalizationScript.HeadlineCondition.ContainsTag.CodingKeys, v4);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  sub_1C6B16F28(a1, v28);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1C6CA5FC4();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1C6B16F28(a1, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1C6CA5F70();
    v14 = v30;
    sub_1C6D7A2D0();
    sub_1C6CA606C();
    v15 = v24;
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v23 + 8))(v14, v15);
    v16 = v25;
    v17 = v26;
    LOBYTE(v15) = v27;
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v19 = v15 | 0x80;
  }

  else
  {
    sub_1C6CA606C();
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v10 + 8))(v13, v9);
    v16 = v25;
    v17 = v26;
    v19 = v27;
    result = __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v20 = v22;
  *v22 = v16;
  v20[1] = v17;
  *(v20 + 16) = v19;
  return result;
}

uint64_t sub_1C6C97EA0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v20 = *(v9 - 8);
  v11 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v6)
  {
    v15 = v20;
    v16 = v23;
    sub_1C6CA606C();
    sub_1C6D79FF0();
    (*(v15 + 8))(v13, v10);
    v17 = v22;
    *v16 = v21;
    *(v16 + 16) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.HeadlineCondition.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  if (v4 < 0)
  {
    sub_1C6CA60C0();
  }

  else
  {
    sub_1C6CA6114();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1C6C98210@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C98268(uint64_t a1)
{
  v2 = sub_1C6CA5FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C982A4(uint64_t a1)
{
  v2 = sub_1C6CA5FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.HeadlineCondition.ContainsTag.init(containsTag:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO11ContainsTagV08containsG0AC0G0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B622DC(v2, v3, v4);
}

uint64_t sub_1C6C98440@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C98498(uint64_t a1)
{
  v2 = sub_1C6CA5F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C984D4(uint64_t a1)
{
  v2 = sub_1C6CA5F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6C98560(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v19 = a5;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v18 = v7;
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = a1[4];
  v14 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1C6B622DC(v11, v12, v14);
  v19(v15);
  sub_1C6D7A300();
  v20 = v11;
  v21 = v12;
  v22 = v14;
  v16 = v18;
  sub_1C6CA53B8();
  sub_1C6D7A090();
  sub_1C6B622F8(v20, v21, v22);
  return (*(v23 + 8))(v10, v16);
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO11ContainsTagV4hash4intoys6HasherVz_tF_0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return PersonalizationScript.Tag.hash(into:)();
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO11ContainsTagV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C987B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.HeadlineCondition.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  MEMORY[0x1CCA56740](*(v0 + 16) < 0);
  return PersonalizationScript.Tag.hash(into:)();
}

uint64_t PersonalizationScript.HeadlineCondition.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v3 < 0);
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C98930()
{
  v2 = *v0;
  v1 = v0[1];
  MEMORY[0x1CCA56740](*(v0 + 16) < 0);
  return PersonalizationScript.Tag.hash(into:)();
}

uint64_t sub_1C6C989A0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v3 < 0);
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C98A28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656E696C64616568;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000736ELL;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x656E696C64616568;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C98AD8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C98B64()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C98BDC()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C98C70(uint64_t *a1@<X8>)
{
  v2 = 0x6F697469646E6F63;
  if (*v1)
  {
    v2 = 0x656E696C64616568;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C98CB8()
{
  if (*v0)
  {
    result = 0x656E696C64616568;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C98D08(uint64_t a1)
{
  v2 = sub_1C6CA6168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C98D44(uint64_t a1)
{
  v2 = sub_1C6CA6168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.HeadlinesValue.init(conditions:headlines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C6C98DD8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void *a6@<X8>)
{
  v22 = a6;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v23 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v6)
  {
    v15 = v10;
    v16 = v22;
    sub_1C6B6052C(0, &qword_1EC1D88C0);
    v25 = 0;
    sub_1C6CA5B6C();
    v17 = v23;
    sub_1C6D79F90();
    v18 = v26;
    v24 = 1;
    v19 = sub_1C6D79FE0();
    (*(v15 + 8))(v13, v17);
    *v16 = v18;
    v16[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6C9903C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v18 = a5;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  v13 = *v5;
  v17 = v5[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();

  sub_1C6D7A300();
  v22 = v13;
  v21 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0);
  sub_1C6CA5C9C();
  v15 = v19;
  sub_1C6D7A030();

  if (!v15)
  {
    v20 = 1;
    sub_1C6D7A080();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t PersonalizationScript.Interaction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1C6CA6FEC(0, &qword_1EC1D8870, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v19 - v7;
  sub_1C6CA6FEC(0, &qword_1EC1D89A0, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, v4);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  sub_1C6B16F28(a1, v26);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C6CA61BC();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1C6B16F28(a1, v26);
    PersonalizationScript.LikeInteraction.init(from:)(v26, &v23);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v23;
    v16 = v24;
    v17 = 32;
  }

  else
  {
    sub_1C6CA6264();
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v10 + 8))(v13, v9);
    v15 = v23;
    v16 = v24;
    v17 = v25;
    result = __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v18 = v27;
  *v27 = v15;
  v18[1] = v16;
  *(v18 + 16) = v17;
  return result;
}

uint64_t PersonalizationScript.ScrollInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D89A0, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA61BC();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v16;
    sub_1C6CA6264();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    *v11 = v14;
    *(v11 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.ReadInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D89E0, sub_1C6CA6360, &type metadata for PersonalizationScript.ReadInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6360();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v18;
    sub_1C6B6052C(0, &qword_1EC1D88C0);
    v20 = 0;
    sub_1C6CA5B6C();
    sub_1C6D79F90();
    v13 = v21;
    v19 = 1;
    sub_1C6D79FC0();
    v15 = v14;
    (*(v11 + 8))(v9, v5);
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Interaction.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  v6 = v4 >> 5;
  if (v4 >> 5 > 2)
  {
    if (v6 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1C6CA645C();
    }

    else if (v6 == 4)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1C6CA6408();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1C6CA63B4();
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1C6CA6504();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      sub_1C6CA64B0();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_1C6CA6558();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

BOOL static PersonalizationScript.ScrollInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    return (v2 == v3) & ~v4;
  }

  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    if (v2)
    {
      if (v3)
      {
        v7 = *a2;

        v8 = sub_1C6B56EAC(v2, v3);
        sub_1C6B360A8(v3, v6, 1);
        if (v8)
        {
          return v5 == v6;
        }
      }
    }

    else if (!v3)
    {
      return v5 == v6;
    }
  }

  return 0;
}

BOOL _s19NewsPersonalization0B6ScriptV14HeadlinesValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (*a1)
  {
    if (v4)
    {
      v6 = *a2;

      v7 = sub_1C6B56EAC(v2, v4);

      if (v7)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

BOOL static PersonalizationScript.ReadInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      v6 = *a2;

      v7 = sub_1C6B56EAC(v2, v4);

      if (v7)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t PersonalizationScript.Interaction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        MEMORY[0x1CCA56740](2);
        if (!v5)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_1C6D7A280();
        sub_1C6CA2980(a1, v5);
LABEL_15:
        v8 = v4;
        return MEMORY[0x1CCA56740](v8);
      }
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if ((v6 & 1) == 0)
      {
        MEMORY[0x1CCA56740](0);
        v8 = v5;
        return MEMORY[0x1CCA56740](v8);
      }
    }

    MEMORY[0x1CCA56740](1);
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1C6D7A280();
    goto LABEL_15;
  }

  if (v7 == 3)
  {
    MEMORY[0x1CCA56740](3);
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v7 == 4)
  {
    MEMORY[0x1CCA56740](4);
    sub_1C6D7A280();
    if (v5)
    {
      sub_1C6CA2980(a1, v5);
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    return MEMORY[0x1CCA56770](v10);
  }

  else
  {
    MEMORY[0x1CCA56740](5);

    return sub_1C6CA2840(a1, v5);
  }
}

uint64_t PersonalizationScript.Interaction.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A0D8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A130()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A180(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701538156;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000736ELL;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701538156;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9A224()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A2A4()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9A310()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9A398(uint64_t *a1@<X8>)
{
  v2 = 1701538156;
  if (!*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9A3D4()
{
  if (*v0)
  {
    result = 1701538156;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9A418(uint64_t a1)
{
  v2 = sub_1C6CA62B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9A454(uint64_t a1)
{
  v2 = sub_1C6CA62B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.Moment.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1C6B16F28(a1, v12);
  sub_1C6CA65AC();
  sub_1C6CA6600();
  sub_1C6D79740();
  if (v2)
  {

    sub_1C6B16F28(a1, v12);
    PersonalizationScript.Moment.TaskMoment.init(from:)(v12, v9);
    v5 = v10;
    v6 = v11;
    v7 = v9[0] | 0x8000000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v9[0];
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v7;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t PersonalizationScript.Moment.TaskMoment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8A40, sub_1C6CA66A8, &type metadata for PersonalizationScript.Moment.TaskMoment.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA66A8();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v18;
    v20 = 0;
    sub_1C6CA66FC();
    sub_1C6D79FF0();
    v12 = v21;
    v19 = 1;
    v14 = sub_1C6D79FA0();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Moment.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  if (v2 < 0)
  {
    sub_1C6CA6750();
  }

  else
  {
    sub_1C6CA67A4();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t PersonalizationScript.Moment.ScriptMoment.rawValue.getter()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9A96C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x7472617473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6581861;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9AA08()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9AA80()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9AAE4()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9AB64(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x7472617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PersonalizationScript.Moment.TaskMoment.taskID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C6C9AC84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x44496B736174;
  }

  else
  {
    v4 = 0x6F6C6F6E6F726863;
  }

  if (v3)
  {
    v5 = 0xEA00000000007967;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x44496B736174;
  }

  else
  {
    v6 = 0x6F6C6F6E6F726863;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEA00000000007967;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9AD2C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9ADB0()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9AE20()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9AEAC(uint64_t *a1@<X8>)
{
  v2 = 0x6F6C6F6E6F726863;
  if (*v1)
  {
    v2 = 0x44496B736174;
  }

  v3 = 0xEA00000000007967;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9AEEC()
{
  if (*v0)
  {
    result = 0x44496B736174;
  }

  else
  {
    result = 0x6F6C6F6E6F726863;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9AF34(uint64_t a1)
{
  v2 = sub_1C6CA66A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9AF70(uint64_t a1)
{
  v2 = sub_1C6CA66A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.Moment.TaskMoment.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8A68, sub_1C6CA66A8, &type metadata for PersonalizationScript.Moment.TaskMoment.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[1] = *(v1 + 2);
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA66A8();
  sub_1C6D7A300();
  v17 = v9;
  v16 = 0;
  sub_1C6CA67F8();
  v12 = v14[3];
  sub_1C6D7A090();
  if (!v12)
  {
    v15 = 1;
    sub_1C6D7A040();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C6C9B174@<X0>(char *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t PersonalizationScript.Moment.TaskMoment.Chronology.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7265746661;
  }

  else
  {
    result = 0x65726F666562;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9B208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265746661;
  }

  else
  {
    v4 = 0x65726F666562;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265746661;
  }

  else
  {
    v6 = 0x65726F666562;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9B2A8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9B324()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9B38C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9B410(uint64_t *a1@<X8>)
{
  v2 = 0x65726F666562;
  if (*v1)
  {
    v2 = 0x7265746661;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PersonalizationScript.Moment.TaskMoment.hash(into:)()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t PersonalizationScript.Moment.TaskMoment.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t _s19NewsPersonalization0B6ScriptV6MomentO04TaskD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a1 == 0;
  if (*a1)
  {
    v8 = 0x7265746661;
  }

  else
  {
    v8 = 0x65726F666562;
  }

  if (v7)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (*a2)
  {
    v10 = 0x7265746661;
  }

  else
  {
    v10 = 0x65726F666562;
  }

  if (*a2)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {

    if (v2 != v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = sub_1C6D7A130();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

    if (v2 != v5)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v6)
  {
    return 1;
  }

LABEL_24:

  return sub_1C6D7A130();
}

uint64_t sub_1C6C9B768()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9B800()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t sub_1C6C9B888()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Moment.hash(into:)()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v2 = v0[1];
    v3 = v0[2];
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Moment.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1C6D7A260();
  if (v2 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9BB4C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1C6D7A260();
  PersonalizationScript.Moment.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9BBA4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1C6D7A260();
  PersonalizationScript.Moment.hash(into:)();
  return sub_1C6D7A2B0();
}

NewsPersonalization::PersonalizationScript::NumericOpertator_optional __swiftcall PersonalizationScript.NumericOpertator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.NumericOpertator.rawValue.getter()
{
  v1 = *v0;
  v2 = 29799;
  v3 = 29804;
  v4 = 6648940;
  if (v1 != 4)
  {
    v4 = 25966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6648935;
  if (v1 != 1)
  {
    v5 = 7106917;
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

uint64_t sub_1C6C9BCE8()
{
  *v0;
  *v0;
  *v0;
  sub_1C6D79610();
}

void sub_1C6C9BDB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29799;
  v5 = 0xE200000000000000;
  v6 = 29804;
  v7 = 6648940;
  v8 = 0xE300000000000000;
  if (v2 != 4)
  {
    v7 = 25966;
    v8 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 6648935;
  if (v2 != 1)
  {
    v9 = 7106917;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
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

uint64_t PersonalizationScript.NumericValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v15);
  sub_1C6D79900();
  if (v2)
  {

    sub_1C6B16F28(a1, v14);
    PersonalizationScript.NumericValue.AggregateValue.init(from:)(v14, v15);
    v6 = v15[0];
    v7 = v15[1];
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20 | 0x80;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8A80, sub_1C6CA68A0, &type metadata for PersonalizationScript.NumericValue.AggregateValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA68A0();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v24;
    LOBYTE(v25) = 0;
    sub_1C6CA55D4();
    v13 = v5;
    sub_1C6D79FF0();
    v15 = v28;
    v14 = v29;
    v31 = v30;
    v33 = 1;
    sub_1C6CA5628();
    sub_1C6D79F90();
    v21 = v25;
    v22 = v26;
    v23 = v14;
    v16 = v27;
    v32 = 2;
    sub_1C6CA68F4();
    sub_1C6D79FF0();
    (*(v11 + 8))(v9, v13);
    v18 = v33;
    v19 = v23;
    *v12 = v15;
    *(v12 + 8) = v19;
    *(v12 + 16) = v31;
    v20 = v22;
    *(v12 + 24) = v21;
    *(v12 + 32) = v20;
    *(v12 + 40) = v16;
    *(v12 + 48) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.NumericValue.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v10 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(v1 + 48);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  if (v7 < 0)
  {
    sub_1C6CA6948();
    sub_1C6D7A110();
  }

  else
  {
    sub_1C6D7A100();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.aggregate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.moment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C6CA5798(v2);
}

uint64_t sub_1C6C9C438(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656D6F6DLL;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7461676572676761;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E656D6F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461676572676761;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C9C52C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9C5CC()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9C658()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9C6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6CAA330();
  *a2 = result;
  return result;
}

void sub_1C6C9C724(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE600000000000000;
  v5 = 0x746E656D6F6DLL;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C6C9C780()
{
  v1 = 0x746E656D6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t sub_1C6C9C7D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6CAA330();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C9C800(uint64_t a1)
{
  v2 = sub_1C6CA68A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9C83C(uint64_t a1)
{
  v2 = sub_1C6CA68A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.NumericValue.AggregateValue.init(aggregate:moment:value:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2[1].n128_u64[0];
  v6 = *a3;
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  *(a4 + 24) = *a2;
  *(a4 + 40) = v5;
  *(a4 + 48) = v6;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AA0, sub_1C6CA68A0, &type metadata for PersonalizationScript.NumericValue.AggregateValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v21 = *(v3 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = v10;
  v18 = *(v1 + 40);
  v26 = *(v1 + 48);
  v11 = a1[4];
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v12);
  sub_1C6CA68A0();
  sub_1C6D7A300();
  v23 = v8;
  v24 = v9;
  LOBYTE(v25) = v12;
  v13 = v4;
  v27 = 0;
  sub_1C6CA5864();
  v14 = v22;
  sub_1C6D7A090();
  if (v14)
  {
    sub_1C6B360B4(v23, v24, v25);
    return (*(v21 + 8))(v7, v4);
  }

  else
  {
    v16 = v26;
    v17 = v21;
    sub_1C6B360B4(v23, v24, v25);
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v27 = 1;
    sub_1C6CA5798(v20);
    sub_1C6CA58B8();
    sub_1C6D7A030();
    sub_1C6CA555C(v23);
    LOBYTE(v23) = v16;
    v27 = 2;
    sub_1C6CA699C();
    sub_1C6D7A090();
    return (*(v17 + 8))(v7, v13);
  }
}

NewsPersonalization::PersonalizationScript::NumericValue::AggregateValue::ValueType_optional __swiftcall PersonalizationScript.NumericValue.AggregateValue.ValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.ValueType.rawValue.getter()
{
  v1 = 7500899;
  v2 = 0x736B63696C63;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x756F43746E657665;
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

uint64_t sub_1C6C9CC1C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9CCE0()
{
  *v0;
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9CD90()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9CE5C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7500899;
  v4 = 0xE600000000000000;
  v5 = 0x736B63696C63;
  if (*v1 != 2)
  {
    v5 = 0x6973736572706D69;
    v4 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v3 = 0x756F43746E657665;
    v2 = 0xEA0000000000746ELL;
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

uint64_t PersonalizationScript.NumericValue.AggregateValue.hash(into:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 48);
  if (v0[2] < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    v6 = *v0;
    v5 = v0[1];
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  if (v2 >> 1 == 0xFFFFFFFF)
  {
    sub_1C6D7A280();
  }

  else
  {
    sub_1C6D7A280();
    if ((v2 & 0x8000000000000000) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();

      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      sub_1C6D79610();
    }
  }

  sub_1C6D79610();
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D240()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D2B0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.NumericValue.hash(into:)()
{
  v1 = *v0;
  if (v0[6] < 0)
  {
    v4 = v0[1];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[5];
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    MEMORY[0x1CCA56740](1);
    if (v9 < 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)();
    }

    if (v6 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v6 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1CCA56770](v2);
  }
}

uint64_t PersonalizationScript.NumericValue.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)();
  return sub_1C6D7A2B0();
}

BOOL sub_1C6C9D60C(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return *&v4 == *&v6;
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 5);
  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  v14 = *(a1 + 2);
  v20 = v4;
  v21 = v14;
  v22 = v9;
  v23 = v10;
  v24 = v5 & 0x7F;
  v15 = v6;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v7 & 0x7F;
  return _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v20, &v15) & 1;
}

uint64_t sub_1C6C9D6B8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D718()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D778(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000736ELL;
  }

  else
  {
    v5 = 0x80000001C6D96FA0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v7 = 0x80000001C6D96FA0;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9D828()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D8B4()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9D92C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9D9C0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C6D96FA0;
  v3 = 0x6F697469646E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEA0000000000736ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1C6C9DA08()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9DA58(uint64_t a1)
{
  v2 = sub_1C6CA6360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9DA94(uint64_t a1)
{
  v2 = sub_1C6CA6360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.ReadInteraction.init(conditions:readArticleWithDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t PersonalizationScript.ReadInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AB0, sub_1C6CA6360, &type metadata for PersonalizationScript.ReadInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6360();

  sub_1C6D7A300();
  v17 = v9;
  v16 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0);
  sub_1C6CA5C9C();
  v12 = v14[1];
  sub_1C6D7A030();

  if (!v12)
  {
    v15 = 1;
    sub_1C6D7A060();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.ReadInteraction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*v2)
  {
    sub_1C6D7A280();
    sub_1C6CA2980(a1, v4);
  }

  else
  {
    sub_1C6D7A280();
  }

  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  return MEMORY[0x1CCA56770](*&v6);
}

uint64_t PersonalizationScript.ReadInteraction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6CA2980(v5, v1);
  }

  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  return sub_1C6D7A2B0();
}

BOOL sub_1C6C9DDEC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      v6 = *a2;

      v7 = sub_1C6B56EAC(v2, v4);

      if (v7)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_1C6C9DE68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6CA2980(v5, v1);
  }

  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9DEEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1702257011;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000736ELL;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1702257011;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9DF90()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E010()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9E07C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9E104(uint64_t *a1@<X8>)
{
  v2 = 1702257011;
  if (!*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9E140()
{
  if (*v0)
  {
    result = 1702257011;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9E184(uint64_t a1)
{
  v2 = sub_1C6CA630C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9E1C0(uint64_t a1)
{
  v2 = sub_1C6CA630C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s19NewsPersonalization0B6ScriptV14HeadlinesValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    sub_1C6D7A280();
    sub_1C6CA2980(a1, v5);
  }

  else
  {
    sub_1C6D7A280();
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t _s19NewsPersonalization0B6ScriptV14HeadlinesValueV04hashE0Sivg_0()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2980(v4, v2);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E350()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2980(v4, v2);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E454@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C9E4AC(uint64_t a1)
{
  v2 = sub_1C6CA69F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9E4E8(uint64_t a1)
{
  v2 = sub_1C6CA69F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.ScreenValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8AC0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v15;
    v12 = sub_1C6D79FE0();
    (*(v6 + 8))(v9, v5);
    *v11 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.ScreenValue.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A300();
  sub_1C6D7A080();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.ScreenValue.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E8D4(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A300();
  sub_1C6D7A080();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C6C9EA4C()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9EAC0()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.ScrollInteraction.scroll.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C6B6227C(v2, v3, v4);
}

uint64_t sub_1C6C9EB8C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C9EBE4(uint64_t a1)
{
  v2 = sub_1C6CA61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9EC20(uint64_t a1)
{
  v2 = sub_1C6CA61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.ScrollInteraction.init(scroll:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PersonalizationScript.ScrollInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD8, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v17 = *(v3 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B6227C(v8, v9, v10);
  sub_1C6CA61BC();
  sub_1C6D7A300();
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_1C6CA6A44();
  sub_1C6D7A090();
  sub_1C6B360A8(v14, v15, v16);
  return (*(v17 + 8))(v7, v4);
}

uint64_t sub_1C6C9EE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C6B6227C(v11, v2, v3);
  sub_1C6B6227C(v4, v5, v6);
  LOBYTE(v4) = _s19NewsPersonalization0B6ScriptV11ScrollValueO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_1C6B360A8(v8, v9, v10);
  sub_1C6B360A8(v11, v12, v13);
  return v4 & 1;
}

uint64_t PersonalizationScript.ScrollValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8AC0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-1] - v8;
  sub_1C6B16F28(a1, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C6CA69F0();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1C6B16F28(a1, v17);
    PersonalizationScript.HeadlinesValue.init(from:)(v17, v16);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v12 = v16[0];
    v11 = v16[1];
    v13 = 1;
  }

  else
  {
    v12 = sub_1C6D79FE0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = 0;
    v13 = 0;
  }

  v14 = v18;
  *v18 = v12;
  v14[1] = v11;
  *(v14 + 16) = v13;
  return result;
}

uint64_t PersonalizationScript.ScrollValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  if (v4)
  {
    sub_1C6CA6AEC();
  }

  else
  {
    sub_1C6CA6B40();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t PersonalizationScript.ScrollValue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16))
  {
    v5 = *(v2 + 8);
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v4)
    {
      sub_1C6CA2980(a1, v4);
    }

    v4 = v5;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t sub_1C6C9F2AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v1)
    {
      sub_1C6CA2980(v5, v1);
    }

    v1 = v2;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9F380(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16))
  {
    v5 = *(v2 + 8);
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v4)
    {
      sub_1C6CA2980(a1, v4);
    }

    v4 = v5;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t sub_1C6C9F400()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v1)
    {
      sub_1C6CA2980(v5, v1);
    }

    v1 = v2;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Step.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

uint64_t sub_1C6C9F4B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736B736174;
  }

  else
  {
    v4 = 0x74616E6974736564;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x736B736174;
  }

  else
  {
    v6 = 0x74616E6974736564;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C9F564()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9F5EC()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C9F660()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9F6F0(uint64_t *a1@<X8>)
{
  v2 = 0x74616E6974736564;
  if (*v1)
  {
    v2 = 0x736B736174;
  }

  v3 = 0xEB000000006E6F69;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9F734()
{
  if (*v0)
  {
    result = 0x736B736174;
  }

  else
  {
    result = 0x74616E6974736564;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C9F780(uint64_t a1)
{
  v2 = sub_1C6CA6B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9F7BC(uint64_t a1)
{
  v2 = sub_1C6CA6B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Step.init(destination:tasks:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t PersonalizationScript.Step.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8B00, sub_1C6CA6B94, &type metadata for PersonalizationScript.Step.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6B94();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v18;
    LOBYTE(v23) = 0;
    sub_1C6CA6BE8();
    sub_1C6D79FF0();
    v14 = v20;
    v13 = v21;
    HIDWORD(v17) = v22;
    sub_1C6B6052C(0, &qword_1EC1D8B18);
    v19 = 1;
    sub_1C6CA6C3C();
    sub_1C6D79FF0();
    (*(v11 + 8))(v9, v5);
    v16 = v23;
    *v12 = v14;
    *(v12 + 8) = v13;
    *(v12 + 16) = BYTE4(v17);
    *(v12 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Step.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B30, sub_1C6CA6B94, &type metadata for PersonalizationScript.Step.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v17 = *(v3 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 24);
  v10 = a1[4];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v11);
  sub_1C6CA6B94();
  sub_1C6D7A300();
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v12 = v4;
  v22 = 0;
  sub_1C6CA6D18();
  v13 = v18;
  sub_1C6D7A090();
  if (v13)
  {
    sub_1C6B360B4(v19, v20, v21);
    return (*(v17 + 8))(v7, v4);
  }

  else
  {
    v15 = v17;
    sub_1C6B360B4(v19, v20, v21);
    v19 = v16;
    v22 = 1;
    sub_1C6B6052C(0, &qword_1EC1D8B18);
    sub_1C6CA6D6C();
    sub_1C6D7A090();
    return (*(v15 + 8))(v7, v12);
  }
}

uint64_t PersonalizationScript.Step.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  if (v1[2] < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  return sub_1C6CA2550(a1, v3);
}

uint64_t PersonalizationScript.Step.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  sub_1C6CA2550(v6, v4);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9FE20(uint64_t a1)
{
  v3 = v1[3];
  if (v1[2] < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  return sub_1C6CA2550(a1, v3);
}

uint64_t sub_1C6C9FEC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  sub_1C6CA2550(v6, v4);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Tag.TagID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87A0, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v17;
    v12 = sub_1C6D79FA0();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Tag.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  if (v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4 == 1)
    {
      sub_1C6CA6E9C();
    }

    else
    {
      sub_1C6CA6E48();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_1C6CA6EF0();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static PersonalizationScript.Tag.TagID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A130();
  }
}

uint64_t PersonalizationScript.Tag.TagID.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C6CA02A0()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0318()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0370@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6D79F50();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C6CA03EC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6CA0444(uint64_t a1)
{
  v2 = sub_1C6CA516C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CA0480(uint64_t a1)
{
  v2 = sub_1C6CA516C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.Tag.TagID.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B68, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A300();
  sub_1C6D7A040();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.Tag.TagID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C6D79610();
}

uint64_t PersonalizationScript.Tag.TagID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0698(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B68, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A300();
  sub_1C6D7A040();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C6CA0800(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A130();
  }
}

uint64_t sub_1C6CA0830()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA087C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C6D79610();
}

uint64_t sub_1C6CA0884()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

NewsPersonalization::PersonalizationScript::Tag::CommonFeed_optional __swiftcall PersonalizationScript.Tag.CommonFeed.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.Tag.CommonFeed.rawValue.getter()
{
  result = 0x7374726F7073;
  switch(*v0)
  {
    case 1:
      result = 0x73636974696C6F70;
      break;
    case 2:
      result = 1685024614;
      break;
    case 3:
      result = 0x6961747265746E65;
      break;
    case 4:
      result = 0x68746C616568;
      break;
    case 5:
      result = 0x7373656E746966;
      break;
    case 6:
      result = 0x6F6C6F6E68636574;
      break;
    case 7:
      result = 0x616274656B736162;
      break;
    case 8:
      result = 0x6C6C6162746F6F66;
      break;
    case 9:
      result = 1718382439;
      break;
    case 0xA:
      result = 0x726563636F73;
      break;
    case 0xB:
      result = 0x6E6F6968736166;
      break;
    case 0xC:
      result = 0x6C6576617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6CA0A6C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  v4 = v3;
  if (v2 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C6D7A130();
  }

  return v7 & 1;
}

uint64_t sub_1C6CA0B08()
{
  v1 = *v0;
  sub_1C6D7A260();
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0B70()
{
  v2 = *v0;
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();
}

uint64_t sub_1C6CA0BD4()
{
  v1 = *v0;
  sub_1C6D7A260();
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0C44@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsPersonalization::PersonalizationScript::Tag::CommonPublisher_optional __swiftcall PersonalizationScript.Tag.CommonPublisher.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.Tag.CommonPublisher.rawValue.getter()
{
  v1 = 5131843;
  v2 = 1313887045;
  if (*v0 != 2)
  {
    v2 = 1330659671;
  }

  if (*v0)
  {
    v1 = 0x696C6F505F4E4E43;
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

uint64_t sub_1C6CA0DF0()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0EA4()
{
  *v0;
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6CA0F44()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6CA1000(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5131843;
  v4 = 1313887045;
  if (*v1 != 2)
  {
    v4 = 1330659671;
  }

  if (*v1)
  {
    v3 = 0x696C6F505F4E4E43;
    v2 = 0xEC00000073636974;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t PersonalizationScript.Tag.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1CCA56740](1);
      PersonalizationScript.Tag.CommonFeed.rawValue.getter();
    }

    else
    {
      MEMORY[0x1CCA56740](2);
    }

    sub_1C6D79610();
  }

  else
  {
    v2 = v0[1];
    MEMORY[0x1CCA56740](0);

    return sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Tag.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA12EC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1344()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Task.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonalizationScript.Task.interaction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1C6B62230(v2, v3, v4);
}

uint64_t sub_1C6CA13D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463617265746E69;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v6 = 0x7463617265746E69;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xEB000000006E6F69;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6CA148C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA151C()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6CA1598()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1630@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6D79F50();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C6CA168C(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x7463617265746E69;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6CA16D8()
{
  if (*v0)
  {
    result = 0x7463617265746E69;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1C6CA172C@<X0>(char *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C6CA178C(uint64_t a1)
{
  v2 = sub_1C6CA6F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CA17C8(uint64_t a1)
{
  v2 = sub_1C6CA6F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Task.init(identifier:interaction:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t PersonalizationScript.Task.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8B70, sub_1C6CA6F44, &type metadata for PersonalizationScript.Task.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6F44();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v20;
    LOBYTE(v21) = 0;
    v12 = sub_1C6D79F60();
    v14 = v13;
    v15 = v12;
    v23 = 1;
    sub_1C6CA6F98();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    v16 = v22;
    v17 = v21;
    *v11 = v15;
    *(v11 + 8) = v14;
    *(v11 + 16) = v17;
    *(v11 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Task.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B88, sub_1C6CA6F44, &type metadata for PersonalizationScript.Task.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15 = v1[3];
  v16 = v11;
  v21 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6F44();
  sub_1C6D7A300();
  LOBYTE(v18) = 0;
  v13 = v17;
  sub_1C6D7A000();
  if (!v13)
  {
    v18 = v16;
    v19 = v15;
    v20 = v21;
    v22 = 1;
    sub_1C6B62230(v16, v15, v21);
    sub_1C6CA7054();
    sub_1C6D7A090();
    sub_1C6B62288(v18, v19, v20);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.Task.hash(into:)(uint64_t a1)
{
  v6 = *(v1 + 1);
  v3 = *(v1 + 32);
  if (v1[1])
  {
    v4 = *v1;
    sub_1C6D7A280();
    sub_1C6D79610();
  }

  else
  {
    sub_1C6D7A280();
  }

  return PersonalizationScript.Interaction.hash(into:)(a1);
}

uint64_t PersonalizationScript.Task.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v7);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1D7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v7);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1E10(uint64_t a1)
{
  v6 = *(v1 + 1);
  v3 = *(v1 + 32);
  if (v1[1])
  {
    v4 = *v1;
    sub_1C6D7A280();
    sub_1C6D79610();
  }

  else
  {
    sub_1C6D7A280();
  }

  return PersonalizationScript.Interaction.hash(into:)(a1);
}

uint64_t sub_1C6CA1EA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v7);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (*v1)
  {
    sub_1C6D7A280();
    sub_1C6CA2E38(a1, v4);
  }

  else
  {
    sub_1C6D7A280();
  }

  sub_1C6D79610();

  return sub_1C6CA2238(a1, v5);
}

uint64_t PersonalizationScript.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2E38(v6, v2);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v6, v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA2088()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2E38(v6, v2);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v6, v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA211C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (*v1)
  {
    sub_1C6D7A280();
    sub_1C6CA2E38(a1, v4);
  }

  else
  {
    sub_1C6D7A280();
  }

  sub_1C6D79610();

  return sub_1C6CA2238(a1, v5);
}

uint64_t sub_1C6CA21A8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2E38(v6, v2);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v6, v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA2238(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      if (*(v6 - 1) < 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6B35FD4(v7, v8, v9);
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if (v9)
        {
          if (v9 == 1)
          {
            MEMORY[0x1CCA56740](1);
            v11 = v7;
            v12 = v8;
            v13 = 1;
          }

          else
          {
            MEMORY[0x1CCA56740](2);
            v11 = v7;
            v12 = v8;
            v13 = 2;
          }

          sub_1C6B35FD4(v11, v12, v13);

          sub_1C6D79610();

          goto LABEL_5;
        }

        MEMORY[0x1CCA56740](0);
        sub_1C6B35FD4(v7, v8, 0);
      }

      sub_1C6D79610();
LABEL_5:
      sub_1C6CA2550(a1, v10);
      sub_1C6B360B4(v7, v8, v9);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C6CA2550(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  v22 = v4;
  if (v4)
  {
    v6 = 0;
    v21 = a2 + 32;
    do
    {
      v9 = (v21 + 40 * v6);
      v10 = v9[2];
      v11 = v9[3];
      v12 = *(v9 + 32);
      if (v9[1])
      {
        v13 = *v9;
        sub_1C6D7A280();

        sub_1C6B62230(v10, v11, v12);
        sub_1C6D79610();
      }

      else
      {
        sub_1C6D7A280();
        sub_1C6B62230(v10, v11, v12);
      }

      v14 = v12 >> 5;
      if (v12 >> 5 > 2)
      {
        if (v14 != 3)
        {
          if (v14 == 4)
          {
            MEMORY[0x1CCA56740](4);
            sub_1C6D7A280();
            if (v10)
            {
              sub_1C6CA2980(a1, v10);
            }

            v7 = v11;
            if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v20 = v11;
            }

            else
            {
              v20 = 0;
            }

            MEMORY[0x1CCA56770](v20);
          }

          else
          {
            v7 = v11;
            MEMORY[0x1CCA56740](5);
            MEMORY[0x1CCA56740](*(v10 + 16));
            v15 = *(v10 + 16);
            if (v15)
            {
              v16 = (v10 + 48);
              do
              {
                v17 = *(v16 - 2);
                v18 = *(v16 - 1);
                v19 = *v16;
                v16 += 24;

                sub_1C6CA2980(a1, v17);
                MEMORY[0x1CCA56740](v18);
                sub_1C6D79610();

                --v15;
              }

              while (v15);
            }
          }

          goto LABEL_7;
        }

        MEMORY[0x1CCA56740](3);
        if (!v10)
        {
LABEL_23:
          sub_1C6D7A280();
          goto LABEL_5;
        }
      }

      else
      {
        if (!v14)
        {
          MEMORY[0x1CCA56740](0);
          if ((v12 & 1) == 0)
          {
            v7 = v11;
            MEMORY[0x1CCA56740](0);
            v8 = v10;
            goto LABEL_6;
          }

LABEL_3:
          MEMORY[0x1CCA56740](1);
          if (!v10)
          {
            goto LABEL_23;
          }

          goto LABEL_4;
        }

        if (v14 == 1)
        {
          goto LABEL_3;
        }

        MEMORY[0x1CCA56740](2);
        if (!v10)
        {
          goto LABEL_23;
        }
      }

LABEL_4:
      sub_1C6D7A280();
      sub_1C6CA2980(a1, v10);
LABEL_5:
      v7 = v11;
      v8 = v11;
LABEL_6:
      MEMORY[0x1CCA56740](v8);
LABEL_7:

      result = sub_1C6B62288(v10, v7, v12);
      ++v6;
    }

    while (v6 != v22);
  }

  return result;
}

uint64_t sub_1C6CA2840(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;

      sub_1C6CA2980(a1, v7);
      MEMORY[0x1CCA56740](v8);
      sub_1C6D79610();

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C6CA2980(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v6 = *v5;
      v9 = *v5;
      if (v6 < 0)
      {
        v10 = v9 & 0x7F;
        MEMORY[0x1CCA56740](1);
        if (v10)
        {
          if (v10 == 1)
          {
            MEMORY[0x1CCA56740](1);
          }

          else
          {
            MEMORY[0x1CCA56740](2);
          }

          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6B622DC(v7, v8, 0);
          sub_1C6D79610();
        }
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if (v9)
        {
          if (v9 == 1)
          {
            MEMORY[0x1CCA56740](1);
            sub_1C6D79610();

            LOBYTE(v6) = 1;
          }

          else
          {
            MEMORY[0x1CCA56740](2);
            sub_1C6D79610();

            LOBYTE(v6) = 2;
          }
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6B622DC(v7, v8, 0);
          sub_1C6D79610();
          LOBYTE(v6) = 0;
        }
      }

      v5 += 24;
      result = sub_1C6B622F0(v7, v8, v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C6CA2E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    for (i = (a2 + 32); ; i = (i + 120))
    {
      v7 = i[1];
      v30 = *i;
      v31 = v7;
      v8 = i[3];
      v32 = i[2];
      v33 = v8;
      v9 = i[5];
      v34 = i[4];
      v35 = v9;
      v36 = i[6];
      v37 = *(i + 112);
      v10 = v31;
      v11 = *(&v31 + 1);
      if ((v37 & 0x40) != 0)
      {
        break;
      }

      v28 = v32;
      v29 = *(&v30 + 1);
      v27 = BYTE8(v31);
      v26 = v37;
      v24 = v34;
      v23 = v35;
      v25 = SBYTE8(v33);
      MEMORY[0x1CCA56740](0);
      v12 = a1;
      v13 = v34;
      v14 = v35;
      v15 = v36;
      v16 = v37;
      sub_1C6CA5724(*(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, SBYTE8(v33), sub_1C6CAA560, sub_1C6CA5798);
      sub_1C6CA5724(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16 & 0xBF, sub_1C6CAA560, sub_1C6CA5798);
      sub_1C6D79610();

      a1 = v12;
      if (v25 < 0)
      {
        MEMORY[0x1CCA56740](1);
        if (v27 < 0)
        {
          MEMORY[0x1CCA56740](1);
          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          if (v27)
          {
            if (v27 == 1)
            {
              MEMORY[0x1CCA56740](1);
            }

            else
            {
              MEMORY[0x1CCA56740](2);
            }

            sub_1C6D79610();
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            sub_1C6D79610();
          }
        }

        if (v28 >> 1 == 0xFFFFFFFF)
        {
          sub_1C6D7A280();
        }

        else
        {
          sub_1C6D7A280();
          if ((v28 & 0x8000000000000000) != 0)
          {
            MEMORY[0x1CCA56740](1);
            sub_1C6D79610();

            sub_1C6D79610();
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            sub_1C6D79610();
          }
        }

        sub_1C6D79610();

        if (v26 < 0)
        {
LABEL_42:
          MEMORY[0x1CCA56740](1);
          if ((v23 & 0x80) != 0)
          {
            MEMORY[0x1CCA56740](1);
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            if (v23)
            {
              if (v23 == 1)
              {
                MEMORY[0x1CCA56740](1);
              }

              else
              {
                MEMORY[0x1CCA56740](2);
              }

              v22 = *(&v23 + 1);
              sub_1C6D79610();

              goto LABEL_51;
            }

            MEMORY[0x1CCA56740](0);
          }

          sub_1C6D79610();
          v22 = *(&v23 + 1);
LABEL_51:
          if (v22 >> 1 == 0xFFFFFFFF)
          {
            sub_1C6D7A280();
          }

          else
          {
            sub_1C6D7A280();
            if ((v22 & 0x8000000000000000) != 0)
            {
              MEMORY[0x1CCA56740](1);
              sub_1C6D79610();

              sub_1C6D79610();
            }

            else
            {
              MEMORY[0x1CCA56740](0);
              sub_1C6D79610();
            }
          }

          sub_1C6D79610();

          goto LABEL_4;
        }
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v29;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x1CCA56770](v17);
        if (v26 < 0)
        {
          goto LABEL_42;
        }
      }

      MEMORY[0x1CCA56740](0);
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v24;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x1CCA56770](v18);
LABEL_4:
      result = sub_1C6B62368(&v30);
      if (!--v4)
      {
        return result;
      }
    }

    MEMORY[0x1CCA56740](1);
    if ((v10 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      v19 = *(&v31 + 1);
      sub_1C6B35FD4(v30, *(&v30 + 1), v31);
      sub_1C6CA5798(v19);
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if (v10)
      {
        if (v10 == 1)
        {
          MEMORY[0x1CCA56740](1);
        }

        else
        {
          MEMORY[0x1CCA56740](2);
        }

        v21 = *(&v31 + 1);
        sub_1C6B35FD4(v30, *(&v30 + 1), v31);
        sub_1C6CA5798(v21);
        sub_1C6D79610();

        goto LABEL_28;
      }

      MEMORY[0x1CCA56740](0);
      v20 = *(&v31 + 1);
      sub_1C6B35FD4(v30, *(&v30 + 1), v31);
      sub_1C6CA5798(v20);
    }

    sub_1C6D79610();
LABEL_28:
    sub_1C6D7A280();
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v11 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_23;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v10 == 1)
        {
LABEL_11:
          v12 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
          v14 = v13;
          if (v12 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v14 == v15)
          {
            v16 = 1;
          }

          else
          {
            v16 = sub_1C6D7A130();
          }

          return v16 & 1;
        }

        goto LABEL_23;
      }

LABEL_14:
      if (v10 == 2)
      {

        return sub_1C6B627EC(v4, v8);
      }

LABEL_23:
      v16 = 0;
      return v16 & 1;
    }

    if (v10)
    {
      goto LABEL_23;
    }

    if (v4 != v8 || v5 != v9)
    {
      goto LABEL_30;
    }

LABEL_29:
    v16 = 1;
    return v16 & 1;
  }

  if ((v10 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v10 &= 0x7Fu;
  v11 = v7 & 0x7F;
  if (v11)
  {
    if (v11 == 1)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  if (v4 == v8 && v5 == v9)
  {
    goto LABEL_29;
  }

LABEL_30:

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 5;
  if (v4 >> 5 <= 2)
  {
    if (!v8)
    {
      if (v7 >= 0x20)
      {
        return 0;
      }

      if ((v4 & 1) == 0)
      {
        return (v2 == v6) & ~v7;
      }

      if ((v7 & 1) == 0)
      {
        return 0;
      }

      if (v2)
      {
        if (!v6)
        {
          sub_1C6B6227C(0, *(a2 + 8), 1);
          return 0;
        }

        sub_1C6B6227C(*a2, *(a2 + 8), 1);
LABEL_25:
        v13 = sub_1C6B56EAC(v2, v6);
        sub_1C6B62288(v6, v5, v7);
        if (v13)
        {
          return *&v3 == v5;
        }

        return 0;
      }

      if (v6)
      {
        return 0;
      }

      sub_1C6B6227C(0, *(a2 + 8), 1);
      return *&v3 == v5;
    }

    v9 = v7 & 0xE0;
    if (v8 == 1)
    {
      if (v9 != 32)
      {
        return 0;
      }
    }

    else if (v9 != 64)
    {
      return 0;
    }

LABEL_22:
    if (v2)
    {
      if (!v6)
      {
        return 0;
      }

      v12 = *a2;

      goto LABEL_25;
    }

    if (v6)
    {
      return 0;
    }

    return *&v3 == v5;
  }

  if (v8 == 3)
  {
    if ((v7 & 0xE0) != 0x60)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v8 == 4)
  {
    if ((v7 & 0xE0) == 0x80)
    {
      if (v2)
      {
        if (!v6)
        {
          return 0;
        }

        v10 = *a2;

        v11 = sub_1C6B56EAC(v2, v6);
        sub_1C6B62288(v6, v5, v7);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      return v3 == *&v5;
    }

    return 0;
  }

  if ((v7 & 0xE0) != 0xA0)
  {
    return 0;
  }

  v14 = *a1;
  v15 = *a2;

  return sub_1C6B5794C(v14, v15);
}

BOOL _s19NewsPersonalization0B6ScriptV11ScrollValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    return (v2 == v3) & ~*(a2 + 16);
  }

  if (*(a2 + 16))
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    if (v2)
    {
      if (v3)
      {
        v6 = *a2;

        v7 = sub_1C6B56EAC(v2, v3);
        sub_1C6B360A8(v3, v5, 1);
        if (v7)
        {
          return v4 == v5;
        }
      }
    }

    else if (!v3)
    {
      return v4 == v5;
    }
  }

  return 0;
}

uint64_t sub_1C6CA3F90(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < 0)
  {
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if ((v3 & 0x80) != 0)
  {
    goto LABEL_21;
  }

  v5 = *a1;
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v6 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v8 = v7;
        if (v6 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = sub_1C6D7A130();
        }

        return v10 & 1;
      }

      goto LABEL_21;
    }

    if (v3 == 2)
    {
      v13 = *a2;

      return sub_1C6B627EC(v5, v13);
    }

LABEL_21:
    v10 = 0;
    return v10 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_21;
  }

  if (v5 == *a2 && a1[1] == a2[1])
  {
LABEL_10:
    v10 = 1;
    return v10 & 1;
  }

  v11 = a1[1];

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v12 = a2[1];
      v13 = a2[2];
      v14 = a1[1];
      v15 = a1[2];
      v19[0] = v2 & 1;
      v20 = v14;
      v21 = v15;
      v16[0] = v3 & 1;
      v17 = v12;
      v18 = v13;
      v11 = _s19NewsPersonalization0B6ScriptV6MomentO04TaskD0V2eeoiySbAG_AGtFZ_0(v19, v16);
      return v11 & 1;
    }

    goto LABEL_21;
  }

  if (v3 < 0)
  {
LABEL_21:
    v11 = 0;
    return v11 & 1;
  }

  if (v2)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x7472617473;
  }

  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v3)
  {
    v6 = 6581861;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (v3)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 != v6 || v5 != v7)
  {
    v9 = sub_1C6D7A130();

    return v9 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v21 = *a1;
  v22 = v2;
  LOBYTE(v23) = v12;
  v18 = v6;
  v19 = v7;
  LOBYTE(v20) = v13;
  sub_1C6B35FD4(v21, v2, v12);
  sub_1C6B35FD4(v6, v7, v13);
  v14 = sub_1C6CA3F90(&v21, &v18);
  sub_1C6B360B4(v18, v19, v20);
  sub_1C6B360B4(v21, v22, v23);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v21 = v4;
    v22 = v3;
    v23 = v5;
    if (v9 >> 1 != 0xFFFFFFFF)
    {
      v18 = v9;
      v19 = v8;
      v20 = v10;
      sub_1C6CA5798(v4);
      sub_1C6CA5798(v9);
      sub_1C6CA5798(v4);
      v16 = _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(&v21, &v18);
      sub_1C6CA5570(v18);
      sub_1C6CA5570(v21);
      sub_1C6CA555C(v4);
      if (v16)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_1C6CA5798(v4);
    sub_1C6CA5798(v9);
    sub_1C6CA5798(v4);
    sub_1C6CA5570(v4);
LABEL_7:
    sub_1C6CA555C(v4);
    sub_1C6CA555C(v9);
    return 0;
  }

  sub_1C6CA5798(v4);
  sub_1C6CA5798(v9);
  if (v9 >> 1 != 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  sub_1C6CA555C(v4);
LABEL_10:

  return sub_1C6B62C6C(v17, v11);
}

uint64_t sub_1C6CA441C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        v5 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v7 = v6;
        if (v5 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v7 == v8)
        {
          v9 = 1;
LABEL_43:

          return v9 & 1;
        }

LABEL_42:
        v9 = sub_1C6D7A130();
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (v4 == 2)
    {
      v13 = 5131843;
      v14 = v3;
      v15 = 0xE300000000000000;
      v16 = 1313887045;
      if (v3 != 2)
      {
        v16 = 1330659671;
      }

      v17 = 0x696C6F505F4E4E43;
      if (v3)
      {
        v15 = 0xEC00000073636974;
      }

      else
      {
        v17 = 5131843;
      }

      if (v3 <= 1u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v14 <= 1)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      v20 = 0xE300000000000000;
      v21 = 1313887045;
      if (*a2 != 2)
      {
        v21 = 1330659671;
      }

      if (*a2)
      {
        v13 = 0x696C6F505F4E4E43;
        v20 = 0xEC00000073636974;
      }

      if (*a2 <= 1u)
      {
        v22 = v13;
      }

      else
      {
        v22 = v21;
      }

      if (*a2 <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (v18 != v22 || v19 != v23)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_41:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_41;
  }

  v10 = a1[1];
  if (v3 == *a2 && v10 == *(a2 + 8))
  {
LABEL_40:
    v9 = 1;
    return v9 & 1;
  }

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV3TagO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        v5 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v7 = v6;
        if (v5 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v7 == v8)
        {
          v9 = 1;
LABEL_42:

          return v9 & 1;
        }

LABEL_41:
        v9 = sub_1C6D7A130();
        goto LABEL_42;
      }
    }

    else if (v4 == 2)
    {
      v13 = 5131843;
      v14 = v3;
      v15 = 0xE300000000000000;
      v16 = 1313887045;
      if (v3 != 2)
      {
        v16 = 1330659671;
      }

      v17 = 0x696C6F505F4E4E43;
      if (v3)
      {
        v15 = 0xEC00000073636974;
      }

      else
      {
        v17 = 5131843;
      }

      if (v3 <= 1u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v14 <= 1)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      v20 = 0xE300000000000000;
      v21 = 1313887045;
      if (*a2 != 2)
      {
        v21 = 1330659671;
      }

      if (*a2)
      {
        v13 = 0x696C6F505F4E4E43;
        v20 = 0xEC00000073636974;
      }

      if (*a2 <= 1u)
      {
        v22 = v13;
      }

      else
      {
        v22 = v21;
      }

      if (*a2 <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (v18 != v22 || v19 != v23)
      {
        goto LABEL_41;
      }

      v9 = 1;
      return v9 & 1;
    }

LABEL_40:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_40;
  }

  v10 = a1[1];
  if (v3 == *a2 && v10 == *(a2 + 8))
  {
    v9 = 1;
    return v9 & 1;
  }

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV4StepV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v2 < 0)
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  v7 = *a1;
  if (!v2)
  {
    if (!*(a2 + 16))
    {
      v13 = a1[1];
      if (v7 == *a2 && v13 == *(a2 + 8))
      {
        goto LABEL_10;
      }

      if (sub_1C6D7A130())
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v4 == 1)
    {
      v8 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
      v10 = v9;
      if (v8 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v10 == v11)
      {

        goto LABEL_10;
      }

      v14 = sub_1C6D7A130();

      if (v14)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v4 != 2 || (sub_1C6B627EC(v7, *a2) & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_1C6B56CFC(v3, v5);
}

uint64_t _s19NewsPersonalization0B6ScriptV4TaskV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (v7)
    {
      v11 = *a1 == *a2 && v3 == v7;
      if (v11 || (sub_1C6D7A130() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_1C6B62230(v4, v5, v6);
  sub_1C6B62230(v8, v9, v10);
  v12 = _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(&v17, &v14);
  sub_1C6B62288(v14, v15, v16);
  sub_1C6B62288(v17, v18, v19);
  return v12 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO07NumericD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 24);
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  v4 = *(a1 + 56);
  v22 = *(a1 + 88);
  v23 = *(a1 + 80);
  v21 = *(a1 + 96);
  v19 = *(a1 + 72);
  v20 = *(a1 + 104);
  v31 = *(a1 + 112);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v28 = *(a2 + 64);
  v29 = *(a1 + 64);
  v17 = *(a2 + 88);
  v18 = *(a2 + 80);
  v16 = *(a2 + 96);
  v14 = *(a2 + 72);
  v15 = *(a2 + 104);
  v30 = *(a2 + 112);
  if ((sub_1C6B62918(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v39 = v2;
    v40 = v3;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v4 & 0x7F;
    v32 = v6;
    v33 = v5;
    v34 = v8;
    v35 = v7;
    v36 = v10;
    v37 = v9;
    v38 = v11 & 0x7F;
    if ((_s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v39, &v32) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v11 < 0 || v2 != v6)
  {
    goto LABEL_12;
  }

  if (v31 < 0)
  {
    if (v30 < 0)
    {
      v39 = v29;
      v40 = v19;
      v41 = v23;
      v42 = v22;
      v43 = v21;
      v44 = v20;
      v45 = v31 & 0x7F;
      v32 = v28;
      v33 = v14;
      v34 = v18;
      v35 = v17;
      v36 = v16;
      v37 = v15;
      v38 = v30 & 0x7F;
      v12 = _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v39, &v32);
      return v12 & 1;
    }

    goto LABEL_12;
  }

  if (v30 < 0)
  {
LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  v12 = v29 == v28;
  return v12 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 17);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 17);
  v10 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *a2;
  v11 = *(a2 + 40);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v20 = v2;
  v21 = v3;
  LOBYTE(v22) = v12;
  v18 = v8;
  LOBYTE(v19) = v13;
  sub_1C6B35FD4(v2, v3, v12);
  sub_1C6B35FD4(v17, v8, v13);
  LOBYTE(v8) = sub_1C6CA3F90(&v20, &v17);
  sub_1C6B360B4(v17, v18, v19);
  sub_1C6B360B4(v20, v21, v22);
  v14 = 0;
  if ((v8 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    if (v6 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6CA5798(v6);
      sub_1C6CA5798(v10);
      if (v10 >> 1 == 0xFFFFFFFF)
      {
        sub_1C6CA555C(v6);
        v14 = 1;
        return v14 & 1;
      }
    }

    else
    {
      v20 = v6;
      v21 = v5;
      v22 = v7;
      if (v10 >> 1 != 0xFFFFFFFF)
      {
        v17 = v10;
        v18 = v16;
        v19 = v11;
        sub_1C6CA5798(v6);
        sub_1C6CA5798(v10);
        sub_1C6CA5798(v6);
        v14 = _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(&v20, &v17);
        sub_1C6CA5570(v17);
        sub_1C6CA5570(v20);
        sub_1C6CA555C(v6);
        return v14 & 1;
      }

      sub_1C6CA5798(v6);
      sub_1C6CA5798(v10);
      sub_1C6CA5798(v6);
      sub_1C6CA5570(v6);
    }

    sub_1C6CA555C(v6);
    sub_1C6CA555C(v10);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 5);
  v9 = *(a1 + 112);
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v15 = *(a2 + 5);
  v16 = *(a2 + 112);
  if ((v9 & 0x40) != 0)
  {
    if ((a2[14] & 0x40) != 0)
    {
      v39 = *a1;
      v40 = v2;
      v41 = v4;
      v42 = v5 & 1;
      v45 = v7;
      v46 = v6;
      *&v47 = v8;
      v28 = v11;
      v29 = v10;
      LOWORD(v30) = v13 & 0x1FF;
      v31 = v12;
      v32 = v14;
      *&v33 = v15;
      v26 = _s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(&v39, &v28);
      return v26 & 1;
    }

    goto LABEL_5;
  }

  if ((a2[14] & 0x40) != 0)
  {
LABEL_5:
    v26 = 0;
    return v26 & 1;
  }

  v17 = *(a1 + 18) | (*(a1 + 11) << 32);
  v18 = *(a1 + 7);
  v19 = *(a1 + 9);
  v20 = *(a1 + 11);
  v21 = a1[13];
  v22 = *(a2 + 7);
  v23 = *(a2 + 9);
  v24 = *(a2 + 11);
  v25 = a2[13];
  v39 = v3;
  v40 = v2;
  v41 = v4;
  v42 = v5;
  v43 = v17;
  v44 = WORD2(v17);
  v45 = v7;
  v46 = v6;
  v47 = v8;
  v48 = v18;
  v49 = v19;
  v50 = v20;
  v51 = v21;
  v52 = v9;
  v28 = v11;
  v29 = v10;
  v30 = v13;
  v31 = v12;
  v32 = v14;
  v33 = v15;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v16;
  v26 = _s19NewsPersonalization0B6ScriptV9AssertionO07NumericD0V2eeoiySbAG_AGtFZ_0(&v39, &v28);
  return v26 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *a2;

    v11 = sub_1C6B55D88(v3, v7);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v2 == v6 && v5 == v9;
  if (!v12 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  return sub_1C6B5623C(v4, v8);
}

unint64_t sub_1C6CA5070()
{
  result = qword_1EC1D8788;
  if (!qword_1EC1D8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8788);
  }

  return result;
}

unint64_t sub_1C6CA50C4()
{
  result = qword_1EC1D8790;
  if (!qword_1EC1D8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8790);
  }

  return result;
}

unint64_t sub_1C6CA5118()
{
  result = qword_1EC1D8798;
  if (!qword_1EC1D8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8798);
  }

  return result;
}

unint64_t sub_1C6CA516C()
{
  result = qword_1EC1D87A8;
  if (!qword_1EC1D87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87A8);
  }

  return result;
}

unint64_t sub_1C6CA51C0()
{
  result = qword_1EC1D87B0;
  if (!qword_1EC1D87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87B0);
  }

  return result;
}

unint64_t sub_1C6CA5214()
{
  result = qword_1EC1D87B8;
  if (!qword_1EC1D87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87B8);
  }

  return result;
}

unint64_t sub_1C6CA5268()
{
  result = qword_1EC1D87C0;
  if (!qword_1EC1D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87C0);
  }

  return result;
}

unint64_t sub_1C6CA52BC()
{
  result = qword_1EC1D87C8;
  if (!qword_1EC1D87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87C8);
  }

  return result;
}

unint64_t sub_1C6CA5310()
{
  result = qword_1EC1D87D0;
  if (!qword_1EC1D87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87D0);
  }

  return result;
}

unint64_t sub_1C6CA5364()
{
  result = qword_1EC1D87D8;
  if (!qword_1EC1D87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87D8);
  }

  return result;
}

unint64_t sub_1C6CA53B8()
{
  result = qword_1EC1D87E0;
  if (!qword_1EC1D87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87E0);
  }

  return result;
}

unint64_t sub_1C6CA540C()
{
  result = qword_1EC1D87E8;
  if (!qword_1EC1D87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87E8);
  }

  return result;
}

unint64_t sub_1C6CA5460()
{
  result = qword_1EC1D87F8;
  if (!qword_1EC1D87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87F8);
  }

  return result;
}

unint64_t sub_1C6CA54B4()
{
  result = qword_1EC1D8800;
  if (!qword_1EC1D8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8800);
  }

  return result;
}

unint64_t sub_1C6CA5508()
{
  result = qword_1EC1D8808;
  if (!qword_1EC1D8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8808);
  }

  return result;
}

uint64_t sub_1C6CA555C(uint64_t result)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_1C6CA5570(result);
  }

  return result;
}

uint64_t sub_1C6CA5570(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t sub_1C6CA5580()
{
  result = qword_1EC1D8818;
  if (!qword_1EC1D8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8818);
  }

  return result;
}

unint64_t sub_1C6CA55D4()
{
  result = qword_1EC1D8820;
  if (!qword_1EC1D8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8820);
  }

  return result;
}

unint64_t sub_1C6CA5628()
{
  result = qword_1EC1D8828;
  if (!qword_1EC1D8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8828);
  }

  return result;
}

unint64_t sub_1C6CA567C()
{
  result = qword_1EC1D8830;
  if (!qword_1EC1D8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8830);
  }

  return result;
}

unint64_t sub_1C6CA56D0()
{
  result = qword_1EC1D8838;
  if (!qword_1EC1D8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8838);
  }

  return result;
}

void sub_1C6CA5724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(void), void (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (a7 < 0)
  {
    a8();

    a9(a4, a5, a6);
  }
}

uint64_t sub_1C6CA5798(uint64_t result)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_1C6CA57AC(result);
  }

  return result;
}

uint64_t sub_1C6CA57AC(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t sub_1C6CA57BC()
{
  result = qword_1EC1D8848;
  if (!qword_1EC1D8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8848);
  }

  return result;
}

unint64_t sub_1C6CA5810()
{
  result = qword_1EC1D8850;
  if (!qword_1EC1D8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8850);
  }

  return result;
}

unint64_t sub_1C6CA5864()
{
  result = qword_1EC1D8860;
  if (!qword_1EC1D8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8860);
  }

  return result;
}

unint64_t sub_1C6CA58B8()
{
  result = qword_1EC1D8868;
  if (!qword_1EC1D8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8868);
  }

  return result;
}

unint64_t sub_1C6CA590C()
{
  result = qword_1EC1D8878;
  if (!qword_1EC1D8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8878);
  }

  return result;
}

unint64_t sub_1C6CA5960()
{
  result = qword_1EC1D8888;
  if (!qword_1EC1D8888)
  {
    sub_1C6B6052C(255, &qword_1EC1D8880);
    sub_1C6CA59E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8888);
  }

  return result;
}

unint64_t sub_1C6CA59E8()
{
  result = qword_1EC1D8890;
  if (!qword_1EC1D8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8890);
  }

  return result;
}

unint64_t sub_1C6CA5A3C()
{
  result = qword_1EC1D88A0;
  if (!qword_1EC1D88A0)
  {
    sub_1C6B6052C(255, &qword_1EC1D8880);
    sub_1C6CA5AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88A0);
  }

  return result;
}

unint64_t sub_1C6CA5AC4()
{
  result = qword_1EC1D88A8;
  if (!qword_1EC1D88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88A8);
  }

  return result;
}

unint64_t sub_1C6CA5B18()
{
  result = qword_1EC1D88B8;
  if (!qword_1EC1D88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88B8);
  }

  return result;
}

unint64_t sub_1C6CA5B6C()
{
  result = qword_1EC1D88C8;
  if (!qword_1EC1D88C8)
  {
    sub_1C6B6052C(255, &qword_1EC1D88C0);
    sub_1C6CA5BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88C8);
  }

  return result;
}

unint64_t sub_1C6CA5BF4()
{
  result = qword_1EC1D88D0;
  if (!qword_1EC1D88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88D0);
  }

  return result;
}

unint64_t sub_1C6CA5C48()
{
  result = qword_1EC1D88D8;
  if (!qword_1EC1D88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88D8);
  }

  return result;
}

unint64_t sub_1C6CA5C9C()
{
  result = qword_1EC1D88E8;
  if (!qword_1EC1D88E8)
  {
    sub_1C6B6052C(255, &qword_1EC1D88C0);
    sub_1C6CA5D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88E8);
  }

  return result;
}

unint64_t sub_1C6CA5D24()
{
  result = qword_1EC1D88F0;
  if (!qword_1EC1D88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88F0);
  }

  return result;
}

unint64_t sub_1C6CA5D78()
{
  result = qword_1EC1D88F8;
  if (!qword_1EC1D88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88F8);
  }

  return result;
}

unint64_t sub_1C6CA5DCC()
{
  result = qword_1EC1D8900;
  if (!qword_1EC1D8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8900);
  }

  return result;
}

unint64_t sub_1C6CA5E20()
{
  result = qword_1EC1D8908;
  if (!qword_1EC1D8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8908);
  }

  return result;
}

unint64_t sub_1C6CA5E74()
{
  result = qword_1EC1D8910;
  if (!qword_1EC1D8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8910);
  }

  return result;
}

unint64_t sub_1C6CA5EC8()
{
  result = qword_1EC1D8918;
  if (!qword_1EC1D8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8918);
  }

  return result;
}

unint64_t sub_1C6CA5F1C()
{
  result = qword_1EC1D8928;
  if (!qword_1EC1D8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8928);
  }

  return result;
}

unint64_t sub_1C6CA5F70()
{
  result = qword_1EC1D8940;
  if (!qword_1EC1D8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8940);
  }

  return result;
}

unint64_t sub_1C6CA5FC4()
{
  result = qword_1EC1D8950;
  if (!qword_1EC1D8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8950);
  }

  return result;
}

unint64_t sub_1C6CA6018()
{
  result = qword_1EC1D8958;
  if (!qword_1EC1D8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8958);
  }

  return result;
}

unint64_t sub_1C6CA606C()
{
  result = qword_1EC1D8960;
  if (!qword_1EC1D8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8960);
  }

  return result;
}

unint64_t sub_1C6CA60C0()
{
  result = qword_1EC1D8968;
  if (!qword_1EC1D8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8968);
  }

  return result;
}

unint64_t sub_1C6CA6114()
{
  result = qword_1EC1D8970;
  if (!qword_1EC1D8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8970);
  }

  return result;
}

unint64_t sub_1C6CA6168()
{
  result = qword_1EC1D8990;
  if (!qword_1EC1D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8990);
  }

  return result;
}

unint64_t sub_1C6CA61BC()
{
  result = qword_1EC1D89A8;
  if (!qword_1EC1D89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89A8);
  }

  return result;
}

unint64_t sub_1C6CA6210()
{
  result = qword_1EC1D89B0;
  if (!qword_1EC1D89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89B0);
  }

  return result;
}

unint64_t sub_1C6CA6264()
{
  result = qword_1EC1D89B8;
  if (!qword_1EC1D89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89B8);
  }

  return result;
}

unint64_t sub_1C6CA62B8()
{
  result = qword_1EC1D89C8;
  if (!qword_1EC1D89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89C8);
  }

  return result;
}

unint64_t sub_1C6CA630C()
{
  result = qword_1EC1D89D8;
  if (!qword_1EC1D89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89D8);
  }

  return result;
}

unint64_t sub_1C6CA6360()
{
  result = qword_1EC1D89E8;
  if (!qword_1EC1D89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89E8);
  }

  return result;
}

unint64_t sub_1C6CA63B4()
{
  result = qword_1EC1D89F0;
  if (!qword_1EC1D89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89F0);
  }

  return result;
}

unint64_t sub_1C6CA6408()
{
  result = qword_1EC1D89F8;
  if (!qword_1EC1D89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89F8);
  }

  return result;
}

unint64_t sub_1C6CA645C()
{
  result = qword_1EC1D8A00;
  if (!qword_1EC1D8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A00);
  }

  return result;
}

unint64_t sub_1C6CA64B0()
{
  result = qword_1EC1D8A08;
  if (!qword_1EC1D8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A08);
  }

  return result;
}

unint64_t sub_1C6CA6504()
{
  result = qword_1EC1D8A10;
  if (!qword_1EC1D8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A10);
  }

  return result;
}

unint64_t sub_1C6CA6558()
{
  result = qword_1EC1D8A18;
  if (!qword_1EC1D8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A18);
  }

  return result;
}

unint64_t sub_1C6CA65AC()
{
  result = qword_1EC1D8A28;
  if (!qword_1EC1D8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A28);
  }

  return result;
}

unint64_t sub_1C6CA6600()
{
  result = qword_1EC1D8A30;
  if (!qword_1EC1D8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A30);
  }

  return result;
}

unint64_t sub_1C6CA6654()
{
  result = qword_1EC1D8A38;
  if (!qword_1EC1D8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A38);
  }

  return result;
}

unint64_t sub_1C6CA66A8()
{
  result = qword_1EC1D8A48;
  if (!qword_1EC1D8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A48);
  }

  return result;
}

unint64_t sub_1C6CA66FC()
{
  result = qword_1EC1D8A50;
  if (!qword_1EC1D8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A50);
  }

  return result;
}

unint64_t sub_1C6CA6750()
{
  result = qword_1EC1D8A58;
  if (!qword_1EC1D8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A58);
  }

  return result;
}

unint64_t sub_1C6CA67A4()
{
  result = qword_1EC1D8A60;
  if (!qword_1EC1D8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A60);
  }

  return result;
}

unint64_t sub_1C6CA67F8()
{
  result = qword_1EC1D8A70;
  if (!qword_1EC1D8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A70);
  }

  return result;
}

unint64_t sub_1C6CA684C()
{
  result = qword_1EC1D8A78;
  if (!qword_1EC1D8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A78);
  }

  return result;
}

unint64_t sub_1C6CA68A0()
{
  result = qword_1EC1D8A88;
  if (!qword_1EC1D8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A88);
  }

  return result;
}

unint64_t sub_1C6CA68F4()
{
  result = qword_1EC1D8A90;
  if (!qword_1EC1D8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A90);
  }

  return result;
}

unint64_t sub_1C6CA6948()
{
  result = qword_1EC1D8A98;
  if (!qword_1EC1D8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A98);
  }

  return result;
}

unint64_t sub_1C6CA699C()
{
  result = qword_1EC1D8AA8;
  if (!qword_1EC1D8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AA8);
  }

  return result;
}

unint64_t sub_1C6CA69F0()
{
  result = qword_1EC1D8AC8;
  if (!qword_1EC1D8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AC8);
  }

  return result;
}

unint64_t sub_1C6CA6A44()
{
  result = qword_1EC1D8AE0;
  if (!qword_1EC1D8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AE0);
  }

  return result;
}

unint64_t sub_1C6CA6A98()
{
  result = qword_1EC1D8AE8;
  if (!qword_1EC1D8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AE8);
  }

  return result;
}

unint64_t sub_1C6CA6AEC()
{
  result = qword_1EC1D8AF0;
  if (!qword_1EC1D8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AF0);
  }

  return result;
}

unint64_t sub_1C6CA6B40()
{
  result = qword_1EC1D8AF8;
  if (!qword_1EC1D8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AF8);
  }

  return result;
}

unint64_t sub_1C6CA6B94()
{
  result = qword_1EC1D8B08;
  if (!qword_1EC1D8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B08);
  }

  return result;
}

unint64_t sub_1C6CA6BE8()
{
  result = qword_1EC1D8B10;
  if (!qword_1EC1D8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B10);
  }

  return result;
}

unint64_t sub_1C6CA6C3C()
{
  result = qword_1EC1D8B20;
  if (!qword_1EC1D8B20)
  {
    sub_1C6B6052C(255, &qword_1EC1D8B18);
    sub_1C6CA6CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B20);
  }

  return result;
}

unint64_t sub_1C6CA6CC4()
{
  result = qword_1EC1D8B28;
  if (!qword_1EC1D8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B28);
  }

  return result;
}

unint64_t sub_1C6CA6D18()
{
  result = qword_1EC1D8B38;
  if (!qword_1EC1D8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B38);
  }

  return result;
}

unint64_t sub_1C6CA6D6C()
{
  result = qword_1EC1D8B40;
  if (!qword_1EC1D8B40)
  {
    sub_1C6B6052C(255, &qword_1EC1D8B18);
    sub_1C6CA6DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B40);
  }

  return result;
}

unint64_t sub_1C6CA6DF4()
{
  result = qword_1EC1D8B48;
  if (!qword_1EC1D8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B48);
  }

  return result;
}

unint64_t sub_1C6CA6E48()
{
  result = qword_1EC1D8B50;
  if (!qword_1EC1D8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B50);
  }

  return result;
}

unint64_t sub_1C6CA6E9C()
{
  result = qword_1EC1D8B58;
  if (!qword_1EC1D8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B58);
  }

  return result;
}

unint64_t sub_1C6CA6EF0()
{
  result = qword_1EC1D8B60;
  if (!qword_1EC1D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B60);
  }

  return result;
}

unint64_t sub_1C6CA6F44()
{
  result = qword_1EC1D8B78;
  if (!qword_1EC1D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B78);
  }

  return result;
}

unint64_t sub_1C6CA6F98()
{
  result = qword_1EC1D8B80;
  if (!qword_1EC1D8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B80);
  }

  return result;
}

void sub_1C6CA6FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1C6CA7054()
{
  result = qword_1EC1D8B90;
  if (!qword_1EC1D8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B90);
  }

  return result;
}

unint64_t sub_1C6CA70AC()
{
  result = qword_1EC1D8B98;
  if (!qword_1EC1D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B98);
  }

  return result;
}

unint64_t sub_1C6CA7104()
{
  result = qword_1EC1D8BA0;
  if (!qword_1EC1D8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BA0);
  }

  return result;
}

unint64_t sub_1C6CA715C()
{
  result = qword_1EC1D8BA8;
  if (!qword_1EC1D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BA8);
  }

  return result;
}

unint64_t sub_1C6CA71B4()
{
  result = qword_1EC1D8BB0;
  if (!qword_1EC1D8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BB0);
  }

  return result;
}

unint64_t sub_1C6CA720C()
{
  result = qword_1EC1D8BB8;
  if (!qword_1EC1D8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BB8);
  }

  return result;
}

unint64_t sub_1C6CA7264()
{
  result = qword_1EC1D8BC0;
  if (!qword_1EC1D8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BC0);
  }

  return result;
}

unint64_t sub_1C6CA72BC()
{
  result = qword_1EC1D8BC8;
  if (!qword_1EC1D8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BC8);
  }

  return result;
}

unint64_t sub_1C6CA7314()
{
  result = qword_1EC1D8BD0;
  if (!qword_1EC1D8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BD0);
  }

  return result;
}

unint64_t sub_1C6CA736C()
{
  result = qword_1EC1D8BD8;
  if (!qword_1EC1D8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BD8);
  }

  return result;
}

unint64_t sub_1C6CA73C4()
{
  result = qword_1EC1D8BE0;
  if (!qword_1EC1D8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BE0);
  }

  return result;
}

unint64_t sub_1C6CA741C()
{
  result = qword_1EC1D8BE8;
  if (!qword_1EC1D8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BE8);
  }

  return result;
}

unint64_t sub_1C6CA7474()
{
  result = qword_1EC1D8BF0;
  if (!qword_1EC1D8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BF0);
  }

  return result;
}

unint64_t sub_1C6CA74CC()
{
  result = qword_1EC1D8BF8;
  if (!qword_1EC1D8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BF8);
  }

  return result;
}

unint64_t sub_1C6CA7524()
{
  result = qword_1EC1D8C00;
  if (!qword_1EC1D8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C00);
  }

  return result;
}

unint64_t sub_1C6CA757C()
{
  result = qword_1EC1D8C08;
  if (!qword_1EC1D8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C08);
  }

  return result;
}

unint64_t sub_1C6CA75D4()
{
  result = qword_1EC1D8C10;
  if (!qword_1EC1D8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C10);
  }

  return result;
}

unint64_t sub_1C6CA762C()
{
  result = qword_1EC1D8C18;
  if (!qword_1EC1D8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C18);
  }

  return result;
}

unint64_t sub_1C6CA7684()
{
  result = qword_1EC1D8C20;
  if (!qword_1EC1D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C20);
  }

  return result;
}

unint64_t sub_1C6CA76DC()
{
  result = qword_1EC1D8C28;
  if (!qword_1EC1D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C28);
  }

  return result;
}

unint64_t sub_1C6CA7734()
{
  result = qword_1EC1D8C30;
  if (!qword_1EC1D8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C30);
  }

  return result;
}

unint64_t sub_1C6CA778C()
{
  result = qword_1EC1D8C38;
  if (!qword_1EC1D8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C38);
  }

  return result;
}

unint64_t sub_1C6CA77E4()
{
  result = qword_1EC1D8C40;
  if (!qword_1EC1D8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C40);
  }

  return result;
}

unint64_t sub_1C6CA783C()
{
  result = qword_1EC1D8C48;
  if (!qword_1EC1D8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C48);
  }

  return result;
}

unint64_t sub_1C6CA7894()
{
  result = qword_1EC1D8C50;
  if (!qword_1EC1D8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C50);
  }

  return result;
}

unint64_t sub_1C6CA78EC()
{
  result = qword_1EC1D8C58;
  if (!qword_1EC1D8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C58);
  }

  return result;
}

unint64_t sub_1C6CA7944()
{
  result = qword_1EC1D8C60;
  if (!qword_1EC1D8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C60);
  }

  return result;
}

unint64_t sub_1C6CA799C()
{
  result = qword_1EC1D8C68;
  if (!qword_1EC1D8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C68);
  }

  return result;
}

unint64_t sub_1C6CA79F4()
{
  result = qword_1EC1D8C70;
  if (!qword_1EC1D8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C70);
  }

  return result;
}

unint64_t sub_1C6CA7A4C()
{
  result = qword_1EC1D8C78;
  if (!qword_1EC1D8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C78);
  }

  return result;
}

unint64_t sub_1C6CA7AA4()
{
  result = qword_1EC1D8C80;
  if (!qword_1EC1D8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C80);
  }

  return result;
}

unint64_t sub_1C6CA7AFC()
{
  result = qword_1EC1D8C88;
  if (!qword_1EC1D8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C88);
  }

  return result;
}

unint64_t sub_1C6CA7B54()
{
  result = qword_1EC1D8C90;
  if (!qword_1EC1D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C90);
  }

  return result;
}

unint64_t sub_1C6CA7BAC()
{
  result = qword_1EC1D8C98;
  if (!qword_1EC1D8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C98);
  }

  return result;
}

unint64_t sub_1C6CA7C04()
{
  result = qword_1EC1D8CA0;
  if (!qword_1EC1D8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CA0);
  }

  return result;
}

unint64_t sub_1C6CA7C5C()
{
  result = qword_1EC1D8CA8;
  if (!qword_1EC1D8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CA8);
  }

  return result;
}

unint64_t sub_1C6CA7CB4()
{
  result = qword_1EC1D8CB0;
  if (!qword_1EC1D8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CB0);
  }

  return result;
}

unint64_t sub_1C6CA7D0C()
{
  result = qword_1EC1D8CB8;
  if (!qword_1EC1D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CB8);
  }

  return result;
}

uint64_t sub_1C6CA7D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C6CA7DA8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization0B6ScriptV6MomentOSg(void *a1)
{
  if ((*a1 >> 1) > 0x80000000)
  {
    return -(*a1 >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C6CA7E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 3) & 0xFFFFFFE0 | (*(a1 + 56) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C6CA7EF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 112) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 113) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA7F84(uint64_t result, char a2)
{
  v2 = *(result + 80) & 0x83;
  v3 = *(result + 112) & 0x83;
  *(result + 56) &= 0x83uLL;
  *(result + 80) = v2;
  *(result + 112) = v3 | ((a2 & 1) << 6);
  return result;
}

uint64_t sub_1C6CA7FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFFE0 | (*(a1 + 24) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA802C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 113) = 0;
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

uint64_t sub_1C6CA80C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CA812C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 2 * ~a2;
    }
  }

  return result;
}

uint64_t sub_1C6CA81B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C6CA81FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA829C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6CA82F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6CA83AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 17))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6CA8400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6CA84A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA84F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

uint64_t sub_1C6CA8584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C6CA85CC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C6CA8658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA86AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA8724(uint64_t result, char a2)
{
  v2 = *(result + 48) & 3 | (a2 << 7);
  *(result + 16) &= 0x83uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1C6CA8768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CA87CC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 2 * ~a2;
    }
  }

  return result;
}

uint64_t sub_1C6CA8868(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C6CA88C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationScript.ScreenValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizationScript.ScreenValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C6CA89AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C6CA89F4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C6CA8A6C(uint64_t a1, int a2)
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

uint64_t sub_1C6CA8AB4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PersonalizationScript.Tag.CommonFeed(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationScript.Tag.CommonFeed(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6CA8C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C6CA8CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C6CA8E6C()
{
  result = qword_1EC1D8CC0;
  if (!qword_1EC1D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CC0);
  }

  return result;
}

unint64_t sub_1C6CA8EC4()
{
  result = qword_1EC1D8CC8;
  if (!qword_1EC1D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CC8);
  }

  return result;
}

unint64_t sub_1C6CA8F1C()
{
  result = qword_1EC1D8CD0;
  if (!qword_1EC1D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CD0);
  }

  return result;
}

unint64_t sub_1C6CA8F74()
{
  result = qword_1EC1D8CD8;
  if (!qword_1EC1D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CD8);
  }

  return result;
}

unint64_t sub_1C6CA8FCC()
{
  result = qword_1EC1D8CE0;
  if (!qword_1EC1D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CE0);
  }

  return result;
}

unint64_t sub_1C6CA9024()
{
  result = qword_1EC1D8CE8;
  if (!qword_1EC1D8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CE8);
  }

  return result;
}

unint64_t sub_1C6CA907C()
{
  result = qword_1EC1D8CF0;
  if (!qword_1EC1D8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CF0);
  }

  return result;
}

unint64_t sub_1C6CA90D4()
{
  result = qword_1EC1D8CF8;
  if (!qword_1EC1D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CF8);
  }

  return result;
}

unint64_t sub_1C6CA912C()
{
  result = qword_1EC1D8D00;
  if (!qword_1EC1D8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D00);
  }

  return result;
}

unint64_t sub_1C6CA9184()
{
  result = qword_1EC1D8D08;
  if (!qword_1EC1D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D08);
  }

  return result;
}

unint64_t sub_1C6CA91DC()
{
  result = qword_1EC1D8D10;
  if (!qword_1EC1D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D10);
  }

  return result;
}

unint64_t sub_1C6CA9234()
{
  result = qword_1EC1D8D18;
  if (!qword_1EC1D8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D18);
  }

  return result;
}

unint64_t sub_1C6CA928C()
{
  result = qword_1EC1D8D20;
  if (!qword_1EC1D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D20);
  }

  return result;
}

unint64_t sub_1C6CA92E4()
{
  result = qword_1EC1D8D28;
  if (!qword_1EC1D8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D28);
  }

  return result;
}

unint64_t sub_1C6CA933C()
{
  result = qword_1EC1D8D30;
  if (!qword_1EC1D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D30);
  }

  return result;
}

unint64_t sub_1C6CA9394()
{
  result = qword_1EC1D8D38;
  if (!qword_1EC1D8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D38);
  }

  return result;
}

unint64_t sub_1C6CA93EC()
{
  result = qword_1EC1D8D40;
  if (!qword_1EC1D8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D40);
  }

  return result;
}

unint64_t sub_1C6CA9444()
{
  result = qword_1EC1D8D48;
  if (!qword_1EC1D8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D48);
  }

  return result;
}

unint64_t sub_1C6CA949C()
{
  result = qword_1EC1D8D50;
  if (!qword_1EC1D8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D50);
  }

  return result;
}

unint64_t sub_1C6CA94F4()
{
  result = qword_1EC1D8D58;
  if (!qword_1EC1D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D58);
  }

  return result;
}

unint64_t sub_1C6CA954C()
{
  result = qword_1EC1D8D60;
  if (!qword_1EC1D8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D60);
  }

  return result;
}

unint64_t sub_1C6CA95A4()
{
  result = qword_1EC1D8D68;
  if (!qword_1EC1D8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D68);
  }

  return result;
}

unint64_t sub_1C6CA95FC()
{
  result = qword_1EC1D8D70;
  if (!qword_1EC1D8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D70);
  }

  return result;
}

unint64_t sub_1C6CA9654()
{
  result = qword_1EC1D8D78;
  if (!qword_1EC1D8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D78);
  }

  return result;
}

unint64_t sub_1C6CA96AC()
{
  result = qword_1EC1D8D80;
  if (!qword_1EC1D8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D80);
  }

  return result;
}

unint64_t sub_1C6CA9704()
{
  result = qword_1EC1D8D88;
  if (!qword_1EC1D8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D88);
  }

  return result;
}

unint64_t sub_1C6CA975C()
{
  result = qword_1EC1D8D90;
  if (!qword_1EC1D8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D90);
  }

  return result;
}

unint64_t sub_1C6CA97B4()
{
  result = qword_1EC1D8D98;
  if (!qword_1EC1D8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D98);
  }

  return result;
}

unint64_t sub_1C6CA980C()
{
  result = qword_1EC1D8DA0;
  if (!qword_1EC1D8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DA0);
  }

  return result;
}

unint64_t sub_1C6CA9864()
{
  result = qword_1EC1D8DA8;
  if (!qword_1EC1D8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DA8);
  }

  return result;
}

unint64_t sub_1C6CA98BC()
{
  result = qword_1EC1D8DB0;
  if (!qword_1EC1D8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DB0);
  }

  return result;
}

unint64_t sub_1C6CA9914()
{
  result = qword_1EC1D8DB8;
  if (!qword_1EC1D8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DB8);
  }

  return result;
}

unint64_t sub_1C6CA996C()
{
  result = qword_1EC1D8DC0;
  if (!qword_1EC1D8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DC0);
  }

  return result;
}

unint64_t sub_1C6CA99C4()
{
  result = qword_1EC1D8DC8;
  if (!qword_1EC1D8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DC8);
  }

  return result;
}

unint64_t sub_1C6CA9A1C()
{
  result = qword_1EC1D8DD0;
  if (!qword_1EC1D8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DD0);
  }

  return result;
}

unint64_t sub_1C6CA9A74()
{
  result = qword_1EC1D8DD8;
  if (!qword_1EC1D8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DD8);
  }

  return result;
}

unint64_t sub_1C6CA9ACC()
{
  result = qword_1EC1D8DE0;
  if (!qword_1EC1D8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DE0);
  }

  return result;
}

unint64_t sub_1C6CA9B24()
{
  result = qword_1EC1D8DE8;
  if (!qword_1EC1D8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DE8);
  }

  return result;
}

unint64_t sub_1C6CA9B7C()
{
  result = qword_1EC1D8DF0;
  if (!qword_1EC1D8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DF0);
  }

  return result;
}