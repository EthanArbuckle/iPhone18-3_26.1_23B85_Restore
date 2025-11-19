uint64_t sub_1DB48F3DC(uint64_t a1, uint64_t a2)
{
  v27 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 64);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v4 = ~(-1 << v8);
  }

  v9 = v4 & *(a1 + 64);
  v10 = (v3 + 63) >> 6;
  v11 = (v8 + 63) >> 6;

  v28 = a1;

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (!v6)
    {
      if (v10 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v15 >= v10)
        {
          break;
        }

        v6 = *(v27 + 8 * v15);
        ++v13;
        if (v6)
        {
          v13 = v15;
          goto LABEL_18;
        }
      }

      v6 = 0;
      v30 = 0;
      v20 = 0;
      v13 = v17;
      if (v9)
      {
        goto LABEL_24;
      }

LABEL_19:
      while (1)
      {
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v21 >= v11)
        {
          if (v20)
          {
            goto LABEL_33;
          }

          v23 = 0;
          goto LABEL_35;
        }

        v9 = *(v7 + 8 * v21);
        ++v14;
        if (v9)
        {
          v14 = v21;
          goto LABEL_24;
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }

    v15 = v13;
LABEL_18:
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = (*(a2 + 48) + ((v15 << 10) | (16 * v18)));
    v20 = v19[1];
    v30 = *v19;

    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_24:
    v22 = (*(v28 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
    v24 = *v22;
    v23 = v22[1];

    if (!v20)
    {
      break;
    }

    if (!v23)
    {
LABEL_33:

      goto LABEL_36;
    }

    v9 &= v9 - 1;
    if (v30 == v24 && v20 == v23)
    {
    }

    else
    {
      v26 = sub_1DB50BA30();

      if ((v26 & 1) == 0)
      {

        return 0;
      }
    }
  }

LABEL_35:

  if (v23)
  {
LABEL_36:

    return 0;
  }

  return 1;
}

uint64_t PageMetrics.InvocationPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1DB50BA40();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.InvocationPoint.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t PageMetrics.InvocationPoint.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PageMetrics.Instruction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v22);
  *&v19 = v6;
  MetricsData.init(deserializing:using:)(v22, &v19, &v23);
  if (v3)
  {
    return sub_1DB3151CC(a1);
  }

  v27 = *(&v23 + 1);
  v18 = v23;
  v17 = v24;
  v8 = *(&v24 + 1);
  v9 = v25;
  v10 = v26;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001DB5290B0, v22);
  JSONObject.array.getter(&v19);
  sub_1DB3151CC(v22);
  if (!*(&v20 + 1))
  {

    sub_1DB30623C(&v19, &qword_1ECC42E28, &qword_1DB50FB20);
    sub_1DB315178();
    swift_allocError();
    *v16 = 0xD000000000000010;
    v16[1] = 0x80000001DB5290B0;
    v16[2] = 0x20000001F56FE800uLL;
    v16[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v23 = v19;
  v24 = v20;
  v11 = v21;
  v25 = v21;
  v12 = *(&v20 + 1);
  __swift_project_boxed_opaque_existential_1(&v23, *(&v20 + 1));
  v13 = (*(v11 + 56))(sub_1DB48FA88, 0, &type metadata for PageMetrics.InvocationPoint, v12, v11);
  v14 = sub_1DB324A20(v13);

  sub_1DB3151CC(a1);
  result = sub_1DB314F08(&v23);
  v15 = v27;
  *a3 = v18;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v14;
  return result;
}

uint64_t sub_1DB48FA88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DB330D60(a1, v8);
  if (v9)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v3, v7);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    result = sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

__n128 PageMetrics.Instruction.init(data:invocationPoints:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t PageMetrics.Instruction.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 PageMetrics.Instruction.data.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t PageMetrics.Instruction.invocationPoints.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t PageMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x7463757274736E69, 0xEC000000736E6F69, &v16);

  v6 = sub_1DB320BC8(&v16, v5);
  JSONObject.subscript.getter(0x6C65694665676170, 0xEA00000000007364, v15);
  sub_1DB330D60(v15, v13);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB408B14(&v16);
    sub_1DB3151CC(v15);
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (*(&v17 + 1))
    {
      v7 = *__swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v13[0] = 0;
      sub_1DB50A4A0();
      v8 = v13[0];
      sub_1DB317740(&v16);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB3151CC(v15);
    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_1DB30623C(&v16, &qword_1ECC42EA0, &qword_1DB50FB88);
  v8 = 0;
LABEL_6:
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v16);
  v13[0] = v5;
  ScalarDictionary.init(tryDeserializing:using:)(&v16, v13, v15);
  v9 = v15[0];
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB529090, v15);
  sub_1DB330D60(v15, v13);
  if (!v14)
  {
    sub_1DB3151CC(v15);
    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1DB408B14(&v16);
  sub_1DB3151CC(v15);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (!*(&v17 + 1))
  {
LABEL_11:
    sub_1DB30623C(&v16, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_12:
    v11 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  v10 = *__swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
  v13[0] = 0;
  sub_1DB50A4A0();
  v11 = v13[0];
  sub_1DB317740(&v16);
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  result = sub_1DB3151CC(a1);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v11;
  return result;
}

uint64_t PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = a4;
  return result;
}

unint64_t static PageMetrics.notInstrumented.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC8];
  a1[3] = result;
  return result;
}

uint64_t PageMetrics.instructions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PageMetrics.pageFields.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PageMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t PageMetrics.clickLocationFields.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t PageMetrics.mergingWith(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v2;
  v9 = v2[2];
  v15 = MEMORY[0x1E69E7CC0];

  sub_1DB3993D8(v8);
  sub_1DB3993D8(v4);
  v10 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_1DB399DEC(v7, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = v14;

  *a2 = v10;
  a2[1] = v5;
  a2[2] = v12;
  a2[3] = v6;
  return result;
}

uint64_t PageMetrics._isEqual(to:)(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if ((sub_1DB48EEF0(*a1, v5) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DB404C28(v6, v2, 3uLL, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1DB33C710(v8, v4);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1DB404C28(v7, v3, 3uLL, 0);
}

uint64_t sub_1DB490390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 1635017060;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x80000001DB5290B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 1635017060;
  }

  if (*a2)
  {
    v7 = 0x80000001DB5290B0;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB490434()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4904B4()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB490520()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB49059C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

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

void sub_1DB4905FC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB5290B0;
  v3 = 1635017060;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DB490638()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_1DB490670@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

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

uint64_t sub_1DB4906D4(uint64_t a1)
{
  v2 = sub_1DB491D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB490710(uint64_t a1)
{
  v2 = sub_1DB491D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.Instruction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461B8, &qword_1DB51EEE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB491D30();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  sub_1DB39A15C();
  sub_1DB50B780();
  v11 = v23;
  v28 = v24;
  v21 = v25;
  v19 = v22;
  v20 = v26;
  v12 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461C8, &qword_1DB51EEF0);
  v29 = 1;
  sub_1DB491D84();
  sub_1DB50B780();
  v13 = sub_1DB324A20(v22);
  v18 = v11;
  v14 = v13;

  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v19;
  *(a2 + 8) = v15;
  *(a2 + 16) = v28;
  v16 = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v16;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.Instruction.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461F0, &qword_1DB51EF00);
  v20 = *(v22 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v18 - v4;
  v6 = v1[1];
  v21 = *v1;
  v29 = *(v1 + 16);
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v19 = v1[6];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB491D30();

  sub_1DB50BE40();
  v11 = v22;
  v24[0] = v21;
  v24[1] = v6;
  v12 = v5;
  LOBYTE(v25) = v29;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v30 = 0;
  sub_1DB39A2D4();
  v13 = v23;
  sub_1DB50B8A0();

  if (v13)
  {
    return (*(v20 + 8))(v5, v11);
  }

  v15 = *(v19 + 2);
  if (v15)
  {
    v21 = v5;
    v16 = sub_1DB3241AC(v15, 0);
    v23 = sub_1DB3243BC(v24, v16 + 4, v15, v19);

    result = sub_1DB2FEA60();
    if (v23 != v15)
    {
      __break(1u);
      return result;
    }

    v17 = v20;
    v12 = v21;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v20;
  }

  v24[0] = v16;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC461C8, &qword_1DB51EEF0);
  sub_1DB491EE0();
  sub_1DB50B8A0();

  return (*(v17 + 8))(v12, v11);
}

uint64_t sub_1DB490D20()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB490DF0()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB490EAC()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB490F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB491CE4();
  *a2 = result;
  return result;
}

void sub_1DB490FA8(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001DB529090;
  }

  if (*v1)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
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

unint64_t sub_1DB491034()
{
  v1 = 0x7463757274736E69;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C65694665676170;
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

uint64_t sub_1DB4910BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB491CE4();
  *a1 = result;
  return result;
}

uint64_t sub_1DB4910E4(uint64_t a1)
{
  v2 = sub_1DB49203C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB491120(uint64_t a1)
{
  v2 = sub_1DB49203C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46210, &qword_1DB51EF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB49203C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v27) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46220, &qword_1DB51EF10);
    LOBYTE(v24) = 0;
    sub_1DB492090();
    sub_1DB50B780();
    v12 = v27;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v27) = 1;
  if (sub_1DB50B7B0())
  {
    LOBYTE(v24) = 1;
    sub_1DB324D00();
    sub_1DB50B780();
    sub_1DB330D60(&v27, v22);
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_1DB408B14(&v24);
      __swift_destroy_boxed_opaque_existential_0(v22);
      if (*(&v25 + 1))
      {
        v13 = *__swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
        v22[0] = 0;
        sub_1DB50A4A0();
        sub_1DB3151CC(&v27);
        v30 = v22[0];
        sub_1DB317740(&v24);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DB30623C(v22, &qword_1ECC42E38, &qword_1DB50FB80);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
    }

    sub_1DB3151CC(&v27);
    sub_1DB30623C(&v24, &qword_1ECC42EA0, &qword_1DB50FB88);
  }

  v30 = 0;
LABEL_13:
  LOBYTE(v27) = 2;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    LOBYTE(v24) = 2;
    sub_1DB39A328(&qword_1ECC444B8);
    sub_1DB50B780();
    v21 = v12;
    v14 = v27;
  }

  else
  {
    v21 = v12;
    v14 = MEMORY[0x1E69E7CC8];
  }

  v20 = v14;
  v15 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  LOBYTE(v27) = 3;
  if ((sub_1DB50B7B0() & 1) == 0)
  {
    v16 = v21;
    goto LABEL_26;
  }

  LOBYTE(v22[0]) = 3;
  sub_1DB324D00();
  sub_1DB50B780();
  sub_1DB330D60(&v24, v22);
  v16 = v21;
  if (!v23)
  {
    sub_1DB3151CC(&v24);
    sub_1DB30623C(v22, &qword_1ECC42E38, &qword_1DB50FB80);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_1DB408B14(&v27);
  sub_1DB3151CC(&v24);
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (!*(&v28 + 1))
  {
LABEL_24:
    sub_1DB30623C(&v27, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_25:
    v15 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
    goto LABEL_26;
  }

  v17 = *__swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v22[0] = 0;
  sub_1DB50A4A0();
  v15 = v22[0];
  sub_1DB317740(&v27);
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_26:
  (*(v6 + 8))(v9, v5);
  v18 = v30;
  *a2 = v16;
  a2[1] = v18;
  a2[2] = v20;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PageMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46240, &qword_1DB51EF18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *v1;
  v31 = v1[1];
  v8 = v1[3];
  v25 = v1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1;
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v9);
  sub_1DB49203C();

  v14 = v4;
  sub_1DB50BE40();
  v28[0] = v7;
  LOBYTE(v26) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46220, &qword_1DB51EF10);
  sub_1DB4921EC();
  sub_1DB50B8A0();
  if (v2)
  {

    return (*(v5 + 8))(v13, v4);
  }

  v16 = v25;

  v17 = v31;
  if (!v31)
  {
    v26 = 0u;
    v27 = 0u;
    v19 = v5;
    v20 = v8;
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v26 = v17;
  *(&v27 + 1) = v18;
  v19 = v5;
  v20 = v8;
  if (!v18)
  {
LABEL_7:

    sub_1DB30623C(&v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v21 = swift_allocObject();
  sub_1DB30C200(&v26, (v21 + 16));

  v22 = &off_1F56FB6B0;
  v23 = &type metadata for FoundationValue;
LABEL_8:
  v28[0] = v21;
  v28[1] = 0;
  v28[2] = 0;
  v29 = v23;
  v30 = v22;
  LOBYTE(v26) = 1;
  sub_1DB325078();
  sub_1DB50B8A0();
  sub_1DB3151CC(v28);
  v28[0] = v16;
  LOBYTE(v26) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
  sub_1DB39A328(&qword_1ECC44500);
  sub_1DB50B8A0();

  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v26 = v20;
  v29 = &type metadata for FoundationValue;
  v30 = &off_1F56FB6B0;
  v28[0] = swift_allocObject();
  sub_1DB30C200(&v26, (v28[0] + 16));
  LOBYTE(v26) = 3;

  sub_1DB50B8A0();
  sub_1DB3151CC(v28);
  return (*(v19 + 8))(v13, v14);
}

uint64_t PageMetrics.Instruction._isEqual(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[3];
  v12 = v1[4];
  v14 = v1[5];
  v13 = v1[6];
  v22 = *v1;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v14;
  v17[0] = v2;
  v17[1] = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v8;

  v15 = MetricsData._isEqual(to:)(v17);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return sub_1DB325B44(v13, v7);
}

unint64_t PageMetrics.init(instructions:pageFields:custom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = result;
  return result;
}

uint64_t sub_1DB491CE4()
{
  v0 = sub_1DB50B680();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DB491D30()
{
  result = qword_1ECC461C0;
  if (!qword_1ECC461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461C0);
  }

  return result;
}

unint64_t sub_1DB491D84()
{
  result = qword_1ECC461D0;
  if (!qword_1ECC461D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461C8, &qword_1DB51EEF0);
    sub_1DB491E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461D0);
  }

  return result;
}

unint64_t sub_1DB491E08()
{
  result = qword_1ECC461D8;
  if (!qword_1ECC461D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461E0, &qword_1DB51EEF8);
    sub_1DB491E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461D8);
  }

  return result;
}

unint64_t sub_1DB491E8C()
{
  result = qword_1ECC461E8;
  if (!qword_1ECC461E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461E8);
  }

  return result;
}

unint64_t sub_1DB491EE0()
{
  result = qword_1ECC461F8;
  if (!qword_1ECC461F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461C8, &qword_1DB51EEF0);
    sub_1DB491F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461F8);
  }

  return result;
}

unint64_t sub_1DB491F64()
{
  result = qword_1ECC46200;
  if (!qword_1ECC46200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461E0, &qword_1DB51EEF8);
    sub_1DB491FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46200);
  }

  return result;
}

unint64_t sub_1DB491FE8()
{
  result = qword_1ECC46208;
  if (!qword_1ECC46208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46208);
  }

  return result;
}

unint64_t sub_1DB49203C()
{
  result = qword_1ECC46218;
  if (!qword_1ECC46218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46218);
  }

  return result;
}

unint64_t sub_1DB492090()
{
  result = qword_1ECC46228;
  if (!qword_1ECC46228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46220, &qword_1DB51EF10);
    sub_1DB492114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46228);
  }

  return result;
}

unint64_t sub_1DB492114()
{
  result = qword_1ECC46230;
  if (!qword_1ECC46230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43050, &qword_1DB510210);
    sub_1DB492198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46230);
  }

  return result;
}

unint64_t sub_1DB492198()
{
  result = qword_1ECC46238;
  if (!qword_1ECC46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46238);
  }

  return result;
}

unint64_t sub_1DB4921EC()
{
  result = qword_1ECC46248;
  if (!qword_1ECC46248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46220, &qword_1DB51EF10);
    sub_1DB492270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46248);
  }

  return result;
}

unint64_t sub_1DB492270()
{
  result = qword_1ECC46250;
  if (!qword_1ECC46250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43050, &qword_1DB510210);
    sub_1DB4922F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46250);
  }

  return result;
}

unint64_t sub_1DB4922F4()
{
  result = qword_1ECC46258;
  if (!qword_1ECC46258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46258);
  }

  return result;
}

unint64_t sub_1DB49234C()
{
  result = qword_1ECC46260;
  if (!qword_1ECC46260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46260);
  }

  return result;
}

unint64_t sub_1DB4923F4()
{
  result = qword_1ECC46268;
  if (!qword_1ECC46268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46268);
  }

  return result;
}

unint64_t sub_1DB49244C()
{
  result = qword_1ECC46270;
  if (!qword_1ECC46270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46270);
  }

  return result;
}

unint64_t sub_1DB4924A4()
{
  result = qword_1ECC46278;
  if (!qword_1ECC46278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46278);
  }

  return result;
}

unint64_t sub_1DB4924FC()
{
  result = qword_1ECC46280;
  if (!qword_1ECC46280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46280);
  }

  return result;
}

unint64_t sub_1DB492554()
{
  result = qword_1ECC46288;
  if (!qword_1ECC46288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46288);
  }

  return result;
}

unint64_t sub_1DB4925AC()
{
  result = qword_1ECC46290[0];
  if (!qword_1ECC46290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46290);
  }

  return result;
}

uint64_t CodeByExpressibleByJSON.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DB50BA00();
  return 0;
}

uint64_t CodeByExpressibleByJSON.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v41 = *(a2 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v10;
  v11 = type metadata accessor for CodeByExpressibleByJSON();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB50BDD0();
  if (v4)
  {
    v29 = v43;
    v51 = v4;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v47 = v49;
      v48 = v50;
      v19 = sub_1DB50B3E0();
      swift_allocError();
      v21 = v20;
      v22 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1DB50BDB0();
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52FE60);
      v23 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v23);

      MEMORY[0x1E1285C70](8250, 0xE200000000000000);
      sub_1DB50B530();
      sub_1DB315178();
      swift_allocError();
      v24 = v47;
      v25 = *(&v47 + 1);
      v26 = v48;
      *v27 = v47;
      *(v27 + 8) = v25;
      *(v27 + 16) = v26;
      sub_1DB492BEC(v24, v25, v26);
      sub_1DB50B3C0();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      sub_1DB3BC478(v47, *(&v47 + 1), v48);
    }
  }

  else
  {
    v37 = v15;
    v38 = v12;
    v40 = v9;
    v39 = v11;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    sub_1DB324D00();
    sub_1DB50BA80();
    v29 = v43;
    v30 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v31 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v31);
    sub_1DB3171C0(&v47, v46);
    v45 = v51;
    v32 = a3;
    v33 = *(a3 + 8);

    v34 = v40;
    v35 = v44;
    v33(v46, &v45, v44, v32);

    sub_1DB3151CC(&v47);
    v36 = v37;
    (*(v41 + 32))(v37, v34, v35);
    __swift_destroy_boxed_opaque_existential_0(&v49);
    (*(v38 + 32))(v42, v36, v39);
  }

  return __swift_destroy_boxed_opaque_existential_0(v29);
}

id sub_1DB492BEC(int a1, id a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v4 <= 1)
    {
    }

    if (v4 == 2)
    {
    }

LABEL_16:
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_16;
    }

    return a2;
  }

  return result;
}

uint64_t sub_1DB492D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CodeByExpressibleByJSON<>.== infix(_:_:)();
}

uint64_t CodeByExpressibleByJSON<>.hashValue.getter(uint64_t a1)
{
  sub_1DB50BCF0();
  v2 = *(a1 + 16);
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB492D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  CodeByExpressibleByJSON<>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

uint64_t CodeByExpressibleByJSON<>.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a4;
  v18 = type metadata accessor for CodeByExpressibleByJSON();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v12);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1DB324D00();
  sub_1DB50BA80();
  v23[0] = v20[0];
  v23[1] = v20[1];
  v24 = v21;
  __swift_destroy_boxed_opaque_existential_0(v22);
  v16 = v25;
  sub_1DB3171C0(v23, v22);
  *&v20[0] = v16;
  v14 = *(a3 + 8);

  v14(v22, v20, a2, a3);
  sub_1DB3151CC(v23);

  (*(v7 + 32))(v19, v10, v18);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB493084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 24);
  return CodeByExpressibleByJSON<>.init(_partiallyFrom:)(a1, *(a2 + 16), v4, a4);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v40 = sub_1DB50A230();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a5;
  v15 = *v5;
  v16 = *(v5 + 16);
  v43 = *a5;
  v41 = v15;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v15 = v41;
    v14 = v43;
  }

  v17 = qword_1ECC678E8;
  *&v47[0] = a3;
  *(&v47[0] + 1) = a4;
  v47[1] = v14;
  v47[2] = v15;
  LOBYTE(v48) = v16;
  v39 = a1;
  *(&v48 + 1) = a1;
  v49 = a2;
  *&v50[4] = a2;
  v50[2] = v15;
  v50[3] = v48;
  v50[0] = v47[0];
  v50[1] = v14;
  sub_1DB493638(v50);
  v18 = memcpy(v46, v50, sizeof(v46));
  v19 = *(v17 + 16);
  MEMORY[0x1EEE9AC00](v18);
  *&v36[-16] = v46;

  os_unfair_lock_lock(v19 + 8);
  sub_1DB495708(v19 + 16);
  os_unfair_lock_unlock(v19 + 8);
  sub_1DB30623C(v47, &qword_1ECC46390, &qword_1DB51F640);
  v20 = v41;
  v21 = sub_1DB50B350();
  v45 = v43;
  sub_1DB3578F4(v21, v22, a3, a4, &v45);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  __swift_project_value_buffer(v23, qword_1ECC678F0);
  *&v41 = a3;
  MEMORY[0x1E1285D20](a3, a4);
  v24 = v42;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v25);

  v26 = sub_1DB50A250();
  v27 = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v38 = v11;
  v37 = v27;
  if ((v16 & 1) == 0)
  {

    if (!v20)
    {
      __break(1u);
LABEL_9:

      return (*(v11 + 8))(v24, v40);
    }

    goto LABEL_14;
  }

  if (v20 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v20 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = &v45;
LABEL_14:
  v29 = *(&v43 + 1);
  v30 = v43;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v44 = v32;
  *&v45 = v30;
  *v31 = 134218754;
  *(&v45 + 1) = v29;
  sub_1DB34D440();
  *(v31 + 4) = v33;
  *(v31 + 12) = 2080;
  *(v31 + 14) = sub_1DB3D4EE8(v41, a4, &v44);
  *(v31 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v31 + 24) = v29 / *&qword_1EE30ED50 + v30;
  *(v31 + 32) = 2080;
  *(v31 + 34) = sub_1DB3D4EE8(v39, a2, &v44);
  v34 = v42;
  v35 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v37, v35, v20, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v31, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1E1288220](v32, -1, -1);
  MEMORY[0x1E1288220](v31, -1, -1);

  return (*(v38 + 8))(v34, v40);
}

uint64_t sub_1DB493638(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xA000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t PageRenderField<>.callAsFunction(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = *v3;
  v13 = *(v3 + 16);
  v36 = *a3;
  v34 = v12;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v12 = v34;
    v11 = v36;
  }

  v14 = qword_1ECC678E8;
  *&v40[0] = a1;
  *(&v40[0] + 1) = a2;
  v40[2] = v12;
  v40[1] = v11;
  LOBYTE(v40[3]) = v13;
  sub_1DB49713C(v40);
  v15 = memcpy(v39, v40, sizeof(v39));
  v16 = *(v14 + 16);
  MEMORY[0x1EEE9AC00](v15);
  *(&v32 - 2) = v39;

  os_unfair_lock_lock(v16 + 8);
  sub_1DB497898(v16 + 16);
  os_unfair_lock_unlock(v16 + 8);

  v17 = v34;
  v18 = sub_1DB50B350();
  v38 = v36;
  sub_1DB3578F4(v18, v19, a1, a2, &v38);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v20 = sub_1DB50A270();
  __swift_project_value_buffer(v20, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  v21 = v35;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v22);

  v23 = sub_1DB50A250();
  LODWORD(v34) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = v8;
  v33 = v7;
  if ((v13 & 1) == 0)
  {

    if (!v17)
    {
      __break(1u);
LABEL_9:

      return (*(v8 + 8))(v21, v7);
    }

    goto LABEL_14;
  }

  if (v17 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v17 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v17 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = &v38;
LABEL_14:
  v25 = *(&v36 + 1);
  v26 = v36;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v37 = v28;
  *&v38 = v26;
  *v27 = 134218498;
  *(&v38 + 1) = v25;
  sub_1DB34D440();
  *(v27 + 4) = v29;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_1DB3D4EE8(a1, a2, &v37);
  *(v27 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v27 + 24) = v25 / *&qword_1EE30ED50 + v26;
  v30 = v35;
  v31 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v34, v31, v17, "%{signpost.description:event_time}lluid=%s, instant=%f", v27, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x1E1288220](v28, -1, -1);
  MEMORY[0x1E1288220](v27, -1, -1);

  return (*(v32 + 8))(v30, v33);
}

uint64_t PageRenderField<>.startTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A230();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - v11;
  v12 = *a3;
  v13 = *v3;
  v14 = *(v3 + 16);
  v42 = *(v3 + 3);
  v15 = *(v3 + 32);
  v47 = v12;
  v45 = v13;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v13 = v45;
    v12 = v47;
  }

  v16 = qword_1ECC678E8;
  *&v51[0] = a1;
  *(&v51[0] + 1) = a2;
  v51[2] = v13;
  v51[1] = v12;
  LOBYTE(v51[3]) = v14;
  sub_1DB497214(v51);
  v17 = memcpy(v50, v51, sizeof(v50));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v41 - 2) = v50;

  os_unfair_lock_lock(v18 + 8);
  sub_1DB497898(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);

  v19 = v45;
  *&v49 = sub_1DB50B350();
  *(&v49 + 1) = v20;
  MEMORY[0x1E1285C70](0x6D69547472617453, 0xE900000000000065);
  v22 = *(&v49 + 1);
  v21 = v49;
  v49 = v47;
  sub_1DB3578F4(v21, v22, a1, a2, &v49);

  if ((v15 & 1) == 0)
  {
    if (qword_1ECC42018 != -1)
    {
      v23 = swift_once();
    }

    v24 = qword_1ECC67908;
    MEMORY[0x1EEE9AC00](v23);
    *(&v41 - 4) = a1;
    *(&v41 - 3) = a2;
    *(&v41 - 2) = v42;
    os_unfair_lock_lock(v24 + 10);
    sub_1DB4972F0(&v24[4]);
    os_unfair_lock_unlock(v24 + 10);
  }

  v25 = v46;
  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v27);

  v28 = sub_1DB50A250();
  v29 = sub_1DB50B070();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v41 = v7;
  LODWORD(v45) = v29;
  if ((v14 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_13:

LABEL_21:
      v37 = v44;
      (*(v44 + 16))(v43, v25, v7);
      v38 = sub_1DB50A2C0();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_1DB50A2B0();

      return (*(v37 + 8))(v25, v7);
    }

LABEL_18:
    v31 = *(&v47 + 1);
    v32 = v47;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v34;
    *&v49 = v32;
    *v33 = 134218498;
    *(&v49 + 1) = v31;
    sub_1DB34D440();
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1DB3D4EE8(a1, a2, &v48);
    *(v33 + 22) = 2048;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    *(v33 + 24) = v31 / *&qword_1EE30ED50 + v32;
    v25 = v46;
    v36 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v28, v45, v36, v19, "%{signpost.description:begin_time}lluid=%s, instant=%f", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1E1288220](v34, -1, -1);
    MEMORY[0x1E1288220](v33, -1, -1);

    v7 = v41;
    goto LABEL_21;
  }

  if (v19 >> 32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {

      v19 = &v49;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.endTime(for:at:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v7 = sub_1DB50A280();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DB50A230();
  v67 = *(v65 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = *a3;
  v19 = *v3;
  v20 = *(v3 + 16);
  v62 = *(v3 + 3);
  v21 = *(v3 + 32);
  v66 = v18;
  v63 = v19;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v19 = v63;
    v18 = v66;
  }

  v22 = qword_1ECC678E8;
  *&v72[0] = a1;
  *(&v72[0] + 1) = a2;
  v72[2] = v19;
  v72[1] = v18;
  LOBYTE(v72[3]) = v20;
  sub_1DB497310(v72);
  v23 = memcpy(v71, v72, sizeof(v71));
  v68 = a1;
  v24 = *(v22 + 16);
  MEMORY[0x1EEE9AC00](v23);
  *(&v57 - 2) = v71;

  os_unfair_lock_lock(v24 + 8);
  sub_1DB497898(v24 + 16);
  os_unfair_lock_unlock(v24 + 8);

  v25 = v68;
  *&v70 = sub_1DB50B350();
  *(&v70 + 1) = v26;
  MEMORY[0x1E1285C70](0x656D6954646E45, 0xE700000000000000);
  v28 = *(&v70 + 1);
  v27 = v70;
  v70 = v66;
  sub_1DB3578F4(v27, v28, v25, a2, &v70);

  if ((v21 & 1) == 0)
  {
    if (qword_1ECC42018 != -1)
    {
      v29 = swift_once();
    }

    v30 = qword_1ECC67908;
    MEMORY[0x1EEE9AC00](v29);
    *(&v57 - 4) = v25;
    *(&v57 - 3) = a2;
    *(&v57 - 2) = v62;
    os_unfair_lock_lock(v30 + 10);
    sub_1DB4973EC(&v30[4]);
    os_unfair_lock_unlock(v30 + 10);
  }

  v31 = v67;
  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v32 = sub_1DB50A270();
  __swift_project_value_buffer(v32, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v68, a2);
  sub_1DB50A240();
  v33 = v65;
  (*(v31 + 16))(v14, v17, v65);
  v34 = sub_1DB50A2C0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v39 = v17;
  v40 = v38;
  v38(v39, v33);
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v41);

  v42 = sub_1DB50A250();
  v43 = v64;
  sub_1DB50A2A0();
  LODWORD(v62) = sub_1DB50B060();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v58 = v40;
  if ((v20 & 1) == 0)
  {

    if (!v63)
    {
      __break(1u);
LABEL_13:

      return v40(v43, v33);
    }

    goto LABEL_18;
  }

  if (DWORD1(v63))
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v63 & 0xFFFFF800) == 0xD800)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v63 >> 16 > 0x10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *&v63 = &v70;
LABEL_18:
  v67 = v37;
  v45 = *(&v66 + 1);
  v46 = v66;

  v47 = v59;
  sub_1DB50A2D0();

  v49 = v60;
  v48 = v61;
  if ((*(v60 + 88))(v47, v61) == *MEMORY[0x1E69E93E8])
  {
    v50 = 0;
    v51 = 0;
    *&v66 = "[Error] Interval already ended";
  }

  else
  {
    (*(v49 + 8))(v47, v48);
    *&v66 = "%{signpost.description:end_time}lluid=%s, instant=%f";
    v51 = 2;
    v50 = 3;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v69 = v53;
  *&v70 = v46;
  *v52 = v51;
  *(v52 + 1) = v50;
  *(v52 + 2) = 2048;
  *(&v70 + 1) = v45;
  sub_1DB34D440();
  *(v52 + 4) = v54;
  *(v52 + 12) = 2080;
  *(v52 + 14) = sub_1DB3D4EE8(v68, a2, &v69);
  *(v52 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v52 + 24) = v45 / *&qword_1EE30ED50 + v46;
  v55 = v64;
  v56 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v42, v62, v56, v63, v66, v52, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v53);
  MEMORY[0x1E1288220](v53, -1, -1);
  MEMORY[0x1E1288220](v52, -1, -1);

  return v58(v55, v65);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(int a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = *v4;
  v15 = *(v4 + 16);
  v40 = *a4;
  v38 = v14;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v14 = v38;
    v13 = v40;
  }

  v16 = qword_1ECC678E8;
  v37 = a1;
  *&v44[0] = a2;
  *(&v44[0] + 1) = a3;
  v44[2] = v14;
  v44[1] = v13;
  LOBYTE(v44[3]) = v15;
  BYTE1(v44[3]) = a1 & 1;
  sub_1DB49740C(v44);
  v17 = memcpy(v43, v44, sizeof(v43));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v34 - 2) = v43;

  os_unfair_lock_lock(v18 + 8);
  sub_1DB497898(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);

  v19 = v38;
  v20 = sub_1DB50B350();
  v42 = v40;
  sub_1DB3578F4(v20, v21, a2, a3, &v42);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  __swift_project_value_buffer(v22, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a2, a3);
  v23 = v39;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v24);

  v25 = sub_1DB50A250();
  LODWORD(v38) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v35 = v10;
  v36 = v9;
  if ((v15 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v23, v9);
    }

    goto LABEL_14;
  }

  if (v19 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v19 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v19 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = &v42;
LABEL_14:
  v27 = *(&v40 + 1);
  v28 = v40;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v41 = v30;
  *&v42 = v28;
  *v29 = 134218754;
  *(&v42 + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a2, a3, &v41);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 1024;
  *(v29 + 34) = v37 & 1;
  v32 = v39;
  v33 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v38, v33, v19, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%{BOOL}d", v29, 0x26u);
  __swift_destroy_boxed_opaque_existential_0(v30);
  MEMORY[0x1E1288220](v30, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v35 + 8))(v32, v36);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, unint64_t a2, __int128 *a3, double a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *v4;
  v15 = *(v4 + 16);
  v38 = *a3;
  v36 = v14;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v14 = v36;
    v13 = v38;
  }

  v16 = qword_1ECC678E8;
  *&v42[0] = a1;
  *(&v42[0] + 1) = a2;
  v42[2] = v14;
  v42[1] = v13;
  LOBYTE(v42[3]) = v15;
  *(&v42[3] + 1) = a4;
  sub_1DB4974E8(v42);
  v17 = memcpy(v41, v42, sizeof(v41));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v34 - 2) = v41;

  os_unfair_lock_lock(v18 + 8);
  sub_1DB497898(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);

  v19 = v36;
  v20 = sub_1DB50B350();
  v40 = v38;
  sub_1DB3578F4(v20, v21, a1, a2, &v40);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  __swift_project_value_buffer(v22, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a1, a2);
  v23 = v37;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v24);

  v25 = sub_1DB50A250();
  LODWORD(v36) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v10;
  v35 = v9;
  if ((v15 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_9:

      return (*(v10 + 8))(v23, v9);
    }

    goto LABEL_14;
  }

  if (v19 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v19 & 0xFFFFF800) == 0xD800)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v19 >> 16 > 0x10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = &v40;
LABEL_14:
  v27 = *(&v38 + 1);
  v28 = v38;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v39 = v30;
  *&v40 = v28;
  *v29 = 134218754;
  *(&v40 + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v31;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a1, a2, &v39);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 2048;
  *(v29 + 34) = a4;
  v32 = v37;
  v33 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v36, v33, v19, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%f", v29, 0x2Au);
  __swift_destroy_boxed_opaque_existential_0(v30);
  MEMORY[0x1E1288220](v30, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v34 + 8))(v32, v35);
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(const void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v58, a1, sizeof(v58));
  v13 = *a4;
  v14 = *v4;
  v15 = *(v4 + 16);
  v54 = *a4;
  v52 = v14;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v14 = v52;
    v13 = v54;
  }

  v16 = qword_1ECC678E8;
  *&v59[0] = a2;
  *(&v59[0] + 1) = a3;
  v59[2] = v14;
  v59[1] = v13;
  LOBYTE(v59[3]) = v15;
  memcpy(&v59[3] + 8, a1, 0x158uLL);
  memcpy(v60, v59, 0x190uLL);
  sub_1DB4975C4(v60);
  v17 = memcpy(v57, v60, sizeof(v57));
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v50 - 2) = v57;

  sub_1DB369460(v58, v56);
  os_unfair_lock_lock(v18 + 8);
  sub_1DB497898(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);
  sub_1DB30623C(v59, &qword_1ECC463A0, &qword_1DB51F648);
  v19 = v52;
  v20 = sub_1DB50B350();
  v56[0] = v54;
  sub_1DB3578F4(v20, v21, a2, a3, v56);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  __swift_project_value_buffer(v22, qword_1ECC678F0);
  MEMORY[0x1E1285D20](a2, a3);
  v23 = v53;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v24);
  sub_1DB369460(v58, v56);

  sub_1DB369460(v58, v56);
  v25 = sub_1DB50A250();
  LODWORD(v52) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v50 = v10;
  v51 = v9;
  if ((v15 & 1) == 0)
  {

    if (!v19)
    {
      __break(1u);
LABEL_9:

      sub_1DB3694BC(v58);

      sub_1DB3694BC(v58);
      return (*(v10 + 8))(v23, v9);
    }

    goto LABEL_14;
  }

  if (v19 >> 32)
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v19 & 0xFFFFF800) == 0xD800)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  if (v19 >> 16 > 0x10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v19 = v56;
LABEL_14:
  v27 = *(&v54 + 1);
  v28 = v54;
  v29 = swift_slowAlloc();
  *&v54 = swift_slowAlloc();
  v55[0] = v54;
  *v29 = 134221058;
  *&v56[0] = v28;
  *(&v56[0] + 1) = v27;
  sub_1DB34D440();
  *(v29 + 4) = v30;
  *(v29 + 12) = 2080;
  *(v29 + 14) = sub_1DB3D4EE8(a2, a3, v55);
  *(v29 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v29 + 24) = v27 / *&qword_1EE30ED50 + v28;
  *(v29 + 32) = 2080;
  if (v58[1])
  {
    v31 = v58[0];
  }

  else
  {
    v31 = 0;
  }

  if (v58[1])
  {
    v32 = v58[1];
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = sub_1DB3D4EE8(v31, v32, v55);

  *(v29 + 34) = v33;
  *(v29 + 42) = 2080;
  if (v58[3])
  {
    v34 = v58[2];
  }

  else
  {
    v34 = 0;
  }

  if (v58[3])
  {
    v35 = v58[3];
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = sub_1DB3D4EE8(v34, v35, v55);

  *(v29 + 44) = v36;
  *(v29 + 52) = 2048;
  v37 = *&v58[4];
  if (LOBYTE(v58[5]))
  {
    v37 = 0.0;
  }

  *(v29 + 54) = v37;
  *(v29 + 62) = 2048;
  v38 = *&v58[6];
  if (LOBYTE(v58[7]))
  {
    v38 = 0.0;
  }

  *(v29 + 64) = v38;
  *(v29 + 72) = 2048;
  v39 = *&v58[8];
  if (LOBYTE(v58[9]))
  {
    v39 = 0.0;
  }

  *(v29 + 74) = v39;
  *(v29 + 82) = 1024;
  sub_1DB3694BC(v58);
  v40 = v51;
  v41 = BYTE1(v58[9]) != 2 && (v58[9] & 0x100) != 0;
  v42 = v50;
  *(v29 + 84) = v41;
  sub_1DB3694BC(v58);
  *(v29 + 88) = 2048;
  v43 = *&v58[10];
  if (LOBYTE(v58[11]))
  {
    v43 = 0.0;
  }

  *(v29 + 90) = v43;
  *(v29 + 98) = 2048;
  v44 = *&v58[12];
  if (LOBYTE(v58[13]))
  {
    v44 = 0.0;
  }

  *(v29 + 100) = v44;
  *(v29 + 108) = 2048;
  v45 = *&v58[14];
  if (LOBYTE(v58[15]))
  {
    v45 = 0.0;
  }

  *(v29 + 110) = v45;
  *(v29 + 118) = 2048;
  v46 = *&v58[16];
  if (LOBYTE(v58[17]))
  {
    v46 = 0.0;
  }

  *(v29 + 120) = v46;
  v47 = v53;
  v48 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v52, v48, v19, "%{signpost.description:event_time}lluid=%s, instant=%f, clientCorrelationKey=%s, pageURL=%s, requestStartTime=%f, responseStartTime=%f, responseEndTime=%f, responseWasCached=%{BOOL}d, parseStartTime=%f, parseEndTime=%f, modelConstructionStartTime=%f, modelConstructionEndTime=%f", v29, 0x80u);
  v49 = v54;
  swift_arrayDestroy();
  MEMORY[0x1E1288220](v49, -1, -1);
  MEMORY[0x1E1288220](v29, -1, -1);

  return (*(v42 + 8))(v47, v40);
}

void PageRenderField<>.init(timestampWithName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1DB50B350();
  v8 = sub_1DB50A820();

  if ((v8 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void PageRenderField<>.init(intervalWithBaseName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1DB50B350();
  v8 = sub_1DB50A820();

  if (v8)
  {
    sub_1DB3CDB98("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x52uLL);
  }

  sub_1DB50B350();
  v9 = sub_1DB50A820();

  if (v9)
  {
    sub_1DB3CE170("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x54uLL);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

void PageRenderField<>.init(enum:withName:)(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v56 = a1;
  v57 = a2;
  v9 = *(a5 + 16);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB50A230();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v15 = a4[1];
  v17 = *v6;
  v18 = *(v6 + 8);
  v19 = *(v6 + 16);
  if (qword_1ECC42000 != -1)
  {
    swift_once();
  }

  v20 = qword_1ECC678E8;

  sub_1DB50A910();
  *&v21 = v17;
  v49 = v18;
  *(&v21 + 1) = v18;
  *&v62[0] = v57;
  *(&v62[0] + 1) = a3;
  *&v22 = v16;
  *(&v22 + 1) = v15;
  v62[1] = v22;
  v62[2] = v21;
  LOBYTE(v63) = v19;
  *(&v63 + 1) = v59;
  v64 = v60;
  *&v65[4] = v60;
  v65[0] = v62[0];
  v65[1] = v22;
  v65[2] = v21;
  v65[3] = v63;
  sub_1DB493638(v65);
  v23 = memcpy(v61, v65, sizeof(v61));
  v53 = v9;
  v24 = *(v20 + 16);
  MEMORY[0x1EEE9AC00](v23);
  *(&v45 - 2) = v61;
  os_unfair_lock_lock(v24 + 8);
  sub_1DB497898(v24 + 16);
  v25 = v57;
  os_unfair_lock_unlock(v24 + 8);
  sub_1DB30623C(v62, &qword_1ECC46390, &qword_1DB51F640);
  v52 = v17;
  v26 = sub_1DB50B350();
  v46 = v16;
  v59 = v16;
  v60 = v15;
  v49 = v15;
  sub_1DB3578F4(v26, v27, v25, a3, &v59);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v28 = sub_1DB50A270();
  __swift_project_value_buffer(v28, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v25, a3);
  v29 = v51;
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v30);
  v31 = v50;
  v33 = v53;
  v32 = v54;
  (*(v50 + 16))(v54, v56, v53);

  v34 = sub_1DB50A250();
  LODWORD(v56) = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v19 & 1) == 0)
  {

    v36 = v46;
    v37 = v49;
    if (!v52)
    {
      __break(1u);
LABEL_9:

      (*(v31 + 8))(v32, v33);
      return (*(v47 + 8))(v29, v48);
    }

LABEL_14:
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58[0] = v39;
    *v38 = 134218754;
    v59 = v36;
    v60 = v37;
    sub_1DB34D440();
    *(v38 + 4) = v40;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_1DB3D4EE8(v57, a3, v58);
    *(v38 + 22) = 2048;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    *(v38 + 24) = v37 / *&qword_1EE30ED50 + v36;
    *(v38 + 32) = 2080;
    v42 = v53;
    v41 = v54;
    sub_1DB50A910();
    (*(v31 + 8))(v41, v42);
    v43 = sub_1DB3D4EE8(v59, v60, v58);

    *(v38 + 34) = v43;
    v44 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v34, v56, v44, v52, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E1288220](v39, -1, -1);
    MEMORY[0x1E1288220](v38, -1, -1);

    return (*(v47 + 8))(v29, v48);
  }

  v36 = v46;
  v37 = v49;
  if (v52 >> 32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v52 & 0xFFFFF800) != 0xD800)
  {
    if (v52 >> 16 <= 0x10)
    {

      v52 = &v59;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t PageRenderField<>.init(requestWithName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

uint64_t PageRenderField<>.callAsFunction(_:for:at:)(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v9 = sub_1DB50A230();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = *v4;
  v15 = *(v4 + 16);
  v47 = *a4;
  v45 = v14;
  if (qword_1ECC42000 != -1)
  {
    swift_once();
    v14 = v45;
    v13 = v47;
  }

  v16 = qword_1ECC678E8;
  *&v51[0] = a2;
  *(&v51[0] + 1) = a3;
  v51[1] = v13;
  v51[2] = v14;
  LOBYTE(v52) = v15;
  *(&v52 + 1) = a1;
  v53[0] = v51[0];
  v53[1] = v13;
  v53[2] = v14;
  v53[3] = v52;
  sub_1DB4976A0(v53);
  v17 = memcpy(v50, v53, sizeof(v50));
  v46 = a2;
  v18 = *(v16 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v41 - 2) = v50;

  v19 = a1;
  os_unfair_lock_lock(v18 + 8);
  sub_1DB497898(v18 + 16);
  os_unfair_lock_unlock(v18 + 8);
  sub_1DB30623C(v51, &qword_1ECC463A8, &qword_1DB51F650);
  v20 = v46;
  v21 = v45;
  v22 = sub_1DB50B350();
  v49 = v47;
  sub_1DB3578F4(v22, v23, v20, a3, &v49);

  if (qword_1ECC42008 != -1)
  {
    swift_once();
  }

  v24 = sub_1DB50A270();
  __swift_project_value_buffer(v24, qword_1ECC678F0);
  MEMORY[0x1E1285D20](v20, a3);
  sub_1DB50A240();
  sub_1DB4970E8();
  sub_1DB4957BC();
  sub_1DB365724(v25);

  v26 = a1;
  v27 = v12;
  v28 = sub_1DB50A250();
  v29 = sub_1DB50B080();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {

    return (*(v44 + 8))(v27, v9);
  }

  *&v45 = v27;
  v43 = v9;
  v42 = v29;
  if (v15)
  {
    if (!(v21 >> 32))
    {
      if ((v21 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v21 >> 16 <= 0x10)
      {

        v41 = &v49;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v21)
  {
    __break(1u);
    goto LABEL_18;
  }

  v41 = v21;
LABEL_14:
  v31 = *(&v47 + 1);
  v32 = v47;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v48 = v35;
  *&v49 = v32;
  *v33 = 134218754;
  *(&v49 + 1) = v31;
  sub_1DB34D440();
  *(v33 + 4) = v36;
  *(v33 + 12) = 2080;
  *(v33 + 14) = sub_1DB3D4EE8(v46, a3, &v48);
  *(v33 + 22) = 2048;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  *(v33 + 24) = v31 / *&qword_1EE30ED50 + v32;
  *(v33 + 32) = 2112;
  v37 = a1;
  v38 = _swift_stdlib_bridgeErrorToNSError();
  *(v33 + 34) = v38;
  *v34 = v38;
  v39 = v45;
  v40 = sub_1DB50A210();
  _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v28, v42, v40, v41, "%{signpost.description:event_time}lluid=%s, instant=%f, value=%@", v33, 0x2Au);
  sub_1DB30623C(v34, &qword_1ECC463B0, &qword_1DB51F658);
  MEMORY[0x1E1288220](v34, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v35);
  MEMORY[0x1E1288220](v35, -1, -1);
  MEMORY[0x1E1288220](v33, -1, -1);

  return (*(v44 + 8))(v39, v43);
}

uint64_t PagePreloadStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

JetCore::PageInterruptReason_optional __swiftcall PageInterruptReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PageInterruptReason.rawValue.getter()
{
  v1 = 0x657373696D736964;
  v2 = 0x6669636570736E75;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_1DB496628()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB496700()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB4967C4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4968A4(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = 0xEB00000000646569;
  v5 = 0x6669636570736E75;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001DB529180;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
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

void sub_1DB496938()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC46318 = "interstitialPageAppearTime";
  *(&xmmword_1ECC46318 + 1) = 26;
  byte_1ECC46328 = 2;
  qword_1ECC46330 = 0;
  byte_1ECC46338 = 1;
}

double static PageRenderField<>._interstitialPageAppearTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42158 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46328;
  v2 = qword_1ECC46330;
  v3 = byte_1ECC46338;
  result = *&xmmword_1ECC46318;
  *a1 = xmmword_1ECC46318;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1DB496A5C()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC46340 = "pageInterruptTime";
  *(&xmmword_1ECC46340 + 1) = 17;
  byte_1ECC46350 = 2;
  qword_1ECC46358 = 0;
  byte_1ECC46360 = 1;
}

double static PageRenderField<>.pageInterruptTime.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42160 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46350;
  v2 = qword_1ECC46358;
  v3 = byte_1ECC46360;
  result = *&xmmword_1ECC46340;
  *a1 = xmmword_1ECC46340;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

void sub_1DB496B80()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC67980 = "primaryDataRequestStartTime";
  *(&xmmword_1ECC67980 + 1) = 27;
  byte_1ECC67990 = 2;
  qword_1ECC67998 = 0;
  byte_1ECC679A0 = 1;
}

void sub_1DB496C24()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC679A8 = "primaryDataFetchStartTime";
  *(&xmmword_1ECC679A8 + 1) = 25;
  byte_1ECC679B8 = 2;
  qword_1ECC679C0 = 0;
  byte_1ECC679C8 = 1;
}

void sub_1DB496CC8()
{
  sub_1DB50B350();
  v0 = sub_1DB50A820();

  if ((v0 & 1) == 0)
  {
    sub_1DB3CD5C0("JetCore/PageRenderField.swift", 0x1DuLL, 2, 0x2FuLL);
  }

  *&xmmword_1ECC679D0 = "primaryDataSecureConnectionStartTime";
  *(&xmmword_1ECC679D0 + 1) = 36;
  byte_1ECC679E0 = 2;
  qword_1ECC679E8 = 0;
  byte_1ECC679F0 = 1;
}

void sub_1DB496D6C()
{
  *&xmmword_1ECC679F8 = "secondaryData";
  *(&xmmword_1ECC679F8 + 1) = 13;
  byte_1ECC67A08 = 2;
  qword_1ECC67A10 = 0;
  byte_1ECC67A18 = 1;
}

void sub_1DB496E28()
{
  *&xmmword_1ECC67AE8 = "isPrimaryDataResponseCached";
  *(&xmmword_1ECC67AE8 + 1) = 27;
  byte_1ECC67AF8 = 2;
  qword_1ECC67B00 = 0;
  byte_1ECC67B08 = 1;
}

void sub_1DB496E58()
{
  *&xmmword_1ECC67B10 = "primaryDataConnectionReused";
  *(&xmmword_1ECC67B10 + 1) = 27;
  byte_1ECC67B20 = 2;
  qword_1ECC67B28 = 0;
  byte_1ECC67B30 = 1;
}

void sub_1DB496E88()
{
  *&xmmword_1ECC67B38 = "isLowDataMode";
  *(&xmmword_1ECC67B38 + 1) = 13;
  byte_1ECC67B48 = 2;
  qword_1ECC67B50 = 0;
  byte_1ECC67B58 = 1;
}

void sub_1DB496EB8()
{
  *&xmmword_1ECC67B60 = "clientCorrelationKey";
  *(&xmmword_1ECC67B60 + 1) = 20;
  byte_1ECC67B70 = 2;
  qword_1ECC67B78 = 0;
  byte_1ECC67B80 = 1;
}

void sub_1DB496EE8()
{
  *&xmmword_1ECC67B88 = "pageUrl";
  *(&xmmword_1ECC67B88 + 1) = 7;
  byte_1ECC67B98 = 2;
  qword_1ECC67BA0 = 0;
  byte_1ECC67BA8 = 1;
}

void sub_1DB496F18()
{
  *&xmmword_1ECC67BB0 = "primaryDataStatusCode";
  *(&xmmword_1ECC67BB0 + 1) = 21;
  byte_1ECC67BC0 = 2;
  qword_1ECC67BC8 = 0;
  byte_1ECC67BD0 = 1;
}

void sub_1DB496F48()
{
  *&xmmword_1ECC67BD8 = "primaryDataEdgeNodeCacheStatus";
  *(&xmmword_1ECC67BD8 + 1) = 30;
  byte_1ECC67BE8 = 2;
  qword_1ECC67BF0 = 0;
  byte_1ECC67BF8 = 1;
}

void sub_1DB496F78()
{
  *&xmmword_1ECC67C00 = "primaryDataEnvironmentDataCenter";
  *(&xmmword_1ECC67C00 + 1) = 32;
  byte_1ECC67C10 = 2;
  qword_1ECC67C18 = 0;
  byte_1ECC67C20 = 1;
}

void sub_1DB496FA8()
{
  *&xmmword_1ECC67C28 = "primaryDataAppleTimingApp";
  *(&xmmword_1ECC67C28 + 1) = 25;
  byte_1ECC67C38 = 2;
  qword_1ECC67C40 = 0;
  byte_1ECC67C48 = 1;
}

void sub_1DB496FD8()
{
  *&xmmword_1ECC67C50 = "primaryDataRequestMessageSize";
  *(&xmmword_1ECC67C50 + 1) = 29;
  byte_1ECC67C60 = 2;
  qword_1ECC67C68 = 0;
  byte_1ECC67C70 = 1;
}

void sub_1DB497008()
{
  *&xmmword_1ECC67C78 = "primaryDataResponseMessageSize";
  *(&xmmword_1ECC67C78 + 1) = 30;
  byte_1ECC67C88 = 2;
  qword_1ECC67C90 = 0;
  byte_1ECC67C98 = 1;
}

void sub_1DB497038()
{
  *&xmmword_1ECC46368 = "pageInterruptReason";
  *(&xmmword_1ECC46368 + 1) = 19;
  byte_1ECC46378 = 2;
  qword_1ECC46380 = 0;
  byte_1ECC46388 = 1;
}

double static PageRenderField<>.pageInterruptReason.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECC42208 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = byte_1ECC46378;
  v2 = qword_1ECC46380;
  v3 = byte_1ECC46388;
  result = *&xmmword_1ECC46368;
  *a1 = xmmword_1ECC46368;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_1DB4970E8()
{
  result = qword_1ECC46398;
  if (!qword_1ECC46398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46398);
  }

  return result;
}

uint64_t sub_1DB49713C(uint64_t result)
{
  v1 = *(result + 376);
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v1;
  return result;
}

uint64_t sub_1DB497214(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x2000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB497310(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x4000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB49740C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x6000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4974E8(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0x8000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4975C4(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xC000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

uint64_t sub_1DB4976A0(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 1;
  v3 = *(result + 128) & 0xFF01;
  v4 = *(result + 144) & 1;
  v5 = *(result + 160) & 1;
  v6 = *(result + 176) & 1;
  v7 = *(result + 192) & 1;
  v8 = *(result + 208) & 1;
  v9 = *(result + 224) & 1;
  v10 = *(result + 240) & 1;
  v11 = *(result + 256) & 1;
  v12 = *(result + 272) & 1;
  v13 = *(result + 288) & 0xFF01;
  v14 = *(result + 304) & 1;
  v15 = *(result + 320) & 1;
  v16 = *(result + 376) | 0xE000000000000000;
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 176) = v6;
  *(result + 192) = v7;
  *(result + 208) = v8;
  *(result + 224) = v9;
  *(result + 240) = v10;
  *(result + 256) = v11;
  *(result + 272) = v12;
  *(result + 288) = v13;
  *(result + 304) = v14;
  *(result + 320) = v15;
  *(result + 376) = v16;
  return result;
}

unint64_t sub_1DB497780()
{
  result = qword_1ECC463B8[0];
  if (!qword_1ECC463B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC463B8);
  }

  return result;
}

uint64_t sub_1DB4977D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB497810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB497830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

char *Promise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB498380(a1, a2);

  return v2;
}

uint64_t Future.result.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DB306AF4;

  return v11(a1, a2, a3);
}

uint64_t LazyPromise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  return LazyPromise.__allocating_init(on:perform:)(&v7, sub_1DB4984B0, v5);
}

uint64_t sub_1DB497B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - v16;
  v18 = sub_1DB50ABA0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a7;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a1;
  v19[8] = a2;
  v19[9] = a3;
  v19[10] = a4;

  sub_1DB419B9C(0, 0, v17, &unk_1DB51F898, v19);
}

uint64_t sub_1DB497C6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v18;
  v8[6] = v19;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = *(v19 - 8);
  v8[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v8[8] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[9] = v14;
  *v14 = v8;
  v14[1] = sub_1DB497DD0;

  return v16(v12);
}

uint64_t sub_1DB497DD0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DB497F7C;
  }

  else
  {
    v3 = sub_1DB497EE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB497EE4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB497F7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  (*(v0 + 32))(v1);

  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB497FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1DB498164;

  return v15(v11);
}

uint64_t sub_1DB498164()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1DB498308;
  }

  else
  {
    v3 = sub_1DB498278;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB498278()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  Promise.resolve(_:)(v1);
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB498308()
{
  v1 = v0[7];
  v2 = v0[2];
  Promise.reject(_:)(v1);

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

char *sub_1DB498380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = Promise.__allocating_init()();
  v9 = sub_1DB50ABA0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v8;

  sub_1DB419B9C(0, 0, v7, &unk_1DB51F8A8, v10);

  return v8;
}

uint64_t sub_1DB4984BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1DB498510()
{
  v2 = v0[3];
  v11 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DB306AF4;

  JUMPOUT(0x1DB497C6CLL);
}

uint64_t sub_1DB498608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB497FF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB498704()
{
  v0 = sub_1DB50B680();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB498758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4987CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB498838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4988A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB498918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_1DB498704();
  *a3 = result;
  return result;
}

uint64_t sub_1DB498950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_1DB2FC994(*v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DB498994@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB498704();
  *a2 = result;
  return result;
}

uint64_t sub_1DB4989C0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB3A5E1C();
  *a2 = result;
  return result;
}

uint64_t sub_1DB4989EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB498A40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidepackedIntent.init(initial:resolveUsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for SidepackedIntent() + 28);

  return sub_1DB2FEA0C(a2, v6);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for SidepackedIntent();
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1DB498DBC(a1, a2, a3, v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v18 = *(a2 - 8);
    v19 = 1;
    v20 = v24;
  }

  else
  {
    (*(v13 + 32))(v17, v12, v7);
    v18 = *(a2 - 8);
    v21 = v24;
    (*(v18 + 16))(v24, v17, a2);
    (*(v13 + 8))(v17, v7);
    v19 = 0;
    v20 = v21;
  }

  return (*(v18 + 56))(v20, v19, 1, a2);
}

uint64_t sub_1DB498DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a2;
  v53 = a4;
  v6 = type metadata accessor for SidepackedIntent();
  v51 = sub_1DB50B120();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = *(v6 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - v26;
  v28 = *(v12 + 16);
  v50 = a1;
  v28(v19, a1, a3, v25);
  v29 = swift_dynamicCast();
  v30 = v20[7];
  if (v29)
  {
    v31 = v20[7];
    v30(v11, 0, 1, v6);
    v32 = v20[4];
    v32(v27, v11, v6);
    v33 = v53;
    v32(v53, v27, v6);
    return v31(v33, 0, 1, v6);
  }

  v47 = v20[7];
  v30(v11, 1, 1, v6);
  v35 = v11;
  v36 = v51;
  v49 = *(v49 + 8);
  (v49)(v35, v51);
  (v28)(v16, v50, a3);
  v37 = v52;
  type metadata accessor for AnyIntentModel();
  if (swift_dynamicCast())
  {
    v58[0] = v55;
    v58[1] = v56;
    v59 = v57;
    sub_1DB2FEA0C(v58, &v55);
    v54 = v37;
    swift_getExtendedExistentialTypeMetadata();
    v38 = v48;
    v39 = swift_dynamicCast();
    v40 = v53;
    if (v39)
    {
      v41 = v47;
      v47(v38, 0, 1, v6);
      v42 = v20[4];
      v43 = v46;
      v42(v46, v38, v6);
      v42(v40, v43, v6);
      return v41(v40, 0, 1, v6);
    }

    v47(v38, 1, 1, v6);
    (v49)(v38, v36);
  }

  else
  {
    v44 = sub_1DB50B120();
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    (*(*(v44 - 8) + 8))(&v55, v44);
    v40 = v53;
  }

  return v47(v40, 1, 1, v6);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a5;
  v32 = a6;
  v29 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SidepackedIntent();
  v14 = sub_1DB50B120();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  sub_1DB498DBC(a1, a2, v30, v18);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v32, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v25 = v32;
    (*(v19 + 32))(v23, v18, v13);
    static Continuous._unwrapOnlyElement<A>(of:)(v23, AssociatedTypeWitness, a2, v12);
    (*(v19 + 8))(v23, v13);
    v26 = *(AssociatedTypeWitness - 8);
    if ((*(v26 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v27 + 8))(v12, v28);
      return (*(v26 + 56))(v25, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v26 + 32))(v25, v12, AssociatedTypeWitness);
      return (*(v26 + 56))(v25, 0, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t SidepackedIntent<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  v35 = *(a2 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidepackedIntent.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1DB50B7C0();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SidepackedIntent();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v41;
  sub_1DB50BDF0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = v15;
  v41 = v12;
  v18 = v39;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v20);
  v21 = v44[0];
  v42[0] = 0;
  v22 = v40;
  sub_1DB50B6C0();
  v23 = v11;
  JSONObject.init(from:)(v43, v44);
  v24 = v18;
  sub_1DB3171C0(v44, v42);
  v45 = v21;
  AnyIntentModel.init(deserializing:using:)(v42, &v45, a2, v43);
  v25 = *(v41 + 28);
  v26 = type metadata accessor for AnyIntentModel();
  v27 = v33;
  AnyIntentModel._canonicalized.getter(v26, &v33[v25]);
  (*(*(v26 - 8) + 8))(v43, v26);
  LOBYTE(v43[0]) = 1;
  v28 = v38;
  sub_1DB50B780();
  sub_1DB3151CC(v44);
  (*(v24 + 8))(v23, v22);
  (*(v35 + 32))(v27, v28, a2);
  v29 = v34;
  v30 = v41;
  (*(v34 + 16))(v36, v27, v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v29 + 8))(v27, v30);
}

uint64_t SidepackedIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a4;
  v18 = *(a2 - 8);
  v8 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  JSONObject.subscript.getter(0x6C616974696E6924, 0xE800000000000000, v21);

  v20[0] = v12;
  v13 = *(a3 + 8);

  v13(v21, v20, a2, a3);
  if (v4)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    v15 = v19;
    (*(v18 + 32))(v19, v10, a2);
    JSONObject.subscript.getter(0x746E65746E6924, 0xE700000000000000, v20);

    v22 = v12;
    AnyIntentModel.init(deserializing:using:)(v20, &v22, a2, v21);
    v16 = *(type metadata accessor for SidepackedIntent() + 28);
    v17 = type metadata accessor for AnyIntentModel();
    AnyIntentModel._canonicalized.getter(v17, v15 + v16);
    sub_1DB3151CC(a1);
    return (*(*(v17 - 8) + 8))(v21, v17);
  }
}

uint64_t sub_1DB499D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB499E20(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1DB499F5C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t DeferredLazy.__allocating_init()()
{
  v0 = swift_allocObject();
  DeferredLazy.init()();
  return v0;
}

uint64_t DeferredLazy.value(or:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return DeferredLazy.value(or:)(a1, a2, a3);
}

{
  return sub_1DB49A508((v3[2] + *(*v3[2] + *MEMORY[0x1E69E6B68] + 16)), v3[2] + ((*(*v3[2] + 48) + 3) & 0x1FFFFFFFCLL), a1, a2, *(*v3 + 80), &v5, a3);
}

uint64_t DeferredLazy.valueIfLoaded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v4 = *(*v1 + 80);
  return sub_1DB49A3D4(v2 + *(*v2 + *MEMORY[0x1E69E6B68] + 16), a1);
}

void *DeferredLazy.init()()
{
  v1 = *(*v0 + 80);
  sub_1DB50B120();
  type metadata accessor for os_unfair_recursive_lock_s(255);
  sub_1DB50B430();
  v0[2] = sub_1DB50B420();
  return v0;
}

uint64_t sub_1DB49A3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = sub_1DB50B120();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A508@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a4;
  v29 = a3;
  v30 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB50B120();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  os_unfair_recursive_lock_lock_with_options();
  v20 = v16[2];
  v26 = a1;
  v20(v19, a1, v15);
  if ((*(v11 + 48))(v19, 1, a5) == 1)
  {
    v25[1] = a2;
    v21 = v16[1];
    v22 = v21(v19, v15);
    v29(v22);
    if (v7)
    {
      result = os_unfair_recursive_lock_unlock();
      *v27 = v7;
      return result;
    }

    v24 = v26;
    v21(v26, v15);
    (*(v11 + 16))(v24, v14, a5);
    (*(v11 + 56))(v24, 0, 1, a5);
  }

  else
  {
    v14 = v19;
  }

  (*(v11 + 32))(v30, v14, a5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB50B120();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  os_unfair_recursive_lock_lock_with_options();
  (*(*(a3 - 8) + 56))(v9, 1, 1, a3);
  (*(v6 + 40))(a1, v9, v5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1DB49A8B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(*(v2 + *MEMORY[0x1E69E6B68]) + 16) - 8) + 56))(a2, 1, 1);
}

uint64_t DeferredLazy.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DeferredLazy.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB49A9F0()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x696E6F746F6E6F4DLL, 0xEE0028656D695463);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  sub_1DB50ADA0();
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  MEMORY[0x1E1285C70](0, 0xE000000000000000);
}

uint64_t CoarselyTimed.init(byTiming:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a1;
  v39 = a3;
  v40 = a4;
  v35 = *(a3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB509DD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for MonotonicTimeReference();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v44);
  v23 = &v22[*(v19 + 28)];
  *v23 = v44;
  v24 = *(v8 + 16);
  v25 = v24(v17, v22, v7);
  v26 = v45;
  v42(v25);
  if (v26)
  {
    (*(v8 + 8))(v17, v7);
    return sub_1DB38288C(v22);
  }

  else
  {
    v41 = v24;
    v42 = 0;
    v45 = v8;
    (*(v35 + 32))(v40, v6, v39);
    static MonotonicTime.now.getter(&v44);
    v28 = v44;
    tv_sec = v23->tv_sec;
    tv_nsec = v23->tv_nsec;
    v44.tv_sec = tv_sec;
    v44.tv_nsec = tv_nsec;
    v43 = v28;
    sub_1DB49B574(&v44, &v43);
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v31 = v36;
    sub_1DB509D60();
    v32 = v41;
    v41(v37, v17, v7);
    v32(v38, v31, v7);
    v33 = v40 + *(type metadata accessor for CoarselyTimed() + 28);
    sub_1DB509910();
    v34 = *(v45 + 8);
    v34(v31, v7);
    v34(v17, v7);
    return sub_1DB38288C(v22);
  }
}

uint64_t CoarselyTimed.init(byTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a4 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_1DB509DD0();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = type metadata accessor for MonotonicTimeReference();
  v4[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB49B024, 0, 0);
}

uint64_t sub_1DB49B024()
{
  v16 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v15);
  v7 = *(v2 + 20);
  *(v0 + 160) = v7;
  *(v1 + v7) = v15;
  v8 = *(v5 + 16);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v1, v4);
  v14 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_1DB49B184;
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);

  return v14(v11);
}

uint64_t sub_1DB49B184()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1DB49B4A8;
  }

  else
  {
    v3 = sub_1DB49B298;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB49B298()
{
  v21 = v0;
  v1 = (*(v0 + 120) + *(v0 + 160));
  (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
  static MonotonicTime.now.getter(&v20);
  v2 = v1[1];
  v19[0] = *v1;
  v19[1] = v2;
  sub_1DB49B574(v19, &v20);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v18 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 120);
  v9 = *(v0 + 16);
  sub_1DB509D60();
  v4(v14, v6, v7);
  v4(v15, v5, v7);
  v10 = v9 + *(type metadata accessor for CoarselyTimed() + 28);
  sub_1DB509910();
  v11 = *(v8 + 8);
  v11(v5, v7);
  v11(v6, v7);
  sub_1DB38288C(v17);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB49B4A8()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  (*(v0[9] + 8))(v0[13], v0[8]);
  sub_1DB38288C(v1);

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

void *sub_1DB49B574(void *result, void *a2)
{
  v2 = *a2 < *result;
  if (*a2 == *result)
  {
    v2 = a2[1] < result[1];
  }

  if (v2)
  {
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x203A747261747328, 0xE800000000000000);
    sub_1DB49A9F0();
    MEMORY[0x1E1285C70](0x203A646E65202CLL, 0xE700000000000000);
    sub_1DB49A9F0();
    MEMORY[0x1E1285C70](41, 0xE100000000000000);
    MEMORY[0x1E1285C70](0, 0xE000000000000000);

    result = sub_1DB50B580();
    __break(1u);
  }

  return result;
}

uint64_t CoarselyTimed.init(contained:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for CoarselyTimed() + 28);
  v7 = sub_1DB509930();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t CoarselyTimed.duration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1DB509930();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CoarselyTimed.duration.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1DB509930();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*CoarselyTimed.duration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_8;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t static CoarselyTimed<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DB50A610() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CoarselyTimed() + 28);

  return MEMORY[0x1EEDC26B0](a1 + v4, a2 + v4);
}

uint64_t sub_1DB49B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CoarselyTimed<A>.== infix(_:_:)(a1, a2);
}

uint64_t sub_1DB49B998(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DB509930();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB49BA20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1DB509930();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1DB49BC84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1DB509930() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t JSONBridgingType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB49C004()
{
  result = qword_1ECC466C0;
  if (!qword_1ECC466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC466C0);
  }

  return result;
}

unint64_t sub_1DB49C068()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466C8, &unk_1DB51FBF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = 0xD000000000000010;
    v3 = inited + 32;
    *(inited + 40) = 0x80000001DB52FC20;
    *(inited + 48) = v1;
    v4 = sub_1DB314114(inited);
    swift_setDeallocating();
    sub_1DB49C170(v3);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1DB314114(v6);
  }
}

uint64_t sub_1DB49C170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D0, &qword_1DB522F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static ObjectGraphBuilder.buildPartialBlock(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  sub_1DB30C420(a1, inited + 32);
  v3 = sub_1DB30BC94();
  v5 = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v3);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v5;
  return result;
}

void *static ObjectGraphBuilder.buildBlock()()
{
  v0 = sub_1DB30BC94();
  v2 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v2;
  return result;
}

void *static ObjectGraphBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v2 = sub_1DB30BC94();
    v4 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v2);
    sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for BaseObjectGraph();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0xE000000000000000;
    v1[2] = v4;
  }

  return v1;
}

void sub_1DB49C440(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DB34130C(0, v2, 0);
    v50 = v53;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_1DB50B250();
    v6 = 0;
    v7 = *(v1 + 36);
    v45 = v1 + 72;
    v46 = v2;
    v48 = v1 + 64;
    v49 = v1;
    v47 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(v10 + 8 * v5);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v51 = v12;
        v52 = v13;
        swift_bridgeObjectRetain_n();
        v17 = v14;
        MEMORY[0x1E1285C70](2236474, 0xE300000000000000);
        v18 = [v16 description];
        v19 = sub_1DB50A650();
        v21 = v20;

        MEMORY[0x1E1285C70](v19, v21);

        MEMORY[0x1E1285C70](34, 0xE100000000000000);
      }

      else
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          v51 = v12;
          v52 = v13;
          swift_bridgeObjectRetain_n();
          v24 = v14;
          MEMORY[0x1E1285C70](8250, 0xE200000000000000);
          v25 = [v23 description];
          v26 = sub_1DB50A650();
          v28 = v27;

          MEMORY[0x1E1285C70](v26, v28);
        }

        else
        {
          v51 = v12;
          v52 = v13;
          swift_bridgeObjectRetain_n();
          v29 = v14;
          MEMORY[0x1E1285C70](8250, 0xE200000000000000);
          v30 = [v29 description];
          v31 = sub_1DB50A650();
          v33 = v32;

          MEMORY[0x1E1285C70](v31, v33);
        }
      }

      v34 = v50;
      v35 = *(v50 + 16);
      v36 = *(v50 + 24) >> 1;
      if (v36 <= v35)
      {
        *(v50 + 24);
        sub_1DB34130C((v36 != 0), v35 + 1, 1);
        v34 = v50;
      }

      *(v34 + 16) = v35 + 1;
      v37 = v34 + 16 * v35;
      *(v37 + 32) = v51;
      *(v37 + 40) = v52;
      v1 = v49;
      v8 = 1 << *(v49 + 32);
      if (v5 >= v8)
      {
        goto LABEL_30;
      }

      v3 = v48;
      v38 = *(v48 + 8 * v9);
      if ((v38 & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      v50 = v34;
      v7 = v47;
      if (v47 != *(v49 + 36))
      {
        goto LABEL_32;
      }

      v39 = v38 & (-2 << (v5 & 0x3F));
      if (v39)
      {
        v8 = __clz(__rbit64(v39)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v9 << 6;
        v41 = v9 + 1;
        v42 = (v45 + 8 * v9);
        while (v41 < (v8 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_1DB3ADCD0(v5, v47, 0);
            v8 = __clz(__rbit64(v43)) + v40;
            goto LABEL_4;
          }
        }

        sub_1DB3ADCD0(v5, v47, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v46)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

__n128 CoreAnalyticsLogger.init(provider:decorator:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB2FEA0C(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t CoreAnalyticsLogger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  v8 = v7;
  sub_1DB30C4B8((v3 + 5), v14, &qword_1ECC44E00, &unk_1DB518260);
  if (v15)
  {
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(a3 + 24))(a2, a3);
    v10 = (*(v9 + 8))();

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DB30623C(v14, &qword_1ECC44E00, &unk_1DB518260);
    v10 = (*(a3 + 24))(a2, a3);
  }

  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  (*(v12 + 8))(v6, v8, v10, v11, v12);
}

Swift::Void __swiftcall DefaultCoreAnalyticsLoggerProvider.send(eventName:payload:)(Swift::String eventName, Swift::OpaquePointer payload)
{
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  if (qword_1EE30C900 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v5 = v31;
  v29 = v32;
  __swift_project_boxed_opaque_existential_1(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v41 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x80000001DB530070;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v40 = MEMORY[0x1E69E6158];
  v38 = countAndFlagsBits;
  v39 = object;
  sub_1DB30C4B8(&v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
  v35 = 0u;
  v36 = 0u;

  sub_1DB301D4C(v34, &v35);
  v37 = 0;
  v8 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v41 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v35;
  v13 = v36;
  v11[64] = v37;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v41 = v8;
  sub_1DB30623C(&v38, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._object = 0x80000001DB530090;
  v14._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  sub_1DB49C440(payload._rawValue);
  *&v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB330B04();
  v16 = sub_1DB50A5E0();
  v18 = v17;

  v40 = MEMORY[0x1E69E6158];
  v38 = v16;
  v39 = v18;
  sub_1DB30C4B8(&v38, v34, &qword_1ECC426B0, &qword_1DB50EEB0);
  v35 = 0u;
  v36 = 0u;
  sub_1DB301D4C(v34, &v35);
  v37 = 0;
  v19 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    v41 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v35;
  v24 = v36;
  v22[64] = v37;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v41 = v19;
  sub_1DB30623C(&v38, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v6 + 32) = v41;
  Logger.debug(_:)(v6, v5, v29);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v26 = sub_1DB50A620();
  v27 = swift_allocObject();
  v27[2]._rawValue = payload._rawValue;
  v32 = sub_1DB49CF28;
  v33 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB49CE80;
  v31 = &block_descriptor_18;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);
}

id sub_1DB49CE80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1DB49CFE4();
    v5 = sub_1DB50A490();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_7JetCore0B30AnalyticsEventPayloadDecorator_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB49CFE4()
{
  result = qword_1EE30C798;
  if (!qword_1EE30C798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30C798);
  }

  return result;
}

uint64_t LanguagesMetricFieldProvider.addMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    v12 = sub_1DB509E20();
    v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
    v17[0] = v12;
    v13 = a1[3];
    v14 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 16))(v17, 0x6175676E614C736FLL, 0xEB00000000736567, v13, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v7 + 56) + 32 * v8, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1DB33114C(v15, v16, v3);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

char *Promise<A>.init(_:)(void *a1)
{
  v2 = Promise.__allocating_init()();
  v10 = sub_1DB49D368;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_1DB49D390;
  v9 = &block_descriptor_19;
  v3 = _Block_copy(&v6);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v3);
  v10 = j___s7JetCore7PromiseC6rejectyys5Error_pF_0;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_1DB49D40C;
  v9 = &block_descriptor_3_0;
  v4 = _Block_copy(&v6);

  [a1 addErrorBlock_];

  _Block_release(v4);
  return v2;
}

uint64_t sub_1DB49D390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DB49D40C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id Promise<A>.toAMSPromise(on:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D8, &unk_1DB51FDC0);
  v4 = *(v3 + 80);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = v5;
  Promise.then(perform:orCatchError:on:)(sub_1DB49D578, v6, sub_1DB49D590, v7, a1);

  return v8;
}

void sub_1DB49D590()
{
  v1 = *(v0 + 24);
  v2 = sub_1DB509B10();
  [v1 finishWithError_];
}

uint64_t Promise<A>.init(_:)(void *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB49D788;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB3330B0;
  v11 = &block_descriptor_9;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB49D78C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_12_0;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

JetCore::JetPackFileStreamSource __swiftcall JetPackFileStreamSource.init(path:)(Swift::String path)
{
  *v1 = path;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.path = path;
  return result;
}

uint64_t JetPackFileStreamSource.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JetPackFileStreamSource.makeStream()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v4 = sub_1DB50A620();
  v5 = [v3 initWithPath_];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v5 = swift_allocError();
    v6 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return v7;
}

unint64_t sub_1DB49D8CC()
{
  result = qword_1ECC466E0;
  if (!qword_1ECC466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC466E0);
  }

  return result;
}

uint64_t sub_1DB49D920()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v4 = sub_1DB50A620();
  v5 = [v3 initWithPath_];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v5 = swift_allocError();
    v6 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return v7;
}

uint64_t sub_1DB49DA08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1DB509BA0();
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_1DB49DA7C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB37795C(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1DB49DB4C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB377940(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v5 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB34FFDC((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 24));

  *a2 = v7;
  return result;
}

uint64_t LogMessageLevel.osLogType.getter()
{
  if (*v0 - 1 < 2)
  {
    return sub_1DB50AF40();
  }

  if (*v0)
  {
    return sub_1DB50AF10();
  }

  return sub_1DB50AF20();
}

uint64_t sub_1DB49DDE4()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_1DB31338C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46768, &qword_1DB520038);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_1EE30ED38 = v0;
  return result;
}

id sub_1DB49DE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_1DB30ED08(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_1DB3D6CE4();

    v19 = sub_1DB50B100();
    v20 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_1DB31E558(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v22;
    *a6 = v19;
  }

  return result;
}

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1DB49DFF0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466E8 = v2;
}

uint64_t sub_1DB49E0F4(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC67CA0 = result;
  return result;
}

void sub_1DB49E220(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466F0 = v2;
}

uint64_t sub_1DB49E32C(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C8F8 = result;
  return result;
}

void sub_1DB49E484(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466F8 = v2;
}

void sub_1DB49E594(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46700 = v2;
}

uint64_t sub_1DB49E6A8(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C918 = result;
  return result;
}

void sub_1DB49E80C(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46708 = v2;
}

void sub_1DB49E914(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46710 = v2;
}

uint64_t sub_1DB49EA28(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46718 = result;
  return result;
}

void sub_1DB49EBAC(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46720 = v2;
}

uint64_t sub_1DB49ECC0(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46728 = result;
  return result;
}

void sub_1DB49EE44(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46730 = v2;
}

id sub_1DB49EF58@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_1DB49EFB4(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46738 = result;
  return result;
}

uint64_t sub_1DB49F12C(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  return sub_1DB50BEB0();
}

uint64_t sub_1DB49F178(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46758, &qword_1DB520028);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46740 = result;
  return result;
}

uint64_t sub_1DB49F2E0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46758, &qword_1DB520028);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30E408 = result;
  return result;
}

uint64_t sub_1DB49F428(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46748 = result;
  return result;
}

uint64_t sub_1DB49F57C(uint64_t a1)
{
  v6[4] = &type metadata for OSLogger;
  v6[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v6);
  os_unfair_lock_unlock((v1 + 24));
  v6[1] = v6[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C908 = result;
  return result;
}

uint64_t sub_1DB49F6D4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

unint64_t sub_1DB49F924()
{
  result = qword_1ECC46750;
  if (!qword_1ECC46750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46750);
  }

  return result;
}

unint64_t sub_1DB49F9D4()
{
  result = qword_1EE30ED40;
  if (!qword_1EE30ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30ED40);
  }

  return result;
}

uint64_t sub_1DB49FA44@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v4 = sub_1DB50A620();
  v5 = [a1 objectForKeyedSubscript_];

  if (v5)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    v5 = swift_allocObject();
    result = sub_1DB30C200(v9, v5 + 1);
    v7 = &off_1F56FB6B0;
    v8 = &type metadata for FoundationValue;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    result = sub_1DB30623C(v9, &qword_1ECC426B0, &qword_1DB50EEB0);
    v8 = 0;
    v7 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = v8;
  a2[4] = v7;
  return result;
}

uint64_t sub_1DB49FB28(void *a1)
{
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  sub_1DB50A540();
  v2 = a1;
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB49FBCC(void (*a1)(char *, uint64_t, uint64_t, uint64_t, __int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v81 = a1;
  v82 = a2;
  v12 = sub_1DB50B120();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = v70 - v14;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v84 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v78 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v70 - v24;
  v80 = a4;
  v77 = a5;
  v26 = a6;
  v27 = sub_1DB50A470();
  v102 = v27;
  v83 = a3;
  v87 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v98 = v94;
  v99 = v95;
  v100 = v96;
  v101 = v97;
  if (*(&v95 + 1))
  {
    v70[0] = 0x80000001DB530190;
    v75 = (v19 + 16);
    v76 = "NetworkReachability" & 0x2F00000000000000;
    v73 = (v15 + 56);
    v74 = (v15 + 16);
    v71 = (v19 + 8);
    v72 = (v15 + 8);
    v85 = xmmword_1DB50EE90;
    v70[1] = v26;
    v27 = v84;
    v88 = v25;
    while (1)
    {
      sub_1DB30C200(&v98, v93);
      sub_1DB30C200(&v100, v92);
      sub_1DB300B14(v93, &v94);
      sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
      if (swift_dynamicCast())
      {
        v28 = v90;
        sub_1DB300B14(v92, &v90);
        *(&v95 + 1) = &type metadata for FoundationValue;
        *&v96 = &off_1F56FB6B0;
        *&v94 = swift_allocObject();
        sub_1DB30C200(&v90, (v94 + 16));
        v29 = sub_1DB50A650();
        v81(v25, v27, v29, v30, &v94);
        if (v7)
        {

          sub_1DB3151CC(&v94);
          __swift_destroy_boxed_opaque_existential_0(v92);
          __swift_destroy_boxed_opaque_existential_0(v93);

          return v27;
        }

        v31 = v80;
        (*v75)(v78, v88, v80);
        v32 = *v74;
        v33 = v79;
        v86 = 0;
        v34 = v77;
        v32(v79, v27, v77);
        (*v73)(v33, 0, 1, v34);
        sub_1DB50A540();
        v25 = v88;
        sub_1DB50A5A0();

        v35 = v34;
        v7 = v86;
        (*v72)(v27, v35);
        (*v71)(v25, v31);
        sub_1DB3151CC(&v94);
        __swift_destroy_boxed_opaque_existential_0(v92);
        __swift_destroy_boxed_opaque_existential_0(v93);
      }

      else
      {
        if (qword_1ECC42218 != -1)
        {
          swift_once();
        }

        v36 = qword_1ECC466E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v37 = swift_allocObject();
        *(v37 + 16) = v85;
        v38 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v91 = MEMORY[0x1E69E6158];
        *&v90 = 0x697274532D6E6F4ELL;
        *(&v90 + 1) = 0xEF2079656B20676ELL;
        v94 = 0u;
        v95 = 0u;
        sub_1DB301D4C(&v90, &v94);
        LOBYTE(v96) = 0;
        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
        }

        *(v38 + 2) = v40 + 1;
        v41 = &v38[40 * v40];
        v42 = v94;
        v43 = v95;
        v41[64] = v96;
        *(v41 + 2) = v42;
        *(v41 + 3) = v43;
        sub_1DB300B14(v93, &v90);
        sub_1DB30C4B8(&v90, v89, &qword_1ECC426B0, &qword_1DB50EEB0);
        v94 = 0u;
        v95 = 0u;
        sub_1DB301D4C(v89, &v94);
        LOBYTE(v96) = 0;
        v45 = *(v38 + 2);
        v44 = *(v38 + 3);
        if (v45 >= v44 >> 1)
        {
          v38 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v38);
        }

        sub_1DB30623C(&v90, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v38 + 2) = v45 + 1;
        v46 = &v38[40 * v45];
        v47 = v96;
        v48 = v95;
        *(v46 + 2) = v94;
        *(v46 + 3) = v48;
        v46[64] = v47;
        if (v76 != 0x2000000000000000)
        {
          v91 = MEMORY[0x1E69E6158];
          *&v90 = 0xD00000000000001ALL;
          *(&v90 + 1) = v70[0];
          v94 = 0u;
          v95 = 0u;
          sub_1DB301D4C(&v90, &v94);
          LOBYTE(v96) = 0;
          v50 = *(v38 + 2);
          v49 = *(v38 + 3);
          if (v50 >= v49 >> 1)
          {
            v38 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v38);
          }

          *(v38 + 2) = v50 + 1;
          v51 = &v38[40 * v50];
          v52 = v94;
          v53 = v95;
          v51[64] = v96;
          *(v51 + 2) = v52;
          *(v51 + 3) = v53;
        }

        v91 = &type metadata for FoundationDictionary;
        v54 = v83;
        *&v90 = v83;
        sub_1DB30C4B8(&v90, v89, &qword_1ECC426B0, &qword_1DB50EEB0);
        v94 = 0u;
        v95 = 0u;
        v55 = v54;
        sub_1DB301D4C(v89, &v94);
        LOBYTE(v96) = 0;
        v57 = *(v38 + 2);
        v56 = *(v38 + 3);
        if (v57 >= v56 >> 1)
        {
          v38 = sub_1DB301BC0((v56 > 1), v57 + 1, 1, v38);
        }

        *(v38 + 2) = v57 + 1;
        v58 = &v38[40 * v57];
        v59 = v94;
        v60 = v95;
        v58[64] = v96;
        *(v58 + 2) = v59;
        *(v58 + 3) = v60;
        sub_1DB30623C(&v90, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v37 + 32) = v38;
        v61 = sub_1DB50AF20();
        if (os_log_type_enabled(v36, v61))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v62 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v62[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v62 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v64 = swift_allocObject();
          *(v64 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v94 = v37;
          *(&v94 + 1) = sub_1DB31485C;
          *&v95 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v65 = sub_1DB50A5E0();
          v67 = v66;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v68 = swift_allocObject();
          *(v68 + 16) = v85;
          *(v68 + 56) = MEMORY[0x1E69E6158];
          *(v68 + 64) = sub_1DB31494C();
          *(v68 + 32) = v65;
          *(v68 + 40) = v67;
          sub_1DB50A1E0();

          v25 = v88;
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0(v92);
        __swift_destroy_boxed_opaque_existential_0(v93);
        v27 = v84;
      }

      sub_1DB50AEF0();
      v98 = v94;
      v99 = v95;
      v100 = v96;
      v101 = v97;
      if (!*(&v95 + 1))
      {
        v27 = v102;
        break;
      }
    }
  }

  return v27;
}

uint64_t sub_1DB4A052C(void *a1)
{
  sub_1DB50AEE0();
  sub_1DB50AEF0();
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  if (!*(&v76 + 1))
  {
    v64 = MEMORY[0x1E69E7CC8];
LABEL_41:

    return v64;
  }

  v83 = "NetworkReachability" & 0x2F00000000000000;
  v64 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1DB30C200(&v79, v74);
    sub_1DB30C200(&v81, v73);
    sub_1DB300B14(v74, &v75);
    sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v12 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
      v68 = MEMORY[0x1E69E6158];
      *&v67 = 0x697274532D6E6F4ELL;
      *(&v67 + 1) = 0xEF2079656B20676ELL;
      v75 = 0u;
      v76 = 0u;
      sub_1DB301D4C(&v67, &v75);
      LOBYTE(v77) = 0;
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v75;
      v17 = v76;
      v15[64] = v77;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      sub_1DB300B14(v74, &v67);
      sub_1DB30C4B8(&v67, v72, &qword_1ECC426B0, &qword_1DB50EEB0);
      v75 = 0u;
      v76 = 0u;
      sub_1DB301D4C(v72, &v75);
      LOBYTE(v77) = 0;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v12);
      }

      sub_1DB30623C(&v67, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v12 + 2) = v19 + 1;
      v20 = &v12[40 * v19];
      v21 = v77;
      v22 = v76;
      *(v20 + 2) = v75;
      *(v20 + 3) = v22;
      v20[64] = v21;
      if (v83 != 0x2000000000000000)
      {
        v68 = MEMORY[0x1E69E6158];
        *&v67 = 0xD00000000000001ALL;
        *(&v67 + 1) = 0x80000001DB530190;
        v75 = 0u;
        v76 = 0u;
        sub_1DB301D4C(&v67, &v75);
        LOBYTE(v77) = 0;
        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v12);
        }

        *(v12 + 2) = v24 + 1;
        v25 = &v12[40 * v24];
        v26 = v75;
        v27 = v76;
        v25[64] = v77;
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v68 = &type metadata for FoundationDictionary;
      *&v67 = a1;
      sub_1DB30C4B8(&v67, v72, &qword_1ECC426B0, &qword_1DB50EEB0);
      v75 = 0u;
      v76 = 0u;
      v28 = a1;
      sub_1DB301D4C(v72, &v75);
      LOBYTE(v77) = 0;
      v30 = *(v12 + 2);
      v29 = *(v12 + 3);
      if (v30 >= v29 >> 1)
      {
        v12 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v12);
      }

      *(v12 + 2) = v30 + 1;
      v31 = &v12[40 * v30];
      v32 = v75;
      v33 = v76;
      v31[64] = v77;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      sub_1DB30623C(&v67, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v11 + 32) = v12;
      v34 = sub_1DB50AF20();
      if (os_log_type_enabled(v10, v34))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v35 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v35[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v35 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v37 = swift_allocObject();
        *(v37 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v75 = v11;
        *(&v75 + 1) = sub_1DB314CB0;
        *&v76 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v38 = sub_1DB50A5E0();
        v40 = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1DB50EE90;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = sub_1DB31494C();
        *(v41 + 32) = v38;
        *(v41 + 40) = v40;
        sub_1DB50A1E0();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      goto LABEL_5;
    }

    v2 = v67;
    sub_1DB300B14(v73, &v67);
    *(&v76 + 1) = &type metadata for FoundationValue;
    *&v77 = &off_1F56FB6B0;
    *&v75 = swift_allocObject();
    sub_1DB30C200(&v67, (v75 + 16));
    v3 = sub_1DB50A650();
    v5 = v4;
    sub_1DB30C4B8(&v75, &v67, &qword_1ECC42E38, &qword_1DB50FB80);
    if (!v68)
    {
      sub_1DB30623C(&v67, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_43:
      sub_1DB315178();
      swift_allocError();
      *v61 = v3;
      v61[1] = v5;
      v61[2] = 0x40000001F56F24A0uLL;
      v61[3] = MEMORY[0x1E69E7CC0];
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_1DB3151CC(&v75);

      return v64;
    }

    v6 = __swift_project_boxed_opaque_existential_1(&v67, v68);
    sub_1DB300B14(v6, v72);
    ScalarDictionary.Value.init(rawValue:)(v72, &v69);
    __swift_destroy_boxed_opaque_existential_0(&v67);
    v7 = v71;
    if (v71 == 255)
    {
      goto LABEL_43;
    }

    v9 = v69;
    v8 = v70;
    if (!v5)
    {

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_1DB3151CC(&v75);
      sub_1DB4A2454(v3, 0, v9, v8, v7);
      goto LABEL_5;
    }

    sub_1DB314BBC(v69, v70, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v64;
    v43 = sub_1DB306160(v3, v5);
    v44 = *(v64 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    if (*(v64 + 24) >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = v43;
        v66 = v42;
        sub_1DB3119D4();
        v42 = v66;
        v43 = v63;
      }
    }

    else
    {
      v65 = v42;
      sub_1DB31A114(v46, isUniquelyReferenced_nonNull_native);
      v47 = sub_1DB306160(v3, v5);
      v49 = v48 & 1;
      v42 = v65;
      if ((v65 & 1) != v49)
      {
        goto LABEL_46;
      }

      v43 = v47;
    }

    v50 = v67;
    v64 = v67;
    if (v42)
    {
      v51 = *(v67 + 56) + 24 * v43;
      v52 = *v51;
      v53 = *(v51 + 8);
      *v51 = v9;
      *(v51 + 8) = v8;
      v54 = *(v51 + 16);
      *(v51 + 16) = v7;
      sub_1DB31EB94(v52, v53, v54);

      sub_1DB31EB94(v9, v8, v7);

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      *(v67 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v55 = (v50[6] + 16 * v43);
      *v55 = v3;
      v55[1] = v5;
      v56 = v50[7] + 24 * v43;
      *v56 = v9;
      *(v56 + 8) = v8;
      *(v56 + 16) = v7;
      sub_1DB31EB94(v9, v8, v7);

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v57 = v50[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_45;
      }

      v50[2] = v59;
    }

    sub_1DB3151CC(&v75);
LABEL_5:
    sub_1DB50AEF0();
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v82 = v78;
    if (!*(&v76 + 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void *sub_1DB4A0E54(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v97 = a1;
  v98 = a2;
  v12 = sub_1DB50B120();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v74 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_1DB50B120();
  *&v100 = *(v87 - 8);
  v15 = *(v100 + 64);
  v16 = MEMORY[0x1EEE9AC00](v87);
  v101 = &v74 - v17;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v86 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v74 - v26;
  v89 = a4;
  v90 = a5;
  v91 = a6;
  v27 = sub_1DB50A470();
  v115 = v27;
  v28 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v111 = v107;
  v112 = v108;
  v113 = v109;
  v114 = v110;
  if (*(&v108 + 1))
  {
    v96 = "NetworkReachability" & 0x2F00000000000000;
    v93 = TupleTypeMetadata2 - 8;
    v82 = (v22 + 32);
    v83 = 0x80000001DB530190;
    v80 = (v22 + 16);
    v81 = (v18 + 32);
    v78 = (v18 + 56);
    v79 = (v18 + 16);
    v76 = (v22 + 8);
    v77 = (v18 + 8);
    v75 = (v100 + 8);
    v100 = xmmword_1DB50EE90;
    v94 = v28;
    v95 = a3;
    while (1)
    {
      sub_1DB30C200(&v111, v106);
      sub_1DB30C200(&v113, v105);
      sub_1DB300B14(v106, &v107);
      sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
      if (swift_dynamicCast())
      {
        v27 = v103;
        sub_1DB300B14(v105, &v103);
        *(&v108 + 1) = &type metadata for FoundationValue;
        *&v109 = &off_1F56FB6B0;
        *&v107 = swift_allocObject();
        sub_1DB30C200(&v103, (v107 + 16));
        v29 = sub_1DB50A650();
        v97(v29);
        if (v7)
        {

          sub_1DB3151CC(&v107);
          __swift_destroy_boxed_opaque_existential_0(v105);
          __swift_destroy_boxed_opaque_existential_0(v106);

          return v27;
        }

        v30 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v101, 1, TupleTypeMetadata2) == 1)
        {

          sub_1DB3151CC(&v107);
          __swift_destroy_boxed_opaque_existential_0(v105);
          __swift_destroy_boxed_opaque_existential_0(v106);
          (*v75)(v101, v87);
          goto LABEL_5;
        }

        v63 = *(v30 + 48);
        v64 = v84;
        v65 = v101;
        v66 = v89;
        (*v82)(v84, v101, v89);
        v67 = &v65[v63];
        v68 = v86;
        v69 = v90;
        (*v81)(v86, v67, v90);
        v70 = *v80;
        v92 = 0;
        v70(v85, v64, v66);
        v71 = v88;
        (*v79)(v88, v68, v69);
        (*v78)(v71, 0, 1, v69);
        sub_1DB50A540();
        v7 = v92;
        sub_1DB50A5A0();

        (*v77)(v68, v69);
        v72 = v64;
        a3 = v95;
        (*v76)(v72, v66);
        sub_1DB3151CC(&v107);
      }

      else
      {
        if (qword_1ECC42218 != -1)
        {
          swift_once();
        }

        v31 = qword_1ECC466E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v32 = swift_allocObject();
        *(v32 + 16) = v100;
        v33 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v104 = MEMORY[0x1E69E6158];
        *&v103 = 0x697274532D6E6F4ELL;
        *(&v103 + 1) = 0xEF2079656B20676ELL;
        v107 = 0u;
        v108 = 0u;
        sub_1DB301D4C(&v103, &v107);
        LOBYTE(v109) = 0;
        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v36 = &v33[40 * v35];
        v37 = v107;
        v38 = v108;
        v36[64] = v109;
        *(v36 + 2) = v37;
        *(v36 + 3) = v38;
        sub_1DB300B14(v106, &v103);
        sub_1DB30C4B8(&v103, v102, &qword_1ECC426B0, &qword_1DB50EEB0);
        v107 = 0u;
        v108 = 0u;
        sub_1DB301D4C(v102, &v107);
        LOBYTE(v109) = 0;
        v40 = *(v33 + 2);
        v39 = *(v33 + 3);
        if (v40 >= v39 >> 1)
        {
          v33 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v33);
        }

        sub_1DB30623C(&v103, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v33 + 2) = v40 + 1;
        v41 = &v33[40 * v40];
        v42 = v109;
        v43 = v108;
        *(v41 + 2) = v107;
        *(v41 + 3) = v43;
        v41[64] = v42;
        if (v96 != 0x2000000000000000)
        {
          v104 = MEMORY[0x1E69E6158];
          *&v103 = 0xD00000000000001ALL;
          *(&v103 + 1) = v83;
          v107 = 0u;
          v108 = 0u;
          sub_1DB301D4C(&v103, &v107);
          LOBYTE(v109) = 0;
          v45 = *(v33 + 2);
          v44 = *(v33 + 3);
          if (v45 >= v44 >> 1)
          {
            v33 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v33);
          }

          *(v33 + 2) = v45 + 1;
          v46 = &v33[40 * v45];
          v47 = v107;
          v48 = v108;
          v46[64] = v109;
          *(v46 + 2) = v47;
          *(v46 + 3) = v48;
        }

        v104 = &type metadata for FoundationDictionary;
        *&v103 = a3;
        sub_1DB30C4B8(&v103, v102, &qword_1ECC426B0, &qword_1DB50EEB0);
        v107 = 0u;
        v108 = 0u;
        v49 = a3;
        sub_1DB301D4C(v102, &v107);
        LOBYTE(v109) = 0;
        v51 = *(v33 + 2);
        v50 = *(v33 + 3);
        if (v51 >= v50 >> 1)
        {
          v33 = sub_1DB301BC0((v50 > 1), v51 + 1, 1, v33);
        }

        *(v33 + 2) = v51 + 1;
        v52 = &v33[40 * v51];
        v53 = v107;
        v54 = v108;
        v52[64] = v109;
        *(v52 + 2) = v53;
        *(v52 + 3) = v54;
        sub_1DB30623C(&v103, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v32 + 32) = v33;
        v55 = sub_1DB50AF20();
        if (os_log_type_enabled(v31, v55))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v56 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v56[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v56 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v58 = swift_allocObject();
          *(v58 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v107 = v32;
          *(&v107 + 1) = sub_1DB314CB0;
          *&v108 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v59 = sub_1DB50A5E0();
          v61 = v60;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v62 = swift_allocObject();
          *(v62 + 16) = v100;
          *(v62 + 56) = MEMORY[0x1E69E6158];
          *(v62 + 64) = sub_1DB31494C();
          *(v62 + 32) = v59;
          *(v62 + 40) = v61;
          sub_1DB50A1E0();

          a3 = v95;
        }

        else
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v105);
      __swift_destroy_boxed_opaque_existential_0(v106);
LABEL_5:
      sub_1DB50AEF0();
      v111 = v107;
      v112 = v108;
      v113 = v109;
      v114 = v110;
      if (!*(&v108 + 1))
      {
        v27 = v115;
        break;
      }
    }
  }

  return v27;
}

char *sub_1DB4A190C(void *a1)
{
  v2 = sub_1DB509B40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 keyEnumerator];
  sub_1DB50AF00();
  sub_1DB4A1B24();
  sub_1DB50B170();
  if (v24)
  {
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB30C200(&v23, &v20);
      if (swift_dynamicCast())
      {
        v11 = v22;
        if (v22)
        {
          v12 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v8 = sub_1DB302404(0, *(v8 + 2) + 1, 1, v8);
          }

          v15 = *(v8 + 2);
          v14 = *(v8 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v18 = v15 + 1;
            v17 = sub_1DB302404((v14 > 1), v15 + 1, 1, v8);
            v16 = v18;
            v8 = v17;
          }

          *(v8 + 2) = v16;
          v10 = &v8[16 * v15];
          *(v10 + 4) = v19;
          *(v10 + 5) = v11;
        }
      }

      sub_1DB50B170();
    }

    while (v24);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

unint64_t sub_1DB4A1B24()
{
  result = qword_1ECC46770;
  if (!qword_1ECC46770)
  {
    sub_1DB509B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46770);
  }

  return result;
}

uint64_t sub_1DB4A1B7C(void *a1, uint64_t a2)
{
  v86 = a1;
  sub_1DB50AEE0();
  sub_1DB50AEF0();
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  if (!*(&v79 + 1))
  {
    v67 = MEMORY[0x1E69E7CC8];
LABEL_41:

    return v67;
  }

  v67 = MEMORY[0x1E69E7CC8];
  v4 = &qword_1ECC45BE0;
  v70 = a2;
  while (1)
  {
    sub_1DB30C200(&v82, v77);
    sub_1DB30C200(&v84, v76);
    sub_1DB300B14(v77, &v78);
    sub_1DB336FD4(0, v4, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = v4;
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v12 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
      v73 = MEMORY[0x1E69E6158];
      *&v71 = 0x697274532D6E6F4ELL;
      *(&v71 + 1) = 0xEF2079656B20676ELL;
      v78 = 0u;
      v79 = 0u;
      sub_1DB301D4C(&v71, &v78);
      LOBYTE(v80) = 0;
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v78;
      v17 = v79;
      v15[64] = v80;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      sub_1DB300B14(v77, &v71);
      sub_1DB30C4B8(&v71, v75, &qword_1ECC426B0, &qword_1DB50EEB0);
      v78 = 0u;
      v79 = 0u;
      sub_1DB301D4C(v75, &v78);
      LOBYTE(v80) = 0;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v12);
      }

      sub_1DB30623C(&v71, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v12 + 2) = v19 + 1;
      v20 = &v12[40 * v19];
      v21 = v80;
      v22 = v79;
      *(v20 + 2) = v78;
      *(v20 + 3) = v22;
      v20[64] = v21;
      if (("NetworkReachability" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v73 = MEMORY[0x1E69E6158];
        *&v71 = 0xD00000000000001ALL;
        *(&v71 + 1) = 0x80000001DB530190;
        v78 = 0u;
        v79 = 0u;
        sub_1DB301D4C(&v71, &v78);
        LOBYTE(v80) = 0;
        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v12);
        }

        *(v12 + 2) = v24 + 1;
        v25 = &v12[40 * v24];
        v26 = v78;
        v27 = v79;
        v25[64] = v80;
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v73 = &type metadata for FoundationDictionary;
      v28 = v86;
      *&v71 = v86;
      sub_1DB30C4B8(&v71, v75, &qword_1ECC426B0, &qword_1DB50EEB0);
      v78 = 0u;
      v79 = 0u;
      v29 = v28;
      sub_1DB301D4C(v75, &v78);
      LOBYTE(v80) = 0;
      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v12);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[40 * v31];
      v33 = v78;
      v34 = v79;
      v32[64] = v80;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      sub_1DB30623C(&v71, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v11 + 32) = v12;
      v35 = sub_1DB50AF20();
      if (os_log_type_enabled(v10, v35))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v36 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v36 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v38 = swift_allocObject();
        *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v78 = v11;
        *(&v78 + 1) = sub_1DB314CB0;
        *&v79 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v39 = sub_1DB50A5E0();
        v41 = v40;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1DB50EE90;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1DB31494C();
        *(v42 + 32) = v39;
        *(v42 + 40) = v41;
        sub_1DB50A1E0();

        a2 = v70;
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v4 = v9;
      goto LABEL_27;
    }

    v5 = v71;
    sub_1DB300B14(v76, &v71);
    *(&v79 + 1) = &type metadata for FoundationValue;
    *&v80 = &off_1F56FB6B0;
    *&v78 = swift_allocObject();
    sub_1DB30C200(&v71, (v78 + 16));
    v6 = sub_1DB50A650();
    sub_1DB33E4A4(v6, v7, &v78, a2, &v71);
    if (v2)
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      sub_1DB3151CC(&v78);

      return v67;
    }

    v8 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      sub_1DB3151CC(&v78);
      sub_1DB4A2454(v71, 0, v72, v73, v74);
      goto LABEL_27;
    }

    v43 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    sub_1DB314BBC(v72, v73, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v67;
    v44 = v43;
    v46 = sub_1DB306160(v43, v8);
    v47 = v67[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      break;
    }

    if (v67[3] >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = v45;
        sub_1DB3119D4();
        v45 = v69;
      }
    }

    else
    {
      v68 = v45;
      sub_1DB31A114(v49, isUniquelyReferenced_nonNull_native);
      v50 = sub_1DB306160(v44, v8);
      v52 = v51 & 1;
      v45 = v68;
      if ((v68 & 1) != v52)
      {
        goto LABEL_46;
      }

      v46 = v50;
    }

    v67 = v71;
    if (v45)
    {
      v53 = *(v71 + 56) + 24 * v46;
      v54 = *v53;
      v55 = *(v53 + 8);
      *v53 = v64;
      *(v53 + 8) = v65;
      v56 = *(v53 + 16);
      *(v53 + 16) = v66;
      sub_1DB31EB94(v54, v55, v56);

      sub_1DB31EB94(v64, v65, v66);

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
    }

    else
    {
      *(v71 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v57 = (v67[6] + 16 * v46);
      *v57 = v44;
      v57[1] = v8;
      v58 = v67[7] + 24 * v46;
      *v58 = v64;
      *(v58 + 8) = v65;
      *(v58 + 16) = v66;
      sub_1DB31EB94(v64, v65, v66);

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v59 = v67[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_45;
      }

      v67[2] = v61;
    }

    v4 = &qword_1ECC45BE0;
    sub_1DB3151CC(&v78);
LABEL_27:
    sub_1DB50AEF0();
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    if (!*(&v79 + 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:

  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void sub_1DB4A2454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_1DB31EB94(a3, a4, a5);
  }
}

void *Bag.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return sub_1DB4A28D4(a1, &selRef_dictionaryForKey_, &unk_1ECC46780, &qword_1DB5142C0, sub_1DB3C8F68, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_URLForKey_, &qword_1ECC45828, &unk_1DB522590, sub_1DB3C8D2C, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_BOOLForKey_, &qword_1ECC46790, &unk_1DB5200B0, sub_1DB3C8C74, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_doubleForKey_, &qword_1ECC46798, &unk_1DB5225B0, sub_1DB3C8CD4, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_integerForKey_, &qword_1ECC467A0, &unk_1DB5200C0, sub_1DB3C8CA4, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_stringForKey_, &qword_1ECC467A8, &unk_1DB5225A0, sub_1DB3C8D04, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_arrayForKey_, &qword_1ECC467B0, &qword_1DB5200D0, sub_1DB3C8D30, a2);
}

void Bag.profile.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 profile];
  v5 = sub_1DB50A650();
  v7 = v6;

  v8 = [v3 profileVersion];
  v9 = sub_1DB50A650();
  v11 = v10;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v11;
}

JetCore::Bag::Profile __swiftcall Bag.Profile.init(name:version:)(Swift::String name, Swift::String version)
{
  *v2 = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

uint64_t Bag.Profile.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Bag.Profile.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Bag.Profile.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Bag.Profile.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void sub_1DB4A26D0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB34FFDC((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC67CA8 = v2;
}

void *sub_1DB4A28D4@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = [*v6 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_allocObject();
  result[2] = v11;
  result[3] = a5;
  result[4] = 0;
  *a6 = result;
  return result;
}

uint64_t sub_1DB4A29AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = &type metadata for AMSKitBagFromJetEngineBag;
  a2[4] = sub_1DB4A29FC();
  *a2 = v3;

  return swift_unknownObjectRetain();
}

unint64_t sub_1DB4A29FC()
{
  result = qword_1ECC467B8[0];
  if (!qword_1ECC467B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC467B8);
  }

  return result;
}

uint64_t sub_1DB4A2A50@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t _CodeByKind_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  v5 = sub_1DB50B120();
  v6 = *(*(v5 - 8) + 40);

  return v6(a2, a1, v5);
}

uint64_t _CodeByKind_OrNil.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_1DB50B120();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t _CodeByKind_OrNil.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_1DB50B120();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t _CodeByKind_OrNil.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1DB50B120();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  (*(v6 + 16))(v9, v1, v5, v13);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v15, v9, AssociatedTypeWitness);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1DB50BA00();
    v16 = v18[0];
    (*(v10 + 8))(v15, AssociatedTypeWitness);
  }

  return v16;
}

uint64_t _CodeByKind_OrNil.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v24 - v11;
  type metadata accessor for CodeByKind();
  v12 = sub_1DB50B120();
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v14);
  sub_1DB30BE90(a1, v29);
  swift_getWitnessTable();
  v17 = v30;
  v18 = sub_1DB50B150();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = type metadata accessor for _CodeByKind_OrNil();
    return (*(*(v19 - 8) + 8))(a4, v19);
  }

  else
  {
    v30 = a4;
    MEMORY[0x1EEE9AC00](v18);
    *(&v24 - 2) = a2;
    *(&v24 - 1) = a3;
    KeyPath = swift_getKeyPath();
    v22 = v26;
    sub_1DB4A2A50(sub_1DB4A4508, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v23, v26);

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v25 + 8))(v16, v12);
    return (*(v27 + 40))(v30, v22, v28);
  }
}

uint64_t _CodeByKind_OrNil.init(_partiallyFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_1DB50B120();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CodeByKind();
  v13 = sub_1DB50B120();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - v17;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v16);
  v19 = v25;
  sub_1DB30BE90(v25, v29);
  swift_getWitnessTable();
  Optional<A>.init(_partiallyFrom:)(v29, v12, v18);
  v27 = a2;
  v28 = a3;
  KeyPath = swift_getKeyPath();
  sub_1DB4A2A50(sub_1DB4019AC, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v21, v11);

  __swift_destroy_boxed_opaque_existential_0(v19);
  (*(v14 + 8))(v18, v13);
  return (*(v8 + 40))(v24, v11, v26);
}

uint64_t _CodeByKind_OrNil.encode(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = type metadata accessor for CodeByKind();
  v5 = sub_1DB50B120();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v13 = v2;
  v14 = v3;
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();
  sub_1DB4A2A50(sub_1DB4A44F0, v12, MEMORY[0x1E69E73E0], v4, v10, v9);
  swift_getWitnessTable();
  sub_1DB50B130();
  return (*(v6 + 8))(v9, v5);
}

uint64_t _CodeByKind_OrNil._partiallyEncode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for CodeByKind();
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9];
  v15 = v3;
  v16 = v4;
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();
  sub_1DB4A2A50(sub_1DB4A3AF8, v14, MEMORY[0x1E69E73E0], v5, v11, v10);
  WitnessTable = swift_getWitnessTable();
  Optional<A>._partiallyEncode(to:)(a1, v6, WitnessTable);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DB4A39F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return CodeByKind.init(wrappedValue:)(v8, a2);
}

uint64_t sub_1DB4A3AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DB4A39F8(a1, a2);
}

BOOL static _CodeByKind_OrNil<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v29 - v10;
  v11 = sub_1DB50B120();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v29 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v16 = *(v32 + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v29 - v18;
  v21 = *(v20 + 48);
  v33 = v12;
  v22 = *(v12 + 16);
  v22(&v29 - v18, a1, v11, v17);
  (v22)(&v19[v21], a2, v11);
  v23 = *(v8 + 48);
  if (v23(v19, 1, AssociatedTypeWitness) != 1)
  {
    (v22)(v34, v19, v11);
    if (v23(&v19[v21], 1, AssociatedTypeWitness) != 1)
    {
      v25 = v30;
      (*(v8 + 32))(v30, &v19[v21], AssociatedTypeWitness);
      v26 = v34;
      v27 = sub_1DB50A610();
      v28 = *(v8 + 8);
      v28(v25, AssociatedTypeWitness);
      v28(v26, AssociatedTypeWitness);
      (*(v33 + 8))(v19, v11);
      return (v27 & 1) != 0;
    }

    (*(v8 + 8))(v34, AssociatedTypeWitness);
LABEL_6:
    (*(v32 + 8))(v19, TupleTypeMetadata2);
    return 0;
  }

  if (v23(&v19[v21], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_6;
  }

  (*(v33 + 8))(v19, v11);
  return 1;
}

uint64_t _CodeByKind_OrNil<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();

  return sub_1DB50B140();
}

uint64_t _CodeByKind_OrNil<>.hashValue.getter(uint64_t a1)
{
  sub_1DB50BCF0();
  _CodeByKind_OrNil<>.hash(into:)(v3, a1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  _CodeByKind_OrNil<>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A4078(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_1DB50B120();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB4A4104(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_8;
    }

    v15 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= 0xFF)
      {
        if (v15 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v14 = *(a1 + v12);
        if (!*(a1 + v12))
        {
          goto LABEL_26;
        }

LABEL_15:
        v16 = (v14 - 1) << v13;
        if (v12 > 3)
        {
          v16 = 0;
        }

        if (v12)
        {
          if (v12 > 3)
          {
            LODWORD(v12) = 4;
          }

          if (v12 > 2)
          {
            if (v12 == 3)
            {
              LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v12) = *a1;
            }
          }

          else if (v12 == 1)
          {
            LODWORD(v12) = *a1;
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        return v11 + (v12 | v16) + 1;
      }

      v14 = *(a1 + v12);
      if (*(a1 + v12))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v10 < 2)
  {
    return 0;
  }

  v18 = (*(v9 + 48))(a1);
  if (v18 >= 2)
  {
    return v18 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DB4A42A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

JetCore::Account_optional __swiftcall AccountProvider.account(forUserID:)(Swift::String forUserID)
{
  v4 = v3;
  v8 = v1;
  v9 = v2;
  requirementFailure(_:file:line:)(sub_1DB4A479C, &v7, "JetCore/AccountProvider.swift", 29, 2, 80);
  *v4 = 0;
  result.value.base.super.isa = v5;
  result.is_nil = v6;
  return result;
}

void AccountProvider.onActiveAccountChange.getter()
{
  sub_1DB50B320();

  swift_getDynamicType();
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000002CLL, 0x80000001DB5301D0);
  sub_1DB50B580();
  __break(1u);
}

uint64_t AccountProviderActiveAccountChange.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A46F0()
{
  sub_1DB50B320();

  swift_getDynamicType();
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000028, 0x80000001DB530200);
  return 60;
}

uint64_t sub_1DB4A479C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DB4A46F0();
}

unint64_t sub_1DB4A47AC()
{
  result = qword_1ECC46840[0];
  if (!qword_1ECC46840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46840);
  }

  return result;
}

uint64_t EmptyActionImplementation.perform(_:asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1DB4A48D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1DB4A495C(char a1, void (*a2)(uint64_t *))
{
  v5 = v2[4];
  v6 = v2[5];
  ObjectType = swift_getObjectType();
  v8 = v2[3];
  v13 = v2[2];
  v14 = v8;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  Preferences.subscript.getter(&v13, ObjectType, v9, v6, &v15);

  v11 = v15;
  if (!v15)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    v11 = MEMORY[0x1E69E7CC8];
  }

  v16 = v11;
  a2(&v16);
  v12 = v2[2];
  v14 = v2[3];
  v15 = v16;
  v13 = v12;

  return Preferences.subscript.setter(&v15, &v13, ObjectType, v9, v6);
}

uint64_t sub_1DB4A4A60@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[4];
  v6 = v2[5];
  ObjectType = swift_getObjectType();
  v8 = v2[3];
  v19[0] = v2[2];
  v19[1] = v8;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  Preferences.subscript.getter(v19, ObjectType, v9, v6, &v20);

  v11 = v20;
  if (!v20)
  {
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v16 = sub_1DB306160(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:
    *a2 = 0u;
    a2[1] = 0u;
  }

  sub_1DB300B14(*(v11 + 56) + 32 * v16, a2);
}

uint64_t sub_1DB4A4B88(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  sub_1DB301CDC(a3, v10);
  return sub_1DB30D454(v10, v6, v8);
}

uint64_t sub_1DB4A4C1C(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1DB30F708(v4, v5, v7);

  return sub_1DB301DBC(v7);
}

uint64_t sub_1DB4A4C9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DB4A4CE0(uint64_t a1, uint64_t *a2)
{
  sub_1DB4A495C(1, sub_1DB4A5028);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

void (*sub_1DB4A4D48(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1DB30BE90(a2, v5);
  sub_1DB4A4A60(a2, (v6 + 80));
  return sub_1DB4A4DD4;
}

void sub_1DB4A4DD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 80;
  v4 = *(*a1 + 144);
  if (a2)
  {
    sub_1DB301CDC(*a1 + 80, v2 + 112);
    v5 = sub_1DB2FEA0C(v2, v2 + 40);
    MEMORY[0x1EEE9AC00](v5);
    sub_1DB4A495C(1, sub_1DB4A5020);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 112);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DB4A495C(1, sub_1DB4A5028);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  sub_1DB301DBC(v3);
  free(v2);
}

uint64_t sub_1DB4A4F34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v2 + 40))(ObjectType, v2);
}

void *Preferences.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for NestedPreferences();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = a3;

  swift_unknownObjectRetain();
  return v7;
}

uint64_t JSONContext.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB4A5A4C(a1, a2, sub_1DB31485C, a3);
}

{
  return sub_1DB4A5A4C(a1, a2, sub_1DB314CB0, a3);
}

JetCore::JSONContext __swiftcall JSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  v63 = v1;
  v74 = sub_1DB50B560();
  v3 = *(v74 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44920, &qword_1DB516B68);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v62 - v14;
  v78 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v15 = *(userInfo._rawValue + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  sub_1DB50A4F0();
  v16 = 0;
  v66 = v3;
  rawValue = userInfo._rawValue;
  v19 = *(userInfo._rawValue + 8);
  v18 = userInfo._rawValue + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v64 = v3 + 16;
  v72 = v7;
  v73 = (v3 + 32);
  v24 = (v3 + 8);
  v25 = v13;
  v68 = v23;
  v69 = v24;
  v71 = v13;
  while (v22)
  {
    v28 = v16;
LABEL_16:
    v32 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v33 = v32 | (v28 << 6);
    v35 = v66;
    v34 = rawValue;
    v36 = v65;
    v37 = v74;
    (*(v66 + 16))(v65, rawValue[6] + *(v66 + 72) * v33, v74);
    sub_1DB300B14(v34[7] + 32 * v33, v77);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v25 = v71;
    v40(v71, v36, v37);
    sub_1DB30C200(v77, (v25 + v39));
    (*(*(v38 - 8) + 56))(v25, 0, 1, v38);
    v31 = v70;
    v7 = v72;
LABEL_17:
    sub_1DB4A60B8(v25, v31);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
    if ((*(*(v41 - 8) + 48))(v31, 1, v41) == 1)
    {

      *v63 = v78;
      return result;
    }

    v42 = *(v41 + 48);
    (*v73)(v7, v31, v74);
    sub_1DB30C200((v31 + v42), v77);
    v43 = sub_1DB50B550();
    v45 = v44;
    sub_1DB300B14(v77, v76);
    v46 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v46;
    v78 = 0x8000000000000000;
    v49 = sub_1DB306160(v43, v45);
    v50 = *(v46 + 16);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_32;
    }

    v53 = v48;
    if (*(v46 + 24) >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DB3112DC();
        if (v53)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DB319570(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_1DB306160(v43, v45);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_34;
      }

      v49 = v54;
      if (v53)
      {
LABEL_4:

        v26 = v75;
        v27 = (v75[7] + 32 * v49);
        __swift_destroy_boxed_opaque_existential_0(v27);
        sub_1DB30C200(v76, v27);
        __swift_destroy_boxed_opaque_existential_0(v77);
        v7 = v72;
        (*v69)(v72, v74);
        goto LABEL_5;
      }
    }

    v26 = v75;
    v75[(v49 >> 6) + 8] |= 1 << v49;
    v56 = (v26[6] + 16 * v49);
    *v56 = v43;
    v56[1] = v45;
    sub_1DB30C200(v76, (v26[7] + 32 * v49));
    __swift_destroy_boxed_opaque_existential_0(v77);
    v7 = v72;
    (*v69)(v72, v74);
    v57 = v26[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_33;
    }

    v26[2] = v59;
LABEL_5:

    v78 = v26;
    v25 = v71;
    v23 = v68;
  }

  if (v23 <= v16 + 1)
  {
    v29 = v16 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v31 = v70;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
      (*(*(v60 - 8) + 56))(v25, 1, 1, v60);
      v22 = 0;
      v16 = v30;
      goto LABEL_17;
    }

    v22 = *&v18[8 * v28];
    ++v16;
    if (v22)
    {
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result.storage._rawValue = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t JSONContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t JSONContext.Property.codingUserInfoKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43510, &qword_1DB5118D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = v1[1];

  sub_1DB50B540();
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_1DB30623C(v6, &qword_1ECC43510, &qword_1DB5118D8);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52A570);
  v12[0] = v7;
  v12[1] = v8;
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52A590);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t JSONContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a4 = *v4;
  v11[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);

  return sub_1DB30D454(v11, v7, v8);
}

JetCore::JSONContext __swiftcall JSONContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

uint64_t JSONContext.removingValue<A>(forProperty:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = *v2;

  sub_1DB30F708(v3, v4, v6);
  return sub_1DB30623C(v6, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t JSONContext.Property.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JSONContext.Property.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static JSONContext.Property.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB4A5A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - v13;
  v15 = *v4;
  if (*(v15 + 16) && (v17 = *a1, v16 = a1[1], v18 = sub_1DB306160(v17, v16), (v19 & 1) != 0))
  {
    sub_1DB300B14(*(v15 + 56) + 32 * v18, &v50);
    sub_1DB30C200(&v50, v55);
    sub_1DB300B14(v55, &v50);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v55);
      v20 = *(a2 - 8);
      v21 = *(v20 + 56);
      v21(v14, 0, 1, a2);
      (*(v20 + 32))(a4, v14, a2);
      return (v21)(a4, 0, 1, a2);
    }

    else
    {
      v24 = *(a2 - 8);
      v25 = *(v24 + 56);
      v47 = v24 + 56;
      v48 = v25;
      v25(v14, 1, 1, a2);
      (*(v10 + 8))(v14, v9);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v26 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB50F8D0;
      v54 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v28._object = 0x80000001DB529860;
      v28._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v53[3] = type metadata accessor for JSONContext.Property();
      v53[0] = v17;
      v53[1] = v16;
      sub_1DB301CDC(v53, v49);
      v50 = 0u;
      v51 = 0u;

      sub_1DB301D4C(v49, &v50);
      v52 = 0;
      v29 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
        v54 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v50;
      v34 = v51;
      v32[64] = v52;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v54 = v29;
      sub_1DB30623C(v53, &qword_1ECC426B0, &qword_1DB50EEB0);
      v35._countAndFlagsBits = 96;
      v35._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      *(v27 + 32) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v36 = swift_allocObject();
      v46 = xmmword_1DB50EE90;
      *(v36 + 16) = xmmword_1DB50EE90;
      v37 = MEMORY[0x1E69E6158];
      *(&v51 + 1) = MEMORY[0x1E69E6158];
      *&v50 = 0xD000000000000027;
      *(&v50 + 1) = 0x80000001DB5295C0;
      *(v36 + 48) = 0u;
      *(v36 + 32) = 0u;
      sub_1DB301D4C(&v50, v36 + 32);
      *(v36 + 64) = 0;
      *(v27 + 40) = v36;
      v38 = sub_1DB50AF40();
      if (os_log_type_enabled(v26, v38))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v39 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v39[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v39 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v41 = swift_allocObject();
        *(v41 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v50 = v27;
        *(&v50 + 1) = a3;
        *&v51 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v42 = sub_1DB50A5E0();
        v44 = v43;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v45 = swift_allocObject();
        *(v45 + 16) = v46;
        *(v45 + 56) = v37;
        *(v45 + 64) = sub_1DB31494C();
        *(v45 + 32) = v42;
        *(v45 + 40) = v44;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v55);
      return v48(a4, 1, 1, a2);
    }
  }

  else
  {
    v23 = *(*(a2 - 8) + 56);

    return v23(a4, 1, 1, a2, v12);
  }
}

uint64_t sub_1DB4A60B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44920, &qword_1DB516B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB4A6138()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB4A6174@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DB30EDEC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311750();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_1DB50B560();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1DB30C200((*(v11 + 56) + 32 * v8), a2);
    sub_1DB30FF10(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_1DB50B120();
  *&v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - v9;
  v11 = sub_1DB50B560();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v55 = *a1;
  v56 = v17;
  v50 = a3;
  v18 = type metadata accessor for JSONContext.Property();
  JSONContext.Property.codingUserInfoKey.getter(v15);
  if (*(a2 + 16) && (v19 = sub_1DB30EDEC(v15), (v20 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v19, &v52);
    (*(v12 + 8))(v15, v11);
    sub_1DB30C200(&v52, v59);
    sub_1DB300B14(v59, &v52);
    v21 = v50;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v59);
      v22 = *(v21 - 8);
      v23 = *(v22 + 56);
      v23(v10, 0, 1, v21);
      v24 = v49;
      (*(v22 + 32))(v49, v10, v21);
      return (v23)(v24, 0, 1, v21);
    }

    else
    {
      v26 = *(*(v21 - 8) + 56);
      v26(v10, 1, 1, v21);
      (*(v48 + 8))(v10, v7);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v27 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1DB50F8D0;
      v58 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v29._object = 0x80000001DB529860;
      v29._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v57 = v18;
      v55 = v16;
      v56 = v17;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;

      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v30 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v58 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v52;
      v35 = v53;
      v33[64] = v54;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v58 = v30;
      sub_1DB30623C(&v55, &qword_1ECC426B0, &qword_1DB50EEB0);
      v36._countAndFlagsBits = 96;
      v36._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v28 + 32) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v37 = swift_allocObject();
      v48 = xmmword_1DB50EE90;
      *(v37 + 16) = xmmword_1DB50EE90;
      v38 = MEMORY[0x1E69E6158];
      *(&v53 + 1) = MEMORY[0x1E69E6158];
      *&v52 = 0xD000000000000027;
      *(&v52 + 1) = 0x80000001DB5295C0;
      *(v37 + 48) = 0u;
      *(v37 + 32) = 0u;
      sub_1DB301D4C(&v52, v37 + 32);
      *(v37 + 64) = 0;
      *(v28 + 40) = v37;
      v39 = sub_1DB50AF40();
      if (os_log_type_enabled(v27, v39))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v40 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v40[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v40 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v42 = swift_allocObject();
        *(v42 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v52 = v28;
        *(&v52 + 1) = sub_1DB31485C;
        *&v53 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v43 = sub_1DB50A5E0();
        v45 = v44;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v46 = swift_allocObject();
        *(v46 + 16) = v48;
        *(v46 + 56) = v38;
        *(v46 + 64) = sub_1DB31494C();
        *(v46 + 32) = v43;
        *(v46 + 40) = v45;
        sub_1DB50A1E0();
      }

      v47 = v50;
      __swift_destroy_boxed_opaque_existential_0(v59);
      return (v26)(v49, 1, 1, v47);
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    return (*(*(v50 - 8) + 56))(v49, 1, 1);
  }
}