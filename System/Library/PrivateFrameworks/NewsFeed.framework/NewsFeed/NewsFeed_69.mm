uint64_t sub_1D618C048(uint64_t a1, uint64_t a2)
{
  sub_1D618C0AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D618C0AC()
{
  if (!qword_1EDF14028)
  {
    sub_1D618C104();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF14028);
    }
  }
}

unint64_t sub_1D618C104()
{
  result = qword_1EDF14030;
  if (!qword_1EDF14030)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF14030);
  }

  return result;
}

uint64_t sub_1D618C168(uint64_t a1)
{
  sub_1D618C0AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedLocation.name.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2 >> 60;
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v21 = 0x28646E61707865;
        v6 = *(v20 + 16);
        v7 = *(v20 + 24);
        goto LABEL_20;
      }

      MEMORY[0x1EEE9AC00](a1, a2);
      type metadata accessor for FeedCursor();
      swift_getTupleTypeMetadata();
      v12 = *swift_projectBox();
      v21 = 0;

      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x2868736572666572, 0xE800000000000000);
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);

      MEMORY[0x1DA6F9910](v13, v14);

      MEMORY[0x1DA6F9910](0x657461727473202CLL, 0xEB000000003D7967);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](10537, 0xE200000000000000);
    }

    else
    {
      if (v4 == 6)
      {
        sub_1D7263D4C();

        v21 = 0xD000000000000010;
        v15 = sub_1D6C08E2C();
        v17 = v16;

        MEMORY[0x1DA6F9910](v15, v17);

LABEL_21:
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        return v21;
      }

      if (v4 == 7)
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v21 = 0x6465727265666564;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
LABEL_20:
        MEMORY[0x1DA6F9910](v6, v7);
        goto LABEL_21;
      }

      v21 = 0x28796669646F6DLL;
      v19 = FeedLocation.name.getter();
      MEMORY[0x1DA6F9910](v19);
    }

    return v21;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v21 = 0x28726F73727563;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
    }

    else
    {
      v21 = 0x636E657265666572;
      v10 = sub_1D6C08E2C();
      v11 = v18;
    }

    MEMORY[0x1DA6F9910](v10, v11);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);

    return v21;
  }

  if (v4)
  {
    return 0x646568636163;
  }

  else
  {
    return 0x656546664F706F74;
  }
}

uint64_t sub_1D618C5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_1D618C668(uint64_t a1)
{
  v2 = sub_1D618C8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D618C6A4(uint64_t a1)
{
  v2 = sub_1D618C8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D618C6E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D618C854();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618C8B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void sub_1D618C854()
{
  if (!qword_1EC884820)
  {
    sub_1D618C8B0();
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884820);
    }
  }
}

unint64_t sub_1D618C8B0()
{
  result = qword_1EC884828;
  if (!qword_1EC884828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884828);
  }

  return result;
}

unint64_t sub_1D618C918()
{
  result = qword_1EC884830;
  if (!qword_1EC884830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884830);
  }

  return result;
}

unint64_t sub_1D618C970()
{
  result = qword_1EC884838;
  if (!qword_1EC884838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884838);
  }

  return result;
}

unint64_t sub_1D618C9C8()
{
  result = qword_1EC884840;
  if (!qword_1EC884840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884840);
  }

  return result;
}

uint64_t sub_1D618CA38(void *a1, unint64_t a2)
{
  sub_1D618D7E0(0, &qword_1EC884848, sub_1D618D0FC, &type metadata for SportsTaxonomyGraphResourceRootNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v21 - v8;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v26[0] = v12;
      *(v26 + 10) = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x2A);
      sub_1D618D150(&v25, v21);
      sub_1D6FA088C(a1);
      return sub_1D618D1AC(&v25);
    }

    v15 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
    v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = v15[24];
    v18 = v15[25];
    v19 = v15[26];

    if (v18)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    sub_1D6DB2B74(a1, v16, v20 | (v19 << 16) | v17);
  }

  else
  {
    if (v10)
    {
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = v14;
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v27 = v22;
      v28[0] = v14;
      sub_1D5E422A8(&v27, v21);
      sub_1D618D200(v28, v21);
      sub_1D67EDA78(a1);
      sub_1D5BFB68C(&v27);
      return sub_1D618D288(v28);
    }

    v11 = *(a2 + 16);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D618D0FC();

    sub_1D7264B5C();
    v21[0] = v11;
    sub_1D5B49DA8(0, &qword_1EDF04B08, &type metadata for SportsTaxonomyGraphResourceNode, MEMORY[0x1E69E62F8]);
    sub_1D618D308();
    sub_1D726443C();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1D618CCF8(uint64_t a1)
{
  v2 = sub_1D618D848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D618CD34(uint64_t a1)
{
  v2 = sub_1D618D848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D618CD70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953460082;
  }

  else
  {
    v3 = 0x6E6F6974636573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953460082;
  }

  else
  {
    v5 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D618CE10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D618CE8C()
{
  sub_1D72621EC();
}

uint64_t sub_1D618CEF4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D618CF6C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D618CFCC(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (!*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D618D0B4@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D618D3F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D618D0FC()
{
  result = qword_1EDF06F80;
  if (!qword_1EDF06F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F80);
  }

  return result;
}

uint64_t sub_1D618D200(uint64_t a1, uint64_t a2)
{
  sub_1D5B49DA8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D618D288(uint64_t a1)
{
  sub_1D5B49DA8(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D618D308()
{
  result = qword_1EC884850;
  if (!qword_1EC884850)
  {
    sub_1D5B49DA8(255, &qword_1EDF04B08, &type metadata for SportsTaxonomyGraphResourceNode, MEMORY[0x1E69E62F8]);
    sub_1D618D3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884850);
  }

  return result;
}

unint64_t sub_1D618D3A4()
{
  result = qword_1EC884858;
  if (!qword_1EC884858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884858);
  }

  return result;
}

unint64_t sub_1D618D3F8(void *a1)
{
  sub_1D618D7E0(0, &qword_1EDF038F8, sub_1D618D848, &type metadata for SportsTaxonomyGraphResourceNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D618D848();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D618D89C();
    sub_1D726427C();
    if (LOBYTE(v19[0]) == 2)
    {
      sub_1D5B68374(a1, v19);
      sub_1D6FA0CA0(v19, &v20);
      (*(v5 + 8))(v8, v4);
      v13 = swift_allocObject();
      v14 = v21[0];
      *(v13 + 16) = v20;
      *(v13 + 32) = v14;
      *(v13 + 42) = *(v21 + 10);
      v10 = v13 | 0x8000000000000000;
    }

    else if (v19[0])
    {
      v10 = swift_allocObject();
      sub_1D5B68374(a1, v19);
      v15 = sub_1D6B49254(v19);
      (*(v5 + 8))(v8, v4);
      *(v10 + 16) = v15;
    }

    else
    {
      v11 = swift_allocObject();
      sub_1D5B68374(a1, v19);
      v16 = sub_1D6DB2FE8(v19);
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      *(v11 + 16) = v16;
      *(v11 + 24) = v18 & 1;
      *(v11 + 25) = BYTE1(v18) & 1;
      *(v11 + 26) = BYTE2(v18) & 1;
      v10 = v11 | 0xC000000000000000;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_1D618D7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D618D848()
{
  result = qword_1EDF09068[0];
  if (!qword_1EDF09068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF09068);
  }

  return result;
}

unint64_t sub_1D618D89C()
{
  result = qword_1EDF09048;
  if (!qword_1EDF09048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09048);
  }

  return result;
}

unint64_t sub_1D618D914()
{
  result = qword_1EC884860;
  if (!qword_1EC884860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884860);
  }

  return result;
}

unint64_t sub_1D618D96C()
{
  result = qword_1EC884868;
  if (!qword_1EC884868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884868);
  }

  return result;
}

unint64_t sub_1D618D9C4()
{
  result = qword_1EDF09058;
  if (!qword_1EDF09058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09058);
  }

  return result;
}

unint64_t sub_1D618DA1C()
{
  result = qword_1EDF09060;
  if (!qword_1EDF09060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09060);
  }

  return result;
}

unint64_t sub_1D618DA70()
{
  result = qword_1EDF09050;
  if (!qword_1EDF09050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09050);
  }

  return result;
}

uint64_t type metadata accessor for FormatOptionsNodeStatementResult()
{
  result = qword_1EDF1EF78;
  if (!qword_1EDF1EF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D618DB38()
{
  sub_1D5B56458();
  if (v0 <= 0x3F)
  {
    sub_1D60077D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_1D618DCB8()
{
  v1 = sub_1D725CE3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  v6 = v0[6];
  v7 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v6);
  (*(v7 + 48))(v26, v6, v7);
  v8 = v26[0];
  sub_1D618EA78(v26);
  v9 = v0[6];
  v10 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v9);
  (*(v10 + 48))(v27, v9, v10);
  v11 = v27[1];
  sub_1D618EA78(v27);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D7688], v1);
  v12 = sub_1D725CE2C();
  (*(v2 + 8))(v5, v1);
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1D5B5A498(0, &qword_1EDF1A720);
  v16 = v14;
  *(inited + 40) = sub_1D72633CC();
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v12;
  v18 = v17;
  v19 = v12;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v22 = sub_1D7261D2C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_1D618DFEC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3[6];
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v5);
  (*(v6 + 48))(v24, v5, v6);
  v7 = v24[0];
  sub_1D618EA78(v24);
  if (a3)
  {
    v8 = v3[6];
    v9 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
    (*(v9 + 48))(v23, v8, v9);
    v10 = v23[2];
    sub_1D618EA78(v23);
  }

  else
  {
    v10 = v7;
  }

  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = sub_1D5B5A498(0, &qword_1EDF1A720);
  v14 = v12;
  *(inited + 40) = sub_1D72633CC();
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v10;
  v16 = v15;
  v17 = v10;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v20 = sub_1D7261D2C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

void sub_1D618E264(void *a1, char a2)
{
  v4 = v2[6];
  v5 = v2[7];
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v8, v4, v5);
    v6 = v8[2];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v8, v4, v5);
    v6 = v8[0];
  }

  v7 = v6;
  sub_1D618EA78(v8);
  [a1 setTintColor_];
}

void sub_1D618E334(void *a1, char a2)
{
  v4 = v2[6];
  v5 = v2[7];
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v13, v4, v5);
    v6 = v13[3];
    sub_1D618EA78(v13);
    [a1 setBackgroundColor_];

    v7 = [a1 layer];
    sub_1D5B5A498(0, &qword_1EDF1A720);
    v8 = sub_1D72633CC();
    [v8 pointSize];
    v10 = v9;

    [v7 setCornerRadius_];
    v11 = [a1 layer];
    [v11 setCornerCurve_];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    (*(v5 + 48))(v13, v4, v5);
    v12 = v13[1];
    sub_1D618EA78(v13);
    [a1 setBackgroundColor_];

    v11 = [a1 layer];
    [v11 setCornerRadius_];
  }
}

id sub_1D618E538(void *a1, char a2)
{
  v3 = v2;
  [a1 setContentMode_];
  if (a2)
  {
    v6 = sub_1D726203C();
    v7 = [objc_opt_self() systemImageNamed_];

    if (v7)
    {
      v8 = [objc_opt_self() configurationWithPointSize:7 weight:13.0];
      v9 = [v7 imageWithConfiguration_];

      v10 = [v9 imageWithRenderingMode_];
    }

    sub_1D725FBBC();
    v11 = v3[6];
    v12 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v11);
    (*(v12 + 48))(v15, v11, v12);
    v13 = v15[2];
    sub_1D618EA78(v15);
    [a1 setTintColor_];
  }

  else
  {
    sub_1D725FBBC();
  }

  return [a1 setHidden_];
}

uint64_t sub_1D618E6E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1D618E784()
{
  sub_1D5B5A498(0, &qword_1EDF1A720);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 * 0.0625;
}

double sub_1D618E814()
{
  sub_1D5B5A498(0, &qword_1EDF1A720);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 * 0.0625 * 8.0;
}

void sub_1D618E904(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 56);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), v3);
  (*(v4 + 48))(v6, v3, v4);
  v5 = v6[0];
  sub_1D618EA78(v6);
  [a1 setTintColor_];
}

id sub_1D618E9BC(void *a1)
{
  v2 = [a1 layer];
  [v2 setCornerCurve_];

  return [a1 setBackgroundColor_];
}

double sub_1D618EACC()
{
  sub_1D5B5A498(0, &qword_1EDF1A720);
  v0 = sub_1D72633CC();
  [v0 pointSize];
  v2 = v1;

  return v2 / 12.0 * 8.0;
}

uint64_t FormatType.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatType.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void FormatType.definition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  sub_1D618EC0C(v2, v3, v4, v5, v6, v7, v8);
}

void sub_1D618EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 == 2)
    {

      goto LABEL_5;
    }
  }

  else
  {
    if (!(a7 >> 6))
    {

LABEL_5:

      return;
    }

    sub_1D618ECBC(a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1D618ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t FormatType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s8NewsFeed10FormatTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v44 = *(a2 + 64);
  v43 = *(a2 + 72);
  v17 = *(a2 + 80);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v39 = *(a1 + 72);
    v41 = *(a2 + 32);
    v37 = *(a2 + 40);
    v38 = *(a2 + 48);
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = *(a2 + 56);
    v22 = *(a2 + 80);
    v23 = *(a1 + 80);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v26 = *(a2 + 24);
    v27 = *(a2 + 16);
    v28 = sub_1D72646CC();
    v12 = v27;
    v11 = v26;
    v4 = v25;
    v2 = v24;
    v10 = v23;
    v17 = v22;
    v15 = v21;
    v3 = v20;
    v5 = v19;
    v6 = v18;
    v7 = v35;
    v8 = v36;
    v14 = v37;
    v16 = v38;
    v9 = v39;
    v13 = v41;
    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    if (v11)
    {
      if (v2 == v12 && v4 == v11)
      {
        goto LABEL_9;
      }

      v40 = v15;
      v29 = v13;
      v30 = v3;
      v42 = v17;
      v31 = v10;
      v32 = sub_1D72646CC();
      v10 = v31;
      v17 = v42;
      v3 = v30;
      v13 = v29;
      v15 = v40;
      if (v32)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v33 = 0;
    return v33 & 1;
  }

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v52 = v3;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  v58 = v10;
  v45 = v13;
  v46 = v14;
  v47 = v16;
  v48 = v15;
  v49 = v44;
  v50 = v43;
  v51 = v17;
  sub_1D618EC0C(v3, v5, v6, v7, v8, v9, v10);
  sub_1D618EC0C(v13, v14, v16, v15, v44, v43, v17);
  v33 = _s8NewsFeed20FormatTypeDefinitionO2eeoiySbAC_ACtFZ_0(&v52, &v45);
  sub_1D60CF6F4(v45, v46, v47, v48, v49, v50, v51);
  sub_1D60CF6F4(v52, v53, v54, v55, v56, v57, v58);
  return v33 & 1;
}

unint64_t sub_1D618EF6C(uint64_t a1)
{
  result = sub_1D5B4C700();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D618EFB4(void *a1, uint64_t a2)
{
  v19 = a1;
  sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - v7);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D6997900(0, v9, 0);
    v10 = v21;
    v11 = (a2 + 32);
    v17 = v5 + 32;
    while (1)
    {
      v12 = *v11++;
      v20 = v12;
      sub_1D5CFEC98(v12);
      sub_1D618F188(v19, v8);
      v13 = v12;
      if (v2)
      {
        break;
      }

      sub_1D5CFED88(v13);
      v21 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997900(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v15 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v18);
      if (!--v9)
      {
        return v10;
      }
    }

    sub_1D5CFED88(v13);
  }

  return v10;
}

uint64_t sub_1D618F188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = sub_1D725A30C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v200[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v200[-v15];
  v17 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v94 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6191428(0, &qword_1EDF3C0F8, MEMORY[0x1E69D7078]);
      (*(*(v95 - 8) + 104))(a2, **(&unk_1E84CE0E8 + v94), v95);
      v29 = MEMORY[0x1E69D7080];
      goto LABEL_78;
    case 2uLL:
      v206 = a2;
      v74 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v75 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v202 = a1;
      v76 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v77 = v76();
      v78 = sub_1D5E02AFC(v77, v74);
      if (v3)
      {
      }

      v177 = v78;

      v202 = a1;
      v178 = v76();
      v179 = sub_1D5E02AFC(v178, v75);

      a2 = v206;
      *v206 = v177;
      *(a2 + 1) = v179;
      v29 = MEMORY[0x1E69D7090];
      goto LABEL_78;
    case 3uLL:
      v81 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v82 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v83 = v82();
      v84 = sub_1D5E02AFC(v83, v81);
      if (v3)
      {
        goto LABEL_70;
      }

      v85 = v84;

      *a2 = v85;
      v86 = *MEMORY[0x1E69D7240];
      v87 = sub_1D725A13C();
      (*(*(v87 - 8) + 104))(a2, v86, v87);
      v88 = MEMORY[0x1E69D72D8];
      goto LABEL_48;
    case 4uLL:
      v49 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v50 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v51 = v50();
      v52 = sub_1D5E02AFC(v51, v49);
      if (v3)
      {
        goto LABEL_70;
      }

      v53 = v52;

      *a2 = v53;
      v54 = *MEMORY[0x1E69D7240];
      v55 = sub_1D725A13C();
      (*(*(v55 - 8) + 104))(a2, v54, v55);
      v48 = MEMORY[0x1E69D72D8];
      goto LABEL_12;
    case 5uLL:
      v109 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v110 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v111 = v110();
      v112 = sub_1D5E02AFC(v111, v109);
      if (v3)
      {
        goto LABEL_70;
      }

      v113 = v112;

      *a2 = v113;
      v29 = MEMORY[0x1E69D70C0];
      goto LABEL_78;
    case 6uLL:
      v129 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v130 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v131 = v130();
      v132 = sub_1D5E02AFC(v131, v129);
      if (v3)
      {
        goto LABEL_70;
      }

      v133 = v132;

      *a2 = v133;
      v29 = MEMORY[0x1E69D70B8];
      goto LABEL_78;
    case 7uLL:
      v89 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v90 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v91 = v90();
      v92 = sub_1D5E02AFC(v91, v89);
      if (v3)
      {
        goto LABEL_70;
      }

      v93 = v92;

      *a2 = v93;
      v29 = MEMORY[0x1E69D70D0];
      goto LABEL_78;
    case 8uLL:
      v151 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v152 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v153 = v152();
      v154 = sub_1D5E02AFC(v153, v151);
      if (v3)
      {
        goto LABEL_70;
      }

      v155 = v154;

      *a2 = v155;
      v29 = MEMORY[0x1E69D70C8];
      goto LABEL_78;
    case 9uLL:
      v60 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (!*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v202 = a1;
        v182 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v183 = v182();
        v184 = sub_1D5E02AFC(v183, v60);
        if (!v3)
        {
          v185 = v184;

          *a2 = v185;
          v65 = MEMORY[0x1E69D7330];
          goto LABEL_77;
        }

LABEL_70:
      }

      if (*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != 1)
      {
        v202 = a1;
        v186 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v187 = v186();
        v188 = sub_1D5E02AFC(v187, v60);
        if (!v3)
        {
          v193 = v188;

          *a2 = v193;
          v194 = *MEMORY[0x1E69D7350];
          v195 = sub_1D725A34C();
          (*(*(v195 - 8) + 104))(a2, v194, v195);
          v65 = MEMORY[0x1E69D7360];
          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v202 = a1;
      v61 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v62 = v61();
      v63 = sub_1D5E02AFC(v62, v60);
      if (v3)
      {
        goto LABEL_70;
      }

      v64 = v63;

      *a2 = v64;
      v65 = MEMORY[0x1E69D7368];
LABEL_77:
      v196 = *v65;
      v197 = sub_1D725A35C();
      (*(*(v197 - 8) + 104))(a2, v196, v197);
      v29 = MEMORY[0x1E69D7008];
LABEL_78:
      v198 = *v29;
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      return (*(*(v199 - 8) + 104))(a2, v198, v199);
    case 0xAuLL:
      v142 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v143 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v144 = v143();
      v145 = sub_1D5E02AFC(v144, v142);
      if (v3)
      {
        goto LABEL_70;
      }

      v146 = v145;

      *a2 = v146;
      v147 = *MEMORY[0x1E69D7240];
      v148 = sub_1D725A13C();
      (*(*(v148 - 8) + 104))(a2, v147, v148);
      v88 = MEMORY[0x1E69D72E0];
LABEL_48:
      v149 = *v88;
      v150 = sub_1D725A29C();
      (*(*(v150 - 8) + 104))(a2, v149, v150);
      v29 = MEMORY[0x1E69D6FC0];
      goto LABEL_78;
    case 0xBuLL:
      v41 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v42 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v43 = v42();
      v44 = sub_1D5E02AFC(v43, v41);
      if (v3)
      {
        goto LABEL_70;
      }

      v45 = v44;

      *a2 = v45;
      v46 = *MEMORY[0x1E69D7240];
      v47 = sub_1D725A13C();
      (*(*(v47 - 8) + 104))(a2, v46, v47);
      v48 = MEMORY[0x1E69D72E0];
LABEL_12:
      v56 = *v48;
      v57 = sub_1D725A29C();
      (*(*(v57 - 8) + 104))(a2, v56, v57);
      v29 = MEMORY[0x1E69D6FD0];
      goto LABEL_78;
    case 0xCuLL:
      v58 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6191428(0, &qword_1EDF3C0F8, MEMORY[0x1E69D7078]);
      (*(*(v59 - 8) + 104))(a2, **(&unk_1E84CE0E8 + v58), v59);
      v29 = MEMORY[0x1E69D6FF0];
      goto LABEL_78;
    case 0xDuLL:
      v119 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v120 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v121 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v122 = sub_1D6E8DD40(v120, v121);
      v124 = v123;

      v125 = sub_1D725A0DC();
      v126 = MEMORY[0x1E69D7238];
      if (!v119)
      {
        v126 = MEMORY[0x1E69D7230];
      }

      (*(*(v125 - 8) + 104))(a2, *v126, v125);
      sub_1D5ED83AC();
      v128 = (a2 + *(v127 + 48));
      *v128 = v122;
      v128[1] = v124;
      v29 = MEMORY[0x1E69D7020];
      goto LABEL_78;
    case 0xEuLL:
      v202 = *v2;

      v39 = sub_1D6190840(v38, a1);
      if (v3)
      {
      }

      v40 = v39;

      *a2 = v40;
      v29 = MEMORY[0x1E69D6FF8];
      goto LABEL_78;
    case 0xFuLL:
      v202 = *v2;

      v80 = sub_1D6190840(v79, a1);
      if (v3)
      {
      }

      v180 = v80;

      *a2 = v180;
      v29 = MEMORY[0x1E69D70A8];
      goto LABEL_78;
    case 0x10uLL:
      v30 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v31 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v32 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v33 = sub_1D6E8DD40(v30, v31);
      v35 = v34;
      v202 = v17;
      v36 = sub_1D6190840(v32, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v37 = v36;

      *a2 = v33;
      a2[1] = v35;
      a2[2] = v37;
      v29 = MEMORY[0x1E69D7018];
      goto LABEL_78;
    case 0x11uLL:
      v96 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v97 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v98 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v99 = sub_1D6E8DD40(v96, v97);
      v101 = v100;
      v202 = v17;
      v102 = sub_1D6190840(v98, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v103 = v102;

      *a2 = v99;
      a2[1] = v101;
      a2[2] = v103;
      v29 = MEMORY[0x1E69D7040];
      goto LABEL_78;
    case 0x12uLL:
      v134 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v135 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v136 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v137 = sub_1D6E8DD40(v134, v135);
      v139 = v138;
      v202 = v17;
      v140 = sub_1D6190840(v136, a1);
      if (v4)
      {
        goto LABEL_57;
      }

      v141 = v140;

      *a2 = v137;
      a2[1] = v139;
      a2[2] = v141;
      v29 = MEMORY[0x1E69D7000];
      goto LABEL_78;
    case 0x13uLL:
      v163 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v164 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v165 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);

      v166 = sub_1D6E8DD40(v163, v164);
      v168 = v167;
      v202 = v17;
      v169 = sub_1D6190840(v165, a1);
      if (v4)
      {
LABEL_57:
      }

      v181 = v169;

      *a2 = v166;
      a2[1] = v168;
      a2[2] = v181;
      v29 = MEMORY[0x1E69D7030];
      goto LABEL_78;
    case 0x14uLL:
      v104 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v105 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v106 = v105();
      v107 = sub_1D5E03020(v106, v104);
      if (v3)
      {
        goto LABEL_70;
      }

      v108 = v107;

      *a2 = v108;
      v29 = MEMORY[0x1E69D6FE8];
      goto LABEL_78;
    case 0x15uLL:
      v114 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202 = a1;
      v115 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v116 = v115();
      v117 = sub_1D5E03020(v116, v114);
      if (v3)
      {
        goto LABEL_70;
      }

      v118 = v117;

      *a2 = v118;
      v29 = MEMORY[0x1E69D6FE0];
      goto LABEL_78;
    case 0x16uLL:
      v206 = v14;
      v156 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v201 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (v156)
      {
        v202 = v17;

        v158 = sub_1D6190840(v157, a1);
        if (!v3)
        {
          v159 = v158;

          *a2 = v159;
          v160 = MEMORY[0x1E69D7328];
          if (!v201)
          {
            v160 = MEMORY[0x1E69D7320];
          }

          v161 = v206;
          (*(v8 + 104))(v11, *v160, v206);
          sub_1D6191398();
          (*(v8 + 32))(a2 + *(v162 + 48), v11, v161);
          v29 = MEMORY[0x1E69D7028];
          goto LABEL_78;
        }
      }

      else
      {
        v202 = v17;

        v176 = sub_1D6190840(v175, a1);
        if (!v3)
        {
          v189 = v176;

          *a2 = v189;
          v190 = MEMORY[0x1E69D7328];
          if (!v201)
          {
            v190 = MEMORY[0x1E69D7320];
          }

          v191 = v206;
          (*(v8 + 104))(v16, *v190, v206);
          sub_1D6191398();
          (*(v8 + 32))(a2 + *(v192 + 48), v16, v191);
          v29 = MEMORY[0x1E69D7010];
          goto LABEL_78;
        }
      }

    case 0x17uLL:
      v170 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v171 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v172 = swift_allocObject();
      v172[2] = v170;
      v172[3] = v171;
      v172[4] = a1;
      *a2 = sub_1D6191408;
      a2[1] = v172;
      v173 = *MEMORY[0x1E69D70A0];
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      (*(*(v174 - 8) + 104))(a2, v173, v174);

    case 0x18uLL:
      v68 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v67 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v70 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v69 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v71 = swift_allocObject();
      v71[2] = v68;
      v71[3] = v67;
      v71[4] = v70;
      v71[5] = v69;
      v71[6] = a1;
      *a2 = sub_1D619134C;
      a2[1] = v71;
      v72 = *MEMORY[0x1E69D70B0];
      sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
      (*(*(v73 - 8) + 104))(a2, v72, v73);

    case 0x19uLL:
      v66 = __ROR8__(v17 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v66 > 1)
      {
        if (v66 == 2)
        {
          v29 = MEMORY[0x1E69D6FB8];
        }

        else
        {
          v29 = MEMORY[0x1E69D6FD8];
        }
      }

      else if (v66)
      {
        v29 = MEMORY[0x1E69D7098];
      }

      else
      {
        v29 = MEMORY[0x1E69D7088];
      }

      goto LABEL_78;
    default:
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *(v17 + 40);
      v202 = *(v17 + 16);
      v203 = v18;
      v204 = v19;
      v205 = v20;

      v21 = sub_1D6BA4A00();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      if (v3)
      {
        return result;
      }

      *a2 = v21;
      a2[1] = v23;
      a2[2] = v25;
      a2[3] = v27;
      v29 = MEMORY[0x1E69D7048];
      goto LABEL_78;
  }
}

size_t sub_1D61905D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D6191428(0, &qword_1EDF3C0D8, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v26 - v14;
  v16 = sub_1D6B4D028(a1, a4, a2, a3);
  if (v4)
  {
    return v5;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (!v19)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v29 = v11;
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997900(0, v19, 0);
  v20 = 0;
  v5 = v31;
  v27 = v18;
  v28 = v12;
  v26[1] = v12 + 32;
  while (v20 < *(v18 + 16))
  {
    v21 = v19;
    v22 = *(v18 + 8 * v20 + 32);
    v30 = v22;
    sub_1D5CFEC98(v22);
    sub_1D618F188(a4);
    v23 = a4;
    sub_1D5CFED88(v22);
    v31 = v5;
    v25 = *(v5 + 16);
    v24 = *(v5 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D6997900(v24 > 1, v25 + 1, 1);
      v5 = v31;
    }

    ++v20;
    *(v5 + 16) = v25 + 1;
    result = (*(v28 + 32))(v5 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v15, v29);
    v19 = v21;
    a4 = v23;
    v18 = v27;
    if (v21 == v20)
    {

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_1D6190840(uint64_t a1, void *a2)
{
  v5 = sub_1D725A19C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);

  v13 = sub_1D6FBAAA4(a1, a2, v11, v12);

  if (!v2)
  {
    if (v13 && (~*(v13 + 56) & 0xF000000000000007) != 0)
    {
      v22 = *(v13 + 56);

      v11 = sub_1D5F4FDC4(a2);
    }

    else
    {
      v11 = [objc_opt_self() systemFontOfSize_];
    }

    sub_1D7259EDC();
    sub_1D725A18C();
    v15 = v14;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v22 == 1)
    {
      [v11 pointSize];
      v17 = v16;
      sub_1D7264C3C();
      v18 = round(v15 * (v17 * 4.0) * 0.25);
      if (!v22)
      {
        v18 = v17;
      }

      v19 = [v11 fontWithSize_];

      v11 = v19;
    }

    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

uint64_t _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 1)
      {
        goto LABEL_95;
      }

      goto LABEL_41;
    case 2uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 2)
      {
        goto LABEL_95;
      }

      v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      goto LABEL_31;
    case 3uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 3)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 4uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 4)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 5uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 5)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 6uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 6)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 7uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 7)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 8uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 8)
      {
        goto LABEL_59;
      }

      goto LABEL_95;
    case 9uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 9)
      {
        goto LABEL_95;
      }

      v12 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v13 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v53 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v54) = v12;
      v50 = v13;
      LOBYTE(v51) = v14;
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
      v15 = _s8NewsFeed11FormatRatioO2eeoiySbAC_ACtFZ_0(&v53, &v50);
      goto LABEL_62;
    case 0xAuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xA)
      {
        goto LABEL_95;
      }

      goto LABEL_59;
    case 0xBuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xB)
      {
        goto LABEL_95;
      }

LABEL_59:
      v32 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v33 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v26 = sub_1D633A310(v32, v33);
      goto LABEL_60;
    case 0xCuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xC)
      {
        goto LABEL_95;
      }

LABEL_41:
      v22 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v23 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      v15 = sub_1D6DE1B58(v23, v22);
      goto LABEL_62;
    case 0xDuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xD)
      {
        goto LABEL_95;
      }

      v28 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v27 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v29 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v31 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v30 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      LOBYTE(v53) = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v54 = v28;
      v55 = v27;
      LOBYTE(v50) = v29;
      v51 = v31;
      v52 = v30;
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
      v15 = _s8NewsFeed22FormatResizeConstraintV2eeoiySbAC_ACtFZ_0(&v53, &v50);
      goto LABEL_62;
    case 0xEuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xE)
      {
        goto LABEL_95;
      }

      goto LABEL_35;
    case 0xFuLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0xF)
      {
        goto LABEL_95;
      }

LABEL_35:
      v20 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v21 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v15 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v20, v21);

      goto LABEL_62;
    case 0x10uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 0x10)
      {
        goto LABEL_69;
      }

      goto LABEL_95;
    case 0x11uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x11)
      {
        goto LABEL_95;
      }

      goto LABEL_69;
    case 0x12uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x12)
      {
        goto LABEL_95;
      }

      goto LABEL_69;
    case 0x13uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x13)
      {
        goto LABEL_95;
      }

LABEL_69:
      v38 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v39 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v40 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (!v40 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_95;
      }

      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);

      v41 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v38, v39);

      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if (v41)
      {
        goto LABEL_75;
      }

      goto LABEL_97;
    case 0x14uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x14)
      {
        goto LABEL_95;
      }

      goto LABEL_49;
    case 0x15uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x15)
      {
        goto LABEL_95;
      }

LABEL_49:
      v24 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v26 = sub_1D633D10C(v24, v25);
LABEL_60:
      v15 = v26;
      goto LABEL_61;
    case 0x16uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x16 || *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_95;
      }

      v34 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v35 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v36 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v37 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      LOBYTE(v34) = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v34, v37);
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if (v34 & 1) == 0 || ((v35 ^ v36))
      {
        goto LABEL_97;
      }

      goto LABEL_75;
    case 0x17uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x17)
      {
        goto LABEL_95;
      }

      v43 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v42 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v44 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);

      v15 = sub_1D6B4CF98(v43, v42, v44, v45);

LABEL_61:

LABEL_62:
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      return v15 & 1;
    case 0x18uLL:
      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x18)
      {
        goto LABEL_95;
      }

      v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v7 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v9 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v8 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      goto LABEL_26;
    case 0x19uLL:
      v16 = __ROR8__(v2 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC000000000000014)
          {
            goto LABEL_95;
          }

          sub_1D5CFED88(*a1);
          v18 = 0xC000000000000014;
        }

        else
        {
          if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC00000000000001CLL)
          {
            goto LABEL_95;
          }

          sub_1D5CFED88(*a1);
          v18 = 0xC00000000000001CLL;
        }

        goto LABEL_100;
      }

      if (v16)
      {
        if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) != 0x19 || v3 != 0xC00000000000000CLL)
        {
          goto LABEL_95;
        }

        sub_1D5CFED88(*a1);
        v18 = 0xC00000000000000CLL;
LABEL_100:
        sub_1D5CFED88(v18);
        v15 = 1;
        return v15 & 1;
      }

      if (((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 0x19 && v3 == 0xC000000000000004)
      {
        sub_1D5CFED88(*a1);
        v18 = 0xC000000000000004;
        goto LABEL_100;
      }

LABEL_95:
      sub_1D5CFEC98(v3);
      sub_1D5CFEC98(v2);
LABEL_96:
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
LABEL_97:
      v15 = 0;
      return v15 & 1;
    default:
      if ((v3 >> 59) & 0x1E | (v3 >> 2) & 1)
      {
        goto LABEL_95;
      }

      v5 = *(v2 + 32);
      v4 = *(v2 + 40);
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v11 = *(v3 + 32);
      v10 = *(v3 + 40);
LABEL_26:
      sub_1D5CFEC98(*a2);
      sub_1D5CFEC98(v2);
      if ((sub_1D633A310(v7, v9) & 1) == 0 || (sub_1D633A310(v6, v8) & 1) == 0)
      {
        goto LABEL_96;
      }

LABEL_31:
      if ((sub_1D633A310(v5, v11) & 1) == 0)
      {
        goto LABEL_96;
      }

      v19 = sub_1D633A310(v4, v10);
      sub_1D5CFED88(v2);
      sub_1D5CFED88(v3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_75:
      v15 = 1;
      return v15 & 1;
  }
}

unint64_t sub_1D61912C0(uint64_t a1)
{
  result = sub_1D5CA6224();
  *(a1 + 8) = result;
  return result;
}

unint64_t *sub_1D61912FC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x19)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 25)) | 0xC000000000000004;
  }

  return result;
}

void sub_1D6191398()
{
  if (!qword_1EDF1A718)
  {
    sub_1D5C14A38();
    sub_1D725A30C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A718);
    }
  }
}

void sub_1D6191428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EB5218();
    v7 = a3(a1, &type metadata for FormatLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatOptionBindingModifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D633A250(v3, v4);
}

unint64_t sub_1D61914E0(uint64_t a1)
{
  result = sub_1D6191508();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6191508()
{
  result = qword_1EC884870;
  if (!qword_1EC884870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884870);
  }

  return result;
}

uint64_t sub_1D619155C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D633A250(v3, v4);
}

unint64_t sub_1D61915B0(void *a1)
{
  a1[1] = sub_1D5C6A6CC();
  a1[2] = sub_1D5C6A720();
  result = sub_1D61915E8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61915E8()
{
  result = qword_1EC884878;
  if (!qword_1EC884878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884878);
  }

  return result;
}

uint64_t sub_1D6191664()
{
  sub_1D61917C8(v0 + OBJC_IVAR____TtC8NewsFeed29WebEmbedImageGeneratorContext_request);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedImageGeneratorContext()
{
  result = qword_1EDF09F08;
  if (!qword_1EDF09F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D619172C()
{
  result = type metadata accessor for WebEmbedImageRequest();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D61917C8(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedImageRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugFormatWorkspaceReference()
{
  result = qword_1EC884880;
  if (!qword_1EC884880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6191898()
{
  result = type metadata accessor for DebugFormatCacheFile();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FormatWebEmbedNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatWebEmbedNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatWebEmbedNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatWebEmbedNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatWebEmbedNodeStyle.errorCornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t sub_1D6191AA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t FormatWebEmbedNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatWebEmbedNodeStyle.__allocating_init(identifier:class:cornerRadius:errorCornerRadius:ignoresSmartInvertColors:showsLoadingSpinner:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7, char a8, uint64_t a9)
{
  v14 = swift_allocObject();
  v16 = *a5;
  v15 = a5[1];
  LOBYTE(a5) = *(a5 + 16);
  v17 = *a6;
  v18 = a6[1];
  LOBYTE(a6) = *(a6 + 16);
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;
  *(v14 + 64) = a5;
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  *(v14 + 88) = a6;
  *(v14 + 89) = a7;
  *(v14 + 90) = a8;
  swift_beginAccess();
  *(v14 + 96) = a9;
  return v14;
}

uint64_t FormatWebEmbedNodeStyle.init(identifier:class:cornerRadius:errorCornerRadius:ignoresSmartInvertColors:showsLoadingSpinner:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7, char a8, uint64_t a9)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 16);
  v16 = *a6;
  v17 = a6[1];
  v18 = *(a6 + 16);
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = v13;
  *(v9 + 56) = v14;
  *(v9 + 64) = v15;
  *(v9 + 72) = v16;
  *(v9 + 80) = v17;
  *(v9 + 88) = v18;
  *(v9 + 89) = a7;
  *(v9 + 90) = a8;
  swift_beginAccess();
  *(v9 + 96) = a9;
  return v9;
}

uint64_t sub_1D6191D50(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v154 = v1[4];
  v155 = v1[2];
  v159 = v1[5];
  v160 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  v6 = *(v2 + 64);
  v7 = v4;
  v8 = v5;
  v9 = *(v2 + 64);
  if (v6 >= 0xFE)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    sub_1D5ED34B0(v7, v8, v9);
  }

  v151 = v9;
  v152 = v8;
  v153 = v7;
  v10 = v2[9];
  v11 = v2[10];
  v12 = *(v2 + 88);
  v157 = v11;
  v158 = v10;
  v156 = *(v2 + 88);
  if (v12 >= 0xFE)
  {
    v157 = *(a1 + 80);
    v158 = *(a1 + 72);
    v156 = *(a1 + 88);
    sub_1D5ED34B0(v158, v157, v156);
  }

  v13 = *(v2 + 89);
  if (v13 == 2)
  {
    LOBYTE(v13) = *(a1 + 89);
  }

  v150 = v13;
  v14 = *(v2 + 90);
  if (v14 == 2)
  {
    LOBYTE(v14) = *(a1 + 90);
  }

  v149 = v14;
  swift_beginAccess();
  v15 = v2[12];
  swift_beginAccess();
  v16 = *(a1 + 96);
  v182 = MEMORY[0x1E69E7CC8];
  v17 = *(v15 + 16);
  if (__OFADD__(v17, *(v16 + 16)))
  {
    goto LABEL_95;
  }

  v170 = *(v16 + 16);

  sub_1D5ED34B0(v4, v5, v6);
  sub_1D5ED34B0(v10, v11, v12);
  sub_1D61938C8();

  sub_1D7261DAC();
  v173 = sub_1D698F4BC(0, v17, 0, MEMORY[0x1E69E7CC0]);
  v18 = *(v15 + 16);
  v162 = v16;
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 32);
    v21 = v18 - 1;
    while (1)
    {
      v23 = v20[1];
      v22 = v20[2];
      v24 = *v20;
      *&v181[11] = *(v20 + 43);
      v180 = v23;
      *v181 = v22;
      v179 = v24;
      v25 = v24;
      sub_1D619392C(&v179, &v176);
      sub_1D619392C(&v179, &v176);
      v26 = v182;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v174[0] = v26;
      v28 = sub_1D6D8CB60(v25, *(&v25 + 1));
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v34 = v29;
      if (v26[3] < v33)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v44 = v28;
      sub_1D6D82674();
      v28 = v44;
      if (v34)
      {
LABEL_18:
        v36 = *&v174[0];
        v37 = (*(*&v174[0] + 56) + (v28 << 6));
        v39 = v37[1];
        v38 = v37[2];
        v40 = *v37;
        *&v178[11] = *(v37 + 43);
        v177 = v39;
        *v178 = v38;
        v176 = v40;
        v41 = v179;
        v42 = v180;
        v43 = *v181;
        *(v37 + 43) = *&v181[11];
        v37[1] = v42;
        v37[2] = v43;
        *v37 = v41;
        sub_1D6193964(&v176);
        goto LABEL_22;
      }

LABEL_20:
      v36 = *&v174[0];
      *(*&v174[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v36[6] + 16 * v28) = v25;
      v45 = (v36[7] + (v28 << 6));
      v46 = *&v181[11];
      v48 = v180;
      v47 = *v181;
      *v45 = v179;
      v45[1] = v48;
      v45[2] = v47;
      *(v45 + 43) = v46;
      v49 = v36[2];
      v32 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v32)
      {
        goto LABEL_91;
      }

      v36[2] = v50;

LABEL_22:
      v182 = v36;

      sub_1D6193964(&v179);
      v52 = *(v173 + 2);
      v51 = *(v173 + 3);
      if (v52 >= v51 >> 1)
      {
        v173 = sub_1D698F4BC((v51 > 1), v52 + 1, 1, v173);
      }

      *(v173 + 2) = v52 + 1;
      *&v173[16 * v52 + 32] = v25;
      if (v21 == v19)
      {
        goto LABEL_27;
      }

      ++v19;
      v20 += 4;
      if (v19 >= *(v15 + 16))
      {
        goto LABEL_87;
      }
    }

    sub_1D6D6E138(v33, isUniquelyReferenced_nonNull_native);
    v28 = sub_1D6D8CB60(v25, *(&v25 + 1));
    if ((v34 & 1) != (v35 & 1))
    {
      goto LABEL_96;
    }

LABEL_17:
    if (v34)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_27:
  v53 = sub_1D698F4BC(0, v170, 0, MEMORY[0x1E69E7CC0]);
  v54 = *(v16 + 16);
  if (!v54)
  {
    goto LABEL_68;
  }

  v55 = 0;
  v56 = v54 - 1;
  v57 = 32;
  v161 = v54 - 1;
  do
  {
    v59 = *(v16 + v57 + 16);
    v58 = *(v16 + v57 + 32);
    v60 = *(v16 + v57);
    *&v181[11] = *(v16 + v57 + 43);
    v180 = v59;
    *v181 = v58;
    v179 = v60;
    v61 = v60;
    v62 = v182;
    if (v182[2])
    {
      sub_1D619392C(&v179, &v176);
      v63 = sub_1D6D8CB60(v61, *(&v61 + 1));
      if (v64)
      {
        v168 = v57;
        v169 = v53;
        v65 = (v62[7] + (v63 << 6));
        v66 = *(v65 + 43);
        v67 = v65[2];
        v68 = *v65;
        v177 = v65[1];
        *v178 = v67;
        v176 = v68;
        *&v178[11] = v66;
        v69 = v177;
        v70 = v67;
        v72 = *(&v177 + 1);
        v71 = v177;
        v73 = v67;
        if (v67 > 0xFDu)
        {
          v72 = *(&v180 + 1);
          v71 = v180;
          v73 = v181[0];
          sub_1D5ED34B0(v180, *(&v180 + 1), v181[0]);
        }

        v165 = v73;
        v166 = v72;
        v167 = v71;
        v74 = *&v178[8];
        v75 = *&v178[16];
        v76 = v178[24];
        v77 = *&v178[8];
        v78 = *&v178[16];
        v171 = v178[24];
        if (v178[24] > 0xFDu)
        {
          v77 = *&v181[8];
          v78 = *&v181[16];
          v171 = v181[24];
          sub_1D5ED34B0(*&v181[8], *&v181[16], v181[24]);
        }

        if (v178[25] == 2)
        {
          v79 = v181[25];
        }

        else
        {
          v79 = v178[25];
        }

        v80 = v178[26];
        if (v178[26] == 2)
        {
          v80 = v181[26];
        }

        v163 = v80;
        v164 = v79;
        v81 = v176;
        sub_1D5ED34B0(v69, *(&v69 + 1), v70);
        sub_1D5ED34B0(v74, v75, v76);

        sub_1D619392C(&v176, v174);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v83 = sub_1D6D8CB60(v81, *(&v81 + 1));
        v85 = v62[2];
        v86 = (v84 & 1) == 0;
        v32 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v32)
        {
          goto LABEL_93;
        }

        v88 = v84;
        if (v62[3] >= v87)
        {
          v57 = v168;
          v53 = v169;
          v56 = v161;
          if ((v82 & 1) == 0)
          {
            v120 = v83;
            sub_1D6D82674();
            v83 = v120;
            if (v88)
            {
              goto LABEL_54;
            }

            goto LABEL_63;
          }
        }

        else
        {
          sub_1D6D6E138(v87, v82);
          v83 = sub_1D6D8CB60(v81, *(&v81 + 1));
          v57 = v168;
          v53 = v169;
          v56 = v161;
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_96;
          }
        }

        if (v88)
        {
LABEL_54:
          v106 = v62;
          v107 = v62[7] + (v83 << 6);
          v109 = *(v107 + 16);
          v108 = *(v107 + 32);
          v110 = *v107;
          *&v175[11] = *(v107 + 43);
          v174[1] = v109;
          *v175 = v108;
          v174[0] = v110;
          *v107 = v81;
          *(v107 + 16) = v167;
          *(v107 + 24) = v166;
          *(v107 + 32) = v165;
          *(v107 + 40) = v77;
          *(v107 + 48) = v78;
          *(v107 + 56) = v171;
          *(v107 + 57) = v164;
          *(v107 + 58) = v163;
          sub_1D6193964(v174);
          goto LABEL_65;
        }

LABEL_63:
        v106 = v62;
        v62[(v83 >> 6) + 8] |= 1 << v83;
        *(v62[6] + 16 * v83) = v81;
        v121 = v62[7] + (v83 << 6);
        *v121 = v81;
        *(v121 + 16) = v167;
        *(v121 + 24) = v166;
        *(v121 + 32) = v165;
        *(v121 + 40) = v77;
        *(v121 + 48) = v78;
        *(v121 + 56) = v171;
        *(v121 + 57) = v164;
        *(v121 + 58) = v163;
        v122 = v62[2];
        v32 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v32)
        {
          goto LABEL_94;
        }

        v62[2] = v123;

LABEL_65:
        sub_1D6193964(&v176);
        sub_1D6193964(&v179);
        v182 = v106;
        v16 = v162;
        if (v56 == v55)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

    else
    {
      sub_1D619392C(&v179, &v176);
    }

    sub_1D619392C(&v179, &v176);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v174[0] = v62;
    v91 = sub_1D6D8CB60(v61, *(&v61 + 1));
    v93 = v62[2];
    v94 = (v92 & 1) == 0;
    v32 = __OFADD__(v93, v94);
    v95 = v93 + v94;
    if (v32)
    {
      goto LABEL_90;
    }

    v96 = v92;
    if (v62[3] < v95)
    {
      sub_1D6D6E138(v95, v90);
      v91 = sub_1D6D8CB60(v61, *(&v61 + 1));
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_96;
      }

LABEL_50:
      if (v96)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }

    if (v90)
    {
      goto LABEL_50;
    }

    v111 = v91;
    sub_1D6D82674();
    v91 = v111;
    if (v96)
    {
LABEL_51:
      v98 = *&v174[0];
      v99 = (*(*&v174[0] + 56) + (v91 << 6));
      v101 = v99[1];
      v100 = v99[2];
      v102 = *v99;
      *&v178[11] = *(v99 + 43);
      v177 = v101;
      *v178 = v100;
      v176 = v102;
      v103 = v179;
      v104 = v180;
      v105 = *v181;
      *(v99 + 43) = *&v181[11];
      v99[1] = v104;
      v99[2] = v105;
      *v99 = v103;
      sub_1D6193964(&v176);
      goto LABEL_58;
    }

LABEL_56:
    v98 = *&v174[0];
    *(*&v174[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
    *(v98[6] + 16 * v91) = v61;
    v112 = (v98[7] + (v91 << 6));
    v113 = *&v181[11];
    v115 = v180;
    v114 = *v181;
    *v112 = v179;
    v112[1] = v115;
    v112[2] = v114;
    *(v112 + 43) = v113;
    v116 = v98[2];
    v32 = __OFADD__(v116, 1);
    v117 = v116 + 1;
    if (v32)
    {
      goto LABEL_92;
    }

    v98[2] = v117;

LABEL_58:
    v182 = v98;
    v118 = *(v53 + 2);
    v119 = *(v53 + 3);

    if (v118 >= v119 >> 1)
    {
      v53 = sub_1D698F4BC((v119 > 1), v118 + 1, 1, v53);
    }

    sub_1D6193964(&v179);
    *(v53 + 2) = v118 + 1;
    *&v53[16 * v118 + 32] = v61;
    if (v56 == v55)
    {
      goto LABEL_68;
    }

LABEL_66:
    ++v55;
    v57 += 64;
  }

  while (v55 < *(v16 + 16));
  __break(1u);
LABEL_68:

  *&v179 = v53;

  sub_1D6985DAC(v124);
  v125 = *(v179 + 16);
  if (v125)
  {
    v126 = 0;
    v127 = v179 + 40;
    v128 = MEMORY[0x1E69E7CC0];
    v172 = v179 + 40;
LABEL_70:
    v129 = v53;
    v130 = v182;
    v131 = (v127 + 16 * v126);
    v132 = v126;
    while (v132 < v125)
    {
      v126 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_89;
      }

      if (v130[2])
      {
        v134 = *(v131 - 1);
        v133 = *v131;

        v135 = sub_1D6D8CB60(v134, v133);
        if (v136)
        {
          v137 = (v130[7] + (v135 << 6));
          v138 = *(v137 + 43);
          v139 = v137[2];
          v140 = *v137;
          v180 = v137[1];
          *v181 = v139;
          v179 = v140;
          *&v181[11] = v138;
          sub_1D619392C(&v179, &v176);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_1D698D6C8(0, *(v128 + 2) + 1, 1, v128);
          }

          v53 = v129;
          v127 = v172;
          v142 = *(v128 + 2);
          v141 = *(v128 + 3);
          if (v142 >= v141 >> 1)
          {
            v128 = sub_1D698D6C8((v141 > 1), v142 + 1, 1, v128);
          }

          *(v128 + 2) = v142 + 1;
          v143 = &v128[64 * v142];
          v144 = v179;
          v145 = v180;
          v146 = *v181;
          *(v143 + 75) = *&v181[11];
          *(v143 + 3) = v145;
          *(v143 + 4) = v146;
          *(v143 + 2) = v144;
          if (v126 != v125)
          {
            goto LABEL_70;
          }

          goto LABEL_85;
        }
      }

      ++v132;
      v131 += 2;
      if (v126 == v125)
      {
        goto LABEL_85;
      }
    }

    goto LABEL_88;
  }

  v128 = MEMORY[0x1E69E7CC0];
LABEL_85:

  v147 = swift_allocObject();
  swift_beginAccess();
  *(v147 + 16) = v155;
  *(v147 + 24) = v160;
  *(v147 + 32) = v154;
  *(v147 + 40) = v159;
  *(v147 + 48) = v153;
  *(v147 + 56) = v152;
  *(v147 + 64) = v151;
  *(v147 + 72) = v158;
  *(v147 + 80) = v157;
  *(v147 + 88) = v156;
  *(v147 + 89) = v150;
  *(v147 + 90) = v149;
  swift_beginAccess();
  *(v147 + 96) = v128;
  return v147;
}

uint64_t sub_1D61928B4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D6C8(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v75 = sub_1D698D558(0, v5, 0, v6);
  v78 = *(v4 + 16);
  if (v78)
  {
    v69 = v7;
    v73 = v2;
    v8 = 0;
    while (1)
    {
      v9 = (v4 + 32 + (v8 << 6));
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      *(v83 + 11) = *(v9 + 43);
      v82 = v11;
      v83[0] = v10;
      v81 = v12;
      v13 = v12;
      sub_1D619392C(&v81, &v84);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v84 = v13;

      v14 = sub_1D6844380(&v84);

      v16 = *(v14 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = 32;
        while (1)
        {
          if (v17 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v20 = *(v14 + v18 + 16);
          v19 = *(v14 + v18 + 32);
          v21 = *(v14 + v18);
          v89 = *(v14 + v18 + 48);
          v88[1] = v20;
          v88[2] = v19;
          v88[0] = v21;
          v22 = v20;
          sub_1D5E3B610(v88, &v84);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v17;
          result = sub_1D5E3B66C(v88);
          v18 += 56;
          if (v16 == v17)
          {
            goto LABEL_10;
          }
        }

        result = sub_1D5E3B66C(v88);
        if (v22 <= 1)
        {
          v30 = *(v69 + 16);
          v29 = *(v69 + 24);
          if (v30 >= v29 >> 1)
          {
            result = sub_1D698D6C8((v29 > 1), v30 + 1, 1, v69);
            v69 = result;
          }

          *(v69 + 16) = v30 + 1;
          v31 = (v69 + (v30 << 6));
          v32 = v81;
          v33 = v82;
          v34 = v83[0];
          *(v31 + 75) = *(v83 + 11);
          v31[3] = v33;
          v31[4] = v34;
          v31[2] = v32;
        }

        else
        {
          v84 = v81;
          v85 = v82;
          v86[0] = v83[0];
          *(v86 + 11) = *(v83 + 11);
          sub_1D619392C(&v81, v80);
          v24 = v75[2];
          v23 = v75[3];
          if (v24 >= v23 >> 1)
          {
            v75 = sub_1D698D558((v23 > 1), v24 + 1, 1, v75);
          }

          result = sub_1D6193964(&v81);
          v75[2] = v24 + 1;
          v25 = &v75[9 * v24];
          v26 = v86[1];
          v27 = v84;
          v28 = v85;
          *(v25 + 4) = v86[0];
          *(v25 + 5) = v26;
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          v25[12] = v22;
        }
      }

      else
      {
LABEL_10:
        sub_1D6193964(&v81);
      }

      if (++v8 == v78)
      {
        break;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_45;
      }
    }

    v2 = v73;
    v7 = v69;
  }

  else
  {
  }

  sub_1D6193994();
  v35 = sub_1D72626AC();

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v36 - 1;
    for (i = 32; ; i += 72)
    {
      v84 = *(v35 + i);
      v39 = *(v35 + i + 16);
      v40 = *(v35 + i + 32);
      v41 = *(v35 + i + 48);
      v87 = *(v35 + i + 64);
      v86[0] = v40;
      v86[1] = v41;
      v85 = v39;
      sub_1D6193A44(&v84, &v81);
      v43 = *(v7 + 2);
      v42 = *(v7 + 3);
      if (v43 >= v42 >> 1)
      {
        v7 = sub_1D698D6C8((v42 > 1), v43 + 1, 1, v7);
      }

      *(v7 + 2) = v43 + 1;
      v44 = &v7[64 * v43];
      v45 = v84;
      v46 = v85;
      v47 = v86[0];
      *(v44 + 75) = *(v86 + 11);
      *(v44 + 3) = v46;
      *(v44 + 4) = v47;
      *(v44 + 2) = v45;
      if (!v37)
      {
        break;
      }

      --v37;
    }
  }

  v48 = *(v7 + 2);

  v68 = v48;
  if (v48)
  {
    v49 = 0;
    v50 = (v7 + 90);
    v70 = v7;
    while (v49 < *(v7 + 2))
    {
      v52 = *(v50 - 42);
      v53 = *(v50 - 34);
      v54 = *(v50 - 26);
      v77 = *(v50 - 10);
      v79 = *(v50 - 18);
      v76 = *(v50 - 2);
      v55 = *(v50 - 1);
      v71 = *v50;
      v56 = swift_allocObject();
      swift_beginAccess();
      v58 = *(v2 + 16);
      v57 = *(v2 + 24);
      swift_beginAccess();
      *(v56 + 16) = v58;
      *(v56 + 24) = v57;
      v59 = *(v2 + 40);
      v60 = v2;
      *(v56 + 32) = *(v2 + 32);
      *(v56 + 40) = v59;
      v72 = v53;
      v74 = v52;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      if (v54 >= 0xFE)
      {
        v61 = *(v2 + 48);
        v62 = *(v2 + 56);
        v63 = *(v2 + 64);
        sub_1D5ED34B0(v61, v62, v63);
      }

      *(v56 + 48) = v61;
      *(v56 + 56) = v62;
      v65 = v77;
      v64 = v79;
      v66 = v76;
      *(v56 + 64) = v63;
      if (v76 >= 0xFE)
      {
        v64 = *(v60 + 72);
        v65 = *(v60 + 80);
        v66 = *(v60 + 88);
        sub_1D5ED34B0(v64, v65, v66);
      }

      *(v56 + 72) = v64;
      *(v56 + 80) = v65;
      *(v56 + 88) = v66;
      if (v55 == 2)
      {
        LOBYTE(v55) = *(v60 + 89);
      }

      *(v56 + 89) = v55;
      v67 = v71;
      if (v71 == 2)
      {
        v67 = *(v60 + 90);
      }

      ++v49;
      *(v56 + 90) = v67;
      swift_beginAccess();
      v51 = *(v60 + 96);

      sub_1D5ED34B0(v74, v72, v54);
      sub_1D5ED34B0(v79, v77, v76);

      result = swift_beginAccess();
      *(v56 + 96) = v51;
      v50 += 64;
      v2 = v56;
      v7 = v70;
      if (v68 == v49)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {
    v56 = v2;
LABEL_42:

    return v56;
  }

  return result;
}

uint64_t sub_1D6192EC8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[5];
  v13 = v0[4];
  v14 = v0[2];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[9];
  v7 = v0[10];
  v15 = *(v1 + 89);
  v8 = *(v1 + 64);
  v9 = *(v1 + 88);
  swift_beginAccess();
  v10 = v1[12];
  v11 = swift_allocObject();
  swift_beginAccess();
  *(v11 + 16) = v14;
  *(v11 + 24) = v2;
  *(v11 + 32) = v13;
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 64) = v8;
  *(v11 + 72) = v6;
  *(v11 + 80) = v7;
  *(v11 + 88) = v9;
  *(v11 + 89) = v15;
  swift_beginAccess();
  *(v11 + 96) = v10;

  sub_1D5ED34B0(v4, v5, v8);
  sub_1D5ED34B0(v6, v7, v9);

  return v11;
}

uint64_t FormatWebEmbedNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return v0;
}

uint64_t FormatWebEmbedNodeStyle.__deallocating_deinit()
{

  sub_1D5ED348C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t FormatWebEmbedNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatWebEmbedNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatWebEmbedNodeStyle.Selector.errorCornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t _s8NewsFeed23FormatWebEmbedNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v23 = *(a1 + 58);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v26 = *(a2 + 40);
  v27 = *(a1 + 48);
  v11 = *(a2 + 56);
  v24 = *(a2 + 57);
  v25 = *(a1 + 57);
  v22 = *(a2 + 58);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v8, v7, v9);
    if (v9 > 0xFD)
    {
      sub_1D5ED348C(v2, v3, v4);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D5ED348C(v2, v3, v4);
    v12 = v8;
    v13 = v7;
    v14 = v9;
LABEL_17:
    sub_1D5ED348C(v12, v13, v14);
    return 0;
  }

  v31 = v2;
  v32 = v3;
  v33 = v4;
  if (v9 > 0xFD)
  {
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v2, v3, v4);
    sub_1D5ED34A0(v2, v3, v4);
    goto LABEL_9;
  }

  v28 = v8;
  v29 = v7;
  v30 = v9;
  sub_1D5ED34B0(v2, v3, v4);
  sub_1D5ED34B0(v8, v7, v9);
  sub_1D5ED34B0(v2, v3, v4);
  v15 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v31, &v28);
  sub_1D5ED34A0(v28, v29, v30);
  sub_1D5ED34A0(v31, v32, v33);
  sub_1D5ED348C(v2, v3, v4);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v16 = v5;
  if (v6 > 0xFD)
  {
    v17 = v27;
    sub_1D5ED34B0(v5, v27, v6);
    v18 = v26;
    v19 = v10;
    sub_1D5ED34B0(v26, v10, v11);
    if (v11 > 0xFD)
    {
      sub_1D5ED348C(v16, v27, v6);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v17 = v27;
  v31 = v5;
  v32 = v27;
  v33 = v6;
  v19 = v10;
  if (v11 > 0xFD)
  {
    sub_1D5ED34B0(v5, v27, v6);
    v18 = v26;
    sub_1D5ED34B0(v26, v10, v11);
    sub_1D5ED34B0(v16, v27, v6);
    sub_1D5ED34A0(v16, v27, v6);
LABEL_16:
    sub_1D5ED348C(v16, v17, v6);
    v12 = v18;
    v13 = v19;
    v14 = v11;
    goto LABEL_17;
  }

  v28 = v26;
  v29 = v10;
  v30 = v11;
  sub_1D5ED34B0(v5, v27, v6);
  sub_1D5ED34B0(v26, v10, v11);
  sub_1D5ED34B0(v5, v27, v6);
  v21 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v31, &v28);
  sub_1D5ED34A0(v28, v29, v30);
  sub_1D5ED34A0(v31, v32, v33);
  sub_1D5ED348C(v5, v27, v6);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (v25 == 2)
  {
    if (v24 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  result = 0;
  if (v24 != 2 && ((v24 ^ v25) & 1) == 0)
  {
LABEL_26:
    if (v23 == 2)
    {
      if (v22 == 2)
      {
        return 1;
      }
    }

    else if (v22 != 2 && ((v22 ^ v23) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D619351C(uint64_t a1)
{
  result = sub_1D6193654(&qword_1EC884890);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6193560(uint64_t a1)
{
  *(a1 + 16) = sub_1D6193654(&qword_1EDF26D80);
  result = sub_1D6193654(&qword_1EDF0D2F0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D61935C8(void *a1)
{
  a1[1] = sub_1D6193654(&qword_1EDF26D80);
  a1[2] = sub_1D6193654(&qword_1EDF0D2F0);
  result = sub_1D6193654(&qword_1EC884898);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6193654(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWebEmbedNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6193694(uint64_t a1)
{
  result = sub_1D61936BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61936BC()
{
  result = qword_1EC8848A0;
  if (!qword_1EC8848A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848A0);
  }

  return result;
}

unint64_t sub_1D6193710(uint64_t a1)
{
  *(a1 + 8) = sub_1D5CCC7A8();
  result = sub_1D5CCC7FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6193740(void *a1)
{
  a1[1] = sub_1D5CCC7A8();
  a1[2] = sub_1D5CCC7FC();
  result = sub_1D6193778();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6193778()
{
  result = qword_1EC8848A8;
  if (!qword_1EC8848A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848A8);
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D619381C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_1D6193864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D61938C8()
{
  if (!qword_1EDF05848)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05848);
    }
  }
}

void sub_1D6193994()
{
  if (!qword_1EDF0A930)
  {
    sub_1D61939F0();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A930);
    }
  }
}

unint64_t sub_1D61939F0()
{
  result = qword_1EDF0D2F8;
  if (!qword_1EDF0D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D2F8);
  }

  return result;
}

uint64_t sub_1D6193A44(uint64_t a1, uint64_t a2)
{
  sub_1D6193994();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D6193AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v46[6] = *(a1 + 96);
  v46[7] = v3;
  v46[8] = *(a1 + 128);
  v47 = *(a1 + 144);
  v4 = *(a1 + 48);
  v46[2] = *(a1 + 32);
  v46[3] = v4;
  v5 = *(a1 + 80);
  v46[4] = *(a1 + 64);
  v46[5] = v5;
  v6 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8();
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = (v12 + v11);
  v38 = v10;
  if (a2)
  {
    v14 = *(a2 + 40);
    v37 = *(a2 + 32);
    v15 = sub_1D6192EC8();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 64) = 0x2000000000000000;

    v17 = sub_1D601118C;
  }

  else
  {
    v17 = sub_1D70DD9D8;
    v16 = 0;
    v37 = 0;
    v14 = 0xE000000000000000;
  }

  v18 = type metadata accessor for FormatInspectionItem(0);
  v19 = &v13[*(v18 + 24)];
  *v19 = v17;
  v19[1] = v16;
  v20 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  *(v12 + v11) = v37;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v14;
  v21 = &v13[*(v18 + 28)];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -1;
  v22 = *(*(v18 - 8) + 56);
  v22(v13, 0, 1, v18);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v12, v42);
  swift_setDeallocating();
  sub_1D6180C78(v13);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(inited + 32) = v23;
  *(v23 + 48) = v43;
  v24 = v42[1];
  *(v23 + 16) = v42[0];
  *(v23 + 32) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7279970;
  v26 = v25 + v11;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x65626D4520626557, 0xE900000000000064, (v25 + v11));
  v22((v25 + v11), 0, 1, v18);
  if (a2)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(a2 + 89), (v26 + v38));
    v22((v26 + v38), 0, 1, v18);
    v27 = *(a2 + 90);
  }

  else
  {
    v27 = 2;
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v26 + v38));
    v22((v26 + v38), 0, 1, v18);
  }

  v28 = (v26 + 2 * v38);
  sub_1D711E9F0(0xD000000000000015, 0x80000001D73CCE10, v27, v28);
  v22(v28, 0, 1, v18);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v25, v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(inited + 72) = v29;
  *(v29 + 48) = v45;
  v30 = v44[1];
  *(v29 + 16) = v44[0];
  *(v29 + 32) = v30;
  if (a2)
  {
    v31 = *(a2 + 48);
    v32 = *(a2 + 56);
    v33 = *(a2 + 64);
    sub_1D5ED34B0(v31, v32, v33);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = -2;
  }

  v39 = v31;
  v40 = v32;
  v41 = v33;
  v34 = sub_1D6D9893C(v46, &v39);
  sub_1D5ED348C(v39, v40, v41);
  *(inited + 136) = &type metadata for FormatInspection;
  *(inited + 144) = &off_1F51E3FD0;
  *(inited + 112) = v34;
  v35 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v35;
}

uint64_t sub_1D6194084@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a2;
  v44 = a1;
  sub_1D6194C38(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F7BAC0();
  v48 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - v17;
  sub_1D6194E68(0, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
  v45 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v51 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v50 = &v42 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v54 >> 62)
  {
    v25 = sub_1D7263BFC();
  }

  else
  {
    v25 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 1;
  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v14;
    sub_1D72600CC();

    swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = v47;
    v27[2] = v44;
    v27[3] = v28;
    v27[4] = v46;
    v27[5] = a4;
    sub_1D5EF3A64(0);
    v42 = v29;
    sub_1D6194E68(0, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    v44 = v18;
    v46 = a5;
    sub_1D6194FB0(&qword_1EC8848F0, sub_1D5EF3A64);
    v30 = v48;
    sub_1D61951D8();

    v31 = v50;
    v32 = v46;
    sub_1D72619DC();
    v33 = v31 + *(v45 + 36);
    *v33 = xmmword_1D7286690;
    *(v33 + 16) = xmmword_1D72866A0;
    *(v33 + 32) = 0;
    v54 = 0;
    v55 = 1;
    sub_1D7260EDC();
    v34 = v44;
    sub_1D72617DC();
    v35 = v51;
    sub_1D5D7FC54(v31, v51);
    v36 = *(v11 + 16);
    v37 = v43;
    v36(v43, v34, v30);
    v38 = v49;
    sub_1D5D7FC54(v35, v49);
    sub_1D6194CD0();
    v36((v38 + *(v39 + 48)), v37, v30);
    v40 = *(v11 + 8);
    v40(v34, v30);
    sub_1D5D7FCE8(v31);
    v40(v37, v30);
    sub_1D5D7FCE8(v35);
    a5 = v32;
    sub_1D5D7FD74(v38, v32);
    v26 = 0;
  }

  return (*(v52 + 56))(a5, v26, 1, v53);
}

void sub_1D61945CC(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1D6194EDC();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a2 + 16);
  type metadata accessor for DebugFormatInventoryTreePackage();
  swift_allocObject();

  sub_1D6E2D6D8(v13, v12);

  type metadata accessor for DebugFormatInventoryTree();
  sub_1D6194FB0(&qword_1EC894480, type metadata accessor for DebugFormatInventoryTree);
  v14 = sub_1D7260F8C();
  v16 = v15;
  sub_1D6194FB0(&qword_1EC884910, type metadata accessor for DebugFormatInventoryTreePackage);
  v17 = sub_1D7260F8C();
  v22[0] = v14;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  sub_1D7260EDC();
  sub_1D6194F5C();
  sub_1D72617DC();

  if (sub_1D61952E4(v12))
  {
    sub_1D5C0B9F0();
    sub_1D726357C();
    v19 = sub_1D726189C();
  }

  else
  {
    v19 = sub_1D726185C();
  }

  v22[0] = v19;
  v20 = sub_1D726199C();
  (*(v8 + 32))(a3, v11, v7);
  sub_1D6194E68(0, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
  *(a3 + *(v21 + 36)) = v20;
}

uint64_t sub_1D619487C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = 0xE600000000000000;
      v7 = 0x73656D656854;
    }

    else if (v4 == 4)
    {
      v5 = 0xE800000000000000;
      v7 = 0x736C6C6177796150;
    }

    else
    {
      v5 = 0xEB0000000073646ELL;
      v7 = 0x756F72676B636142;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (*(a1 + 32))
    {
      if (v4 == 1)
      {
        v6 = 1684104520;
      }

      else
      {
        v6 = 1953460038;
      }

      v7 = v6 | 0x73726500000000;
    }

    else
    {
      v7 = 0x7374756F79614CLL;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v12 >> 62)
  {
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(a1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatInventoryTreeRole_unfilteredDebugPackages);
  if (v9 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 49) = result == 0;
  return result;
}

uint64_t sub_1D6194A38()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  swift_retain_n();
  sub_1D72619BC();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v4;
  v8[5] = v3;
  sub_1D6194C6C(0, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
  sub_1D5F7BB40();
  sub_1D6194FF8();

  return sub_1D7260FFC();
}

void sub_1D6194C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6194CD0()
{
  if (!qword_1EC8848C0)
  {
    sub_1D6194E68(255, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8848C0);
    }
  }
}

void sub_1D6194D70()
{
  if (!qword_1EC8848D0)
  {
    sub_1D5EF3A64(255);
    sub_1D6194E68(255, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    sub_1D6194FB0(&qword_1EC8848F0, sub_1D5EF3A64);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8848D0);
    }
  }
}

void sub_1D6194E68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6194EDC()
{
  if (!qword_1EC8848E0)
  {
    sub_1D6194F5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8848E0);
    }
  }
}

unint64_t sub_1D6194F5C()
{
  result = qword_1EC8848E8;
  if (!qword_1EC8848E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848E8);
  }

  return result;
}

uint64_t sub_1D6194FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6194FF8()
{
  result = qword_1EC8848F8;
  if (!qword_1EC8848F8)
  {
    sub_1D6194C6C(255, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
    sub_1D6194FB0(&qword_1EC884900, sub_1D6194C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8848F8);
  }

  return result;
}

uint64_t sub_1D61950D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6195150()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

unint64_t sub_1D61951D8()
{
  result = qword_1EC884908;
  if (!qword_1EC884908)
  {
    sub_1D6194E68(255, &qword_1EC8848D8, sub_1D6194EDC, sub_1D5F260A0);
    sub_1D6194F5C();
    swift_getOpaqueTypeConformance2();
    sub_1D6194FB0(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884908);
  }

  return result;
}

uint64_t sub_1D61952E4(uint64_t a1)
{
  sub_1D6195740(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v35[10] = v31;
  v35[11] = v32;
  v35[12] = v33;
  v35[6] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v35[5] = v26;
  v35[0] = v21;
  v35[1] = v22;
  v37[10] = v31;
  v37[11] = v32;
  v38 = v33;
  v37[6] = v27;
  v37[7] = v28;
  v37[8] = v29;
  v37[9] = v30;
  v37[2] = v23;
  v37[3] = v24;
  v37[4] = v25;
  v37[5] = v26;
  v36 = v34;
  v39 = v34;
  v37[0] = v21;
  v37[1] = v22;
  if (sub_1D5DEA380(v37) == 1)
  {
    goto LABEL_26;
  }

  v6 = *(a1 + 16);
  if (*(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) != 4)
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    v13 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
    if (!(*(*(v13 - 8) + 48))(v5, 1, v13))
    {
      v14 = *(v5 + *(v13 + 24));

      sub_1D6195774(v5, sub_1D6195740);
      v15 = *(v14 + 16);

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);

      if (v17 == *(v6 + 16) && v16 == *(v6 + 24))
      {
        sub_1D6195774(v35, sub_1D61957D4);

        v18 = 1;
      }

      else
      {
        v18 = sub_1D72646CC();
        sub_1D6195774(v35, sub_1D61957D4);
      }

      return v18 & 1;
    }

    sub_1D6195774(v5, sub_1D6195740);
LABEL_25:
    sub_1D6195774(v35, sub_1D61957D4);
LABEL_26:
    v18 = 0;
    return v18 & 1;
  }

  v5 = *(&v38 + 1);
  if (*(&v38 + 1) >> 62)
  {
LABEL_32:
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((*(&v38 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      goto LABEL_25;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA6FB460](v8, v5);
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v9 = *(v5 + 8 * v8 + 32);

      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }
    }

    v10 = *(v9 + 16);
    if (*(v10 + 16) == *(v6 + 16) && *(v10 + 24) == *(v6 + 24))
    {
      break;
    }

    v12 = sub_1D72646CC();

    ++v8;
    if (v12)
    {

      goto LABEL_29;
    }
  }

LABEL_29:
  sub_1D6195774(v35, sub_1D61957D4);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D6195774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61957D4()
{
  if (!qword_1EC880D80[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EC880D80);
    }
  }
}

void sub_1D6195824()
{
  if (!qword_1EC884920)
  {
    sub_1D6194C6C(255, &qword_1EC8848B0, sub_1D6194C38, MEMORY[0x1E69E6720]);
    sub_1D5F7BB40();
    sub_1D6194FF8();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884920);
    }
  }
}

uint64_t sub_1D61958DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
    if (*(v4 + 16))
    {
      v6 = sub_1D5B69D90(a1, a2);
      if (v7 & 1) != 0 || *(v4 + 16) && (v6 = sub_1D5B69D90(42, 0xE100000000000000), (v8))
      {
        v9 = *(*(*(v4 + 56) + 8 * v6) + 136);
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);

        v10 = sub_1D725AA4C();
        if (*(v9 + 16))
        {
          sub_1D5B69D90(v10, v11);
          v13 = v12;

          if (v13)
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D6195A38(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v13 = *a1;
  v12 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v17 = a1[4];
  v16 = a1[5];
  v18 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
  swift_beginAccess();
  sub_1D6196C40(v2 + v18, v7);
  sub_1D5B68374((v7 + 8), v31);
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  v30 = v16;

  sub_1D62F3AA0(v31, &v25, v11);
  sub_1D6196984(v7);
  sub_1D5E42B34();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D72816C0;
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  v30 = v16;
  type metadata accessor for FormatSlot();
  swift_allocObject();

  *(v19 + 32) = sub_1D7251C5C(&v25);
  sub_1D6196C40(v11, v7);
  v25 = v19;
  sub_1D6196D98(0, &qword_1EDF05188, type metadata accessor for FormatSlot, MEMORY[0x1E69E62F8]);
  sub_1D6196CA4();
  sub_1D5B57300(&qword_1EDF12998, type metadata accessor for FormatSlot);

  v20 = sub_1D72623BC();

  type metadata accessor for FormatNodeAuxiliaryBinder(0);
  v21 = swift_allocObject();
  sub_1D6196D2C(v7, v21 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext);
  *(v21 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots) = v20;
  v22 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *(v2 + v22);
  *(v2 + v22) = 0x8000000000000000;
  sub_1D6D789A8(v21, v13, v12, isUniquelyReferenced_nonNull_native);

  *(v2 + v22) = v31[0];
  swift_endAccess();
  return sub_1D6196984(v11);
}

void *sub_1D6195D3C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v83 - v18;
  v20 = a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v21 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v88 = v5;
  if (v21 == 255)
  {
    v86 = v3;
    v47 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v5 + v47, v15);
    v48 = *(v5 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
    v49 = *(v48 + 16);
    v85 = v11;
    v87 = a1;
    v50 = 0;
    if (v49)
    {
      v51 = (v48 + 32);
      do
      {
        v52 = *v51++;
        v53 = qword_1D72A9700[v52];
        if ((v53 & ~v50) == 0)
        {
          v53 = 0;
        }

        v50 |= v53;
        --v49;
      }

      while (v49);
    }

    v54 = *(a2 + 32);
    v55 = *(a2 + 40);
    v84 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
    v57 = swift_allocObject();
    *(v57 + 16) = MEMORY[0x1E69E7CC0];
    v4 = swift_allocObject();
    v4[2] = sub_1D6196D90;
    v4[3] = v56;
    swift_beginAccess();
    v58 = *(v57 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_1D698CCC4(0, v58[2] + 1, 1, v58);
      *(v57 + 16) = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1D698CCC4((v60 > 1), v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v62 = &v58[2 * v61];
    v62[4] = sub_1D6196DFC;
    v62[5] = v4;
    *(v57 + 16) = v58;
    swift_endAccess();

    v63 = v86;
    a1 = v87;
    v64 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, v84, v55, v57);
    v46 = v63;
    if (!v63)
    {
      v4 = v64;
      sub_1D6196984(v15);

      return v4;
    }

    sub_1D6196984(v15);

    goto LABEL_27;
  }

  if ((v21 & 1) == 0)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B57300(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v46 = swift_allocError();
LABEL_30:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_31;
  }

  v86 = v3;
  v4 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 32);
  v83 = *(v20 + 40);
  v84 = v23;
  v24 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
  swift_beginAccess();
  v25 = *(v5 + v24);
  v26 = *(v25 + 16);

  if (!v26 || (v27 = sub_1D5B69D90(v4, v22), (v28 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for FormatLayoutError();
    sub_1D5B57300(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v46 = swift_allocError();
    *v65 = v4;
    v65[1] = v22;
    goto LABEL_30;
  }

  v85 = v11;
  v29 = *(*(v25 + 56) + 8 * v27);
  swift_endAccess();

  v30 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
  swift_beginAccess();
  sub_1D6196C40(v29 + v30, v19);
  v31 = *(v5 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v32 = *(v31 + 16);
  v87 = a1;
  v33 = 0;
  if (v32)
  {
    v34 = (v31 + 32);
    do
    {
      v35 = *v34++;
      v36 = qword_1D72A9700[v35];
      if ((v36 & ~v33) == 0)
      {
        v36 = 0;
      }

      v33 |= v36;
      --v32;
    }

    while (v32);
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x1E69E7CC0];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1D6196FC0;
  *(v39 + 24) = v37;
  swift_beginAccess();
  v4 = *(v38 + 16);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 16) = v4;
  if ((v40 & 1) == 0)
  {
    v4 = sub_1D698CCC4(0, v4[2] + 1, 1, v4);
    *(v38 + 16) = v4;
  }

  v42 = v4[2];
  v41 = v4[3];
  if (v42 >= v41 >> 1)
  {
    v4 = sub_1D698CCC4((v41 > 1), v42 + 1, 1, v4);
  }

  v4[2] = v42 + 1;
  v43 = &v4[2 * v42];
  v43[4] = sub_1D6196FBC;
  v43[5] = v39;
  *(v38 + 16) = v4;
  swift_endAccess();

  v44 = v86;
  a1 = v87;
  v45 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, v84, v83, v38);
  v46 = v44;
  if (!v44)
  {
    v4 = v45;

    sub_1D6196984(v19);
    return v4;
  }

  sub_1D6196984(v19);
LABEL_27:
  v11 = v85;
LABEL_31:
  if (*(v20 + 48) == 255 && (v66 = v88, *(v88 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) == 1))
  {
    v67 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v66 + v67, v11);
    v68 = *(v66 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = 0;
      v71 = (v68 + 32);
      do
      {
        v72 = *v71++;
        v73 = qword_1D72A9700[v72];
        if ((v73 & ~v70) == 0)
        {
          v73 = 0;
        }

        v70 |= v73;
        --v69;
      }

      while (v69);
    }

    else
    {
      v70 = 0;
    }

    v75 = swift_allocObject();
    *(v75 + 16) = v70;
    sub_1D6196D98(0, &qword_1EDF39B30, sub_1D5EFF46C, type metadata accessor for FeedItemSorter);
    v76 = swift_allocObject();
    *(v76 + 16) = MEMORY[0x1E69E7CC0];
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1D6196FC0;
    *(v77 + 24) = v75;
    swift_beginAccess();
    v78 = *(v76 + 16);

    v79 = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 16) = v78;
    v87 = a1;
    if ((v79 & 1) == 0)
    {
      v78 = sub_1D698CCC4(0, v78[2] + 1, 1, v78);
      *(v76 + 16) = v78;
    }

    v81 = v78[2];
    v80 = v78[3];
    if (v81 >= v80 >> 1)
    {
      v78 = sub_1D698CCC4((v80 > 1), v81 + 1, 1, v78);
    }

    v78[2] = v81 + 1;
    v82 = &v78[2 * v81];
    v82[4] = sub_1D6196FBC;
    v82[5] = v77;
    *(v76 + 16) = v78;
    swift_endAccess();

    v4 = GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(v87, 0, 0, v76);
    sub_1D6196984(v11);
  }

  else
  {
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D6196638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
  if (*(v3 + 16) && ((sub_1D5B69D90(a1, a2), (v4 & 1) != 0) || *(v3 + 16) && (sub_1D5B69D90(42, 0xE100000000000000), (v5 & 1) != 0)))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D61966A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(*(v3 + 56) + 8 * v4) + 112);

  v7 = sub_1D724F834();
  v8 = sub_1D5D6021C(v7, v6);

  return v8;
}

Swift::Int sub_1D6196720(Swift::String_optional *a1)
{
  v3 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&a1->value._countAndFlagsBits + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v8 = *(&a1[3].value._countAndFlagsBits + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  if (v8 == 255)
  {
    v21 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
    swift_beginAccess();
    sub_1D6196C40(v1 + v21, v6);
    v20 = GroupLayoutBindingContext.count(forSlotIdentifier:)(a1[2]);
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[4];
    v12 = v7[5];
    v13 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {
      v15 = sub_1D5B69D90(v9, v10);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        swift_endAccess();
        v18 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();
        sub_1D6196C40(v17 + v18, v6);

        v19.value._countAndFlagsBits = v11;
        v19.value._object = v12;
        v20 = GroupLayoutBindingContext.count(forSlotIdentifier:)(v19);

LABEL_7:
        sub_1D6196984(v6);
        return v20;
      }
    }

    swift_endAccess();
  }

  return 0;
}

uint64_t FormatNodeBinder.deinit()
{

  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext);

  return v0;
}

uint64_t sub_1D6196984(uint64_t a1)
{
  v2 = type metadata accessor for GroupLayoutBindingContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatNodeBinder.__deallocating_deinit()
{

  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6196B08()
{
  sub_1D6196984(v0 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6196BA4()
{
  result = type metadata accessor for GroupLayoutBindingContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6196C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLayoutBindingContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6196CA4()
{
  result = qword_1EDF05180;
  if (!qword_1EDF05180)
  {
    sub_1D6196D98(255, &qword_1EDF05188, type metadata accessor for FormatSlot, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05180);
  }

  return result;
}

uint64_t sub_1D6196D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLayoutBindingContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6196D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6196E00@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1 + 1, *a2, a2 + 1);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D6196E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = sub_1D5B69D90(a2, a3);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v10 = *(*(*(a1 + 56) + 8 * v8) + 120);
  if (!*(v10 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v11 = sub_1D5B69D90(a4, a5);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  return v13;
}

uint64_t sub_1D6196F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1D5B69D90(a2, a3);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(*(*(a1 + 56) + 8 * v8) + 128);
  if (!*(v10 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1D5B69D90(a4, a5);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  return v13;
}

unint64_t sub_1D6197008(uint64_t a1)
{
  result = sub_1D6197030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6197030()
{
  result = qword_1EC884928;
  if (!qword_1EC884928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884928);
  }

  return result;
}

unint64_t sub_1D6197084(void *a1)
{
  a1[1] = sub_1D61970BC();
  a1[2] = sub_1D6197110();
  result = sub_1D6197164();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61970BC()
{
  result = qword_1EC884930;
  if (!qword_1EC884930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884930);
  }

  return result;
}

unint64_t sub_1D6197110()
{
  result = qword_1EC884938;
  if (!qword_1EC884938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884938);
  }

  return result;
}

unint64_t sub_1D6197164()
{
  result = qword_1EC884940[0];
  if (!qword_1EC884940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC884940);
  }

  return result;
}

uint64_t _s3URLOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s3URLOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SharingIntent.onPerformBlock.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SharingIntent.init(activityProvider:onPerformBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1D6197388()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugNewsroomWrapper();
    if (v1 <= 0x3F)
    {
      sub_1D604FD34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6197430(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_1D6197584(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t sub_1D619778C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugNewsroomWrapper.DynamicKey();
  swift_getWitnessTable();
  v28 = sub_1D726435C();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v8);
  v10 = &v21 - v9;
  v26 = a3;
  v11 = type metadata accessor for DebugNewsroomWrapper();
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v33;
  sub_1D7264B0C();
  if (!v15)
  {
    v21 = v14;
    v33 = v11;
    v16 = v25;
    v29 = (*(v26 + 24))(a2, v26);
    v30 = v17;
    v31 = 0;
    v32 = 1;
    v18 = v27;
    sub_1D726431C();

    (*(v16 + 8))(v10, v28);
    v19 = v21;
    (*(v23 + 32))(v21, v18, a2);
    (*(v22 + 32))(v24, v19, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6197AC4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for DebugNewsroomWrapper.DynamicKey();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v11[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v11[2] = (*(v4 + 24))(v3, v4);
  v11[3] = v9;
  v11[4] = 0;
  v12 = 1;
  sub_1D726443C();

  return (*(v11[0] + 8))(v8, v5);
}

void sub_1D6197CC4(uint64_t a1@<X8>)
{
  sub_1D6197AB8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
}

uint64_t sub_1D6197D0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D6197C78();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
  return result;
}

uint64_t sub_1D6197D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6197D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6197E40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6197E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D6197EC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D6197F74()
{
  *(swift_allocObject() + 16) = 0x7FFFFFFFFFFFFFFFLL;
  sub_1D5B77AA4();
  swift_allocObject();
  result = sub_1D725BE0C();
  qword_1EC884AC8 = result;
  return result;
}

uint64_t FeedRebuildPolicy.init(groupLimit:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1D5B77AA4();
  swift_allocObject();
  result = sub_1D725BE0C();
  *a2 = result;
  return result;
}

uint64_t static FeedRebuildPolicy.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D530 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC884AC8;
}

uint64_t _s8NewsFeed23FormatGroupNodeMaskPathO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v28 = a1[2];
  v29 = v2;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[1];
  v31 = *a2;
  v32 = v7;
  v8 = a1[3];
  v36[2] = v28;
  v36[3] = v8;
  v36[0] = v26;
  v36[1] = v3;
  v38 = v31;
  v41 = a2[3];
  v40 = v33;
  v30 = *(a1 + 64);
  v35 = a2[4].i8[0];
  v37 = *(a1 + 64);
  v42 = a2[4].i8[0];
  v39 = v6;
  v9 = v26;
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      if (v35 == 2)
      {
        v21 = v26;
        v22 = v27;
        v23 = *(a1 + 17);
        *v24 = *(a1 + 33);
        *&v24[15] = a1[3];
        v11 = a2[1];
        v17 = *a2;
        v18 = v11;
        v12 = a2[3];
        v19 = a2[2];
        v20 = v12;
        sub_1D619916C(&v31, v25);
        sub_1D619916C(&v26, v25);
        sub_1D619916C(&v26, v25);
        sub_1D619916C(&v31, v25);
        v10 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v21, &v17);
        goto LABEL_10;
      }
    }

    else if (v35 == 3)
    {
      v15 = vorrq_s8(vorrq_s8(v31, v33), vorrq_s8(v32, v34));
      if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
      {
        sub_1D61991F4(v36, sub_1D6199254);
        v14 = 1;
        return v14 & 1;
      }
    }

LABEL_14:
    sub_1D619916C(&v26, v25);
    sub_1D619916C(&v31, v25);
    sub_1D61991F4(v36, sub_1D6199254);
    v14 = 0;
    return v14 & 1;
  }

  if (v30)
  {
    if (v35 == 1)
    {
      v13 = v31.i64[0];
      sub_1D619916C(&v31, v25);
      sub_1D619916C(&v26, v25);
      sub_1D619916C(&v26, v25);
      sub_1D619916C(&v31, v25);
      v10 = sub_1D634F4A4(v9, v13);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v35)
  {
    goto LABEL_14;
  }

  v21 = v26;
  v22 = v27;
  v17 = v31;
  v18.i8[0] = v32.i8[0];
  sub_1D619916C(&v31, v25);
  sub_1D619916C(&v26, v25);
  sub_1D619916C(&v26, v25);
  sub_1D619916C(&v31, v25);
  v10 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v21, &v17);
LABEL_10:
  v14 = v10;
  sub_1D61991F4(v36, sub_1D6199254);
  sub_1D61992B0(&v31);
  sub_1D61992B0(&v26);
  return v14 & 1;
}

unint64_t sub_1D61983E0(uint64_t a1)
{
  result = sub_1D6198408();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6198408()
{
  result = qword_1EC884AD0;
  if (!qword_1EC884AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AD0);
  }

  return result;
}

unint64_t sub_1D619845C(void *a1)
{
  a1[1] = sub_1D6198494();
  a1[2] = sub_1D61984E8();
  result = sub_1D619853C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6198494()
{
  result = qword_1EDF273F8;
  if (!qword_1EDF273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF273F8);
  }

  return result;
}

unint64_t sub_1D61984E8()
{
  result = qword_1EDF0D4D8;
  if (!qword_1EDF0D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D4D8);
  }

  return result;
}

unint64_t sub_1D619853C()
{
  result = qword_1EC884AD8;
  if (!qword_1EC884AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupNodeMaskPathO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

void *sub_1D61985BC(__int128 *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 64);
  if (v7 <= 1)
  {
    v15 = MEMORY[0x1E69E6F90];
    if (*(a2 + 64))
    {
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v15);
      sub_1D5EA74B8();
      v18 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D7273AE0;
      v51 = a1[7];
      v70 = a1[6];
      v71 = v51;
      v72 = a1[8];
      v73 = *(a1 + 18);
      v52 = a1[3];
      v66 = a1[2];
      v67 = v52;
      v53 = a1[5];
      v68 = a1[4];
      v69 = v53;
      v54 = a1[1];
      v64 = *a1;
      v65 = v54;
      *&v62 = v5;
      v74 = v5;
      v75 = v4;
      v76 = v6;
      v77 = *(a2 + 17);
      *v78 = *(a2 + 33);
      *&v78[15] = *(a2 + 3);
      v79 = 1;
      sub_1D619916C(&v74, v61);
      v55 = sub_1D6BDF7B0(&v64, &v62);

      *(v50 + 56) = &type metadata for FormatInspection;
      *(v50 + 64) = &off_1F51E3FD0;
      *(v50 + 32) = v55;
      v56 = sub_1D5F62BFC(v50);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v50 + 32);
      swift_deallocClassInstance();
      v27 = sub_1D7073500(v56);

      v28 = 0x50207265697A6542;
      v29 = 0xEB00000000687461;
    }

    else
    {
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v15);
      sub_1D5EA74B8();
      v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D7273AE0;
      sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7273AE0;
      v21 = a1[7];
      v70 = a1[6];
      v71 = v21;
      v72 = a1[8];
      v73 = *(a1 + 18);
      v22 = a1[3];
      v66 = a1[2];
      v67 = v22;
      v23 = a1[5];
      v68 = a1[4];
      v69 = v23;
      v24 = a1[1];
      v64 = *a1;
      v65 = v24;
      *&v62 = v5;
      *(&v62 + 1) = v4;
      v63[0] = v6;
      v74 = v5;
      v75 = v4;
      v76 = v6;
      v77 = *(a2 + 17);
      *v78 = *(a2 + 33);
      *&v78[15] = *(a2 + 3);
      v79 = 0;
      sub_1D619916C(&v74, v61);
      v25 = sub_1D6D9893C(&v64, &v62);
      sub_1D5ED348C(v62, *(&v62 + 1), v63[0]);
      *(v20 + 56) = &type metadata for FormatInspection;
      *(v20 + 64) = &off_1F51E3FD0;
      *(v20 + 32) = v25;
      v26 = sub_1D5F62BFC(v20);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v20 + 32);
      swift_deallocClassInstance();
      v27 = sub_1D7073500(v26);

      v28 = 0x522072656E726F43;
      v29 = 0xED00007375696461;
    }

    v41 = (v19 + v18);
    v42 = v27;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v30 = MEMORY[0x1E69E6F90];
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v30);
    sub_1D5EA74B8();
    v18 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D7273AE0;
    v33 = a1[7];
    v70 = a1[6];
    v71 = v33;
    v72 = a1[8];
    v73 = *(a1 + 18);
    v34 = a1[3];
    v66 = a1[2];
    v67 = v34;
    v35 = a1[5];
    v68 = a1[4];
    v69 = v35;
    v36 = a1[1];
    v64 = *a1;
    v65 = v36;
    *&v63[1] = *(a2 + 17);
    *&v63[17] = *(a2 + 33);
    v37 = *&v63[17];
    *&v63[32] = *(a2 + 3);
    *&v62 = v5;
    *(&v62 + 1) = v4;
    v63[0] = v6;
    v74 = v5;
    v75 = v4;
    v76 = v6;
    v77 = *&v63[1];
    *v78 = v37;
    *&v78[15] = *&v63[32];
    v79 = 2;
    sub_1D619916C(&v74, v61);
    v38 = sub_1D6BB7CE4(&v64, &v62);
    v61[0] = v62;
    v61[1] = *v63;
    v61[2] = *&v63[16];
    v61[3] = *&v63[32];
    sub_1D61991F4(v61, sub_1D61991A4);
    *(v32 + 56) = &type metadata for FormatInspection;
    *(v32 + 64) = &off_1F51E3FD0;
    *(v32 + 32) = v38;
    v39 = sub_1D5F62BFC(v32);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v32 + 32);
    swift_deallocClassInstance();
    v40 = sub_1D7073500(v39);

    v28 = 0x746E656964617247;
    v41 = (v19 + v18);
    v42 = v40;
    v29 = 0xE800000000000000;
LABEL_12:
    sub_1D711AD20(1701869908, 0xE400000000000000, v42, v28, v29, v41);
    v57 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v57 - 8) + 56))(v19 + v18, 0, 1, v57);
    sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v19, &v64);
    swift_setDeallocating();
    sub_1D61991F4(v19 + v18, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v16 + 56) = &type metadata for FormatInspectionGroup;
    *(v16 + 64) = &off_1F518B2C0;
    v58 = swift_allocObject();
    *(v16 + 32) = v58;
    v59 = v65;
    *(v58 + 16) = v64;
    *(v58 + 32) = v59;
    *(v58 + 48) = v66;
    v60 = sub_1D7073500(v16);
    swift_setDeallocating();
    sub_1D61991F4(v16 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return v60;
  }

  v8 = MEMORY[0x1E69E6F90];
  if (v7 == 3)
  {
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v8);
    sub_1D5EA74B8();
    v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = (v12 + v11);
    v14 = 1818326607;
  }

  else
  {
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v8);
    sub_1D5EA74B8();
    v11 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = (v12 + v11);
    v14 = 1701736270;
  }

  sub_1D711F844(1701869908, 0xE400000000000000, v14, 0xE400000000000000, v13);
  v44 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v44 - 8) + 56))(v12 + v11, 0, 1, v44);
  sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v12, &v64);
  swift_setDeallocating();
  sub_1D61991F4(v12 + v11, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v9 + 56) = &type metadata for FormatInspectionGroup;
  *(v9 + 64) = &off_1F518B2C0;
  v45 = swift_allocObject();
  *(v9 + 32) = v45;
  v46 = v65;
  *(v45 + 16) = v64;
  *(v45 + 32) = v46;
  *(v45 + 48) = v66;
  v47 = sub_1D7073500(v9);
  swift_setDeallocating();
  sub_1D61991F4(v9 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v47;
}

void sub_1D61991A4()
{
  if (!qword_1EC890C30)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890C30);
    }
  }
}

uint64_t sub_1D61991F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6199254()
{
  if (!qword_1EC884AE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884AE0);
    }
  }
}

uint64_t sub_1D61992E0(uint64_t a1)
{
  sub_1D6044204(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v59, v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v57 - v10;
  v11 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v57 - v33;
  v35 = *v1;
  v36 = a1 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
  v37 = *(type metadata accessor for PuzzleStatistic() + 20);
  if (v35 <= 1)
  {
    if (!v35)
    {
      sub_1D619A9AC(v36 + v37, v34, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        sub_1D619AA14(v34, type metadata accessor for PuzzleStatisticCategory);
        v39 = -1.0;
LABEL_27:
        v43 = v39 >= 0.0;
        return v43 & 1;
      }

      if (EnumCaseMultiPayload)
      {
        v54 = v60;
        sub_1D619A8F8(v34, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v39 = PuzzleStatisticValue.primaryValue.getter();
        v48 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        v49 = v54;
      }

      else
      {
        sub_1D619A8F8(v34, v14, type metadata accessor for PuzzleStatisticValue);
        v39 = PuzzleStatisticValue.primaryValue.getter();
        v48 = type metadata accessor for PuzzleStatisticValue;
        v49 = v14;
      }

LABEL_26:
      sub_1D619AA14(v49, v48);
      goto LABEL_27;
    }

    sub_1D619A9AC(v36 + v37, v30, type metadata accessor for PuzzleStatisticCategory);
    v42 = swift_getEnumCaseMultiPayload();
    if ((v42 - 2) < 2 || !v42)
    {
      v41 = v30;
      goto LABEL_12;
    }

    v51 = v30;
    v50 = v60;
    sub_1D619A8F8(v51, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
LABEL_22:
    v39 = PuzzleStatisticValue.primaryValue.getter();
    v48 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v49 = v50;
    goto LABEL_26;
  }

  if (v35 != 2)
  {
    sub_1D619A9AC(v36 + v37, v22, type metadata accessor for PuzzleStatisticCategory);
    v44 = swift_getEnumCaseMultiPayload();
    sub_1D619AA14(v22, type metadata accessor for PuzzleStatisticCategory);
    if (v44 != 2)
    {
      v43 = 0;
      return v43 & 1;
    }

    sub_1D619A9AC(v36 + v37, v18, type metadata accessor for PuzzleStatisticCategory);
    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 1)
    {
      if (v45 != 2)
      {
        v41 = v18;
        goto LABEL_12;
      }

      v52 = v58;
      sub_1D619A8F8(v18, v58, sub_1D6044204);
      v53 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      v43 = (*(*(v53 - 8) + 48))(v52, 1, v53) != 1;
      v46 = sub_1D6044204;
      v47 = v52;
    }

    else if (v45)
    {
      v56 = v57;
      sub_1D619A8F8(v18, v57, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      if (PuzzleStatisticValue.hasValue.getter() & 1) != 0 || (PuzzleStatisticValue.hasValue.getter())
      {
        v43 = 1;
      }

      else
      {
        v43 = PuzzleStatisticValue.hasValue.getter();
      }

      v46 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v47 = v56;
    }

    else
    {
      sub_1D619A8F8(v18, v14, type metadata accessor for PuzzleStatisticValue);
      v43 = PuzzleStatisticValue.hasValue.getter();
      v46 = type metadata accessor for PuzzleStatisticValue;
      v47 = v14;
    }

    sub_1D619AA14(v47, v46);
    return v43 & 1;
  }

  sub_1D619A9AC(v36 + v37, v26, type metadata accessor for PuzzleStatisticCategory);
  v40 = swift_getEnumCaseMultiPayload();
  if ((v40 - 2) >= 2 && v40)
  {
    v50 = v60;
    sub_1D619A8F8(v26, v60, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    goto LABEL_22;
  }

  v41 = v26;
LABEL_12:
  sub_1D619AA14(v41, type metadata accessor for PuzzleStatisticCategory);
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1D6199974()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6199A54()
{
  sub_1D72621EC();
}

uint64_t sub_1D6199B20()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6199BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D619A960();
  *a1 = result;
  return result;
}

void sub_1D6199C2C(unint64_t *a1@<X8>)
{
  v2 = 0xEF65756C61567972;
  v3 = 0x616D697250736168;
  v4 = 0x80000001D73BC510;
  v5 = 0x656461654C736168;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEE006472616F6272;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D73BC4F0;
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

uint64_t FormatPuzzleStatisticBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6199E14()
{
  result = qword_1EC884AE8;
  if (!qword_1EC884AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AE8);
  }

  return result;
}

unint64_t sub_1D6199E68(uint64_t a1)
{
  result = sub_1D6199E90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6199E90()
{
  result = qword_1EC884AF0;
  if (!qword_1EC884AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AF0);
  }

  return result;
}

unint64_t sub_1D6199EE4(void *a1)
{
  a1[1] = sub_1D6199F1C();
  a1[2] = sub_1D6199F70();
  result = sub_1D6199E14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6199F1C()
{
  result = qword_1EC884AF8;
  if (!qword_1EC884AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884AF8);
  }

  return result;
}

unint64_t sub_1D6199F70()
{
  result = qword_1EC884B00;
  if (!qword_1EC884B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B00);
  }

  return result;
}

unint64_t sub_1D619A018()
{
  result = qword_1EC884B08;
  if (!qword_1EC884B08)
  {
    sub_1D619A070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B08);
  }

  return result;
}

void sub_1D619A070()
{
  if (!qword_1EC884B10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884B10);
    }
  }
}

unint64_t sub_1D619A0C4()
{
  result = qword_1EC884B18;
  if (!qword_1EC884B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B18);
  }

  return result;
}

unint64_t sub_1D619A118()
{
  result = qword_1EC884B20;
  if (!qword_1EC884B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B20);
  }

  return result;
}

uint64_t sub_1D619A16C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v65 = a2;
  v62 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v62, v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v64, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v61 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v61 - v34;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v36 = 0x80000001D73CCF10;
      sub_1D619A9AC(v65, v27, type metadata accessor for FeedPuzzleStatistic);
      v41 = *(v20 + 32);
      v42 = type metadata accessor for PuzzleStatistic();
      sub_1D619A9AC(&v27[v41 + *(v42 + 20)], v11, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
      {
        v44 = 0xD000000000000012;
        v51 = v63;
        sub_1D619A8F8(v11, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v52 = PuzzleStatisticValue.primaryValue.getter();
        sub_1D619AA14(v51, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        sub_1D619AA14(v27, type metadata accessor for FeedPuzzleStatistic);
        v45 = v52 >= 0.0;
      }

      else
      {
        v44 = 0xD000000000000012;
        sub_1D619AA14(v27, type metadata accessor for FeedPuzzleStatistic);
        sub_1D619AA14(v11, type metadata accessor for PuzzleStatisticCategory);
        v45 = 0;
      }
    }

    else
    {
      sub_1D619A9AC(v65, v23, type metadata accessor for FeedPuzzleStatistic);
      v67 = 3;
      v45 = sub_1D61992E0(v23);
      sub_1D619AA14(v23, type metadata accessor for FeedPuzzleStatistic);
      v36 = 0xEF6472616F627265;
      v44 = 0x6461654C20736148;
    }
  }

  else if (*a1)
  {
    v36 = 0x80000001D73CCF30;
    sub_1D619A9AC(v65, v31, type metadata accessor for FeedPuzzleStatistic);
    v46 = *(v20 + 32);
    v47 = type metadata accessor for PuzzleStatistic();
    sub_1D619A9AC(&v31[v46 + *(v47 + 20)], v15, type metadata accessor for PuzzleStatisticCategory);
    v48 = swift_getEnumCaseMultiPayload();
    if ((v48 - 2) >= 2 && v48)
    {
      v53 = v63;
      sub_1D619A8F8(v15, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v54 = PuzzleStatisticValue.primaryValue.getter();
      sub_1D619AA14(v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      sub_1D619AA14(v31, type metadata accessor for FeedPuzzleStatistic);
      v45 = v54 >= 0.0;
    }

    else
    {
      sub_1D619AA14(v31, type metadata accessor for FeedPuzzleStatistic);
      sub_1D619AA14(v15, type metadata accessor for PuzzleStatisticCategory);
      v45 = 0;
    }

    v44 = 0xD000000000000013;
  }

  else
  {
    v36 = 0x80000001D73CCF50;
    sub_1D619A9AC(v65, &v61 - v34, type metadata accessor for FeedPuzzleStatistic);
    v37 = *(v20 + 32);
    v38 = type metadata accessor for PuzzleStatistic();
    sub_1D619A9AC(&v35[v37 + *(v38 + 20)], v19, type metadata accessor for PuzzleStatisticCategory);
    v39 = swift_getEnumCaseMultiPayload();
    if ((v39 - 2) >= 2)
    {
      if (v39)
      {
        v49 = v63;
        sub_1D619A8F8(v19, v63, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v40 = PuzzleStatisticValue.primaryValue.getter();
        v50 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      }

      else
      {
        v49 = v61;
        sub_1D619A8F8(v19, v61, type metadata accessor for PuzzleStatisticValue);
        v40 = PuzzleStatisticValue.primaryValue.getter();
        v50 = type metadata accessor for PuzzleStatisticValue;
      }

      sub_1D619AA14(v49, v50);
      sub_1D619AA14(v35, type metadata accessor for FeedPuzzleStatistic);
    }

    else
    {
      sub_1D619AA14(v35, type metadata accessor for FeedPuzzleStatistic);
      sub_1D619AA14(v19, type metadata accessor for PuzzleStatisticCategory);
      v40 = -1.0;
    }

    v45 = v40 >= 0.0;
    v44 = 0xD000000000000011;
  }

  v55 = type metadata accessor for FormatInspectionItem(0);
  v56 = *(v55 + 24);
  v57 = v66;
  *(v66 + v56) = v45 & 1;
  v58 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v58 - 8) + 56))(v57 + v56, 0, 1, v58);
  *v57 = v44;
  v57[1] = v36;
  v57[2] = 0;
  v57[3] = 0;
  v59 = v57 + *(v55 + 28);
  *v59 = 0;
  *(v59 + 1) = 0;
  v59[16] = -1;
  return (*(*(v55 - 8) + 56))(v57, 0, 1, v55);
}

uint64_t sub_1D619A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D619A960()
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

uint64_t sub_1D619A9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D619AA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D619AA74()
{
  v1 = sub_1D7258AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[16];
  v9 = *(v0 + 3);
  v20 = *(v0 + 1);
  v21 = v9;
  v10 = v0[32];
  v11 = v0[48];
  v12 = *(v0 + 7);
  v22 = *(v0 + 5);
  v23 = v12;
  v13 = *(v0 + 9);
  LODWORD(v12) = v0[80];
  v26 = v0[64];
  v27 = v12;
  v14 = *(v0 + 11);
  v24 = v13;
  v25 = v14;
  v15 = *(v0 + 13);
  LODWORD(v14) = v0[112];
  v28 = v0[96];
  v29 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v16 setNumberStyle_];
  sub_1D7258A4C();
  v17 = sub_1D72589DC();
  (*(v2 + 8))(v5, v1);
  [v16 setLocale_];

  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 != 6)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_12:
        if ((v10 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_13:
        if ((v11 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_14:
        if (v26)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v7 = 6;
    }

    else if (v7 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else if (v7 > 1)
  {
    if (v7 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else if (v7)
  {
    v7 = 1;
  }

  [v16 setRoundingMode_];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_28:
  [v16 setMinimumIntegerDigits_];
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_29:
  [v16 setMaximumIntegerDigits_];
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_30:
  [v16 setMinimumFractionDigits_];
  if ((v26 & 1) == 0)
  {
LABEL_15:
    [v16 setMaximumFractionDigits_];
  }

LABEL_16:
  if (v27)
  {
    if (v28)
    {
      goto LABEL_18;
    }

LABEL_22:
    [v16 setMaximumSignificantDigits_];
    [v16 setUsesSignificantDigits_];
    if (v29)
    {
      return v16;
    }

    goto LABEL_19;
  }

  [v16 setMinimumSignificantDigits_];
  [v16 setUsesSignificantDigits_];
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v29 & 1) == 0)
  {
LABEL_19:
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v16 setMultiplier_];
  }

  return v16;
}

BOOL _s8NewsFeed012FormatNumberC0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = a1[16];
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = *(a1 + 5);
  v11 = a1[48];
  v12 = *(a1 + 7);
  v13 = a1[64];
  v14 = *(a1 + 9);
  v15 = a1[80];
  v16 = *(a1 + 11);
  v17 = a1[96];
  v18 = *(a1 + 13);
  v19 = a1[112];
  v20 = *a2;
  v21 = a2[1];
  v84 = *(a2 + 1);
  v85 = a2[16];
  v22 = *(a2 + 3);
  v23 = a2[32];
  v24 = *(a2 + 5);
  v25 = a2[48];
  v26 = *(a2 + 7);
  v27 = a2[64];
  v28 = *(a2 + 9);
  v29 = a2[80];
  v30 = *(a2 + 11);
  v31 = a2[96];
  v32 = *(a2 + 13);
  v33 = a2[112];
  if (v4 == 9)
  {
    if (v20 != 9)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 9)
    {
      return 0;
    }

    v66 = v12;
    v68 = *(a2 + 11);
    v64 = a2[96];
    v61 = v14;
    v59 = a2[112];
    v58 = v17;
    v57 = v16;
    v80 = v19;
    v82 = a2[80];
    v34 = v13;
    v35 = v10;
    v76 = *(a2 + 7);
    v78 = *(a2 + 9);
    v56 = v5;
    v36 = v11;
    v37 = a2[64];
    v38 = v8;
    v39 = v9;
    v74 = a2[48];
    v40 = v6;
    v72 = *(a2 + 5);
    v41 = v7;
    v70 = a2[32];
    v42 = sub_1D6DE6074(v4, v20);
    v23 = v70;
    v7 = v41;
    v24 = v72;
    v6 = v40;
    v25 = v74;
    v9 = v39;
    v26 = v76;
    v28 = v78;
    v8 = v38;
    v27 = v37;
    v11 = v36;
    v5 = v56;
    v10 = v35;
    v19 = v80;
    v29 = v82;
    v13 = v34;
    v16 = v57;
    v17 = v58;
    v33 = v59;
    v14 = v61;
    v31 = v64;
    v12 = v66;
    v30 = v68;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 == 7)
  {
    if (v21 != 7)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == 7)
    {
      return 0;
    }

    v43 = v5;
    v44 = v21;
    v81 = v19;
    v83 = v29;
    v45 = v13;
    v46 = v10;
    v77 = v26;
    v79 = v28;
    v69 = v11;
    v67 = v27;
    v65 = v8;
    v63 = v9;
    v75 = v25;
    v62 = v6;
    v73 = v24;
    v60 = v7;
    v71 = v23;
    v47 = sub_1D6DE5E7C(v43, v44);
    v23 = v71;
    v7 = v60;
    v24 = v73;
    v6 = v62;
    v25 = v75;
    v9 = v63;
    v26 = v77;
    v28 = v79;
    v8 = v65;
    v27 = v67;
    v11 = v69;
    v10 = v46;
    v19 = v81;
    v29 = v83;
    v13 = v45;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v85)
    {
      return 0;
    }
  }

  else
  {
    v48 = v85;
    if (v6 != v84)
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v22)
    {
      v49 = v23;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v24)
    {
      v50 = v25;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v26)
    {
      v51 = v27;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v28)
    {
      v52 = v29;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v17)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v30)
    {
      v53 = v31;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  if ((v19 & 1) == 0)
  {
    if (v18 == v32)
    {
      v55 = v33;
    }

    else
    {
      v55 = 1;
    }

    return (v55 & 1) == 0;
  }

  return (v33 & 1) != 0;
}

unint64_t sub_1D619B0E0(uint64_t a1)
{
  result = sub_1D619B108();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619B108()
{
  result = qword_1EC884B28;
  if (!qword_1EC884B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B28);
  }

  return result;
}

unint64_t sub_1D619B15C(void *a1)
{
  a1[1] = sub_1D619B194();
  a1[2] = sub_1D619B1E8();
  result = sub_1D619B23C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619B194()
{
  result = qword_1EDF166E0;
  if (!qword_1EDF166E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166E0);
  }

  return result;
}

unint64_t sub_1D619B1E8()
{
  result = qword_1EDF166E8;
  if (!qword_1EDF166E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166E8);
  }

  return result;
}

unint64_t sub_1D619B23C()
{
  result = qword_1EC884B30;
  if (!qword_1EC884B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B30);
  }

  return result;
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

uint64_t sub_1D619B2BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 113))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 1);
  if (v3 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = v4 - 8;
  if (v3 < 7)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D619B310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 7;
    }
  }

  return result;
}

uint64_t static FormatSizeEquation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633A310(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A310(v2, v3);
}

unint64_t sub_1D619B3F8(uint64_t a1)
{
  result = sub_1D619B420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619B420()
{
  result = qword_1EC884B38;
  if (!qword_1EC884B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B38);
  }

  return result;
}

unint64_t sub_1D619B474(void *a1)
{
  a1[1] = sub_1D619B4AC();
  a1[2] = sub_1D619B500();
  result = sub_1D619B554();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619B4AC()
{
  result = qword_1EC884B40;
  if (!qword_1EC884B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B40);
  }

  return result;
}

unint64_t sub_1D619B500()
{
  result = qword_1EC884B48;
  if (!qword_1EC884B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B48);
  }

  return result;
}

unint64_t sub_1D619B554()
{
  result = qword_1EC884B50;
  if (!qword_1EC884B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B50);
  }

  return result;
}

uint64_t sub_1D619B5D8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633A310(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A310(v2, v3);
}

id sub_1D619B644()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController);
  }

  else
  {
    v4 = v0;
    sub_1D619B6F0();
    type metadata accessor for DebugFormatBindingTree();
    sub_1D619BE50();
    sub_1D7260F8C();
    sub_1D619BEA8();
    v6 = objc_allocWithZone(v5);
    v7 = sub_1D726126C();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1D619B6F0()
{
  sub_1D619BF58();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model))
  {
    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___model);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController_editor);
    type metadata accessor for DebugFormatBindingTree();
    v8 = swift_allocObject();
    v12 = OBJC_IVAR____TtC8NewsFeed22DebugFormatBindingTree__workspace;
    sub_1D60CF378(v27);
    v23 = v27[10];
    v24 = v27[11];
    v25 = v27[12];
    v26 = v28;
    v19 = v27[6];
    v20 = v27[7];
    v21 = v27[8];
    v22 = v27[9];
    v15 = v27[2];
    v16 = v27[3];
    v17 = v27[4];
    v18 = v27[5];
    v13 = v27[0];
    v14 = v27[1];
    sub_1D61957D4();
    sub_1D726009C();
    (*(v3 + 32))(v8 + v12, v6, v2);
    *(v8 + 16) = v9;

    sub_1D725B33C();

    sub_1D725B2EC();

    *(v0 + v7) = v8;
  }

  return v8;
}

id sub_1D619B9A4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = sub_1D619B644();
  [v0 addChildViewController_];

  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController;
  result = [*&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatBindingTreeViewController____lazy_storage___bindingTreeViewController] view];
  if (result)
  {
    v7 = result;
    [v5 addSubview_];

    return [*&v0[v6] didMoveToParentViewController_];
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1D619BDE4()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

unint64_t sub_1D619BE50()
{
  result = qword_1EC880C48;
  if (!qword_1EC880C48)
  {
    type metadata accessor for DebugFormatBindingTree();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C48);
  }

  return result;
}

void sub_1D619BEA8()
{
  if (!qword_1EC884B78)
  {
    sub_1D619BF04();
    v0 = sub_1D726127C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884B78);
    }
  }
}

unint64_t sub_1D619BF04()
{
  result = qword_1EC884B80;
  if (!qword_1EC884B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B80);
  }

  return result;
}

void sub_1D619BF58()
{
  if (!qword_1EC884B88)
  {
    sub_1D61957D4();
    v0 = sub_1D72600EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884B88);
    }
  }
}

__n128 FormatServiceHistory.__allocating_init(issueReadingHistory:readingHistory:recipeHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(a3 + 32);
  return result;
}

uint64_t FormatServiceHistory.init(issueReadingHistory:readingHistory:recipeHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a3 + 32);
  return v3;
}

uint64_t sub_1D619C048(uint64_t a1, uint64_t a2)
{
  sub_1D619C0C8(0, &unk_1EDF3A8C0, sub_1D619C11C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D619C0C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D619C11C()
{
  result = qword_1EDF3A8D0;
  if (!qword_1EDF3A8D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3A8D0);
  }

  return result;
}

uint64_t sub_1D619C180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D619C0C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D619C204@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_1D619C0C8(0, &qword_1EC884B90, MEMORY[0x1E69B4F18]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v39 - v13;
  sub_1D619C0C8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  if (!*(a1 + 16))
  {
    v27 = *(v5 + 24);
    v28 = sub_1D726203C();
    v29 = [v27 *a2];

    if (v29)
    {
      sub_1D72588BC();

      v30 = sub_1D725891C();
      (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    }

    else
    {
      v36 = sub_1D725891C();
      (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
    }

    v35 = v22;
    return sub_1D5DF42F8(v35, a5);
  }

  if (*(a1 + 16) == 1)
  {
    v23 = *(v5 + 16);
    v24 = sub_1D726203C();
    v25 = [v23 *a3];

    if (v25)
    {
      sub_1D72588BC();

      v26 = sub_1D725891C();
      (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
    }

    else
    {
      v34 = sub_1D725891C();
      (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
    }

    v35 = v18;
    return sub_1D5DF42F8(v35, a5);
  }

  sub_1D619C048(v5 + 32, &v39);
  if (v40)
  {
    sub_1D5B63F14(&v39, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_1D7261C1C();
    v31 = sub_1D7261C0C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v14, 1, v31) == 1)
    {
      sub_1D619C180(v14, &qword_1EC884B90, MEMORY[0x1E69B4F18]);
      v33 = sub_1D725891C();
      (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
    }

    else
    {
      a4();
      (*(v32 + 8))(v14, v31);
    }

    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_1D619C180(&v39, &unk_1EDF3A8C0, sub_1D619C11C);
    v38 = sub_1D725891C();
    return (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
  }
}

uint64_t FormatServiceHistory.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D619C180(v0 + 32, &unk_1EDF3A8C0, sub_1D619C11C);
  return v0;
}

uint64_t FormatServiceHistory.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D619C180(v0 + 32, &unk_1EDF3A8C0, sub_1D619C11C);

  return swift_deallocClassInstance();
}

uint64_t FormatIssueCoverNodeRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D619C8A4(uint64_t a1, id a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4[1];
  v44[0] = *a4;
  v44[1] = v12;
  v45[0] = a4[2];
  *(v45 + 9) = *(a4 + 41);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  [a2 setIsAccessibilityElement_];
  [a2 setAccessibilityElementsHidden_];
  if (v14 > 0xFD)
  {
    goto LABEL_7;
  }

  if ((v14 & 0x80) != 0)
  {
    if (!(v13 | v14 & 0x7F))
    {
      goto LABEL_7;
    }

    v15 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v15 = &selRef_setIsAccessibilityElement_;
  }

  [a2 *v15];
LABEL_7:
  [a2 setUserInteractionEnabled_];
  v16 = *(a1 + 144);
  if (v16)
  {
    v17 = *(v16 + 177);
  }

  else
  {
    v17 = 0;
  }

  [a2 setAccessibilityIgnoresInvertColors_];
  v18 = v7[5];
  v19 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v18);
  v20 = a4[1];
  v39 = *a4;
  v40 = v20;
  v41[0] = a4[2];
  *(v41 + 9) = *(a4 + 41);
  v21 = *(a1 + 168);
  v35 = *(a1 + 152);
  v36 = v21;
  v22 = *(a1 + 200);
  v37 = *(a1 + 184);
  v38 = v22;
  sub_1D619CB80(v44, v42);
  v23 = sub_1D5F8EABC();
  sub_1D71DD160(&v34);
  IssueCoverViewRendererType.render(_:on:with:traits:coverViewStyle:)(&v39, a2, &v35, v23, &v34, v18, v19);

  v42[0] = v39;
  v42[1] = v40;
  v43[0] = v41[0];
  *(v43 + 9) = *(v41 + 9);
  sub_1D619CBDC(v42);
  if (v16)
  {
    v25 = *(v16 + 64);
    v24 = *(v16 + 72);
    v26 = *(v16 + 80);
    v27 = *(v16 + 88);

    sub_1D5ED34B0(v24, v26, v27);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = -2;
  }

  v28 = [a2 layer];
  *&v35 = v24;
  *(&v35 + 1) = v26;
  LOBYTE(v36) = v27;
  sub_1D6D111F4(v28, a5, v25, &v35, a6, a7);

  sub_1D5ED348C(v24, v26, v27);
  if (v16)
  {
  }

  else
  {
    v29 = 0;
  }

  *&v35 = v29;
  sub_1D613DC18(a2, &v35, a3);
}

uint64_t FormatSupplementary.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSupplementary.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSupplementary.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatSupplementary.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatSupplementary.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatSupplementary.children.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t FormatSupplementary.styles.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t FormatSupplementary.selectors.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t FormatSupplementary.options.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatSupplementary.types.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t FormatSupplementary.init(identifier:name:description:children:style:styles:selectors:kind:options:types:accessibilityRole:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char *a15)
{
  v19 = *a12;
  v20 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v19;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = v20;
  return result;
}

uint64_t FormatSupplementary.Kind.collectionViewSupplementaryKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D725EF8C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69D8470];
  if (!v3)
  {
    v6 = MEMORY[0x1E69D8478];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

NewsFeed::FormatSupplementary::Kind_optional __swiftcall FormatSupplementary.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSupplementary.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746F6F66;
  }

  else
  {
    return 0x726564616568;
  }
}

uint64_t sub_1D619D11C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746F6F66;
  }

  else
  {
    v2 = 0x726564616568;
  }

  if (*a2)
  {
    v3 = 0x7265746F6F66;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D619D19C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D619D20C()
{
  sub_1D72621EC();
}

uint64_t sub_1D619D260()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D619D2CC(uint64_t *a1@<X8>)
{
  v2 = 0x726564616568;
  if (*v1)
  {
    v2 = 0x7265746F6F66;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t _s8NewsFeed19FormatSupplementaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v28 = *(a1 + 64);
  v26 = *(a1 + 72);
  v24 = *(a1 + 80);
  v22 = *(a1 + 88);
  v18 = *(a1 + 104);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = *(a1 + 56);
  v27 = *(a2 + 64);
  v25 = *(a2 + 72);
  v23 = *(a2 + 80);
  v20 = *(a1 + 96);
  v21 = *(a2 + 88);
  v19 = *(a2 + 96);
  v17 = *(a2 + 104);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9 || (v3 != v10 || v6 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1D633E44C(v5, v11))
  {
    if (v30)
    {
      if (!v29)
      {
        return 0;
      }

      v12 = _s8NewsFeed28FormatSupplementaryNodeStyleC2eeoiySbAC_ACtFZ_0(v30, v29);

      if (!v12)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if ((sub_1D633E5BC(v28, v27) & 1) == 0 || (sub_1D5BFC390(v26, v25) & 1) == 0)
    {
      return 0;
    }

    if (v24)
    {
      v13 = 0x7265746F6F66;
    }

    else
    {
      v13 = 0x726564616568;
    }

    if (v23)
    {
      v14 = 0x7265746F6F66;
    }

    else
    {
      v14 = 0x726564616568;
    }

    if (v13 == v14)
    {
      swift_bridgeObjectRelease_n();
LABEL_35:
      if ((sub_1D633BCCC(v22, v21) & 1) == 0 || (sub_1D63491BC(v20, v19) & 1) == 0)
      {
        return 0;
      }

      if (v18 == 7)
      {
        if (v17 != 7)
        {
          return 0;
        }
      }

      else
      {
        v32 = v18;
        if (v17 == 7)
        {
          return 0;
        }

        v31 = v17;
        if (!_s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v32, &v31))
        {
          return 0;
        }
      }

      return 1;
    }

    v15 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    if (v15)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

unint64_t sub_1D619D5CC()
{
  result = qword_1EC884B98;
  if (!qword_1EC884B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884B98);
  }

  return result;
}

unint64_t sub_1D619D620(uint64_t a1)
{
  *(a1 + 8) = sub_1D619D650();
  result = sub_1D5CE7658();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D619D650()
{
  result = qword_1EC884BA0;
  if (!qword_1EC884BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BA0);
  }

  return result;
}

unint64_t sub_1D619D6A4(uint64_t a1)
{
  result = sub_1D619D6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619D6CC()
{
  result = qword_1EC884BA8;
  if (!qword_1EC884BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BA8);
  }

  return result;
}

unint64_t sub_1D619D760()
{
  result = qword_1EDF0F898;
  if (!qword_1EDF0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F898);
  }

  return result;
}

unint64_t sub_1D619D7B4(uint64_t a1)
{
  result = sub_1D5B4BADC();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatBracketDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBracketDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatBracketDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatBracketDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatBracketDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *FormatBracketDataVisualization.__allocating_init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  swift_beginAccess();
  v12[4] = a3;
  v12[5] = a4;
  swift_beginAccess();
  v12[6] = a5;
  swift_beginAccess();
  v12[7] = a6;
  return v12;
}

void *FormatBracketDataVisualization.init(tagIdentifier:query:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  swift_beginAccess();
  v6[4] = a3;
  v6[5] = a4;
  swift_beginAccess();
  v6[6] = a5;
  swift_beginAccess();
  v6[7] = a6;
  return v6;
}

uint64_t sub_1D619DC08()
{
  v1 = 0x746E656449676174;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x69747265706F7270;
  }

  if (*v0)
  {
    v1 = 0x7972657571;
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

uint64_t sub_1D619DC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D619EA48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D619DCBC(uint64_t a1)
{
  v2 = sub_1D5E1C284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D619DCF8(uint64_t a1)
{
  v2 = sub_1D5E1C284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBracketDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatBracketDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatBracketDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D619E760(0, &qword_1EC87F988, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C284();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  v12 = v3[4];
  v13 = v3[5];

  sub_1D5EAEE98(v12, v13, 1);

  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E067C0(v14, v10, 2);
  }

  swift_beginAccess();
  v15 = v3[7];
  if (*(v15 + 16))
  {
    v17 = 3;
    v16[1] = v15;
    sub_1D619E6EC();
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t FormatBracketDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatBracketDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatBracketDataVisualization.init(from:)(void *a1)
{
  v49 = *v1;
  v50 = v2;
  sub_1D5E18934();
  v45 = v4;
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v8 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D619E760(0, &qword_1EC884BB0, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C284();
  v17 = v50;
  v18 = v1;
  sub_1D7264B0C();
  if (v17)
  {
    swift_deallocPartialClassInstance();
    v38 = a1;
  }

  else
  {
    v43 = v11;
    v19 = v47;
    v20 = v48;
    v50 = a1;
    LOBYTE(v51) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v21;
    v42 = v1;
    v54 = 1;
    if (sub_1D726434C())
    {
      v53 = 1;
      sub_1D726431C();
      v22 = v51;
      v23 = v52;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = v42;
    v42[4] = v22;
    v24[5] = v23;
    LOBYTE(v51) = 2;
    v25 = v16;
    v26 = sub_1D726434C();
    v27 = v43;
    if (v26)
    {
      v54 = 2;
      sub_1D619E7C4(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
      v28 = v8;
      sub_1D726431C();
      v29 = v13;
      v30 = v20;
      v31 = v27;
      v32 = v25;
      v33 = v29;
      v34 = sub_1D725A74C();
      (*(v44 + 8))(v31, v28);
    }

    else
    {
      v30 = v20;
      v32 = v25;
      v33 = v13;
      v34 = MEMORY[0x1E69E7CD0];
    }

    v42[6] = v34;
    LOBYTE(v51) = 3;
    v35 = sub_1D726434C();
    v36 = v46;
    if (v35)
    {
      v54 = 3;
      sub_1D619E7C4(&qword_1EDF3BD70, 255, sub_1D5E18934);
      v37 = v45;
      sub_1D726431C();
      v40 = sub_1D725A74C();
      (*(v30 + 8))(v36, v37);
      (*(v19 + 8))(v32, v33);
    }

    else
    {
      (*(v19 + 8))(v32, v33);
      v40 = MEMORY[0x1E69E7CC0];
    }

    v38 = v50;
    v18 = v42;
    v42[7] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v18;
}

void *sub_1D619E664@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatBracketDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D619E6EC()
{
  result = qword_1EC87F998;
  if (!qword_1EC87F998)
  {
    sub_1D619E760(255, &qword_1EC87F988, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F998);
  }

  return result;
}

void sub_1D619E760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C284();
    v7 = a3(a1, &type metadata for FormatBracketDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D619E7C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D619E80C(void *a1, uint64_t a2)
{
  a1[1] = sub_1D619E7C4(&qword_1EC884BB8, a2, type metadata accessor for FormatBracketDataVisualization);
  a1[2] = sub_1D619E7C4(&qword_1EC884BC0, v3, type metadata accessor for FormatBracketDataVisualization);
  result = sub_1D619E7C4(&qword_1EC884BC8, v4, type metadata accessor for FormatBracketDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D619E944()
{
  result = qword_1EC884BD0;
  if (!qword_1EC884BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BD0);
  }

  return result;
}

unint64_t sub_1D619E99C()
{
  result = qword_1EC884BD8;
  if (!qword_1EC884BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BD8);
  }

  return result;
}

unint64_t sub_1D619E9F4()
{
  result = qword_1EC884BE0;
  if (!qword_1EC884BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BE0);
  }

  return result;
}

uint64_t sub_1D619EA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449676174 && a2 == 0xED00007265696669;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

id TagFeedHeadlineRequest.fetch.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D619EBD4(v2, v3, v4);
}

id sub_1D619EBD4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

id TagFeedHeadlineRequest.tag.getter()
{
  if (*(v0 + 16) == 1)
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    v2 = [*v0 backingTag];

    return v2;
  }
}

__n128 TagFeedHeadlineRequest.init(fetch:appConfig:dateRange:maxFetchCount:freeFeedRange:paidFetchRange:filterOptions:previousHeadlines:purpose:log:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11)
{
  v11 = a1[1].n128_u8[0];
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u8[0] = v11;
  a9[1].n128_u64[1] = a2;
  a9[2].n128_u64[0] = a3;
  a9[2].n128_u64[1] = a4;
  a9[3].n128_u64[0] = a5;
  a9[5].n128_u64[0] = a7;
  a9[5].n128_u64[1] = a8;
  a9[3].n128_u64[1] = a6;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u64[1] = a11;
  return result;
}

uint64_t TagFeedHeadlineRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x3D6761747BLL, 0xE500000000000000);
  if (v2 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v1 = [v1 backingTag];
  }

  v5 = [v1 identifier];
  swift_unknownObjectRelease();
  v6 = sub_1D726207C();
  v8 = v7;

  MEMORY[0x1DA6F9910](v6, v8);

  MEMORY[0x1DA6F9910](0x756F4378616D202CLL, 0xEB000000003D746ELL);
  v9 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](0x615265746164202CLL, 0xEC0000003D65676ELL);
  v10 = [v3 description];
  v11 = sub_1D726207C();
  v13 = v12;

  MEMORY[0x1DA6F9910](v11, v13);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73CD150);
  if (v4 >> 62)
  {
    sub_1D7263BFC();
  }

  v14 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D619EF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D619EF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D619EFB4(uint64_t a1, uint64_t a2)
{
  sub_1D725A76C();
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = v8;
  }

  else
  {
    swift_endAccess();
    v10 = sub_1D726203C();
    v8 = [objc_opt_self() bundleWithIdentifier_];

    if (v8)
    {
      swift_beginAccess();
      v11 = v8;

      sub_1D6D601E4(v8, a1, a2);
      swift_endAccess();
    }
  }

  sub_1D725A77C();
  return v8;
}

uint64_t FormatBundleImage.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBundleImage.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBundleImage.size.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5E433CC(v2, v3, v4);
}

uint64_t sub_1D619F180(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v8 = *(v1 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;

  sub_1D6C4D24C(v9 | 0x9000000000000000);

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    sub_1D5E433E0(v14, v15, 2u);
    sub_1D6273544(a1, v14);
    if (!v2)
    {
      sub_1D6273544(a1, v15);
    }

    v11 = v14;
    v12 = v15;
    v13 = 2;
  }

  else if (v8)
  {
    sub_1D5E433E0(v14, v15, 1u);
    sub_1D6273544(a1, v14);
    v11 = v14;
    v12 = v15;
    v13 = 1;
  }

  else
  {
    sub_1D5E433E0(v14, v15, 0);
    sub_1D6273544(a1, v14);
    v11 = v14;
    v12 = v15;
    v13 = 0;
  }

  return sub_1D5E4342C(v11, v12, v13);
}

uint64_t sub_1D619F310()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatBundleCache();
  v2 = swift_allocObject();
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  result = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = result;
  *(v2 + 24) = v4;
  qword_1EDFFCC00 = v2;
  return result;
}

uint64_t sub_1D619F3CC()
{

  return swift_deallocClassInstance();
}

BOOL _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6 == 255)
  {
    sub_1D5E433CC(v3, v5, 0xFFu);
    if (v11 == 255)
    {
      sub_1D5E433CC(v10, v9, 0xFFu);
      sub_1D5E4342C(v3, v5, 0xFFu);
      return 1;
    }

    sub_1D5E433CC(v10, v9, v11);
  }

  else
  {
    v17 = v3;
    v18 = v5;
    v19 = v6;
    if (v11 != 255)
    {
      v14 = v10;
      v15 = v9;
      v16 = v11;
      sub_1D5E433CC(v3, v5, v6);
      sub_1D5E433CC(v10, v9, v11);
      sub_1D5E433CC(v3, v5, v6);
      v12 = _s8NewsFeed21FormatBundleImageSizeO2eeoiySbAC_ACtFZ_0(&v17, &v14);
      sub_1D5E43440(v14, v15, v16);
      sub_1D5E43440(v17, v18, v19);
      sub_1D5E4342C(v3, v5, v6);
      return v12;
    }

    sub_1D5E433CC(v3, v5, v6);
    sub_1D5E433CC(v10, v9, 0xFFu);
    sub_1D5E433CC(v3, v5, v6);
    sub_1D5E43440(v3, v5, v6);
  }

  sub_1D5E4342C(v3, v5, v6);
  sub_1D5E4342C(v10, v9, v11);
  return 0;
}

unint64_t sub_1D619F620(uint64_t a1)
{
  result = sub_1D619F648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D619F648()
{
  result = qword_1EC884BE8;
  if (!qword_1EC884BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BE8);
  }

  return result;
}

unint64_t sub_1D619F69C(void *a1)
{
  a1[1] = sub_1D5CCF640();
  a1[2] = sub_1D619F6D4();
  result = sub_1D619F728();
  a1[3] = result;
  return result;
}

unint64_t sub_1D619F6D4()
{
  result = qword_1EDF10CE8;
  if (!qword_1EDF10CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CE8);
  }

  return result;
}

unint64_t sub_1D619F728()
{
  result = qword_1EC884BF0;
  if (!qword_1EC884BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BF0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatBundleImageSizeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedContext.bundleSession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedContext() + 20);

  return sub_1D5B8866C(v3, a1);
}

uint64_t FeedContext.selectors.getter()
{
  type metadata accessor for FeedContext();
}

uint64_t FeedContext.segmentSetIds.getter()
{
  type metadata accessor for FeedContext();
}

uint64_t FeedContext.platform.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedContext() + 48));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5B7CD94(v4, v5);
}

void *FeedContext.timesOfDayConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedContext() + 56));
  v2 = v1;
  return v1;
}

uint64_t FeedContext.feedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedContext() + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FeedContext.init(subscription:bundleSession:displayFreeBadges:displayPremiumBadges:debugForcePremiumBadging:segmentSetIds:platform:allowsNewsProxyAudioCommands:timesOfDayConfiguration:userInfo:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, void *a9@<X8>, void *a10, void *a11, uint64_t a12)
{
  v33 = a7[1];
  v34 = *a7;
  *a9 = a1;
  v15 = type metadata accessor for FeedContext();
  sub_1D5B8866C(a2, a9 + v15[5]);
  v16 = a1;
  if (objc_getAssociatedObject(v16, (a1 + 1)))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v17 = v37;
      v18 = [v37 integerValue];
      if (v18 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D5EBD03C(&v40);
  }

  v17 = 0;
  v18 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v16, ~v18))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v19 = v37;
      v20 = [v19 integerValue];

      v21 = v20 - 70;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D5EBD03C(&v40);
  }

LABEL_17:

  v21 = -70;
LABEL_18:
  *(a9 + v15[6]) = (v21 ^ v18) & 1;
  *(a9 + v15[7]) = a3 & 1;
  *(a9 + v15[8]) = a4 & 1;
  *(a9 + v15[9]) = a5 & 1;
  LOBYTE(v40) = 0;
  v22 = sub_1D5B8630C(v16, a2, a6, a10, &v40, a11, a12);

  *(a9 + v15[10]) = v22;
  *(a9 + v15[11]) = a6;
  v23 = (a9 + v15[12]);
  *v23 = v34;
  v23[1] = v33;
  *(a9 + v15[13]) = a8 & 1;
  *(a9 + v15[14]) = a10;
  v24 = qword_1EDF38CD8;
  v25 = a10;
  if (v24 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_1EDF38CE0;
  v26 = unk_1EDF38CE8;

  __swift_destroy_boxed_opaque_existential_1(a11);
  result = sub_1D5BFC618(a2, &qword_1EDF33290, type metadata accessor for BundleSession);
  v29 = (a9 + v15[15]);
  *v29 = v27;
  v29[1] = v26;
  return result;
}