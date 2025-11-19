uint64_t sub_1AE1B76EC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x3000000000000004;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7794(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x7000000000000004;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7884(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    *(v12 + 16) = *(v11 + 16);
    a3();

    *v5 = v12;
    v11 = v12;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = *(v11 + 16);
  *(v11 + 16) = v13;

  return a5(v14);
}

uint64_t sub_1AE1B7950(_OWORD *a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE5215C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  v9 = a1[3];
  *(v8 + 48) = a1[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = a1[4];
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = v8 | 0x1000000000000000;
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return sub_1ADE52174(v12);
}

uint64_t sub_1AE1B7A04(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      if (v4 >> 62 == 1)
      {
        v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;

        return sub_1AE1BA510(v5, v6);
      }
    }

    else if (v4 >> 62 == 2)
    {
      return sub_1AE1CDDA8(v3 & 0x3FFFFFFFFFFFFFFFLL, v4 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE1C1AA0) & 1;
    }

    return 0;
  }

  if (v4 >> 62)
  {
    return 0;
  }

  return sub_1AE1BBD2C(v3, v4);
}

uint64_t sub_1AE1B7AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0958();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1AE1B7B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0BF8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1AE1B7B80@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1AE1B7BA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1AE1B7BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0E20();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1AE1B7C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0EC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1AE1B7C6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7958);
  __swift_project_value_buffer(v0, qword_1EB5D7958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AE252440;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "crdt";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "reference";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "references";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "version";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "constants";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "assets";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "versionUuid";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "deltaReferences";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "minVersion";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1B8020(uint64_t *a1)
{
  v8 = 0;
  v3 = *a1 & 0xF000000000000007;
  if (v3 != 0xF000000000000007 && (*a1 & 0xC000000000000000) == 0x4000000000000000)
  {
    v8 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  sub_1AE1CB7C4();
  sub_1AE23C4FC();
  result = v8;
  if (v1)
  {
  }

  if (v8)
  {
    if (v3 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      result = v8;
    }

    v6 = result | 0x4000000000000000;
    v7 = *a1;
    *a1 = v6;
    return sub_1ADE73AC8(v7);
  }

  return result;
}

uint64_t sub_1AE1B8114()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*v0 & 0xF000000000000007) != 0)
  {
    v11 = *v0 >> 62;
    if (v11)
    {
      if (v11 == 1)
      {
        result = sub_1AE1B8458(v0);
        if (v1)
        {
          return result;
        }
      }

      else
      {
        result = sub_1AE1B84E8(v0);
        if (v1)
        {
          return result;
        }
      }
    }

    else
    {
      result = sub_1AE1B83D0(v0);
      if (v1)
      {
        return result;
      }
    }
  }

  result = sub_1AE1B8578(v0);
  if (v1)
  {
    return result;
  }

  sub_1AE1B85F0(v0);
  if (*(v0[4] + 16))
  {
    sub_1AE1CADD8();
    sub_1AE23C65C();
  }

  v8 = v0[5];
  v9 = v0[6];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_22;
    }

    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v12 = v8;
    v13 = v8 >> 32;
  }

  if (v12 != v13)
  {
LABEL_21:
    sub_1AE23C5CC();
  }

LABEL_22:
  if (*(v0[7] + 16))
  {
    sub_1AE1CA5AC();
    sub_1AE23C65C();
  }

  sub_1AE1B8670(v0);
  if (*(v0[3] + 16))
  {
    sub_1AE1CA5AC();
    sub_1AE23C65C();
  }

  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t *sub_1AE1B83D0(uint64_t *result)
{
  if (*result >> 62)
  {
    v1 = 1;
  }

  else
  {
    v1 = (*result & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    sub_1AE1CB668();
    return sub_1AE23C66C();
  }

  return result;
}

void *sub_1AE1B8458(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xC000000000000000) == 0x4000000000000000)
  {
    v2 = *result & 0x3FFFFFFFFFFFFFFFLL;
    sub_1AE1CB7C4();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1AE1B84E8(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xC000000000000000) == 0x8000000000000000)
  {
    v2 = *result & 0x3FFFFFFFFFFFFFFFLL;
    sub_1AE1CA5AC();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B8578(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = *(result + 64);
    v2 = *(result + 72);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1B85F0(uint64_t result)
{
  if (*(result + 96))
  {
    v1 = *(result + 80);
    v2 = *(result + 96);
    v3 = *(result + 104);
    sub_1ADEDC930();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1B8670(uint64_t result)
{
  if (*(result + 112))
  {
    v1 = *(result + 112);
    v2 = *(result + 120);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1B8710(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1B87C4()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1AE1B8114();
}

uint64_t sub_1AE1B8810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1CB9CC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1B8880(uint64_t a1)
{
  v2 = sub_1ADE73BC8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1B88BC()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1B893C()
{
  sub_1ADE73BC8();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1B8988()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1B8A04(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_1AE1B86E8(v13, v14) & 1;
}

uint64_t sub_1AE1B8A78()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7970);
  __swift_project_value_buffer(v0, qword_1EB5D7970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AE254790;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "uint";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "double";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "string";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "data";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sint";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "uuid";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "version";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reference";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "optional";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "timestamp";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "repeatedValue";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "taggedValue";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "asset";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "custom";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "float";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "weakReference";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "strongReference";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1B93F8(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 6)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFBLL;
    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
  }

  sub_1AE1CAF38();
  sub_1AE23C4FC();
  result = v11;
  if (v1)
  {
    return sub_1ADE42CB8(v11);
  }

  if (v11)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 24) = v12;
    v9 = v8 | 0x3000000000000000;
    v10 = *(a1 + 16);
    *(a1 + 16) = v9;
    return sub_1ADE51B48(v10);
  }

  return result;
}

uint64_t sub_1AE1B9538(uint64_t a1)
{
  v10 = 0uLL;
  v11 = 1;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 9)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v11 = 0;
  }

  sub_1AE1CB1F0();
  result = sub_1AE23C4FC();
  if (!v1 && (v11 & 1) == 0)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x4000000000000004;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE51B48(v9);
  }

  return result;
}

uint64_t sub_1AE1B9654(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 10)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1C9D78();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x5000000000000000;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE51B48(v9);
  }

  return result;
}

void sub_1AE1B9778(uint64_t a1)
{
  v2 = a1;
  v13 = 0;
  v14 = 0;
  v15 = 0xF000000000000000;
  v16 = 0;
  v3 = *(a1 + 16);
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 12)
  {

    sub_1AE1D00A0(0, 0, 0xF000000000000000, 0, 0);
    v12 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v18 = v2;
    v7 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v8 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    sub_1ADDD86D8(v5, v6);
    sub_1ADDD86D8(v7, v8);
    sub_1ADE51B48(v3);
    v13 = v12;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v2 = v18;
    v17 = v8;
  }

  sub_1AE1CADD8();
  sub_1AE23C4FC();
  if (v1 || v15 >> 60 == 15)
  {
    sub_1AE1D00A0(v13, v14, v15, v16, v17);
  }

  else
  {
    sub_1ADDD86D8(v14, v15);
    sub_1ADDD86D8(v16, v17);
    if ((v3 & 0xF000000000000007) != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    sub_1AE1D00A0(v13, v14, v15, v16, v17);
    v9 = swift_allocObject();
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 32) = v15;
    *(v9 + 40) = v16;
    *(v9 + 48) = v17;
    v10 = v9 | 0x6000000000000000;
    v11 = *(v2 + 16);
    *(v2 + 16) = v10;
    sub_1ADE51B48(v11);
  }
}

uint64_t sub_1AE1B9BBC(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
    {
      case 1uLL:
        result = sub_1AE1B9CE8(result);
        break;
      case 2uLL:
        result = sub_1AE1B9D4C(result);
        break;
      case 3uLL:
        result = sub_1AE1B9DA8(result);
        break;
      case 4uLL:
        result = sub_1AE1B9E54(result);
        break;
      case 5uLL:
        result = sub_1AE1B9EB0(result);
        break;
      case 6uLL:
        result = sub_1AE1B9F0C(result);
        break;
      case 7uLL:
        result = sub_1AE1B9FA8(result);
        break;
      case 8uLL:
        result = sub_1AE1BA044(result);
        break;
      case 9uLL:
        result = sub_1AE1BA0E0(result);
        break;
      case 0xAuLL:
        result = sub_1AE1BA17C(result);
        break;
      case 0xBuLL:
        result = sub_1AE1BA218(result);
        break;
      case 0xCuLL:
        result = sub_1AE1BA2B4(result);
        break;
      case 0xDuLL:
        result = sub_1AE1BA358(result);
        break;
      case 0xEuLL:
        result = sub_1AE1BA3F4(result);
        break;
      case 0xFuLL:
        result = sub_1AE1BA458(result);
        break;
      case 0x10uLL:
        result = sub_1AE1BA4B4(result);
        break;
      default:
        result = sub_1AE1B9C94(result);
        break;
    }
  }

  return result;
}

uint64_t sub_1AE1B9C94(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 0)
  {
    v3 = *(v1 + 16);
    return sub_1AE23C64C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9CE8(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 1)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C60C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9D4C(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 2)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C64C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9DA8(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 3)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFBLL;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    sub_1ADDD86D8(v4, v5);
    sub_1AE23C5CC();
    return sub_1ADDCC35C(v4, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9E54(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 4)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C61C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9EB0(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 5)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C64C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9F0C(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 6)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B9FA8(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 7)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CA5AC();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA044(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 8)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CA450();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA0E0(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 9)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CB1F0();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA17C(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 10)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1C9D78();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA218(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 11)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CA2F4();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA2B4(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 12)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFBLL;
    v4 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    sub_1AE1CADD8();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA358(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 13)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1AE1CA198();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA3F4(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 14)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C5DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA458(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 15)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C64C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BA4B4(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && ((v1 >> 59) & 0x1E | (v1 >> 2) & 1) == 16)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    return sub_1AE23C64C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1AE1BA588(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BA674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D004C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BA6E4(uint64_t a1)
{
  v2 = sub_1AE1CB7C4();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BA720()
{
  sub_1AE1CB7C4();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BA7CC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7988);
  __swift_project_value_buffer(v0, qword_1EB5D7988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AE252440;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "register";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "set";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dictionary";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "composite";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sequence";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "array";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "counter";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "orderedSet";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "customCRDT";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BAB80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *v6;
    a4(0);
    v17 = swift_allocObject();
    *(v17 + 16) = *(v16 + 16);
    a5();

    *v6 = v17;
    v15 = v17;
  }

  return a6(v15, a1, a2, a3);
}

uint64_t sub_1AE1BAC3C(uint64_t a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v3 = *(a1 + 16);
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x1000000000000000)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v16 = 0uLL;

    sub_1ADDCEDE0(&v16, &qword_1EB5BCC30, &qword_1AE2580D0);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v24 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v25 = v7;
    v22 = v5;
    v23 = v6;
    v21 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1ADFAEE10(&v21, &v15);
    sub_1ADE52174(v3);
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v26 = v21;
    v27 = v22;
  }

  sub_1AE1CA9C0();
  result = sub_1AE23C4FC();
  if (v1)
  {
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    return sub_1ADDCEDE0(&v21, &qword_1EB5BCC30, &qword_1AE2580D0);
  }

  else
  {
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v9 = v26;
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    if (*(&v26 + 1))
    {
      if ((v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = v17;
      *(v10 + 32) = v16;
      *(v10 + 48) = v11;
      v12 = v19;
      *(v10 + 64) = v18;
      *(v10 + 80) = v12;
      v13 = v10 | 0x1000000000000000;
      v14 = *(a1 + 16);
      *(a1 + 16) = v13;
      return sub_1ADE52174(v14);
    }
  }

  return result;
}

uint64_t sub_1AE1BAE20(uint64_t a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v3 = *(a1 + 16);
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x2000000000000000)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v16 = 0uLL;

    sub_1ADDCEDE0(&v16, &qword_1EB5BCC30, &qword_1AE2580D0);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v24 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v25 = v7;
    v22 = v5;
    v23 = v6;
    v21 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1ADFAEE10(&v21, &v15);
    sub_1ADE52174(v3);
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v26 = v21;
    v27 = v22;
  }

  sub_1AE1CA9C0();
  result = sub_1AE23C4FC();
  if (v1)
  {
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    return sub_1ADDCEDE0(&v21, &qword_1EB5BCC30, &qword_1AE2580D0);
  }

  else
  {
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v9 = v26;
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    if (*(&v26 + 1))
    {
      if ((v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = v17;
      *(v10 + 32) = v16;
      *(v10 + 48) = v11;
      v12 = v19;
      *(v10 + 64) = v18;
      *(v10 + 80) = v12;
      v13 = v10 | 0x2000000000000000;
      v14 = *(a1 + 16);
      *(a1 + 16) = v13;
      return sub_1ADE52174(v14);
    }
  }

  return result;
}

uint64_t sub_1AE1BB004(uint64_t a1)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(a1 + 16);
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x5000000000000000)
  {
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;

    sub_1ADDCEDE0(&v18, &qword_1EB5BCC28, &unk_1AE251820);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v30 = v9;
    v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v27 = v7;
    v28 = v8;
    v25 = v5;
    v26 = v6;
    sub_1ADE51B64(&v25, v17);
    sub_1ADE52174(v3);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = v28;
  }

  sub_1AE1C9AC0();
  result = sub_1AE23C4FC();
  if (v1)
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    return sub_1ADDCEDE0(&v25, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v31 = v38;
    v11 = v32;
    v18 = v33;
    v19 = v34;
    *&v23 = v38;
    v21 = v36;
    v22 = v37;
    v20 = v35;
    if (*(&v32 + 1))
    {
      if ((v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = v21;
      *(v12 + 64) = v20;
      *(v12 + 80) = v13;
      *(v12 + 96) = v22;
      *(v12 + 112) = v23;
      v14 = v19;
      *(v12 + 32) = v18;
      *(v12 + 48) = v14;
      v15 = v12 | 0x5000000000000000;
      v16 = *(a1 + 16);
      *(a1 + 16) = v15;
      return sub_1ADE52174(v16);
    }
  }

  return result;
}

uint64_t sub_1AE1BB240(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x6000000000000000)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1C9C1C();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x6000000000000000;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE52174(v9);
  }

  return result;
}

uint64_t sub_1AE1BB358(uint64_t a1)
{
  v12 = xmmword_1AE2547A0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x7000000000000000)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 40);
    v12 = *(v6 + 16);
    v13 = *(v6 + 32);
    v14 = v7;
    v15 = *(v6 + 48);
    sub_1ADE42C78(*(&v12 + 1));
    sub_1ADE42C78(v7);
  }

  sub_1AE1CAB1C();
  sub_1AE23C4FC();
  result = v12;
  if (v1)
  {
    return sub_1AE1D01D8(v12, *(&v12 + 1), v13, v14);
  }

  if (*(&v12 + 1) != 1)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    *(v9 + 32) = v13;
    *(v9 + 40) = v14;
    *(v9 + 48) = v15;
    v10 = v9 | 0x7000000000000000;
    v11 = *(a1 + 16);
    *(a1 + 16) = v10;
    return sub_1ADE52174(v11);
  }

  return result;
}

uint64_t sub_1AE1BB4EC(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x9000000000000000)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1CA038();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x9000000000000000;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE52174(v9);
  }

  return result;
}

uint64_t sub_1AE1BB608(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v2 = v1 >> 60;
    if (v2 > 4)
    {
      if (v2 <= 6)
      {
        if (v2 == 5)
        {
          return sub_1AE1BBA10(result);
        }

        else
        {
          return sub_1AE1BBAD4(result);
        }
      }

      else if (v2 == 7)
      {
        return sub_1AE1BBB68(result);
      }

      else if (v2 == 8)
      {
        return sub_1AE1BBC04(result);
      }

      else
      {
        return sub_1AE1BBC98(result);
      }
    }

    else if (v2 <= 1)
    {
      if (v2)
      {
        return sub_1AE1BB750(result);
      }

      else
      {
        return sub_1AE1BB6C4(result);
      }
    }

    else if (v2 == 2)
    {
      return sub_1AE1BB800(result);
    }

    else if (v2 == 3)
    {
      return sub_1AE1BB8B0(result);
    }

    else
    {
      return sub_1AE1BB94C(result);
    }
  }

  return result;
}

uint64_t sub_1AE1BB6C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60)
  {
    v2 = 1;
  }

  else
  {
    v2 = (v1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    sub_1AE1CAC7C();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BB750(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x1000000000000000)
  {
    v3 = (v1 & 0xFFFFFFFFFFFFFFFLL);
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    v4 = v3[1];
    v5 = v3[2];
    sub_1AE1CA9C0();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB800(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x2000000000000000)
  {
    v3 = (v1 & 0xFFFFFFFFFFFFFFFLL);
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    v4 = v3[1];
    v5 = v3[2];
    sub_1AE1CA9C0();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB8B0(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x3000000000000000)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 16);
    v5 = *(v3 + 32);
    sub_1AE1CA708();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BB94C(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x4000000000000000)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFFLL;
    v8 = *(v3 + 80);
    v9 = *(v3 + 96);
    v10 = *(v3 + 112);
    v4 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    sub_1AE1C9AC0();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBA10(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x5000000000000000)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFFLL;
    v8 = *(v3 + 80);
    v9 = *(v3 + 96);
    v10 = *(v3 + 112);
    v4 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    sub_1AE1C9AC0();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBAD4(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x6000000000000000)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AE1C9C1C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBB68(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x7000000000000000)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    sub_1AE1CAB1C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBC04(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AE1C9C1C();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1BBC98(uint64_t result)
{
  v1 = *(result + 16);
  if ((~v1 & 0xF000000000000007) != 0 && (v1 & 0xF000000000000000) == 0x9000000000000000)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AE1CA038();
    return sub_1AE23C66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1AE1BBDA0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADE9BCF4;
}

uint64_t sub_1AE1BBE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0138();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BBEFC(uint64_t a1)
{
  v2 = sub_1AE1CB668();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BBF38()
{
  sub_1AE1CB668();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BBFE4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79A0);
  __swift_project_value_buffer(v0, qword_1EB5D79A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE252430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "constants";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "referenceKeys";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "referenceRetainCounts";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "assetDigests";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetRetainCounts";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "subcapsuleKeys";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "subcapsuleRetainCounts";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BC2EC()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1ADEDC930();
            sub_1AE23C4FC();
            break;
          case 2:
LABEL_20:
            sub_1ADEDC8DC();
            sub_1AE23C4EC();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          goto LABEL_20;
        }

        if (result == 7)
        {
LABEL_4:
          sub_1AE23C3EC();
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_4;
        }

        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1BC45C()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1BC6C0(v0);
  if (v1)
  {
    return result;
  }

  if (*(*v0 + 16))
  {
    sub_1ADEDC8DC();
    sub_1AE23C65C();
  }

  if (*(v0[1] + 16))
  {
    sub_1AE23C56C();
  }

  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
LABEL_14:
    sub_1AE23C5CC();
  }

LABEL_15:
  if (*(v0[4] + 16))
  {
    sub_1AE23C56C();
  }

  if (*(v0[5] + 16))
  {
    sub_1ADEDC8DC();
    sub_1AE23C65C();
  }

  if (*(v0[6] + 16))
  {
    sub_1AE23C56C();
  }

  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1AE1BC6C0(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = *(result + 56);
    v2 = *(result + 72);
    v3 = *(result + 80);
    sub_1ADEDC930();
    return sub_1AE23C66C();
  }

  return result;
}

double sub_1AE1BC740@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1AE241910;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void (*sub_1AE1BC78C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BC858()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return sub_1AE1BC45C();
}

uint64_t sub_1AE1BC8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0220();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BC914(uint64_t a1)
{
  v2 = sub_1ADE73D18();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BC950()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BC9CC()
{
  sub_1ADE73D18();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BCA18()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BCA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AE1CBE0C(v7, v9) & 1;
}

uint64_t sub_1AE1BCAFC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79B8);
  __swift_project_value_buffer(v0, qword_1EB5D79B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strings";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "datas";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BCD10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = sub_1AE23C32C();
  v18 = *(v9 - 8);
  v10 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = a2;
    v15 = a2 >> 32;
LABEL_8:
    if (v14 == v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1AE23C5CC();
    if (v5)
    {
      return result;
    }

LABEL_10:
    if (!*(a4 + 16))
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_1AE23C5FC();
    if (v5)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v13 == 2)
  {
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    goto LABEL_8;
  }

  if (*(a4 + 16))
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!*(v19 + 16) || (result = sub_1AE23C5BC(), !v5))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v18 + 8))(v12, v9);
  }

  return result;
}

double sub_1AE1BCEE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  return result;
}

void (*sub_1AE1BCF28(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BD004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0274();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BD074(uint64_t a1)
{
  v2 = sub_1ADEDC930();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BD0B0()
{
  sub_1ADEDC930();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BD114()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79D0);
  __swift_project_value_buffer(v0, qword_1EB5D79D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BD2DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1AE23C32C();
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (sub_1AE1CB7C4(), result = sub_1AE23C65C(), !v4))
  {
    v13 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_12;
      }

      v14 = *(a3 + 16);
      v15 = *(a3 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1AE23C5CC();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v14 = a3;
      v15 = a3 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_11;
    }

LABEL_12:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v17 + 8))(v11, v8);
  }

  return result;
}

void (*sub_1AE1BD4B0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BD58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D02C8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BD5FC(uint64_t a1)
{
  v2 = sub_1ADEDC8DC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BD638()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BD6A4()
{
  sub_1ADEDC8DC();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BD6F0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BD770()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79E8);
  __swift_project_value_buffer(v0, qword_1EB5D79E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    result = sub_1AE23C64C();
    if (v3)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1AE23C5EC();
    if (v3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v7 + 8))(v10, v6);
}

void (*sub_1AE1BDAB8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BDB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D031C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BDC00(uint64_t a1)
{
  v2 = sub_1AE1CB1F0();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BDC3C()
{
  sub_1AE1CB1F0();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BDCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C56C(), !v2))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void (*sub_1AE1BDE00(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BDED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0370();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BDF48(uint64_t a1)
{
  v2 = sub_1AE1CB094();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BDF84()
{
  sub_1AE1CB094();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BDFE8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A18);
  __swift_project_value_buffer(v0, qword_1EB5D7A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indexSets";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

void (*sub_1AE1BE204(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BE2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D03C4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BE368(uint64_t a1)
{
  v2 = sub_1AE1CAF38();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BE3A4()
{
  sub_1AE1CAF38();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BE404()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A30);
  __swift_project_value_buffer(v0, qword_1EB5D7A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "digest";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BE618()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1AE23C40C();
    }

    else if (result == 1)
    {
      sub_1AE23C4DC();
    }
  }

  return result;
}

uint64_t sub_1AE1BE6B8()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (result = sub_1AE23C64C(), !v1))
  {
    v8 = v0[1];
    v9 = v0[2];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_12;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 == v12)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_1AE23C5CC();
    if (v1)
    {
      return result;
    }

LABEL_12:
    v13 = v0[3];
    v14 = v0[4];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_21;
      }

      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
    }

    else
    {
      if (!v15)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = sub_1AE23C5CC();
        if (v1)
        {
          return result;
        }

        goto LABEL_21;
      }

      v16 = v13;
      v17 = v13 >> 32;
    }

    if (v16 != v17)
    {
      goto LABEL_20;
    }

LABEL_21:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

double sub_1AE1BE890@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = -2.0;
  *(a1 + 16) = xmmword_1AE2547B0;
  *(a1 + 32) = 0xC000000000000000;
  return result;
}

void (*sub_1AE1BE8CC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BE9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0418();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BEA20(uint64_t a1)
{
  v2 = sub_1AE1CADD8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BEA5C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BEAC8()
{
  sub_1AE1CADD8();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BEB14()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BEB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CF778(v5, v7) & 1;
}

uint64_t sub_1AE1BEBC8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A48);
  __swift_project_value_buffer(v0, qword_1EB5D7A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "crdt";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partialCRDT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BEE18()
{
  swift_beginAccess();
  sub_1AE1CB668();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1BEEAC(uint64_t a1)
{
  result = sub_1AE1BEF2C(a1);
  if (!v1)
  {
    sub_1AE1BEFC8(a1);
    sub_1AE1BF060(a1);
    return sub_1AE1C1938(a1);
  }

  return result;
}

uint64_t sub_1AE1BEF2C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = *(a1 + 16);
    sub_1AE1CB1F0();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BEFC8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
    sub_1AE1CB7C4();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BF060(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 48);
    sub_1AE1CB668();
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1AE1BF0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10];
  swift_beginAccess();
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  swift_beginAccess();
  v15 = *(a2 + 32);
  if (v14)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    swift_beginAccess();
    v19 = *(a1 + 40);
    swift_beginAccess();
    v20 = *(a2 + 40);
    if (v19)
    {
      if (!v20)
      {
        goto LABEL_22;
      }

      v21 = *(a2 + 40);

      v23 = sub_1AE1CF8DC(v22, v20, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v20)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v24 = *(a1 + 48);
    swift_beginAccess();
    v25 = *(a2 + 48);
    if (v24)
    {
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = *(a2 + 48);

      v28 = sub_1AE1CF8DC(v27, v25, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v25)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v29 = *(a1 + 56);
    swift_beginAccess();
    v30 = *(a2 + 56);
    if (!v29)
    {
      v34 = *(a2 + 56);

      if (v30)
      {
        goto LABEL_23;
      }

      return 1;
    }

    if (v30)
    {
      v31 = *(a2 + 56);

      v33 = sub_1AE1CF8DC(v32, v30, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

      return (v33 & 1) != 0;
    }

LABEL_22:

LABEL_23:

    return 0;
  }

  result = 0;
  if ((*(a2 + 32) & 1) == 0 && v13 == *(a2 + 16) && v12 == *(a2 + 24))
  {

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v17 = sub_1AE23CCBC();
    v18 = *(v5 + 8);
    v18(v8, v4);
    v18(v11, v4);
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  return result;
}

void (*sub_1AE1BF52C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BF618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D046C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BF688(uint64_t a1)
{
  v2 = sub_1AE1CAC7C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BF6C4()
{
  sub_1AE1CAC7C();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BF748()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A60);
  __swift_project_value_buffer(v0, qword_1EB5D7A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negative";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BF958()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1AE1CAF38();
        sub_1AE23C4FC();
      }

      else if (result == 1)
      {
        sub_1AE23C4DC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1BFA38()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (result = sub_1AE23C64C(), !v1))
  {
    v8 = v0[2];
    result = sub_1AE1D0830(v0[1]);
    if (!v1)
    {
      v9 = v0[4];
      sub_1AE1D0830(v0[3]);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void (*sub_1AE1BFBC4(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BFCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D04C0();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1BFD18(uint64_t a1)
{
  v2 = sub_1AE1CAB1C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1BFD54()
{
  sub_1AE1CAB1C();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BFDA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CE254(v5, v7) & 1;
}

uint64_t sub_1AE1BFDEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A78);
  __swift_project_value_buffer(v0, qword_1EB5D7A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AE252420;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1AE23C67C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "version";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "insertions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "minVersion";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "removed";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C00AC()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (result = sub_1AE23C64C(), !v1))
  {
    result = sub_1AE1C02A8(v0);
    if (!v1)
    {
      sub_1AE1C0320(v0);
      if (*(v0[1] + 16))
      {
        sub_1AE1CA864();
        sub_1AE23C65C();
      }

      sub_1AE1B8578(v0);
      if (*(v0[2] + 16))
      {
        sub_1AE1CA864();
        sub_1AE23C65C();
      }

      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_1AE1C02A8(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    v2 = *(result + 32);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C0320(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    v1 = *(result + 40);
    sub_1AE1CB1F0();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C03B8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C046C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_1AE1C00AC();
}

uint64_t sub_1AE1C04B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0788();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C0520(uint64_t a1)
{
  v2 = sub_1AE1CA9C0();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C055C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C05D0()
{
  sub_1AE1CA9C0();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C061C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C068C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1AE1C0398(v8, v9) & 1;
}

uint64_t sub_1AE1C06E8()
{
  result = MEMORY[0x1B26FB670](0x746E656D656C452ELL, 0xE800000000000000);
  qword_1EB5D7A90 = 0x65532E6F746F7250;
  *algn_1EB5D7A98 = 0xE900000000000074;
  return result;
}

uint64_t sub_1AE1C0754()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AA0);
  __swift_project_value_buffer(v0, qword_1EB5D7AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedBy";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partialValue";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1D0D48(*v3, a1, a2, a3, sub_1AE1CB7C4);
  if (!v4)
  {
    sub_1AE1D0D48(v3[1], a1, a2, a3, sub_1AE1CB668);
    v14 = v3[3];
    sub_1AE1D0830(v3[2]);
    sub_1AE1D0D48(v3[4], a1, a2, a3, sub_1AE1CB668);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

void (*sub_1AE1C0B94(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C0C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D07DC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C0CD0(uint64_t a1)
{
  v2 = sub_1AE1CA864();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C0D0C()
{
  sub_1AE1CA864();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C0D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CBA20(v5, v7) & 1;
}

uint64_t sub_1AE1C0DA4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AB8);
  __swift_project_value_buffer(v0, qword_1EB5D7AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keys";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "intKeys";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1AE23C32C();
  v16 = *(v9 - 8);
  v10 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    result = sub_1AE23C58C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(a3 + 16))
  {
    sub_1AE1CB668();
    v14 = v5;
    result = sub_1AE23C65C();
    if (v5)
    {
      return result;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1AE23C58C();
    if (v14)
    {
      return result;
    }

    goto LABEL_10;
  }

  v14 = v5;
  if (*(a4 + 16))
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v16 + 8))(v12, v9);
}

void (*sub_1AE1C1180(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C125C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D08B0();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C12CC(uint64_t a1)
{
  v2 = sub_1AE1CA708();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C1308()
{
  sub_1AE1CA708();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C1390()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AD0);
  __swift_project_value_buffer(v0, qword_1EB5D7AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "version";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "crdt";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "keyPath";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C1620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = swift_beginAccess();
  a5(v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C16C4()
{
  swift_beginAccess();
  sub_1AE1CB668();
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C1758(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    result = sub_1AE23C64C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    sub_1AE1D0958();
    v5 = v2;
    result = sub_1AE23C5AC();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v5 = v2;
  }

  result = sub_1AE1C1878(a1);
  if (!v5)
  {
    sub_1AE1C1938(a1);
    return sub_1AE1C19D0(a1);
  }

  return result;
}

uint64_t sub_1AE1C1878(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    sub_1AE1CAF38();

    sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C1938(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    v3 = *(a1 + 56);
    sub_1AE1CB668();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C19D0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    sub_1ADEDC8DC();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C1AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  swift_beginAccess();
  v15 = *(a2 + 24);
  v16 = v13 != 0;
  if (!v14)
  {
    v16 = v13;
  }

  if (*(a2 + 32) == 1)
  {
    if (v15)
    {
      if (v16 != 1)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }
  }

  else if (v16 != v15)
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 40);
  v17 = *(a1 + 48);
  swift_beginAccess();
  v20 = *(a2 + 40);
  if (v18)
  {
    if (v20)
    {
      v21 = *(a2 + 48);
      if (sub_1ADE522B8(v18, *(a2 + 40), v19))
      {

        sub_1ADE42C78(v20);
        sub_1ADE42C78(v18);
        sub_1ADE4E544(v17, v21);
        if (v22)
        {
          sub_1AE23C31C();
          sub_1AE23C31C();
          sub_1ADE51EAC();
          LODWORD(v67) = sub_1AE23CCBC();

          sub_1ADE42CB8(v18);
          v23 = *(v5 + 8);
          v23(v8, v4);
          v23(v11, v4);
          if ((v67 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_19:
          swift_beginAccess();
          v24 = *(a1 + 56);
          swift_beginAccess();
          v25 = *(a2 + 56);
          if (v24)
          {
            if (!v25)
            {
              goto LABEL_32;
            }

            v26 = *(a2 + 56);

            v28 = sub_1AE1CF8DC(v27, v25, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

            if ((v28 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (v25)
          {
LABEL_32:

            return 0;
          }

          swift_beginAccess();
          v29 = *(a1 + 64);
          v66 = *(a1 + 72);
          v30 = *(a1 + 80);
          swift_beginAccess();
          v32 = *(a2 + 64);
          v31 = *(a2 + 72);
          v33 = *(a2 + 80);
          v67 = v29;
          if (v29)
          {
            v64 = v31;
            v63 = v33;
            v34 = v66;
            if (v32)
            {
              v35 = v32;
              v65 = v30;
              sub_1ADE56F74(v67, v66, v30);
              v36 = v32;
              v37 = v64;
              v38 = v63;
              sub_1ADE56F74(v36, v64, v63);
              sub_1ADE56F74(v67, v34, v65);
              v39 = v38;
              sub_1ADE56F74(v35, v37, v38);
              v62 = v35;
              sub_1ADE49D64(v67, v35);
              if ((v40 & 1) == 0 || (sub_1ADDD6F8C(v66, v65, v37, v38) & 1) == 0)
              {
                v56 = v62;
                sub_1ADE73D6C(v62, v37, v38);

                sub_1ADE73D6C(v56, v37, v38);
                v57 = v67;
                v58 = v66;
                v59 = v65;
                sub_1ADE73D6C(v67, v66, v65);
                v51 = v57;
                v50 = v58;
                v49 = v59;
                goto LABEL_38;
              }

              sub_1AE23C31C();
              sub_1AE23C31C();
              sub_1ADE51EAC();
              v41 = sub_1AE23CCBC();
              v42 = v62;
              sub_1ADE73D6C(v62, v37, v39);

              sub_1ADE73D6C(v42, v37, v39);
              v43 = v67;
              v44 = v66;
              v45 = v65;
              sub_1ADE73D6C(v67, v66, v65);
              v46 = *(v5 + 8);
              v46(v8, v4);
              v47 = v4;
              v48 = v43;
              v46(v11, v47);
              v49 = v45;
              v50 = v44;
              if ((v41 & 1) == 0)
              {
                v51 = v43;
LABEL_38:
                sub_1ADE73D6C(v51, v50, v49);
                return 0;
              }

LABEL_34:
              sub_1ADE73D6C(v48, v50, v49);
              return 1;
            }

            v48 = v67;
            v60 = v66;
            sub_1ADE56F74(v67, v66, v30);
            v31 = v64;
            v54 = v63;
            sub_1ADE56F74(0, v64, v63);

            v49 = v30;
            v50 = v60;
          }

          else
          {
            v52 = v66;
            v53 = v33;
            sub_1ADE56F74(0, v66, v30);
            v54 = v53;
            sub_1ADE56F74(v32, v31, v53);

            v49 = v30;
            v50 = v52;
            v48 = v67;
            if (!v32)
            {
              goto LABEL_34;
            }
          }

          sub_1ADE73D6C(v48, v50, v49);
          v51 = v32;
          v50 = v31;
          v49 = v54;
          goto LABEL_38;
        }
      }

      else
      {
        sub_1ADE42C78(v20);
        sub_1ADE42C78(v18);
      }

      sub_1ADE42CB8(v18);
    }
  }

  else if (!v20)
  {

    goto LABEL_19;
  }

  return 0;
}

void (*sub_1AE1C21B0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C229C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0904();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C230C(uint64_t a1)
{
  v2 = sub_1AE1CA5AC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C2348()
{
  sub_1AE1CA5AC();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C23A0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AE8);
  __swift_project_value_buffer(v0, qword_1EB5D7AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "shared";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "weak";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C25A8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
    sub_1AE1CB7C4();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C2664(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C2750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D09AC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C27C0(uint64_t a1)
{
  v2 = sub_1AE1CA450();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C27FC()
{
  sub_1AE1CA450();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C2854()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B18);
  __swift_project_value_buffer(v0, qword_1EB5D7B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C2A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_beginAccess();
  v14 = a5(v13);
  a7(a2 + 24, a6, v14, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AE1C2AC8(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return sub_1AE1C2B60(a1);
  }

  result = sub_1AE23C5EC();
  if (!v1)
  {
    return sub_1AE1C2B60(a1);
  }

  return result;
}

uint64_t sub_1AE1C2B60(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
    sub_1AE1CB7C4();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C2C14(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C2D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0A00();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C2D70(uint64_t a1)
{
  v2 = sub_1AE1CA2F4();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C2DAC()
{
  sub_1AE1CA2F4();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C2E04()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B30);
  __swift_project_value_buffer(v0, qword_1EB5D7B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__n128), uint64_t a7)
{
  v19 = a7;
  v18 = a6;
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C58C(), !v7))
  {
    if (!*(a3 + 16) || (v18(v13), result = sub_1AE23C65C(), !v7))
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v11 + 8))(v15, v10);
    }
  }

  return result;
}

void (*sub_1AE1C3168(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C325C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0A54();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C32CC(uint64_t a1)
{
  v2 = sub_1AE1CA198();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C3308()
{
  sub_1AE1CA198();

  return sub_1AE23C54C();
}

void (*sub_1AE1C33CC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C34F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0AA8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C3564(uint64_t a1)
{
  v2 = sub_1AE1CA038();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C35A0()
{
  sub_1AE1CA038();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C3604()
{
  result = MEMORY[0x1B26FB670](0x676E696C6269532ELL, 0xE800000000000000);
  qword_1EB5D7B60 = 0xD000000000000010;
  *algn_1EB5D7B68 = 0x80000001AE263A70;
  return result;
}

uint64_t sub_1AE1C3670()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B70);
  __swift_project_value_buffer(v0, qword_1EB5D7B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C3838()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1CAF38();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1C38F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23C32C();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v22;
  result = sub_1AE1C3AA0(a2, a3, a4);
  if (!v11)
  {
    v13 = a2;
    v14 = v21;
    v15 = a3 >> 62;
    v16 = a3;
    if ((a3 >> 62) > 1)
    {
      v17 = v10;
      if (v15 != 2)
      {
        goto LABEL_11;
      }

      v18 = *(v13 + 16);
      v19 = *(v13 + 24);
    }

    else
    {
      v17 = v10;
      if (!v15)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v18 = v13;
      v19 = v13 >> 32;
    }

    if (v18 != v19)
    {
LABEL_10:
      sub_1AE23C5CC();
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v14 + 8))(v17, v7);
  }

  return result;
}

uint64_t sub_1AE1C3AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C3B38(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C3C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0AFC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C3C9C(uint64_t a1)
{
  v2 = sub_1AE1C9ED8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C3CD8()
{
  sub_1AE1C9ED8();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C3D7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AE2418F0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1AE23C67C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C3EF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

uint64_t sub_1AE1C3F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double), uint64_t a6)
{
  v16[1] = a6;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (a5(v12), result = sub_1AE23C65C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

void (*sub_1AE1C40F8(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C4220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0B50();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C4290(uint64_t a1)
{
  v2 = sub_1AE1C9D78();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C42CC()
{
  sub_1AE1C9D78();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C4330(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, double))
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  if (a5(*a1, *a2, v14))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v17 = sub_1AE23CCBC();
    v18 = *(v9 + 8);
    v18(v12, v8);
    v18(v16, v8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1AE1C4484()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BA0);
  __swift_project_value_buffer(v0, qword_1EB5D7BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "set";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequence";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamps";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C46F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AE1C47CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 8))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE1C48D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1AE1C491C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE1C4970(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1AE1C49CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1C4A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AE1C4AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1AE1C4B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1AE1C4BEC()
{
  result = qword_1EB5B92B8;
  if (!qword_1EB5B92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92B8);
  }

  return result;
}

unint64_t sub_1AE1C4C74()
{
  result = qword_1EB5B92C0;
  if (!qword_1EB5B92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92C0);
  }

  return result;
}

unint64_t sub_1AE1C4CCC()
{
  result = qword_1EB5B92B0;
  if (!qword_1EB5B92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92B0);
  }

  return result;
}

unint64_t sub_1AE1C4D24()
{
  result = qword_1EB5B91E8;
  if (!qword_1EB5B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91E8);
  }

  return result;
}

unint64_t sub_1AE1C4DAC()
{
  result = qword_1EB5B91F0;
  if (!qword_1EB5B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91F0);
  }

  return result;
}

unint64_t sub_1AE1C4E04()
{
  result = qword_1EB5B91E0;
  if (!qword_1EB5B91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91E0);
  }

  return result;
}

uint64_t sub_1AE1C4E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *v3;
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v12 = sub_1AE1D0514(v11);

    *v4 = v12;
    v10 = v12;
  }

  return sub_1ADDE6740(v10, a1, a2, a3);
}

uint64_t sub_1AE1C4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = swift_beginAccess();
  a5(v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C4FA4()
{
  swift_beginAccess();
  sub_1AE1D0BF8();
  sub_1AE23C3CC();
  return swift_endAccess();
}

uint64_t sub_1AE1C5038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a2, a1, a3, a4, v14);
  if (!v5)
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_1AE1C516C(uint64_t a1)
{
  result = sub_1AE1C5298(a1);
  if (!v1)
  {
    sub_1AE1C534C(a1);
    swift_beginAccess();
    if (*(*(a1 + 200) + 16))
    {
      sub_1AE1CB1F0();

      sub_1AE23C65C();
    }

    result = swift_beginAccess();
    if (*(a1 + 208))
    {
      v4 = *(a1 + 208);
      v5 = *(a1 + 216);
      sub_1AE1D0BF8();
      return sub_1AE23C5AC();
    }
  }

  return result;
}

uint64_t sub_1AE1C5298(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    sub_1AE1CA9C0();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C534C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 104))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 104);
    v7 = *(a1 + 144);
    v8 = *(a1 + 160);
    v9 = *(a1 + 176);
    v10 = *(a1 + 192);
    v5 = *(a1 + 112);
    v6 = *(a1 + 128);
    sub_1AE1C9AC0();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C5408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  v104 = *(a1 + 48);
  v105 = v4;
  v106 = *(a1 + 80);
  v5 = *(a1 + 32);
  v102 = *(a1 + 16);
  v103 = v5;
  swift_beginAccess();
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  v108 = *(a2 + 48);
  v109 = v7;
  v8 = *(a2 + 64);
  v110 = *(a2 + 80);
  v9 = *(a2 + 32);
  v107[0] = *(a2 + 16);
  v107[1] = v9;
  v10 = v102;
  v80 = v103;
  v81 = v104;
  v82 = v105;
  v83 = v106;
  v11 = v107[0];
  v12 = *(a2 + 80);
  v53 = v8;
  v54 = v12;
  v51 = v6;
  v52 = v108;
  if (*(&v102 + 1))
  {
    if (*(&v107[0] + 1))
    {
      v93 = v107[0];
      v13 = *(a2 + 48);
      v94 = *(a2 + 32);
      v95 = v13;
      v14 = *(a2 + 80);
      v96 = *(a2 + 64);
      v97 = v14;
      v101[4] = v14;
      v101[3] = v96;
      v101[2] = v13;
      v101[1] = v94;
      v101[0] = v107[0];
      v100[4] = v106;
      v100[3] = v105;
      v100[2] = v104;
      v100[1] = v103;
      v100[0] = v102;
      sub_1ADDCEE40(&v102, v87, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(v107, v87, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(&v102, v87, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(v107, v87, &qword_1EB5BCC30, &qword_1AE2580D0);

      v15 = sub_1AE1CC624(v100, v101);
      sub_1ADDCEDE0(v107, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEDE0(&v102, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEDE0(&v93, &qword_1EB5BCC30, &qword_1AE2580D0);
      v58 = v10;
      v59 = v80;
      v60 = v81;
      v61 = v82;
      v62 = v83;
      sub_1ADDCEDE0(&v58, &qword_1EB5BCC30, &qword_1AE2580D0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_1ADDCEE40(&v102, &v58, &qword_1EB5BCC30, &qword_1AE2580D0);
    sub_1ADDCEE40(v107, &v58, &qword_1EB5BCC30, &qword_1AE2580D0);
    v58 = v10;
    v59 = v80;
    v60 = v81;
    v61 = v82;
    v62 = v83;
    v63 = v11;
    *v64 = v51;
    *&v64[16] = v52;
    *&v64[32] = v53;
    *&v64[48] = v54;
    v16 = &unk_1EB5BDF78;
    v17 = &unk_1AE2580D8;
    goto LABEL_16;
  }

  if (*(&v107[0] + 1))
  {
    goto LABEL_6;
  }

  v58 = v102;
  v59 = v103;
  v60 = v104;
  v61 = v105;
  v62 = v106;
  sub_1ADDCEE40(&v102, &v93, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADDCEE40(v107, &v93, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1ADDCEDE0(&v58, &qword_1EB5BCC30, &qword_1AE2580D0);
LABEL_8:
  swift_beginAccess();
  v18 = *(a1 + 176);
  v84 = *(a1 + 160);
  v85 = v18;
  v86 = *(a1 + 192);
  v19 = *(a1 + 112);
  v80 = *(a1 + 96);
  v81 = v19;
  v20 = *(a1 + 144);
  v82 = *(a1 + 128);
  v83 = v20;
  swift_beginAccess();
  v21 = *(a2 + 144);
  v22 = *(a2 + 176);
  v90 = *(a2 + 160);
  v91 = v22;
  v23 = *(a2 + 112);
  v87[0] = *(a2 + 96);
  v87[1] = v23;
  v24 = *(a2 + 112);
  v25 = *(a2 + 144);
  v88 = *(a2 + 128);
  v89 = v25;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v74 = v81;
  v75 = v82;
  v92 = *(a2 + 192);
  v26 = v80;
  v79 = v86;
  v27 = v87[0];
  v68 = v24;
  v69 = v88;
  v28 = *(a2 + 176);
  v73 = *(a2 + 192);
  v71 = v90;
  v72 = v28;
  v70 = v21;
  if (*(&v80 + 1))
  {
    if (*(&v87[0] + 1))
    {
      v44 = v87[0];
      v29 = *(a2 + 144);
      v30 = *(a2 + 176);
      v48 = *(a2 + 160);
      v49 = v30;
      v50 = *(a2 + 192);
      v31 = *(a2 + 128);
      v45 = *(a2 + 112);
      v46 = v31;
      v47 = v29;
      v60 = v31;
      v61 = v29;
      v62 = v48;
      v63 = v30;
      *v64 = v50;
      v58 = v87[0];
      v59 = v45;
      v96 = v83;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v94 = v81;
      v95 = v82;
      v93 = v80;
      sub_1ADDCEE40(&v80, v43, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v87, v43, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(&v80, v43, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v87, v43, &qword_1EB5BCC28, &unk_1AE251820);
      v32 = sub_1AE1CD228(&v93, &v58);
      sub_1ADDCEDE0(v87, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v80, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v44, &qword_1EB5BCC28, &unk_1AE251820);
      v51 = v26;
      v54 = v76;
      v55 = v77;
      v56 = v78;
      v57 = v79;
      v52 = v74;
      v53 = v75;
      sub_1ADDCEDE0(&v51, &qword_1EB5BCC28, &unk_1AE251820);
      if ((v32 & 1) == 0)
      {
LABEL_25:

        return 0;
      }

LABEL_18:
      swift_beginAccess();
      v33 = *(a1 + 200);
      swift_beginAccess();
      v34 = *(a2 + 200);

      v36 = sub_1ADE522BC(v33, v34, v35);

      if (v36)
      {
        swift_beginAccess();
        v37 = *(a1 + 208);
        v38 = *(a1 + 216);

        swift_beginAccess();
        v39 = *(a2 + 208);
        v40 = *(a2 + 216);

        v41 = v37 != 0;
        if (!v38)
        {
          v41 = v37;
        }

        if (v40 == 1)
        {
          if (v39)
          {
            if (v41 != 1)
            {
              return 0;
            }
          }

          else if (v41)
          {
            return 0;
          }
        }

        else if (v41 != v39)
        {
          return 0;
        }

        return 1;
      }

      goto LABEL_25;
    }

    sub_1ADDCEE40(&v80, &v58, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v87, &v58, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(&v80, &v58, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v87, &v58, &qword_1EB5BCC28, &unk_1AE251820);

    sub_1ADDCEDE0(v87, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEDE0(&v80, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    if (!*(&v87[0] + 1))
    {
      v58 = v80;
      v61 = v83;
      v62 = v84;
      v63 = v85;
      *v64 = v86;
      v59 = v81;
      v60 = v82;
      sub_1ADDCEE40(&v80, &v93, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v87, &v93, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v58, &qword_1EB5BCC28, &unk_1AE251820);
      goto LABEL_18;
    }

    sub_1ADDCEE40(&v80, &v58, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v87, &v58, &qword_1EB5BCC28, &unk_1AE251820);
  }

  v58 = v26;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v59 = v74;
  v60 = v75;
  *v64 = v79;
  *&v64[8] = v27;
  *&v64[40] = v69;
  *&v64[24] = v68;
  v67 = v73;
  v66 = v72;
  v65 = v71;
  *&v64[56] = v70;
  v16 = &unk_1EB5BDF80;
  v17 = &unk_1AE2580E8;
LABEL_16:
  sub_1ADDCEDE0(&v58, v16, v17);
  return 0;
}

void (*sub_1AE1C5BD0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C5CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0BA4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C5D2C(uint64_t a1)
{
  v2 = sub_1AE1C9C1C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C5D68()
{
  sub_1AE1C9C1C();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C5DEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BB8);
  __swift_project_value_buffer(v0, qword_1EB5D7BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "orderedSet";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "orderedDictionary";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C5FD8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BD0);
  __swift_project_value_buffer(v0, qword_1EB5D7BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "string";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elements";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subsequence";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "addedByVersion";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "attributeRuns";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "fromVersion";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "fromAddedByVersion";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C6328()
{
  v2 = v1;
  v3 = sub_1AE23C32C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    result = sub_1AE23C62C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    sub_1AE1CB7C4();
    v12 = v2;
    result = sub_1AE23C65C();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v12 = v2;
  }

  if (!*(v0[3] + 16) || (sub_1AE1C96AC(), result = sub_1AE23C65C(), !v12))
  {
    result = sub_1AE1C6588(v0);
    if (!v12)
    {
      sub_1AE1C6600(v0);
      if (*(v0[4] + 16))
      {
        sub_1AE1C9964();
        sub_1AE23C65C();
      }

      sub_1AE1C6678(v0);
      sub_1AE1C66F0(v0);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_1AE1C6588(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 40);
    v2 = *(result + 48);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C6600(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 56);
    v2 = *(result + 64);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C6678(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = *(result + 72);
    v2 = *(result + 80);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C66F0(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = *(result + 88);
    v2 = *(result + 96);
    sub_1AE1CAF38();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C678C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C6840()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1AE1C6328();
}

uint64_t sub_1AE1C688C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0C4C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C68FC(uint64_t a1)
{
  v2 = sub_1AE1C9AC0();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C6938()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C69B8()
{
  sub_1AE1C9AC0();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C6A04()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C6A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AE1CD228(v11, v13) & 1;
}

uint64_t sub_1AE1C6AEC()
{
  strcpy(v1, "Proto.Sequence");
  HIBYTE(v1[1]) = -18;
  result = MEMORY[0x1B26FB670](0x756269727474412ELL, 0xED00006E75526574);
  qword_1EB5D7BE8 = v1[0];
  unk_1EB5D7BF0 = v1[1];
  return result;
}

uint64_t sub_1AE1C6B6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BF8);
  __swift_project_value_buffer(v0, qword_1EB5D7BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "length";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributes";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "timestamp";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C6D80()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (result = sub_1AE23C63C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (sub_1AE1C9808(), result = sub_1AE23C65C(), !v1))
    {
      result = sub_1AE1D0F70(*(v0 + 16), *(v0 + 24), *(v0 + 32));
      if (!v1)
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v3 + 8))(v6, v2);
      }
    }
  }

  return result;
}

void (*sub_1AE1C6F3C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0CA0();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C7078(uint64_t a1)
{
  v2 = sub_1AE1C9964();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C70B4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7130()
{
  sub_1AE1C9964();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C717C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C71F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CD7AC(v5, v7) & 1;
}

uint64_t sub_1AE1C7240()
{
  if (qword_1EB5B9BB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB5D7BE8;
  v2 = qword_1EB5D7BF0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B26FB670](0x756269727474412ELL, 0xEA00000000006574);

  qword_1EB5D7C10 = v1;
  *algn_1EB5D7C18 = v2;
  return result;
}

uint64_t sub_1AE1C72E8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C20);
  __swift_project_value_buffer(v0, qword_1EB5D7C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C74B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (result = sub_1AE23C63C(), !v5))
  {
    result = sub_1AE1D0D48(a3, a1, a4, a5, sub_1AE1CB7C4);
    if (!v5)
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

void (*sub_1AE1C764C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0CF4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C7798(uint64_t a1)
{
  v2 = sub_1AE1C9808();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C77D4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7840()
{
  sub_1AE1C9808();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C788C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7910()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C38);
  __swift_project_value_buffer(v0, qword_1EB5D7C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AE252420;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "sequenceStartID";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "length";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "addedBy";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "child";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "removedAddedBy";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "contentOptions";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C7BD0()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1C7E0C(v0);
  if (!v1)
  {
    if (*v0)
    {
      sub_1AE23C63C();
    }

    if (*(*(v0 + 8) + 16))
    {
      sub_1AE1CB1F0();
      sub_1AE23C65C();
    }

    if (*(*(v0 + 16) + 16))
    {
      sub_1AE23C57C();
    }

    if (*(*(v0 + 24) + 16))
    {
      sub_1AE1CB1F0();
      sub_1AE23C65C();
    }

    if (*(v0 + 32))
    {
      v8 = *(v0 + 40);
      v9 = *(v0 + 32);
      v10 = v8;
      sub_1AE1D0E20();
      sub_1AE23C5AC();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1AE1C7E0C(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    v1 = *(result + 48);
    sub_1AE1CB1F0();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C7EA0(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7F54()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  return sub_1AE1C7BD0();
}

uint64_t sub_1AE1C7F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0DCC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C8008(uint64_t a1)
{
  v2 = sub_1AE1C96AC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C8044()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C80B8()
{
  sub_1AE1C96AC();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C8104()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C8174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AE1CC3D0(v7, v9) & 1;
}

uint64_t sub_1AE1C81D0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C50);
  __swift_project_value_buffer(v0, qword_1EB5D7C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Default";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HasContent";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NoContent";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8404()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C68);
  __swift_project_value_buffer(v0, qword_1EB5D7C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "replicaUUID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "affinity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8618()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1AE1D0EC8();
          sub_1AE23C3CC();
          break;
        case 2:
          sub_1AE1C93EC();
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C3DC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1C8720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v9 = sub_1AE23C32C();
  v15 = *(v9 - 8);
  v10 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C5BC(), !v5))
  {
    if (!*(a3 + 16) || (sub_1AE1C93EC(), result = sub_1AE23C65C(), !v5))
    {
      if (!a4 || (v16 = a4, v17 = v18 & 1, sub_1AE1D0EC8(), result = sub_1AE23C5AC(), !v5))
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v15 + 8))(v12, v9);
      }
    }
  }

  return result;
}

void (*sub_1AE1C8908(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C8A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0E74();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C8A70(uint64_t a1)
{
  v2 = sub_1AE1C954C();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C8AAC()
{
  sub_1AE1C954C();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C8B1C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C80);
  __swift_project_value_buffer(v0, qword_1EB5D7C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Backward";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Forward";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8D08()
{
  result = MEMORY[0x1B26FB670](0x65676E61522ELL, 0xE600000000000000);
  qword_1EB5D7C98 = 0x65532E6F746F7250;
  unk_1EB5D7CA0 = 0xEF6E6F697463656CLL;
  return result;
}

uint64_t sub_1AE1C8D78()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7CA8);
  __swift_project_value_buffer(v0, qword_1EB5D7CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fromChar";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toChar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8F40()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        sub_1AE1CB1F0();
        sub_1AE23C4FC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1C8FF8()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1D0F70(*v0, *(v0 + 8), *(v0 + 16));
  if (!v1)
  {
    sub_1AE1D0F70(*(v0 + 24), *(v0 + 32), *(v0 + 40));
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void (*sub_1AE1C9168(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C924C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE1D0F1C();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1AE1C92BC(uint64_t a1)
{
  v2 = sub_1AE1C93EC();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1AE1C92F8()
{
  sub_1AE1C93EC();

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C9344(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1AE1CCFBC(&v5, &v7) & 1;
}

unint64_t sub_1AE1C9394()
{
  result = qword_1EB5BDD70;
  if (!qword_1EB5BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD70);
  }

  return result;
}

unint64_t sub_1AE1C93EC()
{
  result = qword_1EB5BDD78;
  if (!qword_1EB5BDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD78);
  }

  return result;
}

unint64_t sub_1AE1C9444()
{
  result = qword_1EB5BDD80;
  if (!qword_1EB5BDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD80);
  }

  return result;
}

unint64_t sub_1AE1C949C()
{
  result = qword_1EB5BDD88;
  if (!qword_1EB5BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD88);
  }

  return result;
}

unint64_t sub_1AE1C94F4()
{
  result = qword_1EB5BDD90;
  if (!qword_1EB5BDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD90);
  }

  return result;
}

unint64_t sub_1AE1C954C()
{
  result = qword_1EB5BDD98;
  if (!qword_1EB5BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD98);
  }

  return result;
}

unint64_t sub_1AE1C95A4()
{
  result = qword_1EB5BDDA0;
  if (!qword_1EB5BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDA0);
  }

  return result;
}

unint64_t sub_1AE1C95FC()
{
  result = qword_1EB5BDDA8;
  if (!qword_1EB5BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDA8);
  }

  return result;
}

unint64_t sub_1AE1C9654()
{
  result = qword_1EB5BDDB0;
  if (!qword_1EB5BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDB0);
  }

  return result;
}

unint64_t sub_1AE1C96AC()
{
  result = qword_1ED967EF8;
  if (!qword_1ED967EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967EF8);
  }

  return result;
}

unint64_t sub_1AE1C9704()
{
  result = qword_1EB5BDDB8;
  if (!qword_1EB5BDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDB8);
  }

  return result;
}

unint64_t sub_1AE1C9758()
{
  result = qword_1ED967EF0;
  if (!qword_1ED967EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967EF0);
  }

  return result;
}

unint64_t sub_1AE1C97B0()
{
  result = qword_1EB5BDDC0;
  if (!qword_1EB5BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDC0);
  }

  return result;
}

unint64_t sub_1AE1C9808()
{
  result = qword_1EB5B9468[0];
  if (!qword_1EB5B9468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B9468);
  }

  return result;
}

unint64_t sub_1AE1C9860()
{
  result = qword_1EB5BDDC8;
  if (!qword_1EB5BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDC8);
  }

  return result;
}

unint64_t sub_1AE1C98B4()
{
  result = qword_1EB5B9460;
  if (!qword_1EB5B9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9460);
  }

  return result;
}

unint64_t sub_1AE1C990C()
{
  result = qword_1EB5BDDD0;
  if (!qword_1EB5BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDD0);
  }

  return result;
}

unint64_t sub_1AE1C9964()
{
  result = qword_1EB5B9458;
  if (!qword_1EB5B9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9458);
  }

  return result;
}

unint64_t sub_1AE1C99BC()
{
  result = qword_1EB5BDDD8;
  if (!qword_1EB5BDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDD8);
  }

  return result;
}

unint64_t sub_1AE1C9A10()
{
  result = qword_1EB5B9450;
  if (!qword_1EB5B9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9450);
  }

  return result;
}

unint64_t sub_1AE1C9A68()
{
  result = qword_1EB5BDDE0;
  if (!qword_1EB5BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDE0);
  }

  return result;
}

unint64_t sub_1AE1C9AC0()
{
  result = qword_1ED968370;
  if (!qword_1ED968370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED968370);
  }

  return result;
}

unint64_t sub_1AE1C9B18()
{
  result = qword_1EB5BDDE8;
  if (!qword_1EB5BDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDE8);
  }

  return result;
}

unint64_t sub_1AE1C9B6C()
{
  result = qword_1ED968368;
  if (!qword_1ED968368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED968368);
  }

  return result;
}

unint64_t sub_1AE1C9BC4()
{
  result = qword_1EB5BDDF0;
  if (!qword_1EB5BDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDF0);
  }

  return result;
}

unint64_t sub_1AE1C9C1C()
{
  result = qword_1ED967F90;
  if (!qword_1ED967F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967F90);
  }

  return result;
}

unint64_t sub_1AE1C9C74()
{
  result = qword_1EB5BDDF8;
  if (!qword_1EB5BDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDF8);
  }

  return result;
}

unint64_t sub_1AE1C9CC8()
{
  result = qword_1ED967F88;
  if (!qword_1ED967F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967F88);
  }

  return result;
}

unint64_t sub_1AE1C9D20()
{
  result = qword_1EB5BDE00;
  if (!qword_1EB5BDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE00);
  }

  return result;
}

unint64_t sub_1AE1C9D78()
{
  result = qword_1EB5B8F00;
  if (!qword_1EB5B8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F00);
  }

  return result;
}

unint64_t sub_1AE1C9DD0()
{
  result = qword_1EB5BDE08;
  if (!qword_1EB5BDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE08);
  }

  return result;
}

unint64_t sub_1AE1C9E28()
{
  result = qword_1EB5B8EF8;
  if (!qword_1EB5B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8EF8);
  }

  return result;
}

unint64_t sub_1AE1C9E80()
{
  result = qword_1EB5BDE10;
  if (!qword_1EB5BDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE10);
  }

  return result;
}

unint64_t sub_1AE1C9ED8()
{
  result = qword_1EB5B9218[0];
  if (!qword_1EB5B9218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B9218);
  }

  return result;
}

unint64_t sub_1AE1C9F30()
{
  result = qword_1EB5BDE18;
  if (!qword_1EB5BDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE18);
  }

  return result;
}

unint64_t sub_1AE1C9F88()
{
  result = qword_1EB5B9210;
  if (!qword_1EB5B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9210);
  }

  return result;
}

unint64_t sub_1AE1C9FE0()
{
  result = qword_1EB5BDE20;
  if (!qword_1EB5BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE20);
  }

  return result;
}

unint64_t sub_1AE1CA038()
{
  result = qword_1EB5B9208;
  if (!qword_1EB5B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9208);
  }

  return result;
}

unint64_t sub_1AE1CA090()
{
  result = qword_1EB5BDE28;
  if (!qword_1EB5BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE28);
  }

  return result;
}

unint64_t sub_1AE1CA0E8()
{
  result = qword_1EB5B9200;
  if (!qword_1EB5B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9200);
  }

  return result;
}

unint64_t sub_1AE1CA140()
{
  result = qword_1EB5BDE30;
  if (!qword_1EB5BDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE30);
  }

  return result;
}

unint64_t sub_1AE1CA198()
{
  result = qword_1ED969080;
  if (!qword_1ED969080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969080);
  }

  return result;
}

unint64_t sub_1AE1CA1F0()
{
  result = qword_1EB5BDE38;
  if (!qword_1EB5BDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE38);
  }

  return result;
}

unint64_t sub_1AE1CA244()
{
  result = qword_1ED969078;
  if (!qword_1ED969078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969078);
  }

  return result;
}

unint64_t sub_1AE1CA29C()
{
  result = qword_1EB5BDE40;
  if (!qword_1EB5BDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE40);
  }

  return result;
}

unint64_t sub_1AE1CA2F4()
{
  result = qword_1EB5B96E8;
  if (!qword_1EB5B96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B96E8);
  }

  return result;
}

unint64_t sub_1AE1CA34C()
{
  result = qword_1EB5BDE48;
  if (!qword_1EB5BDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE48);
  }

  return result;
}

unint64_t sub_1AE1CA3A0()
{
  result = qword_1EB5B96E0;
  if (!qword_1EB5B96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B96E0);
  }

  return result;
}

unint64_t sub_1AE1CA3F8()
{
  result = qword_1EB5BDE50;
  if (!qword_1EB5BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE50);
  }

  return result;
}

unint64_t sub_1AE1CA450()
{
  result = qword_1ED966FA8[0];
  if (!qword_1ED966FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED966FA8);
  }

  return result;
}

unint64_t sub_1AE1CA4A8()
{
  result = qword_1EB5BDE58;
  if (!qword_1EB5BDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE58);
  }

  return result;
}

unint64_t sub_1AE1CA4FC()
{
  result = qword_1ED966FA0;
  if (!qword_1ED966FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED966FA0);
  }

  return result;
}

unint64_t sub_1AE1CA554()
{
  result = qword_1EB5BDE60;
  if (!qword_1EB5BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE60);
  }

  return result;
}

unint64_t sub_1AE1CA5AC()
{
  result = qword_1ED969298;
  if (!qword_1ED969298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969298);
  }

  return result;
}

unint64_t sub_1AE1CA604()
{
  result = qword_1EB5BDE68;
  if (!qword_1EB5BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE68);
  }

  return result;
}

unint64_t sub_1AE1CA658()
{
  result = qword_1ED969290;
  if (!qword_1ED969290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969290);
  }

  return result;
}

unint64_t sub_1AE1CA6B0()
{
  result = qword_1EB5BDE70;
  if (!qword_1EB5BDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE70);
  }

  return result;
}

unint64_t sub_1AE1CA708()
{
  result = qword_1ED96A608;
  if (!qword_1ED96A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A608);
  }

  return result;
}

unint64_t sub_1AE1CA760()
{
  result = qword_1EB5BDE78;
  if (!qword_1EB5BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE78);
  }

  return result;
}

unint64_t sub_1AE1CA7B4()
{
  result = qword_1ED96A600;
  if (!qword_1ED96A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A600);
  }

  return result;
}

unint64_t sub_1AE1CA80C()
{
  result = qword_1EB5BDE80;
  if (!qword_1EB5BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE80);
  }

  return result;
}

unint64_t sub_1AE1CA864()
{
  result = qword_1ED969680[0];
  if (!qword_1ED969680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED969680);
  }

  return result;
}

unint64_t sub_1AE1CA8BC()
{
  result = qword_1EB5BDE88;
  if (!qword_1EB5BDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE88);
  }

  return result;
}

unint64_t sub_1AE1CA910()
{
  result = qword_1ED969678;
  if (!qword_1ED969678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969678);
  }

  return result;
}

unint64_t sub_1AE1CA968()
{
  result = qword_1EB5BDE90;
  if (!qword_1EB5BDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE90);
  }

  return result;
}

unint64_t sub_1AE1CA9C0()
{
  result = qword_1ED96A300;
  if (!qword_1ED96A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A300);
  }

  return result;
}

unint64_t sub_1AE1CAA18()
{
  result = qword_1EB5BDE98;
  if (!qword_1EB5BDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE98);
  }

  return result;
}

unint64_t sub_1AE1CAA6C()
{
  result = qword_1ED96A2F8;
  if (!qword_1ED96A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A2F8);
  }

  return result;
}

unint64_t sub_1AE1CAAC4()
{
  result = qword_1EB5BDEA0;
  if (!qword_1EB5BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEA0);
  }

  return result;
}

unint64_t sub_1AE1CAB1C()
{
  result = qword_1EB5BDEA8;
  if (!qword_1EB5BDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEA8);
  }

  return result;
}

unint64_t sub_1AE1CAB74()
{
  result = qword_1EB5BDEB0;
  if (!qword_1EB5BDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEB0);
  }

  return result;
}

unint64_t sub_1AE1CABCC()
{
  result = qword_1EB5BDEB8;
  if (!qword_1EB5BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEB8);
  }

  return result;
}

unint64_t sub_1AE1CAC24()
{
  result = qword_1EB5BDEC0;
  if (!qword_1EB5BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEC0);
  }

  return result;
}

unint64_t sub_1AE1CAC7C()
{
  result = qword_1ED969B58;
  if (!qword_1ED969B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969B58);
  }

  return result;
}

unint64_t sub_1AE1CACD4()
{
  result = qword_1EB5BDEC8;
  if (!qword_1EB5BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEC8);
  }

  return result;
}

unint64_t sub_1AE1CAD28()
{
  result = qword_1ED969B50;
  if (!qword_1ED969B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969B50);
  }

  return result;
}

unint64_t sub_1AE1CAD80()
{
  result = qword_1EB5BDED0;
  if (!qword_1EB5BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDED0);
  }

  return result;
}

unint64_t sub_1AE1CADD8()
{
  result = qword_1EB5B9518;
  if (!qword_1EB5B9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9518);
  }

  return result;
}

unint64_t sub_1AE1CAE30()
{
  result = qword_1EB5BDED8;
  if (!qword_1EB5BDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDED8);
  }

  return result;
}

unint64_t sub_1AE1CAE88()
{
  result = qword_1EB5B9510;
  if (!qword_1EB5B9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9510);
  }

  return result;
}

unint64_t sub_1AE1CAEE0()
{
  result = qword_1EB5BDEE0;
  if (!qword_1EB5BDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEE0);
  }

  return result;
}

unint64_t sub_1AE1CAF38()
{
  result = qword_1ED96A578;
  if (!qword_1ED96A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A578);
  }

  return result;
}

unint64_t sub_1AE1CAF90()
{
  result = qword_1EB5BDEE8;
  if (!qword_1EB5BDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEE8);
  }

  return result;
}

unint64_t sub_1AE1CAFE4()
{
  result = qword_1ED96A570;
  if (!qword_1ED96A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A570);
  }

  return result;
}

unint64_t sub_1AE1CB03C()
{
  result = qword_1EB5BDEF0;
  if (!qword_1EB5BDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEF0);
  }

  return result;
}

unint64_t sub_1AE1CB094()
{
  result = qword_1ED96A310[0];
  if (!qword_1ED96A310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED96A310);
  }

  return result;
}

unint64_t sub_1AE1CB0EC()
{
  result = qword_1EB5BDEF8;
  if (!qword_1EB5BDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEF8);
  }

  return result;
}

unint64_t sub_1AE1CB140()
{
  result = qword_1ED96A308;
  if (!qword_1ED96A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A308);
  }

  return result;
}

unint64_t sub_1AE1CB198()
{
  result = qword_1EB5BDF00;
  if (!qword_1EB5BDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF00);
  }

  return result;
}

unint64_t sub_1AE1CB1F0()
{
  result = qword_1ED96A7D0;
  if (!qword_1ED96A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A7D0);
  }

  return result;
}

unint64_t sub_1AE1CB248()
{
  result = qword_1EB5BDF08;
  if (!qword_1EB5BDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF08);
  }

  return result;
}

unint64_t sub_1AE1CB29C()
{
  result = qword_1ED96A7C8;
  if (!qword_1ED96A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A7C8);
  }

  return result;
}

unint64_t sub_1AE1CB2F4()
{
  result = qword_1EB5BDF10;
  if (!qword_1EB5BDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF10);
  }

  return result;
}

unint64_t sub_1AE1CB350()
{
  result = qword_1EB5BDF18;
  if (!qword_1EB5BDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF18);
  }

  return result;
}

unint64_t sub_1AE1CB3A4()
{
  result = qword_1ED9694A0;
  if (!qword_1ED9694A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9694A0);
  }

  return result;
}

unint64_t sub_1AE1CB3FC()
{
  result = qword_1EB5BDF20;
  if (!qword_1EB5BDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF20);
  }

  return result;
}

unint64_t sub_1AE1CB458()
{
  result = qword_1EB5BDF28;
  if (!qword_1EB5BDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF28);
  }

  return result;
}

unint64_t sub_1AE1CB4AC()
{
  result = qword_1ED96A800;
  if (!qword_1ED96A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A800);
  }

  return result;
}

unint64_t sub_1AE1CB504()
{
  result = qword_1EB5BDF30;
  if (!qword_1EB5BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF30);
  }

  return result;
}

unint64_t sub_1AE1CB560()
{
  result = qword_1EB5BDF38;
  if (!qword_1EB5BDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF38);
  }

  return result;
}

unint64_t sub_1AE1CB5B8()
{
  result = qword_1EB5B8F08;
  if (!qword_1EB5B8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F08);
  }

  return result;
}

unint64_t sub_1AE1CB610()
{
  result = qword_1EB5BDF40;
  if (!qword_1EB5BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF40);
  }

  return result;
}

unint64_t sub_1AE1CB668()
{
  result = qword_1ED96AA10;
  if (!qword_1ED96AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA10);
  }

  return result;
}

unint64_t sub_1AE1CB6C0()
{
  result = qword_1EB5BDF48;
  if (!qword_1EB5BDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF48);
  }

  return result;
}

unint64_t sub_1AE1CB714()
{
  result = qword_1ED96AA08;
  if (!qword_1ED96AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA08);
  }

  return result;
}

unint64_t sub_1AE1CB76C()
{
  result = qword_1EB5BDF50;
  if (!qword_1EB5BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF50);
  }

  return result;
}

unint64_t sub_1AE1CB7C4()
{
  result = qword_1ED96A268;
  if (!qword_1ED96A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A268);
  }

  return result;
}

unint64_t sub_1AE1CB81C()
{
  result = qword_1EB5BDF58;
  if (!qword_1EB5BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF58);
  }

  return result;
}

unint64_t sub_1AE1CB870()
{
  result = qword_1ED96A260;
  if (!qword_1ED96A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A260);
  }

  return result;
}

unint64_t sub_1AE1CB8C8()
{
  result = qword_1EB5BDF60;
  if (!qword_1EB5BDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF60);
  }

  return result;
}

unint64_t sub_1AE1CB924()
{
  result = qword_1EB5BDF68;
  if (!qword_1EB5BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF68);
  }

  return result;
}

unint64_t sub_1AE1CB978()
{
  result = qword_1ED96A8E0;
  if (!qword_1ED96A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A8E0);
  }

  return result;
}

unint64_t sub_1AE1CB9CC()
{
  result = qword_1EB5BDF70;
  if (!qword_1EB5BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF70);
  }

  return result;
}

uint64_t sub_1AE1CBA20(void *a1, uint64_t *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  v13 = *a2;
  if (*a1)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a2;

    v16 = sub_1AE1CF8DC(v15, v13, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v13)
  {
    goto LABEL_24;
  }

  v17 = a2[1];
  if (a1[1])
  {
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = a2[1];

    v20 = sub_1AE1CF8DC(v19, v17, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v17)
  {
    goto LABEL_24;
  }

  v21 = a1[2];
  v22 = a2[2];
  if (!v21)
  {
    if (v22)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = a1[3];
  v24 = a2[3];
  if ((sub_1ADE522B8(a1[2], a2[2], v10) & 1) == 0)
  {
    sub_1ADE42C78(v22);
    sub_1ADE42C78(v21);
    goto LABEL_23;
  }

  sub_1ADE42C78(v22);
  sub_1ADE42C78(v21);
  sub_1ADE4E544(v23, v24);
  if ((v25 & 1) == 0)
  {
LABEL_23:

    sub_1ADE42CB8(v21);
    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v32 = sub_1AE23CCBC();
  v31[1] = v23;
  v33 = *(v5 + 8);
  v33(v8, v4);
  v33(v12, v4);

  sub_1ADE42CB8(v21);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v26 = a2[4];
  if (!a1[4])
  {
    if (!v26)
    {
LABEL_27:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      LOBYTE(v26) = sub_1AE23CCBC();
      v30 = *(v5 + 8);
      v30(v8, v4);
      v30(v12, v4);
      return v26 & 1;
    }

LABEL_24:
    LOBYTE(v26) = 0;
    return v26 & 1;
  }

  if (v26)
  {

    v28 = sub_1AE1CF8DC(v27, v26, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

    if (v28)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  return v26 & 1;
}

uint64_t sub_1AE1CBE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v11 = *(a1 + 72);
  v38 = *(a1 + 56);
  v39 = v11;
  v12 = *(a2 + 72);
  v37[0] = *(a2 + 56);
  v37[1] = v12;
  v13 = v38;
  v14 = v39;
  v15 = v37[0];
  v16 = v12;
  if (v39)
  {
    if (v12)
    {
      v34 = v7;
      v35 = a2;
      v31 = &v30 - v8;
      v32 = v10;
      v33 = v9;
      sub_1ADDCEE40(&v38, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
      sub_1ADDCEE40(v37, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
      v17 = sub_1AE1CE4B8(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1));
      sub_1ADE73B5C(v15, *(&v15 + 1), v16);
      sub_1ADE73B5C(v13, *(&v13 + 1), v14);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_15:
      v27 = 0;
      return v27 & 1;
    }

LABEL_6:
    sub_1ADDCEE40(&v38, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADDCEE40(v37, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADE73B5C(v13, *(&v13 + 1), v14);
    sub_1ADE73B5C(v15, *(&v15 + 1), v16);
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v34 = v7;
  v35 = a2;
  v31 = &v30 - v8;
  v32 = v10;
  v33 = v9;
  sub_1ADDCEE40(&v38, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADDCEE40(v37, v36, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADE73B5C(v13, *(&v13 + 1), 0);
LABEL_8:
  v18 = v35;
  sub_1ADE49E00(*a1, *v35);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_1ADE522B8(*(a1 + 8), v18[1], v19) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_1ADDD6F8C(*(a1 + 16), *(a1 + 24), v18[2], v18[3]) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_1ADE522B8(*(a1 + 32), v18[4], v21) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1ADE49E00(*(a1 + 40), v18[5]);
  if ((v23 & 1) == 0 || (sub_1ADE522B8(*(a1 + 48), v18[6], v22) & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v31;
  sub_1AE23C31C();
  v25 = v32;
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v26 = v34;
  v27 = sub_1AE23CCBC();
  v28 = *(v33 + 8);
  v28(v25, v26);
  v28(v24, v26);
  return v27 & 1;
}

uint64_t sub_1AE1CC154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

  swift_beginAccess();
  v13 = *(a1 + 24);
  swift_beginAccess();
  v14 = *(a2 + 24);
  if (v13)
  {
    if (v14)
    {

      v16 = sub_1AE1CF8DC(v15, v14, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v16 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_8:

LABEL_9:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v17 = sub_1AE23CCBC();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v11, v4);
  return v17 & 1;
}

uint64_t sub_1AE1CC3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_11:
    if (*a1 != *a2 || (sub_1ADE522BC(*(a1 + 8), *(a2 + 8), v10) & 1) == 0 || (sub_1ADE4A3AC(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1ADE522BC(*(a1 + 24), *(a2 + 24), v17) & 1) == 0)
    {
      goto LABEL_23;
    }

    v18 = *(a1 + 32);
    v19 = *(a2 + 32);
    if (*(a2 + 40))
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (v18 != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        if (v18 == 2)
        {
LABEL_21:
          sub_1AE23C31C();
          sub_1AE23C31C();
          sub_1ADE51EAC();
          v13 = sub_1AE23CCBC();
          v20 = *(v5 + 8);
          v20(v8, v4);
          v20(v12, v4);
          return v13 & 1;
        }
      }

      else if (!v18)
      {
        goto LABEL_21;
      }
    }

    else if (v18 == v19)
    {
      goto LABEL_21;
    }

LABEL_23:
    v13 = 0;
    return v13 & 1;
  }

  v13 = 0;
  if ((*(a2 + 64) & 1) == 0 && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v15 = sub_1AE23CCBC();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v12, v4);
    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  return v13 & 1;
}

uint64_t sub_1AE1CC624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28[-v11];
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = *(a1 + 32);
    v16 = *(a2 + 32);
    if ((sub_1ADE522B8(*(a1 + 24), *(a2 + 24), v10) & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_1ADE42C78(v14);
    sub_1ADE42C78(v13);
    sub_1ADE4E544(v15, v16);
    if ((v17 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v29 = sub_1AE23CCBC();
    v31 = v5;
    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v12, v4);
    v5 = v31;

    sub_1ADE42CB8(v13);
    if ((v29 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v14)
  {
    goto LABEL_25;
  }

  v18 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v19 = 0;
  if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v20 = sub_1AE23CCBC();
    v21 = *(v5 + 8);
    v21(v8, v4);
    v21(v12, v4);
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_16:
    if ((sub_1ADE49B64(*(a1 + 8), *(a2 + 8)) & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 = *(a1 + 64);
    v14 = *(a2 + 64);
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (!v14)
    {
      goto LABEL_25;
    }

    v23 = *(a1 + 72);
    v24 = *(a2 + 72);
    if (sub_1ADE522B8(*(a1 + 64), *(a2 + 64), v22))
    {
      sub_1ADE42C78(v14);
      sub_1ADE42C78(v13);
      sub_1ADE4E544(v23, v24);
      if (v25)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v29 = sub_1AE23CCBC();
        v31 = v5;
        v30 = *(v5 + 8);
        v30(v8, v4);
        v30(v12, v4);
        v5 = v31;

        sub_1ADE42CB8(v13);
        if (v29)
        {
LABEL_28:
          if (sub_1ADE49B64(*(a1 + 16), *(a2 + 16)))
          {
            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            v19 = sub_1AE23CCBC();
            v27 = *(v5 + 8);
            v27(v8, v4);
            v27(v12, v4);
            return v19 & 1;
          }
        }

LABEL_25:
        v19 = 0;
        return v19 & 1;
      }

LABEL_24:

      sub_1ADE42CB8(v13);
      goto LABEL_25;
    }

LABEL_23:
    sub_1ADE42C78(v14);
    sub_1ADE42C78(v13);
    goto LABEL_24;
  }

  return v19 & 1;
}

uint64_t sub_1AE1CCA34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a1;
  v33 = a2;
  v14 = sub_1AE23C32C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28[-v21];
  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_8;
    }

LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if ((sub_1ADE522B8(a3, a7, v20) & 1) == 0)
  {
    sub_1ADE42C78(a7);
    sub_1ADE42C78(a3);
    goto LABEL_11;
  }

  sub_1ADE42C78(a7);
  sub_1ADE42C78(a3);
  sub_1ADE4E544(a4, a8);
  if ((v23 & 1) == 0)
  {
LABEL_11:

    sub_1ADE42CB8(a3);
    goto LABEL_12;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v29 = sub_1AE23CCBC();
  v30 = a5;
  v31 = a6;
  v24 = *(v15 + 8);
  v24(v18, v14);
  v24(v22, v14);
  a5 = v30;
  a6 = v31;

  sub_1ADE42CB8(a3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((sub_1ADDD6F8C(v32, v33, a5, a6) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v25 = sub_1AE23CCBC();
  v26 = *(v15 + 8);
  v26(v18, v14);
  v26(v22, v14);
  return v25 & 1;
}

uint64_t sub_1AE1CCCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = 0;
  if (a1 == a3 && a2 == a4)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v16 = sub_1AE23CCBC();
    v17 = *(v9 + 8);
    v17(v12, v8);
    v17(v15, v8);
  }

  return v16 & 1;
}

uint64_t sub_1AE1CCE00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v27 = a7;
  v15 = sub_1AE23C32C();
  v26 = *(v15 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  if ((sub_1ADE4AF74(a1, a5) & 1) == 0 || (sub_1ADE522C0(a2, a6) & 1) == 0)
  {
    goto LABEL_8;
  }

  v22 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v22 = a3;
  }

  if ((a8 & 1) == 0)
  {
    if (v22 != v27)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v23 = sub_1AE23CCBC();
    v25 = *(v26 + 8);
    v25(v18, v15);
    v25(v21, v15);
    return v23 & 1;
  }

  if (!v27)
  {
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v22 == 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1AE1CCFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
    if (*(a2 + 16))
    {
      return v12 & 1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return v12 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v14 = sub_1AE23CCBC();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v11, v4);
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
LABEL_13:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v12 = sub_1AE23CCBC();
      v17 = *(v5 + 8);
      v17(v8, v4);
      v17(v11, v4);
      return v12 & 1;
    }

LABEL_18:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  if ((*(a2 + 40) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v18 = sub_1AE23CCBC();
    v19 = *(v5 + 8);
    v19(v8, v4);
    v19(v11, v4);
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  return v12 & 1;
}

uint64_t sub_1AE1CD228(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (!v12 && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_1ADE49D64(a1[2], a2[2]);
  if ((v13 & 1) == 0 || (sub_1ADE4C130(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = a1[6];
    v18 = a2[6];
    if ((sub_1ADE522B8(a1[5], a2[5], v14) & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_1ADE42C78(v16);
    sub_1ADE42C78(v15);
    sub_1ADE4E544(v17, v18);
    if ((v19 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v38 = sub_1AE23CCBC();
    v37 = v17;
    v39 = *(v5 + 8);
    v39(v8, v4);
    v39(v11, v4);

    sub_1ADE42CB8(v15);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v16)
  {
    goto LABEL_31;
  }

  v15 = a1[7];
  v16 = a2[7];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    v20 = a1[8];
    v21 = a2[8];
    if ((sub_1ADE522B8(a1[7], a2[7], v14) & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_1ADE42C78(v16);
    sub_1ADE42C78(v15);
    sub_1ADE4E544(v20, v21);
    if ((v22 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v38 = sub_1AE23CCBC();
    v37 = v20;
    v39 = *(v5 + 8);
    v39(v8, v4);
    v39(v11, v4);

    sub_1ADE42CB8(v15);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v16)
  {
    goto LABEL_31;
  }

  sub_1ADE4C634(a1[4], a2[4]);
  if ((v24 & 1) == 0)
  {
    goto LABEL_31;
  }

  v15 = a1[9];
  v16 = a2[9];
  if (!v15)
  {
    if (v16)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_31;
  }

  v25 = a1[10];
  v26 = a2[10];
  if ((sub_1ADE522B8(a1[9], a2[9], v23) & 1) == 0)
  {
LABEL_29:
    sub_1ADE42C78(v16);
    sub_1ADE42C78(v15);
    goto LABEL_30;
  }

  sub_1ADE42C78(v16);
  sub_1ADE42C78(v15);
  sub_1ADE4E544(v25, v26);
  if ((v27 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v38 = sub_1AE23CCBC();
  v37 = v25;
  v39 = *(v5 + 8);
  v39(v8, v4);
  v39(v11, v4);

  sub_1ADE42CB8(v15);
  if ((v38 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v15 = a1[11];
  v30 = a2[11];
  if (v15)
  {
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = a1[12];
    v32 = a2[12];
    if (sub_1ADE522B8(v15, v30, v23))
    {
      sub_1ADE42C78(v30);
      sub_1ADE42C78(v15);
      sub_1ADE4E544(v31, v32);
      if (v33)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        LODWORD(v39) = sub_1AE23CCBC();
        v34 = *(v5 + 8);
        v34(v8, v4);
        v34(v11, v4);

        sub_1ADE42CB8(v15);
        if (v39)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1ADE42C78(v30);
      sub_1ADE42C78(v15);
    }

LABEL_30:

    sub_1ADE42CB8(v15);
    goto LABEL_31;
  }

  if (!v30)
  {
LABEL_41:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v28 = sub_1AE23CCBC();
    v35 = *(v5 + 8);
    v35(v8, v4);
    v35(v11, v4);
    return v28 & 1;
  }

LABEL_31:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1AE1CD7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  if (*a1 != *a2 || (sub_1ADE4C8D8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v12 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
LABEL_5:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v13 = sub_1AE23CCBC();
      v14 = *(v5 + 8);
      v14(v8, v4);
      v14(v11, v4);
      return v13 & 1;
    }

LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  v13 = 0;
  if ((*(a2 + 32) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v15 = sub_1AE23CCBC();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v11, v4);
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return v13 & 1;
}

uint64_t sub_1AE1CD9A0(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  if (a1 != a3)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (a4)
  {

    v17 = sub_1AE1CF8DC(v16, a4, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

    if (v17)
    {
LABEL_5:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      LOBYTE(a4) = sub_1AE23CCBC();
      v18 = *(v9 + 8);
      v18(v12, v8);
      v18(v15, v8);
      return a4 & 1;
    }

LABEL_7:
    LOBYTE(a4) = 0;
  }

  return a4 & 1;
}

uint64_t sub_1AE1CDB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  if (a1 == a2)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v12)
  {
    if (v13)
    {

      v15 = sub_1AE1CF8DC(v14, v13, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_10:

    v16 = 0;
    return v16 & 1;
  }

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_7:

LABEL_8:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v16 = sub_1AE23CCBC();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v11, v4);
  return v16 & 1;
}