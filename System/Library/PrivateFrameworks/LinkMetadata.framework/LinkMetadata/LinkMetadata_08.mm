uint64_t sub_18F02EB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F02EC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F02EB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F02EC54(uint64_t a1)
{
  v2 = sub_18F031790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F02EC90(uint64_t a1)
{
  v2 = sub_18F031790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssistantSchemaVersion.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95C0, &qword_18F0AAEE8);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_46();
  v11 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_18F031790();
  sub_18F0945BC();
  OUTLINED_FUNCTION_159();
  sub_18F0943DC();
  if (!v1)
  {
    OUTLINED_FUNCTION_159();
    sub_18F0943DC();
    OUTLINED_FUNCTION_159();
    sub_18F0943DC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_177();
}

uint64_t AssistantSchemaVersion.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x193AD9070](*v0);
  MEMORY[0x193AD9070](v1);
  return MEMORY[0x193AD9070](v2);
}

uint64_t AssistantSchemaVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18F09452C();
  v4 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x193AD9070](v4);
  MEMORY[0x193AD9070](v2);
  MEMORY[0x193AD9070](v3);
  return sub_18F09456C();
}

void AssistantSchemaVersion.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95C8, &qword_18F0AAEF0);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_162();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_18F031790();
  sub_18F09459C();
  if (!v0)
  {
    OUTLINED_FUNCTION_15_1();
    v10 = sub_18F0942DC();
    OUTLINED_FUNCTION_15_1();
    v11 = sub_18F0942DC();
    OUTLINED_FUNCTION_15_1();
    v12 = sub_18F0942DC();
    v13 = OUTLINED_FUNCTION_118();
    v14(v13);
    *v4 = v10;
    v4[1] = v11;
    v4[2] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F02F0A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18F09452C();
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  MEMORY[0x193AD9070](v3);
  return sub_18F09456C();
}

BOOL sub_18F02F140(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a1 < a4;
  v7 = a3 < a6;
  if (a2 != a5)
  {
    v7 = a2 < a5;
  }

  if (a1 == a4)
  {
    v6 = v7;
  }

  return !v6;
}

BOOL sub_18F02F1C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6 < a3;
  if (a5 != a2)
  {
    v6 = a5 < a2;
  }

  if (a4 == a1)
  {
    return v6;
  }

  else
  {
    return a4 < a1;
  }
}

uint64_t AssistantSchemaVersionRange.contains(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *a1;
  v7 = v2;
  return v3(&v6) & 1;
}

__n128 static AssistantSchemaVersionRange.exactly(_:)@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  *a2 = sub_18F0317E4;
  a2[1] = v4;
  return result;
}

BOOL (*static AssistantSchemaVersionRange.atLeast(_:)(uint64_t *a1))(unint64_t *a1)
{
  result = OUTLINED_FUNCTION_12_1(a1);
  if (qword_1EACB7280 != -1)
  {
    result = swift_once();
  }

  v6 = qword_1EACB9550;
  v7 = qword_1EACB9558;
  v8 = qword_1EACB9560;
  v9 = qword_1EACB9550 >= v2;
  if (qword_1EACB9550 == v2)
  {
    v9 = qword_1EACB9558 >= v3;
    if (qword_1EACB9558 == v3)
    {
      v9 = qword_1EACB9560 >= v4;
    }
  }

  if (v9)
  {
    result = swift_allocObject();
    *(result + 2) = v2;
    *(result + 3) = v3;
    *(result + 4) = v4;
    *(result + 5) = v6;
    *(result + 6) = v7;
    *(result + 7) = v8;
    *v1 = sub_18F031814;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL (*static AssistantSchemaVersionRange.between(_:and:)(uint64_t *a1))(unint64_t *)
{
  result = OUTLINED_FUNCTION_12_1(a1);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *v6 >= v2;
  if (*v6 == v2)
  {
    v10 = v8 >= v3;
    if (v8 == v3)
    {
      v10 = v9 >= v4;
    }
  }

  if (v10)
  {
    result = swift_allocObject();
    *(result + 2) = v2;
    *(result + 3) = v3;
    *(result + 4) = v4;
    *(result + 5) = v7;
    *(result + 6) = v8;
    *(result + 7) = v9;
    *v1 = sub_18F0322D8;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL (*static AssistantSchemaVersionRange.upTo(_:)(uint64_t *a1))(unint64_t *)
{
  result = OUTLINED_FUNCTION_12_1(a1);
  if (qword_1EACB7278 != -1)
  {
    result = swift_once();
  }

  v6 = qword_1EACB9538;
  v7 = unk_1EACB9540;
  v8 = qword_1EACB9548;
  v9 = v2 >= qword_1EACB9538;
  if (v2 == qword_1EACB9538)
  {
    v9 = v3 >= unk_1EACB9540;
    if (v3 == unk_1EACB9540)
    {
      v9 = v4 >= qword_1EACB9548;
    }
  }

  if (v9)
  {
    result = swift_allocObject();
    *(result + 2) = v6;
    *(result + 3) = v7;
    *(result + 4) = v8;
    *(result + 5) = v2;
    *(result + 6) = v3;
    *(result + 7) = v4;
    *v1 = sub_18F0322D8;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_18F02F4F0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1 >= *a2;
  if (*a1 == *a2)
  {
    v6 = a2[1];
    v5 = v3 >= v6;
    if (v3 == v6)
    {
      v5 = v4 >= a2[2];
    }
  }

  if (!v5)
  {
    return 0;
  }

  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5] < v4;
  v11 = v9 == v3;
  v12 = v9 < v3;
  if (v11)
  {
    v12 = v10;
  }

  v11 = v8 == v2;
  v13 = v8 < v2;
  if (v11)
  {
    v13 = v12;
  }

  return !v13;
}

__n128 AssistantSchemaIdentifier.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

BOOL static AssistantSchemaIdentifier.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  if ((sub_18F09444C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v4 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108();
  if ((sub_18F09444C() & 1) == 0)
  {
    return 0;
  }

  v14 = v7 < v12;
  if (v6 != v11)
  {
    v14 = v6 < v11;
  }

  if (v5 == v10)
  {
    return v14;
  }

  else
  {
    return v5 < v10;
  }
}

uint64_t static AssistantSchemaIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_18F09444C();
  result = 0;
  if (v13)
  {
    v15 = v2 == v8 && v4 == v7;
    if (v15 && v3 == v10)
    {
LABEL_22:
      if (v5 == v9 && v6 == v11)
      {
        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_108();

        return sub_18F09444C();
      }
    }
  }

  return result;
}

uint64_t sub_18F02F740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F02F84C(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

uint64_t sub_18F02F898()
{
  v1 = *v0;
  sub_18F09452C();
  v2 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x193AD9050](v2);
  return sub_18F09456C();
}

uint64_t sub_18F02F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F02F740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F02F908(uint64_t a1)
{
  v2 = sub_18F03181C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F02F944(uint64_t a1)
{
  v2 = sub_18F03181C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssistantSchemaIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_180();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95D0, &qword_18F0AAEF8);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_46();
  v11 = *v0;
  v12 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v0[5];
  v16 = v0[4];
  v14 = v0[6];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_18F03181C();
  sub_18F0945BC();
  sub_18F09437C();
  if (!v1)
  {
    sub_18F031870();
    OUTLINED_FUNCTION_159();
    sub_18F0943CC();
    OUTLINED_FUNCTION_159();
    sub_18F09437C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_177();
}

uint64_t AssistantSchemaIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_18F093C1C();
  MEMORY[0x193AD9070](v3);
  MEMORY[0x193AD9070](v4);
  MEMORY[0x193AD9070](v5);

  return sub_18F093C1C();
}

uint64_t AssistantSchemaIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_16_1();
  sub_18F09452C();
  sub_18F093C1C();
  MEMORY[0x193AD9070](v0);
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  sub_18F093C1C();
  return sub_18F09456C();
}

void AssistantSchemaIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB95E0, &qword_18F0AAF00);
  OUTLINED_FUNCTION_7(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_162();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_18F03181C();
  sub_18F09459C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v20) = 0;
    OUTLINED_FUNCTION_15_1();
    v13 = sub_18F09427C();
    v15 = v14;
    sub_18F0318C4();
    sub_18F0942CC();
    OUTLINED_FUNCTION_15_1();
    v16 = sub_18F09427C();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
    v5[2] = v20;
    v5[3] = v21;
    v5[4] = v22;
    v5[5] = v19;
    v5[6] = v18;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_177();
}

uint64_t sub_18F02FE94()
{
  OUTLINED_FUNCTION_16_1();
  sub_18F09452C();
  sub_18F093C1C();
  MEMORY[0x193AD9070](v0);
  MEMORY[0x193AD9070](v1);
  MEMORY[0x193AD9070](v2);
  sub_18F093C1C();
  return sub_18F09456C();
}

BOOL sub_18F02FF28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02D028(v5, v7);
}

BOOL sub_18F02FF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02F16C(v5, v7);
}

BOOL sub_18F02FFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_18F02F1F0(v5, v7);
}

uint64_t sub_18F030044(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_18F093D2C();
    OUTLINED_FUNCTION_20_0();
    sub_18F00EBEC();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_18F00EBEC();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_9_2();
      v17 = sub_18F093D0C();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_9_2();
      v16 = sub_18F093C3C();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_18F093D2C();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_18F00EBEC();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_18F00EBEC();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_9_2();
    v16 = sub_18F093C3C();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_18F093D2C();
        OUTLINED_FUNCTION_20_0();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_18F00EBEC();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F0303A0()
{
  v0 = sub_18F03040C();
  v4 = sub_18F030440(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_18F030440(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18F093C0C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_18F093F5C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_18F0466B8(v9, 0);
  v12 = sub_18F0305A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_18F093C0C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_18F0940EC();
LABEL_4:

  return sub_18F093C0C();
}

unint64_t sub_18F0305A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_18F0307B0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18F093CCC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18F0940EC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_18F0307B0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_18F093C9C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18F0307B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18F093CDC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193AD87C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_18F03082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_18EFBBCD0();

  result = sub_18F093D1C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_18F0303A0();
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18F0940EC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_18F030DC0()
{
  result = qword_1EACB6D68;
  if (!qword_1EACB6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D68);
  }

  return result;
}

unint64_t sub_18F030E14()
{
  result = qword_1EACB9578;
  if (!qword_1EACB9578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9570, &qword_18F0AAEC8);
    sub_18F030EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9578);
  }

  return result;
}

unint64_t sub_18F030EA0()
{
  result = qword_1EACB9580;
  if (!qword_1EACB9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9580);
  }

  return result;
}

unint64_t sub_18F030EF4()
{
  result = qword_1EACB9590;
  if (!qword_1EACB9590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9588, &qword_18F0AAED0);
    sub_18F030F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9590);
  }

  return result;
}

unint64_t sub_18F030F80()
{
  result = qword_1EACB9598;
  if (!qword_1EACB9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9598);
  }

  return result;
}

unint64_t sub_18F030FD4()
{
  result = qword_1EACB95A8;
  if (!qword_1EACB95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB95A0, &qword_18F0AAED8);
    sub_18F031060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95A8);
  }

  return result;
}

unint64_t sub_18F031060()
{
  result = qword_1EACB95B0;
  if (!qword_1EACB95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95B0);
  }

  return result;
}

unint64_t sub_18F0310B4()
{
  result = qword_1EACB6C68;
  if (!qword_1EACB6C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9570, &qword_18F0AAEC8);
    sub_18F031140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C68);
  }

  return result;
}

unint64_t sub_18F031140()
{
  result = qword_1EACB6D70;
  if (!qword_1EACB6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D70);
  }

  return result;
}

unint64_t sub_18F031194()
{
  result = qword_1EACB6C70;
  if (!qword_1EACB6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9588, &qword_18F0AAED0);
    sub_18F031220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C70);
  }

  return result;
}

unint64_t sub_18F031220()
{
  result = qword_1EACB6D90;
  if (!qword_1EACB6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D90);
  }

  return result;
}

unint64_t sub_18F031274()
{
  result = qword_1EACB6C78;
  if (!qword_1EACB6C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB95A0, &qword_18F0AAED8);
    sub_18F031300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C78);
  }

  return result;
}

unint64_t sub_18F031300()
{
  result = qword_1EACB6DD0;
  if (!qword_1EACB6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DD0);
  }

  return result;
}

uint64_t sub_18F031354(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_18F0307B0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_18F093CBC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_18F0307B0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_18F0307B0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_18F093CBC();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_18F031790()
{
  result = qword_1EACB6DC8;
  if (!qword_1EACB6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DC8);
  }

  return result;
}

unint64_t sub_18F03181C()
{
  result = qword_1EACB6D10;
  if (!qword_1EACB6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D10);
  }

  return result;
}

unint64_t sub_18F031870()
{
  result = qword_1EACB95D8;
  if (!qword_1EACB95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95D8);
  }

  return result;
}

unint64_t sub_18F0318C4()
{
  result = qword_1EACB6DB0;
  if (!qword_1EACB6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DB0);
  }

  return result;
}

unint64_t sub_18F03191C()
{
  result = qword_1EACB95E8;
  if (!qword_1EACB95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95E8);
  }

  return result;
}

unint64_t sub_18F031974()
{
  result = qword_1EACB95F0;
  if (!qword_1EACB95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95F0);
  }

  return result;
}

unint64_t sub_18F0319C8()
{
  result = qword_1EACB95F8;
  if (!qword_1EACB95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB95F8);
  }

  return result;
}

unint64_t sub_18F031A1C()
{
  result = qword_1EACB6B10;
  if (!qword_1EACB6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssistantPrebuiltConformanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltConformanceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssistantSchemaVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AssistantSchemaVersion(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BundleMetadataExtractionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F031D8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F031E6C()
{
  result = qword_1EACB9600;
  if (!qword_1EACB9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9600);
  }

  return result;
}

unint64_t sub_18F031EC4()
{
  result = qword_1EACB9608;
  if (!qword_1EACB9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9608);
  }

  return result;
}

unint64_t sub_18F031F1C()
{
  result = qword_1EACB9610;
  if (!qword_1EACB9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9610);
  }

  return result;
}

unint64_t sub_18F031F74()
{
  result = qword_1EACB6D00;
  if (!qword_1EACB6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D00);
  }

  return result;
}

unint64_t sub_18F031FCC()
{
  result = qword_1EACB6D08;
  if (!qword_1EACB6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D08);
  }

  return result;
}

unint64_t sub_18F032024()
{
  result = qword_1EACB6DB8;
  if (!qword_1EACB6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DB8);
  }

  return result;
}

unint64_t sub_18F03207C()
{
  result = qword_1EACB6DC0;
  if (!qword_1EACB6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DC0);
  }

  return result;
}

unint64_t sub_18F0320D4()
{
  result = qword_1EACB6D58;
  if (!qword_1EACB6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D58);
  }

  return result;
}

unint64_t sub_18F03212C()
{
  result = qword_1EACB6D60;
  if (!qword_1EACB6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D60);
  }

  return result;
}

unint64_t sub_18F032180()
{
  result = qword_1EACB6CF0;
  if (!qword_1EACB6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CF0);
  }

  return result;
}

unint64_t sub_18F0321D4()
{
  result = qword_1EACB6CB0;
  if (!qword_1EACB6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CB0);
  }

  return result;
}

uint64_t sub_18F032228(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18F03226C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_108();
  v7(v6);
  return a2;
}

id sub_18F03230C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v38 = sub_18F093B5C();

  v36 = sub_18F093B5C();

  v35 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  v34 = sub_18F093DBC();

  if (a11)
  {
    v33 = sub_18F093B5C();
  }

  else
  {
    v33 = 0;
  }

  if (a12)
  {
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EFB6910(&qword_1ED5FFA38, type metadata accessor for LNPlatformName);
    v32 = sub_18F093A3C();
  }

  else
  {
    v32 = 0;
  }

  if (a13)
  {
    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    v24 = sub_18F093DBC();
  }

  else
  {
    v24 = 0;
  }

  type metadata accessor for LNSystemEntityProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB6910(&qword_1ED5FE770, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v25 = sub_18F093A3C();

  if (a16)
  {
    v26 = sub_18F093B5C();
  }

  else
  {
    v26 = 0;
  }

  if (a18)
  {
    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    v27 = sub_18F093DBC();
  }

  else
  {
    v27 = 0;
  }

  if (a20)
  {
    v28 = sub_18F093B5C();
  }

  else
  {
    v28 = 0;
  }

  if (a23)
  {
    v29 = sub_18F093B5C();
  }

  else
  {
    v29 = 0;
  }

  if (a24)
  {
    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    v30 = sub_18F093DBC();
  }

  else
  {
    v30 = 0;
  }

  v40 = [v39 initWithIdentifier:v38 transient:a3 & 1 mangledTypeName:v36 mangledTypeNameByBundleIdentifier:v35 effectiveBundleIdentifiers:a7 displayRepresentation:a8 properties:v34 customIntentTypeClassName:v33 availabilityAnnotations:v32 requiredCapabilities:v24 systemProtocolMetadata:v25 attributionBundleIdentifier:v26 transferableContentTypes:a17 assistantDefinedSchemas:v27 fullyQualifiedTypeName:v28 visibilityMetadata:a21 defaultQueryIdentifier:v29 allowedTargets:v30];

  return v40;
}

uint64_t sub_18F032750@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFB9100(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t DaemonRecord.bundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_2_7();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t DaemonRecord.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_3_6();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DaemonRecord.attributionBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier);
  OUTLINED_FUNCTION_2_7();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t DaemonRecord.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier);
  OUTLINED_FUNCTION_3_6();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DaemonRecord.metadataURLs.getter()
{
  v1 = OBJC_IVAR___swift_DaemonRecord_metadataURLs;
  OUTLINED_FUNCTION_4_7();
  v2 = *(v0 + v1);
}

uint64_t DaemonRecord.metadataURLs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___swift_DaemonRecord_metadataURLs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DaemonRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR___swift_DaemonRecord_bundleIdentifier);
  OUTLINED_FUNCTION_4_7();
  v7 = *v5;
  v6 = v5[1];
  v8 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  objc_allocWithZone(LNEffectiveBundleIdentifier);

  return sub_18EF7FCF0(2, v7, v6, v4);
}

id sub_18F032C4C()
{
  result = sub_18F032C6C();
  qword_1ED5FDAE0 = result;
  return result;
}

id sub_18F032C6C()
{
  v53[1] = *MEMORY[0x1E69E9840];
  v0 = sub_18F0932BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = [objc_opt_self() defaultManager];
  sub_18F09323C();
  v14 = sub_18F09324C();
  v16 = v1 + 8;
  v15 = *(v1 + 8);
  v15(v12, v0);
  v53[0] = 0;
  v17 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:v53];

  v18 = v53[0];
  if (!v17)
  {
    v41 = v53[0];
    v42 = sub_18F09318C();

    swift_willThrow();
    result = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v50 = v15;
  v46 = v7;
  v19 = sub_18F093DCC();
  v20 = v18;

  v21 = 0;
  v51 = *(v19 + 16);
  v52 = v1 + 16;
  v47 = (v1 + 32);
  v49 = MEMORY[0x1E69E7CC0];
  while (v51 != v21)
  {
    if (v21 >= *(v19 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v22 = v16;
    v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v24 = *(v1 + 72);
    (*(v1 + 16))(v10, v19 + v23 + v24 * v21, v0);
    if (sub_18F0931EC())
    {
      if (sub_18F09320C() == 0x7473696C70 && v25 == 0xE500000000000000)
      {
      }

      else
      {
        v27 = sub_18F09444C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v45 = *v47;
      v45(v48, v10, v0);
      v28 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v28[2];
        sub_18F00F748();
        v28 = v53[0];
      }

      v31 = v28[2];
      v32 = (v31 + 1);
      if (v31 >= v28[3] >> 1)
      {
        v49 = (v31 + 1);
        sub_18F00F748();
        v32 = v49;
        v28 = v53[0];
      }

      ++v21;
      v28[2] = v32;
      v49 = v28;
      v45(v28 + v23 + v31 * v24, v48, v0);
      v16 = v22;
    }

    else
    {
LABEL_11:
      v16 = v22;
      v50(v10, v0);
      ++v21;
    }
  }

  v33 = 0;
  v53[0] = MEMORY[0x1E69E7CC0];
  v35 = v49;
  v34 = v50;
  v36 = v49[2];
  v37 = v46;
  while (v36 != v33)
  {
    if (v33 >= v35[2])
    {
      goto LABEL_26;
    }

    v38 = (*(v1 + 16))(v37, v35 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v33, v0);
    v39 = MEMORY[0x193AD91F0](v38);
    sub_18F033130(v37, v53);
    ++v33;
    objc_autoreleasePoolPop(v39);
    v34(v37, v0);
  }

  result = v53[0];
LABEL_24:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F033130(unint64_t a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_18F0932BC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = (MEMORY[0x1EEE9AC00])();
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v77 = v66 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v66 - v13;
  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v15 = sub_18F093A2C();
  v16 = __swift_project_value_buffer(v15, qword_1ED60C1C0);
  v75 = v6[2];
  v76 = v6 + 2;
  v75(v14, a1, v5);
  v86[6] = v16;
  v17 = sub_18F093A0C();
  v18 = sub_18F093EDC();
  v19 = os_log_type_enabled(v17, v18);
  v79 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v78 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v86[0] = v22;
    *v21 = 136315138;
    sub_18F034544();
    v23 = sub_18F0943FC();
    v69 = v2;
    v24 = v6;
    v26 = v25;
    v74 = v24[1];
    v74(v14, v79);
    v27 = sub_18F0462AC(v23, v26, v86);
    v6 = v24;
    v3 = v69;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_18EF7E000, v17, v18, "Found daemon record: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v28 = v22;
    v5 = v79;
    MEMORY[0x193AD9AF0](v28, -1, -1);
    v29 = v21;
    a1 = v78;
    MEMORY[0x193AD9AF0](v29, -1, -1);
  }

  else
  {

    v74 = v6[1];
    v74(v14, v5);
  }

  v30 = sub_18F034500();
  v31 = v77;
  v75(v77, a1, v5);
  v78 = v30;
  v32 = sub_18F03E9B0(v31);
  if (!v32)
  {
    return;
  }

  v33 = v32;
  *&v84 = 0x506C6C6174736E49;
  *(&v84 + 1) = 0xEB00000000687461;
  v34 = [v32 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_43;
  }

  sub_18F093FAC();
  swift_unknownObjectRelease();
  sub_18EFB6E2C(v86, &v84);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18EFB6E2C(v86, &v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    if (swift_dynamicCast())
    {
      v36 = v82;
      v38 = *(v82 + 16);
      if (!v38)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v86);
LABEL_43:

    return;
  }

  v35 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  v36 = swift_allocObject();
  *(&v37 + 1) = 2;
  *(v36 + 16) = xmmword_18F09BCC0;
  *(v36 + 32) = v35;
  v38 = 1;
LABEL_12:
  v67 = v33;
  v69 = v3;
  v73 = v6 + 1;
  v66[1] = v36;
  v39 = (v36 + 40);
  *&v37 = 136315138;
  v72 = v37;
  *&v37 = 136446210;
  v71 = v37;
  do
  {
    v40 = *(v39 - 1);
    v41 = *v39;
    swift_bridgeObjectRetain_n();
    v42 = sub_18F093A0C();
    v43 = sub_18F093EDC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v84 = v45;
      *v44 = v72;
      *(v44 + 4) = sub_18F0462AC(v40, v41, &v84);
      _os_log_impl(&dword_18EF7E000, v42, v43, "Registering daemon from: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v46 = v45;
      v5 = v79;
      MEMORY[0x193AD9AF0](v46, -1, -1);
      MEMORY[0x193AD9AF0](v44, -1, -1);
    }

    sub_18F09323C();
    v47 = v77;
    v75(v77, v10, v5);
    v48 = sub_18F03E9B0(v47);
    if (!v48)
    {
      goto LABEL_34;
    }

    v49 = v48;
    *&v82 = 0x6C6562614CLL;
    *(&v82 + 1) = 0xE500000000000000;
    v50 = [v48 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v50)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
    }

    v84 = v82;
    v85 = v83;
    if (!*(&v83 + 1))
    {
      goto LABEL_31;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_33;
    }

    v51 = v81;
    v70 = v80;
    *&v82 = 0x6E65746E49707041;
    *(&v82 + 1) = 0xEA00000000007374;
    v52 = [v49 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
    }

    v84 = v82;
    v85 = v83;
    v5 = v79;
    if (!*(&v83 + 1))
    {

LABEL_31:

      sub_18F021E3C(&v84);
      goto LABEL_34;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_33:

      goto LABEL_34;
    }

    v53 = v80;
    objc_allocWithZone(type metadata accessor for DaemonRecord());
    v54 = v53;
    v55 = sub_18F033D28(v70, v51, v54);
    if (v55)
    {
      v56 = v55;

      v57 = v56;
      v58 = v68;
      MEMORY[0x193AD88C0]();
      if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      sub_18F093E3C();

      v59 = v10;
      v5 = v79;
      goto LABEL_38;
    }

    v5 = v79;
LABEL_34:

    v60 = sub_18F093A0C();
    v61 = sub_18F093ECC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v84 = v63;
      *v62 = v71;
      v64 = sub_18F0462AC(v40, v41, &v84);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_18EF7E000, v60, v61, "Failed to register daemon from: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v65 = v63;
      v5 = v79;
      MEMORY[0x193AD9AF0](v65, -1, -1);
      MEMORY[0x193AD9AF0](v62, -1, -1);
    }

    else
    {
    }

    v59 = v10;
LABEL_38:
    v74(v59, v5);
    v39 += 2;
    --v38;
  }

  while (v38);
  v33 = v67;
LABEL_41:

  __swift_destroy_boxed_opaque_existential_1Tm(v86);
}

uint64_t *sub_18F033A7C()
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  return &qword_1ED5FDAE0;
}

uint64_t static DaemonRecord.enumerated.getter()
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_2_7();
}

uint64_t static DaemonRecord.enumerated.setter(uint64_t a1)
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_3_6();
  qword_1ED5FDAE0 = a1;
}

uint64_t (*static DaemonRecord.enumerated.modify())()
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F033C78@<X0>(void *a1@<X8>)
{
  sub_18F033A7C();
  swift_beginAccess();
  *a1 = qword_1ED5FDAE0;
}

uint64_t sub_18F033CCC(uint64_t *a1)
{
  v1 = *a1;

  sub_18F033A7C();
  swift_beginAccess();
  qword_1ED5FDAE0 = v1;
}

id sub_18F033D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v43 = a1;
  ObjectType = swift_getObjectType();
  v47 = sub_18F0931FC();
  v41 = *(v47 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00]();
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v45 = &v38 - v10;
  v49 = sub_18F0932BC();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v48 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v3[OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v53 = 0xD000000000000015;
  *(&v53 + 1) = 0x800000018F0B0440;
  v15 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (*(&v54 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    if (swift_dynamicCast())
    {
      v44 = v50;
      v16 = &v3[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
      *v16 = v43;
      *(v16 + 1) = a2;
      *&v55 = 0xD00000000000001BLL;
      *(&v55 + 1) = 0x800000018F0B0460;
      a2 = sub_18F09448C();
      v17 = [a3 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v17)
      {
        sub_18F093FAC();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v55 = v53;
      v56 = v54;
      v40 = v3;
      v39 = a3;
      v38 = ObjectType;
      if (*(&v54 + 1))
      {
        v26 = swift_dynamicCast();
        if (v26)
        {
          v27 = v50;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = v51;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        sub_18F021E3C(&v55);
        v27 = 0;
        v28 = 0;
      }

      swift_beginAccess();
      v29 = *(v14 + 1);
      *v14 = v27;
      *(v14 + 1) = v28;

      v30 = 0;
      v43 = *(v44 + 16);
      v42 = *MEMORY[0x1E6968F70];
      v31 = (v41 + 104);
      a3 = (v44 + 40);
      v14 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v43 == v30)
        {

          v36 = v40;
          *&v40[OBJC_IVAR___swift_DaemonRecord_metadataURLs] = v14;
          v52.receiver = v36;
          v52.super_class = v38;
          v25 = objc_msgSendSuper2(&v52, sel_init);

          return v25;
        }

        if (v30 >= *(v44 + 16))
        {
          break;
        }

        v33 = *(a3 - 1);
        v32 = *a3;
        __swift_storeEnumTagSinglePayload(v45, 1, 1, v49);
        a2 = v46;
        (*v31)(v46, v42, v47);

        sub_18F09329C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_18F00ECBC(0, *(v14 + 2) + 1, 1, v14);
        }

        v35 = *(v14 + 2);
        v34 = *(v14 + 3);
        if (v35 >= v34 >> 1)
        {
          v14 = sub_18F00ECBC(v34 > 1, v35 + 1, 1, v14);
        }

        *(v14 + 2) = v35 + 1;
        (*(v11 + 32))(&v14[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35], v48, v49);
        a3 += 2;
        ++v30;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    sub_18F021E3C(&v55);
  }

  if (qword_1ED5FEEB8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v18 = sub_18F093A2C();
  __swift_project_value_buffer(v18, qword_1ED60C1C0);

  v19 = sub_18F093A0C();
  v20 = sub_18F093ECC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v55 = v22;
    *v21 = 136446210;
    v23 = sub_18F0462AC(v43, a2, &v55);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_18EF7E000, v19, v20, "The plist for %{public}s should contain MetadataAbsolutePaths", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x193AD9AF0](v22, -1, -1);
    MEMORY[0x193AD9AF0](v21, -1, -1);
  }

  else
  {
  }

  v24 = *(v14 + 1);

  swift_deallocPartialClassInstance();
  return 0;
}

id DaemonRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18F034500()
{
  result = qword_1ED5FDAD8;
  if (!qword_1ED5FDAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FDAD8);
  }

  return result;
}

unint64_t sub_18F034544()
{
  result = qword_1ED5FEC20;
  if (!qword_1ED5FEC20)
  {
    sub_18F0932BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC20);
  }

  return result;
}

uint64_t sub_18F0345A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *a8)
{
  v115 = a6;
  v116 = a7;
  v113 = a3;
  v114 = a5;
  v117 = a2;
  v118 = a4;
  v112 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9658, &qword_18F0AB918);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v101 - v14;
  v109 = sub_18F0938DC();
  v15 = OUTLINED_FUNCTION_7(v109);
  v107 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42();
  v104 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v111 = sub_18F09373C();
  v24 = OUTLINED_FUNCTION_7(v111);
  v110 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_42();
  v106 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v101 - v31;
  v32 = sub_18F09395C();
  v33 = OUTLINED_FUNCTION_7(v32);
  v108 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_42();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v101 - v41;
  v43 = sub_18F09398C();
  v44 = OUTLINED_FUNCTION_7(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_42();
  v51 = v49 - v50;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v101 - v54;
  v56 = *(*(a8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v101 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v59;
  (*(v59 + 16))(v58, v120, a8);
  if (swift_dynamicCast())
  {
    (*(v46 + 32))(v51, v55, v43);
    v60 = sub_18F039084(v112, v117, v113, v118, v114, v115, v116);
    (*(v46 + 8))(v51, v43);
LABEL_13:
    (*(v119 + 8))(v58, a8);
    return v60;
  }

  if (swift_dynamicCast())
  {
    v61 = v108;
    (*(v108 + 32))(v39, v42, v32);
    result = sub_18F09393C();
    if (*(result + 16))
    {
      v63 = v110;
      v64 = *(v110 + 16);
      v65 = result + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v66 = v105;
      v120 = a8;
      v67 = v111;
      v64(v105, v65, v111);

      v109 = sub_18F09371C();
      v107 = v68;
      v69 = sub_18F09394C();
      MEMORY[0x1EEE9AC00](v69);
      v70 = v117;
      *(&v101 - 8) = v112;
      *(&v101 - 7) = v70;
      v71 = v118;
      *(&v101 - 6) = v113;
      *(&v101 - 5) = v71;
      v72 = v115;
      *(&v101 - 4) = v114;
      *(&v101 - 3) = v72;
      v100 = v116;
      v73 = v61;
      sub_18EFBB02C(sub_18F034EB0);

      v74 = objc_allocWithZone(LNActionConfigurationSwitch);
      v60 = sub_18EFBB720();
      v75 = v67;
      a8 = v120;
      (*(v63 + 8))(v66, v75);
      (*(v73 + 8))(v39, v32);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v76 = v109;
    if (!swift_dynamicCast())
    {
      type metadata accessor for SchemaLocalization();
      v86 = v103;
      static SchemaLocalization.bundleURL.getter(v103);
      v87 = sub_18F042CCC(v118);
      v89 = v88;
      v90 = objc_allocWithZone(LNActionSummary);
      v60 = sub_18EFA4E30(0, v86, v87, v89);
      goto LABEL_13;
    }

    v77 = v104;
    (*(v107 + 32))(v104, v23, v76);
    result = sub_18F09388C();
    if (*(result + 16))
    {
      (*(v110 + 16))(v106, result + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v111);

      v120 = sub_18F09371C();
      v79 = v78;
      v80 = sub_18F09389C();
      v81 = v102;
      sub_18F0938BC();
      v82 = sub_18F09390C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v82);
      v84 = v117;
      if (EnumTagSinglePayload == 1)
      {
        sub_18EFBB8A4(v81);
        v85 = 0;
      }

      else
      {
        v91 = sub_18EFBA3B4();
        v92 = v81;
        v85 = v91;
        (*(*(v82 - 8) + 8))(v92, v82);
      }

      v108 = sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
      v93 = objc_allocWithZone(LNActionConfigurationCondition);
      v120 = sub_18EFBB90C(v120, v79, v80, v85);
      sub_18F0938AC();
      __swift_project_boxed_opaque_existential_1Tm(v122, v122[3]);
      v94 = v112;
      v95 = v84;
      v96 = v113;
      v97 = v114;
      v98 = v118;
      v105 = OUTLINED_FUNCTION_2_8(v112, v95, v113, v118, v114);
      sub_18F0938CC();
      __swift_project_boxed_opaque_existential_1Tm(v121, v121[3]);
      v99 = OUTLINED_FUNCTION_2_8(v94, v117, v96, v98, v97);
      v60 = sub_18EFA4F58(v120, v105, v99);
      (*(v110 + 8))(v106, v111);
      (*(v107 + 8))(v77, v109);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F034F28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = 1 << *(v5 + 32);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_0_10();
  v11 = v10 & v9;
  if (!v11)
  {
    OUTLINED_FUNCTION_7_3();
    while (v17 < v15)
    {
      v19 = *v16++;
      v18 = v19;
      v14 += 64;
      ++v17;
      if (v19)
      {
        v65 = v13;
        v12 = __clz(__rbit64(v18)) + v14;
        goto LABEL_7;
      }
    }

    return 1;
  }

  v65 = v8;
  v12 = __clz(__rbit64(v11));
LABEL_7:
  v20 = *(*(v5 + 48) + 8 * v12);
  v21 = (*(v5 + 56) + 16 * v12);
  v23 = *v21;
  v22 = v21[1];
  v24 = sub_18F093B8C();
  v26 = v25;
  v28 = v24 == sub_18F093B8C() && v26 == v27;
  if (v28)
  {
    v51 = v20;

    goto LABEL_34;
  }

  v29 = sub_18F09444C();
  v30 = v20;

  if (v29)
  {
LABEL_34:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v53 = OUTLINED_FUNCTION_1_8();
      v55 = sub_18F036988(v53, v54, a1, 0xE400000000000000, v26);

LABEL_40:

      return v55 & 1;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_18F093B8C();
  v32 = v31;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v28 && v32 == v33)
  {

LABEL_37:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v56 = OUTLINED_FUNCTION_1_8();
      v58 = a2;
LABEL_39:
      v55 = sub_18F036988(v56, v57, v58, 0xE400000000000000, v26);

      goto LABEL_40;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_9_3();
  v35 = OUTLINED_FUNCTION_6_5();

  if (v35)
  {
    goto LABEL_37;
  }

  sub_18F093B8C();
  v37 = v36;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v28 && v37 == v38)
  {

LABEL_42:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v56 = OUTLINED_FUNCTION_1_8();
      v58 = a1;
      goto LABEL_39;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_9_3();
  v40 = OUTLINED_FUNCTION_6_5();

  if (v40)
  {
    goto LABEL_42;
  }

  sub_18F093B8C();
  v42 = v41;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v28 && v42 == v43)
  {
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    v45 = OUTLINED_FUNCTION_6_5();

    if ((v45 & 1) == 0)
    {
      sub_18F093B8C();
      v47 = v46;
      sub_18F093B8C();
      OUTLINED_FUNCTION_10_3();
      if (v28 && v47 == v48)
      {

        goto LABEL_48;
      }

      OUTLINED_FUNCTION_9_3();
      v50 = OUTLINED_FUNCTION_6_5();

      if (v50)
      {

LABEL_48:

        return 1;
      }

      v59 = sub_18F093B8C();
      v61 = v60;
      if (v59 != sub_18F093B8C() || v61 != v62)
      {
        v64 = OUTLINED_FUNCTION_6_5();

        if (v64)
        {
LABEL_56:

          return 1;
        }

        OUTLINED_FUNCTION_3_7();
        __break(1u);
      }

      goto LABEL_56;
    }
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v56 = OUTLINED_FUNCTION_1_8();
    v58 = v65;
    goto LABEL_39;
  }

LABEL_61:
  __break(1u);
  return result;
}

void sub_18F035410(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = sub_18F0127F0(v1);
  if (v5)
  {
    v6 = v5;
    LOBYTE(v29) = v2;
    v30 = v3;
    v31 = v4;
    if (sub_18F034F28(841889585, 841888817))
    {
      goto LABEL_17;
    }

    LOBYTE(v29) = v2;
    v30 = v3;
    v31 = v4;
    if (sub_18F035650())
    {
      sub_18F035AF4(v3);
      v3 = v7;
    }

    else
    {
    }

    v11 = sub_18F035C2C(v3, v6);

    if ((v11 & 1) == 0)
    {
LABEL_17:
      v23 = v27;

      OUTLINED_FUNCTION_11_2();
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC8];
      v12 = *(v6 + 64);
      v13 = 1 << *(v6 + 32);
      OUTLINED_FUNCTION_0_10();
      v16 = v15 & v14;
      v18 = (v17 + 63) >> 6;

      v19 = 0;
      if (!v16)
      {
        goto LABEL_12;
      }

      do
      {
        v20 = v19;
LABEL_15:
        v21 = (v20 << 9) | (8 * __clz(__rbit64(v16)));
        v22 = *(*(v6 + 56) + v21);
        v29 = *(*(v6 + 48) + v21);
        v30 = v22;
        v11 = v29;
        v2 = v22;
        sub_18F03615C(&v28, &v29);
        v16 &= v16 - 1;

        v19 = v20;
      }

      while (v16);
      while (1)
      {
LABEL_12:
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);

          __break(1u);
          return;
        }

        if (v20 >= v18)
        {
          break;
        }

        v16 = *(v6 + 64 + 8 * v20);
        ++v19;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_11_2();

      sub_18F036A14(v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_2();

    v10 = v8;
  }
}

id sub_18F035650()
{
  v1 = *(v0 + 8);
  v2 = 1 << *(v1 + 32);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_0_10();
  v6 = v5 & v4;
  if (!v6)
  {
    OUTLINED_FUNCTION_7_3();
    while (v11 < v9)
    {
      v13 = *v10++;
      v12 = v13;
      v8 += 64;
      ++v11;
      if (v13)
      {
        v7 = __clz(__rbit64(v12)) + v8;
        goto LABEL_7;
      }
    }

    goto LABEL_59;
  }

  v7 = __clz(__rbit64(v6));
LABEL_7:
  v14 = *(*(v1 + 48) + 8 * v7);
  v15 = (*(v1 + 56) + 16 * v7);
  v17 = *v15;
  v16 = v15[1];
  v18 = sub_18F093B8C();
  v20 = v19;
  if (v18 == sub_18F093B8C() && v20 == v21)
  {
    v40 = v14;

    goto LABEL_34;
  }

  v23 = sub_18F09444C();
  v24 = v14;

  if (v23)
  {
LABEL_34:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v42 = result;
      v43 = OUTLINED_FUNCTION_8_3();
      v45 = sub_18F036988(v43, v44, 808334897, 0xE400000000000000, v42);

LABEL_41:

      v51 = v45 ^ 1;
      return (v51 & 1);
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_18F093B8C();
  if (v23 == OUTLINED_FUNCTION_4_8() && v20 == v25)
  {

LABEL_37:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v46 = result;
      v47 = OUTLINED_FUNCTION_8_3();
LABEL_39:
      v50 = 0xE400000000000000;
LABEL_40:
      v45 = sub_18F036988(v47, v48, v49, v50, v46);

      goto LABEL_41;
    }

    goto LABEL_61;
  }

  v27 = OUTLINED_FUNCTION_2_9();

  if (v27)
  {
    goto LABEL_37;
  }

  sub_18F093B8C();
  if (v27 == OUTLINED_FUNCTION_4_8() && v20 == v28)
  {

LABEL_44:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v46 = result;
      v47 = OUTLINED_FUNCTION_8_3();
      v49 = 808334897;
      goto LABEL_39;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v30 = OUTLINED_FUNCTION_2_9();

  if (v30)
  {
    goto LABEL_44;
  }

  sub_18F093B8C();
  if (v30 == OUTLINED_FUNCTION_4_8() && v20 == v31)
  {
  }

  else
  {
    v33 = OUTLINED_FUNCTION_2_9();

    if ((v33 & 1) == 0)
    {
      v34 = sub_18F093B8C();
      v36 = v35;
      if (v34 == sub_18F093B8C() && v36 == v37)
      {

        goto LABEL_50;
      }

      v39 = OUTLINED_FUNCTION_5_5();

      if (v39)
      {

LABEL_50:

LABEL_59:
        v51 = 0;
        return (v51 & 1);
      }

      v52 = sub_18F093B8C();
      v54 = v53;
      if (v52 != sub_18F093B8C() || v54 != v55)
      {
        v57 = OUTLINED_FUNCTION_5_5();

        if (v57)
        {
LABEL_58:

          goto LABEL_59;
        }

        OUTLINED_FUNCTION_3_7();
        __break(1u);
      }

      goto LABEL_58;
    }
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v46 = result;
    v47 = OUTLINED_FUNCTION_8_3();
    v49 = 3157561;
    v50 = 0xE300000000000000;
    goto LABEL_40;
  }

LABEL_63:
  __break(1u);
  return result;
}

void sub_18F035AF4(uint64_t a1)
{
  v19 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = 1 << *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  for (i = 0; v8; i = v12)
  {
    v12 = i;
LABEL_6:
    v13 = __clz(__rbit64(v8)) | (v12 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v15 = *(a1 + 56) + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18[0] = v14;
    v18[1] = v16;
    v18[2] = v17;
    v1 = v14;

    sub_18F036668(&v19, v18);
    v8 &= v8 - 1;
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      OUTLINED_FUNCTION_11_2();
      return;
    }

    v8 = *(v4 + 8 * v12);
    ++i;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_18F035C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v16 = *v14;
    v15 = *(v14 + 1);
    MEMORY[0x1EEE9AC00](v9);
    if ((v15 & 0x1000000000000000) != 0)
    {
LABEL_29:
      v2 = v17;
      v29 = v17;

      sub_18F09405C();
      goto LABEL_20;
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v63 = v16;
      v2 = v17;
      v20 = v17;

      if (LOBYTE(v16) < 0x21u && ((0x100003E01uLL >> SLOBYTE(v16)) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((*&v16 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v18 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v2 = v17;
      v19 = v17;

      if (v18 < 0x21 && ((0x100003E01uLL >> v18) & 1) != 0)
      {
LABEL_18:
        v22 = 0;
        goto LABEL_19;
      }
    }

    v21 = _swift_stdlib_strtod_clocale();
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v21 == 0;
LABEL_19:
    v64 = v22;
LABEL_20:

    v7 &= v7 - 1;
    if (v64)
    {
      if (*(a2 + 16))
      {
        v3 = 0.0;
        v23 = sub_18EFB9084(v2);
        if (v24)
        {
          v25 = *(*(a2 + 56) + 8 * v23);
          v26 = sub_18F0127E4(v25);
          if (v27)
          {
            v63 = 0.0;
            v28 = sub_18F036B10(v26, v27);

            if (v28)
            {
              goto LABEL_33;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  v31 = sub_18F093B8C();
  v33 = v32;
  if (v31 == sub_18F093B8C() && v33 == v34)
  {
  }

  else
  {
    v36 = sub_18F09444C();

    if ((v36 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v3 < v63)
  {
    goto LABEL_65;
  }

LABEL_41:
  v37 = sub_18F093B8C();
  v39 = v38;
  if (v37 == sub_18F093B8C() && v39 == v40)
  {
  }

  else
  {
    v42 = sub_18F09444C();

    if ((v42 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  if (v3 < v63)
  {
    goto LABEL_65;
  }

LABEL_49:
  v43 = sub_18F093B8C();
  v45 = v44;
  if (v43 == sub_18F093B8C() && v45 == v46)
  {
  }

  else
  {
    v48 = sub_18F09444C();

    if ((v48 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v3 < v63)
  {
    goto LABEL_65;
  }

LABEL_57:
  v49 = sub_18F093B8C();
  v51 = v50;
  if (v49 == sub_18F093B8C() && v51 == v52)
  {

LABEL_64:
    if (v3 >= v63)
    {
      goto LABEL_66;
    }

LABEL_65:

    return 1;
  }

  v54 = sub_18F09444C();

  if (v54)
  {
    goto LABEL_64;
  }

LABEL_66:
  v55 = sub_18F093B8C();
  v57 = v56;
  if (v55 == sub_18F093B8C() && v57 == v58)
  {

    return v3 < v63;
  }

  v60 = sub_18F09444C();

  result = 0;
  if (v60)
  {
    return v3 < v63;
  }

  return result;
}

void sub_18F03615C(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = sub_18F093B8C();
  v7 = v6;
  if (v5 == sub_18F093B8C() && v7 == v8)
  {
LABEL_22:

    goto LABEL_23;
  }

  v10 = sub_18F09444C();

  if (v10)
  {
LABEL_23:
    v29 = v4;
    v31 = v3;
    v32 = 841889585;
LABEL_24:
    v30 = sub_18F036418(v31, v32, 0xE400000000000000);
    goto LABEL_25;
  }

  v11 = sub_18F093B8C();
  v13 = v12;
  if (v11 == sub_18F093B8C() && v13 == v14)
  {

    goto LABEL_27;
  }

  v16 = sub_18F09444C();

  if (v16)
  {
LABEL_27:
    v29 = v4;
    v32 = 841888817;
LABEL_28:
    v31 = v3;
    goto LABEL_24;
  }

  v17 = sub_18F093B8C();
  v19 = v18;
  if (v17 == sub_18F093B8C() && v19 == v20)
  {
    goto LABEL_22;
  }

  v22 = sub_18F09444C();

  if (v22)
  {
    goto LABEL_23;
  }

  v23 = sub_18F093B8C();
  v25 = v24;
  if (v23 == sub_18F093B8C() && v25 == v26)
  {

    goto LABEL_30;
  }

  v28 = sub_18F09444C();

  if (v28)
  {
LABEL_30:
    v29 = v4;
    v32 = 841887793;
    goto LABEL_28;
  }

  v29 = v4;
  v30 = v3;
LABEL_25:
  v33 = v30;
  v34 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  sub_18F041268(v33, v29);

  *a1 = v35;
}

id sub_18F036418(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18F0127E4(a1);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v5 == 42 && v6 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v8 = sub_18F09444C();

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v9 = [objc_opt_self() defaultWorkspace];
    if (v9)
    {
      v10 = v9;
      v11 = sub_18F0127E4(a1);
      if (v12)
      {
        v13 = sub_18F0365B8(v11, v12);

        if (v13)
        {
          v14 = sub_18F013BB8(a1);
          v16 = v15;
          v17 = sub_18F013BC4(a1);
          v19 = v18;
          objc_allocWithZone(LNAvailabilityAnnotation);

          v20 = sub_18EFABB48(a2, a3, v14, v16, v17, v19);
        }

        else
        {
          v20 = a1;
        }

        v22 = v20;

        return v22;
      }
    }
  }

LABEL_13:

  return a1;
}

uint64_t sub_18F0365B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_18F093B5C();
  v6 = sub_18F036A9C(a1, a2, v5, v2);

  if (v6)
  {
    v7 = sub_18F093B5C();
    v8 = sub_18F036A9C(a1, a2, v7, v2);

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_18F036668(uint64_t *a1, void **a2)
{
  v3 = 808334897;
  v4 = *a2;
  v5 = sub_18F093B8C();
  v7 = v6;
  if (v5 == sub_18F093B8C() && v7 == v8)
  {
    v13 = v4;
    goto LABEL_8;
  }

  v10 = sub_18F09444C();
  v11 = v4;

  if ((v10 & 1) == 0)
  {
    v15 = sub_18F093B8C();
    v17 = v16;
    if (v15 == sub_18F093B8C() && v17 == v18)
    {
      v12 = 0xE400000000000000;
      v3 = 808334129;
      goto LABEL_9;
    }

    v20 = sub_18F09444C();

    if (v20)
    {
      v12 = 0xE400000000000000;
      v3 = 808334129;
      goto LABEL_10;
    }

    v21 = sub_18F093B8C();
    v23 = v22;
    if (v21 != sub_18F093B8C() || v23 != v24)
    {
      v26 = sub_18F09444C();

      if (v26)
      {
        goto LABEL_6;
      }

      v3 = 3157561;
      v27 = sub_18F093B8C();
      v29 = v28;
      if (v27 == sub_18F093B8C() && v29 == v30)
      {
        v12 = 0xE300000000000000;
      }

      else
      {
        v32 = sub_18F09444C();

        if (v32)
        {
          v12 = 0xE300000000000000;
          goto LABEL_10;
        }

        v33 = sub_18F093B8C();
        v35 = v34;
        if (v33 != sub_18F093B8C() || v35 != v36)
        {
          sub_18F09444C();
        }

        v12 = 0xE100000000000000;
        v3 = 42;
      }

LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v12 = 0xE400000000000000;
    goto LABEL_9;
  }

LABEL_6:
  v12 = 0xE400000000000000;
LABEL_10:
  v14 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *a1;
  sub_18F041480(v3, v12, v4);

  *a1 = v38;
}

_BYTE *sub_18F03691C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

id sub_18F036988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_18F093B5C();

  v7 = sub_18F093B5C();

  v8 = [a5 isVersion:v6 greaterThanOrEqualToVersion:v7];

  return v8;
}

id sub_18F036A14(uint64_t a1, void *a2)
{
  type metadata accessor for LNPlatformName();
  sub_18EFABC24();
  sub_18EFABC68();
  v3 = sub_18F093A3C();

  v4 = [a2 copyWithoutMangledTypeNameWithAvailability_];

  return v4;
}

id sub_18F036A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_18F093B5C();
  v7 = [a4 isVersion:v6 greaterThanOrEqualToVersion:a3];

  return v7;
}

BOOL sub_18F036B10(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_18F09405C();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_18F036C20(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  type metadata accessor for LNPlatformName();
  sub_18F038348(&qword_1ED5FFA38);
  v7 = sub_18F093A5C();
  v9[8] = 0;
  v10 = v7;
  v11 = 0;
  LNActionMetadata.wrapper(encodingContext:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9670, &qword_18F0AB940);
  sub_18F038304(&unk_1EACB9688);
  sub_18F038348(&unk_1EACB8288);
  sub_18F09446C();
  return sub_18F0382A8(v6);
}

char *sub_18F036DF0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  HIBYTE(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9660, &qword_18F0AB920);
  sub_18F038304(&unk_1EACB6B78);
  sub_18F038348(&unk_1ED5FF230);
  sub_18F09445C();
  if (!v1)
  {
    sub_18F03838C();
    sub_18F0383D0(v13, v11);
    v14 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
    LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(v11, 1, v6, 0, v15, v16, v17, v18, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
    v6 = v19;
    sub_18F0382A8(v13);
  }

  return v6;
}

__n128 AssistantPrebuiltIntent.init(identifier:exampleUtterances:negativePhrases:metadata:conformanceType:visibility:requiredEntitlements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 48);
  v10 = *a5;
  v11 = *a6;
  *a8 = *a1;
  *(a8 + 8) = v8;
  result = *(a1 + 16);
  v13 = *(a1 + 32);
  *(a8 + 16) = result;
  *(a8 + 32) = v13;
  *(a8 + 48) = v9;
  *(a8 + 56) = a2;
  *(a8 + 64) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = v10;
  *(a8 + 81) = v11;
  *(a8 + 88) = a7;
  return result;
}

uint64_t AssistantPrebuiltIntent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 AssistantPrebuiltIntent.identifier.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[3].n128_i64[0];
  v6 = v1->n128_i64[1];
  v7 = v1[3].n128_i64[0];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v9 = a1[2];
  v1[1] = result;
  v1[2] = v9;
  v1[3].n128_u64[0] = v5;
  return result;
}

uint64_t AssistantPrebuiltIntent.requiredEntitlements.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

__n128 AssistantPrebuiltIntent.init(identifier:exampleUtterances:negativePhrases:metadata:conformanceType:visibility:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a1->n128_u64[0];
  v8 = a1->n128_i64[1];
  v9 = a1[3].n128_i64[0];
  v10 = *a5;
  v11 = *a6;
  a7[5].n128_u64[1] = 0;
  a7->n128_u64[0] = v7;
  a7->n128_u64[1] = v8;
  result = a1[1];
  v13 = a1[2];
  a7[1] = result;
  a7[2] = v13;
  a7[3].n128_u64[0] = v9;
  a7[3].n128_u64[1] = a2;
  a7[4].n128_u64[0] = a3;
  a7[4].n128_u64[1] = a4;
  a7[5].n128_u8[0] = v10;
  a7[5].n128_u8[1] = v11;
  return result;
}

void AssistantPrebuiltIntent.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9660, &qword_18F0AB920);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F037754();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_18F0294C0();
    OUTLINED_FUNCTION_1_9();
    sub_18F0942CC();
    v23 = a2;
    v22 = v29;
    v26 = v30;
    v21 = v31;
    v25 = v32;
    v24 = v33;
    v27 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9668, &qword_18F0AB928);
    OUTLINED_FUNCTION_5_6(1);
    sub_18F0377A8();
    OUTLINED_FUNCTION_3_8();
    sub_18F0942CC();
    v19 = v34;
    v20 = v29;
    OUTLINED_FUNCTION_5_6(3);
    OUTLINED_FUNCTION_3_8();
    sub_18F0942CC();
    v17 = v29;
    OUTLINED_FUNCTION_3_8();
    v18 = sub_18F036DF0(v10);
    OUTLINED_FUNCTION_5_6(4);
    sub_18F029514();
    OUTLINED_FUNCTION_1_9();
    sub_18F09426C();
    v11 = v29;
    v16 = v29 == 2;
    OUTLINED_FUNCTION_5_6(5);
    sub_18F029568();
    OUTLINED_FUNCTION_1_9();
    sub_18F09426C();
    v15 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    v42 = 6;
    sub_18F037CF8(&qword_1EACB9358);
    OUTLINED_FUNCTION_3_8();
    sub_18F09426C();
    v12 = OUTLINED_FUNCTION_2_10();
    v13(v12);
    __src[0] = v29;
    __src[1] = v30;
    __src[2] = v31;
    __src[3] = v32;
    __src[4] = v33;
    __src[5] = v34;
    __src[6] = v35;
    __src[7] = v29;
    __src[8] = v29;
    __src[9] = v18;
    LOBYTE(__src[10]) = v16 | v29 & 1;
    BYTE1(__src[10]) = v29;
    __src[11] = v43;
    v14 = v43;
    memcpy(v23, __src, 0x60uLL);
    sub_18EFB5BE0(__src, &v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v29 = v22;
    v30 = v26;
    v31 = v21;
    v32 = v25;
    v33 = v24;
    v34 = v19;
    v35 = v27;
    v36 = v20;
    v37 = v17;
    v38 = v18;
    v39 = (v16 | v11) & 1;
    v40 = v15;
    v41 = v14;
    sub_18EFB5C3C(&v29);
  }
}

unint64_t sub_18F037754()
{
  result = qword_1EACB6D88;
  if (!qword_1EACB6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D88);
  }

  return result;
}

unint64_t sub_18F0377A8()
{
  result = qword_1EACB6C60;
  if (!qword_1EACB6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037C84(&qword_1EACB6C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C60);
  }

  return result;
}

uint64_t AssistantPrebuiltIntent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9670, &qword_18F0AB940);
  v5 = OUTLINED_FUNCTION_7(v4);
  v29 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = *v2;
  v12 = v2[1];
  v14 = v2[6];
  v13 = v2[7];
  v15 = v2[9];
  v26 = v2[8];
  v27 = v13;
  v25 = v15;
  v35 = *(v2 + 80);
  v24 = *(v2 + 81);
  v23 = v2[11];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F037754();

  sub_18F0945BC();
  v30 = v11;
  v31 = v12;
  v17 = *(v2 + 1);
  v33 = *(v2 + 2);
  v32 = v17;
  v34 = v14;
  v36 = 0;
  sub_18F029880();
  OUTLINED_FUNCTION_1();
  v18 = v28;
  sub_18F0943CC();
  if (v18)
  {

    return (*(v29 + 8))(v10, v4);
  }

  else
  {
    v21 = v25;
    v20 = v26;
    v22 = v29;

    v30 = v27;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037BC8();
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    v30 = v20;
    v36 = 3;
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    sub_18F036C20(v21, 2);
    LOBYTE(v30) = v35;
    v36 = 4;
    sub_18F0298D4();
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    LOBYTE(v30) = v24;
    v36 = 5;
    sub_18F029928();
    OUTLINED_FUNCTION_1();
    sub_18F09436C();
    v30 = v23;
    v36 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    sub_18F037CF8(&qword_1EACB9380);
    OUTLINED_FUNCTION_1();
    sub_18F09436C();
    return (*(v22 + 8))(0, v4);
  }
}

unint64_t sub_18F037BC8()
{
  result = qword_1EACB9678;
  if (!qword_1EACB9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037C84(&qword_1EACB77A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9678);
  }

  return result;
}

unint64_t sub_18F037C84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F037CF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9350, &qword_18F0AA7F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18F037D60()
{
  v0 = sub_18F09420C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18F037DB4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x657669746167656ELL;
      break;
    case 4:
      result = 0x616D726F666E6F63;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F037EA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_18EFD07B4();
}

uint64_t sub_18F037ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18F037D60();
  *a2 = result;
  return result;
}

unint64_t sub_18F037EFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18F037DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F037F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F037DAC();
  *a1 = result;
  return result;
}

uint64_t sub_18F037F6C(uint64_t a1)
{
  v2 = sub_18F037754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F037FA8(uint64_t a1)
{
  v2 = sub_18F037754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F03801C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F03805C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F0381A4()
{
  result = qword_1EACB9680;
  if (!qword_1EACB9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9680);
  }

  return result;
}

unint64_t sub_18F0381FC()
{
  result = qword_1EACB6D78;
  if (!qword_1EACB6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D78);
  }

  return result;
}

unint64_t sub_18F038254()
{
  result = qword_1EACB6D80;
  if (!qword_1EACB6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D80);
  }

  return result;
}

uint64_t sub_18F0382A8(uint64_t a1)
{
  v2 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F038304(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F038348(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F03838C()
{
  result = qword_1ED5FF210;
  if (!qword_1ED5FF210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF210);
  }

  return result;
}

uint64_t sub_18F0383D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetadataLibraryProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MetadataLibraryProvider.init()();
  return v0;
}

uint64_t *MetadataLibraryProvider.init()()
{
  v2 = *v0;
  sub_18F0934FC();
  v3 = sub_18F0934CC();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
  }

  return v0;
}

void MetadataLibraryProvider.getPrebuiltEnum(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[1] = a3;
  v7 = OUTLINED_FUNCTION_6_6();
  v8 = OUTLINED_FUNCTION_2_11(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_10();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9698, &qword_18F0ABB78);
  OUTLINED_FUNCTION_95(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F09348C();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v21 = sub_18F09356C();
  OUTLINED_FUNCTION_5_7(v21);
  if (v22)
  {
    sub_18EF82E14(v20, &qword_1EACB9698, &qword_18F0ABB78);
    *&v23 = OUTLINED_FUNCTION_13_3();
    v4[4] = v23;
  }

  else
  {
    v24 = *MEMORY[0x1E698AC70];
    v25 = OUTLINED_FUNCTION_4_10();
    v26(v25);
    v27 = OUTLINED_FUNCTION_3_9();
    sub_18EFB6958(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_12_2();
    v31(v30);
    OUTLINED_FUNCTION_11_3();
    (*(v32 + 8))(v20, a4);
    memcpy(v4, __src, 0x50uLL);
  }
}

void MetadataLibraryProvider.getPrebuiltEntity(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a3;
  v7 = OUTLINED_FUNCTION_6_6();
  v8 = OUTLINED_FUNCTION_2_11(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_10();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  OUTLINED_FUNCTION_95(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F0934AC();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v21 = sub_18F09362C();
  OUTLINED_FUNCTION_5_7(v21);
  if (v22)
  {
    sub_18EF82E14(v20, &qword_1EACB96A0, &unk_18F0ABB80);
    *&v23 = OUTLINED_FUNCTION_13_3();
    v4[4] = v23;
  }

  else
  {
    v24 = *MEMORY[0x1E698AC70];
    v25 = OUTLINED_FUNCTION_4_10();
    v26(v25);
    v27 = OUTLINED_FUNCTION_3_9();
    sub_18EFB5CB4(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_12_2();
    v32(v31);
    OUTLINED_FUNCTION_11_3();
    (*(v33 + 8))(v20, a4);
    memcpy(v4, __src, 0x50uLL);
  }
}

void MetadataLibraryProvider.getPrebuiltIntent(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a3;
  v7 = OUTLINED_FUNCTION_6_6();
  v8 = OUTLINED_FUNCTION_2_11(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_10();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  OUTLINED_FUNCTION_95(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F09347C();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v21 = sub_18F09346C();
  OUTLINED_FUNCTION_5_7(v21);
  if (v22)
  {
    sub_18EF82E14(v20, &qword_1EACB96A8, &qword_18F0ABF70);
    *&v23 = OUTLINED_FUNCTION_13_3();
    v4[4] = v23;
    v4[5] = v23;
  }

  else
  {
    v24 = *MEMORY[0x1E698AC70];
    v25 = OUTLINED_FUNCTION_4_10();
    v26(v25);
    OUTLINED_FUNCTION_3_9();
    sub_18EFB4BF0();
    v27 = OUTLINED_FUNCTION_12_2();
    v28(v27);
    OUTLINED_FUNCTION_11_3();
    (*(v29 + 8))(v20, a4);
    memcpy(v4, __src, 0x60uLL);
  }
}

Swift::String_optional __swiftcall MetadataLibraryProvider.getSchemaDomain(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  v3 = sub_18F0934BC();
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t MetadataLibraryProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MetadataLibraryProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_18F038C8C()
{
  v0 = [objc_opt_self() enumeratorWithOptions_];
  v1 = MEMORY[0x1E69E7CC0];
  v2 = &selRef_initWithPlatformSpecificationConfigurationData_platform_;
  v17 = v0;
  while (1)
  {
    v3 = MEMORY[0x193AD91F0]();
    v4 = [v0 nextObject];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_21;
    }

    v6 = [v4 containingBundleRecord];
    if (v6)
    {
      v7 = v6;

      goto LABEL_21;
    }

    v8 = v5;
    v9 = [v8 v2[362]];

    if ((v9 & 1) == 0)
    {

      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8760, &qword_18F0AC410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F09BCD0;
    *(inited + 32) = v8;
    v11 = v1 >> 62;
    v12 = v1 >> 62 ? sub_18F0941BC() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v14 = v8;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_17:
        sub_18F0941BC();
      }

      else
      {
        v15 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
        v16 = *(v15 + 16);
      }

      v1 = sub_18F09409C();
      v15 = v1 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_17;
    }

    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_16;
    }

LABEL_19:
    if (*(v15 + 16) >= *(v15 + 24) >> 1)
    {
      goto LABEL_25;
    }

    sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
    swift_arrayInitWithCopy();

    ++*(v15 + 16);

    v0 = v17;
    v2 = &selRef_initWithPlatformSpecificationConfigurationData_platform_;
LABEL_21:
    objc_autoreleasePoolPop(v3);
    if (!v5)
    {

      qword_1EACB6E18 = v1;
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t static LSApplicationExtensionRecord.enumeratedStandaloneAppIntentsExtensions.getter()
{
  if (qword_1EACB6E10 != -1)
  {
    swift_once();
  }
}

uint64_t LSApplicationExtensionRecord.attributionBundleIdentifier.getter()
{
  v1 = [v0 entitlements];
  v2 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1EACB6DF0, 0x1E696AEC0);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18F021E3C(v8);
    return 0;
  }
}

id sub_18F039084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v49 = a6;
  v50 = a7;
  v48 = a5;
  v51 = a4;
  v52 = sub_18F09373C();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96B0, &unk_18F0ABC00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v44 - v20;
  sub_18F09396C();
  v22 = sub_18F09364C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_18EFBB980(v21);
    v23 = 0;
  }

  else
  {
    v23 = sub_18EFB58B4(a1, a2, a3, v48, v49, v50);
    (*(*(v22 - 8) + 8))(v21, v22);
  }

  type metadata accessor for SchemaLocalization();
  static SchemaLocalization.bundleURL.getter(v17);
  v24 = sub_18F042CCC(v51);
  v26 = v25;
  v27 = sub_18F09397C();
  v28 = *(v27 + 16);
  if (v28)
  {
    v45 = v26;
    v46 = v24;
    v47 = v23;
    v48 = v17;
    v53 = MEMORY[0x1E69E7CC0];
    sub_18EFB5B40(0, v28, 0);
    v29 = v53;
    v31 = *(v10 + 16);
    v30 = v10 + 16;
    v32 = *(v30 + 64);
    v44 = v27;
    v33 = v27 + ((v32 + 32) & ~v32);
    v49 = *(v30 + 56);
    v50 = v31;
    v51 = v30;
    v34 = (v30 - 8);
    do
    {
      v35 = v52;
      (v50)(v13, v33, v52);
      v36 = sub_18F09371C();
      v38 = v37;
      (*v34)(v13, v35);
      v53 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_18EFB5B40((v39 > 1), v40 + 1, 1);
        v29 = v53;
      }

      *(v29 + 16) = v40 + 1;
      v41 = v29 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += v49;
      --v28;
    }

    while (v28);

    v23 = v47;
    v17 = v48;
    v26 = v45;
    v24 = v46;
  }

  else
  {
  }

  v42 = objc_allocWithZone(LNActionSummary);
  return sub_18EFA4E30(v23, v17, v24, v26);
}

uint64_t static SystemEntityProtocolMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_18F039440();
  return sub_18F093F1C() & 1;
}

unint64_t sub_18F039440()
{
  result = qword_1EACB9308;
  if (!qword_1EACB9308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACB9308);
  }

  return result;
}

uint64_t SystemEntityProtocolMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_18F09452C();
  sub_18F093F2C();
  return sub_18F09456C();
}

uint64_t sub_18F0394F4()
{
  v1 = *v0;
  sub_18F09452C();
  sub_18F093F2C();
  return sub_18F09456C();
}

uint64_t sub_18F039538()
{
  result = sub_18F039558();
  qword_1EACB96B8 = result;
  return result;
}

uint64_t sub_18F039558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96C8, &qword_18F0ABCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0ABC10;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000018F0B0560;
  v1 = objc_opt_self();
  *(inited + 48) = [v1 mailMessageProtocol];
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x800000018F0B0580;
  *(inited + 72) = [v1 mailAddresseeProtocol];
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000018F0B05A0;
  *(inited + 96) = [v1 mailAccountProtocol];
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000018F0B05C0;
  *(inited + 120) = [v1 mailboxProtocol];
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x800000018F0B05E0;
  *(inited + 144) = [v1 uniqueEntityProtocol];
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x800000018F0B0600;
  *(inited + 168) = [v1 updatableEntityProtocol];
  *(inited + 176) = 0xD000000000000024;
  *(inited + 184) = 0x800000018F0B0620;
  *(inited + 192) = [v1 updatableEntityProtocol];
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x800000018F0B0650;
  *(inited + 216) = [v1 urlRepresentableProtocol];
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000018F0B0680;
  *(inited + 240) = [v1 visualSearchProtocol];
  *(inited + 248) = 0xD00000000000001ALL;
  *(inited + 256) = 0x800000018F0B06A0;
  *(inited + 264) = [v1 visualSearchOCRProtocol];
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000018F0B06C0;
  *(inited + 288) = [v1 indexedEntityProtocol];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x800000018F0B06E0;
  *(inited + 312) = [v1 persistentFileIdentifiableEntityProtocol];
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x800000018F0B0700;
  *(inited + 336) = [v1 assistantEntityProtocol];
  *(inited + 344) = 0xD000000000000018;
  *(inited + 352) = 0x800000018F0B0720;
  *(inited + 360) = [v1 uniqueEntityProtocol];
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x800000018F0B0740;
  *(inited + 384) = [v1 urlRepresentableProtocol];
  return sub_18F093A5C();
}

uint64_t static SystemEntityProtocolSupport.systemEntityProtocolMapping.getter()
{
  if (qword_1EACB7288 != -1)
  {
    swift_once();
  }
}

unint64_t sub_18F03993C()
{
  result = qword_1EACB96C0;
  if (!qword_1EACB96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB96C0);
  }

  return result;
}

uint64_t sub_18F039990(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0399D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemEntityProtocolSupport(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id LNCodableValue.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F09305C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_18F0930BC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_18F0930AC();
  sub_18F09303C();
  sub_18F09307C();
  v9 = sub_18F09308C();
  v11 = v10;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_18F0932DC();
  v14 = [v12 initWithData_];
  sub_18EF9A4AC(v9, v11);

  (*(*(a2 - 8) + 8))(a1, a2);
  return v14;
}

uint64_t LNCodableValue.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___LNCodableValue_data);
  sub_18EF844C4(v1, *(v0 + OBJC_IVAR___LNCodableValue_data + 8));
  return v1;
}

id LNCodableValue.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F0932DC();
  v6 = [v4 initWithData_];

  sub_18EF9A4AC(a1, a2);
  return v6;
}

id LNCodableValue.init(data:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___LNCodableValue_data);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = LNCodableValue;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LNCodableValue.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t LNCodableValue.init(coder:)(void *a1)
{
  sub_18EF825F4(0, &qword_1EACB9178, 0x1E695DEF0);
  v2 = sub_18F093F0C();
  if (v2)
  {
    v3 = v2;
    sub_18F0932FC();
  }

  type metadata accessor for LNCodableValue(v4);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall LNCodableValue.encode(with:)(NSCoder with)
{
  v3 = [v1 data];
  sub_18F09330C();

  OUTLINED_FUNCTION_0_2();
  v4 = sub_18F0932DC();
  v5 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v5, v6);
  v7 = sub_18F093B5C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v7];
}

uint64_t static LNCodableValue.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 data];
  sub_18F09330C();

  v4 = [a2 data];
  v5 = sub_18F09330C();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_0_2();
  LOBYTE(v4) = MEMORY[0x193AD7E00](v8);
  sub_18EF9A4AC(v5, v7);
  v9 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v9, v10);
  return v4 & 1;
}

id LNCodableValue.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t LNCodableValue.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18F021DCC(a1, v6);
  if (!v7)
  {
    sub_18F021E3C(v6);
    goto LABEL_5;
  }

  type metadata accessor for LNCodableValue(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = static LNCodableValue.== infix(_:_:)(v1, v5);

  return v3 & 1;
}

uint64_t LNCodableValue.description.getter()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v0 data];
  sub_18F09330C();

  OUTLINED_FUNCTION_0_2();
  v3 = sub_18F0932DC();
  v4 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v4, v5);
  v13 = 0;
  v6 = [v1 JSONObjectWithData:v3 options:0 error:&v13];

  v7 = v13;
  if (v6)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
    sub_18EF914D4(&v14, v15);
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    sub_18F09414C();
    v8 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v9 = v7;
    v10 = sub_18F09318C();

    swift_willThrow();
    v8 = 0x746164206461623CLL;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t LNCodableValue.value<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_18F09302C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_18F09301C();
  v8 = [v2 data];
  v9 = sub_18F09330C();
  v11 = v10;

  sub_18F09300C();
  sub_18EF9A4AC(v9, v11);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
}

uint64_t sub_18F03A614()
{
  sub_18F09452C();
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F03A6B8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_18F09452C();
  a2(a1);
  OUTLINED_FUNCTION_10_5();

  return sub_18F09456C();
}

uint64_t sub_18F03A710(uint64_t a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1);
  return sub_18F09456C();
}

uint64_t sub_18F03A758()
{
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_9_4();
  sub_18F093C1C();
}

uint64_t sub_18F03A7E4(uint64_t a1, char a2)
{
  sub_18EFD03AC(a2);
  sub_18F093C1C();
}

uint64_t sub_18F03A850()
{
  sub_18F093C1C();
}

uint64_t sub_18F03A8C0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
  }

  sub_18F093C1C();
}

uint64_t sub_18F03A940()
{
  OUTLINED_FUNCTION_4_11();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_7();
      break;
    case 4:
      OUTLINED_FUNCTION_3_10();
      break;
    case 5:
      OUTLINED_FUNCTION_8_4();
      break;
    default:
      break;
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AA10()
{
  OUTLINED_FUNCTION_4_11();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_7();
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      OUTLINED_FUNCTION_8_4();
      break;
    default:
      break;
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AAB4()
{
  sub_18F093C1C();
}

uint64_t sub_18F03AB98(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AC14()
{
  OUTLINED_FUNCTION_15_2();
  if (v0)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_16_2();

  return sub_18F09456C();
}

uint64_t sub_18F03ACC4()
{
  OUTLINED_FUNCTION_15_2();
  if (v0)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
  }

  OUTLINED_FUNCTION_16_2();

  return sub_18F09456C();
}

uint64_t sub_18F03AD48()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_16_2();

  return sub_18F09456C();
}

uint64_t sub_18F03ADEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_18F09452C();
  a3(a2);
  OUTLINED_FUNCTION_10_5();

  return sub_18F09456C();
}

uint64_t sub_18F03AE60()
{
  sub_18F09452C();
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F03AEAC(uint64_t a1, uint64_t a2)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a2);
  return sub_18F09456C();
}

uint64_t sub_18F03AEF0()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_16_2();

  return sub_18F09456C();
}

char *sub_18F03B07C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  HIBYTE(v23) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9748, &unk_18F0ABD00);
  sub_18F029E58(&qword_1EACB6B88, &qword_1EACB9748, &unk_18F0ABD00);
  sub_18F03BF3C(&qword_1ED5FEBB0);
  sub_18F09445C();
  if (!v1)
  {
    sub_18F03BF80();
    sub_18F03BFC4(v13, v11);
    v14 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
    LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v11, v6, 0, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
    v6 = v20;
    sub_18F03BEE0(v13);
  }

  return v6;
}

__n128 AssistantPrebuiltEnum.init(identifier:metadata:conformanceType:visibility:requiredEntitlements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = *a4;
  *a6 = *a1;
  *(a6 + 8) = v6;
  result = *(a1 + 16);
  v11 = *(a1 + 32);
  *(a6 + 16) = result;
  *(a6 + 32) = v11;
  *(a6 + 48) = v7;
  *(a6 + 56) = a2;
  *(a6 + 64) = v8;
  *(a6 + 65) = v9;
  *(a6 + 72) = a5;
  return result;
}

uint64_t AssistantPrebuiltEnum.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 AssistantPrebuiltEnum.identifier.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[3].n128_i64[0];
  v6 = v1->n128_i64[1];
  v7 = v1[3].n128_i64[0];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v9 = a1[2];
  v1[1] = result;
  v1[2] = v9;
  v1[3].n128_u64[0] = v5;
  return result;
}

uint64_t AssistantPrebuiltEnum.requiredEntitlements.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

__n128 AssistantPrebuiltEnum.init(identifier:metadata:conformanceType:visibility:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1->n128_u64[0];
  v6 = a1->n128_i64[1];
  v7 = a1[3].n128_i64[0];
  v8 = *a3;
  v9 = *a4;
  a5[4].n128_u64[1] = 0;
  a5->n128_u64[0] = v5;
  a5->n128_u64[1] = v6;
  result = a1[1];
  v11 = a1[2];
  a5[1] = result;
  a5[2] = v11;
  a5[3].n128_u64[0] = v7;
  a5[3].n128_u64[1] = a2;
  a5[4].n128_u8[0] = v8;
  a5[4].n128_u8[1] = v9;
  return result;
}

void AssistantPrebuiltEnum.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9748, &unk_18F0ABD00);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F03B83C();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_18F0294C0();
    OUTLINED_FUNCTION_0_6();
    sub_18F0942CC();
    v20 = a2;
    v21 = v26;
    v24 = v27;
    v22 = v28;
    v23 = v32;
    v18 = v31;
    v16 = v30;
    v17 = v29;
    v19 = sub_18F03B07C(1);
    sub_18F029514();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v10 = v26;
    v11 = v26 == 2;
    LOBYTE(__src[0]) = 3;
    sub_18F029568();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v15 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    v37 = 4;
    sub_18F02997C(&qword_1EACB9358);
    sub_18F09426C();
    v12 = OUTLINED_FUNCTION_2_3();
    v13(v12);
    v14 = v38;
    __src[0] = v21;
    __src[1] = v24;
    __src[2] = v22;
    __src[3] = v17;
    __src[4] = v16;
    __src[5] = v18;
    __src[6] = v23;
    __src[7] = v19;
    LOBYTE(__src[8]) = (v11 | v10) & 1;
    BYTE1(__src[8]) = v15;
    __src[9] = v38;
    memcpy(v20, __src, 0x50uLL);
    sub_18EFB6BF8(__src, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v26 = v21;
    v27 = v24;
    v28 = v22;
    v29 = v17;
    v30 = v16;
    v31 = v18;
    v32 = v23;
    v33 = v19;
    v34 = (v11 | v10) & 1;
    v35 = v15;
    v36 = v14;
    sub_18EFB6C54(&v26);
  }
}

unint64_t sub_18F03B83C()
{
  result = qword_1EACB6DE8;
  if (!qword_1EACB6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DE8);
  }

  return result;
}

uint64_t AssistantPrebuiltEnum.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9750, &qword_18F0ABD10);
  v5 = OUTLINED_FUNCTION_7(v4);
  v26 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[6];
  v24 = v2[7];
  v32 = *(v2 + 64);
  v23 = *(v2 + 65);
  v22 = v2[9];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F03B83C();

  sub_18F0945BC();
  v27 = v11;
  v28 = v12;
  v15 = *(v2 + 1);
  v30 = *(v2 + 2);
  v29 = v15;
  v31 = v13;
  v33 = 0;
  sub_18F029880();
  OUTLINED_FUNCTION_1();
  v16 = v25;
  sub_18F0943CC();
  if (v16)
  {

    return (*(v26 + 8))(v10, v4);
  }

  else
  {
    v18 = v32;
    v19 = v23;
    v20 = v22;
    v21 = v26;

    OUTLINED_FUNCTION_4();
    sub_18F03AF38();
    LOBYTE(v27) = v18;
    v33 = 2;
    sub_18F0298D4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F0943CC();
    LOBYTE(v27) = v19;
    v33 = 3;
    sub_18F029928();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    v27 = v20;
    v33 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    sub_18F02997C(&qword_1EACB9380);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    return (*(v21 + 8))(v10, v4);
  }
}

uint64_t sub_18F03BB54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_18EFD0A44();
}

uint64_t sub_18F03BBC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18EFCFC58();
  *a2 = result;
  return result;
}

unint64_t sub_18F03BBF8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18EFCFCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F03BC2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCFC58();
  *a1 = result;
  return result;
}

uint64_t sub_18F03BC54(uint64_t a1)
{
  v2 = sub_18F03B83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F03BC90(uint64_t a1)
{
  v2 = sub_18F03B83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltEnum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F03BDDC()
{
  result = qword_1EACB9758;
  if (!qword_1EACB9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9758);
  }

  return result;
}

unint64_t sub_18F03BE34()
{
  result = qword_1EACB6DD8;
  if (!qword_1EACB6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DD8);
  }

  return result;
}

unint64_t sub_18F03BE8C()
{
  result = qword_1EACB6DE0;
  if (!qword_1EACB6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DE0);
  }

  return result;
}

uint64_t sub_18F03BEE0(uint64_t a1)
{
  v2 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F03BF3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LNEnumMetadata.CodableWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F03BF80()
{
  result = qword_1ED5FF268;
  if (!qword_1ED5FF268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF268);
  }

  return result;
}

uint64_t sub_18F03BFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F03C02C()
{
  sub_18F0934FC();
  result = sub_18F0934CC();
  qword_1EACB9768 = result;
  return result;
}

void *sub_18F03C084()
{
  result = sub_18F03C1E0(MEMORY[0x1E698AB68], MEMORY[0x1E698AB88], MEMORY[0x1E698AB60]);
  off_1EACB6D20 = result;
  return result;
}

void *sub_18F03C104()
{
  result = sub_18F03C1E0(MEMORY[0x1E698ABA0], MEMORY[0x1E698AB90], MEMORY[0x1E698AB98]);
  off_1EACB6D38 = result;
  return result;
}

uint64_t sub_18F03C184()
{
  result = sub_18F03C1E0(MEMORY[0x1E698AB78], MEMORY[0x1E698AB80], MEMORY[0x1E698AB70]);
  qword_1EACB6D50 = result;
  return result;
}

uint64_t sub_18F03C1E0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v58 = a2;
  v4 = a1(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v51 - v9;
  v11 = sub_18F0935CC();
  v12 = OUTLINED_FUNCTION_7(v11);
  v59 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = qword_1EACB9768;
    if (!qword_1EACB9768)
    {
      break;
    }

    v19 = sub_18F093A5C();
    v20 = sub_18F0934DC();
    v57 = *(v20 + 16);
    if (!v57)
    {
LABEL_26:

      return v19;
    }

    v67 = v18;
    v21 = 0;
    v56 = v20 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = v59 + 16;
    v65 = (v70 + 8);
    v66 = v70 + 16;
    v52 = (v59 + 8);
    v62 = a3;
    v63 = v10;
    v64 = v4;
    v53 = v20;
    v54 = v11;
    v61 = v17;
    while (v21 < *(v20 + 16))
    {
      v22 = *(v59 + 72);
      v60 = v21;
      v23 = (*(v59 + 16))(v17, v56 + v22 * v21, v11);
      v24 = v58(v23);
      v71 = *(v24 + 16);
      if (v71)
      {
        v25 = 0;
        v26 = *(v70 + 80);
        v68 = v24;
        v69 = v24 + ((v26 + 32) & ~v26);
        do
        {
          if (v25 >= *(v24 + 16))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v27 = (*(v70 + 16))(v10, v69 + *(v70 + 72) * v25, v4);
          a3(v27);
          sub_18F0935AC();
          v28 = v17;
          v29 = sub_18F09349C();
          v11 = v30;

          if (v11)
          {
            v72 = sub_18F0935AC();
            v73 = v31;
            MEMORY[0x193AD8780](46, 0xE100000000000000);
            MEMORY[0x193AD8780](v29, v11);

            v17 = v72;
            v11 = v73;
            v10 = (a3)(v32);
            a3 = v33;
            swift_isUniquelyReferenced_nonNull_native();
            v72 = v19;
            v34 = sub_18EFAF54C();
            if (__OFADD__(v19[2], (v35 & 1) == 0))
            {
              goto LABEL_28;
            }

            v4 = v34;
            v36 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9798, &qword_18F0ABF78);
            if (sub_18F09417C())
            {
              v37 = sub_18EFAF54C();
              if ((v36 & 1) != (v38 & 1))
              {
                result = sub_18F0944AC();
                __break(1u);
                return result;
              }

              v4 = v37;
            }

            if (v36)
            {

              v19 = v72;
              v39 = (*(v72 + 56) + 16 * v4);
              v40 = v39[1];
              *v39 = v10;
              v39[1] = a3;

              v41 = OUTLINED_FUNCTION_0_13();
              v42(v41);
            }

            else
            {
              v19 = v72;
              *(v72 + 8 * (v4 >> 6) + 64) |= 1 << v4;
              v43 = (v19[6] + 16 * v4);
              *v43 = v17;
              v43[1] = v11;
              v44 = (v19[7] + 16 * v4);
              *v44 = v10;
              v44[1] = a3;
              v45 = OUTLINED_FUNCTION_0_13();
              v46(v45);
              v47 = v19[2];
              v48 = __OFADD__(v47, 1);
              v49 = v47 + 1;
              if (v48)
              {
                goto LABEL_29;
              }

              v19[2] = v49;
            }

            v17 = v61;
            a3 = v62;
          }

          else
          {
            (*v65)(v10, v4);
            v17 = v28;
          }

          v24 = v68;
          ++v25;
        }

        while (v71 != v25);
      }

      v21 = v60 + 1;

      v11 = v54;
      (*v52)(v17, v54);
      v20 = v53;
      if (v21 == v57)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  return sub_18F093A5C();
}

uint64_t sub_18F03C75C()
{
  result = sub_18F03C77C();
  qword_1EACB9770 = result;
  return result;
}

uint64_t sub_18F03C77C()
{
  v76 = sub_18F09373C();
  v0 = *(v76 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = (&v66 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v66 - v8;
  v83 = sub_18F09346C();
  v10 = *(v83 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
LABEL_40:
    swift_once();
  }

  v14 = qword_1EACB9768;
  if (!qword_1EACB9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);

    return sub_18F093A5C();
  }

  v79 = v9;
  v70 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v72 = sub_18F093A5C();
  if (qword_1EACB6D18 != -1)
  {
    swift_once();
  }

  v15 = off_1EACB6D20;
  v16 = off_1EACB6D20 + 64;
  v17 = 1 << *(off_1EACB6D20 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(off_1EACB6D20 + 8);
  v13 = ((v17 + 63) >> 6);
  v69 = (v10 + 4);
  v74 = v0 + 16;
  v67 = v0;
  v73 = (v0 + 8);
  v68 = (v10 + 1);

  v0 = 0;
  v87 = 0;
  v84 = v13;
  v80 = v14;
  v77 = v16;
  v78 = v15;
  while (2)
  {
    v21 = v0;
    while (1)
    {
      while (1)
      {
        if (!v19)
        {
          while (1)
          {
            v0 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v0 >= v13)
            {

              return v72;
            }

            v19 = *&v16[8 * v0];
            ++v21;
            if (v19)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v0 = v21;
LABEL_14:
        v10 = &v66;
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v23 = (v0 << 10) | (16 * v22);
        v24 = (v15[6] + v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = (v15[7] + v23);
        v28 = v27[1];
        v86 = *v27;
        v88[0] = 46;
        v88[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v20);
        *(&v66 - 2) = v88;
        swift_bridgeObjectRetain_n();

        v82 = v25;
        v29 = v25;
        v30 = v87;
        v31 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18F0322E0, (&v66 - 4), v29, v26);
        v9 = v31;
        v87 = v30;
        if (v31[2])
        {
          break;
        }

        v21 = v0;
        v13 = v84;
      }

      v85 = v26;
      v32 = v31[4];
      v33 = v31[5];
      v34 = v79;
      v36 = v31[6];
      v35 = v31[7];

      v9 = MEMORY[0x193AD8710](v32, v33, v36, v35);

      v37 = sub_18F0937BC();
      v10 = v81;
      __swift_storeEnumTagSinglePayload(v81, 1, 1, v37);
      sub_18F09347C();

      sub_18EF82E14(v10, &qword_1EACB9690, &qword_18F0ABB70);
      if (__swift_getEnumTagSinglePayload(v34, 1, v83) != 1)
      {
        break;
      }

      v20 = sub_18EF82E14(v34, &qword_1EACB96A8, &qword_18F0ABF70);
      v21 = v0;
      v16 = v77;
      v15 = v78;
      v13 = v84;
    }

    (*v69)(v70, v34, v83);
    v38 = sub_18F0933BC();
    v39 = *(v38 + 16);
    if (v39)
    {
      v88[0] = MEMORY[0x1E69E7CC0];
      sub_18EFB5B40(0, v39, 0);
      v40 = v88[0];
      v41 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v66 = v38;
      v42 = v38 + v41;
      v86 = *(v67 + 72);
      v71 = *(v67 + 16);
      do
      {
        v44 = v75;
        v43 = v76;
        v71(v75, v42, v76);
        v45 = sub_18F09371C();
        v47 = v46;
        (*v73)(v44, v43);
        v88[0] = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_18EFB5B40((v48 > 1), v49 + 1, 1);
          v40 = v88[0];
        }

        *(v40 + 16) = v49 + 1;
        v50 = v40 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v42 += v86;
        --v39;
      }

      while (v39);
      v51 = v40;
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v52 = v72;
    swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v52;
    v10 = v82;
    v53 = v85;
    v54 = sub_18EFAF54C();
    if (__OFADD__(*(v52 + 16), (v55 & 1) == 0))
    {
      __break(1u);
      goto LABEL_42;
    }

    v9 = v54;
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9790, &qword_18F0ABF68);
    if ((sub_18F09417C() & 1) == 0)
    {
      v16 = v77;
      v15 = v78;
LABEL_30:
      v59 = v88[0];
      v72 = v88[0];
      if (v56)
      {
        v60 = *(v88[0] + 56);
        v10 = *(v60 + 8 * v9);
        *(v60 + 8 * v9) = v51;

LABEL_34:
        v13 = v84;
        v20 = (*v68)(v70, v83);
        continue;
      }

      *(v88[0] + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v61 = (v59[6] + 16 * v9);
      *v61 = v10;
      v61[1] = v53;
      *(v59[7] + 8 * v9) = v51;
      v62 = v59[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (!v63)
      {
        v59[2] = v64;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v57 = sub_18EFAF54C();
  v16 = v77;
  v15 = v78;
  if ((v56 & 1) == (v58 & 1))
  {
    v9 = v57;
    goto LABEL_30;
  }

LABEL_43:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03CFD0()
{
  result = sub_18F03CFF0();
  qword_1EACB9778 = result;
  return result;
}

uint64_t sub_18F03CFF0()
{
  v76 = sub_18F09369C();
  v0 = *(v76 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = (&v66 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v66 - v8;
  v83 = sub_18F09362C();
  v10 = *(v83 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
LABEL_40:
    swift_once();
  }

  v14 = qword_1EACB9768;
  if (!qword_1EACB9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);

    return sub_18F093A5C();
  }

  v79 = v9;
  v70 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v72 = sub_18F093A5C();
  if (qword_1EACB6D30 != -1)
  {
    swift_once();
  }

  v15 = off_1EACB6D38;
  v16 = off_1EACB6D38 + 64;
  v17 = 1 << *(off_1EACB6D38 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(off_1EACB6D38 + 8);
  v13 = ((v17 + 63) >> 6);
  v69 = (v10 + 4);
  v74 = v0 + 16;
  v67 = v0;
  v73 = (v0 + 8);
  v68 = (v10 + 1);

  v0 = 0;
  v87 = 0;
  v84 = v13;
  v80 = v14;
  v77 = v16;
  v78 = v15;
  while (2)
  {
    v21 = v0;
    while (1)
    {
      while (1)
      {
        if (!v19)
        {
          while (1)
          {
            v0 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v0 >= v13)
            {

              return v72;
            }

            v19 = *&v16[8 * v0];
            ++v21;
            if (v19)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v0 = v21;
LABEL_14:
        v10 = &v66;
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v23 = (v0 << 10) | (16 * v22);
        v24 = (v15[6] + v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = (v15[7] + v23);
        v28 = v27[1];
        v86 = *v27;
        v88[0] = 46;
        v88[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v20);
        *(&v66 - 2) = v88;
        swift_bridgeObjectRetain_n();

        v82 = v25;
        v29 = v25;
        v30 = v87;
        v31 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18EFA5C94, (&v66 - 4), v29, v26);
        v9 = v31;
        v87 = v30;
        if (v31[2])
        {
          break;
        }

        v21 = v0;
        v13 = v84;
      }

      v85 = v26;
      v32 = v31[4];
      v33 = v31[5];
      v34 = v79;
      v36 = v31[6];
      v35 = v31[7];

      v9 = MEMORY[0x193AD8710](v32, v33, v36, v35);

      v37 = sub_18F0937BC();
      v10 = v81;
      __swift_storeEnumTagSinglePayload(v81, 1, 1, v37);
      sub_18F0934AC();

      sub_18EF82E14(v10, &qword_1EACB9690, &qword_18F0ABB70);
      if (__swift_getEnumTagSinglePayload(v34, 1, v83) != 1)
      {
        break;
      }

      v20 = sub_18EF82E14(v34, &qword_1EACB96A0, &unk_18F0ABB80);
      v21 = v0;
      v16 = v77;
      v15 = v78;
      v13 = v84;
    }

    (*v69)(v70, v34, v83);
    v38 = sub_18F0935DC();
    v39 = *(v38 + 16);
    if (v39)
    {
      v88[0] = MEMORY[0x1E69E7CC0];
      sub_18EFB5B40(0, v39, 0);
      v40 = v88[0];
      v41 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v66 = v38;
      v42 = v38 + v41;
      v86 = *(v67 + 72);
      v71 = *(v67 + 16);
      do
      {
        v44 = v75;
        v43 = v76;
        v71(v75, v42, v76);
        v45 = sub_18F09367C();
        v47 = v46;
        (*v73)(v44, v43);
        v88[0] = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_18EFB5B40((v48 > 1), v49 + 1, 1);
          v40 = v88[0];
        }

        *(v40 + 16) = v49 + 1;
        v50 = v40 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v42 += v86;
        --v39;
      }

      while (v39);
      v51 = v40;
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v52 = v72;
    swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v52;
    v10 = v82;
    v53 = v85;
    v54 = sub_18EFAF54C();
    if (__OFADD__(*(v52 + 16), (v55 & 1) == 0))
    {
      __break(1u);
      goto LABEL_42;
    }

    v9 = v54;
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9790, &qword_18F0ABF68);
    if ((sub_18F09417C() & 1) == 0)
    {
      v16 = v77;
      v15 = v78;
LABEL_30:
      v59 = v88[0];
      v72 = v88[0];
      if (v56)
      {
        v60 = *(v88[0] + 56);
        v10 = *(v60 + 8 * v9);
        *(v60 + 8 * v9) = v51;

LABEL_34:
        v13 = v84;
        v20 = (*v68)(v70, v83);
        continue;
      }

      *(v88[0] + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v61 = (v59[6] + 16 * v9);
      *v61 = v10;
      v61[1] = v53;
      *(v59[7] + 8 * v9) = v51;
      v62 = v59[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (!v63)
      {
        v59[2] = v64;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v57 = sub_18EFAF54C();
  v16 = v77;
  v15 = v78;
  if ((v56 & 1) == (v58 & 1))
  {
    v9 = v57;
    goto LABEL_30;
  }

LABEL_43:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03D844()
{
  result = sub_18F03D864();
  qword_1EACB9780 = result;
  return result;
}

uint64_t sub_18F03D864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9788, &qword_18F0ABF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  *(inited + 32) = 0x5F796D6D75645FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_18F093A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
  return sub_18F093A5C();
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltMapping(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t LNActionMetadata._mangledTypeNameForAppIntentsOnly.getter()
{
  v1 = [v0 mangledTypeName];
  v2 = sub_18F093B8C();

  return v2;
}

uint64_t sub_18F03DA90(void *a1)
{
  v1 = [a1 iconSystemImageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F093B8C();

  return v3;
}

unint64_t sub_18F03DAF8()
{
  result = qword_1EACB7A00;
  if (!qword_1EACB7A00)
  {
    type metadata accessor for LNQueryCapabilities();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A00);
  }

  return result;
}

uint64_t LNStaticDeferredLocalizedString._dictionaryRepresentation()()
{
  v34[4] = *MEMORY[0x1E69E9840];
  v1 = sub_18F0931CC();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_22();
  v9 = v8 - v7;
  v10 = [v0 localizedStringResource];
  if (v10)
  {
    v11 = v10;
    v34[3] = sub_18F03DE2C();
    v34[0] = v11;
    v12 = v11;
    sub_18F09319C();
    v13 = sub_18F0930BC();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_18F0930AC();
    OUTLINED_FUNCTION_3_11();
    sub_18F03E904(v16);
    sub_18F09308C();

    v17 = objc_opt_self();
    v18 = OUTLINED_FUNCTION_7_5();
    sub_18EF844C4(v18, v19);
    OUTLINED_FUNCTION_7_5();
    v20 = sub_18F0932DC();
    v34[0] = 0;
    v21 = [v17 JSONObjectWithData:v20 options:0 error:v34];

    if (v21)
    {
      v22 = v34[0];
      sub_18F093FAC();
      v23 = OUTLINED_FUNCTION_7_5();
      sub_18EF9A4AC(v23, v24);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97A0, &qword_18F0AC008);
      if (swift_dynamicCast())
      {
        (*(v4 + 8))(v9, v1);
        v25 = OUTLINED_FUNCTION_7_5();
        sub_18EF9A4AC(v25, v26);

        result = v33;
        v28 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    else
    {
      v29 = v34[0];
      v30 = sub_18F09318C();

      swift_willThrow();
      v31 = OUTLINED_FUNCTION_7_5();
      sub_18EF9A4AC(v31, v32);
    }

    OUTLINED_FUNCTION_4_12();
  }

  else
  {
    OUTLINED_FUNCTION_4_12();
  }

  OUTLINED_FUNCTION_2_12();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

unint64_t sub_18F03DE2C()
{
  result = qword_1ED5FD160;
  if (!qword_1ED5FD160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FD160);
  }

  return result;
}

uint64_t LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)()
{
  v2 = sub_18F093BCC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_22();
  v6 = v5 - v4;
  v7 = sub_18F0931CC();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v11 = [v0 localizedStringResource];
  if (v11)
  {
    v12 = v11;
    sub_18F03DE2C();
    v13 = v12;
    sub_18F09319C();
    OUTLINED_FUNCTION_3_11();
    sub_18F03E904(v14);
    v15 = sub_18F09308C();
    if (v1 || (v17 = v15, v18 = v16, sub_18F093BBC(), v6 = sub_18F093BAC(), v20 = v19, sub_18EF9A4AC(v17, v18), v20))
    {
      v21 = OUTLINED_FUNCTION_5_9();
      v22(v21);

      return v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_2_12();
  }

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

void __swiftcall LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)(LNStaticDeferredLocalizedString *__return_ptr retstr, Swift::String localizedStringResourceJSON)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_18F0931CC();
  v7 = OUTLINED_FUNCTION_7(v6);
  v35 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  v13 = v12 - v11;
  v14 = sub_18F093BCC();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22();
  v22 = v21 - v20;
  sub_18F093BBC();
  v23 = sub_18F093B9C();
  v25 = v24;

  (*(v17 + 8))(v22, v14);
  if (v25 >> 60 != 15)
  {
    v26 = sub_18F09302C();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_18F09301C();
    OUTLINED_FUNCTION_6_8(&unk_1ED5FF4C0);
    v29 = v23;
    sub_18F09300C();

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    v30 = v35;
    (*(v35 + 32))(v13, v5, v6);
    sub_18F0931AC();
    sub_18F03DE2C();
    if (swift_dynamicCast())
    {
      v31 = v36;
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource_];
      sub_18EF9A498(v29, v25);

      (*(v30 + 8))(v13, v6);
      return;
    }

    (*(v30 + 8))(v13, v6);
    sub_18EF9A498(v29, v25);
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = sub_18F093B5C();
  [v32 initWithKey:v33 defaultValue:0 table:0 bundleURL:0];
}

void __swiftcall LNStaticDeferredLocalizedString.init(dictionary:)(LNStaticDeferredLocalizedString *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093A3C();

  [v2 _initWithDictionary_];
}

uint64_t LNStaticDeferredLocalizedString.init(dictionary:)()
{
  v35[4] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v33 - v2;
  v4 = sub_18F0931CC();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v12 = v11 - v10;
  v13 = objc_opt_self();
  v14 = sub_18F093A3C();
  v35[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v35];

  v16 = v35[0];
  if (v15)
  {
    v17 = sub_18F09330C();
    v19 = v18;

    v20 = sub_18F09302C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_18F09301C();
    OUTLINED_FUNCTION_6_8(&unk_1ED5FF4C0);
    sub_18F09300C();

    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    (*(v7 + 32))(v12, v3, v4);
    sub_18F0931AC();
    sub_18F03DE2C();
    if (swift_dynamicCast())
    {

      v23 = v34;
      v24 = [v33 initWithLocalizedStringResource_];
      sub_18EF9A4AC(v17, v19);

      v25 = OUTLINED_FUNCTION_5_9();
      v26(v25);
      v27 = *MEMORY[0x1E69E9840];
      return v24;
    }

    v31 = OUTLINED_FUNCTION_5_9();
    v32(v31);
    sub_18EF9A4AC(v17, v19);
  }

  else
  {
    v29 = v16;
    v30 = sub_18F09318C();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_4_12();
  v33 = 58;
  OUTLINED_FUNCTION_2_12();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03E904(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F0931CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F03E948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F03E9B0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F09324C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_18F0932BC();
  OUTLINED_FUNCTION_36(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t FrameworkRecord.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8);

  return v1;
}

uint64_t FrameworkRecord.hostBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_hostBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_hostBundleIdentifier + 8);

  return v1;
}

uint64_t sub_18F03EAE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_18F0932BC();
  v6 = OUTLINED_FUNCTION_36(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

id FrameworkRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier);
  v6 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8);
  v7 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL;
  v8 = sub_18F0932BC();
  OUTLINED_FUNCTION_36(v8);
  (*(v9 + 16))(v4, v0 + v7, v8);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  v10 = objc_allocWithZone(LNEffectiveBundleIdentifier);

  return sub_18EF7FCF0(3, v5, v6, v4);
}

uint64_t FrameworkRecord.targetBundleIdentifiers.getter()
{
  v1 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t FrameworkRecord.targetBundleIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *static FrameworkRecord.from(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EACB6B18 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_0_14();
  }

  v4 = 0;
  v5 = off_1EACB6B20;
  v6 = 1 << *(off_1EACB6B20 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = off_1EACB6B20 + 64;
  v9 = v7 & *(off_1EACB6B20 + 8);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          return 0;
        }

        v9 = *&v8[8 * v11];
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_10:
    v12 = *(v5[7] + ((v4 << 9) | (8 * __clz(__rbit64(v9)))));
    if (*&v12[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier] == a1 && *&v12[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_18F09444C() & 1) == 0);
  v14 = v12;
  return v12;
}

void *static FrameworkRecord.from(frameworkURL:)()
{
  if (qword_1EACB6B18 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  v0 = off_1EACB6B20;
  if (!*(off_1EACB6B20 + 2))
  {
    return 0;
  }

  v1 = sub_18F010530();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(v0[7] + 8 * v1);
  v4 = v3;
  return v3;
}

id sub_18F03EEF4()
{
  result = sub_18F03EF14();
  off_1EACB6B20 = result;
  return result;
}

id sub_18F03EF14()
{
  v53[1] = *MEMORY[0x1E69E9840];
  v0 = sub_18F0932BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = [objc_opt_self() defaultManager];
  sub_18F09323C();
  v14 = sub_18F09324C();
  v16 = v1 + 8;
  v15 = *(v1 + 8);
  v15(v12, v0);
  v53[0] = 0;
  v17 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:v53];

  v18 = v53[0];
  if (!v17)
  {
    v41 = v53[0];
    v42 = sub_18F09318C();

    swift_willThrow();
    type metadata accessor for FrameworkRecord();
    sub_18F0408AC(&qword_1ED5FE5D0);
    result = sub_18F093A5C();
    goto LABEL_24;
  }

  v50 = v15;
  v46 = v7;
  v19 = sub_18F093DCC();
  v20 = v18;

  v21 = 0;
  v51 = *(v19 + 16);
  v52 = v1 + 16;
  v47 = (v1 + 32);
  v49 = MEMORY[0x1E69E7CC0];
  while (v51 != v21)
  {
    if (v21 >= *(v19 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v22 = v16;
    v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v24 = *(v1 + 72);
    (*(v1 + 16))(v10, v19 + v23 + v24 * v21, v0);
    if (sub_18F0931EC())
    {
      if (sub_18F09320C() == 0x7473696C70 && v25 == 0xE500000000000000)
      {
      }

      else
      {
        v27 = sub_18F09444C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v45 = *v47;
      v45(v48, v10, v0);
      v28 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v28[2];
        sub_18F00F748();
        v28 = v53[0];
      }

      v31 = v28[2];
      v32 = (v31 + 1);
      if (v31 >= v28[3] >> 1)
      {
        v49 = (v31 + 1);
        sub_18F00F748();
        v32 = v49;
        v28 = v53[0];
      }

      ++v21;
      v28[2] = v32;
      v49 = v28;
      v45(v28 + v23 + v31 * v24, v48, v0);
      v16 = v22;
    }

    else
    {
LABEL_11:
      v16 = v22;
      v50(v10, v0);
      ++v21;
    }
  }

  type metadata accessor for FrameworkRecord();
  sub_18F0408AC(&qword_1ED5FE5D0);
  v33 = 0;
  v53[0] = sub_18F093A5C();
  v35 = v49;
  v34 = v50;
  v36 = v49[2];
  v37 = v46;
  while (v36 != v33)
  {
    if (v33 >= v35[2])
    {
      goto LABEL_26;
    }

    v38 = (*(v1 + 16))(v37, v35 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v33, v0);
    v39 = MEMORY[0x193AD91F0](v38);
    sub_18F03F450(v37, v53);
    ++v33;
    objc_autoreleasePoolPop(v39);
    v34(v37, v0);
  }

  result = v53[0];
LABEL_24:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F03F450(char *a1, void *a2)
{
  v3 = v2;
  v82 = a2;
  isUniquelyReferenced_nonNull_native = sub_18F0932BC();
  v6 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v6 + 8);
  v8 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v87 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = v74 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v74 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v74 - v15;
  if (qword_1ED5FEEB8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v17 = sub_18F093A2C();
  v18 = __swift_project_value_buffer(v17, qword_1ED60C1C0);
  v83 = *(v6 + 2);
  v84 = v6 + 16;
  v83(v16, a1, isUniquelyReferenced_nonNull_native);
  v88 = v18;
  v19 = sub_18F093A0C();
  v20 = sub_18F093EDC();
  v21 = os_log_type_enabled(v19, v20);
  v86 = isUniquelyReferenced_nonNull_native;
  v79 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v76 = v3;
    v24 = v23;
    *&v93[0] = v23;
    *v22 = 136315138;
    sub_18F0408AC(&qword_1ED5FEC20);
    v25 = sub_18F0943FC();
    v89 = v14;
    v26 = a1;
    v28 = v27;
    v85 = *(v6 + 1);
    v85(v16, v86);
    v29 = sub_18F0462AC(v25, v28, v93);
    a1 = v26;
    v14 = v89;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_18EF7E000, v19, v20, "Found framework record: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v30 = v24;
    v3 = v76;
    MEMORY[0x193AD9AF0](v30, -1, -1);
    v31 = v22;
    isUniquelyReferenced_nonNull_native = v86;
    MEMORY[0x193AD9AF0](v31, -1, -1);
  }

  else
  {

    v85 = *(v6 + 1);
    v85(v16, isUniquelyReferenced_nonNull_native);
  }

  sub_18F034500();
  v83(v14, a1, isUniquelyReferenced_nonNull_native);
  v32 = sub_18F03E9B0(v14);
  if (!v32)
  {
    return;
  }

  v33 = v32;
  *&v91 = 0x726F77656D617246;
  *(&v91 + 1) = 0xEA0000000000736BLL;
  v34 = [v32 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
  }

  v35 = v79;
  v93[0] = v91;
  v93[1] = v92;
  if (!*(&v92 + 1))
  {

    sub_18F021E3C(v93);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    return;
  }

  v36 = v94;
  v37 = *(v94 + 16);
  if (!v37)
  {

    goto LABEL_36;
  }

  v75 = v33;
  v76 = v3;
  v38 = objc_opt_self();
  v80 = v35 + 8;
  v81 = v38;
  v74[1] = v36;
  v3 = (v36 + 40);
  *&v39 = 136315138;
  v78 = v39;
  *&v39 = 136446210;
  v77 = v39;
  while (1)
  {
    v41 = *(v3 - 1);
    v40 = *v3;
    swift_bridgeObjectRetain_n();
    v42 = sub_18F093A0C();
    v43 = sub_18F093EDC();

    v44 = os_log_type_enabled(v42, v43);
    v89 = v37;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v93[0] = v46;
      *v45 = v78;
      *(v45 + 4) = sub_18F0462AC(v41, v40, v93);
      _os_log_impl(&dword_18EF7E000, v42, v43, "Registering framework from: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x193AD9AF0](v46, -1, -1);
      MEMORY[0x193AD9AF0](v45, -1, -1);
    }

    sub_18F09323C();
    v47 = sub_18F09324C();
    v16 = [v81 ln:v47 uniqueBundleWithURL:?];

    if (!v16)
    {
      goto LABEL_22;
    }

    v48 = objc_allocWithZone(type metadata accessor for FrameworkRecord());
    v6 = v16;
    v49 = FrameworkRecord.init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(v6, 0, 0, 1);
    if (!v49)
    {

LABEL_22:

      v60 = sub_18F093A0C();
      v61 = sub_18F093ECC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v93[0] = v63;
        *v62 = v77;
        v64 = sub_18F0462AC(v41, v40, v93);

        *(v62 + 4) = v64;
        isUniquelyReferenced_nonNull_native = v86;
        _os_log_impl(&dword_18EF7E000, v60, v61, "Failed to create framework record for: %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x193AD9AF0](v63, -1, -1);
        MEMORY[0x193AD9AF0](v62, -1, -1);
      }

      else
      {
      }

      v85(v90, isUniquelyReferenced_nonNull_native);
      goto LABEL_32;
    }

    v50 = v49;

    a1 = v87;
    v83(v87, v90, isUniquelyReferenced_nonNull_native);
    v14 = v50;
    v51 = v82;
    v52 = *v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93[0] = *v51;
    v53 = *&v93[0];
    *v51 = 0x8000000000000000;
    v54 = sub_18F010530();
    if (__OFADD__(*(v53 + 16), (v55 & 1) == 0))
    {
      __break(1u);
      goto LABEL_39;
    }

    v56 = v54;
    v57 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97B8, &qword_18F0AC088);
    if (sub_18F09417C())
    {
      v58 = sub_18F010530();
      isUniquelyReferenced_nonNull_native = v86;
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_41;
      }

      v56 = v58;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v86;
    }

    v65 = *&v93[0];
    if ((v57 & 1) == 0)
    {
      break;
    }

    v66 = *(*&v93[0] + 56);
    v67 = *(v66 + 8 * v56);
    *(v66 + 8 * v56) = v14;

    v68 = v14;
    v14 = v67;
LABEL_31:

    v72 = v85;
    v85(v87, isUniquelyReferenced_nonNull_native);
    v72(v90, isUniquelyReferenced_nonNull_native);
    v73 = *v82;
    *v82 = v65;

LABEL_32:
    v3 += 2;
    v37 = v89 - 1;
    if (v89 == 1)
    {

      return;
    }
  }

  *(*&v93[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
  v83((v65[6] + *(v79 + 9) * v56), v87, isUniquelyReferenced_nonNull_native);
  *(v65[7] + 8 * v56) = v14;
  v69 = v65[2];
  v70 = __OFADD__(v69, 1);
  v71 = v69 + 1;
  if (!v70)
  {
    v65[2] = v71;
    v68 = v6;
    goto LABEL_31;
  }

  __break(1u);
LABEL_41:
  sub_18F0944AC();
  __break(1u);
}

uint64_t static FrameworkRecord.enumerated.getter()
{
  if (qword_1EACB6B18 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }
}

id FrameworkRecord.init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v61 = a3;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_18F0932BC();
  v60 = *(v9 - 8);
  v10 = v60[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v55 - v16;
  v17 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers;
  *(v5 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers) = 0;
  v18 = MEMORY[0x193AD91F0](v15);
  sub_18F040370(a1, v66);
  objc_autoreleasePoolPop(v18);
  if ((LOBYTE(v66[0]) == 2 || (v66[0] & 1) == 0) && (a4 & 1) != 0 || (v19 = sub_18EF7FDF8(a1), !v20))
  {

LABEL_9:

    v27 = *(v5 + v17);

    v28 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x30);
    v29 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = v20;
  v55 = v19;
  v57 = ObjectType;
  v22 = MEMORY[0x193AD91F0]();
  sub_18F040460(a1, v66);
  objc_autoreleasePoolPop(v22);
  v23 = *(&v66[0] + 1);
  if (*(&v66[0] + 1))
  {
    v24 = *&v66[0];
    v56 = objc_opt_self();
    *&v66[0] = 0;
    *(&v66[0] + 1) = 0xE000000000000000;
    sub_18F09406C();

    *&v66[0] = 0xD000000000000022;
    *(&v66[0] + 1) = 0x800000018F0B0890;
    MEMORY[0x193AD8780](v24, v23);

    MEMORY[0x193AD8780](0x6F77656D6172662ELL, 0xEA00000000006B72);
    v25 = sub_18F093B5C();

    v26 = [v56 ln:v25 uniqueBundleWithPath:?];

    if (!v26)
    {

LABEL_16:

      goto LABEL_9;
    }
  }

  else
  {
    v26 = a1;
  }

  v32 = sub_18F093B5C();
  v33 = sub_18F0406E0(0x74636172747865, 0xE700000000000000, 0x64736E6F69746361, 0xEB00000000617461, v32, v26);

  if (!v33)
  {

    goto LABEL_16;
  }

  sub_18F09327C();

  v56 = v60[4];
  (v56)(v59, v14, v9);
  v34 = v61;
  if (v61)
  {

    v21 = v34;
    v35 = v58;
  }

  else
  {
    v35 = v55;
  }

  v36 = (v5 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier);
  *v36 = v35;
  v36[1] = v21;
  v37 = sub_18EF7FDF8(v26);
  v38 = (v5 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_hostBundleIdentifier);
  *v38 = v37;
  v38[1] = v39;
  v40 = [v26 bundleURL];
  sub_18F09327C();

  v41 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL);
  v42 = v56;
  (v56)(v41);
  v43 = [a1 bundleURL];
  sub_18F09327C();

  v44 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_frameworkURL);
  v42(v44);
  v46 = v59;
  v45 = v60;
  v47 = v60[2];
  v48 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_metadataURL);
  v49(v48);
  v50 = sub_18F093B5C();
  v51 = [a1 objectForInfoDictionaryKey_];

  if (v51)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();

    (v45[1])(v46, v9);
  }

  else
  {
    (v45[1])(v46, v9);

    v64 = 0u;
    v65 = 0u;
  }

  v52 = v57;
  v66[0] = v64;
  v66[1] = v65;
  if (*(&v65 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    if (swift_dynamicCast())
    {
      v53 = v62;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    sub_18F021E3C(v66);
    v53 = 0;
  }

  swift_beginAccess();
  v54 = *(v5 + v17);
  *(v5 + v17) = v53;

  v63.receiver = v5;
  v63.super_class = v52;
  v30 = objc_msgSendSuper2(&v63, sel_init);

  return v30;
}

uint64_t sub_18F040370@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = [a1 objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_18F021E3C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_18F040460@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = [a1 objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_18F021E3C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

id FrameworkRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18F0406E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_18F093B5C();

  v9 = sub_18F093B5C();

  v10 = [a6 URLForResource:v8 withExtension:v9 subdirectory:a5];

  return v10;
}

uint64_t type metadata accessor for FrameworkRecord()
{
  result = qword_1EACB71C0;
  if (!qword_1EACB71C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F0407D0()
{
  result = sub_18F0932BC();
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

uint64_t sub_18F0408AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F0932BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F04092C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_18F041644(a1, sub_18EFBB41C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_18F0409B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t), __CFString *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v89 = a8;
  v95 = a7;
  v88 = a6;
  v94 = a5;
  v96 = a4;
  v90 = a3;
  v98 = sub_18F0939FC();
  v12 = OUTLINED_FUNCTION_7(v98);
  v85 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_3();
  v97 = v16;
  v93 = sub_18F0937FC();
  v17 = OUTLINED_FUNCTION_7(v93);
  v86 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_0_3();
  v87 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C0, &qword_18F0AC090);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v78 - v24;
  v26 = sub_18F09385C();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v27);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v78 - v35;
  sub_18F0936FC();
  if (v105)
  {
    sub_18EF914D4(&v103, &v107);
    sub_18EFB6E2C(&v107, &v103);
    v37 = a2;
    v38 = @"LNValueTypeSpecificMetadataKeyDefaultValue";
    v39 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    *&v101 = v39;
    sub_18EFB6E88(&v103, v38);

    a2 = v37;
    v40 = v101;
    __swift_destroy_boxed_opaque_existential_1Tm(&v107);
  }

  else
  {
    sub_18EF82E14(&v103, &qword_1EACB9180, &qword_18F09BD30);
    v40 = MEMORY[0x1E69E7CC8];
  }

  sub_18F0936EC();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_18EF82E14(v25, &qword_1EACB97C0, &qword_18F0AC090);
  }

  else
  {
    v91 = a1;
    v83 = a2;
    v84 = v9;
    (*(v29 + 32))(v36, v25, v26);
    type metadata accessor for LNValueTypeSpecificMetadataKey();
    sub_18EFBB284();

    v78 = sub_18F093A5C();
    (*(v29 + 16))(v34, v36, v26);
    v41 = (*(v29 + 88))(v34, v26) == *MEMORY[0x1E698ACB0];
    v82 = v36;
    if (!v41)
    {
      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD000000000000010, 0x800000018F0B0A10);
      sub_18F09414C();
      result = sub_18F0941AC();
      __break(1u);
      return result;
    }

    v42 = *(v29 + 8);
    v80 = v29 + 8;
    v81 = v42;
    v42(v34, v26);
    v92 = v40;
    v43 = sub_18EFB6CA8();
    v44 = v88;
    *&v107 = v94;
    *(&v107 + 1) = v88;
    v79 = v26;
    v45 = v89;
    v108 = v95;
    v109 = v89;
    v110 = 5;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v46 = @"LNValueTypeMetadataKeyBoolTrueDisplayName";
    v47 = sub_18F0937AC();
    v49 = v48;
    v86 = *(v86 + 16);
    v50 = v87;
    (v86)(v87, v96, v93);

    v51 = OUTLINED_FUNCTION_3_12(&v107, v47, v49);
    v105 = v43;
    *&v103 = v51;
    sub_18EF914D4(&v103, &v101);
    v52 = v78;
    swift_isUniquelyReferenced_nonNull_native();
    *&v100[0] = v52;
    sub_18EFB6E88(&v101, v46);

    v53 = *&v100[0];
    *&v103 = v94;
    *(&v103 + 1) = v44;
    v104 = v95;
    v105 = v45;
    v106 = 6;
    v54 = @"LNValueTypeMetadataKeyBoolFalseDisplayName";
    v55 = sub_18F0937AC();
    v57 = v56;
    (v86)(v50, v96, v93);

    v58 = OUTLINED_FUNCTION_3_12(&v103, v55, v57);
    v102 = v43;
    *&v101 = v58;
    sub_18EF914D4(&v101, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v53;
    sub_18EFB6E88(v100, v54);

    v40 = sub_18F04092C(v99, v92);
    v81(v82, v79);
  }

  v59 = sub_18F09370C();
  if (v59)
  {
    v60 = v59;
    v61 = @"LNValueTypeMetadataKeyFileSupportedTypes";
    v62 = *(v59 + 16);
    if (v62)
    {
      v92 = v40;
      *&v101 = MEMORY[0x1E69E7CC0];
      v94 = @"LNValueTypeMetadataKeyFileSupportedTypes";
      v63 = @"LNValueTypeMetadataKeyFileSupportedTypes";
      sub_18EFB5B40(0, v62, 0);
      v64 = v101;
      v96 = *(v85 + 16);
      v65 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v93 = v60;
      v66 = v60 + v65;
      v95 = *(v85 + 72);
      v67 = (v85 + 8);
      do
      {
        v68 = v97;
        v69 = v98;
        v96(v97, v66, v98);
        v70 = sub_18F0939DC();
        v72 = v71;
        (*v67)(v68, v69);
        *&v101 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_18EFB5B40((v73 > 1), v74 + 1, 1);
          v64 = v101;
        }

        *(v64 + 16) = v74 + 1;
        v75 = v64 + 16 * v74;
        *(v75 + 32) = v70;
        *(v75 + 40) = v72;
        v66 += v95;
        --v62;
      }

      while (v62);

      v40 = v92;
      v61 = v94;
    }

    else
    {
      v76 = @"LNValueTypeMetadataKeyFileSupportedTypes";

      v64 = MEMORY[0x1E69E7CC0];
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    *&v101 = v64;
    sub_18EF914D4(&v101, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v40;
    sub_18EFB6E88(v100, v61);

    return v99;
  }

  return v40;
}

void sub_18F041268(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_18EFB9084(a2);
  OUTLINED_FUNCTION_0_16(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8898, &qword_18F0A1458);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_18EFB9084(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    type metadata accessor for LNPlatformName();
    sub_18F0944AC();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_18F0415B8(v11, a2, a1, v16);

    v19 = a2;
  }
}

uint64_t sub_18F041388()
{
  v2 = OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_0_16(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
  if ((OUTLINED_FUNCTION_6_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_18EFAF54C();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56) + 80 * v7;

    return sub_18F023540(v0, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_10();
    sub_18EFB5F54(v14, v15, v16, v17, v18);
  }
}

id sub_18F041480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_18EFB9084(a3);
  OUTLINED_FUNCTION_0_16(v8, v9);
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97D0, &qword_18F0AC0A0);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v4;
  v16 = sub_18EFB9084(a3);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    type metadata accessor for LNPlatformName();
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_18F0415FC(v13, a3, a1, a2, v18);

    return a3;
  }
}

unint64_t sub_18F0415B8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_18F0415FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_18F041644(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_18EFAF5BC(v29);
  v27[2] = v29[0];
  v27[3] = v29[1];
  v27[4] = v29[2];
  v28 = v30;

  while (1)
  {
    sub_18EFBB2DC(&v26);
    v7 = v26;
    if (!v26)
    {
      sub_18EFAE608();
    }

    sub_18EF914D4(v27, v25);
    v8 = *a5;
    v10 = sub_18EFB9084(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v13 = v9;
    if (v8[3] >= v11 + v12)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C8, &qword_18F0AC098);
        sub_18F09418C();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_18EFA4264();
      v14 = *a5;
      v15 = sub_18EFB9084(v7);
      if ((v13 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v10 = v15;
      if (v13)
      {
LABEL_10:
        v17 = *a5;
        sub_18EFB6E2C(v25, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);

        v18 = (v17[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_18EF914D4(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v19[6] + 8 * v10) = v7;
    sub_18EF914D4(v25, (v19[7] + 32 * v10));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for LNValueTypeSpecificMetadataKey();
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.includeLocalizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AE0, &qword_18F0A0C08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  sub_18F09415C();
  v6 = sub_18F09416C();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F0419AC()
{
  v1 = sub_18F0937EC();
  v2 = OUTLINED_FUNCTION_7(v1);
  v193 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  v158 = v6;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v149 - v8;
  v10 = sub_18F09346C();
  v11 = OUTLINED_FUNCTION_7(v10);
  v192 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v166 = v15;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v149 - v17;
  v187 = sub_18F09362C();
  v19 = OUTLINED_FUNCTION_7(v187);
  v189 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  v176 = v23;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v149 - v25;
  v194 = sub_18F0937FC();
  v27 = OUTLINED_FUNCTION_7(v194);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  v156 = v32;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_1();
  v157 = v34;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_1();
  v164 = v36;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_1();
  v165 = v38;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14_1();
  v174 = v40;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v41);
  v175 = &v149 - v42;
  v185 = sub_18F0937BC();
  v43 = OUTLINED_FUNCTION_7(v185);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v184 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_18F09356C();
  v49 = OUTLINED_FUNCTION_7(v170);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1_0();
  v191 = v54;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v55);
  v186 = &v149 - v56;
  v188 = v0;
  v57 = sub_18F0937CC();
  v190 = *(v57 + 16);
  if (!v190)
  {

    v147 = MEMORY[0x1E69E7CC8];
    v145 = MEMORY[0x1E69E7CC8];
    v146 = MEMORY[0x1E69E7CC8];
LABEL_42:
    type metadata accessor for AssistantPrebuiltLibrary();
    swift_allocObject();
    return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v146, v145, v147);
  }

  v173 = v26;
  v163 = v18;
  v167 = v10;
  v159 = v1;
  v58 = 0;
  v151 = (v193 + 32);
  v152 = 0;
  v150 = (v193 + 8);
  v154 = (v192 + 32);
  v155 = v9;
  v182 = (v29 + 16);
  v183 = (v45 + 8);
  v181 = (v29 + 88);
  v180 = *MEMORY[0x1E698AC90];
  v169 = *MEMORY[0x1E698AC98];
  v160 = *MEMORY[0x1E698AC88];
  v179 = (v29 + 8);
  v153 = (v192 + 8);
  v161 = (v189 + 8);
  v162 = (v189 + 32);
  v172 = (v51 + 32);
  v171 = (v51 + 8);
  v59 = v57 + 32;
  v177 = MEMORY[0x1E69E7CC8];
  v178 = v57;
  v192 = MEMORY[0x1E69E7CC8];
  v168 = MEMORY[0x1E69E7CC8];
  v61 = v186;
  v60 = v187;
  v62 = v170;
  v63 = v57;
  while (1)
  {
    if (v58 >= *(v63 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_18F0944AC();
      __break(1u);
      goto LABEL_48;
    }

    sub_18EFB4B8C(v59, v199);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9230, &qword_18F0AA148);
    if (!swift_dynamicCast())
    {
      break;
    }

    (*v172)(v191, v61, v62);
    sub_18F09378C();
    OUTLINED_FUNCTION_16_3();
    v64 = OUTLINED_FUNCTION_7_6();
    sub_18EFB6958(v64, v65, v66);

    (*v183)(v61, v185);
    v67 = v175;
    sub_18F09376C();
    v68 = v174;
    v69 = v194;
    (*v182)(v174, v67, v194);
    v70 = (*v181)(v68, v69);
    v193 = v59;
    if (v70 == v180)
    {
      v71 = 0;
    }

    else if (v70 == v169)
    {
      v71 = 1;
    }

    else
    {
      if (v70 != v160)
      {
        goto LABEL_48;
      }

      v71 = 2;
    }

    (*v179)(v67, v194);
    BYTE1(v198[8]) = v71;
    v102 = v198[0];
    v103 = v198[1];
    OUTLINED_FUNCTION_3_13();
    v195 = v198[5];
    v196 = v198[6];

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v102, v103);
    OUTLINED_FUNCTION_2_15();
    v104 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v104);

    v106 = v195;
    v105 = v196;
    OUTLINED_FUNCTION_18_2(v200);
    sub_18EFB6BF8(v200, v197);
    v107 = v192;
    swift_isUniquelyReferenced_nonNull_native();
    v195 = v107;
    v108 = sub_18EFAF54C();
    if (__OFADD__(*(v107 + 16), (v109 & 1) == 0))
    {
      goto LABEL_44;
    }

    v110 = v108;
    v111 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
    if (sub_18F09417C())
    {
      v112 = sub_18EFAF54C();
      if ((v111 & 1) != (v113 & 1))
      {
        goto LABEL_45;
      }

      v110 = v112;
    }

    v192 = v195;
    if (v111)
    {
      sub_18F02359C(v200, *(v195 + 56) + 80 * v110);
    }

    else
    {
      sub_18F0418B4(v110, v106, v105, v200);
    }

    v61 = v186;
    v63 = v178;
    v59 = v193;
    (*v171)(v191, v62);
    OUTLINED_FUNCTION_18_2(v197);
    sub_18EFB6C54(v197);
    v60 = v187;
LABEL_39:
    ++v58;
    __swift_destroy_boxed_opaque_existential_1Tm(v199);
    v59 += 40;
    if (v190 == v58)
    {

      v145 = v177;
      v146 = v168;
      v147 = v192;
      goto LABEL_42;
    }
  }

  v72 = v173;
  if (swift_dynamicCast())
  {
    v193 = v59;
    (*v162)(v176, v72, v60);
    sub_18F09378C();
    v73 = v184;
    sub_18F0937DC();
    v74 = OUTLINED_FUNCTION_7_6();
    sub_18EFB5CB4(v74, v75, v73, v76);

    v77 = v183;
    v78 = *v183;
    v79 = v185;
    (*v183)(v73, v185);
    v80 = v198[0];
    v81 = v198[1];

    sub_18F0937DC();
    sub_18EFB3E08(v197);
    v78(v73, v79);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_15_3();

    OUTLINED_FUNCTION_6_10();
    sub_18F09376C();
    v82 = *v182;
    v83 = OUTLINED_FUNCTION_12_3();
    v84(v83);
    v85 = OUTLINED_FUNCTION_11_4();
    v87 = v86(v85);
    if (v87 == v180)
    {
      v88 = 0;
      v62 = v170;
    }

    else
    {
      v62 = v170;
      if (v87 == v169)
      {
        v88 = 1;
      }

      else
      {
        if (v87 != v160)
        {
          goto LABEL_48;
        }

        v88 = 2;
      }
    }

    v137 = OUTLINED_FUNCTION_10_6();
    v138(v137);
    BYTE1(v198[8]) = v88;
    OUTLINED_FUNCTION_3_13();
    v195 = v78;
    v196 = v77;

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v80, v81);
    OUTLINED_FUNCTION_2_15();
    v139 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v139);

    OUTLINED_FUNCTION_18_2(v201);
    sub_18EFB62B4(v201, v197);
    v140 = v177;
    swift_isUniquelyReferenced_nonNull_native();
    v197[0] = v140;
    sub_18F041388();

    v177 = v197[0];
    v60 = v187;
    (*v161)(v176, v187);
    OUTLINED_FUNCTION_18_2(v197);
    sub_18EFB677C(v197);
LABEL_38:
    v61 = v186;
    v63 = v178;
    v59 = v193;
    goto LABEL_39;
  }

  v89 = v163;
  v90 = v167;
  if (swift_dynamicCast())
  {
    v193 = v59;
    (*v154)(v166, v89, v90);
    sub_18F09378C();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_7_6();
    sub_18EFB4BF0();

    v91 = *v183;
    v92 = v185;
    (*v183)(v61, v185);
    v93 = v198[0];
    v94 = v198[1];

    sub_18F0937DC();
    sub_18EFB3E08(v197);
    v91(v61, v92);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_15_3();

    OUTLINED_FUNCTION_6_10();
    sub_18F09376C();
    v95 = *v182;
    v96 = OUTLINED_FUNCTION_12_3();
    v97(v96);
    v98 = OUTLINED_FUNCTION_11_4();
    v100 = v99(v98);
    if (v100 == v180)
    {
      v101 = 0;
      v62 = v170;
    }

    else
    {
      v62 = v170;
      if (v100 == v169)
      {
        v101 = 1;
      }

      else
      {
        if (v100 != v160)
        {
          goto LABEL_48;
        }

        v101 = 2;
      }
    }

    v141 = OUTLINED_FUNCTION_10_6();
    v142(v141);
    BYTE1(v198[10]) = v101;
    OUTLINED_FUNCTION_3_13();
    v195 = v91;
    v196 = v61;

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v93, v94);
    OUTLINED_FUNCTION_2_15();
    v143 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v143);

    memcpy(__dst, v198, 0x60uLL);
    sub_18EFB5BE0(__dst, v197);
    v144 = v168;
    swift_isUniquelyReferenced_nonNull_native();
    v197[0] = v144;
    sub_18EFB5598();

    v168 = v197[0];
    (*v153)(v166, v167);
    memcpy(v197, v198, sizeof(v197));
    sub_18EFB5C3C(v197);
    v60 = v187;
    goto LABEL_38;
  }

  v114 = v155;
  v115 = v159;
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  (*v151)(v158, v114, v115);
  sub_18F09378C();
  v116 = sub_18F09379C();
  v117 = sub_18F0419AC(v116);
  v118 = v117[2];
  v119 = v168;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v198[0] = v119;
  v121 = v118;
  v122 = v152;
  sub_18EFB7024(v121, sub_18EFB76CC, 0, isUniquelyReferenced_nonNull_native, v198);
  if (!v122)
  {

    v168 = v198[0];
    v123 = v117[3];
    v124 = v177;

    swift_isUniquelyReferenced_nonNull_native();
    v198[0] = v124;
    v125 = OUTLINED_FUNCTION_13_5();
    sub_18EFB7744(v125, v126, v127, v128, v129);

    v177 = v198[0];
    v130 = v117[4];
    v131 = v192;

    swift_isUniquelyReferenced_nonNull_native();
    v198[0] = v131;
    v132 = OUTLINED_FUNCTION_13_5();
    sub_18EFB7350(v132, v133, v134, v135, v136);
    v152 = 0;

    (*v150)(v158, v159);

    v192 = v198[0];
    v62 = v170;
    goto LABEL_39;
  }

  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_8_5();
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

char *sub_18F0428A4(uint64_t a1, uint64_t *a2, char **a3)
{
  v5 = sub_18F093A2C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_18F093C7C();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      return sub_18F093A1C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

id sub_18F042998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = a7;
  v30 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v29 - v14;
  v33 = a4;
  v34 = a5;
  v31 = 46;
  v32 = 0xE100000000000000;
  sub_18EFB30C8();
  v16 = sub_18F093F6C();
  sub_18EFB311C(v16);
  v18 = v17;

  if (v18)
  {
  }

  type metadata accessor for SchemaLocalization();
  sub_18F042E10(a1);

  sub_18F043964(a1);
  v19 = sub_18F093B5C();

  if (a8)
  {
    v20 = sub_18F093B5C();
  }

  else
  {
    v20 = 0;
  }

  v21 = v30;
  sub_18F042CCC(v30);
  v22 = sub_18F093B5C();

  static SchemaLocalization.bundleURL.getter(v15);
  v23 = sub_18F0932BC();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(v15, 1, v23) != 1)
  {
    v24 = sub_18F09324C();
    (*(*(v23 - 8) + 8))(v15, v23);
  }

  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v19 defaultValue:v20 table:v22 bundleURL:v24];

  v26 = sub_18F0937FC();
  OUTLINED_FUNCTION_10_7(v26);
  (*(v27 + 8))(v21);
  return v25;
}

uint64_t static SchemaLocalization.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18F0934FC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 bundleURL];

  sub_18F09327C();
  v5 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t sub_18F042CCC(uint64_t a1)
{
  v3 = sub_18F0937FC();
  v4 = OUTLINED_FUNCTION_9_6(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v1);
  v11 = (*(v6 + 88))(v10, v1);
  if (v11 == *MEMORY[0x1E698AC98] || v11 == *MEMORY[0x1E698AC88])
  {
    return 0xD000000000000014;
  }

  (*(v6 + 8))(v10, v1);
  return 0x617A696C61636F4CLL;
}

uint64_t sub_18F042E10(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  switch(*(a1 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v5 = v18 | 1;
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v14 = v13 + 17;
      goto LABEL_9;
    case 3:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v9 = OUTLINED_FUNCTION_4_14();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v7 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v7);
      OUTLINED_FUNCTION_7_7();
      v5 = 0x706972637365645FLL;
      v6 = 0xEC0000006E6F6974;
      break;
    case 5:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v19 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v19);
      OUTLINED_FUNCTION_7_7();
      v17 = "_BOOLean_false_value";
      v5 = 0xD000000000000013;
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v20 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v20);
      OUTLINED_FUNCTION_7_7();
      v17 = "_intent_parameter_";
      v5 = 0xD000000000000014;
      goto LABEL_15;
    case 7:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v14 = v15 + 15;
LABEL_9:
      MEMORY[0x193AD8780](v14, v12 | 0x8000000000000000);
      v16 = sub_18F0943FC();
      MEMORY[0x193AD8780](v16);

      return v24;
    case 8:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v5 = v22 + 17;
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v9 = v8 - 1;
      v11 = v10 | 0x8000000000000000;
LABEL_7:
      MEMORY[0x193AD8780](v9, v11);
      OUTLINED_FUNCTION_7_7();
      v5 = 0x656C7469745FLL;
      v6 = 0xE600000000000000;
      break;
    case 0xA:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v5 = v21 + 15;
LABEL_15:
      v6 = v17 | 0x8000000000000000;
      break;
    default:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v5 = 0x5F746E65746E695FLL;
      v6 = 0xED0000656C746974;
      break;
  }

  MEMORY[0x193AD8780](v5, v6);
  return v24;
}

uint64_t static SchemaLocalization.tableForLibraryKey(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_18F0937FC();
  v6 = OUTLINED_FUNCTION_9_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v55[0] = 45;
  v55[1] = 0xE100000000000000;
  v54 = v55;

  v27 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18EFA5C94, v53, a1, a2);
  v28 = v27;
  if (v27[2] != 3)
  {

    return 0x617A696C61636F4CLL;
  }

  v49 = v13;
  v50 = v15;
  v51 = v8;
  v52 = v2;
  v29 = v27[8];
  v30 = v27[9];
  v32 = v27[10];
  v31 = v27[11];

  MEMORY[0x193AD8710](v29, v30, v32, v31);

  if (v28[2])
  {
    v34 = v28[4];
    v35 = v28[5];
    v36 = v28[6];
    v37 = v28[7];

    MEMORY[0x193AD8710](v34, v35, v36, v37);

    v38 = sub_18F0934FC();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_18F0934EC();
    v41 = sub_18F0937BC();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v41);
    sub_18F09347C();

    sub_18F0438EC(v19, &qword_1EACB9690, &qword_18F0ABB70);
    sub_18F04387C(v26, v24);
    v42 = sub_18F09346C();
    if (__swift_getEnumTagSinglePayload(v24, 1, v42) == 1)
    {
      sub_18F0438EC(v24, &qword_1EACB96A8, &qword_18F0ABF70);
      v43 = v50;
      v44 = v51;
      v45 = v52;
      (*(v51 + 104))(v50, *MEMORY[0x1E698AC88], v52);
    }

    else
    {
      v47 = v49;
      sub_18F0933DC();
      (*(*(v42 - 8) + 8))(v24, v42);
      v43 = v50;
      v44 = v51;
      v48 = v47;
      v45 = v52;
      (*(v51 + 32))(v50, v48, v52);
    }

    v46 = sub_18F042CCC(v43);

    (*(v44 + 8))(v43, v45);
    sub_18F0438EC(v26, &qword_1EACB96A8, &qword_18F0ABF70);
    return v46;
  }

  __break(1u);
  return result;
}

id SchemaLocalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SchemaLocalization.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SchemaLocalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18F04387C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F0438EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18F0439A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 0xA)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0439E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

LNContentType __swiftcall LNContentType.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_18F093B5C();

  v3 = [v1 initWithContentType_];

  v5 = v3;
  result._contentType = v4;
  result.super.isa = v5;
  return result;
}

unint64_t sub_18F043AE8()
{
  result = qword_1ED5FE1A8;
  if (!qword_1ED5FE1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FE1A8);
  }

  return result;
}

uint64_t sub_18F043B60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F043AE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F043BA8(void *a1)
{
  v1 = sub_18F01289C(a1);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  result = sub_18EFA0A74(v1);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AD8BA0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 name];
    v2 = sub_18F093B8C();

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_18F043C6C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18F093A2C();
  v11 = OUTLINED_FUNCTION_7(v10);
  v58 = v12;
  v59 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  v61 = v16 - v15;
  v17 = sub_18F0932BC();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  v55 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v53 - v28;
  v56 = a1;
  v57 = a3;
  v30 = sub_18F0468C0(a1, a2, 1852797802, 0xE400000000000000, a4, a5, a3);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v30;
  sub_18F09327C();

  v53 = v20;
  (*(v20 + 32))(v29, v27, v17);
  v32 = v62;
  sub_18F0932CC();
  v54 = v17;
  if (v32)
  {
    v63 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
    sub_18F093BEC();
    result = LNLogSubsystem;
    v36 = v61;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      sub_18F093A1C();

      v37 = v57;
      v38 = sub_18F093A0C();
      v39 = sub_18F093ECC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v62 = v29;
        *v40 = 136315394;
        *(v40 + 4) = sub_18F0462AC(v56, a2, &v63);
        *(v40 + 12) = 2080;
        v41 = [v37 bundleURL];
        v42 = v55;
        sub_18F09327C();

        v43 = sub_18F09321C();
        v45 = v44;
        v46 = v53;
        v47 = v42;
        v48 = v54;
        (*(v53 + 8))(v47, v54);
        v49 = sub_18F0462AC(v43, v45, &v63);

        *(v40 + 14) = v49;
        _os_log_impl(&dword_18EF7E000, v38, v39, "Error trying to read %s.json in bundle - %s", v40, 0x16u);
        swift_arrayDestroy();
        v29 = v62;
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();

        (*(v58 + 8))(v61, v59);
      }

      else
      {

        (*(v58 + 8))(v36, v59);
        v46 = v53;
        v48 = v54;
      }

      swift_willThrow();
      return (*(v46 + 8))(v29, v48);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = sub_18F09302C();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_18F09301C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9810, &qword_18F0AC3F0);
    sub_18F046968();
    sub_18F09300C();
    (*(v53 + 8))(v29, v54);

    v50 = OUTLINED_FUNCTION_264();
    sub_18EF9A4AC(v50, v51);
    return v63;
  }

  return result;
}

char *sub_18F044138(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v43 = a4;
  v45 = a3;
  v46 = a2;
  v5 = sub_18F093A2C();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v38 - v16;
  sub_18F09416C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9800, &qword_18F0AC3E0);
  v18 = sub_18F093A5C();
  v19 = LNAssistantSuggestionPhraseMetadata.asJson(userInfo:)(v18);

  if (!v21)
  {
    v38[0] = v19._countAndFlagsBits;
    v38[1] = 0;
    v39 = v13;
    v40 = v8;
    v41 = v5;
    v42 = a1;
    v22 = [a1 templateKey];
    v23 = sub_18F093B8C();
    v25 = v24;

    v26 = [v43 bundleURL];
    sub_18F09327C();

    v27 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v27);
    objc_allocWithZone(LNStaticDeferredLocalizedString);
    v28 = v45;

    v29 = sub_18EFABD08(v23, v25, v46, v28, v17);
    v47 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
    sub_18F093BEC();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      v30 = v39;
      sub_18F093A1C();

      v31 = v29;
      v32 = sub_18F093A0C();
      v33 = sub_18F093EBC();

      if (os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_5_12();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v34 = 136315650;
        *(v34 + 4) = sub_18F0462AC(v46, v28, &v47);
        *(v34 + 12) = 2080;
        v36 = sub_18F0462AC(v38[0], v19._object, &v47);

        *(v34 + 14) = v36;
        *(v34 + 22) = 2112;
        *(v34 + 24) = v31;
        *v35 = v31;
        v37 = v31;
        _os_log_impl(&dword_18EF7E000, v32, v33, "creating assistantSuggestionPhrase with table - %s metadata - %s and phrase - %@", v34, 0x20u);
        sub_18F04681C(v35);
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
      }

      else
      {
      }

      (*(v40 + 8))(v30, v41);
      sub_18EF825F4(0, &qword_1EACB7750, off_1E72AFF30);
      return sub_18F04455C(v31, v42);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_18F04455C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhrase:a1 phraseMetadata:a2];

  return v4;
}

void static AssistantSuggestionPhraseProvider.getPhrasesForAssistantDomains(assistantDomainsAndActionsToLoad:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v135 = v2;
  v4 = v3;
  v120 = sub_18F093A2C();
  v5 = OUTLINED_FUNCTION_7(v120);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v104 - v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = *(v4 + 64);
  v133 = v4 + 64;
  v14 = 1 << *(v4 + 32);
  v15 = -1;
  v147 = MEMORY[0x1E69E7CC0];
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v132 = (v14 + 63) >> 6;
  v129 = "Unknown ValueType: ";
  v118 = "Metadata/AssistantDomains";
  v119 = v10 + 8;
  v131 = v4;

  v17 = 0;
  v18 = 0;
  *&v19 = 138412290;
  v112 = v19;
  *&v19 = 136315138;
  v110 = v19;
  v121 = v12;
  v128 = v1;
  while (1)
  {
    v20 = v17;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v16)) | (v17 << 6);
    v22 = (*(v131 + 48) + 16 * v21);
    v23 = v22[1];
    v24 = *(*(v131 + 56) + 8 * v21);
    v16 &= v16 - 1;
    v123 = *v22;
    v141 = v123;
    v142 = v23;
    v25 = sub_18EFB30C8();
    v137 = v23;

    v139 = v24;

    v122 = v25;
    v26 = sub_18F093F7C();
    v28 = sub_18F043C6C(v26, v27, v135, 0xD000000000000029, v129 | 0x8000000000000000);
    if (v18)
    {

LABEL_58:
      v91 = v18;
      v141 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
      OUTLINED_FUNCTION_10_8();
      sub_18F093BEC();
      if (!LNLogSubsystem)
      {
        goto LABEL_70;
      }

      sub_18F093C7C();
      v92 = v111;
      sub_18F093A1C();
      v93 = v137;

      v94 = sub_18F093A0C();
      v95 = sub_18F093ECC();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_4_15();
        OUTLINED_FUNCTION_5_12();
        v97 = swift_slowAlloc();
        v146 = v97;
        *v96 = v110;
        v141 = v123;
        v142 = v93;
        v98 = sub_18F093F7C();
        v140 = v91;
        v100 = v99;

        v101 = sub_18F0462AC(v98, v100, &v146);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_18EF7E000, v94, v95, "Couldn't load metadata file - %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();

        OUTLINED_FUNCTION_3_16();
        v103 = v111;
      }

      else
      {

        OUTLINED_FUNCTION_3_16();
        v103 = v92;
      }

      v102(v103, v120);
      v1 = v128;
      v18 = 0;
    }

    else
    {
      v29 = v28;

      v140 = *(v29 + 2);
      if (v140)
      {
        v30 = v139;
        if (v139 >> 62)
        {
          v31 = sub_18F0941BC();
          if (v31)
          {
LABEL_15:
            v32 = 0;
            v33 = v30 & 0xC000000000000001;
            v105 = v30 & 0xFFFFFFFFFFFFFF8;
            v104 = v30 + 32;
            v109 = v29 + 64;
            v134 = v29;
            v107 = v31;
            v106 = v30 & 0xC000000000000001;
            do
            {
              if (v33)
              {
                v34 = v30;
                v35 = v32;
                v36 = MEMORY[0x193AD8BA0](v32, v34);
              }

              else
              {
                if (v32 >= *(v105 + 16))
                {
                  goto LABEL_68;
                }

                v35 = v32;
                v36 = *(v104 + 8 * v32);
              }

              v116 = v36;
              v136 = v18;
              v108 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_67;
              }

              v38 = sub_18F043BA8(v116);
              v39 = 0;
              v117 = MEMORY[0x1E69E7CC0];
              v138 = v37;
LABEL_22:
              v40 = &v109[40 * v39];
              while (v140 != v39)
              {
                if (v39 >= *(v29 + 2))
                {
                  goto LABEL_65;
                }

                if (v37)
                {
                  v42 = *(v40 - 4);
                  v41 = *(v40 - 3);
                  v43 = *(v40 - 2);
                  v44 = *(v40 - 1);
                  v45 = *v40;
                  if (v42 == v38 && v37 == v41)
                  {
                    v42 = v38;
LABEL_33:

                    v50 = v117;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v141 = v50;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_18F00F7A0(0, *(v50 + 16) + 1, 1);
                      v50 = v141;
                    }

                    v53 = *(v50 + 16);
                    v52 = *(v50 + 24);
                    v54 = v53 + 1;
                    v37 = v138;
                    if (v53 >= v52 >> 1)
                    {
                      v56 = OUTLINED_FUNCTION_114(v52);
                      v127 = v57;
                      v126 = v58;
                      sub_18F00F7A0(v56, v58, 1);
                      v54 = v126;
                      v53 = v127;
                      v37 = v138;
                      v50 = v141;
                    }

                    ++v39;
                    *(v50 + 16) = v54;
                    v117 = v50;
                    v55 = (v50 + 40 * v53);
                    v55[4] = v42;
                    v55[5] = v41;
                    v55[6] = v43;
                    v55[7] = v44;
                    v55[8] = v45;
                    v29 = v134;
                    goto LABEL_22;
                  }

                  v47 = *(v40 - 4);
                  v48 = *(v40 - 3);
                  v49 = sub_18F09444C();
                  v37 = v138;
                  if (v49)
                  {
                    goto LABEL_33;
                  }
                }

                v40 += 40;
                ++v39;
                v29 = v134;
              }

              v59 = v117;
              v114 = *(v117 + 16);
              if (v114)
              {
                v60 = 0;
                v113 = v117 + 32;
                v1 = v128;
                v18 = v136;
                while (v60 < *(v59 + 16))
                {
                  v61 = (v113 + 40 * v60);
                  v62 = v61[2];
                  v63 = v61[3];
                  v64 = v61[4];
                  v125 = v61[1];

                  v65 = [v116 identifier];
                  v127 = sub_18F093B8C();
                  v126 = v66;

                  v67 = *(v64 + 16);
                  v124 = v64;
                  if (v67)
                  {
                    v115 = v62;
                    v136 = v18;
                    v146 = MEMORY[0x1E69E7CC0];

                    sub_18F09411C();
                    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
                    v68 = (v64 + 64);
                    do
                    {
                      v69 = *(v68 - 4);
                      v70 = *(v68 - 3);
                      v72 = *(v68 - 2);
                      v71 = *(v68 - 1);
                      v73 = *v68;
                      v68 += 40;
                      v141 = v69;
                      v142 = v70;
                      v143 = v72;
                      v144 = v71;
                      v145 = v73;

                      LNAssistantSuggestionPhraseParameterMetadata.init(from:)(&v141);
                      sub_18F0940FC();
                      v74 = v146[2];
                      sub_18F09412C();
                      sub_18F09413C();
                      sub_18F09410C();
                      --v67;
                    }

                    while (v67);
                    v1 = v128;
                    v18 = v136;
                  }

                  else
                  {
                  }

                  v75 = objc_allocWithZone(LNAssistantSuggestionPhraseMetadata);
                  v76 = sub_18F0461E8();
                  v77 = sub_18F044138(v76, 0xD00000000000001CLL, v118 | 0x8000000000000000, v135);
                  if (v18)
                  {

                    OUTLINED_FUNCTION_9_7();

                    goto LABEL_58;
                  }

                  v78 = v77;
                  v136 = 0;
                  v141 = v1;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
                  OUTLINED_FUNCTION_10_8();
                  sub_18F093BEC();
                  if (!LNLogSubsystem)
                  {
                    goto LABEL_69;
                  }

                  sub_18F093C7C();
                  sub_18F093A1C();
                  v79 = v78;
                  v80 = sub_18F093A0C();
                  v81 = sub_18F093EBC();

                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = OUTLINED_FUNCTION_4_15();
                    v83 = swift_slowAlloc();
                    *v82 = v112;
                    v84 = [v79 phraseMetadata];
                    *(v82 + 4) = v84;
                    *v83 = v84;
                    _os_log_impl(&dword_18EF7E000, v80, v81, "found a phrase for assistant domains - phrase - %@", v82, 0xCu);
                    sub_18F04681C(v83);
                    OUTLINED_FUNCTION_1_12();
                    MEMORY[0x193AD9AF0]();
                    OUTLINED_FUNCTION_1_12();
                    MEMORY[0x193AD9AF0]();
                  }

                  OUTLINED_FUNCTION_3_16();
                  v86 = v85(v130, v120);
                  MEMORY[0x193AD88C0](v86);
                  v87 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v87 >> 1)
                  {
                    OUTLINED_FUNCTION_114(v87);
                    sub_18F093DFC();
                  }

                  ++v60;
                  sub_18F093E3C();
                  v121 = v147;

                  v1 = v128;
                  v18 = v136;
                  v30 = v139;
                  v59 = v117;
                  if (v60 == v114)
                  {
                    OUTLINED_FUNCTION_9_7();

                    v29 = v134;
                    goto LABEL_55;
                  }
                }

                goto LABEL_66;
              }

              OUTLINED_FUNCTION_9_7();

              v1 = v128;
              v18 = v136;
              v30 = v139;
LABEL_55:

              v32 = v108;
              v33 = v106;
            }

            while (v108 != v107);
          }
        }

        else
        {
          v31 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= v132)
    {

      OUTLINED_FUNCTION_259();
      return;
    }

    v16 = *(v133 + 8 * v17);
    ++v20;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_18F0450E8(uint64_t a1, unint64_t a2)
{

  MEMORY[0x193AD8780](46, 0xE100000000000000);
  v4 = sub_18F093CEC();

  if (v4)
  {
    v5 = sub_18F093C2C();

    v6 = sub_18EFBBBFC(v5, a1, a2);
    a1 = MEMORY[0x193AD8710](v6);
  }

  return a1;
}

void sub_18F0451B0()
{
  OUTLINED_FUNCTION_260();
  v2 = v1;
  v3 = sub_18F093A2C();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  v11 = v10 - v9;
  v12 = [v2 actionIdentifier];
  v13 = sub_18F093B8C();
  v15 = v14;

  v16 = sub_18F0450E8(v13, v15);
  v18 = v17;

  v32 = v16;
  v33 = v18;
  sub_18EFB30C8();
  if ((sub_18F093F9C() & 1) == 0)
  {
    v29 = [v2 templateKey];
    sub_18F093B8C();

    v30 = [v2 parametersMetadata];
    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
    sub_18F093DCC();

    v31 = objc_allocWithZone(LNAssistantSuggestionPhraseMetadata);
    OUTLINED_FUNCTION_264();
    sub_18F0461E8();
LABEL_7:
    OUTLINED_FUNCTION_259();
    return;
  }

  v32 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  sub_18F093BEC();
  if (LNLogSubsystem)
  {

    sub_18F093C7C();
    sub_18F093A1C();
    v19 = v2;
    v20 = sub_18F093A0C();
    v21 = sub_18F093EBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_12();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      v24 = [v19 actionIdentifier];
      v25 = sub_18F093B8C();
      v27 = v26;

      v28 = sub_18F0462AC(v25, v27, &v32);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_18EF7E000, v20, v21, "skipping suggestion phrase metadata with malformed actionIdentifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    (*(v6 + 8))(v11, v3);
    goto LABEL_7;
  }

  __break(1u);
}

void static AssistantSuggestionPhraseProvider.getPhrasesForCustomIntents(actions:bundleIdentifier:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v113 = v8;
  v124 = sub_18F093A2C();
  v9 = OUTLINED_FUNCTION_7(v124);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v114 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v105 - v19;
  v21 = MEMORY[0x1E69E7CC0];
  v135 = MEMORY[0x1E69E7CC0];
  v128 = v7;
  v22 = v7;
  v23 = v1;
  v24 = sub_18F043C6C(v22, v5, v3, 0xD00000000000002DLL, 0x800000018F0B0CF0);
  v123 = 0;
  v25 = v24;
  v112 = v20;
  v120 = v3;
  v131 = v1;
  v125 = v5;
  v111 = v11;
  v26 = 0;
  v119 = "Metadata/AssistantDomains";
  v134 = v21;
  v27 = *(v24 + 2);
  v28 = v24 + 64;
  v129 = v24 + 64;
  v130 = v21;
  v29 = v18;
  v132 = v18;
LABEL_2:
  v30 = &v28[40 * v26];
  while (v27 != v26)
  {
    if (v26 >= *(v25 + 2))
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    ++v26;
    v5 = (v30 + 5);
    v32 = *(v30 - 1);
    v31 = *v30;
    v34 = *(v30 - 3);
    v33 = *(v30 - 2);
    v35 = *(v30 - 4);
    sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
    v133[0] = v35;
    v133[1] = v34;
    v133[2] = v33;
    v133[3] = v32;
    v133[4] = v31;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v36 = LNAssistantSuggestionPhraseMetadata.init(from:)(v133);
    v23 = v131;
    sub_18F0451B0();
    v38 = v37;

    v29 = v132;
    v30 = v5;
    if (v38)
    {
      v23 = &v134;
      MEMORY[0x193AD88C0]();
      v39 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
      {
        OUTLINED_FUNCTION_114(v39);
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v130 = v134;
      v28 = v129;
      goto LABEL_2;
    }
  }

  v40 = v130;
  sub_18EFA0A74(v130);
  v41 = v111;
  OUTLINED_FUNCTION_8_7();
  if (!v42)
  {
    goto LABEL_56;
  }

  v43 = v42;
  v44 = sub_18EFA0A74(v23);
  v45 = 0;
  v110 = v23 & 0xC000000000000001;
  v109 = v23 + 32;
  v122 = (v41 + 8);
  v126 = v40 & 0xFFFFFFFFFFFFFF8;
  v127 = v40 & 0xC000000000000001;
  *&v46 = 136315394;
  v107 = v46;
  *&v46 = 138412290;
  v115 = v46;
  v118 = MEMORY[0x1E69E7CC0];
  v47 = v131;
  v106 = v44;
LABEL_11:
  v48 = v125;
  if (v45 == v44)
  {
LABEL_56:

    goto LABEL_55;
  }

  v49 = v110;
  sub_18EFBB7BC(v45, v110 == 0, v23);
  if (v49)
  {
    v51 = MEMORY[0x193AD8BA0](v45, v23);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    v51 = *(v50 + 8 * v45);
  }

  v52 = v51;
  v53 = __OFADD__(v45, 1);
  v54 = v45 + 1;
  if (v53)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v108 = v54;
  v133[0] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  OUTLINED_FUNCTION_10_8();
  v117 = v55;
  sub_18F093BEC();
  if (!LNLogSubsystem)
  {
LABEL_65:
    __break(1u);
    return;
  }

  sub_18F093C7C();
  sub_18F093A1C();

  v56 = v52;
  v57 = sub_18F093A0C();
  v23 = sub_18F093EBC();

  v58 = os_log_type_enabled(v57, v23);
  v129 = v56;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v133[0] = swift_slowAlloc();
    *v59 = v107;
    *(v59 + 4) = sub_18F0462AC(v128, v48, v133);
    *(v59 + 12) = 2080;
    v60 = [v56 identifier];
    v61 = sub_18F093B8C();
    v63 = v62;

    v64 = v61;
    v29 = v132;
    v65 = sub_18F0462AC(v64, v63, v133);

    *(v59 + 14) = v65;
    _os_log_impl(&dword_18EF7E000, v57, v23, "%s %s", v59, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();

    v66 = *v122;
    v67 = v112;
  }

  else
  {

    v66 = *v122;
    v67 = v5;
  }

  v116 = v66;
  v66(v67, v124);
  v68 = v123;
  v69 = 0;
  v133[0] = MEMORY[0x1E69E7CC0];
  while (v43 != v69)
  {
    if (v127)
    {
      v71 = MEMORY[0x193AD8BA0](v69, v130);
      v70 = v129;
    }

    else
    {
      v70 = v129;
      if (v69 >= *(v126 + 16))
      {
        goto LABEL_58;
      }

      v71 = *(v130 + 8 * v69 + 32);
    }

    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v72 = [v71 actionIdentifier];
    v73 = sub_18F093B8C();
    v23 = v74;

    v75 = [v70 identifier];
    v76 = sub_18F093B8C();
    v78 = v77;

    if (v73 == v76 && v23 == v78)
    {

      v29 = v132;
    }

    else
    {
      v80 = sub_18F09444C();

      v29 = v132;
      if ((v80 & 1) == 0)
      {

        goto LABEL_33;
      }
    }

    v23 = v133;
    sub_18F0940FC();
    v81 = *(v133[0] + 16);
    sub_18F09412C();
    sub_18F09413C();
    sub_18F09410C();
LABEL_33:
    ++v69;
  }

  v82 = v133[0];
  v123 = sub_18EFA0A74(v133[0]);
  v5 = 0;
  v121 = v82 & 0xC000000000000001;
  while (1)
  {
    if (v123 == v5)
    {
      v123 = v68;

      OUTLINED_FUNCTION_8_7();
      v44 = v106;
      v45 = v108;
      goto LABEL_11;
    }

    if (v121)
    {
      v83 = MEMORY[0x193AD8BA0](v5, v82);
    }

    else
    {
      if (v5 >= *(v82 + 16))
      {
        goto LABEL_61;
      }

      v83 = *(v82 + 8 * v5 + 32);
    }

    v84 = v83;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_60;
    }

    v85 = sub_18F044138(v83, 0xD00000000000001CLL, v119 | 0x8000000000000000, v120);
    if (v68)
    {
      break;
    }

    v86 = v85;
    v87 = v43;
    v133[0] = v47;
    sub_18F093BEC();
    if (!LNLogSubsystem)
    {
      goto LABEL_63;
    }

    sub_18F093C7C();
    sub_18F093A1C();
    v88 = v86;
    v89 = sub_18F093A0C();
    v90 = sub_18F093EBC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_4_15();
      v92 = swift_slowAlloc();
      *v91 = v115;
      v93 = [v88 phraseMetadata];
      *(v91 + 4) = v93;
      *v92 = v93;
      _os_log_impl(&dword_18EF7E000, v89, v90, "found a phrase for custom intents - phrase - %@", v91, 0xCu);
      sub_18F04681C(v92);
      v47 = v131;
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
      v29 = v132;
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    v94 = v116(v29, v124);
    v23 = &v135;
    MEMORY[0x193AD88C0](v94);
    v95 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v95 >> 1)
    {
      OUTLINED_FUNCTION_114(v95);
      sub_18F093DFC();
    }

    sub_18F093E3C();
    v118 = v135;

    ++v5;
    v43 = v87;
  }

  v123 = v68;

  v96 = v111;
  v97 = v114;
  v98 = v125;
  v133[0] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  OUTLINED_FUNCTION_10_8();
  sub_18F093BEC();
  if (!LNLogSubsystem)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_18F093C7C();
  sub_18F093A1C();

  v99 = sub_18F093A0C();
  v100 = sub_18F093ECC();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_12();
    v102 = swift_slowAlloc();
    v103 = v98;
    v104 = v102;
    v133[0] = v102;
    *v101 = 136315138;
    *(v101 + 4) = sub_18F0462AC(v128, v103, v133);
    _os_log_impl(&dword_18EF7E000, v99, v100, "Couldn't load metadata file - %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
  }

  (*(v96 + 8))(v97, v124);
LABEL_55:
  OUTLINED_FUNCTION_259();
}

id static AssistantSuggestionPhraseProvider.getAppIntentSchemasBundle()()
{
  sub_18F0934FC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

void static AssistantSuggestionPhraseProvider.getPhrases(actions:assistantDomainsAndActionsToLoad:bundleIdentifier:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v2 = sub_18F093A2C();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22();
  v10 = v9 - v8;
  if (v1)
  {
    v11 = v1;
    static AssistantSuggestionPhraseProvider.getPhrasesForAssistantDomains(assistantDomainsAndActionsToLoad:phraseResourceBundle:)();
    sub_18F00D89C();
    OUTLINED_FUNCTION_264();
    static AssistantSuggestionPhraseProvider.getPhrasesForCustomIntents(actions:bundleIdentifier:phraseResourceBundle:)();
    sub_18F00D89C();

LABEL_7:
    OUTLINED_FUNCTION_259();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  sub_18F093BEC();
  if (LNLogSubsystem)
  {
    sub_18F093C7C();
    sub_18F093A1C();
    v12 = sub_18F093A0C();
    v13 = sub_18F093ECC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_18EF7E000, v12, v13, "nil phraseResourceBundle passed to getPhrases", v14, 2u);
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    (*(v5 + 8))(v10, v2);
    goto LABEL_7;
  }

  __break(1u);
}

id sub_18F0461E8()
{
  v1 = sub_18F093B5C();

  v2 = sub_18F093B5C();

  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  v3 = sub_18F093DBC();

  v4 = [v0 initWithActionIdentifier:v1 templateKey:v2 parametersMetadata:v3];

  return v4;
}

uint64_t sub_18F0462AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18F046370(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_18EFB6E2C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_18F046370(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18F046470(a5, a6);
    *a1 = v9;
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
    result = sub_18F0940EC();
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

uint64_t sub_18F046470(uint64_t a1, unint64_t a2)
{
  v4 = sub_18F0464BC(a1, a2);
  sub_18F0465D4(&unk_1F02E26A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_18F0464BC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_18F093C8C())
  {
    result = sub_18F0466B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18F09404C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_18F0940EC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18F0465D4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_18F046728(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18F0466B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9808, &qword_18F0AC3E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_18F046728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9808, &qword_18F0AC3E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_18F04681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F8, &qword_18F0AC398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F0468C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_18F093B5C();
  v9 = sub_18F093B5C();

  v10 = sub_18F093B5C();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

unint64_t sub_18F046968()
{
  result = qword_1EACB9818;
  if (!qword_1EACB9818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9810, &qword_18F0AC3F0);
    sub_18F013E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9818);
  }

  return result;
}

uint64_t sub_18F0469EC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18F093B5C();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_18F09318C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_9_8();
}

unint64_t sub_18F046B20()
{
  v1 = *v0;
  sub_18F046AD0();
  return 0xD00000000000001CLL;
}

uint64_t static LSBundleRecord.currentBundleMetadata(for:)(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v5)
  {
    v6 = v5;
    sub_18F046EF8();
    if (!v2)
    {
      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      sub_18F0473DC();
    }
  }

  else
  {
    type metadata accessor for DaemonRecord();
    v7 = static DaemonRecord.from(bundleIdentifier:)(a1, a2);
    if (v7)
    {
      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      sub_18F046C6C(v7);
    }
  }

  return OUTLINED_FUNCTION_9_8();
}

id sub_18F046C6C(void *a1)
{
  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_18F093A2C();
  __swift_project_value_buffer(v2, qword_1ED60C1C0);
  v3 = a1;
  v4 = sub_18F093A0C();
  v5 = sub_18F093EDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    v8 = &v3[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];

    v11 = sub_18F0462AC(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_18EF7E000, v4, v5, "Importing the daemon record for %{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x193AD9AF0](v7, -1, -1);
    MEMORY[0x193AD9AF0](v6, -1, -1);
  }

  v12 = DaemonRecord.effectiveBundleIdentifier.getter();
  v13 = OBJC_IVAR___swift_DaemonRecord_metadataURLs;
  swift_beginAccess();
  v14 = *&v3[v13];
  sub_18F0932BC();

  v15 = sub_18F093DBC();

  v16 = [v12 bundleMetadataForURLs_];

  if (!v16)
  {
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    sub_18F093DCC();
    v16 = sub_18F093DBC();
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithArray_];

  return v17;
}

uint64_t sub_18F046EF8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_18F0932BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18EF7FDF8(v0);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    if (qword_1ED5FEEB8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v13 = sub_18F093A2C();
    __swift_project_value_buffer(v13, qword_1ED60C1C0);

    v14 = sub_18F093A0C();
    v15 = sub_18F093EDC();

    v16 = os_log_type_enabled(v14, v15);
    v42 = v4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v41 = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136446210;
      v20 = sub_18F0462AC(v11, v12, &v43);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_18EF7E000, v14, v15, "Processing bundle metadata for %{public}s...", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x193AD9AF0](v19, -1, -1);
      v21 = v18;
      v2 = v41;
      MEMORY[0x193AD9AF0](v21, -1, -1);
    }

    else
    {
    }

    v30 = LSBundleRecord.effectiveBundleIdentifier.getter();
    if (v30)
    {
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
      v32 = *(v5 + 72);
      v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18F09BCC0;
      v35 = [v3 URL];
      sub_18F09327C();

      (*(v5 + 32))(v34 + v33, v8, v42);
      v36 = sub_18F04A0B4();
      v43 = v34;
      sub_18F00D964(v36);
      v37 = sub_18F093DBC();

      v38 = [v31 bundleMetadataForURLs_];

      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      v5 = sub_18F093DCC();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v8 = sub_18EFA0A74(v5);
    v12 = 0;
    v4 = v5 & 0xC000000000000001;
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
    while (v8 != v12)
    {
      if (v4)
      {
        v39 = MEMORY[0x193AD8BA0](v12, v5);
      }

      else
      {
        if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v39 = *(v5 + 8 * v12 + 32);
      }

      v40 = v39;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_18F049174(v3);

      ++v12;
    }
  }

  else
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v22 = sub_18F093A2C();
    __swift_project_value_buffer(v22, qword_1ED60C1C0);
    v23 = v0;
    v24 = sub_18F093A0C();
    v25 = sub_18F093ECC();

    if (os_log_type_enabled(v24, v25))
    {
      v5 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_18EF7E000, v24, v25, "Undefined bundle identifier for %@", v5, 0xCu);
      sub_18EF82E14(v26, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v26, -1, -1);
      MEMORY[0x193AD9AF0](v5, -1, -1);
    }

    sub_18F04C44C();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  return v5;
}

id sub_18F0473DC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
  v1 = sub_18F093DBC();

  v2 = [v0 initWithArray_];

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNBundleMetadata.init(bundleIdentifier:)(LNBundleMetadata *__return_ptr retstr, Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  type metadata accessor for DaemonRecord();
  if (static DaemonRecord.from(bundleIdentifier:)(countAndFlagsBits, object))
  {
    OUTLINED_FUNCTION_284();

    v5 = OUTLINED_FUNCTION_3_17();
    sub_18F046C6C(v5);
  }

  else
  {
    type metadata accessor for FrameworkRecord();
    if (static FrameworkRecord.from(bundleIdentifier:)(countAndFlagsBits, object))
    {
      OUTLINED_FUNCTION_284();

      v6 = OUTLINED_FUNCTION_3_17();
      LNBundleMetadata.init(frameworkRecord:)(v6);
    }

    else
    {
      sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
      static LSBundleRecord.with(bundleIdentifier:allowSystemAppPlaceholder:)(countAndFlagsBits, object, 1);

      if (!v2)
      {
        v7 = OUTLINED_FUNCTION_3_17();
        sub_18F0478F0(v7);
      }
    }
  }
}

uint64_t LNBundleMetadata.init(frameworkRecord:)(void *a1)
{
  if (qword_1ED5FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v2 = sub_18F093A2C();
  __swift_project_value_buffer(v2, qword_1ED60C1C0);
  v3 = a1;
  v4 = sub_18F093A0C();
  v5 = sub_18F093EDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = *&v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier];
    v9 = *&v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8];

    v10 = sub_18F0462AC(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_18EF7E000, v4, v5, "Importing the framework record for %{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_7_8();
  }

  v11 = FrameworkRecord.effectiveBundleIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
  v12 = sub_18F0932BC();
  OUTLINED_FUNCTION_7(v12);
  v14 = v13;
  v16 = *(v15 + 72);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18F09BCC0;
  (*(v14 + 16))(v18 + v17, &v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL], v12);
  v19 = sub_18F093DBC();

  v20 = [v11 bundleMetadataForURLs_];

  if (!v20)
  {
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    sub_18F093DCC();
    v20 = sub_18F093DBC();
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithArray_];

  return OUTLINED_FUNCTION_9_8();
}

uint64_t static LSBundleRecord.with(bundleIdentifier:allowSystemAppPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);

  sub_18F0469EC(a1, a2, 1);
  if (v3)
  {
    if (a3)
    {
      v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);

      sub_18F04C26C();
    }

    else
    {
      swift_willThrow();
    }
  }

  return OUTLINED_FUNCTION_9_8();
}

void sub_18F0478F0(void *a1)
{
  v3 = sub_18F0932BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18EF7FDF8(a1);
  if (!v9)
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v13 = sub_18F093A2C();
    __swift_project_value_buffer(v13, qword_1ED60C1C0);
    v14 = a1;
    v15 = sub_18F093A0C();
    v16 = sub_18F093ECC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_18EF7E000, v15, v16, "Undefined bundle identifier for %{public}@", v17, 0xCu);
      sub_18EF82E14(v18, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v18, -1, -1);
      MEMORY[0x193AD9AF0](v17, -1, -1);
    }

    sub_18F04C44C();
    swift_allocError();
    *v20 = 0;
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_18F047E3C();
  if (v1)
  {

    return;
  }

  if (sub_18EFA0A74(v12))
  {

    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v22 = sub_18F093DBC();

    [v21 initWithArray_];

    return;
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v23 = sub_18F093A2C();
  __swift_project_value_buffer(v23, qword_1ED60C1C0);
  v24 = a1;

  v25 = sub_18F093A0C();
  v26 = sub_18F093ECC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v27 = 136446722;
    v28 = sub_18F0462AC(v10, v11, &v42);
    v29 = v26;
    v30 = v28;

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    v31 = [v24 URL];
    sub_18F09327C();

    sub_18F034544();
    v32 = sub_18F0943FC();
    v34 = v33;
    (*(v4 + 8))(v7, v3);
    v35 = sub_18F0462AC(v32, v34, &v42);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2114;
    *(v27 + 24) = v24;
    v36 = v40;
    *v40 = v24;
    v14 = v24;
    _os_log_impl(&dword_18EF7E000, v25, v29, "Unable to extract bundle metadata for %{public}s:\nempty extensionMetadata and daemonMetadata for URL %{public}s of %{public}@", v27, 0x20u);
    sub_18EF82E14(v36, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v36, -1, -1);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x193AD9AF0](v37, -1, -1);
    MEMORY[0x193AD9AF0](v27, -1, -1);

    sub_18F04C44C();
    swift_allocError();
    *v38 = 1;
LABEL_9:
    swift_willThrow();

    return;
  }

  sub_18F04C44C();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
}

uint64_t sub_18F047E3C()
{
  result = sub_18F046EF8();
  if (!v0)
  {
    v2 = result;
    sub_18F04A0F4();
    sub_18F00DA68();
    sub_18F04A7EC();
    sub_18F00DA68();
    sub_18F04B5AC();
    sub_18F00DA68();
    return v2;
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNBundleMetadata.init(bundle:using:)(LNBundleMetadata *__return_ptr retstr, NSBundle bundle, LNEffectiveBundleIdentifier using)
{
  isa = using.super.isa;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundle:bundle.super.isa usingEffectiveBundleIdentifier:using.super.isa error:v8])
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_18F09318C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
}

void (*LNBundleMetadata.init(bundle:using:)(void *a1, void (*a2)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_42();
  v93 = v8 - v9;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v87 - v11;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = sub_18F0932BC();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42();
  v92 = (v21 - v22);
  OUTLINED_FUNCTION_10_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v87 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v87 - v30;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v87 - v32;
  v98 = a1;
  v34 = [a1 ln_safeBundleURL];
  if (!v34)
  {
    goto LABEL_4;
  }

  v35 = v34;
  sub_18F09327C();

  sub_18F0488C8(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    (*(v18 + 8))(v33, v15);
    sub_18EF82E14(v14, &qword_1EACB72C8, &qword_18F0AAE80);
LABEL_4:
    sub_18EFD2EC8();
    swift_allocError();
    *v36 = v98;
    *(v36 + 8) = 3;
    swift_willThrow();

    goto LABEL_20;
  }

  v91 = v33;
  v37 = v95;
  (*(v18 + 32))(v95, v14, v15);
  if (qword_1ED5FEEB8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v90 = v3;
    v38 = sub_18F093A2C();
    __swift_project_value_buffer(v38, qword_1ED60C1C0);
    v100 = *(v18 + 16);
    v101 = v18 + 16;
    v100(v29, v37, v15);
    v39 = a2;
    v40 = sub_18F093A0C();
    v41 = sub_18F093EDC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v88 = v40;
      v43 = v42;
      v87 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v103 = v89;
      *v43 = 136446466;
      sub_18F034544();
      v44 = sub_18F0943FC();
      v46 = v45;
      v47 = OUTLINED_FUNCTION_5_13();
      v48(v47);
      v49 = sub_18F0462AC(v44, v46, &v103);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2114;
      *(v43 + 14) = v39;
      v50 = v87;
      *v87 = v39;
      v51 = v39;
      v52 = v88;
      _os_log_impl(&dword_18EF7E000, v88, v41, "Found static metadata file at %{public}s for %{public}@", v43, 0x16u);
      sub_18EF82E14(v50, &qword_1EACB97F8, &qword_18F0AC398);
      OUTLINED_FUNCTION_7_8();
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_7_8();
    }

    else
    {

      v53 = OUTLINED_FUNCTION_5_13();
      v54(v53);
    }

    v55 = [v39 type];
    v56 = [v39 bundleIdentifier];
    v57 = sub_18F093B8C();
    v59 = v58;

    v60 = v39;
    v61 = v96;
    v100(v96, v91, v15);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v15);
    v62 = objc_allocWithZone(LNEffectiveBundleIdentifier);
    v63 = sub_18EF7FCF0(v55, v57, v59, v61);
    sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
    v65 = v97;
    v64 = v98;
    v66 = sub_18F0489C8(v98);
    v37 = v65;
    if (v65)
    {
      break;
    }

    v67 = v66;
    v97 = v63;
    v88 = v60;
    v3 = 0;
    v89 = MEMORY[0x1E69E7CC0];
    v103 = MEMORY[0x1E69E7CC0];
    v29 = v66[2];
    v96 = (v18 + 8);
LABEL_12:
    a2 = ObjectType;
    while (1)
    {
      if (v29 == v3)
      {

        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        v69 = v92;
        v70 = v95;
        v71 = v100;
        v100(v92, v95, v15);
        v72 = v93;
        v73 = v91;
        v71(v93, v91, v15);
        __swift_storeEnumTagSinglePayload(v72, 0, 1, v15);
        v74 = v97;
        LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(v69, v72, v74, v75, v76, v77, v78, v79, v87, v88, v89, v90, v91, v92, v93, ObjectType, v95, v96, v97, v98, v99, v100);
        v82 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8760, &qword_18F0AC410);
        v83 = swift_allocObject();
        *(v83 + 1) = xmmword_18F09BCD0;
        v83[4] = v82;
        v103 = v83;
        v84 = v82;
        sub_18F00DA68();
        v85 = sub_18F093DBC();

        a2 = [v90 initWithArray_];

        v86 = v99;
        v99(v70, v15);
        v86(v73, v15);
        return a2;
      }

      if (v3 >= v67[2])
      {
        break;
      }

      v100(v26, v67 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v3, v15);
      sub_18F048B0C(v26, v97, &v102);
      ++v3;
      v68 = (v99)(v26, v15);
      if (v102.isa)
      {
        MEMORY[0x193AD88C0](v68);
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v89 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_18F093DFC();
        }

        sub_18F093E3C();
        v89 = v103;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_18();
  }

  a2 = v99;
  v99(v95, v15);
  a2(v91, v15);
LABEL_20:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return a2;
}

uint64_t sub_18F0488C8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_18F093B5C();
  v4 = sub_18F09324C();
  v5 = sub_18F04C3A0(0x74636172747865, 0xE700000000000000, 0x64736E6F69746361, 0xEB00000000617461, v3, v4, v2);

  if (v5)
  {
    sub_18F09327C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

id sub_18F0489C8(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
  v2 = a1;
  isa = LNPackageMetadata.init(from:)(v2).super.isa;
  if (v4)
  {

LABEL_3:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_4;
  }

  v8 = isa;
  if (!isa)
  {
    goto LABEL_3;
  }

  v13[0] = 0;
  v9 = [(objc_class *)isa resolveWithBundle:v2 error:v13];
  v10 = v13[0];
  if (v9)
  {
    v11 = v9;
    sub_18F0932BC();
    v5 = sub_18F093DCC();
    v12 = v10;
  }

  else
  {
    v5 = v13[0];
    sub_18F09318C();

    swift_willThrow();
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_18F048B0C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v58 = a3;
  v63 = a2;
  v4 = sub_18F092FEC();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = sub_18F0932BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  sub_18F0488C8(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v27 = v63;
    sub_18EF82E14(v15, &qword_1EACB72C8, &qword_18F0AAE80);
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v28 = sub_18F093A2C();
    __swift_project_value_buffer(v28, qword_1ED60C1C0);
    (*(v17 + 16))(v21, a1, v16);
    v29 = v27;
    v30 = sub_18F093A0C();
    v31 = sub_18F093EDC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65[0] = v63;
      *v32 = 136446466;
      sub_18F034544();
      v58 = v30;
      v33 = sub_18F0943FC();
      v34 = v4;
      v36 = v35;
      (*(v17 + 8))(v21, v16);
      v37 = sub_18F0462AC(v33, v36, v65);
      v4 = v34;

      *(v32 + 4) = v37;
      *(v32 + 12) = 2114;
      *(v32 + 14) = v29;
      v38 = v59;
      *v59 = v29;
      v39 = v29;
      v40 = v31;
      v41 = v58;
      _os_log_impl(&dword_18EF7E000, v58, v40, "No static metadata directories found in %{public}s for %{public}@", v32, 0x16u);
      sub_18EF82E14(v38, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v38, -1, -1);
      v42 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x193AD9AF0](v42, -1, -1);
      MEMORY[0x193AD9AF0](v32, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    v53 = v61;
    sub_18F092FDC();
    v54 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v16);
    v55 = sub_18F092FFC();
    sub_18EF82E14(v54, &qword_1EACB72C8, &qword_18F0AAE80);
    (*(v62 + 8))(v53, v4);
    sub_18EFD2EC8();
    swift_allocError();
    *v56 = v55;
    *(v56 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v26, v15, v16);
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v43 = *(v17 + 16);
    v43(v24, v26, v16);
    v43(v13, a1, v16);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
    v44 = v63;
    v45 = v59;
    LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(v24, v13, v44, v46, v47, v48, v49, v50, v58, v59, v60, v61, v62, v63, v64, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6]);
    if (v45)
    {
      return (*(v17 + 8))(v26, v16);
    }

    else
    {
      v57 = v51;
      result = (*(v17 + 8))(v26, v16);
      v58->isa = v57;
    }
  }

  return result;
}

uint64_t sub_18F049174(void *a1)
{
  v2 = v1;
  result = LSBundleRecord.canOverrideAttribution.getter();
  if ((result & 1) == 0)
  {
    v5 = [v2 actions];
    sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
    v6 = sub_18F093A4C();

    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    if (!v9)
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          v18 = [v2 entities];
          sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
          v19 = sub_18F093A4C();

          v20 = 1 << *(v19 + 32);
          v21 = -1;
          if (v20 < 64)
          {
            v21 = ~(-1 << v20);
          }

          v22 = v21 & *(v19 + 64);
          v23 = (v20 + 63) >> 6;

          for (i = 0; v22; i = v25)
          {
            v25 = i;
LABEL_19:
            v26 = __clz(__rbit64(v22)) | (v25 << 6);
            v27 = *(*(v19 + 48) + 16 * v26 + 8);
            v28 = *(*(v19 + 56) + 8 * v26);

            v16 = v28;
            sub_18F0206F4(v16);
            if (v29)
            {
              goto LABEL_25;
            }

            v22 &= v22 - 1;
          }

          while (1)
          {
            v25 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v25 >= v23)
            {
            }

            v22 = *(v19 + 64 + 8 * v25);
            ++i;
            if (v22)
            {
              goto LABEL_19;
            }
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v9 = *(v6 + 64 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = *(*(v6 + 48) + 16 * v13 + 8);
      v15 = *(*(v6 + 56) + 8 * v13);

      v16 = v15;
      sub_18F0206F4(v16);
      if (v17)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    if (qword_1ED5FEEB8 != -1)
    {
LABEL_33:
      swift_once();
    }

    v30 = sub_18F093A2C();
    __swift_project_value_buffer(v30, qword_1ED60C1C0);
    v31 = a1;
    v32 = sub_18F093A0C();
    v33 = sub_18F093ECC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_18EF7E000, v32, v33, "Metadata for %{public}@ contains attribution bundle identifier but isn't entitled to do so", v34, 0xCu);
      sub_18EF82E14(v35, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v35, -1, -1);
      MEMORY[0x193AD9AF0](v34, -1, -1);
    }

    return [v2 applyAttributionBundleIdentifier:0 icon:0];
  }

  return result;
}

uint64_t LSBundleRecord.canOverrideAttribution.getter()
{
  v1 = [v0 entitlements];
  v2 = sub_18F093B5C();
  sub_18EF825F4(0, &qword_1ED5FE760, 0x1E696AD98);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_18EF82E14(v8, &qword_1EACB9180, &qword_18F09BD30);
  }

  return 0;
}

uint64_t sub_18F0496D8()
{
  v1 = v0;
  v46 = sub_18F0931FC();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18F0932BC();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v40 - v10;
  v47 = v1;
  v11 = [v1 entitlements];
  v12 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  v13 = [v11 objectForKey:v12 ofClass:swift_getObjCClassFromMetadata()];

  if (v13)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (!*(&v53 + 1))
  {
    sub_18EF82E14(v54, &qword_1EACB9180, &qword_18F09BD30);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *(v50 + 16);
  if (v14)
  {
    v43 = v50;
    v44 = v2;
    v15 = v50 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18EFB6E2C(v15, v54);
      sub_18EF914D4(v54, &v52);
      if (swift_dynamicCast())
      {
        v17 = v51;
        if (v51)
        {
          v18 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = v16[2];
            sub_18F00EDD4();
            v16 = v23;
          }

          v19 = v16[2];
          v20 = v16;
          if (v19 >= v16[3] >> 1)
          {
            sub_18F00EDD4();
            v20 = v24;
          }

          v20[2] = v19 + 1;
          v16 = v20;
          v21 = &v20[2 * v19];
          v21[4] = v18;
          v21[5] = v17;
        }
      }

      v15 += 32;
      --v14;
    }

    while (v14);

    v2 = v44;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v27 = 0;
  v44 = v16[2];
  LODWORD(v43) = *MEMORY[0x1E6968F70];
  v41 = (v2 + 8);
  v42 = (v2 + 104);
  v28 = (v48 + 8);
  v40 = v48 + 32;
  v29 = v16 + 5;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v44 == v27)
    {

      return v25;
    }

    if (v27 >= v16[2])
    {
      break;
    }

    v30 = v16;
    v31 = v5;
    v33 = *(v29 - 1);
    v32 = *v29;

    v34 = [v47 URL];
    sub_18F09327C();

    *&v54[0] = v33;
    *(&v54[0] + 1) = v32;
    v36 = v45;
    v35 = v46;
    (*v42)(v45, v43, v46);
    sub_18EFB30C8();
    sub_18F0932AC();
    v37 = v36;
    v5 = v31;
    (*v41)(v37, v35);
    (*v28)(v9, v31);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_18F00ECBC(0, *(v25 + 16) + 1, 1, v25);
    }

    v39 = *(v25 + 16);
    v38 = *(v25 + 24);
    if (v39 >= v38 >> 1)
    {
      v25 = sub_18F00ECBC(v38 > 1, v39 + 1, 1, v25);
    }

    *(v25 + 16) = v39 + 1;
    result = (*(v48 + 32))(v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, v49, v31);
    v29 += 2;
    ++v27;
    v16 = v30;
  }

  __break(1u);
  return result;
}

id sub_18F049C20()
{
  v38 = sub_18F0932BC();
  v36 = *(v38 - 8);
  v1 = *(v36 + 64);
  v2 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - v4;
  v5 = [v0 entitlements];
  v6 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_18EF82E14(v43, &qword_1EACB9180, &qword_18F09BD30);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v39 + 16);
  if (v8)
  {
    v9 = v39 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18EFB6E2C(v9, v43);
      sub_18EF914D4(v43, &v41);
      if (swift_dynamicCast())
      {
        v11 = v40;
        if (v40)
        {
          v12 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = v10[2];
            sub_18F00EDD4();
            v10 = v16;
          }

          v13 = v10[2];
          if (v13 >= v10[3] >> 1)
          {
            sub_18F00EDD4();
            v10 = v17;
          }

          v10[2] = v13 + 1;
          v14 = &v10[2 * v13];
          v14[4] = v12;
          v14[5] = v11;
        }
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v20 = 0;
  v34 = v10[2];
  v21 = (v36 + 32);
  v22 = v10 + 5;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v34 == v20)
    {

      return v18;
    }

    if (v20 >= v10[2])
    {
      break;
    }

    v24 = *(v22 - 1);
    v23 = *v22;

    result = BSSystemRootDirectory();
    if (!result)
    {
      goto LABEL_32;
    }

    v25 = result;
    v26 = sub_18F093B8C();
    v28 = v27;

    *&v43[0] = v26;
    *(&v43[0] + 1) = v28;

    MEMORY[0x193AD8780](v24, v23);

    v29 = v35;
    sub_18F09323C();

    v30 = *v21;
    (*v21)(v37, v29, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_18F00ECBC(0, *(v18 + 16) + 1, 1, v18);
    }

    v32 = *(v18 + 16);
    v31 = *(v18 + 24);
    if (v32 >= v31 >> 1)
    {
      v18 = sub_18F00ECBC(v31 > 1, v32 + 1, 1, v18);
    }

    *(v18 + 16) = v32 + 1;
    result = v30((v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32), v37, v38);
    v22 += 2;
    ++v20;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18F04A0B4()
{
  v0 = sub_18F0496D8();
  v1 = sub_18F049C20();
  sub_18F00D964(v1);
  return v0;
}

uint64_t sub_18F04A0F4()
{
  v2 = v1;
  v62 = sub_18F0932BC();
  v64 = *(v62 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18EF7FDF8(v0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (qword_1ED5FEEB8 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v9 = sub_18F093A2C();
      __swift_project_value_buffer(v9, qword_1ED60C1C0);

      v10 = sub_18F093A0C();
      v11 = sub_18F093EDC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v72 = v13;
        *v12 = 136446210;
        v14 = sub_18F0462AC(v7, v8, &v72);

        *(v12 + 4) = v14;
        _os_log_impl(&dword_18EF7E000, v10, v11, "Processing embedded extension records for %{public}s...", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x193AD9AF0](v13, -1, -1);
        MEMORY[0x193AD9AF0](v12, -1, -1);
      }

      else
      {
      }

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      v8 = MEMORY[0x1E69E7CC0];
      if (!v22)
      {
        return v8;
      }

      v23 = [v22 applicationExtensionRecords];
      v24 = sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
      sub_18F04C338();
      v25 = sub_18F093E6C();

      v72 = v8;
      v54 = v25;
      v55 = v2;
      v56 = v24;
      if ((v25 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_18F093FFC();
        sub_18F093E8C();
        v27 = v67;
        v26 = v68;
        v28 = v69;
        v29 = v70;
        v7 = v71;
      }

      else
      {
        v30 = -1 << *(v25 + 32);
        v26 = v25 + 56;
        v28 = ~v30;
        v31 = -v30;
        v32 = v31 < 64 ? ~(-1 << v31) : -1;
        v7 = v32 & *(v25 + 56);

        v29 = 0;
        v27 = v25;
      }

      v53 = v28;
      v60 = v64 + 32;
      v59 = xmmword_18F09BCC0;
      v57 = v27;
      v58 = v26;
      if (v27 < 0)
      {
        break;
      }

LABEL_19:
      v33 = v29;
      v34 = v7;
      v2 = v29;
      if (v7)
      {
LABEL_23:
        v35 = (v34 - 1) & v34;
        v8 = *(*(v27 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v34)))));
        if (v8)
        {
          goto LABEL_27;
        }

LABEL_39:
        sub_18EFAE608();

        return v72;
      }

      while (1)
      {
        v2 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v2 >= ((v28 + 64) >> 6))
        {
          goto LABEL_39;
        }

        v34 = *(v26 + 8 * v2);
        ++v33;
        if (v34)
        {
          goto LABEL_23;
        }
      }

LABEL_43:
      __break(1u);
    }

    while (1)
    {
      v36 = sub_18F09400C();
      if (!v36)
      {
        goto LABEL_39;
      }

      v65 = v36;
      swift_dynamicCast();
      v8 = v66;
      v2 = v29;
      v35 = v7;
      if (!v66)
      {
        goto LABEL_39;
      }

LABEL_27:
      v37 = LSBundleRecord.effectiveBundleIdentifier.getter();
      if (v37)
      {
        v38 = v37;
        v63 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
        v39 = v64;
        v40 = *(v64 + 72);
        v41 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v59;
        v43 = [v8 URL:v53];
        v44 = v61;
        sub_18F09327C();

        (*(v39 + 32))(v42 + v41, v44, v62);
        v45 = sub_18F04A0B4();
        v66 = v42;
        sub_18F00D964(v45);
        v46 = sub_18F093DBC();

        v47 = [v38 bundleMetadataForURLs_];

        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        v7 = sub_18F093DCC();

        v48 = sub_18EFA0A74(v7);
        for (i = 0; ; ++i)
        {
          if (v48 == i)
          {
            sub_18F00DA68();
            v27 = v57;
            v26 = v58;
            v35 = v63;
            goto LABEL_37;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x193AD8BA0](i, v7);
          }

          else
          {
            if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v50 = *(v7 + 8 * i + 32);
          }

          v51 = v50;
          if (__OFADD__(i, 1))
          {
            break;
          }

          sub_18F049174(v8);
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_37:

      v29 = v2;
      v7 = v35;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v15 = sub_18F093A2C();
  __swift_project_value_buffer(v15, qword_1ED60C1C0);
  v16 = v0;
  v8 = sub_18F093A0C();
  v17 = sub_18F093ECC();

  if (os_log_type_enabled(v8, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v16;
    *v19 = v16;
    v20 = v16;
    _os_log_impl(&dword_18EF7E000, v8, v17, "Undefined bundle identifier for %@", v18, 0xCu);
    sub_18EF82E14(v19, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v19, -1, -1);
    MEMORY[0x193AD9AF0](v18, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return v8;
}

unint64_t sub_18F04A7EC()
{
  v2 = v1;
  v3 = sub_18EF7FDF8(v0);
  if (v4)
  {
    v75 = v3;
    v76 = v4;
    if (qword_1ED5FEEB8 != -1)
    {
      goto LABEL_98;
    }

    while (1)
    {
      v5 = sub_18F093A2C();
      __swift_project_value_buffer(v5, qword_1ED60C1C0);

      v6 = sub_18F093A0C();
      v7 = sub_18F093EDC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v79[0] = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_18F0462AC(v75, v76, v79);
        _os_log_impl(&dword_18EF7E000, v6, v7, "Processing associated standalone extension records for %{public}s...", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x193AD9AF0](v9, -1, -1);
        MEMORY[0x193AD9AF0](v8, -1, -1);
      }

      v10 = v2;
      if (qword_1EACB6E10 != -1)
      {
        swift_once();
      }

      v2 = qword_1EACB6E18;
      v79[0] = MEMORY[0x1E69E7CC0];
      v11 = sub_18EFA0A74(qword_1EACB6E18);
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {
          v2 = v79[0];
          v20 = sub_18EFA0A74(v79[0]);
          v21 = 0;
          v78 = MEMORY[0x1E69E7CC0];
          v22 = v10;
          while (v20 != v21)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x193AD8BA0](v21, v2);
            }

            else
            {
              if (v21 >= *(v2 + 16))
              {
                goto LABEL_90;
              }

              v23 = *(v2 + 8 * v21 + 32);
            }

            v24 = v23;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_89;
            }

            v79[0] = v23;
            sub_18F04B088(v79, v75, v76, &v80);

            v25 = v80;
            if (v80)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = *(v78 + 16);
                sub_18F00EEA4();
                v78 = v28;
              }

              v26 = *(v78 + 16);
              if (v26 >= *(v78 + 24) >> 1)
              {
                sub_18F00EEA4();
                v78 = v29;
              }

              *(v78 + 16) = v26 + 1;
              *(v78 + 8 * v26 + 32) = v25;
            }

            ++v21;
          }

          v30 = 0;
          v2 = MEMORY[0x1E69E7CC0];
          v72 = v78 + 32;
          v73 = *(v78 + 16);
          while (1)
          {
            if (v30 == v73)
            {

              if (sub_18EFA0A74(v2))
              {
              }

              else
              {

                v61 = sub_18F093A0C();
                v62 = sub_18F093EDC();

                if (os_log_type_enabled(v61, v62))
                {
                  v63 = swift_slowAlloc();
                  v64 = swift_slowAlloc();
                  v79[0] = v64;
                  *v63 = 136446210;
                  v65 = v2;
                  v66 = sub_18F0462AC(v75, v76, v79);

                  *(v63 + 4) = v66;
                  v2 = v65;
                  _os_log_impl(&dword_18EF7E000, v61, v62, "→ No standalone extensions found for %{public}s", v63, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v64);
                  MEMORY[0x193AD9AF0](v64, -1, -1);
                  MEMORY[0x193AD9AF0](v63, -1, -1);
                }

                else
                {
                }
              }

              return v2;
            }

            if (v30 >= *(v78 + 16))
            {
              goto LABEL_91;
            }

            v31 = *(v72 + 8 * v30);
            if (v31 >> 62)
            {
              if (v31 < 0)
              {
                v53 = *(v72 + 8 * v30);
              }

              v32 = sub_18F0941BC();
            }

            else
            {
              v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v33 = v2 >> 62;
            if (v2 >> 62)
            {
              v34 = sub_18F0941BC();
            }

            else
            {
              v34 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v35 = v34 + v32;
            if (__OFADD__(v34, v32))
            {
              goto LABEL_92;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (v33)
              {
                goto LABEL_53;
              }

              v36 = v2 & 0xFFFFFFFFFFFFFF8;
              if (v35 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v33)
              {
LABEL_53:
                sub_18F0941BC();
                goto LABEL_54;
              }

              v36 = v2 & 0xFFFFFFFFFFFFFF8;
            }

            v37 = *(v36 + 16);
LABEL_54:
            v2 = sub_18F09409C();
            v36 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_55:
            v77 = v32;
            ++v30;
            v38 = *(v36 + 16);
            v39 = (*(v36 + 24) >> 1) - v38;
            v40 = v36 + 8 * v38;
            v74 = v36;
            if (v31 >> 62)
            {
              v42 = sub_18F0941BC();
              if (v42)
              {
                v43 = v42;
                v44 = sub_18F0941BC();
                if (v39 < v44)
                {
                  goto LABEL_96;
                }

                if (v43 < 1)
                {
                  goto LABEL_97;
                }

                v68 = v44;
                v69 = v30;
                v70 = v2;
                v71 = v22;
                v45 = v40 + 32;
                sub_18F04C4A0();
                for (j = 0; j != v43; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
                  v47 = sub_18F017C80(v79, j, v31);
                  v49 = *v48;
                  (v47)(v79, 0);
                  *(v45 + 8 * j) = v49;
                }

                v2 = v70;
                v22 = v71;
                v41 = v68;
                v30 = v69;
                goto LABEL_65;
              }
            }

            else
            {
              v41 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v41)
              {
                if (v39 < v41)
                {
                  goto LABEL_95;
                }

                sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
                swift_arrayInitWithCopy();
LABEL_65:

                if (v41 < v77)
                {
                  goto LABEL_93;
                }

                if (v41 > 0)
                {
                  v50 = *(v74 + 16);
                  v51 = __OFADD__(v50, v41);
                  v52 = v50 + v41;
                  if (v51)
                  {
                    goto LABEL_94;
                  }

                  *(v74 + 16) = v52;
                }

                continue;
              }
            }

            if (v32 > 0)
            {
              goto LABEL_93;
            }
          }
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x193AD8BA0](i, v2);
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v13 = *(v2 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
        if (!v16)
        {
          goto LABEL_19;
        }

        if (v15 == v75 && v16 == v76)
        {
        }

        else
        {
          v18 = sub_18F09444C();

          if ((v18 & 1) == 0)
          {
LABEL_19:

            continue;
          }
        }

        sub_18F0940FC();
        v19 = *(v79[0] + 2);
        sub_18F09412C();
        sub_18F09413C();
        sub_18F09410C();
      }

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
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      swift_once();
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v54 = sub_18F093A2C();
  __swift_project_value_buffer(v54, qword_1ED60C1C0);
  v55 = v0;
  v56 = sub_18F093A0C();
  v57 = sub_18F093ECC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v55;
    *v2 = v55;
    v59 = v55;
    _os_log_impl(&dword_18EF7E000, v56, v57, "Undefined bundle identifier for %@", v58, 0xCu);
    sub_18EF82E14(v2, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v2, -1, -1);
    MEMORY[0x193AD9AF0](v58, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v60 = 0;
  swift_willThrow();
  return v2;
}

void sub_18F04B088(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a2;
  v8 = sub_18F0932BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - v15;
  v17 = *a1;
  v18 = sub_18EF7FDF8(*a1);
  if (v19)
  {
    v20 = v19;
    v46 = v9;
    v21 = v18;
    v48 = v8;
    v49 = a4;
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v47 = v12;
    v50 = v4;
    v22 = sub_18F093A2C();
    __swift_project_value_buffer(v22, qword_1ED60C1C0);

    v23 = sub_18F093A0C();
    v24 = sub_18F093EDC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_18F0462AC(v21, v20, &v52);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_18F0462AC(v51, a3, &v52);
      _os_log_impl(&dword_18EF7E000, v23, v24, "→ Found standalone extension %{public}s attributed to %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD9AF0](v26, -1, -1);
      MEMORY[0x193AD9AF0](v25, -1, -1);
    }

    v27 = [v17 URL];
    sub_18F09327C();

    v28 = v48;
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v48);
    v29 = objc_allocWithZone(LNEffectiveBundleIdentifier);
    v30 = sub_18EF7FCF0(1, v21, v20, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
    v31 = v46;
    v32 = *(v46 + 72);
    v33 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18F09BCC0;
    v35 = [v17 URL];
    v36 = v47;
    sub_18F09327C();

    (*(v31 + 32))(v34 + v33, v36, v28);
    v37 = sub_18F04A0B4();
    v52 = v34;
    sub_18F00D964(v37);
    v38 = sub_18F093DBC();

    v39 = [v30 bundleMetadataForURLs_];

    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v40 = sub_18F093DCC();

    a4 = v49;
  }

  else
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v41 = sub_18F093A2C();
    __swift_project_value_buffer(v41, qword_1ED60C1C0);

    v42 = sub_18F093A0C();
    v43 = sub_18F093ECC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_18F0462AC(v51, a3, &v52);
      _os_log_impl(&dword_18EF7E000, v42, v43, "→ Got a nil bundleIdentifier while enumerating standalone extensions attributed to %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x193AD9AF0](v45, -1, -1);
      MEMORY[0x193AD9AF0](v44, -1, -1);
    }

    v40 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v40;
}

unint64_t sub_18F04B5AC()
{
  v3 = v1;
  v77 = sub_18EF7FDF8(v0);
  if (v4)
  {
    v5 = v4;
    if (qword_1ED5FEEB8 != -1)
    {
      goto LABEL_79;
    }

    while (1)
    {
      v6 = sub_18F093A2C();
      __swift_project_value_buffer(v6, qword_1ED60C1C0);

      v7 = sub_18F093A0C();
      v8 = sub_18F093EDC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v76[0] = v10;
        *v9 = 136446210;
        *(v9 + 4) = sub_18F0462AC(v77, v5, v76);
        _os_log_impl(&dword_18EF7E000, v7, v8, "Processing associated daemon records for %{public}s...", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x193AD9AF0](v10, -1, -1);
        MEMORY[0x193AD9AF0](v9, -1, -1);
      }

      v68 = v3;
      if (qword_1ED5FDB08 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_1ED5FDAE0;
      v76[0] = MEMORY[0x1E69E7CC0];
      v12 = sub_18EFA0A74(qword_1ED5FDAE0);
      v13 = v11 & 0xC000000000000001;
      v14 = v11 & 0xFFFFFFFFFFFFFF8;

      v15 = 0;
      v3 = &OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier;
      v74 = v11;
      while (1)
      {
        if (v12 == v15)
        {

          v3 = v76[0];
          v27 = 0;
          v71 = v76[0] & 0xC000000000000001;
          v72 = sub_18EFA0A74(v76[0]);
          v73 = v3;
          v70 = v3 + 4;
          v2 = MEMORY[0x1E69E7CC0];
          v28 = v68;
          while (1)
          {
            if (v27 == v72)
            {

              return v2;
            }

            if (v71)
            {
              v29 = MEMORY[0x193AD8BA0](v27, v73);
            }

            else
            {
              if (v27 >= v73[2])
              {
                goto LABEL_72;
              }

              v29 = v70[v27];
            }

            v30 = v29;
            v31 = __OFADD__(v27, 1);
            v32 = v27 + 1;
            if (v31)
            {
              goto LABEL_71;
            }

            v77 = v32;
            v33 = DaemonRecord.effectiveBundleIdentifier.getter();
            v34 = OBJC_IVAR___swift_DaemonRecord_metadataURLs;
            swift_beginAccess();
            v35 = *&v30[v34];
            sub_18F0932BC();

            v36 = sub_18F093DBC();

            v37 = [v33 bundleMetadataForURLs_];

            v5 = sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
            v38 = sub_18F093DCC();

            v3 = (v38 >> 62);
            if (v38 >> 62)
            {
              v39 = sub_18F0941BC();
            }

            else
            {
              v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v40 = v2 >> 62;
            if (v2 >> 62)
            {
              v41 = sub_18F0941BC();
            }

            else
            {
              v41 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v42 = v41 + v39;
            if (__OFADD__(v41, v39))
            {
              goto LABEL_73;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v40)
            {
              goto LABEL_41;
            }

            v43 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v42 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_40;
            }

            v75 = v2;
LABEL_43:
            v45 = *(v43 + 16);
            v46 = (*(v43 + 24) >> 1) - v45;
            v47 = v43 + 8 * v45;
            if (v3)
            {
              v49 = sub_18F0941BC();
              if (!v49)
              {
                goto LABEL_57;
              }

              v5 = v49;
              v50 = sub_18F0941BC();
              if (v46 < v50)
              {
                goto LABEL_77;
              }

              if (v5 < 1)
              {
                goto LABEL_78;
              }

              v67 = v50;
              v69 = v28;
              v51 = v47 + 32;
              sub_18F04C4A0();
              for (i = 0; i != v5; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
                v53 = sub_18F017C80(v76, i, v38);
                v55 = *v54;
                (v53)(v76, 0);
                *(v51 + 8 * i) = v55;
              }

              v28 = v69;
              v3 = v67;
LABEL_53:

              v2 = v75;
              v27 = v77;
              if (v3 < v39)
              {
                goto LABEL_74;
              }

              if (v3 > 0)
              {
                v56 = *(v43 + 16);
                v31 = __OFADD__(v56, v3);
                v57 = v3 + v56;
                if (v31)
                {
                  goto LABEL_75;
                }

                *(v43 + 16) = v57;
              }
            }

            else
            {
              v3 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v3)
              {
                if (v46 < v3)
                {
                  goto LABEL_76;
                }

                v48 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
                swift_arrayInitWithCopy();
                goto LABEL_53;
              }

LABEL_57:

              v2 = v75;
              v27 = v77;
              if (v39 > 0)
              {
                goto LABEL_74;
              }
            }
          }

          if (v40)
          {
LABEL_41:
            sub_18F0941BC();
          }

          else
          {
            v43 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
            v44 = *(v43 + 16);
          }

          v75 = sub_18F09409C();
          v43 = v75 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_43;
        }

        if (v13)
        {
          v16 = MEMORY[0x193AD8BA0](v15, v11);
        }

        else
        {
          if (v15 >= *(v14 + 16))
          {
            goto LABEL_70;
          }

          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = &v16[*v3];
        swift_beginAccess();
        v19 = *(v18 + 1);
        if (v19 && (*v18 == v77 ? (v20 = v19 == v5) : (v20 = 0), v20 || (sub_18F09444C() & 1) != 0))
        {
          sub_18F0940FC();
          v21 = v12;
          v22 = v14;
          v23 = v13;
          v24 = v3;
          v25 = v5;
          v26 = *(v76[0] + 16);
          sub_18F09412C();
          v5 = v25;
          v3 = v24;
          v13 = v23;
          v14 = v22;
          v12 = v21;
          v11 = v74;
          sub_18F09413C();
          sub_18F09410C();
        }

        else
        {
        }

        ++v15;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v58 = sub_18F093A2C();
  __swift_project_value_buffer(v58, qword_1ED60C1C0);
  v59 = v0;
  v60 = sub_18F093A0C();
  v61 = sub_18F093ECC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v59;
    v64 = v59;
    _os_log_impl(&dword_18EF7E000, v60, v61, "Undefined bundle identifier for %@", v62, 0xCu);
    sub_18EF82E14(v63, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v63, -1, -1);
    MEMORY[0x193AD9AF0](v62, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  return v2;
}

uint64_t sub_18F04BD64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = sub_18F0406E0(0x74636172747865, 0xE700000000000000, 0x646567616B636170, 0xEB00000000617461, v4, a1);

  if (v5)
  {
    sub_18F09327C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

LNPackageMetadata __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNPackageMetadata.init(from:)(NSBundle from)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFrom:from.super.isa error:v9];
  if (v2)
  {
    v3 = v9[0];
  }

  else
  {
    v4 = v9[0];
    sub_18F09318C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  v7 = v2;
  result._includes = v5;
  result.super.isa = v7;
  return result;
}

id LNPackageMetadata.init(from:)(id a1)
{
  v3 = v1;
  v33[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_18F0932BC();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  sub_18F04BD64(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_18EF82E14(v8, &qword_1EACB72C8, &qword_18F0AAE80);
    v21 = sub_18F093DBC();
    v22 = [v1 initWithIncludes_];
  }

  else
  {
    v31 = v2;
    (*(v12 + 32))(v20, v8, v9);
    v23 = sub_18F09324C();
    v24 = [a1 bundleURL];
    sub_18F09327C();

    v25 = sub_18F09324C();
    v32 = a1;
    v26 = *(v12 + 8);
    v26(v17, v9);
    v33[0] = 0;
    v22 = [v3 _initWithMetadataFileURL_bundleURL_error_];

    if (!v22)
    {
      v30 = v33[0];
      OUTLINED_FUNCTION_284();
      sub_18F09318C();

      swift_willThrow();
      v26(v20, v9);
      goto LABEL_6;
    }

    v27 = v33[0];
    v26(v20, v9);
    a1 = v32;
  }

LABEL_6:
  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

id sub_18F04C26C()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_18F093B5C();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_18F09318C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_18F04C338()
{
  result = qword_1EACB70F0;
  if (!qword_1EACB70F0)
  {
    sub_18EF825F4(255, &qword_1EACB7168, 0x1E69635D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70F0);
  }

  return result;
}

id sub_18F04C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_18F093B5C();

  v11 = sub_18F093B5C();

  v12 = [a7 URLForResource:v10 withExtension:v11 subdirectory:a5 inBundleWithURL:a6];

  return v12;
}

unint64_t sub_18F04C44C()
{
  result = qword_1EACB6B28;
  if (!qword_1EACB6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B28);
  }

  return result;
}

unint64_t sub_18F04C4A0()
{
  result = qword_1EACB6C48;
  if (!qword_1EACB6C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB85B0, &qword_18F0A1200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleMetadataExtractionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F04C5E8()
{
  result = qword_1EACB9820;
  if (!qword_1EACB9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9820);
  }

  return result;
}

id sub_18F04C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v61 = a6;
  v62 = a7;
  v59 = a1;
  v60 = a2;
  v12 = sub_18F09390C();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85F0, &qword_18F0A1230);
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v58 = v8;
  v25(v22, v8, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  sub_18EFBA344(v22, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) == 1)
  {
    sub_18EFBB83C(v20);
    v26 = v61;
    v27 = v62;
    v28 = a4;
LABEL_15:
    sub_18F09357C();
    v49 = v65;
    __swift_project_boxed_opaque_existential_1Tm(v64, v65);
    v50 = sub_18F0345A0(v59, v60, a3, v28, a5, v26, v27, v49);
    v48 = [objc_allocWithZone(LNActionConfigurationSwitchCase) initWithDefaultConfiguration_];

    goto LABEL_16;
  }

  v57 = a4;
  v29 = sub_18F09358C();
  v30 = *(v24 + 8);
  v56 = v23;
  v30(v20, v23);
  v31 = *(v29 + 16);
  if (v31)
  {
    v53 = a3;
    v54 = a5;
    v55 = v22;
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v32 = v12;
    v33 = v63 + 16;
    v63 = *(v63 + 16);
    v34 = *(v33 + 64);
    v52[1] = v29;
    v35 = v29 + ((v34 + 32) & ~v34);
    v36 = *(v33 + 56);
    do
    {
      (v63)(v15, v35, v32);
      sub_18EFBA3B4();
      (*(v33 - 8))(v15, v32);
      sub_18F0940FC();
      v37 = *(v64[0] + 16);
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v35 += v36;
      --v31;
    }

    while (v31);

    v38 = v64[0];
    a5 = v54;
    v22 = v55;
    v26 = v61;
    v27 = v62;
    a3 = v53;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
    v26 = v61;
    v27 = v62;
  }

  v39 = sub_18EFA0A74(v38);
  v28 = v57;
  if (!v39)
  {

    goto LABEL_15;
  }

  sub_18EFBB7B4(0, (v38 & 0xC000000000000001) == 0, v38);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x193AD8BA0](0, v38);
  }

  else
  {
    v40 = *(v38 + 32);
  }

  v41 = v40;
  v42 = [v40 valueType];

  if (!v42)
  {

    v27 = v62;
    goto LABEL_15;
  }

  v63 = sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  v43 = objc_allocWithZone(LNValue);
  v44 = v42;
  v45 = sub_18EFBB69C(v38, v44);
  sub_18F09357C();
  v46 = v65;
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  v47 = sub_18F0345A0(v59, v60, a3, v28, a5, v26, v62, v46);
  v48 = sub_18EFBB7E0(v45, v47);

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  sub_18EFBB83C(v22);
  return v48;
}

id sub_18F04CB18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  result = sub_18F04C63C(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

__CFString *LNShortcutTileColorAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"red";
  }

  else
  {
    return off_1E72B0D18[a1 - 1];
  }
}

__CFString *LNBundleMetadataVersionAsString(uint64_t a1)
{
  if (a1)
  {
    return @"1.0";
  }

  else
  {
    return @"0.0";
  }
}

__CFString *LNPrimitiveValueTypeIdentifierAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"String";
  }

  else
  {
    return off_1E72B0D88[a1 - 1];
  }
}

__CFString *LNIntentsValueTypeIdentifierAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Application";
  }

  else
  {
    return off_1E72B0DE8[a1 - 1];
  }
}

id getLNLogCategoryQuery()
{
  if (getLNLogCategoryQuery_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryQuery_onceToken, &__block_literal_global_11);
  }

  v1 = getLNLogCategoryQuery_logger;

  return v1;
}

uint64_t __getLNLogCategoryQuery_block_invoke()
{
  getLNLogCategoryQuery_logger = os_log_create(LNLogSubsystem, "Query");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryView()
{
  if (getLNLogCategoryView_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryView_onceToken, &__block_literal_global_14_4019);
  }

  v1 = getLNLogCategoryView_logger;

  return v1;
}

uint64_t __getLNLogCategoryView_block_invoke()
{
  getLNLogCategoryView_logger = os_log_create(LNLogSubsystem, "View");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategorySecurity()
{
  if (getLNLogCategorySecurity_onceToken != -1)
  {
    dispatch_once(&getLNLogCategorySecurity_onceToken, &__block_literal_global_20_4023);
  }

  v1 = getLNLogCategorySecurity_logger;

  return v1;
}

uint64_t __getLNLogCategorySecurity_block_invoke()
{
  getLNLogCategorySecurity_logger = os_log_create(LNLogSubsystem, "Security");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryVocabulary()
{
  if (getLNLogCategoryVocabulary_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryVocabulary_onceToken, &__block_literal_global_23);
  }

  v1 = getLNLogCategoryVocabulary_logger;

  return v1;
}

uint64_t __getLNLogCategoryVocabulary_block_invoke()
{
  getLNLogCategoryVocabulary_logger = os_log_create(LNLogSubsystem, "Vocabulary");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategorySandbox()
{
  if (getLNLogCategorySandbox_onceToken != -1)
  {
    dispatch_once(&getLNLogCategorySandbox_onceToken, &__block_literal_global_26_4025);
  }

  v1 = getLNLogCategorySandbox_logger;

  return v1;
}

uint64_t __getLNLogCategorySandbox_block_invoke()
{
  getLNLogCategorySandbox_logger = os_log_create(LNLogSubsystem, "Sandbox");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryExtensionMediator()
{
  if (getLNLogCategoryExtensionMediator_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryExtensionMediator_onceToken, &__block_literal_global_32);
  }

  v1 = getLNLogCategoryExtensionMediator_logger;

  return v1;
}

uint64_t __getLNLogCategoryExtensionMediator_block_invoke()
{
  getLNLogCategoryExtensionMediator_logger = os_log_create(LNLogSubsystem, "ExtensionMediator");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryDaemonMediator()
{
  if (getLNLogCategoryDaemonMediator_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryDaemonMediator_onceToken, &__block_literal_global_35);
  }

  v1 = getLNLogCategoryDaemonMediator_logger;

  return v1;
}

uint64_t __getLNLogCategoryDaemonMediator_block_invoke()
{
  getLNLogCategoryDaemonMediator_logger = os_log_create(LNLogSubsystem, "DaemonMediator");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryScenes()
{
  if (getLNLogCategoryScenes_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryScenes_onceToken, &__block_literal_global_38);
  }

  v1 = getLNLogCategoryScenes_logger;

  return v1;
}

uint64_t __getLNLogCategoryScenes_block_invoke()
{
  getLNLogCategoryScenes_logger = os_log_create(LNLogSubsystem, "Scenes");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *LNIdentifierScopeAsString(uint64_t a1)
{
  v1 = @"Undefined";
  if (a1 == 1)
  {
    v1 = @"Ephemeral";
  }

  if (a1 == 2)
  {
    return @"Local";
  }

  else
  {
    return v1;
  }
}

void sub_18F0758EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LNMeasurementUnitTypeOfUnit(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 6;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v2 = 7;
              }

              else
              {
                v2 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

id LNMeasurementUnitTypeToUnit(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = unitsOfUnitType(a1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __LNMeasurementUnitTypeToUnit_block_invoke;
  v10[3] = &unk_1E72B1338;
  v5 = v3;
  v11 = v5;
  v6 = [v4 if_firstObjectPassingTest:v10];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AFD0]) initWithSymbol:v5];
  }

  v8 = v7;

  return v8;
}

id unitsOfUnitType(uint64_t a1)
{
  v128[2] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 1:
      v1 = [MEMORY[0x1E696B058] megameters];
      v113[0] = v1;
      v105 = [MEMORY[0x1E696B058] kilometers];
      v113[1] = v105;
      v103 = [MEMORY[0x1E696B058] hectometers];
      v113[2] = v103;
      v102 = [MEMORY[0x1E696B058] decameters];
      v113[3] = v102;
      v101 = [MEMORY[0x1E696B058] meters];
      v113[4] = v101;
      v100 = [MEMORY[0x1E696B058] decimeters];
      v113[5] = v100;
      v99 = [MEMORY[0x1E696B058] centimeters];
      v113[6] = v99;
      v98 = [MEMORY[0x1E696B058] millimeters];
      v113[7] = v98;
      v97 = [MEMORY[0x1E696B058] micrometers];
      v113[8] = v97;
      v96 = [MEMORY[0x1E696B058] nanometers];
      v113[9] = v96;
      v95 = [MEMORY[0x1E696B058] picometers];
      v113[10] = v95;
      v94 = [MEMORY[0x1E696B058] inches];
      v113[11] = v94;
      v93 = [MEMORY[0x1E696B058] feet];
      v113[12] = v93;
      v92 = [MEMORY[0x1E696B058] yards];
      v113[13] = v92;
      v2 = [MEMORY[0x1E696B058] miles];
      v113[14] = v2;
      v3 = [MEMORY[0x1E696B058] scandinavianMiles];
      v113[15] = v3;
      v4 = [MEMORY[0x1E696B058] lightyears];
      v113[16] = v4;
      v5 = [MEMORY[0x1E696B058] nauticalMiles];
      v113[17] = v5;
      v6 = [MEMORY[0x1E696B058] fathoms];
      v113[18] = v6;
      v7 = [MEMORY[0x1E696B058] furlongs];
      v113[19] = v7;
      v8 = [MEMORY[0x1E696B058] astronomicalUnits];
      v113[20] = v8;
      v9 = [MEMORY[0x1E696B058] parsecs];
      v113[21] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:22];

      goto LABEL_37;
    case 2:
      v1 = [MEMORY[0x1E696B060] kilograms];
      v112[0] = v1;
      v105 = [MEMORY[0x1E696B060] grams];
      v112[1] = v105;
      v103 = [MEMORY[0x1E696B060] decigrams];
      v112[2] = v103;
      v102 = [MEMORY[0x1E696B060] centigrams];
      v112[3] = v102;
      v101 = [MEMORY[0x1E696B060] milligrams];
      v112[4] = v101;
      v100 = [MEMORY[0x1E696B060] micrograms];
      v112[5] = v100;
      v99 = [MEMORY[0x1E696B060] nanograms];
      v112[6] = v99;
      v98 = [MEMORY[0x1E696B060] picograms];
      v112[7] = v98;
      v45 = [MEMORY[0x1E696B060] ounces];
      v112[8] = v45;
      v46 = [MEMORY[0x1E696B060] poundsMass];
      v112[9] = v46;
      v47 = [MEMORY[0x1E696B060] stones];
      v112[10] = v47;
      v48 = [MEMORY[0x1E696B060] metricTons];
      v112[11] = v48;
      v49 = [MEMORY[0x1E696B060] shortTons];
      v112[12] = v49;
      v50 = [MEMORY[0x1E696B060] carats];
      v112[13] = v50;
      v51 = [MEMORY[0x1E696B060] ouncesTroy];
      v112[14] = v51;
      v52 = [MEMORY[0x1E696B060] slugs];
      v112[15] = v52;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:16];

      goto LABEL_38;
    case 3:
      v1 = [MEMORY[0x1E696B080] kelvin];
      v108[0] = v1;
      v11 = [MEMORY[0x1E696B080] celsius];
      v108[1] = v11;
      v12 = [MEMORY[0x1E696B080] fahrenheit];
      v108[2] = v12;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v108;
      goto LABEL_15;
    case 4:
      v1 = [MEMORY[0x1E696B088] megaliters];
      v107[0] = v1;
      v105 = [MEMORY[0x1E696B088] kiloliters];
      v107[1] = v105;
      v103 = [MEMORY[0x1E696B088] liters];
      v107[2] = v103;
      v102 = [MEMORY[0x1E696B088] deciliters];
      v107[3] = v102;
      v101 = [MEMORY[0x1E696B088] centiliters];
      v107[4] = v101;
      v100 = [MEMORY[0x1E696B088] milliliters];
      v107[5] = v100;
      v99 = [MEMORY[0x1E696B088] cubicKilometers];
      v107[6] = v99;
      v98 = [MEMORY[0x1E696B088] cubicMeters];
      v107[7] = v98;
      v97 = [MEMORY[0x1E696B088] cubicDecimeters];
      v107[8] = v97;
      v96 = [MEMORY[0x1E696B088] cubicCentimeters];
      v107[9] = v96;
      v95 = [MEMORY[0x1E696B088] cubicMillimeters];
      v107[10] = v95;
      v94 = [MEMORY[0x1E696B088] cubicInches];
      v107[11] = v94;
      v93 = [MEMORY[0x1E696B088] cubicFeet];
      v107[12] = v93;
      v92 = [MEMORY[0x1E696B088] cubicYards];
      v107[13] = v92;
      v91 = [MEMORY[0x1E696B088] cubicMiles];
      v107[14] = v91;
      v90 = [MEMORY[0x1E696B088] acreFeet];
      v107[15] = v90;
      v89 = [MEMORY[0x1E696B088] bushels];
      v107[16] = v89;
      v88 = [MEMORY[0x1E696B088] teaspoons];
      v107[17] = v88;
      v87 = [MEMORY[0x1E696B088] tablespoons];
      v107[18] = v87;
      v86 = [MEMORY[0x1E696B088] fluidOunces];
      v107[19] = v86;
      v85 = [MEMORY[0x1E696B088] cups];
      v107[20] = v85;
      v84 = [MEMORY[0x1E696B088] pints];
      v107[21] = v84;
      v83 = [MEMORY[0x1E696B088] quarts];
      v107[22] = v83;
      v35 = [MEMORY[0x1E696B088] gallons];
      v107[23] = v35;
      v36 = [MEMORY[0x1E696B088] imperialTeaspoons];
      v107[24] = v36;
      v37 = [MEMORY[0x1E696B088] imperialTablespoons];
      v107[25] = v37;
      v38 = [MEMORY[0x1E696B088] imperialFluidOunces];
      v107[26] = v38;
      v39 = [MEMORY[0x1E696B088] imperialPints];
      v107[27] = v39;
      v40 = [MEMORY[0x1E696B088] imperialQuarts];
      v107[28] = v40;
      v41 = [MEMORY[0x1E696B088] imperialGallons];
      v107[29] = v41;
      v42 = [MEMORY[0x1E696B088] metricCups];
      v107[30] = v42;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:31];

      goto LABEL_36;
    case 5:
      v1 = [MEMORY[0x1E696B078] metersPerSecond];
      v109[0] = v1;
      v11 = [MEMORY[0x1E696B078] kilometersPerHour];
      v109[1] = v11;
      v12 = [MEMORY[0x1E696B078] milesPerHour];
      v109[2] = v12;
      v13 = [MEMORY[0x1E696B078] knots];
      v109[3] = v13;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:4];
      goto LABEL_31;
    case 6:
      v1 = [MEMORY[0x1E696B030] kilojoules];
      v118[0] = v1;
      v11 = [MEMORY[0x1E696B030] joules];
      v118[1] = v11;
      v12 = [MEMORY[0x1E696B030] kilocalories];
      v118[2] = v12;
      v13 = [MEMORY[0x1E696B030] calories];
      v118[3] = v13;
      v14 = [MEMORY[0x1E696B030] kilowattHours];
      v118[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v118;
      goto LABEL_20;
    case 7:
      v1 = [MEMORY[0x1E696B008] hours];
      v123[0] = v1;
      v11 = [MEMORY[0x1E696B008] minutes];
      v123[1] = v11;
      v12 = [MEMORY[0x1E696B008] seconds];
      v123[2] = v12;
      v13 = [MEMORY[0x1E696B008] milliseconds];
      v123[3] = v13;
      v14 = [MEMORY[0x1E696B008] microseconds];
      v123[4] = v14;
      v15 = [MEMORY[0x1E696B008] nanoseconds];
      v123[5] = v15;
      v16 = [MEMORY[0x1E696B008] picoseconds];
      v123[6] = v16;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:7];
      goto LABEL_22;
    case 8:
      v1 = [MEMORY[0x1E696AFD8] metersPerSecondSquared];
      v128[0] = v1;
      v11 = [MEMORY[0x1E696AFD8] gravity];
      v128[1] = v11;
      v43 = MEMORY[0x1E695DEC8];
      v44 = v128;
      goto LABEL_26;
    case 9:
      v1 = [MEMORY[0x1E696AFE0] degrees];
      v127[0] = v1;
      v11 = [MEMORY[0x1E696AFE0] arcMinutes];
      v127[1] = v11;
      v12 = [MEMORY[0x1E696AFE0] arcSeconds];
      v127[2] = v12;
      v13 = [MEMORY[0x1E696AFE0] radians];
      v127[3] = v13;
      v14 = [MEMORY[0x1E696AFE0] gradians];
      v127[4] = v14;
      v15 = [MEMORY[0x1E696AFE0] revolutions];
      v127[5] = v15;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v127;
      goto LABEL_28;
    case 10:
      v1 = [MEMORY[0x1E696AFE8] squareMegameters];
      v126[0] = v1;
      v105 = [MEMORY[0x1E696AFE8] squareKilometers];
      v126[1] = v105;
      v103 = [MEMORY[0x1E696AFE8] squareMeters];
      v126[2] = v103;
      v102 = [MEMORY[0x1E696AFE8] squareCentimeters];
      v126[3] = v102;
      v101 = [MEMORY[0x1E696AFE8] squareMillimeters];
      v126[4] = v101;
      v100 = [MEMORY[0x1E696AFE8] squareMicrometers];
      v126[5] = v100;
      v25 = [MEMORY[0x1E696AFE8] squareNanometers];
      v126[6] = v25;
      v26 = [MEMORY[0x1E696AFE8] squareInches];
      v126[7] = v26;
      v27 = [MEMORY[0x1E696AFE8] squareFeet];
      v126[8] = v27;
      v28 = [MEMORY[0x1E696AFE8] squareYards];
      v126[9] = v28;
      v29 = [MEMORY[0x1E696AFE8] squareMiles];
      v126[10] = v29;
      v30 = [MEMORY[0x1E696AFE8] acres];
      v126[11] = v30;
      v31 = [MEMORY[0x1E696AFE8] ares];
      v126[12] = v31;
      v32 = [MEMORY[0x1E696AFE8] hectares];
      v126[13] = v32;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:14];

      goto LABEL_39;
    case 11:
      v1 = [MEMORY[0x1E696AFF0] gramsPerLiter];
      v125[0] = v1;
      v11 = [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
      v125[1] = v11;
      v43 = MEMORY[0x1E695DEC8];
      v44 = v125;
LABEL_26:
      v10 = [v43 arrayWithObjects:v44 count:2];
      goto LABEL_33;
    case 12:
      v1 = [MEMORY[0x1E696B000] partsPerMillion];
      v124 = v1;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v124;
      goto LABEL_24;
    case 13:
      v1 = [MEMORY[0x1E696B010] coulombs];
      v122[0] = v1;
      v11 = [MEMORY[0x1E696B010] megaampereHours];
      v122[1] = v11;
      v12 = [MEMORY[0x1E696B010] kiloampereHours];
      v122[2] = v12;
      v13 = [MEMORY[0x1E696B010] ampereHours];
      v122[3] = v13;
      v14 = [MEMORY[0x1E696B010] milliampereHours];
      v122[4] = v14;
      v15 = [MEMORY[0x1E696B010] microampereHours];
      v122[5] = v15;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v122;
LABEL_28:
      v10 = [v23 arrayWithObjects:v24 count:6];
      goto LABEL_29;
    case 14:
      v1 = [MEMORY[0x1E696B018] megaamperes];
      v121[0] = v1;
      v11 = [MEMORY[0x1E696B018] kiloamperes];
      v121[1] = v11;
      v12 = [MEMORY[0x1E696B018] amperes];
      v121[2] = v12;
      v13 = [MEMORY[0x1E696B018] milliamperes];
      v121[3] = v13;
      v14 = [MEMORY[0x1E696B018] microamperes];
      v121[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v121;
      goto LABEL_20;
    case 15:
      v1 = [MEMORY[0x1E696B020] megavolts];
      v120[0] = v1;
      v11 = [MEMORY[0x1E696B020] kilovolts];
      v120[1] = v11;
      v12 = [MEMORY[0x1E696B020] volts];
      v120[2] = v12;
      v13 = [MEMORY[0x1E696B020] millivolts];
      v120[3] = v13;
      v14 = [MEMORY[0x1E696B020] microvolts];
      v120[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v120;
      goto LABEL_20;
    case 16:
      v1 = [MEMORY[0x1E696B028] megaohms];
      v119[0] = v1;
      v11 = [MEMORY[0x1E696B028] kiloohms];
      v119[1] = v11;
      v12 = [MEMORY[0x1E696B028] ohms];
      v119[2] = v12;
      v13 = [MEMORY[0x1E696B028] milliohms];
      v119[3] = v13;
      v14 = [MEMORY[0x1E696B028] microohms];
      v119[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v119;
LABEL_20:
      v10 = [v19 arrayWithObjects:v20 count:5];
      goto LABEL_30;
    case 17:
      v1 = [MEMORY[0x1E696B038] terahertz];
      v117[0] = v1;
      v11 = [MEMORY[0x1E696B038] gigahertz];
      v117[1] = v11;
      v12 = [MEMORY[0x1E696B038] megahertz];
      v117[2] = v12;
      v13 = [MEMORY[0x1E696B038] kilohertz];
      v117[3] = v13;
      v14 = [MEMORY[0x1E696B038] hertz];
      v117[4] = v14;
      v15 = [MEMORY[0x1E696B038] millihertz];
      v117[5] = v15;
      v16 = [MEMORY[0x1E696B038] microhertz];
      v117[6] = v16;
      v17 = [MEMORY[0x1E696B038] nanohertz];
      v117[7] = v17;
      v18 = [MEMORY[0x1E696B038] framesPerSecond];
      v117[8] = v18;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:9];

LABEL_22:
LABEL_29:

LABEL_30:
LABEL_31:

      goto LABEL_32;
    case 18:
      v1 = [MEMORY[0x1E696B040] litersPer100Kilometers];
      v116[0] = v1;
      v11 = [MEMORY[0x1E696B040] milesPerImperialGallon];
      v116[1] = v11;
      v12 = [MEMORY[0x1E696B040] milesPerGallon];
      v116[2] = v12;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v116;
LABEL_15:
      v10 = [v33 arrayWithObjects:v34 count:3];
LABEL_32:

LABEL_33:
      goto LABEL_42;
    case 19:
      v1 = [MEMORY[0x1E696B048] lux];
      v115 = v1;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v115;
LABEL_24:
      v10 = [v21 arrayWithObjects:v22 count:1];
      goto LABEL_42;
    case 20:
      v1 = [MEMORY[0x1E696B050] bytes];
      v114[0] = v1;
      v105 = [MEMORY[0x1E696B050] bits];
      v114[1] = v105;
      v103 = [MEMORY[0x1E696B050] nibbles];
      v114[2] = v103;
      v102 = [MEMORY[0x1E696B050] yottabytes];
      v114[3] = v102;
      v101 = [MEMORY[0x1E696B050] zettabytes];
      v114[4] = v101;
      v100 = [MEMORY[0x1E696B050] exabytes];
      v114[5] = v100;
      v99 = [MEMORY[0x1E696B050] petabytes];
      v114[6] = v99;
      v98 = [MEMORY[0x1E696B050] terabytes];
      v114[7] = v98;
      v97 = [MEMORY[0x1E696B050] gigabytes];
      v114[8] = v97;
      v96 = [MEMORY[0x1E696B050] megabytes];
      v114[9] = v96;
      v95 = [MEMORY[0x1E696B050] kilobytes];
      v114[10] = v95;
      v94 = [MEMORY[0x1E696B050] yottabits];
      v114[11] = v94;
      v93 = [MEMORY[0x1E696B050] zettabits];
      v114[12] = v93;
      v92 = [MEMORY[0x1E696B050] exabits];
      v114[13] = v92;
      v91 = [MEMORY[0x1E696B050] petabits];
      v114[14] = v91;
      v90 = [MEMORY[0x1E696B050] terabits];
      v114[15] = v90;
      v89 = [MEMORY[0x1E696B050] gigabits];
      v114[16] = v89;
      v88 = [MEMORY[0x1E696B050] megabits];
      v114[17] = v88;
      v87 = [MEMORY[0x1E696B050] kilobits];
      v114[18] = v87;
      v86 = [MEMORY[0x1E696B050] yobibytes];
      v114[19] = v86;
      v85 = [MEMORY[0x1E696B050] zebibytes];
      v114[20] = v85;
      v84 = [MEMORY[0x1E696B050] exbibytes];
      v114[21] = v84;
      v83 = [MEMORY[0x1E696B050] pebibytes];
      v114[22] = v83;
      v82 = [MEMORY[0x1E696B050] tebibytes];
      v114[23] = v82;
      v81 = [MEMORY[0x1E696B050] gibibytes];
      v114[24] = v81;
      v80 = [MEMORY[0x1E696B050] mebibytes];
      v114[25] = v80;
      v79 = [MEMORY[0x1E696B050] kibibytes];
      v114[26] = v79;
      v69 = [MEMORY[0x1E696B050] yobibits];
      v114[27] = v69;
      v70 = [MEMORY[0x1E696B050] zebibits];
      v114[28] = v70;
      v71 = [MEMORY[0x1E696B050] exbibits];
      v114[29] = v71;
      v72 = [MEMORY[0x1E696B050] pebibits];
      v114[30] = v72;
      v73 = [MEMORY[0x1E696B050] tebibits];
      v114[31] = v73;
      v74 = [MEMORY[0x1E696B050] gibibits];
      v114[32] = v74;
      v75 = [MEMORY[0x1E696B050] mebibits];
      v114[33] = v75;
      v76 = [MEMORY[0x1E696B050] kibibits];
      v114[34] = v76;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:35];

LABEL_36:
LABEL_37:

LABEL_38:
LABEL_39:

      goto LABEL_41;
    case 21:
      v1 = [MEMORY[0x1E696B068] terawatts];
      v111[0] = v1;
      v105 = [MEMORY[0x1E696B068] gigawatts];
      v111[1] = v105;
      v104 = [MEMORY[0x1E696B068] megawatts];
      v111[2] = v104;
      v53 = [MEMORY[0x1E696B068] kilowatts];
      v111[3] = v53;
      v54 = [MEMORY[0x1E696B068] watts];
      v111[4] = v54;
      v55 = [MEMORY[0x1E696B068] milliwatts];
      v111[5] = v55;
      v56 = [MEMORY[0x1E696B068] microwatts];
      v111[6] = v56;
      v57 = [MEMORY[0x1E696B068] nanowatts];
      v111[7] = v57;
      v58 = [MEMORY[0x1E696B068] picowatts];
      v111[8] = v58;
      v59 = [MEMORY[0x1E696B068] femtowatts];
      v111[9] = v59;
      v60 = [MEMORY[0x1E696B068] horsepower];
      v111[10] = v60;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:11];

LABEL_41:
      goto LABEL_42;
    case 22:
      v1 = [MEMORY[0x1E696B070] newtonsPerMetersSquared];
      v110[0] = v1;
      v106 = [MEMORY[0x1E696B070] gigapascals];
      v110[1] = v106;
      v61 = [MEMORY[0x1E696B070] megapascals];
      v110[2] = v61;
      v62 = [MEMORY[0x1E696B070] kilopascals];
      v110[3] = v62;
      v63 = [MEMORY[0x1E696B070] hectopascals];
      v110[4] = v63;
      v64 = [MEMORY[0x1E696B070] inchesOfMercury];
      v110[5] = v64;
      v65 = [MEMORY[0x1E696B070] bars];
      v110[6] = v65;
      v66 = [MEMORY[0x1E696B070] millibars];
      v110[7] = v66;
      v67 = [MEMORY[0x1E696B070] millimetersOfMercury];
      v110[8] = v67;
      v68 = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
      v110[9] = v68;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:10];

LABEL_42:
      break;
    default:
      v10 = MEMORY[0x1E695E0F0];
      break;
  }

  v77 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __LNMeasurementUnitTypeToUnit_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 symbol];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

__CFString *LNChangeEffectAsString(uint64_t a1)
{
  if (a1 == -1)
  {
    v7 = @"Unknown";
  }

  else
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if ((v1 & 0x301) != 0)
    {
      v4 = @"Non Idempotent";
    }

    else
    {
      v4 = @"Idempotent";
    }

    [v2 addObject:v4];
    if ((v1 & 0x100) != 0)
    {
      [v3 addObject:@"Destructive"];
    }

    if ((v1 & 0x200) != 0)
    {
      [v3 addObject:@"Irrevocable"];
    }

    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 componentsJoinedByString:{@", "}];
    v7 = [v5 stringWithFormat:@"[ %@ ]", v6];
  }

  return v7;
}

__CFString *LNSideEffectAsString(uint64_t a1)
{
  v1 = @"Unknown";
  if (!a1)
  {
    v1 = @"None";
  }

  if (a1 == 1)
  {
    return @"Change";
  }

  else
  {
    return v1;
  }
}

void sub_18F0889F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8615(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18F088D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t macho_good_enough_slice(const char *a1, void *a2)
{
  v3 = a2;
  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v7 = *__error();
  }

  else
  {
    v5 = v4;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = -1;
    callback[0] = MEMORY[0x1E69E9820];
    callback[1] = 3221225472;
    callback[2] = __macho_good_enough_slice_block_invoke;
    callback[3] = &unk_1E72B1538;
    v19 = 16777228;
    v20 = -2147483646;
    v6 = v3;
    v16 = v6;
    v17 = &v25;
    v18 = &v21;
    v7 = macho_for_each_slice(a1, callback);
    if (!v7)
    {
      if ((v26[3] & 1) != 0 || *(v22 + 6) == -1)
      {
        v7 = 0;
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __macho_good_enough_slice_block_invoke_78;
        v9[3] = &unk_1E72B1538;
        v11 = &v21;
        v13 = 16777228;
        v14 = -2147483646;
        v10 = v6;
        v12 = &v25;
        v7 = macho_for_each_slice(a1, v9);
      }
    }

    close(v5);
    if (!v7)
    {
      if (*(v26 + 24))
      {
        v7 = 0;
      }

      else
      {
        v7 = 86;
      }
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  return v7;
}

void sub_18F088F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

id _URLFromLibraryName(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a1 UTF8String];
  if (!strncmp(v12, "@executable_path/", 0x11uLL))
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
    v15 = MEMORY[0x1E695DFF8];
    v16 = v12 + 17;
LABEL_8:
    v17 = [v15 fileURLWithFileSystemRepresentation:v16 isDirectory:a2 relativeToURL:v14];
    v13 = [v17 absoluteURL];

    goto LABEL_9;
  }

  if (!strncmp(v12, "@loader_path/", 0xDuLL))
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:1];
    v15 = MEMORY[0x1E695DFF8];
    v16 = v12 + 13;
    goto LABEL_8;
  }

  if ((a2 & 1) == 0 && !strncmp(v12, "@rpath/", 7uLL))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v27 = v11;
      v23 = *v29;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = _URLFromLibraryName(*(*(&v28 + 1) + 8 * i), 1, v9, v10, v20);
          v26 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 + 7 isDirectory:0 relativeToURL:v25];
          if ([v26 checkResourceIsReachableAndReturnError:0])
          {
            v13 = [v26 absoluteURL];

            goto LABEL_22;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_22:
      v11 = v27;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:0];
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __macho_good_enough_slice_block_invoke(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 == -17958193)
  {
    v5 = result;
    if (a2[1] == *(result + 56))
    {
      v6 = a2[2];
      if (v6 == *(result + 60))
      {
        v8 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v5 + 56);
          v10 = *(v5 + 60);
          v12[0] = 67109376;
          v12[1] = v9;
          v13 = 1024;
          v14 = v10;
          _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_DEBUG, "found exact slice for architecture (%#x/%#x)", v12, 0xEu);
        }

        result = (*(*(v5 + 32) + 16))();
        *a5 = 1;
        *(*(*(v5 + 40) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(result + 48) + 8) + 24) = v6;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __macho_good_enough_slice_block_invoke_78(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2 == -17958193)
  {
    v6 = result;
    if (a2[1] == *(result + 56) && a2[2] == *(*(*(result + 40) + 8) + 24))
    {
      v8 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = a2[1];
        v10 = a2[2];
        v11 = *(v6 + 56);
        v12 = *(v6 + 60);
        v14[0] = 67109888;
        v14[1] = v9;
        v15 = 1024;
        v16 = v10;
        v17 = 1024;
        v18 = v11;
        v19 = 1024;
        v20 = v12;
        _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_DEBUG, "found good-enough slice (%#x/%#x) for architecture (%#x/%#x)", v14, 0x1Au);
      }

      result = (*(*(v6 + 32) + 16))();
      *a5 = 1;
      *(*(*(v6 + 48) + 8) + 24) = 1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mh_validate(int *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 == -17958193)
  {
    if ((a1[6] & 0x80) == 0)
    {
      v3 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v16[0]) = 0;
        v4 = "non-two-level images not supported.";
        v5 = v3;
        v6 = 2;
LABEL_7:
        _os_log_impl(&dword_18EF7E000, v5, OS_LOG_TYPE_FAULT, v4, v16, v6);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    v11 = a1[5];
    if (a2 - 28 >= v11)
    {
      v13 = a1[4];
      if (!v13)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v14 = (a1 + 8);
      v15 = a1 + v11 + 32;
      while (v14 <= v15)
      {
        v14 += *(v14 + 4);
        if (v14 > v15)
        {
          break;
        }

        v8 = 0;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v3 = getLNLogCategoryMetadata();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      LOWORD(v16[0]) = 0;
      v12 = "load command extends past declared end of commands.";
    }

    else
    {
      v3 = getLNLogCategoryMetadata();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        v8 = 88;
        goto LABEL_9;
      }

      LOWORD(v16[0]) = 0;
      v12 = "load commands extend past end of slice.";
    }

    _os_log_impl(&dword_18EF7E000, v3, OS_LOG_TYPE_ERROR, v12, v16, 2u);
    goto LABEL_23;
  }

  v3 = getLNLogCategoryMetadata();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v7 = *a1;
    v16[0] = 67109120;
    v16[1] = v7;
    v4 = "unsupported file magic %08x in package resolution";
    v5 = v3;
    v6 = 8;
    goto LABEL_7;
  }

LABEL_8:
  v8 = 45;
LABEL_9:

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __mh_symlibnames_block_invoke(void *a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  if (v5)
  {
    v10 = 0;
    v11 = a1[6];
    while (1)
    {
      if (!*(v11 + 8 * v10))
      {
        v12 = strlen(*(a1[7] + 8 * v10));
        if (!strncmp(*(a1[7] + 8 * v10), a2, v12))
        {
          break;
        }
      }

      if (v5 == ++v10)
      {
        goto LABEL_6;
      }
    }

    v14 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1[7] + 8 * v10);
      v18 = 136315650;
      v19 = v15;
      v20 = 2080;
      v21 = a2;
      v22 = 2080;
      v23 = a3;
      _os_log_impl(&dword_18EF7E000, v14, OS_LOG_TYPE_DEBUG, "%s -> %s from %s", &v18, 0x20u);
    }

    *(a1[6] + 8 * v10) = a3;
    v16 = *(a1[4] + 8);
    v17 = *(v16 + 24) + 1;
    *(v16 + 24) = v17;
    if (v17 == a1[5])
    {
      *a5 = 1;
    }
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
}

void *mh_cmdstrs(_DWORD *a1, void *a2, unsigned int (*a3)(void))
{
  if (a1[4])
  {
    v6 = 0;
    v7 = 0;
    v8 = 7;
    if (*a1 == -17958193)
    {
      v8 = 8;
    }

    v9 = &a1[v8];
    while (1)
    {
      if (a3(*v9))
      {
        if (!mh_cmdstr(v9))
        {
          return 0;
        }

        ++v6;
      }

      ++v7;
      v9 = (v9 + v9[1]);
      if (v7 >= a1[4])
      {
        goto LABEL_11;
      }
    }
  }

  v6 = 0;
LABEL_11:
  v10 = malloc_type_malloc(8 * (v6 + 1), 0x10040436913F5uLL);
  if (a1[4])
  {
    v11 = 0;
    v12 = 0;
    v13 = 7;
    if (*a1 == -17958193)
    {
      v13 = 8;
    }

    v14 = &a1[v13];
    do
    {
      if (a3(*v14))
      {
        v10[v11++] = mh_cmdstr(v14);
      }

      ++v12;
      v14 = (v14 + v14[1]);
    }

    while (v12 < a1[4]);
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v10[v15] = 0;
  *a2 = v6;
  return v10;
}

id strlist_to_array(uint64_t *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 8 * a2;
    do
    {
      v7 = *a1++;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      [v4 addObject:v8];

      v6 -= 8;
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v9;
}

uint64_t mh_cmdstr(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 <= *(a1 + 4))
  {
    return a1 + v3;
  }

  v8 = v1;
  v9 = v2;
  v4 = getLNLogCategoryMetadata();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_18EF7E000, v4, OS_LOG_TYPE_ERROR, "load command string extends past end of load command.", v7, 2u);
  }

  v5 = __error();
  result = 0;
  *v5 = 88;
  return result;
}

id LNLinkedFrameworksAtPath(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8615;
  v10 = __Block_byref_object_dispose__8616;
  v11 = MEMORY[0x1E695E0F0];
  v2 = [v1 fileSystemRepresentation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __LNLinkedFrameworksAtPath_block_invoke;
  v5[3] = &unk_1E72B1588;
  v5[4] = &v6;
  macho_good_enough_slice(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_18F08A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LNLinkedFrameworksAtPath_block_invoke(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = mh_validate(a2, a4);
  *__error() = v6;
  if (!v6)
  {
    v13 = 0;
    v7 = mh_cmdstrs(a2, &v13, is_load);
    if (v7)
    {
      v8 = v7;
      v9 = strlist_to_array(v7, v13);
      v10 = [v9 if_compactMap:&__block_literal_global_85];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      free(v8);
    }
  }
}

id __LNLinkedFrameworksAtPath_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 rangeOfString:@".framework"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v2 substringWithRange:{0, v3 + v4}];
    v5 = [v6 fileURLWithPath:v7];
  }

  return v5;
}