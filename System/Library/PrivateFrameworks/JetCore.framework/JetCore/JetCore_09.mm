uint64_t sub_1DB3B2B14(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v36 = v3;

  v9 = 0;
  v35 = v4;
  while (v7)
  {
    v13 = v9;
LABEL_11:
    v14 = (v13 << 10) | (16 * __clz(__rbit64(v7)));
    v15 = (*(v36 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (*(v36 + 56) + v14);
    v19 = v18[1];
    v37 = *v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1DB306160(v17, v16);
    v23 = a1[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_22;
    }

    v27 = v22;
    if (a1[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v21;
        sub_1DB312580();
        v21 = v33;
      }
    }

    else
    {
      sub_1DB31B4B4(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1DB306160(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v27)
    {
      v10 = v21;

      v11 = (a1[7] + 16 * v10);
      v12 = v11[1];
      *v11 = v37;
      v11[1] = v19;
    }

    else
    {
      a1[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (a1[6] + 16 * v21);
      *v29 = v17;
      v29[1] = v16;
      v30 = (a1[7] + 16 * v21);
      *v30 = v37;
      v30[1] = v19;
      v31 = a1[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      a1[2] = v32;
    }

    v9 = v13;
    v4 = v35;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t Models.HTTPTemplateAction.JSONBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

uint64_t sub_1DB3B2DE8()
{
  v22[4] = *MEMORY[0x1E69E9840];
  v1 = sub_1DB50A6B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  sub_1DB50A690();
  v8 = sub_1DB50A660();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  if (v10 >> 60 == 15)
  {
    sub_1DB3B779C();
    swift_allocError();
    *v11 = 2;
    result = swift_willThrow();
  }

  else
  {
    v13 = objc_opt_self();
    v14 = sub_1DB509CD0();
    v21[0] = 0;
    v15 = [v13 JSONObjectWithData:v14 options:1 error:v21];

    v16 = v21[0];
    if (v15)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
      sub_1DB300B14(v22, v21);
      sub_1DB3B7750();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v22);
        sub_1DB32E340(v8, v10);
        result = v20;
      }

      else
      {
        sub_1DB3B779C();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
        sub_1DB32E340(v8, v10);
        result = __swift_destroy_boxed_opaque_existential_0(v22);
      }
    }

    else
    {
      v17 = v16;
      sub_1DB509B20();

      swift_willThrow();
      result = sub_1DB32E340(v8, v10);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DB3B3078()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

unint64_t Models.HTTPTemplateAction.FormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

uint64_t sub_1DB3B3170()
{
  v1 = v0[1];
  v44 = *v0;
  sub_1DB301E30();
  v2 = sub_1DB50B180();
  v3 = v2;
  v41 = *(v2 + 16);
  if (v41)
  {
    v4 = 0;
    v5 = (v2 + 40);
    v6 = MEMORY[0x1E69E7CC8];
    v40 = v2;
    while (v4 < *(v3 + 16))
    {
      v9 = *v5;
      v45 = *(v5 - 1);

      v10 = sub_1DB50B180();
      if (v10[2] < 2uLL)
      {

        sub_1DB3B779C();
        swift_allocError();
        *v38 = 2;
        swift_willThrow();

        return v6;
      }

      v11 = v10[4];
      v12 = v10[5];
      v13 = v10[6];
      v14 = v10[7];

      v15 = sub_1DB50B1C0();
      v17 = v16;

      if (v17)
      {
        v42 = v15;
        v43 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_1DB306160(v11, v12);
        v21 = v6[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_28;
        }

        v24 = v19;
        if (v6[3] >= v23)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DB312580();
          }
        }

        else
        {
          sub_1DB31B4B4(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_1DB306160(v11, v12);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_30;
          }

          v20 = v25;
        }

        v3 = v40;
        v30 = v6;
        if (v24)
        {
          v7 = (v6[7] + 16 * v20);
          v8 = v7[1];
          *v7 = v42;
          v7[1] = v43;
        }

        else
        {
          v6[(v20 >> 6) + 8] |= 1 << v20;
          v33 = (v6[6] + 16 * v20);
          *v33 = v11;
          v33[1] = v12;
          v34 = (v6[7] + 16 * v20);
          *v34 = v42;
          v34[1] = v43;
          v35 = v6[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_29;
          }

          v6[2] = v37;
        }
      }

      else
      {
        v27 = sub_1DB306160(v11, v12);
        v29 = v28;

        if (v29)
        {
          v30 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB312580();
            v30 = v6;
          }

          v31 = *(*(v30 + 48) + 16 * v27 + 8);

          v32 = *(*(v30 + 56) + 16 * v27 + 8);

          sub_1DB310C08(v27, v30);

          v3 = v40;
        }

        else
        {

          v30 = v6;
          v3 = v40;
        }
      }

      ++v4;
      v5 += 2;
      v6 = v30;
      if (v41 == v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1DB50BC20();
    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC8];
LABEL_24:

    return v30;
  }

  return result;
}

unint64_t sub_1DB3B357C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1DB3B36D8()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3798()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB3B3844()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3900@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Models.HTTPTemplateAction.Parameter.Target.init(rawValue:)(a1);
}

void sub_1DB3B390C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
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
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_1DB3B3A6C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3B30()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB3B3BE0()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3CA0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Models.HTTPTemplateAction.Parameter.InputType.init(rawValue:)(a1);
}

void sub_1DB3B3CAC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
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

uint64_t Models.HTTPTemplateAction.Parameter.init(key:target:inputType:title:isRequired:maximumLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a3;
  v11 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 17) = v11;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 7955819;
  v6 = *a2;

  JSONObject.subscript.getter(7955819, 0xE300000000000000, v27);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v27);
  if (!v9)
  {
    v12 = 0xE300000000000000;
    goto LABEL_14;
  }

  v5 = 0x746567726174;
  JSONObject.subscript.getter(0x746567726174, 0xE600000000000000, v27);
  sub_1DB30C4B8(v27, v25, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v26)
  {
    sub_1DB3151CC(v27);
    sub_1DB30623C(v25, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_13:

    v12 = 0xE600000000000000;
    goto LABEL_14;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1DB300B14(v10, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB3151CC(v27);
    __swift_destroy_boxed_opaque_existential_0(v25);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  v11 = sub_1DB50B680();

  if (v11 >= 4)
  {
    sub_1DB3151CC(v27);
    goto LABEL_13;
  }

  v28 = v11;
  v12 = 0xE900000000000065;
  sub_1DB3151CC(v27);
  JSONObject.subscript.getter(0x7079547475706E69, 0xE900000000000065, v27);
  sub_1DB30C4B8(v27, v25, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v26)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1DB300B14(v13, v24);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v25);
      v14 = sub_1DB50B680();

      if (v14 < 4)
      {
        sub_1DB3151CC(v27);
        JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v27);
        v15 = JSONObject.string.getter();
        v23 = v16;
        sub_1DB3151CC(v27);
        JSONObject.subscript.getter(0x7269757165527369, 0xEA00000000006465, v25);
        v22 = JSONObject.BOOL.getter();
        sub_1DB3151CC(v25);
        JSONObject.subscript.getter(0x4C6D756D6978616DLL, 0xED00006874676E65, v24);
        v17 = JSONObject.int.getter();
        v19 = v18;
        sub_1DB3151CC(a1);
        result = sub_1DB3151CC(v24);
        v24[40] = v19 & 1;
        *a3 = v7;
        *(a3 + 8) = v9;
        *(a3 + 16) = v28;
        *(a3 + 17) = v14;
        *(a3 + 24) = v15;
        *(a3 + 32) = v23;
        *(a3 + 40) = v22 & 1;
        *(a3 + 48) = v17;
        *(a3 + 56) = v19 & 1;
        return result;
      }

      sub_1DB3151CC(v27);
    }

    else
    {
      sub_1DB3151CC(v27);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  else
  {
    sub_1DB3151CC(v27);
    sub_1DB30623C(v25, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = 0x7059547475706E69;
LABEL_14:
  sub_1DB315178();
  swift_allocError();
  *v21 = v5;
  v21[1] = v12;
  v21[2] = 0x20000001F56F7170uLL;
  v21[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t Models.HTTPTemplateAction.Parameter.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Models.HTTPTemplateAction.Parameter.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Models.HTTPTemplateAction.Parameter.maximumLength.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1DB3B41E0()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C746974;
  v4 = 0x7269757165527369;
  if (v1 != 4)
  {
    v4 = 0x4C6D756D6978616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746567726174;
  if (v1 != 1)
  {
    v5 = 0x7079547475706E69;
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

uint64_t sub_1DB3B42A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3B72CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3B42C8(uint64_t a1)
{
  v2 = sub_1DB3B653C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3B4304(uint64_t a1)
{
  v2 = sub_1DB3B653C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.Substitutions.urlQuery.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.headers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.jsonBody.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.formBody.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.init(urlQuery:headers:jsonBody:formBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  sub_1DB3136F0(v10);
  sub_1DB3135C0(v10);
  sub_1DB3136F0(v10);

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.setParameter(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  if (*(a3 + 16) > 1u)
  {
    if (*(a3 + 16) == 2)
    {
      v17[3] = MEMORY[0x1E69E6158];
      v17[0] = a1;
      v17[1] = a2;

      return sub_1DB30D454(v17, v7, v6);
    }

    else
    {
      v14 = *(a3 + 8);

      v15 = v3[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = v3[3];
      sub_1DB31DC44(a1, a2, v7, v6, isUniquelyReferenced_nonNull_native);

      v3[3] = v17[0];
    }
  }

  else
  {
    v8 = *(a3 + 8);
    if (*(a3 + 16))
    {

      v12 = v3[1];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = v3[1];
      sub_1DB31DC44(a1, a2, v7, v6, v13);

      v3[1] = v17[0];
    }

    else
    {

      v9 = *v3;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = *v3;
      sub_1DB31DC44(a1, a2, v7, v6, v10);

      *v3 = v17[0];
    }
  }

  return result;
}

void sub_1DB3B46D0(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    v20 = sub_1DB50BA20();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_1DB3B7750();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1DB30623C(v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DB3B4950(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB5098F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB300B14(a3, v28);
  sub_1DB300B14(a4, &v29);
  sub_1DB30C4B8(v28, v26, &qword_1ECC44C00, qword_1DB5174C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB30623C(v28, &qword_1ECC44C00, qword_1DB5174C8);
    v22 = v27;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v22);

    return a1;
  }

  v14 = v24;
  v13 = v25;
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_1DB30C4B8(v28, v26, &qword_1ECC44C00, qword_1DB5174C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB30623C(v28, &qword_1ECC44C00, qword_1DB5174C8);

    v22 = v26;
    goto LABEL_14;
  }

  v16 = v24;
  v15 = v25;
  __swift_destroy_boxed_opaque_existential_0(v26);
  v26[0] = a1;
  v26[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    MEMORY[0x1E1285C70](38, 0xE100000000000000);
  }

  v24 = v16;
  v25 = v15;
  sub_1DB5098D0();
  sub_1DB301E30();
  v18 = sub_1DB50B1B0();
  v20 = v19;
  (*(v9 + 8))(v12, v8);

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v18 = 0;
    v21 = 0xE000000000000000;
  }

  v24 = v14;
  v25 = v13;
  MEMORY[0x1E1285C70](61, 0xE100000000000000);
  MEMORY[0x1E1285C70](v18, v21);

  MEMORY[0x1E1285C70](v24, v25);

  sub_1DB30623C(v28, &qword_1ECC44C00, qword_1DB5174C8);
  return v26[0];
}

uint64_t Models.HTTPTemplateAction.Parameter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AB0, &qword_1DB516CD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v31 = *(v1 + 16);
  v27 = *(v1 + 17);
  v10 = v1[3];
  v25 = v1[4];
  v26 = v10;
  HIDWORD(v23) = *(v1 + 40);
  v24 = v1[6];
  v11 = *(v1 + 56);
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1DB3B653C();
  sub_1DB50BE40();
  LOBYTE(v29) = 0;
  v17 = v28;
  sub_1DB50B860();
  if (!v17)
  {
    v18 = v27;
    v19 = v25;
    v20 = v26;
    LODWORD(v28) = v11;
    v21 = v24;
    LOBYTE(v29) = v31;
    v32 = 1;
    sub_1DB3B6590();
    sub_1DB50B8A0();
    LOBYTE(v29) = v18;
    v32 = 2;
    sub_1DB3B65E4();
    sub_1DB50B8A0();
    v29 = v20;
    v30 = v19;
    v32 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB39C530();
    sub_1DB50B8A0();
    LOBYTE(v29) = BYTE4(v23);
    v32 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    sub_1DB3B6638();
    sub_1DB50B8A0();
    v29 = v21;
    LOBYTE(v30) = v28;
    v32 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B66B4();
    sub_1DB50B8A0();
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t Models.HTTPTemplateAction.Parameter.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B00, &qword_1DB516D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3B653C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31) = 0;
  v11 = sub_1DB50B740();
  v13 = v12;
  v27 = v11;
  LOBYTE(v28) = 1;
  sub_1DB3B67B4();
  sub_1DB50B780();
  v14 = v31;
  LOBYTE(v28) = 2;
  sub_1DB3B6808();
  sub_1DB50B780();
  v26 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
  LOBYTE(v28) = 3;
  sub_1DB3980E8();
  sub_1DB50B780();
  v24 = v14;
  v15 = v32;
  v25 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AD0, &qword_1DB516CF0);
  LOBYTE(v28) = 4;
  sub_1DB3B685C();
  sub_1DB50B780();
  v23 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AE0, &qword_1DB516CF8);
  v43 = 5;
  sub_1DB3B68D8();
  sub_1DB50B780();
  (*(v6 + 8))(v9, v5);
  v22 = v40;
  v16 = v41;
  v42 = v41;
  v17 = v27;
  *&v28 = v27;
  *(&v28 + 1) = v13;
  v18 = v24;
  LOBYTE(v29) = v24;
  v19 = v26;
  BYTE1(v29) = v26;
  *(&v29 + 1) = v25;
  *v30 = v15;
  v30[8] = v23;
  *&v30[16] = v40;
  v30[24] = v41;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  sub_1DB3B69D8(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31 = v17;
  v32 = v13;
  v33 = v18;
  v34 = v19;
  v35 = v25;
  v36 = v15;
  v37 = v23;
  v38 = v22;
  v39 = v16;
  return sub_1DB3B6A10(&v31);
}

uint64_t sub_1DB3B54C0()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x74736575716572;
  v4 = 0x4173736563637573;
  if (v1 != 3)
  {
    v4 = 0x416572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
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

uint64_t sub_1DB3B5584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3B74D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3B55AC(uint64_t a1)
{
  v2 = sub_1DB3B6A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3B55E8(uint64_t a1)
{
  v2 = sub_1DB3B6A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = type metadata accessor for Models.HTTPTemplateAction();
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = (v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for NetRequest();
  v5 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B30, &unk_1DB516D10);
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v62 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = sub_1DB3B6A40();
  v18 = v76;
  sub_1DB50BDF0();
  if (!v18)
  {
    v76 = v17;
    v69 = v7;
    v70 = v10;
    v19 = v75;
    LOBYTE(v87[0]) = 0;
    sub_1DB37C0CC();
    sub_1DB50B710();
    if (*&v89[0])
    {
      v21 = *&v89[0];
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    if (*&v89[0])
    {
      v22 = *(&v89[0] + 1);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43070, &qword_1DB510228);
    LOBYTE(v87[0]) = 1;
    sub_1DB3B6A94();
    sub_1DB50B780();
    v65 = v22;
    v66 = v11;
    v67 = v21;
    v68 = v14;
    v23 = *&v89[0];
    v24 = v91[4];
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v25 = sub_1DB50BDE0();
    v26 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v25);
    v28 = v27;

    if (v26)
    {
      v29 = v28;
    }

    else
    {
      v29 = &off_1F56F1850;
    }

    LOBYTE(v87[0]) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v29, v89);
    v64 = v23;
    v30 = v91[4];
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v31 = sub_1DB50BDE0();
    v32 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v31);
    v34 = v33;

    if (v32)
    {
      v35 = v34;
    }

    else
    {
      v35 = &off_1F56F1850;
    }

    LOBYTE(v86[0]) = 4;
    decodeActionModel<A, B>(using:container:forKey:)(v35, v87);
    v36 = v19;
    v37 = v65;
    LOBYTE(v77) = 2;
    v38 = v66;
    sub_1DB50B6C0();
    v39 = v64;
    v63 = v85;
    v76 = *(&v84 + 1);
    v62[1] = __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
    v40 = v91[4];
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v41 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v41);
    v42 = v77;
    v43 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v82 = v43;
    v44 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v42);
    if (v44)
    {
      sub_1DB39900C(v44);
      v43 = v82;
    }

    *(&v78 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
    *&v77 = v43;
    sub_1DB30C200(&v77, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v42;
    sub_1DB31D16C(v81, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

    v46 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v80);
    Decoder.withUserInfo(_:)(v46, v76, v63, v86);

    __swift_destroy_boxed_opaque_existential_0(&v83);
    sub_1DB30BE90(v86, &v83);
    v47 = v70;
    NetRequest.init(from:)(&v83, v70);
    __swift_destroy_boxed_opaque_existential_0(v86);
    (*(v36 + 8))(v68, v38);
    v48 = v69;
    sub_1DB3B64D4(v47, v69, type metadata accessor for NetRequest);
    v83 = v89[0];
    v84 = v89[1];
    v85 = v90;
    v79 = v88;
    v77 = v87[0];
    v78 = v87[1];
    v49 = v74;
    *v74 = v67;
    *(v49 + 8) = v37;
    *(v49 + 16) = v39;
    v50 = v71;
    sub_1DB3983B8(v48, v49 + *(v71 + 24));
    v51 = (v48 + *(v73 + 40));
    v53 = *v51;
    v52 = v51[1];

    sub_1DB39841C(v48);
    v54 = (v49 + v50[7]);
    if (v52)
    {
      *v54 = v53;
      v54[1] = v52;
      v55 = (v49 + v50[8]);
      *v55 = v53;
      v55[1] = v52;
    }

    else
    {
      *v54 = 0;
      v54[1] = 0;
      v56 = (v49 + v50[8]);
      *v56 = 0;
      v56[1] = 0;
    }

    v57 = v72;
    v58 = v49 + v50[9];
    v59 = v84;
    *v58 = v83;
    *(v58 + 16) = v59;
    *(v58 + 32) = v85;
    v60 = v49 + v50[10];
    *(v60 + 32) = v79;
    v61 = v78;
    *v60 = v77;
    *(v60 + 16) = v61;
    sub_1DB3B64D4(v49, v57, type metadata accessor for Models.HTTPTemplateAction);
  }

  return __swift_destroy_boxed_opaque_existential_0(v91);
}

uint64_t Models.HTTPTemplateAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B50, &qword_1DB516D20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v43 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3B6A40();
  sub_1DB50BE40();
  v10 = v1[1];
  *&v52 = *v1;
  *(&v52 + 1) = v10;
  LOBYTE(v49[0]) = 0;
  sub_1DB37BCC8();

  v11 = v46;
  sub_1DB50B8A0();
  if (v11)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v46 = v5;

    *&v52 = v1[2];
    LOBYTE(v49[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6B6C();
    sub_1DB50B8A0();
    v45 = v4;
    v13 = a1;
    v14 = v8;
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_1DB50BE30();
    v44 = "XCTestConfigurationFilePath";
    v17 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v16);
    v19 = v18;

    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = &type metadata for EmptyActionKindTable;
    }

    if (!v17)
    {
      v19 = &off_1F56F1850;
    }

    v21 = type metadata accessor for Models.HTTPTemplateAction();
    v22 = *(v21 + 36);
    LOBYTE(v52) = 3;
    encodeActionModel<A, B>(_:using:container:forKey:)(v2 + v22, v20, v14, &v52, v20, &_s18HTTPTemplateActionV10CodingKeysON, v19);
    v23 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v24 = sub_1DB50BE30();
    v25 = sub_1DB31F3BC(0xD000000000000023, v44 | 0x8000000000000000, v24);
    v27 = v26;

    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = &type metadata for EmptyActionKindTable;
    }

    if (v25)
    {
      v29 = v27;
    }

    else
    {
      v29 = &off_1F56F1850;
    }

    v30 = *(v21 + 40);
    LOBYTE(v52) = 4;
    encodeActionModel<A, B>(_:using:container:forKey:)(v2 + v30, v28, v14, &v52, v28, &_s18HTTPTemplateActionV10CodingKeysON, v29);
    v44 = v21;
    LOBYTE(v52) = 2;
    v31 = v14;
    sub_1DB50B7F0();
    v32 = v50;
    v33 = v51;
    v43[1] = __swift_project_boxed_opaque_existential_1(v49, v50);
    v34 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v35 = sub_1DB50BE30();
    JSONContext.init(userInfo:)(v35);
    v36 = v52;
    v37 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v54 = v37;
    v38 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v36);
    if (v38)
    {
      sub_1DB39900C(v38);
      v37 = v54;
    }

    v39 = v46;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
    *&v52 = v37;
    sub_1DB30C200(&v52, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v36;
    sub_1DB31D16C(v48, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

    v41 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v47);
    Encoder.withUserInfo(_:)(v41, v32, v33, &v52);

    __swift_destroy_boxed_opaque_existential_0(v49);
    v42 = v2 + *(v44 + 24);
    NetRequest.encode(to:)(&v52);
    __swift_destroy_boxed_opaque_existential_0(&v52);
    return (*(v39 + 8))(v31, v45);
  }
}

uint64_t _s7JetCore6ModelsO18HTTPTemplateActionV9ParameterV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DB50BA30() & 1) == 0 || (sub_1DB48E2C4(v2, v7) & 1) == 0 || (sub_1DB48E400(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    if (v4 == v10 && v5 == v9)
    {
      if (v6 != v11)
      {
        return 0;
      }

LABEL_16:
      if (v18)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v17;
        if (v16 != v15)
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      return 1;
    }

    v13 = sub_1DB50BA30();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if ((v6 ^ v11))
    {
      return result;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1DB3B64D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB3B653C()
{
  result = qword_1ECC44AB8;
  if (!qword_1ECC44AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AB8);
  }

  return result;
}

unint64_t sub_1DB3B6590()
{
  result = qword_1ECC44AC0;
  if (!qword_1ECC44AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AC0);
  }

  return result;
}

unint64_t sub_1DB3B65E4()
{
  result = qword_1ECC44AC8;
  if (!qword_1ECC44AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AC8);
  }

  return result;
}

unint64_t sub_1DB3B6638()
{
  result = qword_1ECC44AD8;
  if (!qword_1ECC44AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AD8);
  }

  return result;
}

unint64_t sub_1DB3B66B4()
{
  result = qword_1ECC44AE8;
  if (!qword_1ECC44AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B6738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AE8);
  }

  return result;
}

unint64_t sub_1DB3B6738()
{
  result = qword_1ECC44AF0;
  if (!qword_1ECC44AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AF8, &qword_1DB516D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AF0);
  }

  return result;
}

unint64_t sub_1DB3B67B4()
{
  result = qword_1ECC44B08;
  if (!qword_1ECC44B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B08);
  }

  return result;
}

unint64_t sub_1DB3B6808()
{
  result = qword_1ECC44B10;
  if (!qword_1ECC44B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B10);
  }

  return result;
}

unint64_t sub_1DB3B685C()
{
  result = qword_1ECC44B18;
  if (!qword_1ECC44B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B18);
  }

  return result;
}

unint64_t sub_1DB3B68D8()
{
  result = qword_1ECC44B20;
  if (!qword_1ECC44B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B695C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B20);
  }

  return result;
}

unint64_t sub_1DB3B695C()
{
  result = qword_1ECC44B28;
  if (!qword_1ECC44B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AF8, &qword_1DB516D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B28);
  }

  return result;
}

unint64_t sub_1DB3B6A40()
{
  result = qword_1ECC44B38;
  if (!qword_1ECC44B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B38);
  }

  return result;
}

unint64_t sub_1DB3B6A94()
{
  result = qword_1ECC44B40;
  if (!qword_1ECC44B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B40);
  }

  return result;
}

unint64_t sub_1DB3B6B18()
{
  result = qword_1ECC44B48;
  if (!qword_1ECC44B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B48);
  }

  return result;
}

unint64_t sub_1DB3B6B6C()
{
  result = qword_1ECC44B58;
  if (!qword_1ECC44B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B58);
  }

  return result;
}

unint64_t sub_1DB3B6BF0()
{
  result = qword_1ECC44B60;
  if (!qword_1ECC44B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B60);
  }

  return result;
}

unint64_t sub_1DB3B6C48()
{
  result = qword_1ECC44B68;
  if (!qword_1ECC44B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B68);
  }

  return result;
}

unint64_t sub_1DB3B6CA0()
{
  result = qword_1ECC44B70;
  if (!qword_1ECC44B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B70);
  }

  return result;
}

unint64_t sub_1DB3B6CF8()
{
  result = qword_1ECC44B78;
  if (!qword_1ECC44B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B78);
  }

  return result;
}

void sub_1DB3B6D74()
{
  sub_1DB3B6EBC(319, &qword_1ECC44B90, &type metadata for Models.HTTPTemplateAction.Parameter, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NetRequest();
    if (v1 <= 0x3F)
    {
      sub_1DB3B6EBC(319, &qword_1ECC44B98, &type metadata for Models.HTTPTemplateAction.JSONBody, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DB3B6EBC(319, &qword_1ECC44BA0, &type metadata for Models.HTTPTemplateAction.FormBody, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DB39EBD8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DB3B6EBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DB3B6F3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DB3B6F84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB3B7004(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB3B704C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DB3B70C0()
{
  result = qword_1ECC44BA8;
  if (!qword_1ECC44BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BA8);
  }

  return result;
}

unint64_t sub_1DB3B7118()
{
  result = qword_1ECC44BB0;
  if (!qword_1ECC44BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BB0);
  }

  return result;
}

unint64_t sub_1DB3B7170()
{
  result = qword_1ECC44BB8;
  if (!qword_1ECC44BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BB8);
  }

  return result;
}

unint64_t sub_1DB3B71C8()
{
  result = qword_1ECC44BC0;
  if (!qword_1ECC44BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BC0);
  }

  return result;
}

unint64_t sub_1DB3B7220()
{
  result = qword_1ECC44BC8;
  if (!qword_1ECC44BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BC8);
  }

  return result;
}

unint64_t sub_1DB3B7278()
{
  result = qword_1ECC44BD0;
  if (!qword_1ECC44BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BD0);
  }

  return result;
}

uint64_t sub_1DB3B72CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7269757165527369 && a2 == 0xEA00000000006465 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C6D756D6978616DLL && a2 == 0xED00006874676E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t sub_1DB3B74D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t sub_1DB3B76A8()
{
  result = qword_1ECC44BD8;
  if (!qword_1ECC44BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BD8);
  }

  return result;
}

unint64_t sub_1DB3B76FC()
{
  result = qword_1ECC44BE0;
  if (!qword_1ECC44BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BE0);
  }

  return result;
}

unint64_t sub_1DB3B7750()
{
  result = qword_1ECC44BE8;
  if (!qword_1ECC44BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC44BE8);
  }

  return result;
}

unint64_t sub_1DB3B779C()
{
  result = qword_1ECC44BF0;
  if (!qword_1ECC44BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44BF0);
  }

  return result;
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-v9];
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BaseObjectGraph._injectIfAvailable<A>(_:)();
  if ((*(v11 + 48))(v10, 1, a1) == 1)
  {
    (*(v7 + 8))(v10, v6);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v18 = MEMORY[0x1EEE9AC00](v17);
    *&v22[-32] = a1;
    *&v22[-24] = a2;
    *&v22[-16] = v19;
    (*(*v19 + 104))(sub_1DB3B7AD0, v18);
  }

  else
  {
    v21 = *(v11 + 32);
    v21(v15, v10, a1);
    return v21(a3, v15, a1);
  }
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v8 = sub_1DB50B120();
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[8] = v11;
  v12 = *(a3 - 8);
  v5[9] = v12;
  v13 = *(v12 + 64) + 15;
  v5[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_1DB3B7C58;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v11, a2, a3);
}

uint64_t sub_1DB3B7C58()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DB3B7F18;
  }

  else
  {
    v3 = sub_1DB3B7D6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3B7D6C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[12];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[2];
    (*(v0[7] + 8))(v2, v0[6]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v10 = swift_task_alloc();
    v10[2] = v3;
    v10[3] = v6;
    v10[4] = v9;
    (*(*v9 + 104))(sub_1DB3B8030, v10, v3);
  }

  else
  {
    v11 = v0[10];
    v12 = v0[2];
    v13 = *(v1 + 32);
    v13(v11, v2, v3);
    v13(v12, v11, v3);
  }

  v14 = v0[10];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DB3B7F18()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1DB3B7F88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);

  return v4(v5, v1, v2);
}

void CompoundError.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    sub_1DB3CCA10("JetCore/CompoundError.swift", 0x1BuLL, 2, 0x15uLL);
  }

  *a2 = a1;
}

uint64_t CompoundError.errorDescription.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v3 = *(*v0 + 32);
    swift_getErrorValue();
    v4 = v3;
    v2 = sub_1DB50BC80();
  }

  else if (v1)
  {
    v6 = *v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
    sub_1DB3B81EC();
    v2 = sub_1DB50A5E0();
  }

  else
  {
    return 0x1000000000000026;
  }

  return v2;
}

uint64_t sub_1DB3B81A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getErrorValue();
  result = sub_1DB50BC80();
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1DB3B81EC()
{
  result = qword_1ECC44C10;
  if (!qword_1ECC44C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44C08, &qword_1DB517538);
    sub_1DB3B8270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44C10);
  }

  return result;
}

unint64_t sub_1DB3B8270()
{
  result = qword_1ECC44C18;
  if (!qword_1ECC44C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43558, &unk_1DB511B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44C18);
  }

  return result;
}

unint64_t CompoundError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    v6 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1DB50A650();
    v7 = inited + 32;
    *(inited + 40) = v8;
    v9 = *(v1 + 32);
    swift_getErrorValue();
    *(inited + 72) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v13 = sub_1DB3135C0(inited);
    swift_setDeallocating();
    sub_1DB351638(v7);
    return v13;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    v11 = *MEMORY[0x1E696A750];
    *(inited + 32) = sub_1DB50A650();
    v7 = inited + 32;
    *(inited + 40) = v12;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43558, &unk_1DB511B80);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1DB3135C0(v3);
}

uint64_t sub_1DB3B8470(uint64_t a1)
{
  v2 = sub_1DB3B84F8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB3B84AC(uint64_t a1)
{
  v2 = sub_1DB3B84F8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DB3B84F8()
{
  result = qword_1ECC44C20[0];
  if (!qword_1ECC44C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC44C20);
  }

  return result;
}

uint64_t EventEmitter.addObserver(on:singleUse:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    swift_getAssociatedTypeWitness();
    v11 = type metadata accessor for SingleUseClosureEventObserver();
    sub_1DB30BE90(a1, v20);
    v12 = swift_allocObject();

    sub_1DB3B8954(v20, a3, a4);
    v20[0] = v12;
    v13 = *(a6 + 24);
    WitnessTable = swift_getWitnessTable();
    v13(v20, v11, WitnessTable, a5, a6);
  }

  else
  {
    sub_1DB30BE90(a1, v19);
    swift_getAssociatedTypeWitness();
    sub_1DB2FEA0C(v19, v20);
    v20[5] = a3;
    v20[6] = a4;
    v16 = *(a6 + 24);
    v17 = type metadata accessor for ClosureEventObserver();

    v18 = swift_getWitnessTable();
    v16(v20, v17, v18, a5, a6);
    return (*(*(v17 - 8) + 8))(v20, v17);
  }
}

uint64_t sub_1DB3B8778(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v2[3];
  v8 = v2[4];
  v15[1] = __swift_project_boxed_opaque_existential_1(v2, v7);
  v10 = v2[5];
  v9 = v2[6];
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v4;
  *(v12 + 3) = v10;
  *(v12 + 4) = v9;
  (*(v5 + 32))(&v12[v11], v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v13 = *(v8 + 8);

  v13(sub_1DB3B8FB4, v12, v7, v8);
}

uint64_t sub_1DB3B88FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DB3B8954(a1, a2, a3);
  return v6;
}

uint64_t *sub_1DB3B8954(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DB30BE90(a1, v12);
  v13 = a2;
  v14 = a3;
  v8 = *(v7 + 80);
  v9 = type metadata accessor for SingleUseClosureEventObserver.State();
  v10 = sub_1DB388A48();
  (*(*(v9 - 8) + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v3[2] = v10;
  return v3;
}

uint64_t sub_1DB3B8A14()
{
  v1 = v0[2];
  v3[2] = *(*v0 + 80);
  type metadata accessor for SingleUseClosureEventObserver.State();
  sub_1DB35B4EC(sub_1DB3B9100, v3, v1);
  return v4;
}

uint64_t sub_1DB3B8A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SingleUseClosureEventObserver.State();
  result = (*(*(v4 - 8) + 16))(v7, a1, v4);
  v6 = v8;
  if (v8)
  {

    result = __swift_destroy_boxed_opaque_existential_0(v7);
    v6 = 1;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1DB3B8B34(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  v8 = v1[2];
  v24 = v3;
  v9 = type metadata accessor for SingleUseClosureEventObserver.State();
  sub_1DB47D0C4(sub_1DB3B8FB8, v23, v8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v25, v32, v9);
  if (v26)
  {
    v11 = v28;
    v20 = v27;
    sub_1DB2FEA0C(&v25, v29);
    v12 = v31;
    v22 = v30;
    v21 = __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v4 + 16))(v7, a1, v3);
    v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v14 = swift_allocObject();
    v15 = v20;
    *(v14 + 2) = v3;
    *(v14 + 3) = v15;
    *(v14 + 4) = v11;
    (*(v4 + 32))(&v14[v13], v7, v3);
    v16 = *(v12 + 8);

    v16(sub_1DB3B911C, v14, v22, v12);

    (*(v10 + 8))(v32, v9);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v18 = *(v10 + 8);
    v18(v32, v9);
    return v18(&v25, v9);
  }
}

uint64_t sub_1DB3B8DE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7JetCore29SingleUseClosureEventObserverC5StateOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3B8E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB3B8E84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB3B8EE4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DB3B8F2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB3B8FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t Dictionary<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v77 = a3;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = sub_1DB50B120();
  v76 = *(v72 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v58 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v59 = *(v71 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v20 = &v58 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  v69 = v20;
  sub_1DB50BE40();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v23, v81);
  v24 = v9;

  v25 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v29 = (v26 + 63) >> 6;
  v73 = TupleTypeMetadata2 - 8;
  v60 = v6 + 16;
  v75 = (v6 + 32);
  v68 = (v76 + 32);
  v64 = v6;
  v66 = (v6 + 8);
  v65 = a2;

  v31 = 0;
  v63 = v24;
  v74 = TupleTypeMetadata2;
  v61 = v15;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
    v35 = v31;
LABEL_16:
    v39 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v40 = v39 | (v35 << 6);
    v41 = (*(v65 + 48) + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = v64;
    v45 = v62;
    v46 = v77;
    (*(v64 + 16))(v62, *(v65 + 56) + *(v64 + 72) * v40, v77);
    v47 = v74;
    v48 = *(v74 + 48);
    v49 = v61;
    *v61 = v43;
    *(v49 + 1) = v42;
    v50 = *(v44 + 32);
    v51 = v45;
    v34 = v47;
    v38 = v49;
    v50(&v49[v48], v51, v46);
    v37 = *(v34 - 8);
    (*(v37 + 56))(v38, 0, 1, v34);

    v76 = v35;
    v36 = v63;
LABEL_17:
    v52 = v70;
    (*v68)(v70, v38, v72);
    if ((*(v37 + 48))(v52, 1, v34) == 1)
    {

      sub_1DB3A1C04(v81);
      return (*(v59 + 8))(v69, v71);
    }

    v53 = v34;
    v15 = v38;
    v54 = *v52;
    v55 = v52[1];
    v56 = v52 + *(v53 + 48);
    v24 = v36;
    v57 = v77;
    (*v75)(v36, v56, v77);
    v78 = v54;
    v79 = v55;
    v80 = 1;
    sub_1DB50B8A0();

    result = (*v66)(v36, v57);
    v31 = v76;
  }

  while (v28);
LABEL_6:
  v32 = v15;
  if (v29 <= v31 + 1)
  {
    v33 = v31 + 1;
  }

  else
  {
    v33 = v29;
  }

  v34 = v74;
  while (1)
  {
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v35 >= v29)
    {
      v36 = v24;
      v76 = v33 - 1;
      v37 = *(v74 - 8);
      v38 = v32;
      (*(v37 + 56))(v32, 1, 1, v74);
      v28 = 0;
      goto LABEL_17;
    }

    v28 = *(v25 + 8 * v35);
    ++v31;
    if (v28)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a3;
  v33 = 0;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1DB50BE20();
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  v22 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v22, v37);

  (*(v11 + 16))(v15, v32[1], a2);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    v23 = v33;
  }

  else
  {
    (*(v6 + 32))(v9, v15, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v24 = v33;
    sub_1DB50BB00();
    if (!v24)
    {
      (*(v6 + 8))(v9, v5);
LABEL_11:
      v30 = v37;
LABEL_13:
      sub_1DB3A1C04(v30);
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v25 = v24;
    v23 = 0;
    sub_1DB3A1B94(v37, v34);
    v26 = v35;
    if (v35)
    {
      v27 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      (*(v27 + 16))(v5, v25, v26, v27);

      (*(v6 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      (*(v6 + 8))(v9, v5);

      sub_1DB3A1C04(v34);
    }
  }

  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  sub_1DB50BB10();
  if (!v23)
  {
    goto LABEL_11;
  }

  sub_1DB3A1B94(v37, v34);
  v28 = v35;
  if (!v35)
  {
    sub_1DB3A1C04(v37);

    v30 = v34;
    goto LABEL_13;
  }

  v29 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v29 + 16))(v21, v23, v28, v29);

  sub_1DB3A1C04(v37);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t Bool._partiallyEncode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DB50BAD0();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t Array<A>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v20 = v9;
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1DB50BE10();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1DB50BE30();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v14, v25);

  if (!sub_1DB50AA00())
  {
LABEL_11:
    sub_1DB3A1C04(v25);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v15 = 0;
  v21 = (v7 + 8);
  v22 = (v7 + 16);
  while (1)
  {
    v16 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if (v16)
    {
      (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, a3);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    result = sub_1DB50B380();
    if (v20 != 8)
    {
      break;
    }

    v24[0] = result;
    (*v22)(v10, v24, a3);
    swift_unknownObjectRelease();
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1DB50B9E0();
    (*v21)(v10, a3);
    ++v15;
    if (v17 == sub_1DB50AA00())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3BA0AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3BA10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1DB30286C(0, a5[2] + 1, 1, a5);
  }

  v18 = a5[2];
  v17 = a5[3];
  if (v18 >= v17 >> 1)
  {
    a5 = sub_1DB30286C((v17 > 1), v18 + 1, 1, a5);
  }

  a5[2] = v18 + 1;
  v19 = &a5[2 * v18];
  v19[4] = sub_1DB3BA500;
  v19[5] = v16;
  a8[3] = type metadata accessor for DependentObjectGraphBuilder();
  a8[4] = &off_1F56F7748;

  *a8 = a4;
  a8[1] = a5;
  return result;
}

char *sub_1DB3BA248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
  v7 = sub_1DB3BA49C();
  v10[3] = &type metadata for SyncTaskScheduler;
  v10[4] = &protocol witness table for SyncTaskScheduler;

  v8 = Promise.flatMap<A>(on:_:)(v10, sub_1DB3BA494, v5, v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1DB3BA324(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v15 = &type metadata for StandaloneObjectGraphBuilder;
    v16 = &off_1F56F8D18;
    v14[0] = v2;
    v14[1] = MEMORY[0x1E69E7CC0];

    v5 = (a2 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v7(v13, v14);

      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_1DB2FEA0C(v13, v14);
      v5 += 2;
      --v3;
    }

    while (v3);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (v9[2])(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v10 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v10 + 16) = v11;
    *(v10 + 24) = v2;
    *(v10 + 32) = 1;
  }

  return v10;
}

unint64_t sub_1DB3BA49C()
{
  result = qword_1ECC44D28;
  if (!qword_1ECC44D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC44F70, &qword_1DB518F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44D28);
  }

  return result;
}

uint64_t sub_1DB3BA500(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 8))(v3, v5, v4, v2, v6, v7);
}

__n128 MetricsEventLinterBagConfiguration.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double sub_1DB3BA598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a4)
  {
LABEL_7:
    sub_1DB330D60(v5, v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_1DB40860C(a1, a2, &v16);
      __swift_destroy_boxed_opaque_existential_0(v14);
      if (*(&v17 + 1) != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  JSONObject.subscript.getter(a3, a4, v14);
  JSONObject.subscript.getter(a1, a2, &v16);
  sub_1DB3151CC(v14);
  sub_1DB330D60(&v16, v14);
  if (!v15)
  {
    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_6;
  }

  v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1DB300B14(v9, v13);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_6:
    sub_1DB3151CC(&v16);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_13:
  result = *&v16;
  v11 = v17;
  *a5 = v16;
  *(a5 + 16) = v11;
  *(a5 + 32) = v18;
  return result;
}

Swift::OpaquePointer_optional __swiftcall MetricsEventLinterBagConfiguration.baseFields(forTopic:)(Swift::String forTopic)
{
  sub_1DB3BA598(0x427363697274656DLL, 0xEB00000000657361, forTopic._countAndFlagsBits, forTopic._object, v7);
  sub_1DB330D60(v7, v5);
  if (!v6)
  {
    sub_1DB3151CC(v7);
    sub_1DB30623C(v5, &qword_1ECC42E38, &qword_1DB50FB80);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_1DB408B14(&v8);
  sub_1DB3151CC(v7);
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (!*(&v9 + 1))
  {
LABEL_5:
    sub_1DB30623C(&v8, &qword_1ECC42EA0, &qword_1DB50FB88);
    v2 = 0;
    goto LABEL_6;
  }

  v1 = *__swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
  v5[0] = 0;
  sub_1DB50A4A0();
  v2 = v5[0];
  sub_1DB317740(&v8);
LABEL_6:
  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

Swift::String_optional __swiftcall MetricsEventLinterBagConfiguration.compoundSeparator(forTopic:)(Swift::String forTopic)
{
  sub_1DB3BA598(0xD000000000000011, 0x80000001DB52C1C0, forTopic._countAndFlagsBits, forTopic._object, v7);
  v1 = JSONObject.string.getter();
  v3 = v2;
  sub_1DB3151CC(v7);
  v4 = v1;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t MetricsEventLinterBagConfiguration.deResolutionRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0x6569467365526564, 0xEB0000000073646CLL, a1, a2, v6);
  v2 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DB320CB8(v6, v2);
  v4 = sub_1DB375454(v3);

  return v4;
}

double MetricsEventLinterBagConfiguration.additionalRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0xD00000000000001DLL, 0x80000001DB52C1E0, a1, a2, v5);
  v2 = JSONObject.BOOL.getter();
  sub_1DB3151CC(v5);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43400, &qword_1DB5178F0);
    v4 = swift_allocObject();
    *&result = 1;
    *(v4 + 16) = xmmword_1DB50EE90;
    *(v4 + 56) = &type metadata for MetricsEventLinterEmptyImpressionsRule;
    *(v4 + 64) = &off_1F56FA088;
  }

  return result;
}

uint64_t sub_1DB3BA9EC(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0xD000000000000011, 0x80000001DB52C1C0, a1, a2, v4);
  v2 = JSONObject.string.getter();
  sub_1DB3151CC(v4);
  return v2;
}

uint64_t sub_1DB3BAA58(uint64_t a1, uint64_t a2)
{
  sub_1DB3BA598(0x6569467365526564, 0xEB0000000073646CLL, a1, a2, v6);
  v2 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DB320CB8(v6, v2);
  v4 = sub_1DB375454(v3);

  return v4;
}

uint64_t ExpressibleByJSON.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  sub_1DB30C4B8(v14, v22, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1DB300B14(v15, v21);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = a4;
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_1DB3171C0(a1, v22);
      v21[0] = v13;
      v17 = *(a3 + 8);

      v17(v22, v21, a2, a3);
      sub_1DB3151CC(a1);

      a4 = v20;
      (*(v8 + 32))(v20, v11, a2);
      v16 = 0;
      return (*(v8 + 56))(a4, v16, 1, a2);
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {

    sub_1DB30623C(v22, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  v16 = 1;
  return (*(v8 + 56))(a4, v16, 1, a2);
}

void ExpressibleByJSON<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1DB50B3E0();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  JSONObject.decode<A>(_:using:)(a3, a2);
  if (v3)
  {
    v25 = v3;
    v14 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v15 = v24;
      (*(v24 + 32))(v13, v10, v7);
      sub_1DB315178();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v18 + 32) = swift_allocError();
      (*(v15 + 16))(v19, v13, v7);
      *v17 = a3;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      v20 = *a2;

      sub_1DB3151CC(a1);
      (*(v15 + 8))(v13, v7);
    }

    else
    {
      v22 = *a2;

      sub_1DB3151CC(a1);
    }
  }

  else
  {
    v21 = *a2;

    sub_1DB3151CC(a1);
  }
}

uint64_t sub_1DB3BB184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DB3924C8(a1, *a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1DB3BB1EC@<X0>(uint64_t a1@<X0>, id *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1DB39350C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_1DB3BB218@<X0>(uint64_t a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1DB392794(a1, *a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t ModelMergingError.errorDescription.getter()
{
  sub_1DB3BB3F4(v0, &v6);
  if (!v7)
  {
    return 0xD000000000000047;
  }

  if (v7 == 1)
  {
    return 0xD00000000000004DLL;
  }

  sub_1DB30C200(&v6, v4);
  sub_1DB30C200(&v8, v2);
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000026, 0x80000001DB52C2A0);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB52C2D0);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 0;
}

unint64_t sub_1DB3BB430()
{
  result = qword_1ECC44D30[0];
  if (!qword_1ECC44D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC44D30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore17ModelMergingErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB3BB4DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB3BB530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1DB3BB594(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void JSONInitFailureObserver.tryingToEncode(_:didFailWith:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB50B400();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_1DB50BC80();
  v13 = a2;
  sub_1DB50B3C0();
  v14 = sub_1DB50B410();
  v15 = swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
  *(v17 + 3) = swift_getMetatypeMetadata();
  *v17 = a1;
  (*(v9 + 16))(&v17[v18], v12, v8);
  (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v14);
  (*(a4 + 8))(a1, v15, a3, a4);
  (*(v9 + 8))(v12, v8);
}

uint64_t AsyncObjectGraphMetrics.BuiltDependency.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AsyncObjectGraphMetrics.BuiltDependency.typeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static AsyncObjectGraphMetrics.BuiltDependency.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DB50BA30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1DB3BB94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DB50BA30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DB3BB9D4(uint64_t *a1, double a2)
{
  v3 = v2;
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v6 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50F8D0;
  v50 = sub_1DB301BC0(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0x676E69646C697542;
  v8._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = *a1;
  v10 = sub_1DB50BEE0();
  v11 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69E6158];
  v48[0] = v10;
  v48[1] = v12;
  sub_1DB301CDC(v48, v44);
  v45 = 0u;
  v46 = 0u;
  sub_1DB301D4C(v44, &v45);
  v47 = 0;
  v13 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v50 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v45;
  v18 = v46;
  v16[64] = v47;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v50 = v13;
  sub_1DB301DBC(v48);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v7 + 32) = v50;
  v50 = sub_1DB301BC0(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v20._countAndFlagsBits = 0x206B6F6F74;
  v20._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v49 = MEMORY[0x1E69E63B0];
  *v48 = a2;
  sub_1DB301CDC(v48, v44);
  v45 = 0u;
  v46 = 0u;
  sub_1DB301D4C(v44, &v45);
  v47 = 0;
  v21 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[40 * v23];
  v25 = v45;
  v26 = v46;
  v24[64] = v47;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v50 = v21;
  sub_1DB301DBC(v48);
  v27._countAndFlagsBits = 0x73646E6F63657320;
  v27._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v7 + 40) = v50;
  v28 = sub_1DB50AF40();
  if (os_log_type_enabled(v6, v28))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v29 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v29 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v31 = swift_allocObject();
    *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v45 = v7;
    *(&v45 + 1) = sub_1DB31485C;
    *&v46 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v32 = sub_1DB50A5E0();
    v34 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DB50EE90;
    *(v35 + 56) = v11;
    *(v35 + 64) = sub_1DB31494C();
    *(v35 + 32) = v32;
    *(v35 + 40) = v34;
    sub_1DB50A1E0();
  }

  v36 = sub_1DB50BEE0();
  v38 = v37;
  v39 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v39;
  if ((result & 1) == 0)
  {
    result = sub_1DB30324C(0, *(v39 + 16) + 1, 1, v39);
    v39 = result;
    *v3 = result;
  }

  v42 = *(v39 + 16);
  v41 = *(v39 + 24);
  if (v42 >= v41 >> 1)
  {
    result = sub_1DB30324C((v41 > 1), v42 + 1, 1, v39);
    v39 = result;
  }

  *(v39 + 16) = v42 + 1;
  v43 = v39 + 24 * v42;
  *(v43 + 32) = v36;
  *(v43 + 40) = v38;
  *(v43 + 48) = a2;
  *v3 = v39;
  return result;
}

unint64_t JSONError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v28 = 0;
        sub_1DB50B320();
        MEMORY[0x1E1285C70](0xD00000000000002CLL, 0x80000001DB52C390);
        v17 = sub_1DB50BEE0();
        MEMORY[0x1E1285C70](v17);

        v7 = "presenting polymorphic type ";
        v8 = 0xD000000000000015;
        goto LABEL_13;
      }

      if (v5 == 4)
      {
        v28 = 0;
        sub_1DB50B320();
        MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52C340);
        v6 = sub_1DB50BEE0();
        MEMORY[0x1E1285C70](v6);

        v7 = "presenting enum-like type ";
        v8 = 0xD000000000000012;
LABEL_13:
        MEMORY[0x1E1285C70](v8, v7 | 0x8000000000000000);
        MEMORY[0x1E1285C70](v1, v2);
        v10 = 46;
        v11 = 0xE100000000000000;
        goto LABEL_14;
      }

LABEL_18:
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52C320);
      sub_1DB50B530();
      return 0;
    }

    v12 = *(v4 + 16);
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *(v4 + 32);
        swift_getErrorValue();
        v14 = v13;
        v12 = sub_1DB50BC80();
        v16 = v15;
      }

      else
      {
        v29 = v0[3];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
        sub_1DB3B81EC();
        v12 = sub_1DB50A5E0();
        v16 = v22;
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v28 = 0;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52C3E0);
    v23 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v23);

    MEMORY[0x1E1285C70](0xD00000000000001CLL, 0x80000001DB52C400);
    MEMORY[0x1E1285C70](v1, v2);
    v24 = 2109024;
    v25 = 0xE300000000000000;
LABEL_25:
    MEMORY[0x1E1285C70](v24, v25);
    MEMORY[0x1E1285C70](v12, v16);

    return v28;
  }

  if (!v5)
  {
    v12 = v2[2];
    if (v12)
    {
      if (v12 == 1)
      {
        v18 = v2[4];
        swift_getErrorValue();
        v19 = v18;
        v12 = sub_1DB50BC80();
        v16 = v20;
      }

      else
      {
        v30 = v0[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44C08, &qword_1DB517538);
        sub_1DB3B81EC();
        v12 = sub_1DB50A5E0();
        v16 = v26;
        sub_1DB3BC478(v1, v2, v3);
      }
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    sub_1DB50B320();

    v28 = 0xD00000000000001BLL;
    v27 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v27);

    v24 = 0x666C616D20736920;
    v25 = 0xEF202E64656D726FLL;
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    goto LABEL_18;
  }

  v28 = 0;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52C3E0);
  v9 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v9);

  MEMORY[0x1E1285C70](0xD00000000000001FLL, 0x80000001DB52C420);
  MEMORY[0x1E1285C70](v1, v2);
  v10 = 11872;
  v11 = 0xE200000000000000;
LABEL_14:
  MEMORY[0x1E1285C70](v10, v11);
  return v28;
}

void sub_1DB3BC478(int a1, id a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v4 <= 1)
    {

LABEL_5:

      return;
    }

    if (v4 == 2)
    {

      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_5;
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
  }
}

uint64_t get_enum_tag_for_layout_string_7JetCore9JSONErrorO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DB3BC54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 32))
  {
    return (*a1 + 121);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB3BC5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1DB3BC610(uint64_t result, uint64_t a2)
{
  if (a2 < 7)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 7);
    *(result + 8) = xmmword_1DB517BB0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3, a4);
}

__n128 CodeAnyHashable.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double CodeAnyHashable.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DB30BE90(v7, v10);
  sub_1DB50ADB0();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_1DB50B2B0();
    __swift_destroy_boxed_opaque_existential_0(a1);
    result = *&v11;
    v9 = v12;
    *a3 = v11;
    *(a3 + 16) = v9;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t CodeAnyHashable.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50B290();
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v5);
    (*(v11 + 32))(v15, v10, v5);
    v18 = *(a2 + 32);
    sub_1DB50A5B0();
    return (*(v11 + 8))(v15, v5);
  }

  else
  {
    v17(v10, 1, 1, v5);
    (*(v7 + 8))(v10, v6);
    v20 = sub_1DB50B410();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v22[3] = MEMORY[0x1E69E69B8];
    v24 = swift_allocObject();
    *v22 = v24;
    sub_1DB314C3C(v2, v24 + 16);
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_1DB50B320();

    strcpy(v27, "Value is not <");
    HIBYTE(v27[1]) = -18;
    v26 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v26);

    MEMORY[0x1E1285C70](62, 0xE100000000000000);
    sub_1DB50B3C0();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B30], v20);
    return swift_willThrow();
  }
}

uint64_t CodeAnyHashable.hashValue.getter()
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3BCC78()
{
  sub_1DB50BCF0();
  CodeAnyHashable.hash(into:)();
  return sub_1DB50BD30();
}

double sub_1DB3BCCD0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[3];
  v4 = a2[5];
  return CodeAnyHashable.init(from:)(a1, a2[2], a3);
}

uint64_t sub_1DB3BCD10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3BCD64()
{
  v0 = sub_1DB50AFA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50AF80();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DB50A440();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DB357BD4();
  sub_1DB50A430();
  sub_1DB50AF70();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1DB50AFD0();
  qword_1ECC44DB8 = result;
  return result;
}

id static InMemoryJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1ECC420A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC44DB8;

  return v1;
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

__n128 InMemoryJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F5701348;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t InMemoryJetPackLoader.bundle(from:on:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1DB3BE8C0(a1, v6, v2, v4, v5);
}

uint64_t sub_1DB3BD00C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25[-1] - v9);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  sub_1DB30BE90(a1, v33);
  sub_1DB3BEB60(a3, &v28);
  v13 = swift_allocObject();
  sub_1DB2FEA0C(v33, v13 + 16);
  v14 = v29;
  *(v13 + 56) = v28;
  *(v13 + 72) = v14;
  *(v13 + 88) = v30;
  *(v13 + 104) = v31;
  *v10 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC0, &unk_1DB518040);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v18[2] = v19;
  sub_1DB30C06C(v10, v18 + *(*v18 + 96), &unk_1ECC42BE0, &unk_1DB518FC0);
  v20 = swift_allocObject();
  v20[2] = sub_1DB3BEBB4;
  v20[3] = v13;
  v20[4] = v18;
  *&v28 = sub_1DB3BEBD4;
  *(&v28 + 1) = v20;
  *&v29 = sub_1DB3BEBE0;
  *(&v29 + 1) = v18;
  sub_1DB30BE90(a2, &v30);
  v32 = 0;
  swift_retain_n();

  sub_1DB30828C(&v28);

  sub_1DB30623C(&v28, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v26, v33);
    sub_1DB30BE90(v33, &v28);
    v21 = swift_allocObject();
    sub_1DB2FEA0C(&v28, v21 + 16);
    sub_1DB30BE90(v33, v26);
    v22 = swift_allocObject();
    sub_1DB2FEA0C(v26, v22 + 16);
    v25[3] = &type metadata for SyncTaskScheduler;
    v25[4] = &protocol witness table for SyncTaskScheduler;
    *&v28 = sub_1DB3BEBE8;
    *(&v28 + 1) = v21;
    *&v29 = sub_1DB3BEC3C;
    *(&v29 + 1) = v22;
    sub_1DB30BE90(v25, &v30);
    v32 = 0;

    sub_1DB30908C(&v28);

    sub_1DB30623C(&v28, qword_1ECC453B0, &qword_1DB50F720);
    __swift_destroy_boxed_opaque_existential_0(v33);
    result = __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    result = sub_1DB30623C(v26, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  *v24 = v18;
  return result;
}

uint64_t sub_1DB3BD450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v41 = *a1;
  sub_1DB30BE90(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DD8, &unk_1DB518250);
  if (swift_dynamicCast())
  {
    v14 = *(&v43 + 1);
    v15 = *v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    (*(v15 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(&v42);
  }

  else
  {
    *v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1DB30623C(&v42, &qword_1ECC44DE0, &unk_1DB518060);
    v16 = sub_1DB509CA0();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  v17 = type metadata accessor for InMemoryJetPackResourceBundle();
  v18 = swift_allocBox();
  v20 = v19;
  sub_1DB30C4B8(v13, v10, &unk_1ECC42B20, &unk_1DB50F6A0);
  v21 = MEMORY[0x1E69E7CC0];
  *v20 = sub_1DB313EF8(MEMORY[0x1E69E7CC0]);
  v20[1] = sub_1DB313FFC(v21);
  sub_1DB30C06C(v10, v20 + *(v17 + 24), &unk_1ECC42B20, &unk_1DB50F6A0);
  v22 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  sub_1DB3BEB60(a3, &v42);
  v23 = swift_allocObject();
  v24 = v43;
  *(v23 + 16) = v42;
  *(v23 + 32) = v24;
  *(v23 + 48) = *v44;
  *(v23 + 64) = *&v44[16];
  aBlock[4] = sub_1DB3BECA0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3BEFF4;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v22 setKeyForIdentifier_];
  _Block_release(v25);
  *v44 = sub_1DB3BECC0;
  *&v44[8] = v18;
  *&v42 = MEMORY[0x1E69E9820];
  *(&v42 + 1) = 1107296256;
  *&v43 = sub_1DB3BF08C;
  *(&v43 + 1) = &block_descriptor_16;
  v26 = _Block_copy(&v42);

  [v22 setFileEntryFound_];
  _Block_release(v26);
  *v44 = sub_1DB3BECC8;
  *&v44[8] = v18;
  *&v42 = MEMORY[0x1E69E9820];
  *(&v42 + 1) = 1107296256;
  *&v43 = sub_1DB3BF108;
  *(&v43 + 1) = &block_descriptor_19_0;
  v27 = _Block_copy(&v42);

  [v22 setDataSegmentFound_];
  _Block_release(v27);
  v28 = *(a3 + 8);
  if ((v28 & 0x3000000000000000) == 0x2000000000000000 && v28 == 0x2000000000000000 && *a3 == 2)
  {
    v29 = xmmword_1DB517E90;
  }

  else
  {
    v46 = 0;
    v45 = 0u;
    *&v44[8] = 0u;
    *(&v43 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v44 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1DB3C19F8();
    sub_1DB3BECD0(&v42);
    v29 = *a3;
  }

  v42 = v29;
  v30 = sub_1DB46D38C();
  v31 = *(a3 + 8);
  v32 = (v31 >> 60) & 3;
  v33 = !v32 || v32 != 1 && !(*a3 & 0xFFFFFFFFFFFFFFFELL | v31 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v34 = [v22 processStream:v41 signatureVerifier:v30 options:v33 error:aBlock];

  if (v34)
  {
    v35 = aBlock[0];
    sub_1DB30623C(v13, &unk_1ECC42B20, &unk_1DB50F6A0);

    swift_beginAccess();
    sub_1DB3BED24(v20, v40);
  }

  else
  {
    v37 = aBlock[0];
    sub_1DB509B20();

    swift_willThrow();
    sub_1DB30623C(v13, &unk_1ECC42B20, &unk_1DB50F6A0);
  }

  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB3BDA18(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a2 + 16, v7, &qword_1ECC44DE8, &unk_1DB518070);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1DB30623C(v7, &qword_1ECC44DE8, &unk_1DB518070);
    return 0;
  }

  return v5;
}

uint64_t sub_1DB3BDADC(void *a1, void *a2)
{
  type metadata accessor for InMemoryJetPackResourceBundle();
  v4 = swift_projectBox();
  v5 = [a2 readData];
  v6 = sub_1DB509CE0();
  v8 = v7;

  v9 = [a1 pathname];
  v10 = sub_1DB50A650();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  JetPackPath.init(_:)(v13);
  swift_beginAccess();
  sub_1DB30C1AC(v6, v8);
  v14 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  *v4 = 0x8000000000000000;
  sub_1DB31DDCC(v6, v8, v18, isUniquelyReferenced_nonNull_native);

  *v4 = v17;
  swift_endAccess();
  sub_1DB30C158(v6, v8);
  return 1;
}

uint64_t sub_1DB3BDC14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DB50A6B0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for InMemoryJetPackResourceBundle();
  v8 = swift_projectBox();
  v9 = [a3 readData];
  v10 = sub_1DB509CE0();
  v12 = v11;

  swift_beginAccess();

  sub_1DB30C1AC(v10, v12);
  v13 = *(v8 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v8 + 8);
  *(v8 + 8) = 0x8000000000000000;
  sub_1DB31DF40(v10, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v8 + 8) = v43[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {
    sub_1DB50A690();
    v15 = sub_1DB50A670();
    v17 = v16;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v18 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    v44 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v20._object = 0x80000001DB52C4F0;
    v20._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    if (v17)
    {
      v21 = MEMORY[0x1E69E6158];
    }

    else
    {
      v15 = 0;
      v21 = 0;
      v43[2] = 0;
    }

    v43[0] = v15;
    v43[1] = v17;
    v43[3] = v21;
    sub_1DB30C4B8(v43, v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40 = 0u;
    v41 = 0u;
    sub_1DB301D4C(v39, &v40);
    v42 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v40;
    v27 = v41;
    v25[64] = v42;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1DB30623C(v43, &qword_1ECC426B0, &qword_1DB50EEB0);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v19 + 32) = v44;
    v29 = sub_1DB50AF40();
    if (os_log_type_enabled(v18, v29))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v30 = MEMORY[0x1E69E6158];
      v31 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v31[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v31 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v33 = swift_allocObject();
      *(v33 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v40 = v19;
      *(&v40 + 1) = sub_1DB31485C;
      *&v41 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v34 = sub_1DB50A5E0();
      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DB50EE90;
      *(v37 + 56) = v30;
      *(v37 + 64) = sub_1DB31494C();
      *(v37 + 32) = v34;
      *(v37 + 40) = v36;
      sub_1DB50A1E0();
    }
  }

  sub_1DB30C158(v10, v12);
  return 1;
}

uint64_t sub_1DB3BE110(uint64_t a1, void *a2)
{
  if (qword_1ECC42238 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 63, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52C440;
  v5._countAndFlagsBits = 0xD00000000000003ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1DB30C4B8(v23, v17, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18 = 0u;
  v19 = 0u;
  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t InMemoryJetPackLoader.bundle(from:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(type metadata accessor for InMemoryJetPackResourceBundle() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3BE40C, 0, 0);
}

uint64_t sub_1DB3BE40C()
{
  v6 = v0;
  v0[23] = &type metadata for SyncTaskScheduler;
  v0[24] = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v2 = v0[28];
  v0[25] = v1;

  swift_task_localValuePush();
  sub_1DB3BD00C(v3, (v0 + 20), v2, &v5);
  swift_task_localValuePop();

  v0[30] = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1DB3BE550, 0, 0);
}

uint64_t sub_1DB3BE550()
{
  v1 = v0 + 2;
  v2 = v0[29];
  v3 = v0[30];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB3BE618;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30908C(v4);
  sub_1DB30623C(v4, qword_1ECC453B0, &qword_1DB50F720);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3BE618()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB3BE780, 0, 0);
  }

  else
  {
    v5 = v1[29];
    v4 = v1[30];
    v6 = v1[26];

    sub_1DB3BE9DC(v5, v6);

    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_1DB3BE780()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_1DB3BE7EC(uint64_t *a1, void (*a2)(uint64_t *, __n128))
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  a2(&v11, v6);
  sub_1DB3F8DEC(v8);
  return sub_1DB3BEC44(v8);
}

uint64_t sub_1DB3BE8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  type metadata accessor for BaseObjectGraph();
  v10 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v13 = v10;

  swift_task_localValuePush();
  sub_1DB3BD00C(a1, v14, a3, &v13);
  swift_task_localValuePop();

  v11 = v13;
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_1DB3BE9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_7JetCore0A17PackSigningPolicyO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_7JetCore0A15PackKeyProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3BEA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1DB3BEAF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3BEB98(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1DB30C158(result, a2);
}

uint64_t sub_1DB3BEBD4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB3BE7EC(a1, *(v1 + 16));
}

uint64_t sub_1DB3BEBE8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DB3BEC44(uint64_t a1)
{
  v2 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3BED24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SendableWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(*v3 + 80);
  v3[2] = sub_1DB388A48();
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

void *SendableWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB3BEF54();
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

void SendableWrapper.withValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6[2] = *(*v3 + 80);
  v6[3] = a3;
  v6[4] = a1;
  v6[5] = a2;
  sub_1DB35B4EC(sub_1DB3BEF88, v6, v5);
}

uint64_t SendableWrapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SendableWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *sub_1DB3BEF54()
{
  v1 = *(*v0 + 80);
  v0[2] = sub_1DB388A48();
  return v0;
}

uint64_t sub_1DB3BEF88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

id sub_1DB3BEFF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1DB509CD0();
    sub_1DB32E340(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1DB3BF08C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  LOBYTE(a2) = v6(v7, v8);

  return a2 & 1;
}

uint64_t sub_1DB3BF108(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1DB50A650();
  v8 = v7;

  v9 = a3;
  LOBYTE(v6) = v5(v6, v8, v9);

  return v6 & 1;
}

uint64_t sub_1DB3BF18C()
{
  v0 = sub_1DB50AFA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50AF80();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DB50A440();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DB357BD4();
  sub_1DB50A430();
  sub_1DB50AF70();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1DB50AFD0();
  qword_1ECC44DF0 = result;
  return result;
}

id static DiskJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1ECC420B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC44DF0;

  return v1;
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F5701348;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

void *DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:on:)(void *a1, uint64_t a2, int a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1DB3C11CC(a1, a2, a3, v10, v4, v8, v9);
}

uint64_t sub_1DB3BF44C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  LODWORD(v81) = a4;
  v83 = a3;
  v72 = a6;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v80 = type metadata accessor for DiskJetPackResourceBundle();
  v9 = *(*(v80 - 1) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB509CA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  v75 = *a1;
  sub_1DB30BE90(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DD8, &unk_1DB518250);
  v26 = swift_dynamicCast();
  v73 = v6;
  v82 = v11;
  v78 = v18;
  if (v26)
  {
    v28 = *(&v87 + 1);
    v27 = *v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    (*(v27 + 8))(v28, v27);
    __swift_destroy_boxed_opaque_existential_0(&v86);
  }

  else
  {
    *v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_1DB30623C(&v86, &qword_1ECC44DE0, &unk_1DB518060);
    (*(v13 + 56))(v25, 1, 1, v12);
  }

  v29 = v25;
  v30 = v13;
  v77 = v13;
  v31 = v80;
  v84 = swift_allocBox();
  v33 = v32;
  v34 = *(v30 + 16);
  v74 = v30 + 16;
  v35 = v78;
  v34(v78, v83, v12);
  v85 = v34;
  v36 = v12;
  v83 = v29;
  sub_1DB30C4B8(v29, v22, &unk_1ECC42B20, &unk_1DB50F6A0);
  *v33 = sub_1DB313FFC(MEMORY[0x1E69E7CC0]);
  sub_1DB30C4B8(v22, v33 + *(v31 + 6), &unk_1ECC42B20, &unk_1DB50F6A0);
  v37 = v79;
  v34(v79, v35, v12);
  v38 = type metadata accessor for JetPackResourceBundleDiskLocation();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_1DB4A9360(v37, v81 & 1);
  v42 = v77;
  sub_1DB30623C(v22, &unk_1ECC42B20, &unk_1DB50F6A0);
  v43 = *(v42 + 8);
  v43(v35, v36);
  *(v33 + 8) = v41;
  v80 = objc_opt_self();
  v44 = [v80 defaultManager];
  v81 = v33;
  v45 = v82;
  sub_1DB3C196C(v33, v82);
  v85(v35, *(v45 + 8) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v36);
  sub_1DB3C1910(v45);
  sub_1DB509C40();
  v43(v35, v36);
  v46 = sub_1DB50A620();

  LOBYTE(v33) = [v44 fileExistsAtPath_];

  if ((v33 & 1) == 0)
  {
    v47 = [v80 defaultManager];
    sub_1DB3C196C(v81, v45);
    v85(v35, *(v45 + 8) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v36);
    sub_1DB3C1910(v45);
    v48 = sub_1DB509BC0();
    v43(v35, v36);
    *&v86 = 0;
    v49 = [v47 createDirectoryAtURL:v48 withIntermediateDirectories:1 attributes:0 error:&v86];

    if (!v49)
    {
      v70 = v86;
      sub_1DB509B20();

      swift_willThrow();
      goto LABEL_21;
    }

    v50 = v86;
  }

  v51 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  v52 = v76;
  sub_1DB3C17BC(v76, &v86);
  v53 = swift_allocObject();
  v54 = v87;
  *(v53 + 16) = v86;
  *(v53 + 32) = v54;
  *(v53 + 48) = *v88;
  *(v53 + 64) = *&v88[16];
  aBlock[4] = sub_1DB3BECA0;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3BEFF4;
  aBlock[3] = &block_descriptor_9;
  v55 = _Block_copy(aBlock);

  [v51 setKeyForIdentifier_];
  _Block_release(v55);
  v56 = v84;
  *v88 = sub_1DB3C19E8;
  *&v88[8] = v84;
  *&v86 = MEMORY[0x1E69E9820];
  *(&v86 + 1) = 1107296256;
  *&v87 = sub_1DB3BF08C;
  *(&v87 + 1) = &block_descriptor_16_0;
  v57 = _Block_copy(&v86);

  [v51 setFileEntryFound_];
  _Block_release(v57);
  *v88 = sub_1DB3C19F0;
  *&v88[8] = v56;
  *&v86 = MEMORY[0x1E69E9820];
  *(&v86 + 1) = 1107296256;
  *&v87 = sub_1DB3BF108;
  *(&v87 + 1) = &block_descriptor_19_1;
  v58 = _Block_copy(&v86);

  [v51 setDataSegmentFound_];
  _Block_release(v58);
  v59 = *(v52 + 8);
  if ((v59 & 0x3000000000000000) == 0x2000000000000000 && v59 == 0x2000000000000000 && *v52 == 2)
  {
    v60 = xmmword_1DB517E90;
  }

  else
  {
    v90 = 0;
    v89 = 0u;
    *&v88[8] = 0u;
    *(&v87 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v88 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1DB3C19F8();
    sub_1DB3BECD0(&v86);
    v60 = *v52;
  }

  v86 = v60;
  v61 = sub_1DB46D38C();
  v62 = *(v52 + 8);
  v63 = (v62 >> 60) & 3;
  v64 = !v63 || v63 != 1 && !(*v52 & 0xFFFFFFFFFFFFFFFELL | v62 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v65 = [v51 processStream:v75 signatureVerifier:v61 options:v64 error:{aBlock, v72}];

  if ((v65 & 1) == 0)
  {
    v69 = aBlock[0];
    sub_1DB509B20();

    swift_willThrow();
LABEL_21:
    sub_1DB30623C(v83, &unk_1ECC42B20, &unk_1DB50F6A0);

    goto LABEL_22;
  }

  v66 = aBlock[0];
  sub_1DB30623C(v83, &unk_1ECC42B20, &unk_1DB50F6A0);

  v67 = v81;
  swift_beginAccess();
  sub_1DB3C196C(v67, v72);

LABEL_22:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB3BFDC8(void *a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiskJetPackResourceBundle();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1DB3C196C(v13, v12);
  (*(v5 + 16))(v8, *(v12 + 1) + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v4);
  sub_1DB3C1910(v12);
  sub_1DB509C40();
  (*(v5 + 8))(v8, v4);
  v14 = sub_1DB50A620();

  v21[0] = 0;
  LODWORD(a1) = [a1 writeStream:a2 toDirectory:v14 error:v21];

  if (a1)
  {
    v15 = v21[0];
  }

  else
  {
    v16 = v21[0];
    v17 = sub_1DB509B20();

    swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1DB3BFFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DB50A6B0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for DiskJetPackResourceBundle();
  v8 = swift_projectBox();
  v9 = [a3 readData];
  v10 = sub_1DB509CE0();
  v12 = v11;

  swift_beginAccess();

  sub_1DB30C1AC(v10, v12);
  v13 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *v8;
  *v8 = 0x8000000000000000;
  sub_1DB31DF40(v10, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *v8 = v43[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {
    sub_1DB50A690();
    v15 = sub_1DB50A670();
    v17 = v16;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v18 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    v44 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v20._object = 0x80000001DB52C4F0;
    v20._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    if (v17)
    {
      v21 = MEMORY[0x1E69E6158];
    }

    else
    {
      v15 = 0;
      v21 = 0;
      v43[2] = 0;
    }

    v43[0] = v15;
    v43[1] = v17;
    v43[3] = v21;
    sub_1DB30C4B8(v43, v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40 = 0u;
    v41 = 0u;
    sub_1DB301D4C(v39, &v40);
    v42 = 0;
    v22 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v40;
    v27 = v41;
    v25[64] = v42;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v44 = v22;
    sub_1DB30623C(v43, &qword_1ECC426B0, &qword_1DB50EEB0);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v19 + 32) = v44;
    v29 = sub_1DB50AF40();
    if (os_log_type_enabled(v18, v29))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v30 = MEMORY[0x1E69E6158];
      v31 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v31[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v31 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v33 = swift_allocObject();
      *(v33 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v40 = v19;
      *(&v40 + 1) = sub_1DB31485C;
      *&v41 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v34 = sub_1DB50A5E0();
      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DB50EE90;
      *(v37 + 56) = v30;
      *(v37 + 64) = sub_1DB31494C();
      *(v37 + 32) = v34;
      *(v37 + 40) = v36;
      sub_1DB50A1E0();
    }
  }

  sub_1DB30C158(v10, v12);
  return 1;
}

uint64_t sub_1DB3C04F4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1DB3C0548(uint64_t a1, void *a2)
{
  if (qword_1ECC42238 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52C540;
  v5._countAndFlagsBits = 0xD00000000000003ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1DB30C4B8(v23, v17, &qword_1ECC426B0, &qword_1DB50EEB0);
  v18 = 0u;
  v19 = 0u;
  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 728) = v4;
  *(v5 + 153) = a4;
  *(v5 + 720) = a3;
  *(v5 + 712) = a2;
  *(v5 + 704) = a1;
  v6 = *(*(type metadata accessor for DiskJetPackResourceBundle() - 8) + 64) + 15;
  *(v5 + 736) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  *(v5 + 744) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 752) = swift_task_alloc();
  v9 = sub_1DB509CA0();
  *(v5 + 760) = v9;
  v10 = *(v9 - 8);
  *(v5 + 768) = v10;
  *(v5 + 776) = *(v10 + 64);
  *(v5 + 784) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3C08F0, 0, 0);
}

uint64_t sub_1DB3C08F0()
{
  v29 = (v0 + 536);
  *(v0 + 400) = &type metadata for SyncTaskScheduler;
  *(v0 + 408) = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    v23 = v1;
    swift_once();
    v1 = v23;
  }

  v2 = *(v0 + 784);
  v25 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v27 = *(v0 + 752);
  v28 = *(v0 + 744);
  v5 = *(v0 + 728);
  v26 = *(v0 + 153);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  *(v0 + 696) = v1;

  swift_task_localValuePush();
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 8))(v8, v9);
  sub_1DB30BE90(v7, v0 + 416);
  (*(v3 + 16))(v2, v6, v4);
  sub_1DB3C17BC(v5, v0 + 320);
  v10 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1DB2FEA0C((v0 + 416), v11 + 16);
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v11 + v10 + v25) = v26;
  v12 = v11 + ((v10 + v25) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 56) = *(v0 + 368);
  v13 = *(v0 + 336);
  *(v12 + 40) = *(v0 + 352);
  v14 = *(v0 + 320);
  *(v12 + 24) = v13;
  *(v12 + 8) = v14;
  *v27 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v0 + 792) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v18[2] = v19;
  sub_1DB3C180C(v27, v18 + *(*v18 + 96));
  v20 = swift_allocObject();
  v20[2] = sub_1DB3C17F4;
  v20[3] = v11;
  v20[4] = v18;
  *(v0 + 80) = sub_1DB3C187C;
  *(v0 + 88) = v20;
  *(v0 + 96) = sub_1DB3C1888;
  *(v0 + 104) = v18;
  sub_1DB30BE90(v0 + 376, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1DB30828C(v0 + 80);

  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(v7, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v29, v0 + 456);
    sub_1DB30BE90(v0 + 456, v0 + 576);
    v21 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 576), v21 + 16);
    sub_1DB30BE90(v0 + 456, v0 + 616);
    v22 = swift_allocObject();
    sub_1DB2FEA0C((v0 + 616), v22 + 16);
    *(v0 + 680) = &type metadata for SyncTaskScheduler;
    *(v0 + 688) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 240) = sub_1DB3C18F4;
    *(v0 + 248) = v21;
    *(v0 + 256) = sub_1DB3C18F8;
    *(v0 + 264) = v22;
    sub_1DB30BE90(v0 + 656, v0 + 272);
    *(v0 + 312) = 0;

    sub_1DB309368(v0 + 240);

    sub_1DB30623C(v0 + 240, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0((v0 + 456));
    __swift_destroy_boxed_opaque_existential_0((v0 + 656));
  }

  else
  {
    *(v0 + 568) = 0;
    *v29 = 0u;
    *(v0 + 552) = 0u;
    sub_1DB30623C(v29, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));

  return MEMORY[0x1EEE6DFA0](sub_1DB3C0E0C, 0, 0);
}

uint64_t sub_1DB3C0E0C()
{
  v1 = v0 + 2;
  v2 = v0[99];
  v3 = v0[92];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB3C0ED8;
  v0[20] = swift_continuation_init();
  v4 = (v0 + 20);
  *(v4 + 72) = 1;
  sub_1DB309368(v4);
  sub_1DB30623C(v4, &unk_1ECC453A0, &unk_1DB50F710);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3C0ED8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 800) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB3C1068, 0, 0);
  }

  else
  {
    v4 = v1[99];
    v5 = v1[98];
    v6 = v1[94];
    v7 = v1[92];
    v8 = v1[88];

    sub_1DB3C1890(v7, v8);

    v9 = v2[1];

    return v9();
  }
}

uint64_t sub_1DB3C1068()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[94];
  v4 = v0[92];

  v5 = v0[1];
  v6 = v0[100];

  return v5();
}

uint64_t sub_1DB3C10F8(uint64_t *a1, void (*a2)(uint64_t *, __n128))
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  a2(&v11, v6);
  sub_1DB3F92C0(v8);
  return sub_1DB3C1910(v8);
}

void *sub_1DB3C11CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a5;
  v40 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v12 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = (&v38 - v13);
  v15 = sub_1DB509CA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  type metadata accessor for BaseObjectGraph();
  v20 = static BaseObjectGraph.current.getter();
  if (qword_1EE30EAE0 != -1)
  {
    v37 = v20;
    swift_once();
    v20 = v37;
  }

  *&v46 = v20;
  v42 = v20;

  swift_task_localValuePush();
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 8))(v21, v22);
  sub_1DB30BE90(a1, v51);
  (*(v16 + 16))(&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v15);
  sub_1DB3C17BC(v39, &v46);
  v23 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v24 = v23 + v17;
  v25 = swift_allocObject();
  sub_1DB2FEA0C(v51, v25 + 16);
  (*(v16 + 32))(v25 + v23, v18, v15);
  *(v25 + v24) = v40 & 1;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  *(v26 + 56) = v49;
  *(v26 + 40) = v48;
  v27 = v46;
  *(v26 + 24) = v47;
  *(v26 + 8) = v27;
  *v14 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DF8, &qword_1DB5180B0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v31[2] = v32;
  sub_1DB3C180C(v14, v31 + *(*v31 + 96));
  v33 = swift_allocObject();
  v33[2] = sub_1DB3C1CB8;
  v33[3] = v25;
  v33[4] = v31;
  *&v46 = sub_1DB3C1CD4;
  *(&v46 + 1) = v33;
  *&v47 = sub_1DB3C1CE0;
  *(&v47 + 1) = v31;
  sub_1DB30BE90(v52, &v48);
  v50 = 0;
  swift_retain_n();

  sub_1DB30828C(&v46);

  sub_1DB30623C(&v46, &unk_1ECC45030, &qword_1DB50F4D0);
  sub_1DB30BE90(a1, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44DC8, &unk_1DB518050);
  if (swift_dynamicCast())
  {
    sub_1DB2FEA0C(v44, v51);
    sub_1DB30BE90(v51, &v46);
    v34 = swift_allocObject();
    sub_1DB2FEA0C(&v46, v34 + 16);
    sub_1DB30BE90(v51, v44);
    v35 = swift_allocObject();
    sub_1DB2FEA0C(v44, v35 + 16);
    v43[3] = &type metadata for SyncTaskScheduler;
    v43[4] = &protocol witness table for SyncTaskScheduler;
    *&v46 = sub_1DB3C1CE4;
    *(&v46 + 1) = v34;
    *&v47 = sub_1DB3C1CD0;
    *(&v47 + 1) = v35;
    sub_1DB30BE90(v43, &v48);
    v50 = 0;

    sub_1DB309368(&v46);

    sub_1DB30623C(&v46, &unk_1ECC453A0, &unk_1DB50F710);
    __swift_destroy_boxed_opaque_existential_0(v51);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1DB30623C(v44, &qword_1ECC44DD0, &unk_1DB51C860);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_0(v52);
  return v31;
}

uint64_t sub_1DB3C180C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3C187C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB3C10F8(a1, *(v1 + 16));
}

uint64_t sub_1DB3C1890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3C1910(uint64_t a1)
{
  v2 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB3C196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB3C19F8()
{
  sub_1DB30C4B8((v0 + 5), v6, &qword_1ECC44E00, &unk_1DB518260);
  if (v7)
  {
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB49C068();
    v2 = (*(v1 + 8))();

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC44E00, &unk_1DB518260);
    v2 = sub_1DB49C068();
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 8))(0xD000000000000025, 0x80000001DB52C580, v2, v3, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  sub_1DB3BEB98(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1DB3C1C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1DB509CA0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_1DB3BF44C(a1, v2 + 16, v2 + v6, *(v2 + v6 + *(v5 + 64)), v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8, a2);
}

void EventTimeMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  if (qword_1ECC420B8 != -1)
  {
    v8 = swift_once();
  }

  v9 = qword_1ECC44E08;
  MEMORY[0x1EEE9AC00](v8);
  v15[-2] = v7;
  os_unfair_lock_lock((v9 + 24));
  sub_1DB3C207C((v9 + 16), v15);
  os_unfair_lock_unlock((v9 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v10 = v15[0];
    (*(v4 + 8))(v7, v3);
    v15[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    v15[0] = v10;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
    v13 = *(v12 + 16);
    v14 = v10;
    v13(v15, 0x6D6954746E657665, 0xE900000000000065, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_1DB3C1EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44E10, qword_1DB5182B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECC44E08 = result;
  return result;
}

id sub_1DB3C1F68@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_1DB509D40();
  v6 = [v4 serverTimeFromDate_];

  sub_1DB336FD4(0, &qword_1EE30C798, 0x1E69E58C0);
  v7 = *a1;
  v8 = v6;
  LOBYTE(v5) = sub_1DB50B0C0();

  if (v5)
  {
    [v8 doubleValue];
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v8 = v10;
  }

  *a1 = v8;
  *a2 = v8;
  return v8;
}

void sub_1DB3C20C0()
{
  v2 = *v0;

  sub_1DB330080(&v13, v3);
  v4 = v13;
  v5 = sub_1DB330884(&v13);
  if (v1)
  {
    v13.i64[0] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v11 = v12;
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v13.i64[0] = 0;
      v13.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = v0[2];
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = v0;
    v10 = v4;
    v7 = *(v2 + 80);
    type metadata accessor for ThrowingDependencyCell.ObjectState();
    sub_1DB47D0C4(sub_1DB3C2DBC, v9, v6);
  }
}

uint64_t sub_1DB3C22D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DB3C2320(a1, a2);
  return v4;
}

void *sub_1DB3C2320(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for ThrowingDependencyCell.ObjectState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v13 - v9);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1DB388A48();
  (*(v7 + 8))(v10, v6);
  v2[2] = v11;
  return v2;
}

uint64_t sub_1DB3C2424@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v59 = a3;
  v8 = *a2;
  v9 = sub_1DB50A230();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *(v8 + 80);
  v17 = type metadata accessor for ThrowingDependencyCell.ObjectState();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v53 - v20);
  v23 = *(v22 + 16);
  v60 = a1;
  v23(v21, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v16 - 8) + 32))(a5, v21, v16);
  }

  v25 = v21[1];
  v54 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v55 = a5;
  v56 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v53 = v25;
    v31 = v28;
    v32 = v30;
    v33 = swift_slowAlloc();
    v61.tv_sec = v33;
    *v32 = 136315138;
    v34 = sub_1DB50BEE0();
    v36 = sub_1DB3D4EE8(v34, v35, &v61.tv_sec);

    *(v32 + 4) = v36;
    v37 = sub_1DB50A210();
    v38 = v31;
    v25 = v53;
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v38, v37, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v40 = v57;
  v39 = v58;
  (*(v57 + 16))(v12, v15, v58);
  v41 = sub_1DB50A2C0();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1DB50A2B0();
  (*(v40 + 8))(v15, v39);
  static MonotonicTime.now.getter(&v61);
  tv_sec = v61.tv_sec;
  tv_nsec = v61.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v47 = v61.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 16) = 0;
  v61.tv_sec = v48;
  MEMORY[0x1EEE9AC00](v48);
  v49 = v54;
  *(&v53 - 12) = v16;
  *(&v53 - 11) = v49;
  v50 = v59;
  *(&v53 - 10) = v25;
  *(&v53 - 9) = v50;
  v51 = v60;
  *(&v53 - 8) = v62;
  *(&v53 - 7) = v51;
  *(&v53 - 6) = tv_sec;
  *(&v53 - 5) = tv_nsec;
  *(&v53 - 4) = v44;
  *(&v53 - 3) = v52;
  *(&v53 - 2) = v47;
  sub_1DB50BEC0();
}

void sub_1DB3C2904(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v58 = a5;
  v59 = a1;
  v60 = a2;
  v15 = sub_1DB50A280();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DB50A230();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.tv_sec = a3;
  v61.tv_nsec = a4;
  v24 = a9;
  v25 = v62;
  sub_1DB330574(v59, v60, &v61.tv_sec);
  if (!v25)
  {
    v26 = v55;
    v27 = v56;
    v52 = v18;
    v53 = v15;
    v62 = v23;
    v60 = 0;
    v28 = type metadata accessor for ThrowingDependencyCell.ObjectState();
    v29 = v58;
    (*(*(v28 - 8) + 8))(v58, v28);
    (*(*(a12 - 8) + 16))(v29, v24, a12);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v61);
    tv_sec = v61.tv_sec;
    tv_nsec = v61.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v32 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
    v33 = v27 / *&qword_1EE30ED50 + v26;
    v59 = v19;
    v34 = v62;
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v35 = v32 - v33;
    v36 = sub_1DB50A270();
    __swift_project_value_buffer(v36, qword_1EE312DE8);

    v37 = sub_1DB50A250();
    sub_1DB50A2A0();
    v38 = sub_1DB50B060();

    v39 = v20;
    if (sub_1DB50B0E0())
    {
      v40 = v38;

      v41 = v52;
      sub_1DB50A2D0();

      v42 = v53;
      v43 = v54;
      if ((*(v54 + 88))(v41, v53) == *MEMORY[0x1E69E93E8])
      {
        v44 = 0;
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v41, v42);
        v45 = "selfTime=%f";
        v44 = 1;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      *(v46 + 1) = v44;
      *(v46 + 2) = 2048;
      os_unfair_lock_lock((a10 + 24));
      v47 = *(a10 + 16);
      os_unfair_lock_unlock((a10 + 24));
      *(v46 + 4) = v35 - v47;
      v48 = v62;
      v49 = sub_1DB50A210();
      v50 = v45;
      v34 = v48;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v37, v40, v49, "MakeDependency", v50, v46, 0xCu);
      MEMORY[0x1E1288220](v46, -1, -1);
    }

    (*(v39 + 8))(v34, v59);
    os_unfair_lock_lock((a11 + 24));
    *(a11 + 16) = v35 + *(a11 + 16);
    os_unfair_lock_unlock((a11 + 24));
  }
}

uint64_t AssetPushSubscriptionRecord.assetURLString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.channelID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.bundleID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.usageID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.scheduleFrom.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t AssetPushSubscriptionRecord.scheduleTo.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t AssetPushSubscriptionRecord.serverTimestamp.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t AssetPushSubscriptionRecord.modifiedAt.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t AssetPushSubscriptionRecord.scheduleFromDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 80))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 72);
    sub_1DB509D80();
    v3 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v3, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.scheduleToDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 96))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 88);
    sub_1DB509D80();
    v3 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v3, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.serverDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 120))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 112);
    sub_1DB509D80();
    v3 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v3, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.modifiedAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 144))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v1 + 136);
    sub_1DB509D80();
    v3 = 0;
  }

  v5 = sub_1DB509DD0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v3, 1, v5);
}

uint64_t AssetPushSubscriptionRecord.init(assetURLString:channelID:bundleID:usageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 4) = 1;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = 0;
  *(a9 + 80) = 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 100) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = 0;
  *(a9 + 128) = 1;
  *(a9 + 136) = 0;
  *(a9 + 144) = 1;
  return result;
}

uint64_t sub_1DB3C324C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6E69646E65507369;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6465696669646F6DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C756465686373;
    v9 = 0x797469726F697270;
    if (a1 != 7)
    {
      v9 = 0x6954726576726573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 25705;
    v2 = 0x4449656C646E7562;
    v3 = 0x44496567617375;
    if (a1 != 4)
    {
      v3 = 0x656C756465686373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4C52557465737361;
    if (a1 != 1)
    {
      v4 = 0x496C656E6E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB3C3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3C42CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3C3438(uint64_t a1)
{
  v2 = sub_1DB3C388C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3C3474(uint64_t a1)
{
  v2 = sub_1DB3C388C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPushSubscriptionRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44E98, &qword_1DB518360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v10 = *(v1 + 1);
  v37 = *(v1 + 2);
  v38 = v10;
  v11 = *(v1 + 3);
  v35 = *(v1 + 4);
  v36 = v11;
  v12 = *(v1 + 5);
  v33 = *(v1 + 6);
  v34 = v12;
  v13 = *(v1 + 7);
  v31 = *(v1 + 8);
  v32 = v13;
  v29 = *(v1 + 9);
  v30 = *(v1 + 80);
  v14 = *(v1 + 11);
  v28 = *(v1 + 96);
  v26 = v1[25];
  v27 = v14;
  LODWORD(v14) = *(v1 + 104);
  v23 = *(v1 + 14);
  v24 = *(v1 + 120);
  v25 = v14;
  v22 = *(v1 + 121);
  v21 = v1[31];
  v20 = *(v1 + 128);
  v18[1] = *(v1 + 17);
  v19 = *(v1 + 144);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3C388C();
  sub_1DB50BE40();
  v54 = 0;
  v51 = v9;
  v16 = v39;
  sub_1DB50B840();
  if (!v16)
  {
    v53 = 1;
    sub_1DB50B800();
    v52 = 2;
    sub_1DB50B800();
    v39 = v4;
    v50 = 3;
    sub_1DB50B800();
    v49 = 4;
    sub_1DB50B800();
    v48 = 5;
    sub_1DB50B850();
    v47 = 6;
    sub_1DB50B850();
    v46 = 7;
    v45 = v25;
    sub_1DB50B840();
    v44 = 8;
    sub_1DB50B850();
    v43 = 9;
    sub_1DB50B870();
    v42 = 10;
    v41 = v20;
    sub_1DB50B840();
    v40 = 11;
    sub_1DB50B850();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB3C388C()
{
  result = qword_1ECC44EA0;
  if (!qword_1ECC44EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EA0);
  }

  return result;
}

uint64_t AssetPushSubscriptionRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44EA8, &qword_1DB518368);
  v5 = *(v106 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v8 = &v36 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3C388C();
  sub_1DB50BDF0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v54 = v5;
    LOBYTE(v65) = 0;
    v10 = sub_1DB50B720();
    v105 = BYTE4(v10) & 1;
    LOBYTE(v65) = 1;
    v11 = sub_1DB50B6E0();
    v53 = v12;
    LOBYTE(v65) = 2;
    v50 = sub_1DB50B6E0();
    v51 = v11;
    v52 = v13;
    LOBYTE(v65) = 3;
    v14 = sub_1DB50B6E0();
    v16 = v15;
    v49 = v14;
    LOBYTE(v65) = 4;
    v17 = sub_1DB50B6E0();
    v19 = v18;
    v48 = v17;
    LOBYTE(v65) = 5;
    v47 = sub_1DB50B730();
    v104 = v20 & 1;
    LOBYTE(v65) = 6;
    v46 = sub_1DB50B730();
    v102 = v21 & 1;
    LOBYTE(v65) = 7;
    v44 = sub_1DB50B720();
    v45 = v10;
    v99 = BYTE4(v44) & 1;
    LOBYTE(v65) = 8;
    v43 = sub_1DB50B730();
    v97 = v22 & 1;
    LOBYTE(v65) = 9;
    v42 = sub_1DB50B750();
    LOBYTE(v65) = 10;
    v23 = sub_1DB50B720();
    v24 = v23;
    v96 = BYTE4(v23) & 1;
    v93 = 11;
    v41 = sub_1DB50B730();
    v26 = v25;
    v42 &= 1u;
    (*(v54 + 8))(v8, v106);
    v94 = v26 & 1;
    LODWORD(v55) = v45;
    v38 = v105;
    BYTE4(v55) = v105;
    v27 = v53;
    *(&v55 + 1) = v51;
    *&v56 = v53;
    *(&v56 + 1) = v50;
    *&v57 = v52;
    *(&v57 + 1) = v49;
    *&v58 = v16;
    *(&v58 + 1) = v48;
    *&v59 = v19;
    *(&v59 + 1) = v47;
    v37 = v104;
    LOBYTE(v60) = v104;
    *(&v60 + 1) = v46;
    v39 = v102;
    LOBYTE(v61) = v102;
    DWORD1(v61) = v44;
    v40 = v99;
    BYTE8(v61) = v99;
    *&v62 = v43;
    LODWORD(v106) = v97;
    BYTE8(v62) = v97;
    BYTE9(v62) = v42;
    HIDWORD(v62) = v24;
    LODWORD(v54) = v96;
    LOBYTE(v63) = v96;
    *(&v63 + 1) = v41;
    v26 &= 1u;
    v64 = v26;
    v28 = v61;
    v29 = v62;
    v30 = v63;
    *(a2 + 144) = v26;
    *(a2 + 112) = v29;
    *(a2 + 128) = v30;
    v31 = v56;
    *a2 = v55;
    *(a2 + 16) = v31;
    v32 = v57;
    v33 = v58;
    v34 = v59;
    *(a2 + 80) = v60;
    *(a2 + 96) = v28;
    *(a2 + 48) = v33;
    *(a2 + 64) = v34;
    *(a2 + 32) = v32;
    sub_1DB348C18(&v55, &v65);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v65 = v45;
    v66 = v38;
    v67 = v51;
    v68 = v27;
    v69 = v50;
    v70 = v52;
    v71 = v49;
    v72 = v16;
    v73 = v48;
    v74 = v19;
    v75 = v47;
    v76 = v37;
    *v77 = *v103;
    *&v77[3] = *&v103[3];
    v78 = v46;
    v79 = v39;
    v81 = v101;
    v80 = v100;
    v82 = v44;
    v83 = v40;
    *v84 = *v98;
    *&v84[3] = *&v98[3];
    v85 = v43;
    v86 = v106;
    v87 = v42;
    v88 = v24;
    v89 = v54;
    *&v90[3] = *&v95[3];
    *v90 = *v95;
    v91 = v41;
    v92 = v26;
    return sub_1DB348C74(&v65);
  }
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DB3C3F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_1DB3C3FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB3C41C8()
{
  result = qword_1ECC44EB0;
  if (!qword_1ECC44EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EB0);
  }

  return result;
}

unint64_t sub_1DB3C4220()
{
  result = qword_1ECC44EB8;
  if (!qword_1ECC44EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EB8);
  }

  return result;
}

unint64_t sub_1DB3C4278()
{
  result = qword_1ECC44EC0;
  if (!qword_1ECC44EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EC0);
  }

  return result;
}

uint64_t sub_1DB3C42CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xEE00676E69727453 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006D6F7246 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEA00000000006F54 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6954726576726573 && a2 == 0xEF706D617473656DLL || (sub_1DB50BA30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E69646E65507369 && a2 == 0xE900000000000067 || (sub_1DB50BA30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB52C5E0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t Dependency.init<A>(satisfying:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  v7 = *(*(a3 - 8) + 32);

  return v7(boxed_opaque_existential_0, a2, a3);
}

void Dependency.init<A>(satisfying:with:)()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000005DLL, 0x80000001DB52C620);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000005DLL, 0x80000001DB52C620);
  sub_1DB50B580();
  __break(1u);
}

{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](60, 0xE100000000000000);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD00000000000005CLL, 0x80000001DB52C850);
  sub_1DB50B580();
  __break(1u);
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v8);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v10, a2);
}

{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v8);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v10, a2);
}

uint64_t Dependency._Personality.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2;
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, &v7, a3);
  return swift_unknownObjectRetain();
}

uint64_t _s7JetCore10DependencyV11_satisfying4withACxm_xyYaYbKctcs8SendableRzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DependencyPromise();
  result = sub_1DB3891D4(a2, a3);
  a4[4] = v7;
  a4[1] = result;
  return result;
}

uint64_t sub_1DB3C4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  v11 = a5(0, a4);

  v12 = a6(a2, a3);
  a7[4] = v11;

  a7[1] = v12;
  return result;
}

unint64_t sub_1DB3C4BFC()
{
  result = qword_1ECC44EC8;
  if (!qword_1ECC44EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EC8);
  }

  return result;
}

uint64_t sub_1DB3C4C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DB3C4C98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t JSONObject.encode(to:)(void *a1)
{
  v4 = sub_1DB50B400();
  v61 = *(v4 - 1);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A60, &unk_1DB5177A0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v56 - v9;
  v11 = sub_1DB509B40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  JSONObject.untyped.getter(&v81);
  if (!v82)
  {
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    sub_1DB50BB10();
    v19 = &v75;
    goto LABEL_18;
  }

  sub_1DB30C4B8(&v81, v80, &qword_1ECC426B0, &qword_1DB50EEB0);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v16 = v71;
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    if (*MEMORY[0x1E695E4D0] && v16 == *MEMORY[0x1E695E4D0] || *MEMORY[0x1E695E4C0] && v16 == *MEMORY[0x1E695E4C0])
    {
      [v16 BOOLValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      sub_1DB50BAD0();
    }

    else
    {
      [v16 doubleValue];
      __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      sub_1DB50BAE0();
    }

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    sub_1DB50BAD0();
LABEL_15:
    v22 = &v75;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    sub_1DB50BAE0();
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE20();
    __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    sub_1DB50BAC0();

    goto LABEL_15;
  }

  sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    v25 = v67[0];
    v26 = a1[3];
    v62 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    sub_1DB50BE10();
    v62 = v25;
    sub_1DB50B0A0();
    sub_1DB509B30();
    if (v70)
    {
      while (1)
      {
        sub_1DB30C200(&v69, v68);
        *(&v72 + 1) = &type metadata for FoundationValue;
        *&v73 = &off_1F56FB6B0;
        *&v71 = swift_allocObject();
        sub_1DB30C200(v68, (v71 + 16));
        __swift_mutable_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
        sub_1DB325078();
        sub_1DB50B9E0();
        if (v2)
        {
          break;
        }

        sub_1DB3151CC(&v71);
        sub_1DB509B30();
        if (!v70)
        {
          goto LABEL_26;
        }
      }

      sub_1DB3151CC(&v71);
      (*(v12 + 8))(v15, v11);
    }

    else
    {
LABEL_26:
      (*(v12 + 8))(v15, v11);
    }

    goto LABEL_15;
  }

  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v80);
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BE00();
    v35 = v59;
    JSONObject.untyped.getter(&v75);
    sub_1DB30623C(&v75, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = v60;
    sub_1DB50B3C0();
    v37 = sub_1DB50B410();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
    v39[3] = &type metadata for JSONObject;
    v41 = swift_allocObject();
    *v39 = v41;
    sub_1DB3171C0(v35, v41 + 16);
    v42 = v61;
    v43 = v39 + v40;
    v44 = v62;
    (*(v61 + 16))(v43, v36, v62);
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6B30], v37);
    swift_willThrow();
    (*(v42 + 8))(v36, v44);
    return sub_1DB30623C(&v81, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v27 = v79;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  sub_1DB50BE40();
  v57 = v27;
  v29 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = v74;
  if (!*(&v72 + 1))
  {
LABEL_40:
    (*(v58 + 8))(v10, v7);

    goto LABEL_17;
  }

  while (1)
  {
    sub_1DB30C200(&v75, &v69);
    sub_1DB30C200(&v77, v68);
    sub_1DB300B14(&v69, v67);
    if (swift_dynamicCast())
    {
      break;
    }

    if (!swift_dynamicCast())
    {
      v56[1] = v29;
      v45 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB50BE00();
      *&v71 = 0;
      *(&v71 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      *&v71 = 0xD000000000000022;
      *(&v71 + 1) = 0x80000001DB52C6C0;
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      swift_getDynamicType();
      v46 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v46);

      v47 = v60;
      sub_1DB50B3C0();
      v48 = sub_1DB50B410();
      swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0) + 48);
      v50[3] = &type metadata for JSONObject;
      v52 = swift_allocObject();
      *v50 = v52;
      sub_1DB3171C0(v59, v52 + 16);
      v53 = v61;
      v54 = v50 + v51;
      v55 = v62;
      (*(v61 + 16))(v54, v47, v62);
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6B30], v48);
      swift_willThrow();

      (*(v53 + 8))(v47, v55);
      goto LABEL_44;
    }

    v33 = v65;
    sub_1DB300B14(v68, &v63);
    *(&v72 + 1) = &type metadata for FoundationValue;
    *&v73 = &off_1F56FB6B0;
    *&v71 = swift_allocObject();
    sub_1DB30C200(&v63, (v71 + 16));
    v63 = v33;
    v64 = 0;
    sub_1DB325078();
    sub_1DB50B8A0();
    if (v2)
    {
      goto LABEL_43;
    }

    sub_1DB3151CC(&v71);
    __swift_destroy_boxed_opaque_existential_0(v68);
    __swift_destroy_boxed_opaque_existential_0(&v69);
LABEL_31:
    __swift_destroy_boxed_opaque_existential_0(v67);
    sub_1DB50AEF0();
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    if (!*(&v72 + 1))
    {
      goto LABEL_40;
    }
  }

  v30 = v29;
  v31 = v65;
  v32 = v66;
  sub_1DB300B14(v68, &v63);
  *(&v72 + 1) = &type metadata for FoundationValue;
  *&v73 = &off_1F56FB6B0;
  *&v71 = swift_allocObject();
  sub_1DB30C200(&v63, (v71 + 16));
  *&v63 = v31;
  *(&v63 + 1) = v32;
  v64 = 1;
  sub_1DB325078();
  sub_1DB50B8A0();
  if (!v2)
  {

    sub_1DB3151CC(&v71);
    __swift_destroy_boxed_opaque_existential_0(v68);
    __swift_destroy_boxed_opaque_existential_0(&v69);
    v29 = v30;
    goto LABEL_31;
  }

LABEL_43:

  sub_1DB3151CC(&v71);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(&v69);
  (*(v58 + 8))(v10, v7);
  v22 = v67;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_17:
  v19 = v80;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_1DB30623C(&v81, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t JSONObject.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB30BE90(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    sub_1DB3171C0(&v30, &v27);
    sub_1DB34A204(&v30);
    v21[0] = v27;
    v21[1] = v28;
    v22 = v29;
    if (*(&v28 + 1))
    {
      sub_1DB2FEA0C(v21, &v23);
      sub_1DB2FEA0C(&v23, &v34);
LABEL_18:
      v19 = v35;
      *a2 = v34;
      *(a2 + 16) = v19;
      *(a2 + 32) = v36;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v5 = &qword_1ECC42E38;
    v6 = &qword_1DB50FB80;
    v7 = v21;
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v5 = &unk_1ECC44ED8;
    v6 = &unk_1DB518618;
    v7 = &v23;
  }

  sub_1DB30623C(v7, v5, v6);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    if (sub_1DB50BA90())
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(&v24 + 1) = sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      *&v23 = v9;
      *(&v35 + 1) = &type metadata for FoundationValue;
      v36 = &off_1F56FB6B0;
      *&v34 = swift_allocObject();
      sub_1DB30C200(&v23, (v34 + 16));
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(&v30);
      goto LABEL_18;
    }

    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v10 = sub_1DB50BA50();
    v11 = MEMORY[0x1E695E4C0];
    if (v10)
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    v12 = *v11;
    if (*v11)
    {
      type metadata accessor for CFBoolean(0);
      *&v23 = v12;
      *(&v24 + 1) = v13;
      if (v13)
      {
        v14 = swift_allocObject();
        sub_1DB30C200(&v23, (v14 + 16));
        v15 = v12;
        v16 = &type metadata for FoundationValue;
        v17 = &off_1F56FB6B0;
LABEL_16:
        v34 = v14;
        *&v35 = 0;
        *(&v35 + 1) = v16;
        v36 = v17;
        goto LABEL_17;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v18 = v12;
    sub_1DB30623C(&v23, &qword_1ECC426B0, &qword_1DB50EEB0);
    v17 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3C63F8()
{
  result = qword_1ECC44EE8;
  if (!qword_1ECC44EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44EE0, &qword_1DB518620);
    sub_1DB324D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EE8);
  }

  return result;
}

unint64_t sub_1DB3C6484()
{
  result = qword_1ECC44EF8;
  if (!qword_1ECC44EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44EF0, &qword_1DB518628);
    sub_1DB324D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44EF8);
  }

  return result;
}

double FlowActionModel.tabSection.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FlowActionStackDestinationNavigation<>.shouldStackPush<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = *(a6 + 24);
  v13(a3, a6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F00, &qword_1DB518680);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    v19[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
    v18[3] = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(v18);
    (v13)(a3, a6);
    v15 = _isStructurallyEqual(_:to:with:at:)(v19, v18, 3uLL, 0);
    __swift_destroy_boxed_opaque_existential_0(v18);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

unint64_t sub_1DB3C68E0()
{
  result = qword_1ECC44F08;
  if (!qword_1ECC44F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F08);
  }

  return result;
}

unint64_t sub_1DB3C69A8()
{
  result = qword_1ECC44F10;
  if (!qword_1ECC44F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F10);
  }

  return result;
}

uint64_t MetricsEventType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t MetricsEventType.encode(to:)(void *a1)
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

uint64_t MetricsEventType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DB3C6B98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t sub_1DB3C6C5C(void *a1)
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

void static MetricsEventType.playActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "playActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsEventType.seekActivity.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "seekActivity");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB3C6EBC()
{
  result = qword_1ECC44F18;
  if (!qword_1ECC44F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F18);
  }

  return result;
}

uint64_t sub_1DB3C6F20()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0158);
  result = swift_arrayDestroy();
  qword_1ECC67938 = v0;
  return result;
}

uint64_t sub_1DB3C6F6C()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0228);
  result = swift_arrayDestroy();
  qword_1ECC67940 = v0;
  return result;
}

uint64_t sub_1DB3C6FB8()
{
  v0 = sub_1DB3AD72C(&unk_1F56F0268);
  result = sub_1DB3C7208(&unk_1F56F0288);
  qword_1ECC67948 = v0;
  return result;
}

uint64_t sub_1DB3C6FF8()
{
  if (qword_1ECC420C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC67938;
  v1 = qword_1ECC420C8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1DB3F5318(v2, v0);
  qword_1ECC67950 = result;
  return result;
}

uint64_t sub_1DB3C70A0()
{
  if (qword_1ECC420D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC67950;
  v1 = qword_1ECC420D0;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1DB3F5318(v2, v0);
  qword_1ECC67958 = result;
  return result;
}

uint64_t sub_1DB3C7148(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 16) && (v4 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v5 & 1) != 0) && (sub_1DB300B14(*(a1 + 56) + 32 * v4, v10), (swift_dynamicCast() & 1) != 0))
    {
      v6 = sub_1DB33114C(v8, v9, a2);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1DB3C7258()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1DB3C72E4, 0, 0);
}

uint64_t sub_1DB3C72E4()
{
  v1 = v0 + 2;
  v2 = v0[37];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3C73B0;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308440(v3);
  sub_1DB30623C(v3, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3C73B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB3C7548;
  }

  else
  {
    v5 = v1[37];

    v1[39] = v1[20];
    v4 = sub_1DB3C74DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB3C74DC()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    v1 = sub_1DB313804(MEMORY[0x1E69E7CC0]);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DB3C7548()
{
  v24 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  swift_getErrorValue();
  v3 = *(v0 + 224);
  v4 = *(v0 + 240);
  if ((sub_1DB3C8450(*(v0 + 232)) & 1) == 0)
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    v22 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v7._object = 0x80000001DB52BB40;
    v7._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    swift_getErrorValue();
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    *(v0 + 184) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1DB301CDC(v0 + 160, v0 + 192);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB301D4C(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v11 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[40 * v13];
    v15 = *(v0 + 80);
    v16 = *(v0 + 96);
    v14[64] = *(v0 + 112);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    sub_1DB30623C(v0 + 160, &qword_1ECC426B0, &qword_1DB50EEB0);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v6 + 32) = v11;
    v23 = 0;
    OSLogger.log(contentsOf:withLevel:)(v6, &v23);
  }

  v18 = *(v0 + 304);
  v19 = sub_1DB313804(MEMORY[0x1E69E7CC0]);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t Bag.Value.current(or:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[26] = *(a4 + 16);
  v6 = sub_1DB50B120();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *v4;
  v5[29] = v9;
  v5[30] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DB3C78B8, 0, 0);
}

uint64_t sub_1DB3C78B8()
{
  v1 = *(v0 + 216);
  *(v0 + 248) = (*(**(v0 + 240) + 88))();
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  v3 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_1DB3C79C0;
  v5 = *(v0 + 232);

  return Future.result.getter(v5, v3, WitnessTable);
}

uint64_t sub_1DB3C79C0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);

    v5 = sub_1DB3C7C34;
  }

  else
  {
    v5 = sub_1DB3C7ADC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB3C7ADC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);

  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  if (v6 == 1)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v0 + 192))();
    if (v5(v7, 1, v8) != 1)
    {
      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    }
  }

  else
  {
    (*(v4 + 32))(*(v0 + 184), *(v0 + 232), *(v0 + 208));
  }

  v11 = *(v0 + 232);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB3C7C34()
{
  v26 = v0;
  v1 = *(v0 + 264);
  swift_getErrorValue();
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);
  v4 = sub_1DB3C8450(*(v0 + 128));
  if ((v4 & 1) == 0)
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    v24 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v7._object = 0x80000001DB52BB40;
    v7._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    swift_getErrorValue();
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    *(v0 + 80) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1DB301CDC(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1DB301D4C(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v11 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[40 * v13];
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v14[64] = *(v0 + 48);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    sub_1DB30623C(v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v6 + 32) = v11;
    v25 = 0;
    OSLogger.log(contentsOf:withLevel:)(v6, &v25);
  }

  v18 = *(v0 + 264);
  v19 = *(v0 + 200);
  v20 = *(v0 + 184);
  (*(v0 + 192))(v4);

  v21 = *(v0 + 232);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t Bag.Value.currentOrNil()(uint64_t a1, uint64_t a2)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3C7EF4, 0, 0);
}

uint64_t sub_1DB3C7EF4()
{
  v1 = *(v0 + 192);
  *(v0 + 208) = (*(**(v0 + 200) + 88))();
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *(v0 + 224) = *(v1 + 16);
  sub_1DB50B120();
  v3 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_1DB3C8008;
  v5 = *(v0 + 184);

  return Future.result.getter(v5, v3, WitnessTable);
}

uint64_t sub_1DB3C8008()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1DB3C817C;
  }

  else
  {
    v3 = sub_1DB3C811C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3C811C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB3C817C()
{
  v24 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);

  swift_getErrorValue();
  v3 = *(v0 + 120);
  v4 = *(v0 + 136);
  if (sub_1DB3C8450(*(v0 + 128)))
  {
    v5 = *(v0 + 232);
  }

  else
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v22 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52BB40;
    v8._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    swift_getErrorValue();
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    *(v0 + 80) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
    sub_1DB301CDC(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1DB301D4C(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v12 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
    }

    v15 = *(v0 + 232);
    *(v12 + 2) = v14 + 1;
    v16 = &v12[40 * v14];
    v17 = *(v0 + 16);
    v18 = *(v0 + 32);
    v16[64] = *(v0 + 48);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1DB30623C(v0 + 56, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v12;
    v23 = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, &v23);

    v5 = v15;
  }

  (*(*(*(v0 + 224) - 8) + 56))(*(v0 + 184), 1, 1);
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1DB3C8450(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v7, a1, v4);
  v8 = sub_1DB50B9F0();
  if (v8)
  {
    v9 = v8;
    (*(v2 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v2 + 32))(v10, v6, a1);
  }

  v11 = sub_1DB509B10();

  v12 = *MEMORY[0x1E698C548];
  IsEqual = AMSErrorIsEqual();

  return IsEqual;
}

char *sub_1DB3C8680()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  sub_1DB50B120();
  type metadata accessor for Promise();
  v3 = Promise.__allocating_init()();
  v4 = *(v1 + 112);
  type metadata accessor for Promise();
  Promise<A>.init(_:)([v0[2] valuePromise]);
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v9 = sub_1DB336FD4(0, &qword_1EE30E320, 0x1E69E9610);
  swift_retain_n();

  v11[3] = v9;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = sub_1DB50AFB0();
  Promise.then(perform:orCatchError:on:)(sub_1DB3C9AEC, v7, sub_1DB3C9AF8, v8, v11);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v3;
}

uint64_t sub_1DB3C881C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v9(*v8, v5);
  (*(*(*(v2 + 16) - 8) + 56))(v7, 0, 1);
  Promise.resolve(_:)(v7);
  return (*(v3 + 8))(v7, v2);
}

void sub_1DB3C893C(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v8 - v6;
  swift_getErrorValue();
  if (sub_1DB3C8450(v8[1]))
  {
    (*(*(*(v3 + 16) - 8) + 56))(v7, 1, 1);
    Promise.resolve(_:)(v7);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    Promise.reject(_:)(a1);
  }
}

uint64_t sub_1DB3C8A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = v1[2];
  v20[0] = 0;
  v6 = v4;
  v7 = [v5 valueWithError_];
  v8 = v20[0];
  if (v7)
  {
    v20[0] = v7;
    v9 = *(v2 + 3);
    v10 = MEMORY[0x1EEE9AC00](v7);
    v11 = *(v6 + 112);
    v12 = *(v6 + 120);
    v18[2] = v11;
    v18[3] = v12;
    v19 = v10;
    sub_1DB50B120();
    v13 = v8;
    sub_1DB4A2A50(sub_1DB3C9AB8, v18, MEMORY[0x1E69E73E0], v12, v14, a1);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v16 = v20[0];
    sub_1DB509B20();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB3C8C04()
{
  v1 = *(v0 + 32);
}

uint64_t sub_1DB3C8C34()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1DB3C8C74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 BOOLValue];
  *a2 = result;
  return result;
}

id sub_1DB3C8CA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 integerValue];
  *a2 = result;
  return result;
}

id sub_1DB3C8CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1DB3C8D04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB50A650();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB3C8D30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *&v17 = 0;
  sub_1DB50A990();
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52C7F0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  v20[0] = a1;
  sub_1DB301CDC(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1DB301D4C(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1DB30623C(v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x796E415B206F7420;
  v14._object = 0xE90000000000005DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1DB3C8F68@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  *&v17 = 0;
  sub_1DB50A4A0();
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 53, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x80000001DB52C7F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  v20[0] = a1;
  sub_1DB301CDC(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1DB301D4C(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1DB30623C(v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._object = 0x80000001DB52C810;
  v14._countAndFlagsBits = 0xD000000000000016;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  result = sub_1DB313804(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t Bag.Value.current(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - v11 + 16;
  (*(**v3 + 96))(v10);
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v12, 1, v6) != 1)
  {
    return (*(v13 + 32))(a3, v12, v6);
  }

  (*(v8 + 8))(v12, v7);
  if (qword_1ECC422A8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ECC67CA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  v19 = xmmword_1DB50EE90;
  *(v15 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = 0xD00000000000001CLL;
  v20[1] = 0x80000001DB52C760;
  *(v16 + 48) = 0u;
  *(v16 + 32) = 0u;
  sub_1DB301D4C(v20, v16 + 32);
  *(v16 + 64) = 0;
  *(v15 + 32) = v16;
  v20[0] = v14;
  v21 = 0;
  OSLogger.log(contentsOf:withLevel:)(v15, &v21);

  return a1(v17);
}

uint64_t sub_1DB3C9A64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3C9AB8(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

uint64_t sub_1DB3C9AEC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1DB3C881C(a1, v1[3]);
}

uint64_t UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB3C9B30, 0, 0);
}

uint64_t sub_1DB3C9B30()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v12 = objc_opt_self();
    v13 = [objc_opt_self() currentProcess];
    v14 = [v12 userAgentForProcessInfo_];

    v15 = sub_1DB50A650();
    v17 = v16;

    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = v15;
    v0[3] = v17;
    v19 = v1[3];
    v18 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v19);
    (*(v18 + 16))(v0 + 2, 0x6E65674172657375, 0xE900000000000074, v19, v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v20 = v0[1];

  return v20();
}

uint64_t sub_1DB3C9D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t ActionOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3CA020()
{
  result = qword_1ECC44F20;
  if (!qword_1ECC44F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F20);
  }

  return result;
}

uint64_t EventSubscription.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteEventObserverBox();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_1DB3CA328(v9);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t sub_1DB3CA328(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 120) - 8) + 32))(v5 + *(*v5 + 136), a1);
  return v5;
}

uint64_t sub_1DB3CA3BC()
{
  v1 = *(*(*v0 + 128) + 16);
  v2 = *(*v0 + 120);
  v3 = v0 + *(*v0 + 136);
  return v1(v2) & 1;
}

uint64_t sub_1DB3CA434(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, v1 + *(v5 + 136), v2, v4);
  return sub_1DB50A6C0();
}

uint64_t sub_1DB3CA518(uint64_t a1)
{
  v2 = *(*(*v1 + 128) + 24);
  v3 = *(*v1 + 120);
  v4 = v1 + *(*v1 + 136);
  return v2(a1, v3);
}

uint64_t sub_1DB3CA5E4()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 136));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t EventSubscription.description.getter()
{
  v1 = *v0;
  v5 = sub_1DB50BEE0();
  v2 = MEMORY[0x1E1285C70](40, 0xE100000000000000);
  v3 = (*(*v1 + 96))(v2);
  MEMORY[0x1E1285C70](v3);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v5;
}

uint64_t EventSubscription.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3CA7B8()
{
  sub_1DB50BCF0();
  EventSubscription.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3CA82C(uint64_t a1)
{
  v1 = *(a1 + 120);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB3CA8C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Decoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  a4[3] = &type metadata for _Wrapped_Decoder;
  a4[4] = sub_1DB3CAFA4();
  v9 = swift_allocObject();
  *a4 = v9;

  return sub_1DB3CA9D0(v11, a1, (v9 + 16));
}

uint64_t sub_1DB3CA9D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DB50BDE0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = v7;
  sub_1DB3CB254(a2, sub_1DB3CB1A4, 0, isUniquelyReferenced_nonNull_native, &v42);

  v9 = v42;
  sub_1DB30BE90(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    v42 = v37;
    v43 = v38;
    v44 = v39;
    v45 = v40;
    *(&v38 + 1) = &type metadata for _JSONObjectDecoder;
    *&v39 = sub_1DB34A154();
    v10 = swift_allocObject();
    *&v37 = v10;
    sub_1DB3171C0(&v42, v10 + 16);
    v11 = v45;
    *(v10 + 56) = v9;
    *(v10 + 64) = v11;

    sub_1DB34A204(&v42);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    sub_1DB30623C(&v37, &qword_1ECC44ED8, &qword_1DB518618);
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB511620;
    v36 = sub_1DB301BC0(0, 60, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0xD000000000000028;
    v14._object = 0x80000001DB52C8F0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    *(&v38 + 1) = swift_getMetatypeMetadata();
    *&v37 = DynamicType;
    sub_1DB301CDC(&v37, v41);
    v42 = 0u;
    v43 = 0u;
    sub_1DB301D4C(v41, &v42);
    LOBYTE(v44) = 0;
    v16 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v42;
    v21 = v43;
    v19[64] = v44;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    sub_1DB30623C(&v37, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22._object = 0x80000001DB52C920;
    v22._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    v24 = MEMORY[0x1E69E6158];
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD000000000000057;
    *(&v42 + 1) = 0x80000001DB52C940;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v42, v23 + 32);
    *(v23 + 64) = 0;
    *(v13 + 40) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB50EE90;
    *(&v43 + 1) = v24;
    *&v42 = 0xD000000000000026;
    *(&v42 + 1) = 0x80000001DB52C9A0;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1DB301D4C(&v42, v25 + 32);
    *(v25 + 64) = 0;
    *(v13 + 48) = v25;
    v26 = sub_1DB50AF40();
    if (os_log_type_enabled(v12, v26))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v27 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v42 = v13;
      *(&v42 + 1) = sub_1DB31485C;
      *&v43 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v30 = sub_1DB50A5E0();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1DB50EE90;
      *(v33 + 56) = v24;
      *(v33 + 64) = sub_1DB31494C();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1DB50A1E0();
    }

    sub_1DB30BE90(a1, &v37);
  }

  *(&v39 + 1) = v9;
  v34 = v38;
  *a3 = v37;
  a3[1] = v34;
  a3[2] = v39;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3CAFA4()
{
  result = qword_1ECC44F28;
  if (!qword_1ECC44F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F28);
  }

  return result;
}

uint64_t sub_1DB3CB008()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return sub_1DB50BDF0();
}

uint64_t sub_1DB3CB084()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return sub_1DB50BDB0();
}

uint64_t sub_1DB3CB140(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

uint64_t sub_1DB3CB1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44928, &qword_1DB516B70) + 48);
  v6 = sub_1DB50B560();
  (*(*(v6 - 8) + 16))(a2, a1, v6);

  return sub_1DB300B14(a1 + v4, a2 + v5);
}

uint64_t sub_1DB3CB254(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F30, &unk_1DB518DD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v45 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v49 = a1;
  v50 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v51 = v19;
  v52 = 0;
  v53 = v22 & v20;
  v54 = a2;
  v55 = a3;
  v23 = (v10 + 32);
  v46 = (v10 + 8);
  v47 = v10;

  v45[1] = a3;

  while (1)
  {
    sub_1DB3AF284(v17);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44928, &qword_1DB516B70);
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_1DB2FEA60();
    }

    v26 = *(v25 + 48);
    v27 = *v23;
    v28 = v9;
    (*v23)(v13, v17, v9);
    sub_1DB30C200(&v17[v26], v48);
    v29 = *v56;
    v31 = sub_1DB30EDEC(v13);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DB311750();
      }
    }

    else
    {
      v36 = v56;
      sub_1DB319D74(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_1DB30EDEC(v13);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      v9 = v28;
      (*v46)(v13, v28);
      v24 = (v40[7] + 32 * v31);
      __swift_destroy_boxed_opaque_existential_0(v24);
      sub_1DB30C200(v48, v24);
      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v9 = v28;
      v27((v40[6] + *(v47 + 72) * v31), v13, v28);
      sub_1DB30C200(v48, (v40[7] + 32 * v31));
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3CB5C4()
{
  v0 = sub_1DB50A3A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E6977AC0], v0, v3);
  sub_1DB50A3D0();
  return (*(v1 + 8))(v5, v0);
}

void require(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a1() & 1) == 0)
  {

    sub_1DB3D66F0(a5, a6, a7, a8, a3);
  }
}

void sub_1DB3CB74C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000080;
    *(&v41 + 1) = 0x80000001DB52CA30;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000080, 0x80000001DB52CA30, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000080;
      v45 = 0x80000001DB52CA30;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}