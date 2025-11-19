double sub_1C4C06D70(void (*a1)(double *__return_ptr, double *, double *), double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  a1(&v4, &v6, &v5);
  return v4;
}

uint64_t sub_1C4C06DC4@<X0>(double *a1@<X0>, void (*a2)(double, double)@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  a2(*a1, a4);
  result = sub_1C4F019C8();
  *a3 = result;
  return result;
}

float sub_1C4C06E18(void (*a1)(uint64_t *__return_ptr, float *, char *), float a2, float a3)
{
  *(&v4 + 1) = a3;
  v5 = a2;
  a1(&v4, &v5, &v4 + 4);
  return *&v4;
}

uint64_t sub_1C4C06E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C442B870(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 4) = result ^ 1;
  return result;
}

uint64_t sub_1C4C06EC4@<X0>(float *a1@<X0>, void (*a2)(float, float)@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  a2(*a1, a4);
  result = sub_1C4F01A58();
  *a3 = result;
  return result;
}

uint64_t sub_1C4C06F00(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C06F10(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C06F2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result != 0x8000000000000000 || a2 != -1)
    {
      result /= a2;
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

uint64_t sub_1C4C06F50(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result != 0x8000000000000000 || a2 != -1)
    {
      result %= a2;
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

uint64_t sub_1C4C06F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v5 = a2;
  v6 = a1;
  a3(&v4, &v6, &v5);
  return v4;
}

uint64_t sub_1C4C06FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C442B870(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 8) = result ^ 1;
  return result;
}

uint64_t sub_1C4C0702C@<X0>(void *a1@<X0>, void (*a2)(void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a2(*a1, a3);
  result = sub_1C4F01B58();
  *a4 = result;
  return result;
}

uint64_t sub_1C4C0706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C442B870(a1, v21);
  v8 = sub_1C4C0BF5C(v21);
  swift_beginAccess();
  if (v8)
  {
    v15 = *(a2 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a2 + 16);
    sub_1C4660314();
    *(a2 + 16) = v20;
  }

  else
  {
    sub_1C45920FC(a3, a4, v9, v10, v11, v12, v13, v14, v18, v19);
  }

  return swift_endAccess();
}

id sub_1C4C07150(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v4 = sub_1C4F01658();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_1C4C0724C()
{
  result = qword_1EC0C4A80;
  if (!qword_1EC0C4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4A80);
  }

  return result;
}

void sub_1C4C07300()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B607F8(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 16 * v7);
  sub_1C456902C(&qword_1EC0B8C10, &qword_1C4F5D530);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4461B98((v10 + 16 * v0), v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C073D0()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60858(v4 - v8, 1);
  v9 = *v1;
  v10 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C443FC6C(v10);
  v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v13 + 72);
  v15 = v12 + v14 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C459C4D4(v12 + v14 * v0, v16, v15);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C4C074E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1C4B608D0(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1C4474DD4((v8 + 32 + 8 * a2), v9 - a2, (v8 + 32 + 8 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C4C075A0()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60A38(v4 - v8, 1);
  v9 = *v1;
  v10 = sub_1C4EF9CD8();
  sub_1C443FC6C(v10);
  v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v13 + 72);
  v15 = v12 + v14 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C459C458(v12 + v14 * v0, v16, v15);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C076A8()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C449AE50(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = (v10 + 16 * v7);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4461B98((v10 + 16 * v0), v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C4C07768()
{
  sub_1C442F0C4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C4411394();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v0))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C4B60BB8(v4 - v8, 1);
  v9 = *v1;
  v10 = *v1 + 32;
  v11 = v10 + 8 * v7;
  sub_1C456902C(&qword_1EC0B8988, &unk_1C4F5D520);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v9;
    sub_1C4422220();
    return;
  }

  sub_1C447F338();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1C4474DF4(v10 + 8 * v0, v12, v11);
  sub_1C445EA30();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C4C07838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  result = sub_1C443FC6C(v10);
  v14 = *(v13 + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = v16 + v14 * a1;
  result = swift_arrayDestroy();
  v18 = a3 - v15;
  if (__OFSUB__(a3, v15))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v17 + v14 * a3;
  if (v18)
  {
    v20 = *(v9 + 16);
    if (!__OFSUB__(v20, a2))
    {
      result = sub_1C459C470(v16 + v14 * a2, v20 - a2, v17 + v14 * a3);
      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v18);
      v23 = v21 + v18;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v14 * a3 < 1)
  {
    return sub_1C4423A0C(a4, &qword_1EC0BB1D8, &qword_1C4F1E1A8);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = sub_1C44600A0(a4, v17, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v17 += v14;
    if (v17 >= v19)
    {
      return sub_1C4423A0C(a4, &qword_1EC0BB1D8, &qword_1C4F1E1A8);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1C4C079AC()
{
  sub_1C442F0C4();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 16 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_15;
  }

  sub_1C4461B98((v9 + 32 + 16 * v8), v13 - v8, (v10 + 16 * v7));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  sub_1C4422220();
}

double sub_1C4C07AAC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C4C0635C(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for SignalPipelineError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4C07B9C()
{
  result = qword_1EC0C4B60;
  if (!qword_1EC0C4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4B60);
  }

  return result;
}

uint64_t sub_1C4C07C04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, 0x49uLL);
      memcpy(__src, v7, 0x49uLL);
      sub_1C470CD44(__dst, v9);
      sub_1C4C089E4(__src, a2, a3);
      if (v3)
      {
        break;
      }

      memcpy(v9, __src, 0x49uLL);
      sub_1C470CDA0(v9);
      v7 += 80;
      if (!--v6)
      {
      }
    }

    memcpy(v9, __src, 0x49uLL);
    sub_1C470CDA0(v9);
  }
}

uint64_t sub_1C4C07CD8(uint64_t result, char a2, uint64_t *a3)
{
  v6 = *(result + 16);
  v7 = (result + 64);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v12[0] = *(v7 - 4);
      v12[1] = v11;
      v12[2] = v9;
      v12[3] = v10;
      v13 = v8;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C0B52C(v12, a2 & 1, a3);
      if (v3)
      {
        break;
      }

      v7 += 40;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_1C4C07DB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FE61C();
  v18 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  sub_1C43FBCE0(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for EntityEdge() + 20);
  v25 = *(v18 + 48);
  sub_1C457E858(a1 + v24, v23);
  sub_1C457E858(a2 + v24, &v23[v25]);
  sub_1C4406BE8(v23);
  if (v26)
  {
    sub_1C4406BE8(&v23[v25]);
    if (v26)
    {
      sub_1C4420C3C(v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1C457E858(v23, v2);
  sub_1C4406BE8(&v23[v25]);
  if (v26)
  {
    (*(v8 + 8))(v2, v5);
LABEL_10:
    sub_1C4420C3C(v23, &qword_1EC0B8580, &unk_1C4F0D340);
    return 0;
  }

  (*(v8 + 32))(v13, &v23[v25], v5);
  sub_1C4407EF4();
  sub_1C4C0BF14(v28, v29);
  v30 = sub_1C4F010B8();
  v31 = *(v8 + 8);
  v31(v13, v5);
  v31(v2, v5);
  sub_1C4420C3C(v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
  return (v30 & 1) != 0;
}

uint64_t sub_1C4C08050()
{
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4401780();
  sub_1C4407EF4();
  sub_1C4C0BF14(v13, v14);
  sub_1C4F00FE8();
  v15 = type metadata accessor for EntityEdge();
  sub_1C457E858(v0 + *(v15 + 20), v2);
  if (sub_1C44157D4(v2, 1, v3) == 1)
  {
    return sub_1C4F02B18();
  }

  (*(v6 + 32))(v1, v2, v3);
  sub_1C4F02B18();
  sub_1C4F00FE8();
  return (*(v6 + 8))(v1, v3);
}

uint64_t sub_1C4C081F8()
{
  v2 = sub_1C4EFF0C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FE61C();
  sub_1C4F02AF8();
  sub_1C4407EF4();
  sub_1C4C0BF14(v15, v16);
  sub_1C4F00FE8();
  v17 = type metadata accessor for EntityEdge();
  sub_1C457E858(v0 + *(v17 + 20), v1);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v5 + 32))(v10, v1, v2);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v5 + 8))(v10, v2);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C083BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4401780();
  sub_1C4F02AF8();
  sub_1C4407EF4();
  sub_1C4C0BF14(v18, v19);
  sub_1C4F00FE8();
  sub_1C457E858(v2 + *(a2 + 20), v3);
  if (sub_1C44157D4(v3, 1, v5) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v8 + 32))(v13, v3, v5);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v8 + 8))(v13, v5);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C08580()
{
  sub_1C442E860(v0 + 120, v4);
  v1 = v5;
  v2 = v6;
  sub_1C4409678(v4, v5);
  (*(v2 + 32))(v1, v2);
  return sub_1C440962C(v4);
}

void sub_1C4C085F0()
{
  v3 = v0;
  v45 = sub_1C456902C(&qword_1EC0C4B68, &unk_1C4F5D680);
  sub_1C43FBCE0(v45);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  sub_1C442E860((v0 + 15), v39);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4B70, &qword_1C4F5D690);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v37, v42);
    sub_1C442E860((v0 + 10), v39);
    v7 = v40;
    v8 = v41;
    sub_1C4409678(v39, v40);
    v9 = v0[4];
    v10 = *(v8 + 16);
    v11 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = v10(v11, 1, 0, v7, v8);

    sub_1C440962C(v39);
    if (v1)
    {
      sub_1C440962C(v42);
    }

    else
    {
      v39[0] = MEMORY[0x1E69E7CC8];

      sub_1C4C07C04(v12, v39, v3);

      v14 = v39[0];
      v15 = v39[0] + 64;
      v16 = 1 << *(v39[0] + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v39[0] + 64);
      v19 = (v16 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = 0;
      v36 = MEMORY[0x1E69E7CC0];
      while (v18)
      {
LABEL_13:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v22 | (v20 << 6);
        v24 = *(v14 + 48);
        v25 = type metadata accessor for EntityEdge();
        sub_1C43FBD18(v25);
        sub_1C4C0B7DC(v24 + *(v26 + 72) * v23, v2);
        v27 = *(*(v14 + 56) + 8 * v23);
        *(v2 + *(v45 + 48)) = v27;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v28 = sub_1C4C0A09C(v2, v27, v3);
        sub_1C4420C3C(v2, &qword_1EC0C4B68, &unk_1C4F5D680);
        if (v28)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = *(v36 + 16);
            sub_1C458B824();
            v36 = v32;
          }

          v29 = *(v36 + 16);
          v30 = v29 + 1;
          if (v29 >= *(v36 + 24) >> 1)
          {
            sub_1C458B824();
            v30 = v29 + 1;
            v36 = v33;
          }

          *(v36 + 16) = v30;
          *(v36 + 8 * v29 + 32) = v28;
        }
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          v34 = v43;
          v35 = v44;
          sub_1C4409678(v42, v43);
          (*(*(v35 + 8) + 8))(v36, v34);

          sub_1C440962C(v42);
          return;
        }

        v18 = *(v15 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1C4420C3C(v37, &qword_1EC0C4B78, &qword_1C4F5D698);
    sub_1C446D0DC();
    sub_1C43FFB2C();
    *v13 = 0xD00000000000003CLL;
    *(v13 + 8) = 0x80000001C4FB9AA0;
    *(v13 + 16) = 3;
    swift_willThrow();
  }
}

void sub_1C4C089E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v212 = a3;
  v214 = a2;
  v202 = type metadata accessor for EntityEdge();
  v4 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v209 = &v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v200 = &v195 - v7;
  v8 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v205 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v195 - v12;
  v13 = sub_1C4EFB258();
  v216 = *(v13 - 8);
  v217 = v13;
  v14 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v201 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v204 = (&v195 - v17);
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v210 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v208 = &v195 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v195 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v211 = &v195 - v27;
  v221 = sub_1C4EFF0C8();
  v220 = *(v221 - 8);
  v28 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v30 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v195 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v206 = &v195 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v215 = &v195 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v195 - v39;
  v41 = a1[1];
  v197 = *a1;
  v207 = v41;
  v42 = a1[3];
  v203 = a1[2];
  v213 = v42;
  v43 = a1[4];
  v44 = a1[5];
  v45 = a1[7];
  v218 = a1[6];
  v219 = v45;
  v46 = MEMORY[0x1E69E6158];
  v225 = MEMORY[0x1E69E6158];
  *&v224 = v43;
  *(&v224 + 1) = v44;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v48 = v47;
  sub_1C440962C(&v224);
  if (!v48)
  {
    v215 = v30;
    v198 = v40;
    v225 = v46;
    *&v224 = v43;
    *(&v224 + 1) = v44;
    v196 = v44;
    v51 = v210;
    v50 = v211;
    sub_1C4C82A1C(&v224);
    v52 = v221;
    v53 = sub_1C44157D4(v50, 1, v221);
    if (v53 == 1)
    {
      sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v54 = *(v212 + 160);
      v55 = v198;
      if (!v54)
      {
        v59 = v196;

        goto LABEL_34;
      }

      v56 = *(v212 + 160);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v57 = v51;
      v58 = v196;
      sub_1C465C294(v43, v196, v54);

      if (sub_1C44157D4(v57, 1, v52) == 1)
      {

        sub_1C4420C3C(v57, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v59 = v58;
LABEL_34:
        v113 = v43;
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v114 = sub_1C4F00978();
        sub_1C442B738(v114, qword_1EDE2DF70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v116 = v218;
        v115 = v219;
        sub_1C44344B8(v218, v219);
        v66 = sub_1C4F00968();
        v117 = sub_1C4F01CD8();

        sub_1C4434000(v116, v115);
        if (!os_log_type_enabled(v66, v117))
        {
          goto LABEL_39;
        }

        v68 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v224 = v118;
        *v68 = 136315138;
        *(v68 + 4) = sub_1C441D828(v113, v59, &v224);
        _os_log_impl(&dword_1C43F8000, v66, v117, "FeatureSignalRowViewGenerator: Expected identifier fields not present in input feature row or bundle map: %s.", v68, 0xCu);
        sub_1C440962C(v118);
        MEMORY[0x1C6942830](v118, -1, -1);
        goto LABEL_38;
      }

      LODWORD(v208) = 1;
      v211 = v43;
      v145 = v220;
      (*(v220 + 32))(v33, v57, v52);
      v146 = *(v145 + 16);
      v146(v55, v33, v52);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v147 = sub_1C4F00978();
      sub_1C442B738(v147, qword_1EDE2DF70);
      v146(v215, v33, v52);
      v210 = v33;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v148 = v196;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v149 = v218;
      v150 = v219;
      sub_1C44344B8(v218, v219);
      v151 = sub_1C4F00968();
      v152 = sub_1C4F01CB8();

      sub_1C4434000(v149, v150);
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v224 = v206;
        *v153 = 136315394;
        *(v153 + 4) = sub_1C441D828(v211, v148, &v224);
        *(v153 + 12) = 2080;
        v204 = v151;
        v154 = v215;
        v155 = v152;
        v156 = sub_1C4EFF048();
        v158 = v157;
        v159 = *(v220 + 8);
        v159(v154, v52);
        v160 = sub_1C441D828(v156, v158, &v224);

        *(v153 + 14) = v160;
        v161 = v204;
        _os_log_impl(&dword_1C43F8000, v204, v155, "FeatureSignalRowViewGenerator: Got value for %s: %s", v153, 0x16u);
        v162 = v206;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v162, -1, -1);
        MEMORY[0x1C6942830](v153, -1, -1);

        v43 = v211;
        v159(v210, v52);
        v70 = v216;
        v71 = v217;
        v72 = v209;
        v69 = MEMORY[0x1E69E6158];
      }

      else
      {

        v194 = *(v220 + 8);
        v194(v215, v52);
        v194(v210, v52);
        v70 = v216;
        v71 = v217;
        v72 = v209;
        v69 = MEMORY[0x1E69E6158];
        v43 = v211;
      }
    }

    else
    {
      v69 = v46;
      LODWORD(v208) = v53;
      (*(v220 + 32))(v198, v50, v52);
      v70 = v216;
      v71 = v217;
      v72 = v209;
    }

    sub_1C44344B8(v218, v219);
    v73 = v205;
    DatabaseValue.init(featureValueData:)(v205);
    if (sub_1C44157D4(v73, 1, v71) == 1)
    {

      sub_1C4420C3C(v73, &qword_1EC0C1AE8, &qword_1C4F5D6A0);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v74 = sub_1C4F00978();
      sub_1C442B738(v74, qword_1EDE2DF70);
      v75 = sub_1C4F00968();
      v76 = sub_1C4F01CD8();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v220;
      v79 = v221;
      if (v77)
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1C43F8000, v75, v76, "FeatureSignalRowViewGenerator: Expected data to be an MLFeatureValue", v80, 2u);
        MEMORY[0x1C6942830](v80, -1, -1);
      }

      (*(v78 + 8))(v198, v79);
    }

    else
    {
      v211 = v43;
      v88 = v70;
      v89 = *(v70 + 32);
      v90 = v201;
      v89(v201, v73, v71);
      v91 = v221;
      (*(v220 + 16))(v72, v198, v221);
      sub_1C440BAA8(v72 + *(v202 + 20), 1, 1, v91);
      v92 = sub_1C465CC08(v72, *v214);
      if (!v92)
      {
        sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0D130;
        *(inited + 32) = 0x44495F444DLL;
        *(inited + 40) = 0xE500000000000000;
        v94 = sub_1C4EFF068();
        v95 = MEMORY[0x1E69A0138];
        *(inited + 72) = v69;
        *(inited + 80) = v95;
        *(inited + 48) = v94;
        *(inited + 56) = v96;
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        v92 = sub_1C4F00F28();
      }

      v97 = v92;
      if (v208 == 1)
      {
        v225 = v69;
        v226 = MEMORY[0x1E69A0138];
        *&v224 = v211;
        *(&v224 + 1) = v196;
        sub_1C441D670(&v224, v222);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = v97;
        v99 = v223;
        v100 = sub_1C4418280(v222, v223);
        v101 = *(*(v99 - 8) + 64);
        v102 = MEMORY[0x1EEE9AC00](v100);
        v104 = (&v195 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v105 + 16))(v104, v102);
        sub_1C4C0BA5C(*v104, v104[1], 0x495F7463656A626FLL, 0xE900000000000044, isUniquelyReferenced_nonNull_native, &v227);
        sub_1C440962C(v222);
        v90 = v201;
        v97 = v227;
      }

      else
      {
      }

      v119 = v220;
      if (*(v212 + 168) == 1)
      {
        *&v224 = v197;
        *(&v224 + 1) = v207;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v203, v213);
        v120 = v224;
        v225 = v71;
        v226 = MEMORY[0x1E699FE38];
        v121 = sub_1C4422F90(&v224);
        (*(v88 + 16))(v121, v90, v71);
        sub_1C441D670(&v224, v222);
        v122 = v90;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v97;
        v124 = v223;
        v125 = sub_1C4418280(v222, v223);
        v126 = *(*(v124 - 8) + 64);
        v127 = MEMORY[0x1EEE9AC00](v125);
        v129 = &v195 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v130 + 16))(v129, v127);
        v131 = v129;
        v71 = v217;
        sub_1C4C0B838(v131, v120, *(&v120 + 1), v123, &v227);
        sub_1C440962C(v222);

        v88 = v216;
      }

      else
      {
        v225 = v71;
        v226 = MEMORY[0x1E699FE38];
        v132 = sub_1C4422F90(&v224);
        (*(v88 + 16))(v132, v90, v71);
        sub_1C441D670(&v224, v222);
        v122 = v90;
        v133 = v213;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v134 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v97;
        v135 = v223;
        v136 = sub_1C4418280(v222, v223);
        v219 = &v195;
        v137 = *(*(v135 - 8) + 64);
        v138 = MEMORY[0x1EEE9AC00](v136);
        v140 = &v195 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v141 + 16))(v140, v138);
        sub_1C4C0B838(v140, v203, v133, v134, &v227);
        sub_1C440962C(v222);
      }

      v142 = v214;
      v143 = *v214;
      swift_isUniquelyReferenced_nonNull_native();
      *&v224 = *v142;
      v144 = v209;
      sub_1C4662AA0();
      *v142 = v224;
      sub_1C443CF2C(v144, type metadata accessor for EntityEdge);
      (*(v88 + 8))(v122, v71);
      (*(v119 + 8))(v198, v221);
    }

    return;
  }

  swift_bridgeObjectRelease_n();
  sub_1C48685A4(v48, v25);
  v49 = v221;
  if (sub_1C44157D4(v25, 1, v221) == 1)
  {

LABEL_10:
    sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v65 = sub_1C4F00978();
    sub_1C442B738(v65, qword_1EDE2DF70);
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_39;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1C43F8000, v66, v67, "FeatureSignalRowViewGenerator: Expected fields not present in input feature row", v68, 2u);
LABEL_38:
    MEMORY[0x1C6942830](v68, -1, -1);
LABEL_39:

    return;
  }

  v60 = v220;
  v61 = *(v220 + 32);
  v62 = v215;
  v61(v215, v25, v49);
  v63 = v208;
  sub_1C4A3E1CC(v48, v208);

  v64 = v49;
  if (sub_1C44157D4(v63, 1, v49) == 1)
  {
    (*(v60 + 8))(v62, v49);
    v25 = v63;
    goto LABEL_10;
  }

  v81 = v206;
  v61(v206, v63, v64);
  sub_1C44344B8(v218, v219);
  v82 = v199;
  DatabaseValue.init(featureValueData:)(v199);
  v83 = v217;
  if (sub_1C44157D4(v82, 1, v217) == 1)
  {
    sub_1C4420C3C(v82, &qword_1EC0C1AE8, &qword_1C4F5D6A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v84 = sub_1C4F00978();
    sub_1C442B738(v84, qword_1EDE2DF70);
    v85 = sub_1C4F00968();
    v86 = sub_1C4F01CD8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1C43F8000, v85, v86, "FeatureSignalRowViewGenerator: Expected data to be an MLFeatureValue", v87, 2u);
      MEMORY[0x1C6942830](v87, -1, -1);
    }
  }

  else
  {
    (*(v216 + 32))(v204, v82, v83);
    v106 = *(v60 + 16);
    v107 = v200;
    v106(v200, v62, v64);
    v108 = *(v202 + 20);
    v106((v107 + v108), v81, v64);
    sub_1C440BAA8(v107 + v108, 0, 1, v64);
    v109 = sub_1C465CC08(v107, *v214);
    v110 = MEMORY[0x1E699FE38];
    if (v109)
    {
      v111 = v109;
      v112 = v83;
      v81 = v206;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
      v163 = swift_initStackObject();
      *(v163 + 16) = xmmword_1C4F0CE60;
      *(v163 + 32) = 0x44495F444DLL;
      *(v163 + 40) = 0xE500000000000000;
      v112 = v83;
      *(v163 + 72) = v83;
      *(v163 + 80) = v110;
      sub_1C4422F90((v163 + 48));
      sub_1C4EFF058();
      *(v163 + 88) = 0x495F7463656A626FLL;
      *(v163 + 96) = 0xE900000000000044;
      v81 = v206;
      v164 = sub_1C4EFF068();
      v165 = MEMORY[0x1E69A0138];
      *(v163 + 128) = MEMORY[0x1E69E6158];
      *(v163 + 136) = v165;
      *(v163 + 104) = v164;
      *(v163 + 112) = v166;
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      v111 = sub_1C4F00F28();
    }

    if (*(v212 + 168) == 1)
    {
      *&v224 = v197;
      *(&v224 + 1) = v207;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](95, 0xE100000000000000);
      MEMORY[0x1C6940010](v203, v213);
      v167 = v224;
      v225 = v112;
      v226 = v110;
      v168 = sub_1C4422F90(&v224);
      (*(v216 + 16))(v168, v204, v112);
      sub_1C441D670(&v224, v222);
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v111;
      v170 = v223;
      v171 = sub_1C4418280(v222, v223);
      v172 = *(*(v170 - 8) + 64);
      v173 = MEMORY[0x1EEE9AC00](v171);
      v175 = &v195 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v176 + 16))(v175, v173);
      v177 = v175;
      v178 = v217;
      sub_1C4C0B838(v177, v167, *(&v167 + 1), v169, &v227);
      sub_1C440962C(v222);

      v81 = v206;
      v179 = v216;
    }

    else
    {
      v178 = v112;
      v225 = v112;
      v226 = v110;
      v180 = sub_1C4422F90(&v224);
      v181 = v216;
      (*(v216 + 16))(v180, v204, v112);
      sub_1C441D670(&v224, v222);
      v182 = v213;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      LODWORD(v218) = swift_isUniquelyReferenced_nonNull_native();
      v227 = v111;
      v183 = v223;
      v184 = sub_1C4418280(v222, v223);
      v219 = &v195;
      v185 = *(*(v183 - 8) + 64);
      v186 = MEMORY[0x1EEE9AC00](v184);
      v188 = &v195 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v189 + 16))(v188, v186);
      sub_1C4C0B838(v188, v203, v182, v218, &v227);
      sub_1C440962C(v222);
      v179 = v181;
    }

    v190 = v214;
    v191 = *v214;
    swift_isUniquelyReferenced_nonNull_native();
    *&v224 = *v190;
    v192 = v200;
    sub_1C4662AA0();
    *v190 = v224;
    sub_1C443CF2C(v192, type metadata accessor for EntityEdge);
    (*(v179 + 8))(v204, v178);
  }

  v193 = *(v60 + 8);
  v193(v81, v64);
  v193(v215, v64);
}

uint64_t sub_1C4C0A09C(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = type metadata accessor for ViewDatabaseArtifact.Property();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3[18];
  v9 = a3[19];
  v11 = sub_1C4409678(a3 + 15, v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v14);
  v17 = (*(v9 + 24))(v10, v9);
  (*(v12 + 8))(v16, v10);
  v18 = *(v17 + 16);
  if (v18)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v19 = v31;
    v20 = *(v5 + 80);
    v27[1] = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v22 = *(v5 + 72);
    do
    {
      sub_1C4C0B7DC(v21, v8);
      if (*(a2 + 16) && (v23 = sub_1C445FAA8(*v8, v8[1]), (v24 & 1) != 0))
      {
        sub_1C442E860(*(a2 + 56) + 40 * v23, v29);
        sub_1C443CF2C(v8, type metadata accessor for ViewDatabaseArtifact.Property);
        sub_1C441D670(v29, v30);
      }

      else
      {
        static DatabaseValue.emptyValue(forType:)(v8 + *(v28 + 20), v30);
        sub_1C443CF2C(v8, type metadata accessor for ViewDatabaseArtifact.Property);
      }

      v31 = v19;
      v25 = *(v19 + 16);
      if (v25 >= *(v19 + 24) >> 1)
      {
        sub_1C459D930();
        v19 = v31;
      }

      *(v19 + 16) = v25 + 1;
      sub_1C441D670(v30, v19 + 40 * v25 + 32);
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

uint64_t *sub_1C4C0A398()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C440962C(v0 + 10);
  sub_1C440962C(v0 + 15);
  v3 = v0[20];

  return v0;
}

uint64_t sub_1C4C0A3E0()
{
  sub_1C4C0A398();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C0A438(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v6 = v4;
  v68 = a3;
  v10 = _s10ViewConfigVMa(0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (qword_1EDDFECD0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v16))
  {
    v17 = sub_1C43FCED0();
    sub_1C44039A4(v17);
    sub_1C4402B90(&dword_1C43F8000, v18, v19, "FeatureSignalRowViewGenerationProvider: providing view");
    sub_1C440E904();
    sub_1C43FBE2C();
  }

  v20 = *(a4 + 16);
  sub_1C443A738(a1, a2, v21, v22, v23, v24, v25, v26);
  if (!v6)
  {
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CB8();
    v55 = a1;
    if (sub_1C43FDD64(v29))
    {
      v30 = sub_1C43FCED0();
      sub_1C44039A4(v30);
      sub_1C4402B90(&dword_1C43F8000, v31, v32, "FeatureSignalRowViewGenerationProvider: got view config");
      sub_1C440E904();
      sub_1C43FBE2C();
    }

    sub_1C4BE2E24(0x6449656C646E7562, 0xEB0000000070614DLL, v66);
    memcpy(__dst, v66, 0x48uLL);
    sub_1C46A9810(__dst, &v56);
    v6 = 0;
    v50 = sub_1C4AF460C();
    v53 = a2;
    v54 = v5;
    sub_1C4AF99F4(__dst);
    v56 = MEMORY[0x1E69E7CC8];
    a1 = sub_1C4428DA0();
    a4 = 0;
    v5 = v50 & 0xC000000000000001;
    a2 = v50 & 0xFFFFFFFFFFFFFF8;
    while (a1 != a4)
    {
      if (v5)
      {
        v51 = MEMORY[0x1C6940F90](a4, v50);
      }

      else
      {
        if (a4 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v51 = *(v50 + 8 * a4 + 32);
      }

      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      *&v65[0] = v51;
      sub_1C4C0AA00(&v56, v65);

      ++a4;
    }

    sub_1C4BCDE54(v66);
    v52 = v56;
    ViewGeneration.ViewClients.anyFeatureViewClient()(&v56);
    v33 = v57;
    if (v57)
    {
      v34 = v58;
      v35 = v56;

      sub_1C46B6BD8(v35, v33);

      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CB8();
      if (sub_1C43FDD64(v37))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v38, v39, "FeatureSignalRowViewGenerationProvider: got view loader");
        sub_1C43FBE2C();
      }

      v42 = sub_1C4C0B024(&v56, v54);
      v44 = v43;
      v20 = sub_1C4F00968();
      v45 = sub_1C4F01CB8();
      if (sub_1C43FDD64(v45))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v46, v47, "FeatureSignalRowViewGenerationProvider: got view store");
        sub_1C43FBE2C();
      }

      sub_1C442E860(&v56, v65);
      _s29FeatureSignalRowViewGeneratorCMa();
      swift_allocObject();
      sub_1C43FBE94();
      v63 = type metadata accessor for ViewDatabaseArtifact();
      v64 = &off_1F4405BC8;
      *&v62 = v34;
      v60 = &type metadata for ViewGeneration.FeatureViewClient;
      v61 = &off_1F43EC500;
      v48 = swift_allocObject();
      *&v59 = v48;
      v48[2] = 0x7365727574616566;
      v48[3] = 0xE800000000000000;
      v48[4] = 30315;
      v48[5] = 0xE200000000000000;
      v48[6] = v34;
      sub_1C440962C(&v56);
      sub_1C441A804();
      sub_1C443CF2C(v54, v49);
      *(v20 + 160) = 0;
      sub_1C441D670(&v62, v20 + 40);
      sub_1C441D670(&v59, v20 + 80);
      sub_1C441D670(v65, v20 + 120);
      *(v20 + 16) = v55;
      *(v20 + 24) = v53;
      *(v20 + 32) = v42;
      *(v20 + 160) = v52;
      *(v20 + 168) = v44 & 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {

      v20 = 0x80000001C4FB9AE0;
      sub_1C450B034();
      sub_1C43FFB2C();
      *v40 = 0xD000000000000014;
      *(v40 + 8) = 0x80000001C4FB9AE0;
      *(v40 + 16) = 0xD000000000000035;
      *(v40 + 24) = 0x80000001C4FB9B00;
      *(v40 + 32) = 0;
      *(v40 + 40) = 0xE000000000000000;
      *(v40 + 48) = v65[0];
      *(v40 + 64) = 0;
      swift_willThrow();
      sub_1C441A804();
      sub_1C443CF2C(v54, v41);
    }
  }

  return v20;
}

void sub_1C4C0AA00(uint64_t a1, uint64_t *a2)
{
  v44 = a1;
  v4 = sub_1C4EFB258();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v15 = sub_1C4EFF0C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  sub_1C4EFBC68();
  if (v41)
  {
    sub_1C441D670(&v40, v42);
    sub_1C4EFBC68();
    if (v41)
    {
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if (swift_dynamicCast())
      {
        v37[0] = v39[0];
        v37[1] = v39[1];
        v37[2] = v2;
        v21 = v43;
        v22 = sub_1C4409678(v42, v43);
        v41 = v21;
        v23 = sub_1C4422F90(&v40);
        (*(*(v21 - 8) + 16))(v23, v22, v21);
        sub_1C4C82A1C(&v40);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {

          sub_1C4420C3C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
          if (qword_1EDDFECD0 != -1)
          {
            swift_once();
          }

          v24 = sub_1C4F00978();
          sub_1C442B738(v24, qword_1EDE2DF70);
          sub_1C442E860(v42, &v40);
          v25 = sub_1C4F00968();
          v26 = sub_1C4F01CD8();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v39[0] = v28;
            *v27 = 136315138;
            sub_1C4409678(&v40, v41);
            sub_1C4EFB938();
            sub_1C4C0BF14(&qword_1EC0C35A0, MEMORY[0x1E699FE40]);
            v29 = sub_1C4F02858();
            v31 = v30;
            (*(v38 + 8))(v7, v4);
            sub_1C440962C(&v40);
            v32 = sub_1C441D828(v29, v31, v39);

            *(v27 + 4) = v32;
            _os_log_impl(&dword_1C43F8000, v25, v26, "BundleIDMap: Could not cast %s to EntityIdentifier", v27, 0xCu);
            sub_1C440962C(v28);
            MEMORY[0x1C6942830](v28, -1, -1);
            MEMORY[0x1C6942830](v27, -1, -1);
          }

          else
          {

            sub_1C440962C(&v40);
          }

          sub_1C440962C(v42);
        }

        else
        {
          (*(v16 + 32))(v19, v14, v15);
          (*(v16 + 16))(v11, v19, v15);
          sub_1C440BAA8(v11, 0, 1, v15);
          sub_1C4C80730();
          (*(v16 + 8))(v19, v15);
          sub_1C440962C(v42);
        }

        return;
      }
    }

    else
    {
      sub_1C4420C3C(&v40, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    sub_1C440962C(v42);
  }

  else
  {
    sub_1C4420C3C(&v40, &qword_1EC0B9038, &unk_1C4F231C0);
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v33 = sub_1C4F00978();
  sub_1C442B738(v33, qword_1EDE2DF70);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CD8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C43F8000, v34, v35, "BundleIDMap: Unexpected id or bundle id type", v36, 2u);
    MEMORY[0x1C6942830](v36, -1, -1);
  }
}

uint64_t sub_1C4C0B024(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ViewDatabaseArtifact.Property();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  v57 = MEMORY[0x1E69E7CC0];
  v11 = *(a2 + 128);
  if (!v11)
  {
    v16 = *a2;
    v17 = *(a2 + 8);
    sub_1C450B034();
    sub_1C43FFB2C();
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0xD000000000000010;
    *(v18 + 24) = 0x80000001C4F86960;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v54;
    *(v18 + 64) = 1;
    swift_willThrow();
LABEL_22:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_23;
  }

  v48 = a1;
  v12 = *(a2 + 120);
  v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C07CD8(v13, v12 & 1, &v57);
  v15 = *a2;
  v14 = *(a2 + 8);
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  if (v2)
  {

LABEL_23:

    return v11;
  }

  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C4B88, &qword_1C4F5D790);
  if (!swift_dynamicCast())
  {

    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    sub_1C4420C3C(&v51, &qword_1EC0C4B90, qword_1C4F5D798);
    sub_1C450B034();
    v37 = sub_1C43FFB2C();
    v38->n128_u64[0] = v15;
    v38->n128_u64[1] = v14;
    v38[1].n128_u64[0] = 0xD000000000000026;
    v38[1].n128_u64[1] = 0x80000001C4FB9B40;
    sub_1C4411340(v49, v50, v37, v38);
    goto LABEL_22;
  }

  v42 = v15;
  v43 = v14;
  result = sub_1C460986C(&v51, &v54);
  v20 = v57;
  v45 = *(v57 + 16);
  if (!v45)
  {
LABEL_20:
    v33 = v55;
    v34 = v56;
    v35 = sub_1C4409678(&v54, v55);
    v48[3] = v33;
    v48[4] = v34;
    v36 = sub_1C4422F90(v48);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    sub_1C440962C(&v54);

    return v11;
  }

  v21 = 0;
  v46 = v57 + 32;
  v44 = v57;
  while (2)
  {
    if (v21 < *(v20 + 16))
    {
      v22 = (v46 + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v47 = v21 + 1;
      v25 = v55;
      v26 = v56;
      sub_1C4409678(&v54, v55);
      v27 = *(v26 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = v27(v25, v26);
      v28 = result;
      v29 = 0;
      v30 = *(result + 16);
      while (1)
      {
        if (v30 == v29)
        {

          v51.n128_u64[0] = 0;
          v51.n128_u64[1] = 0xE000000000000000;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F02248();

          v51.n128_u64[0] = 0xD000000000000023;
          v51.n128_u64[1] = 0x80000001C4FB9B70;
          MEMORY[0x1C6940010](v23, v24);

          v39 = v51;
          sub_1C450B034();
          v40 = sub_1C43FFB2C();
          v41->n128_u64[0] = v42;
          v41->n128_u64[1] = v43;
          v41[1] = v39;
          sub_1C4411340(v51, v52, v40, v41);
          sub_1C440962C(&v54);
          goto LABEL_23;
        }

        if (v29 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_1C4C0B7DC(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v10);
        if (*v10 == v23 && v10[1] == v24)
        {
          break;
        }

        ++v29;
        v32 = sub_1C4F02938();
        result = sub_1C4412828();
        if (v32)
        {
          goto LABEL_19;
        }
      }

      sub_1C4412828();
LABEL_19:

      v21 = v47;
      v20 = v44;
      if (v47 != v45)
      {
        continue;
      }

      goto LABEL_20;
    }

    break;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C4C0B52C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = a1[1];
  v23 = *a1;
  v5 = a1[2];
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = a1[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C443D664();
    v9 = v8;
    sub_1C4C079AC();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      if (a2)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v13, v12);

        v13 = v23;
        v12 = v4;
        v14 = *a3;
      }

      else
      {
        v14 = *a3;
        v15 = *v11;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v14 + 16);
        sub_1C443D664();
        v14 = v20;
        *a3 = v20;
      }

      v17 = *(v14 + 16);
      if (v17 >= *(v14 + 24) >> 1)
      {
        sub_1C443D664();
        v14 = v21;
        *a3 = v21;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v12;
      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1C4C0B6E4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1C4C0A438(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t type metadata accessor for EntityEdge()
{
  result = qword_1EDDED1E0;
  if (!qword_1EDDED1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C0B7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4C0B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1C4EFB258();
  v31 = v9;
  v32 = MEMORY[0x1E699FE38];
  v10 = sub_1C4422F90(&v30);
  (*(*(v9 - 8) + 32))(v10, a1, v9);
  v11 = *a5;
  v12 = sub_1C445FAA8(a2, a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *a5;
  v17 = sub_1C445FAA8(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a5;
  if (v15)
  {
    v20 = (v19[7] + 40 * v14);
    sub_1C440962C(v20);
    return sub_1C441D670(&v30, v20);
  }

  else
  {
    v22 = v31;
    v23 = sub_1C4418280(&v30, v31);
    v24 = *(*(v22 - 8) + 64);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    sub_1C4C0BCD0(v14, a2, a3, v27, v19);
    sub_1C440962C(&v30);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C0BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69A0138];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v10 = *a6;
  v11 = sub_1C445FAA8(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a6;
  v16 = sub_1C445FAA8(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a6;
  if (v14)
  {
    v19 = (v18[7] + 40 * v13);
    sub_1C440962C(v19);
    return sub_1C441D670(&v28, v19);
  }

  else
  {
    v21 = sub_1C4418280(&v28, v9);
    v22 = *(*(v9 - 8) + 64);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    sub_1C4C0BC40(v13, a3, a4, *v25, v25[1], v18);
    sub_1C440962C(&v28);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C0BC40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69A0138];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1C441D670(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1C4C0BCD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C4EFB258();
  v18 = v10;
  v19 = MEMORY[0x1E699FE38];
  v11 = sub_1C4422F90(&v17);
  (*(*(v10 - 8) + 32))(v11, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1C441D670(&v17, a5[7] + 40 * a1);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void sub_1C4C0BDE0()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4C0BE64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4C0BE64()
{
  if (!qword_1EDDFCC90)
  {
    sub_1C4EFF0C8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCC90);
    }
  }
}

uint64_t sub_1C4C0BF14(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C4C0BF5C(uint64_t *a1)
{
  v97[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1C442B870(a1, v97);
  sub_1C440925C(v4, v5, v6, MEMORY[0x1E69E6530], v7, v8, v9, v10, v83, v90);
  v11 = swift_dynamicCast();
  if ((v11 & 1) == 0)
  {
    sub_1C447F344(v11, v12, v13);
    v15 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C440925C(v15, v16, v17, v18, v19, v20, v21, v22, v84, v91);
    v23 = swift_dynamicCast();
    if (v23)
    {
      sub_1C4418C40();
      sub_1C43FCFC0();
      sub_1C4F019B8();
      v26 = [v1 featureValueWithDouble_];
    }

    else
    {
      v27 = sub_1C447F344(v23, v24, v25);
      sub_1C440925C(v27, v28, v29, MEMORY[0x1E69E6158], v30, v31, v32, v33, v85, v92);
      v34 = swift_dynamicCast();
      if ((v34 & 1) == 0)
      {
        sub_1C447F344(v34, v35, v36);
        v39 = sub_1C456902C(&qword_1EC0C4B98, &unk_1C4F5D8D0);
        sub_1C440925C(v39, v40, v41, v39, v42, v43, v44, v45, v86, v93);
        v46 = swift_dynamicCast();
        if (v46)
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v50 = sub_1C4F00EC8();

          v97[0] = 0;
          v14 = [ObjCClassFromMetadata featureValueWithDictionary:v50 error:v97];

          if (v14)
          {
            v51 = v97[0];
            goto LABEL_8;
          }

          v74 = v97[0];
          sub_1C43FCFC0();
          v75 = sub_1C4EF97A8();

          swift_willThrow();
        }

        else
        {
          sub_1C447F344(v46, v47, v48);
          v52 = sub_1C456902C(&qword_1EC0C4B50, &qword_1C4F5D518);
          sub_1C440925C(v52, v53, v54, v52, v55, v56, v57, v58, v87, v94);
          v59 = swift_dynamicCast();
          if (v59)
          {
            v62 = sub_1C4418C40();
            sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
            sub_1C43FCFC0();
            v15 = sub_1C4C0C460();
            v26 = [v62 featureValueWithSequence_];
            goto LABEL_7;
          }

          sub_1C447F344(v59, v60, v61);
          v63 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C440925C(v63, v64, v65, v63, v66, v67, v68, v69, v88, v95);
          v70 = swift_dynamicCast();
          if (v70)
          {
            v73 = sub_1C4418C40();
            sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
            sub_1C43FCFC0();
            v15 = sub_1C4C0C4E4();
            v26 = [v73 featureValueWithSequence_];
            goto LABEL_7;
          }

          sub_1C447F344(v70, v71, v72);
          v76 = sub_1C4461BB8(0, &qword_1EC0C4B58, 0x1E695FED0);
          sub_1C440925C(v76, v77, v78, v76, v79, v80, v81, v82, v89, v96);
          if (swift_dynamicCast())
          {
            v26 = [sub_1C4418C40() featureValueWithMultiArray_];
            goto LABEL_7;
          }
        }

        sub_1C440962C(a1);
        v14 = 0;
        goto LABEL_9;
      }

      swift_getObjCClassFromMetadata();
      sub_1C43FCFC0();
      v15 = sub_1C4F01108();

      v26 = [v1 featureValueWithString_];
    }

LABEL_7:
    v14 = v26;

    goto LABEL_8;
  }

  v14 = [sub_1C4418C40() featureValueWithInt64_];
LABEL_8:
  sub_1C440962C(a1);
LABEL_9:
  v37 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1C4C0C2D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4C81AA0();
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      *a3 = v9;
      *(a3 + 16) = v10;
      *(a3 + 24) = v11;
    }

    else
    {
      sub_1C450B034();
      sub_1C43FFB2C();
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 16) = 0xD000000000000011;
      *(v7 + 24) = 0x80000001C4FB9E10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C0C3D4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16))();
  v7[2] = a1;
  v7[3] = a2;
  v8 = v2;
  v6 = sub_1C45DAF78(sub_1C4C11118, v7, v5);

  sub_1C4598364(v6);
}

id sub_1C4C0C460()
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v0 = sub_1C4F01658();

  v1 = [swift_getObjCClassFromMetadata() sequenceWithInt64Array_];

  return v1;
}

id sub_1C4C0C4E4()
{
  v0 = sub_1C4F01658();

  v1 = [swift_getObjCClassFromMetadata() sequenceWithStringArray_];

  return v1;
}

uint64_t sub_1C4C0C550(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  (*(a2 + 8))(a1, a2);
  v11 = *v10;
  v12 = v10[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407E80();
  sub_1C443C0C8(v10, v13);
  return v11;
}

uint64_t sub_1C4C0C5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EC0C4998) = 0;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a1 + 32);
  sub_1C441A81C();
  sub_1C4C110B8(v8, v3 + v6, v7);
  *(v3 + qword_1EC152D20) = a3;
  return v3;
}

uint64_t ViewGeneration.FeatureViewClient.storage.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  a1[3] = &type metadata for ViewFeatureDatabaseTable;
  a1[4] = &protocol witness table for ViewFeatureDatabaseTable;
  sub_1C44006A8();
  v8 = swift_allocObject();
  *a1 = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t ViewGeneration.FeatureViewClient.featureViewStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

__n128 sub_1C4C0C764@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C4C0C7F4(a1, a2, &v10);
  if (!v3)
  {
    v6 = v11;
    v8 = v12;
    v9 = v10;
    a3[3] = &type metadata for ViewGeneration.FeatureViewClient;
    a3[4] = &off_1F4403470;
    sub_1C44006A8();
    v7 = swift_allocObject();
    *a3 = v7;
    result = v8;
    *(v7 + 16) = v9;
    *(v7 + 32) = v6;
    *(v7 + 40) = v8;
  }

  return result;
}

void sub_1C4C0C7F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C44E9220();
  if (!v3)
  {
    a3[2] = 30315;
    a3[3] = 0xE200000000000000;
    a3[4] = v7;
    *a3 = a1;
    a3[1] = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C0C860(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for ViewFeatureDatabaseTable;
  a3[4] = &protocol witness table for ViewFeatureDatabaseTable;
  sub_1C44006A8();
  v7 = swift_allocObject();
  *a3 = v7;
  sub_1C4C0C7F4(a1, a2, (v7 + 16));
  if (v3)
  {
    sub_1C47C41F8(a3);
  }
}

void sub_1C4C0C90C(uint64_t a1, uint64_t a2)
{
  sub_1C4C0C7F4(a1, a2, v3);
  if (!v2)
  {
    v3[0] = v4;
    v3[1] = v5;
    v4 = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D35E0();
  }
}

void sub_1C4C0C9A8(uint64_t a1, uint64_t a2)
{
  sub_1C4C0C7F4(a1, a2, v11);
  if (!v2)
  {
    v4 = v11[1];
    v5 = v11[3];
    v6 = v12;
    v7 = *(v12 + 16);
    MEMORY[0x1EEE9AC00](v3);
    v10[2] = v8;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = v9;
    v10[6] = v4;
    sub_1C446C37C(sub_1C4C10B24, v10);
  }
}

uint64_t sub_1C4C0CA68(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB9C80);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4FB9CA0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB9CD0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD00000000000002BLL, 0x80000001C4FB9CF0);
  sub_1C446C0B8();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FB9D20);
  sub_1C44412A4();
  sub_1C44E9220();
  if (v2)
  {
  }

  v6 = v5;
  sub_1C44412A4();
  sub_1C44E9220();
  v8 = v7;
  v9 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v27[2] = v10;
  v27[3] = 0;
  v27[4] = 0xE000000000000000;
  v27[5] = a1;
  v27[6] = a2;

  sub_1C4418704(sub_1C4C10AF8, v27, v11, v12, v13, v14, v15, v16, v27[0], v27[1]);

  v17 = *(v6 + 16);

  sub_1C4418704(sub_1C4C0D094, 0, v18, v19, v20, v21, v22, v23, v28, v29);

  v24 = *(v6 + 16);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C46BC6FC();

  sub_1C4EFB2E8();

  v25 = *(*(v8 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);

  sub_1C4EFAEB8();
}

uint64_t sub_1C4C0CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v34 = a6;
  v35 = a3;
  v32 = a5;
  v40 = sub_1C4EFB768();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = sub_1C4EF98F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1C4F02248();

  v38 = 0xD000000000000016;
  v39 = 0x80000001C4FB9D60;
  (*(v14 + 16))(v17, *(a2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v13);
  v18 = sub_1C4EF98D8();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  MEMORY[0x1C6940010](v18, v20);

  MEMORY[0x1C6940010](0x68746F2053412027, 0xEA00000000007265);
  sub_1C4EFB758();
  v21 = v37;
  sub_1C4EFBFF8();
  if (v21)
  {
    (*(v7 + 8))(v12, v40);
  }

  else
  {
    v23 = *(v7 + 8);
    v24 = v12;
    v25 = v40;
    v23(v24, v40);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C4F0C890;
    v27 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69A0138];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v28;
    v29 = v32;
    *(v26 + 32) = v32;
    v30 = v34;
    *(v26 + 40) = v34;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;
    *(v26 + 136) = v27;
    *(v26 + 144) = v28;
    *(v26 + 112) = v29;
    *(v26 + 120) = v30;
    swift_bridgeObjectRetain_n();
    v31 = v33;
    sub_1C4EFB728();
    sub_1C4EFBFF8();
    return (v23)(v31, v25);
  }
}

uint64_t sub_1C4C0D094()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v4, v0);
}

double sub_1C4C0D1D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  *&result = sub_1C4C0C764(a1, a2, a3).n128_u64[0];
  return result;
}

void *sub_1C4C0D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[2] = a1;
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[4] = a3;
  return v3;
}

uint64_t sub_1C4C0D2B0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v730) = a3;
  v754 = a2;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v722 = v10 - v9;
  sub_1C43FBE44();
  v11 = type metadata accessor for Configuration();
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v721 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v720 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v717 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v718 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v726 = &v705 - v23;
  sub_1C43FBE44();
  v729 = sub_1C4EF9E58();
  sub_1C43FCE64();
  v713 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v712 = v29 - v28;
  sub_1C43FBE44();
  sub_1C4EF9F88();
  sub_1C43FCE64();
  v715 = v31;
  v716 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v714 = v35 - v34;
  sub_1C43FBE44();
  v36 = type metadata accessor for DateFetcher();
  v37 = sub_1C43FBD18(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v711 = v41 - v40;
  sub_1C43FBE44();
  v728 = sub_1C4EFCE48();
  sub_1C43FCE64();
  v724 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  v723 = v47 - v46;
  v48 = sub_1C43FBE44();
  v49 = _s10ViewConfigVMa(v48);
  v50 = sub_1C43FBD18(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  v719 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  v725 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v705 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v705 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v705 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v705 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v705 - v69;
  v727 = v3;
  v71 = *(v3 + 16);
  v72 = *(v71 + 16);

  v731 = a1;
  v73 = v732;
  sub_1C443A738(a1, v754, v74, v75, v76, v77, v78, v79);
  if (v73)
  {

    return v72;
  }

  v707 = v58;
  v708 = v61;
  v709 = v64;
  v710 = v67;
  v81 = v728;
  v80 = v729;
  v732 = v70;

  v82 = v731;
  v83 = v754;
  v72 = v71;
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  v84 = sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    sub_1C44206C8();
    sub_1C450B034();
    sub_1C43FFB2C();
    *v103 = v82;
    *(v103 + 8) = v83;
    *(v103 + 16) = xmmword_1C4F5B670;
    *(v103 + 32) = 0xD000000000000025;
    *(v103 + 40) = v72;
    *(v103 + 48) = v745[0];
    *(v103 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_7:
    sub_1C4407E80();
    v105 = v732;
LABEL_8:
    sub_1C443C0C8(v105, v104);
    return v72;
  }

  v752[0] = v746[0];
  v752[1] = v746[1];
  v753 = *&v746[2];
  v85 = v732[112];
  v754 = v84;
  v86 = *(v732 + 10);
  v87 = *(v732 + 11);
  v89 = *(v732 + 12);
  v88 = *(v732 + 13);
  switch(v85)
  {
    case 0:
      v90 = *(v732 + 11);
      v91 = *(v732 + 12);
      sub_1C440B604();
      sub_1C442D6E0();
      v92 = v86;
      v94 = v93;
      v95 = v725;
      sub_1C4431074(v93, v725, v96);
      sub_1C4401144();
      v98 = v726;
      sub_1C4431074(v72 + v97, v726, v99);
      v100 = *(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v101 = type metadata accessor for BehaviorSequenceSignalView();
      sub_1C44099C4(v101);
      v72 = sub_1C4BCDEB8(&v747, v95, v92, v98, v100, v90, *&v89);
      sub_1C4407E80();
      sub_1C443C0C8(v94, v102);
      return v72;
    case 1:
      sub_1C440B604();
      sub_1C441A81C();
      v165 = v710;
      sub_1C4C110B8(v166, v710, v167);
      v168 = type metadata accessor for BiomeSignalView();
      sub_1C44099C4(v168);
      v169 = sub_1C441CEB0();
      v72 = sub_1C463E1A0(v169, v165, v86, v87, v89);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return v72;
    case 2:
      sub_1C440B604();
      sub_1C442D6E0();
      v126 = v125;
      v127 = v710;
      sub_1C4431074(v125, v710, v128);
      v129 = sub_1C4412850();
      sub_1C4C10C14(v129, v130, v131, v132, 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v133 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4499940(v133, v134, v135, v136, v137, v138, v139, v140, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718);
      v142 = v141;
      sub_1C4407E80();
      sub_1C443C0C8(v126, v143);
      v144 = type metadata accessor for BiomeSQLView();
      sub_1C44099C4(v144);
      v72 = sub_1C4BD1CD4(&v747, v127, v86, v142);
      v145 = sub_1C4412850();
      sub_1C4C10CD0(v145, v146, v147, v148, 2);
      return v72;
    case 3:
      sub_1C440B604();
      sub_1C442D6E0();
      v150 = v149;
      sub_1C440A1B8();
      sub_1C4431074(v151, v152, v153);
      v154 = type metadata accessor for CurrentTimeSignalView(0);
      sub_1C44099C4(v154);
      v155 = sub_1C441CEB0();
      v72 = sub_1C46A60E8(v155, v86, v86, v87 & 1);
      sub_1C4407E80();
      sub_1C443C0C8(v150, v156);
      return v72;
    case 4:
      v110 = sub_1C4412850();
      sub_1C4C10C28(v110, v111, v112, v113, 4);
      v114 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v114, v115, v116);
      v728 = v72;
      v729 = v88;
      v730 = v86;
      sub_1C4405430();
      v191 = *(v89 + 16);
      v80 = MEMORY[0x1E69E7CC0];
      v731 = v87;
      if (!v191)
      {
        goto LABEL_35;
      }

      *&v742 = MEMORY[0x1E69E7CC0];
      v72 = &v742;
      v754 = v191;
      sub_1C459DC38();
      v193 = 0;
      v80 = v742;
      v194 = (v89 + 40);
      do
      {
        v117 = *(v89 + 16);
        if (v193 >= v117)
        {
          __break(1u);
          goto LABEL_94;
        }

        v72 = *v194;
        *&v745[0] = *(v194 - 1);
        *(&v745[0] + 1) = v72;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C105B8(v745, v727, &v739, v746);
        v86 = v89;

        *&v742 = v80;
        v195 = *(v80 + 16);
        if (v195 >= *(v80 + 24) >> 1)
        {
          v72 = &v742;
          sub_1C459DC38();
          v80 = v742;
        }

        ++v193;
        *(v80 + 16) = v195 + 1;
        sub_1C441D670(v746, v80 + 40 * v195 + 32);
        ++v194;
        v89 = v86;
      }

      while (v754 != v193);
LABEL_35:
      v240 = *(v727 + 24);
      v241 = *(v728 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v242 = type metadata accessor for BehaviorHistoryUtility();
      sub_1C44099C4(v242);

      v243 = sub_1C441E7B4(v241);
      v706 = v89;
      v322 = v243;
      sub_1C46DA590(v750, v745);
      if (*(&v745[1] + 1))
      {
        sub_1C441D670(v745, v746);
        v323 = type metadata accessor for ContextTimeIntervalAggregator();
        sub_1C44692E0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v395 = sub_1C4695EE4(v80, v745, &v742);
        sub_1C44692E0();
        sub_1C442E860(v746, &v739);
        v396 = *(v727 + 32);
        sub_1C4418280(&v742, *(&v743 + 1));
        sub_1C44354F0();
        v754 = v397;
        sub_1C43FCE64();
        v399 = *(v398 + 64);
        MEMORY[0x1EEE9AC00](v400);
        v402 = sub_1C44206A8(v401, v705);
        v403(v402);
        v322 = *v322;
        v404 = type metadata accessor for BehaviorDatabaseEventTracker();
        v737 = v404;
        v738 = &off_1F43E2390;
        v736[0] = v322;
        v734 = v323;
        v735 = &off_1F43E6990;
        *&v733 = v395;
        type metadata accessor for BehaviorFeaturizer();
        v405 = swift_allocObject();
        sub_1C4418280(v736, v404);
        sub_1C43FCE64();
        v407 = *(v406 + 64);
        MEMORY[0x1EEE9AC00](v408);
        v410 = sub_1C44206A8(v409, v705);
        v411(v410);
        v412 = *v322;
        v405[10] = v404;
        v405[11] = &off_1F43E2390;
        v405[7] = v412;
        v405[18] = 0x413BAF8000000000;

        sub_1C440962C(v746);
        v405[19] = 0xD000000000000023;
        v405[20] = 0x80000001C4F8DA80;
        sub_1C441D670(v745, (v405 + 2));
        sub_1C441D670(&v739, (v405 + 12));
        v405[17] = v396;
        sub_1C441D670(&v733, (v405 + 21));
        sub_1C440962C(v736);
        sub_1C440962C(&v742);
      }

      else
      {

        sub_1C4420C3C(v745, &qword_1EC0BB460, &qword_1C4F5D900);
        v405 = 0;
      }

      sub_1C442D6E0();
      v244 = v732;
      v245 = v710;
      sub_1C4431074(v732, v710, v246);
      v247 = sub_1C440258C();
      sub_1C442E860(v247, v746);
      v248 = *(v727 + 32);
      sub_1C4418280(v746, *(&v746[1] + 1));
      sub_1C44354F0();
      v754 = v249;
      sub_1C43FCE64();
      v251 = *(v250 + 64);
      MEMORY[0x1EEE9AC00](v252);
      v254 = sub_1C44206A8(v253, v705);
      v255(v254);
      v256 = *v322;
      sub_1C4C10D8C(v752, v745);

      v72 = sub_1C4C10DE8(v752, v245, v80, v405, v256, v248);

      v257 = sub_1C4426158();
      sub_1C4434758(v257, v258, v259, v260, 4);
      sub_1C4707ED4(&v747);
      sub_1C4407E80();
      sub_1C443C0C8(v244, v261);
      sub_1C440962C(v746);
      return v72;
    case 5:
      v170 = sub_1C4412850();
      sub_1C4C10C28(v170, v171, v172, v173, 5);
      v174 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v174, v175, v176);
      v729 = v88;
      v730 = v86;
      v731 = v87;
      sub_1C4405430();
      v228 = v727;
      v229 = *(v727 + 24);
      v230 = *(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
      v231 = type metadata accessor for BehaviorHistoryUtility();
      sub_1C44099C4(v231);

      v232 = sub_1C4624330(v229, v230);
      v706 = v89;
      v283 = v232;
      v754 = 0;
      sub_1C46DA590(v750, v745);
      if (*(&v745[1] + 1))
      {
        sub_1C441D670(v745, v746);
        v728 = type metadata accessor for BehaviorFeaturizer();
        sub_1C442E860(v751, v745);
        sub_1C442E860(v746, &v742);
        v229 = *(v228 + 32);
        sub_1C4418280(v745, *(&v745[1] + 1));
        sub_1C44354F0();
        v726 = v284;
        sub_1C43FCE64();
        v286 = *(v285 + 64);
        MEMORY[0x1EEE9AC00](v287);
        v289 = sub_1C44206A8(v288, v705);
        v290(v289);
        v291 = *(&v743 + 1);
        v292 = v744;
        sub_1C4418280(&v742, *(&v743 + 1));
        sub_1C43FCE64();
        v294 = *(v293 + 64);
        MEMORY[0x1EEE9AC00](v295);
        v297 = sub_1C43FD7EC(v296, v705);
        v298(v297);
        *&v739 = v283;
        v299 = type metadata accessor for BehaviorDatabaseEventTracker();

        v300 = v291;
        v228 = v727;
        v301 = sub_1C460784C(&v739, v230, 0, v229, v728, v231, v300, v299, &off_1F43E41D8, v292, &off_1F43E2390);
        sub_1C440962C(v746);
        sub_1C440962C(&v742);
        sub_1C440962C(v745);
        v728 = v301;
      }

      else
      {

        sub_1C4420C3C(v745, &qword_1EC0BB460, &qword_1C4F5D900);
        v728 = 0;
      }

      sub_1C442D6E0();
      v341 = v732;
      sub_1C4431074(v732, v710, v342);
      v343 = sub_1C440258C();
      sub_1C442E860(v343, v746);
      v344 = *(v228 + 32);
      v345 = sub_1C4418280(v746, *(&v746[1] + 1));
      sub_1C4430284(v345, v346, v347, v348, v349, v350, v351, v352, v705);
      sub_1C43FCE64();
      v354 = *(v353 + 64);
      MEMORY[0x1EEE9AC00](v355);
      sub_1C43FBCC4();
      v357 = sub_1C4408C64(v356);
      v358(v357);
      v72 = *v229;
      v359 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
      *(&v745[1] + 1) = v359;
      *&v745[2] = &off_1F43E2510;
      *&v745[0] = v72;
      v360 = type metadata accessor for EntityRelevanceFeatureView();
      sub_1C44099C4(v360);
      v361 = sub_1C442EDA0();
      sub_1C4418280(v361, v359);
      sub_1C43FCE64();
      v363 = *(v362 + 64);
      MEMORY[0x1EEE9AC00](v364);
      v366 = sub_1C44206A8(v365, v705);
      v367(v366);
      v368 = *v230;
      v369 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider);
      v369[3] = v359;
      v369[4] = &off_1F43E2510;

      v370 = v728;

      v371 = sub_1C4426158();
      sub_1C4C10CD0(v371, v372, v373, v374, 5);
      *v369 = v368;
      sub_1C4707ED4(&v747);
      sub_1C4407E80();
      sub_1C443C0C8(v341, v375);
      sub_1C44113A8();
      sub_1C441A81C();
      sub_1C4C110B8(v710, v72 + v376, v377);
      *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_featurizer) = v370;
      *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_keyValueStore) = v344;
      sub_1C440962C(v745);
      sub_1C440962C(v746);
      sub_1C4426ED8();
      return v72;
    case 6:
      v177 = sub_1C4412850();
      sub_1C4C10C14(v177, v178, v179, v180, 6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v181 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v181, v182, v183);
      sub_1C4405430();
      sub_1C4450068();
      v302 = v72;
      v729 = v88;
      v72 = sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
      if (sub_1C440C02C())
      {
        v303 = v86;
        v80 = *(&v740 + 1);
        v304 = v741;
        sub_1C4409678(&v739, *(&v740 + 1));
        v305 = v304[2];
        v306 = sub_1C43FBD30();
        v307(v306, v304);
        sub_1C440962C(&v739);
        if (*(&v743 + 1))
        {
          if (sub_1C4460448())
          {
            if (*(&v745[0] + 1))
            {
              v706 = v89;
              v730 = v303;
              v731 = v87;

              memcpy(v746, v745, 0x50uLL);
              v308 = *(v727 + 24);
              v309 = *(v302 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
              v310 = type metadata accessor for BehaviorHistoryUtility();
              v311 = sub_1C44099C4(v310);

              sub_1C441E7B4(v309);
              sub_1C443F3B4();
              if (*(&v743 + 1))
              {
                sub_1C441D670(&v742, v745);
                v728 = type metadata accessor for BehaviorFeaturizer();
                sub_1C442E860((v309 + 16), &v742);
                sub_1C442E860(v745, &v739);
                v425 = sub_1C441C560();
                sub_1C4430284(v425, v426, v427, v428, v429, v430, v431, v432, v705);
                sub_1C43FCE64();
                v434 = *(v433 + 64);
                MEMORY[0x1EEE9AC00](v435);
                v437 = sub_1C44206A8(v436, v705);
                v438(v437);
                v311 = v741;
                sub_1C4418280(&v739, *(&v740 + 1));
                sub_1C444B34C();
                sub_1C43FCE64();
                v440 = *(v439 + 64);
                MEMORY[0x1EEE9AC00](v441);
                v443 = sub_1C43FD7EC(v442, v705);
                v444(v443);
                v736[0] = v308;
                type metadata accessor for BehaviorDatabaseEventTracker();

                sub_1C441F014(&off_1F43E41D8, v703, v704, &off_1F43E2390);
                v445 = sub_1C442EDA0();
                sub_1C440962C(v445);
                sub_1C440962C(&v739);
                sub_1C440962C(&v742);
                sub_1C4426ED8();
                v728 = v308;
              }

              else
              {

                sub_1C4420C3C(&v742, &qword_1EC0BB460, &qword_1C4F5D900);
                v728 = 0;
              }

              sub_1C442D6E0();
              sub_1C4431074(v732, v710, v474);
              v475 = sub_1C440258C();
              sub_1C442E860(v475, v745);
              sub_1C442E860(&v746[2] + 8, &v742);
              v476 = sub_1C4418280(v745, *(&v745[1] + 1));
              sub_1C4430284(v476, v477, v478, v479, v480, v481, v482, v483, v705);
              sub_1C43FCE64();
              v485 = *(v484 + 64);
              MEMORY[0x1EEE9AC00](v486);
              v488 = sub_1C4413A08(v487, v705);
              v489(v488);
              sub_1C4418280(&v742, *(&v743 + 1));
              sub_1C44354F0();
              v726 = v490;
              sub_1C43FCE64();
              v492 = *(v491 + 64);
              MEMORY[0x1EEE9AC00](v493);
              sub_1C43FBCC4();
              v495 = sub_1C4408C64(v494);
              v496(v495);
              v497 = *v311;
              v498 = *v309;
              v499 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
              *(&v740 + 1) = v499;
              v741 = &off_1F43E2510;
              *&v739 = v497;
              v500 = type metadata accessor for BehaviorDatabaseEventTracker();
              v737 = v500;
              v738 = &off_1F43E2390;
              v736[0] = v498;
              v501 = type metadata accessor for PersonEntityTaggingView();
              v72 = sub_1C44099C4(v501);
              sub_1C4418280(&v739, v499);
              sub_1C444B34C();
              sub_1C43FCE64();
              v503 = *(v502 + 64);
              MEMORY[0x1EEE9AC00](v504);
              v506 = sub_1C44206A8(v505, v705);
              v507(v506);
              sub_1C4418280(v736, v737);
              sub_1C43FCE64();
              v509 = *(v508 + 64);
              MEMORY[0x1EEE9AC00](v510);
              v512 = sub_1C43FD7EC(v511, v705);
              v513(v512);
              v514 = *v303;
              v515 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider);
              v515[3] = v499;
              v515[4] = &off_1F43E2510;
              *v515 = v514;
              v516 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker);
              v516[3] = v500;
              sub_1C441BD8C(v516);
              sub_1C441A81C();
              sub_1C4C110B8(v710, v72 + v517, v518);
              *(v72 + 7) = v728;
              sub_1C4C10D8C(v752, &v733);
              sub_1C440962C(v736);
              sub_1C440962C(&v739);

              v519 = sub_1C4426158();
              sub_1C4434758(v519, v520, v521, v522, 6);
              sub_1C4AF9C44(v746);
              sub_1C4707ED4(&v747);
              sub_1C4407E80();
              sub_1C443C0C8(v732, v523);
              sub_1C440962C(&v742);
              sub_1C440962C(v745);
              sub_1C4426ED8();
              return v72;
            }
          }

          else
          {
            sub_1C442F414();
          }

LABEL_59:
          sub_1C4420C3C(v745, &qword_1EC0BAFF8, qword_1C4F1D680);
          sub_1C44206C8();
          sub_1C450B034();
          v332 = sub_1C43FFB2C();
          sub_1C44047EC(v332, v333);
          v334 = sub_1C44179C4();
          v337 = v80;
          v338 = 6;
          goto LABEL_63;
        }
      }

      else
      {
        v741 = 0;
        v739 = 0u;
        v740 = 0u;
        sub_1C4420C3C(&v739, &unk_1EC0C06B0, &qword_1C4F5FBA0);
        v742 = 0u;
        v743 = 0u;
        v744 = 0;
      }

      sub_1C4420C3C(&v742, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
      sub_1C4422504();
      goto LABEL_59;
    case 7:
      v157 = sub_1C4412850();
      sub_1C4C10C28(v157, v158, v159, v160, 7);
      v161 = sub_1C43FD2BC();
      v162 = v88;
      sub_1C4BEB8E0(v161, v163, v164);
      sub_1C4405430();
      sub_1C442D6E0();
      v730 = v86;
      v204 = v710;
      sub_1C4431074(v732, v710, v205);
      v729 = *(v727 + 24);
      sub_1C442E860(v751, v746);
      sub_1C4418280(v746, *(&v746[1] + 1));
      sub_1C44354F0();
      v754 = v206;
      sub_1C43FCE64();
      v208 = *(v207 + 64);
      MEMORY[0x1EEE9AC00](v209);
      v211 = sub_1C4413A08(v210, v705);
      v212(v211);
      v72 = *v86;
      v213 = type metadata accessor for BehaviorDatabaseEventTracker();
      v706 = v89;
      *(&v745[1] + 1) = v213;
      *&v745[2] = &off_1F43E2390;
      *&v745[0] = v72;
      v214 = type metadata accessor for PersonEntityTaggingFactsView();
      sub_1C44099C4(v214);
      v215 = sub_1C442EDA0();
      sub_1C4418280(v215, v213);
      sub_1C44354F0();
      v728 = v216;
      sub_1C43FCE64();
      v218 = *(v217 + 64);
      MEMORY[0x1EEE9AC00](v219);
      sub_1C43FBCC4();
      v221 = sub_1C4408C64(v220);
      v222(v221);
      v223 = *v87;
      v224 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker);
      v224[3] = v213;
      v224[4] = &off_1F43E2390;
      *v224 = v223;
      sub_1C44113A8();
      sub_1C441A81C();
      sub_1C4C110B8(v204, v72 + v225, v226);
      *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_graphStore) = v729;
      sub_1C4C10D8C(v752, &v742);

      sub_1C440962C(v745);
      sub_1C4434758(v730, v87, v706, v162, 7);
      sub_1C4707ED4(&v747);
      sub_1C4407E80();
      sub_1C443C0C8(v732, v227);
      sub_1C440962C(v746);
      return v72;
    case 8:
      v184 = sub_1C4412850();
      sub_1C4C10C14(v184, v185, v186, v187, 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v188 = sub_1C43FD2BC();
      sub_1C4BEB8E0(v188, v189, v190);
      sub_1C4405430();
      sub_1C4450068();
      v312 = v72;
      v729 = v88;
      v72 = sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
      if (sub_1C440C02C())
      {
        v313 = v86;
        v80 = *(&v740 + 1);
        v314 = v741;
        sub_1C4409678(&v739, *(&v740 + 1));
        v315 = v314[2];
        v316 = sub_1C43FBD30();
        v317(v316, v314);
        sub_1C440962C(&v739);
        if (*(&v743 + 1))
        {
          if (sub_1C4460448())
          {
            if (*(&v745[0] + 1))
            {
              v706 = v89;
              v730 = v313;
              v731 = v87;

              memcpy(v746, v745, 0x50uLL);
              v318 = *(v727 + 24);
              v319 = *(v312 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
              v320 = type metadata accessor for BehaviorHistoryUtility();
              v321 = sub_1C44099C4(v320);

              sub_1C441E7B4(v319);
              sub_1C443F3B4();
              if (*(&v743 + 1))
              {
                sub_1C441D670(&v742, v745);
                v728 = type metadata accessor for BehaviorFeaturizer();
                sub_1C442E860((v319 + 16), &v742);
                sub_1C442E860(v745, &v739);
                v446 = sub_1C441C560();
                sub_1C4430284(v446, v447, v448, v449, v450, v451, v452, v453, v705);
                sub_1C43FCE64();
                v455 = *(v454 + 64);
                MEMORY[0x1EEE9AC00](v456);
                v458 = sub_1C44206A8(v457, v705);
                v459(v458);
                v321 = v741;
                sub_1C4418280(&v739, *(&v740 + 1));
                sub_1C444B34C();
                sub_1C43FCE64();
                v461 = *(v460 + 64);
                MEMORY[0x1EEE9AC00](v462);
                v464 = sub_1C43FD7EC(v463, v705);
                v465(v464);
                v736[0] = v318;
                type metadata accessor for BehaviorDatabaseEventTracker();

                sub_1C441F014(&off_1F43E41D8, v703, v704, &off_1F43E2390);
                v466 = sub_1C442EDA0();
                sub_1C440962C(v466);
                sub_1C440962C(&v739);
                sub_1C440962C(&v742);
                sub_1C4426ED8();
                v728 = v318;
              }

              else
              {

                sub_1C4420C3C(&v742, &qword_1EC0BB460, &qword_1C4F5D900);
                v728 = 0;
              }

              sub_1C442D6E0();
              sub_1C4431074(v732, v710, v524);
              v525 = sub_1C440258C();
              sub_1C442E860(v525, v745);
              sub_1C442E860(&v746[2] + 8, &v742);
              v526 = sub_1C4418280(v745, *(&v745[1] + 1));
              sub_1C4430284(v526, v527, v528, v529, v530, v531, v532, v533, v705);
              sub_1C43FCE64();
              v535 = *(v534 + 64);
              MEMORY[0x1EEE9AC00](v536);
              v538 = sub_1C4413A08(v537, v705);
              v539(v538);
              sub_1C4418280(&v742, *(&v743 + 1));
              sub_1C44354F0();
              v726 = v540;
              sub_1C43FCE64();
              v542 = *(v541 + 64);
              MEMORY[0x1EEE9AC00](v543);
              sub_1C43FBCC4();
              v545 = sub_1C4408C64(v544);
              v546(v545);
              v547 = *v321;
              v548 = *v319;
              v549 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
              *(&v740 + 1) = v549;
              v741 = &off_1F43E2510;
              *&v739 = v547;
              v550 = type metadata accessor for BehaviorDatabaseEventTracker();
              v737 = v550;
              v738 = &off_1F43E2390;
              v736[0] = v548;
              v551 = type metadata accessor for PhotosPersonEntityTaggingView();
              v72 = sub_1C44099C4(v551);
              sub_1C4418280(&v739, v549);
              sub_1C444B34C();
              sub_1C43FCE64();
              v553 = *(v552 + 64);
              MEMORY[0x1EEE9AC00](v554);
              v556 = sub_1C44206A8(v555, v705);
              v557(v556);
              sub_1C4418280(v736, v737);
              sub_1C43FCE64();
              v559 = *(v558 + 64);
              MEMORY[0x1EEE9AC00](v560);
              v562 = sub_1C43FD7EC(v561, v705);
              v563(v562);
              v564 = *v313;
              v565 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider);
              v565[3] = v549;
              v565[4] = &off_1F43E2510;
              *v565 = v564;
              v566 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker);
              v566[3] = v550;
              sub_1C441BD8C(v566);
              sub_1C441A81C();
              sub_1C4C110B8(v710, v72 + v567, v568);
              *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_featurizer) = v728;
              sub_1C4C10D8C(v752, &v733);
              sub_1C440962C(v736);
              sub_1C440962C(&v739);

              v569 = sub_1C4426158();
              sub_1C4434758(v569, v570, v571, v572, 8);
              sub_1C4AF9C44(v746);
              sub_1C4707ED4(&v747);
              sub_1C4407E80();
              sub_1C443C0C8(v732, v573);
              sub_1C440962C(&v742);
              sub_1C440962C(v745);
              sub_1C4426ED8();
              return v72;
            }
          }

          else
          {
            sub_1C442F414();
          }

LABEL_62:
          sub_1C4420C3C(v745, &qword_1EC0BAFF8, qword_1C4F1D680);
          sub_1C44206C8();
          sub_1C450B034();
          v339 = sub_1C43FFB2C();
          sub_1C44047EC(v339, v340);
          v334 = sub_1C44179C4();
          v337 = v80;
          v338 = 8;
LABEL_63:
          sub_1C4434758(v334, v335, v336, v337, v338);
          sub_1C4707ED4(&v747);
          goto LABEL_7;
        }
      }

      else
      {
        v741 = 0;
        v739 = 0u;
        v740 = 0u;
        sub_1C4420C3C(&v739, &unk_1EC0C06B0, &qword_1C4F5FBA0);
        v742 = 0u;
        v743 = 0u;
        v744 = 0;
      }

      sub_1C4420C3C(&v742, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
      sub_1C4422504();
      goto LABEL_62;
    case 9:
      if (!(v89 | v87 | v86 | v88))
      {
        sub_1C442D6E0();
        v197 = v196;
        v198 = v709;
        sub_1C4431074(v196, v709, v199);
        v200 = *(v727 + 24);
        v201 = *(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v748 = v81;
        v749 = MEMORY[0x1E69A9230];
        v202 = sub_1C4422F90(&v747);

        v203 = v201;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v197, v271);
        sub_1C4418280(&v747, v748);
        sub_1C43FCE64();
        v273 = *(v272 + 64);
        MEMORY[0x1EEE9AC00](v274);
        v276 = sub_1C4413A08(v275, v705);
        v277(v276);
        v278 = type metadata accessor for CallInteractionSignalView();
        v72 = sub_1C44099C4(v278);
        v279 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView);
        v279[3] = v81;
        v279[4] = MEMORY[0x1E69A9230];
        v280 = sub_1C4422F90(v279);
        (*(v724 + 32))(v280, v202, v81);
        *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames) = 0;
        sub_1C44113A8();
        sub_1C441A81C();
        sub_1C4C110B8(v198, v72 + v281, v282);
        *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_store) = v200;
        sub_1C440962C(&v747);
        return v72;
      }

      v117 = v89 | v87 | v88;
      if (v86 == 1 && !v117)
      {
        sub_1C440B604();
        sub_1C441A81C();
        sub_1C440A1B8();
        sub_1C4C110B8(v118, v119, v120);
        sub_1C43FCA44();
        v121 = type metadata accessor for InstalledAppSignal();
        sub_1C44099C4(v121);
        v122 = sub_1C440FD94();
        sub_1C4945FCC(v122, v123, v124);
        sub_1C43FBD30();

        return v72;
      }

      v192 = *(v732 + 10);
      v233 = v86 == 2;
      v234 = v710;
      v86 = v727;
      if (v233 && !v117)
      {
        sub_1C440B604();
        sub_1C441A81C();
        sub_1C4C110B8(v235, v234, v236);
        v237 = *(v86 + 24);
        v238 = type metadata accessor for MatchingWorkEmailAddressSignal();
        sub_1C44099C4(v238);
        v239 = sub_1C441CEB0();
        sub_1C4A32790(v239, v234, v237);
        sub_1C43FBD30();

        return v72;
      }

      if (v192 == 3 && !v117)
      {
        sub_1C442D6E0();
        v263 = v262;
        v264 = v708;
        sub_1C4431074(v262, v708, v265);
        v266 = *(v86 + 24);
        v267 = *(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v268 = MEMORY[0x1E69A9230];
        v748 = v81;
        v749 = MEMORY[0x1E69A9230];
        v269 = sub_1C4422F90(&v747);

        v270 = v267;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v263, v383);
        sub_1C4418280(&v747, v748);
        sub_1C43FCE64();
        v385 = *(v384 + 64);
        MEMORY[0x1EEE9AC00](v386);
        v388 = sub_1C4413A08(v387, v705);
        v389(v388);
        v390 = type metadata accessor for MessagingInteractionSignalView();
        v72 = sub_1C44099C4(v390);
        v391 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView);
        v391[3] = v81;
        v391[4] = v268;
        v392 = sub_1C4422F90(v391);
        (*(v724 + 32))(v392, v269, v81);
        *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames) = 0;
        sub_1C44113A8();
        sub_1C441A81C();
        sub_1C4C110B8(v264, v72 + v393, v394);
        *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_store) = v266;
        sub_1C440962C(&v747);
        return v72;
      }

      if (v192 == 4 && !v117)
      {
        sub_1C440B604();
        sub_1C442D6E0();
        v325 = v324;
        v326 = v707;
        sub_1C4431074(v324, v707, v327);
        v328 = *(v86 + 24);
        v329 = *(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

        v330 = v329;
        v331 = v723;
        sub_1C4EFDA08();

        sub_1C4407E80();
        sub_1C443C0C8(v325, v417);
        v418 = type metadata accessor for ModeInteractionSignal();
        sub_1C44099C4(v418);
        v419 = sub_1C441CEB0();
        return sub_1C4A3B994(v419, v326, v328, v331);
      }

      v378 = *(v732 + 10);
      if (v192 == 5 && !v117)
      {
        type metadata accessor for ActivityIntervalSignal();
        v379 = sub_1C4572E34();
        sub_1C441A81C();
        sub_1C4C110B8(v732, v234, v380);
        v381 = &unk_1EC0C4BC8;
        v382 = &unk_1C4F5D928;
LABEL_75:
        v415 = sub_1C456902C(v381, v382);
        sub_1C44099C4(v415);
        v416 = v234;
        return sub_1C4C0C5F8(v752, v416, v379);
      }

      v194 = v72;
      if (v192 == 6 && !v117)
      {
        type metadata accessor for AmbientLightDistributionSignal();
        sub_1C457ECF0();
        v379 = v413;
        sub_1C441A81C();
        sub_1C4C110B8(v732, v234, v414);
        v381 = &unk_1EC0C4BB0;
        v382 = &unk_1C4F5D910;
        goto LABEL_75;
      }

      if (v192 != 7 || v117)
      {
        if (v192 != 8 || v117)
        {
          if (v192 != 9 || v117)
          {
LABEL_94:
            if (v192 != 10 || v117)
            {
              if (v192 == 11 && !v117)
              {
                sub_1C440B604();
                sub_1C441A81C();
                sub_1C440A1B8();
                sub_1C4C110B8(v578, v579, v580);
                sub_1C43FCA44();
                v581 = type metadata accessor for ContactRelationshipSignal();
                sub_1C44099C4(v581);
                v582 = sub_1C440FD94();
                sub_1C468DF8C(v582, v583, v584);
                sub_1C43FBD30();

                return v72;
              }

              if (v192 != 12 || v117)
              {
                if (v192 != 13 || v117)
                {
                  if (v192 != 14 || v117)
                  {
                    if (v192 == 15 && !v117)
                    {
                      sub_1C440B604();
                      sub_1C441A81C();
                      sub_1C440A1B8();
                      sub_1C4C110B8(v594, v595, v596);
                      sub_1C43FCA44();
                      v597 = type metadata accessor for FamilyNameEquivalencySignalView();
                      sub_1C44099C4(v597);
                      v598 = sub_1C440FD94();
                      sub_1C47CF270(v598, v599, v600);
                      sub_1C43FBD30();

                      return v72;
                    }

                    if (v192 != 16 || v117)
                    {
                      if (v192 != 17 || v117)
                      {
                        if (v192 != 18 || v117)
                        {
                          if (v192 != 19 || v117)
                          {
                            if (v192 != 20 || v117)
                            {
                              if (v192 != 21 || v117)
                              {
                                if (v192 == 22 && !v117)
                                {
                                  sub_1C440B604();
                                  sub_1C441A81C();
                                  sub_1C440A1B8();
                                  sub_1C4C110B8(v621, v622, v623);
                                  sub_1C43FCA44();
                                  v624 = type metadata accessor for PeopleEmailSignal();
                                  sub_1C44099C4(v624);
                                  v625 = sub_1C440FD94();
                                  sub_1C4A8B1E0(v625, v626, v627);
                                  sub_1C43FBD30();

                                  return v72;
                                }

                                if (v192 == 23 && !v117)
                                {
                                  sub_1C440B604();
                                  sub_1C442D6E0();
                                  v628 = v732;
                                  sub_1C440A1B8();
                                  sub_1C4431074(v629, v630, v631);
                                  v632 = *(v727 + 24);
                                  v633 = type metadata accessor for PeopleNameSignal();
                                  sub_1C44099C4(v633);

                                  v72 = sub_1C4A95A6C(&v747, v86, v632);
                                  sub_1C4407E80();
                                  sub_1C443C0C8(v628, v634);
                                  return v72;
                                }

                                if (v192 != 24 || v117)
                                {
                                  if (v192 != 25 || v117)
                                  {
                                    if (v192 == 26 && !v117)
                                    {
                                      sub_1C440B604();
                                      sub_1C441A81C();
                                      sub_1C440A1B8();
                                      sub_1C4C110B8(v641, v642, v643);
                                      sub_1C43FCA44();
                                      v644 = type metadata accessor for SameEmployerSignal();
                                      sub_1C44099C4(v644);
                                      v645 = sub_1C440FD94();
                                      sub_1C4AE6B94(v645, v646, v647);
                                      sub_1C43FBD30();

                                      return v72;
                                    }

                                    if (v192 != 27 || v117)
                                    {
                                      if (v192 != 28 || v117)
                                      {
                                        if (v192 != 29 || v117)
                                        {
                                          if (v192 != 30 || v117)
                                          {
                                            if (v192 != 31 || v117)
                                            {
                                              if (v192 != 32 || v117)
                                              {
                                                if (v192 != 33 || v117)
                                                {
                                                  sub_1C440B604();
                                                  sub_1C441A81C();
                                                  sub_1C43FF788(v680, v681, v682);
                                                  sub_1C4401144();
                                                  v684 = v718;
                                                  sub_1C4431074(v194 + v683, v718, v685);
                                                  v686 = type metadata accessor for EntityRelevanceDataCollectionView();
                                                  sub_1C44099C4(v686);
                                                  v687 = sub_1C441CEB0();
                                                  return sub_1C4BEE9F8(v687, v80, v684);
                                                }

                                                else
                                                {
                                                  v675 = OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config;
                                                  sub_1C4401144();
                                                  v676 = v717;
                                                  sub_1C4431074(v194 + v675, v717, v677);
                                                  v678 = *(v194 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
                                                  v679 = type metadata accessor for BehaviorHistoryUtility();
                                                  sub_1C44099C4(v679);
                                                  v688 = sub_1C4623CF4(v676, v678);
                                                  type metadata accessor for BehaviorFeaturizer();
                                                  sub_1C4401144();
                                                  v689 = v720;
                                                  sub_1C4431074(v194 + v675, v720, v690);
                                                  v749 = &off_1F43E41D8;
                                                  v748 = v679;
                                                  *&v747 = v688;

                                                  v691 = sub_1C4601538(v689, &v747);
                                                  sub_1C4401144();
                                                  sub_1C4431074(v194 + v675, v721, v692);
                                                  if (qword_1EDDE7308 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  v693 = sub_1C4ABF81C();
                                                  sub_1C442C024();
                                                  sub_1C440B604();
                                                  sub_1C442D6E0();
                                                  v694 = v719;
                                                  sub_1C4431074(v732, v719, v695);
                                                  v696 = *(v727 + 24);

                                                  v697 = v722;
                                                  sub_1C4EF9C88();
                                                  v698 = type metadata accessor for EntitySimilarityFeatureView();
                                                  v699 = sub_1C44099C4(v698);
                                                  v700 = v693;
                                                  v72 = v699;
                                                  sub_1C4BFD59C(&v747, v694, v696, v691, v700, v697, v699, v701);
                                                  sub_1C43FBD30();

                                                  sub_1C4407E80();
                                                  sub_1C443C0C8(v732, v702);
                                                }

                                                return v72;
                                              }

                                              type metadata accessor for VirtualInteractionsDistributionSignal();
                                              v668 = *(v727 + 24);
                                              sub_1C4401144();
                                              v80 = v718;
                                              sub_1C4431074(v669 + v670, v718, v671);
                                              v379 = sub_1C4D2F82C(v80);
                                              sub_1C441A81C();
                                              sub_1C43FF788(v672, v673, v674);
                                              v423 = &unk_1EC0C4BC0;
                                              v424 = &unk_1C4F5D920;
                                            }

                                            else
                                            {
                                              type metadata accessor for WorkoutSignal();
                                              sub_1C440C428();
                                              v379 = sub_1C4D61394();
                                              sub_1C441A81C();
                                              sub_1C43FF788(v665, v666, v667);
                                              v423 = &unk_1EC0C4BE8;
                                              v424 = &unk_1C4F5D948;
                                            }
                                          }

                                          else
                                          {
                                            type metadata accessor for UserFocusComputedModeSignal();
                                            swift_allocObject();
                                            v379 = sub_1C4B9269C(0);
                                            sub_1C441A81C();
                                            sub_1C43FF788(v662, v663, v664);
                                            v423 = &unk_1EC0C4BF0;
                                            v424 = &unk_1C4F5D950;
                                          }
                                        }

                                        else
                                        {
                                          v654 = v711;
                                          sub_1C4EF9C88();
                                          v656 = v712;
                                          v655 = v713;
                                          v657 = v80;
                                          (*(v713 + 104))(v712, *MEMORY[0x1E6969868], v80);
                                          v80 = v714;
                                          sub_1C4EF9E68();
                                          (*(v655 + 8))(v656, v657);
                                          v658 = type metadata accessor for TimeAndDateSignal();
                                          v379 = sub_1C44099C4(v658);
                                          sub_1C4C110B8(v654, v379 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher, type metadata accessor for DateFetcher);
                                          (*(v715 + 32))(v379 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar, v80, v716);
                                          sub_1C441A81C();
                                          sub_1C43FF788(v659, v660, v661);
                                          v423 = &unk_1EC0C4BF8;
                                          v424 = &unk_1C4F5D958;
                                        }
                                      }

                                      else
                                      {
                                        type metadata accessor for SoundAnalysisSignal();
                                        swift_allocObject();
                                        v379 = sub_1C4B2F78C();
                                        sub_1C441A81C();
                                        sub_1C43FF788(v651, v652, v653);
                                        v423 = &unk_1EC0C4C00;
                                        v424 = &unk_1C4F5D960;
                                      }
                                    }

                                    else
                                    {
                                      type metadata accessor for SemanticLocationSignal();
                                      swift_allocObject();
                                      v379 = sub_1C4AFAB8C(0);
                                      sub_1C441A81C();
                                      sub_1C43FF788(v648, v649, v650);
                                      v423 = &unk_1EC0C4C58;
                                      v424 = &unk_1C4F5D9B8;
                                    }
                                  }

                                  else
                                  {
                                    type metadata accessor for PoiCategorySignal();
                                    v379 = sub_1C440C428();
                                    *(v379 + 16) = [objc_allocWithZone(MEMORY[0x1E698F2C0]) init];
                                    sub_1C441A81C();
                                    sub_1C43FF788(v638, v639, v640);
                                    v423 = &unk_1EC0C4C08;
                                    v424 = &unk_1C4F5D968;
                                  }
                                }

                                else
                                {
                                  type metadata accessor for PhysicalSocialSignal();
                                  sub_1C440C428();
                                  v379 = sub_1C4ABB214();
                                  sub_1C441A81C();
                                  sub_1C43FF788(v635, v636, v637);
                                  v423 = &unk_1EC0C4C10;
                                  v424 = &unk_1C4F5D970;
                                }
                              }

                              else
                              {
                                type metadata accessor for NowPlayingSignal();
                                sub_1C440C428();
                                v379 = sub_1C4A4B19C();
                                sub_1C441A81C();
                                sub_1C43FF788(v618, v619, v620);
                                v423 = &unk_1EC0C4C18;
                                v424 = &unk_1C4F5D978;
                              }
                            }

                            else
                            {
                              type metadata accessor for MotionStateSignal();
                              sub_1C4434164();
                              swift_allocObject();
                              v379 = sub_1C4A450C4(1, 600.0);
                              sub_1C441A81C();
                              sub_1C43FF788(v615, v616, v617);
                              v423 = &unk_1EC0C4C20;
                              v424 = &unk_1C4F5D980;
                            }
                          }

                          else
                          {
                            type metadata accessor for MotionStateDistributionSignal();
                            sub_1C4A4134C();
                            v379 = v611;
                            sub_1C441A81C();
                            sub_1C43FF788(v612, v613, v614);
                            v423 = &unk_1EC0C4BD0;
                            v424 = &unk_1C4F5D930;
                          }
                        }

                        else
                        {
                          v607 = type metadata accessor for MicroLocationSignal();
                          sub_1C44099C4(v607);
                          v379 = sub_1C4A394B0();
                          sub_1C441A81C();
                          sub_1C43FF788(v608, v609, v610);
                          v423 = &unk_1EC0C4C28;
                          v424 = &unk_1C4F5D988;
                        }
                      }

                      else
                      {
                        type metadata accessor for LocationMetadataSignal();
                        sub_1C440C428();
                        v379 = sub_1C49FA08C();
                        sub_1C441A81C();
                        sub_1C43FF788(v604, v605, v606);
                        v423 = &unk_1EC0C4C30;
                        v424 = &unk_1C4F5D990;
                      }
                    }

                    else
                    {
                      type metadata accessor for InferredModeSignal();
                      swift_allocObject();
                      v379 = sub_1C493B648(1, 0);
                      sub_1C441A81C();
                      sub_1C43FF788(v601, v602, v603);
                      v423 = &unk_1EC0C4C38;
                      v424 = &unk_1C4F5D998;
                    }
                  }

                  else
                  {
                    type metadata accessor for DeviceWirelessSignal();
                    sub_1C4434164();
                    swift_allocObject();
                    v379 = sub_1C46C776C();
                    sub_1C441A81C();
                    sub_1C43FF788(v591, v592, v593);
                    v423 = &unk_1EC0C4C40;
                    v424 = &unk_1C4F5D9A0;
                  }
                }

                else
                {
                  type metadata accessor for DevicePowerSignal();
                  sub_1C4434164();
                  swift_allocObject();
                  v379 = sub_1C46C47FC();
                  sub_1C441A81C();
                  sub_1C43FF788(v588, v589, v590);
                  v423 = &unk_1EC0C4C48;
                  v424 = &unk_1C4F5D9A8;
                }
              }

              else
              {
                type metadata accessor for DeviceDisplaySignal();
                sub_1C4434164();
                swift_allocObject();
                v379 = sub_1C46C3CE0(0);
                sub_1C441A81C();
                sub_1C43FF788(v585, v586, v587);
                v423 = &unk_1EC0C4BB8;
                v424 = &unk_1C4F5D918;
              }
            }

            else
            {
              type metadata accessor for CarPlaySignal();
              swift_allocObject();
              v379 = sub_1C4677E18(0);
              sub_1C441A81C();
              sub_1C43FF788(v574, v575, v576);
              v423 = &unk_1EC0C4BA8;
              v424 = &unk_1C4F5D908;
            }
          }

          else
          {
            type metadata accessor for AppLaunchSignal();
            swift_allocObject();
            v379 = sub_1C4595FC0();
            sub_1C441A81C();
            sub_1C43FF788(v471, v472, v473);
            v423 = &unk_1EC0C4C50;
            v424 = &unk_1C4F5D9B0;
          }
        }

        else
        {
          type metadata accessor for AppCategoryDistributionSignal();
          sub_1C4590E94();
          v379 = v467;
          sub_1C441A81C();
          sub_1C43FF788(v468, v469, v470);
          v423 = &unk_1EC0C4BD8;
          v424 = &unk_1C4F5D938;
        }
      }

      else
      {
        type metadata accessor for AmbientLightSignal();
        sub_1C440C428();
        v379 = sub_1C4585984();
        sub_1C441A81C();
        sub_1C43FF788(v420, v421, v422);
        v423 = &unk_1EC0C4BE0;
        v424 = &unk_1C4F5D940;
      }

      v577 = sub_1C456902C(v423, v424);
      sub_1C44099C4(v577);
      v416 = v80;
      return sub_1C4C0C5F8(v752, v416, v379);
    default:
      sub_1C44206C8();
      v108 = v107;
      sub_1C450B034();
      sub_1C43FFB2C();
      *v109 = v87;
      *(v109 + 8) = v86;
      *(v109 + 16) = 0xD00000000000001ALL;
      *(v109 + 24) = v72;
      *(v109 + 32) = 0;
      *(v109 + 40) = 0xE000000000000000;
      *(v109 + 48) = v747;
      *(v109 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C10BC0(v752);
      sub_1C4407E80();
      v105 = v108;
      goto LABEL_8;
  }
}

uint64_t sub_1C4C105B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = _s10ViewConfigVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4CB19CC();
  if (v15 == 249)
  {
    sub_1C450B034();
    v16 = swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v13;
    *(v17 + 16) = 0xD000000000000023;
    *(v17 + 24) = 0x80000001C4F5D860;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xE000000000000000;
    *(v17 + 48) = *v38;
    *(v17 + 64) = 0;
    swift_willThrow();
    *a3 = v16;
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v19 = v15;
  v20 = *(*(a2 + 16) + 16);

  sub_1C443A738(v14, v13, v21, v22, v23, v24, v25, v26);
  if (v4)
  {

    *a3 = v4;
    return result;
  }

  sub_1C4C81AA0();
  sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  if (swift_dynamicCast())
  {
    v28 = *(&v33 + 1);
    v27 = v34;
    sub_1C4409678(&v32, *(&v33 + 1));
    (*(v27 + 16))(&v35, v28, v27);
    sub_1C440962C(&v32);
    if (*(&v36 + 1))
    {
      sub_1C441D670(&v35, v38);
      sub_1C46A5A4C(v19, v12, v38, a4);
      sub_1C440962C(v38);
      return sub_1C443C0C8(v12, _s10ViewConfigVMa);
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1C4420C3C(&v32, &unk_1EC0C06B0, &qword_1C4F5FBA0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_1C4420C3C(&v35, &qword_1EC0C4BA0, &unk_1C4F5D8F0);
  sub_1C450B034();
  v29 = swift_allocError();
  *v30 = v14;
  *(v30 + 8) = v13;
  *(v30 + 16) = 0xD000000000000023;
  *(v30 + 24) = 0x80000001C4F5D860;
  *(v30 + 32) = 0xD000000000000022;
  *(v30 + 40) = 0x80000001C4FB9DE0;
  *(v30 + 48) = v32;
  *(v30 + 64) = 0;
  swift_willThrow();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C443C0C8(v12, _s10ViewConfigVMa);
  *a3 = v29;
  return result;
}

void *sub_1C4C10930()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  MEMORY[0x1C6942920](v0 + 5);
  return v0;
}

uint64_t sub_1C4C10968()
{
  sub_1C4C10930();
  sub_1C4434164();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C109BC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *v3;
  v6 = sub_1C4C0D2B0(a1, a2, a3);
  v7 = *(v4 + 8);

  return v7(v6);
}

id sub_1C4C10A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1C4C0C550(a2, a3);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4673B1C(v7, v9, v5, v6, 0, 0);
  *a4 = result;
  return result;
}

uint64_t sub_1C4C10B7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1C4C10C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1C4C10C28(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C4C10C3C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = a2;
  switch(a5)
  {
    case 1:
    case 2:
    case 4:
    case 6:
    case 8:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_3;
    case 5:
    case 7:
LABEL_3:

      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C10CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1C4C10CE4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C4C10CF8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C4C10CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = a2;
  switch(a5)
  {
    case 1:
    case 2:
    case 4:
    case 6:
    case 8:

      goto LABEL_3;
    case 5:
    case 7:
LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C10DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v42[3] = v12;
  v42[4] = &off_1F43E2510;
  v42[0] = a5;
  v13 = type metadata accessor for EntityRelevanceContextualFeatureView();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_1C4418280(v42, v12);
  v18 = *(*(v12 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v40 = v12;
  v41 = &off_1F43E2510;
  *&v39 = v23;
  v24 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v24;
  *(v16 + 48) = *(a1 + 32);
  sub_1C4431074(a2, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config, _s10ViewConfigVMa);
  v25 = *(a3 + 16);
  if (v25)
  {
    v33 = a4;
    v34 = a6;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C459E8C8();
    v26 = v38;
    v27 = a3 + 32;
    do
    {
      sub_1C442E860(v27, v35);
      v28 = v36;
      v29 = v37;
      sub_1C4409678(v35, v36);
      v30 = (*(v29 + 8))(v28, v29);
      sub_1C440962C(v35);
      v38 = v26;
      v31 = *(v26 + 16);
      if (v31 >= *(v26 + 24) >> 1)
      {
        sub_1C459E8C8();
        v26 = v38;
      }

      *(v26 + 16) = v31 + 1;
      *(v26 + v31 + 32) = v30;
      v27 += 40;
      --v25;
    }

    while (v25);
    sub_1C443C0C8(a2, _s10ViewConfigVMa);
    a4 = v33;
    a6 = v34;
  }

  else
  {
    sub_1C443C0C8(a2, _s10ViewConfigVMa);
    v26 = MEMORY[0x1E69E7CC0];
  }

  *(v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextAspects) = v26;
  *(v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextViews) = a3;
  *(v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_featurizer) = a4;
  sub_1C441D670(&v39, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider);
  *(v16 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_keyValueStore) = a6;
  sub_1C440962C(v42);
  return v16;
}

uint64_t sub_1C4C110B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4C1113C()
{
  v0 = sub_1C4EFBE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v5 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F23100;
  v9 = (v8 + v7);
  sub_1C4EFBE08();
  *v9 = 0x7463656A627573;
  v9[1] = 0xE700000000000000;
  v10 = *(v1 + 32);
  v10(v8 + v7 + v5[7], v4, v0);
  v11 = (v8 + v7 + v6);
  sub_1C4EFBDD8();
  *v11 = 0x7461636964657270;
  v11[1] = 0xE900000000000065;
  v10(v11 + v5[7], v4, v0);
  v12 = (v8 + v7 + 2 * v6);
  sub_1C4EFBE08();
  strcpy(v12, "relationshipId");
  v12[15] = -18;
  v10(&v12[v5[7]], v4, v0);
  v13 = (v8 + v7 + 3 * v6);
  sub_1C4EFBDD8();
  *v13 = 0xD000000000000015;
  v13[1] = 0x80000001C4F86600;
  v10(v13 + v5[7], v4, v0);
  v14 = (v8 + v7 + 4 * v6);
  sub_1C4EFBDD8();
  *v14 = 0x7463656A626FLL;
  v14[1] = 0xE600000000000000;
  v10(v14 + v5[7], v4, v0);
  v15 = (v8 + v7 + 5 * v6);
  sub_1C4EFBE08();
  *v15 = 0x73656372756F73;
  v15[1] = 0xE700000000000000;
  v10(v15 + v5[7], v4, v0);
  v16 = (v8 + v7 + 6 * v6);
  sub_1C4EFBDE8();
  *v16 = 0x6E656469666E6F63;
  v16[1] = 0xEA00000000006563;
  v10(v16 + v5[7], v4, v0);
  v17 = (v8 + v7 + 7 * v6);
  sub_1C4EFBDD8();
  *v17 = 0xD000000000000010;
  v17[1] = 0x80000001C4F86630;
  v10(v17 + v5[7], v4, v0);
  v18 = (v8 + v7 + 8 * v6);
  sub_1C4EFBDE8();
  *v18 = 0x6D617473656D6974;
  v18[1] = 0xE900000000000070;
  result = (v10)(v18 + v5[7], v4, v0);
  qword_1EC0C4C60 = v8;
  return result;
}

void sub_1C4C11520()
{
  v1 = sub_1C4EF98F8();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  (*(v5 + 16))(v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v3);
  type metadata accessor for ViewDatabaseArtifact();
  v6[0] = 0;
  v6[1] = 0;
  swift_allocObject();
  sub_1C4BC40B8();
}

uint64_t sub_1C4C1162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4C116A8(a1, a2, v7);
  if (!v3)
  {
    a3[3] = &_s15GraphViewClientVN;
    a3[4] = &off_1F4403780;
    v6 = swift_allocObject();
    *a3 = v6;
    return sub_1C441D670(v7, v6 + 16);
  }

  return result;
}

uint64_t sub_1C4C116A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v8 = a1 == 0x7247656C62617473 && a2 == 0xEB00000000687061;
  if (v8 || (sub_1C4F02938() & 1) != 0)
  {
    v10 = *(v3 + 16);
    v11 = qword_1EC0B7188;

    if (v11 != -1)
    {
      sub_1C441A834();
    }

    v12 = qword_1EC0C4C60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C11520();
    if (v5)
    {
LABEL_9:
    }

    v15 = v13;

    a3[3] = &_s18GraphDatabaseTableVN;
    a3[4] = &off_1F4403750;
    result = swift_allocObject();
    *a3 = result;
    strcpy((result + 16), "stable_graph");
    *(result + 29) = 0;
    *(result + 30) = -5120;
    *(result + 32) = v15;
    *(result + 40) = v12;
    goto LABEL_11;
  }

  v16 = a1 == 0x617247746E657665 && a2 == 0xEA00000000006870;
  if (v16 || (sub_1C4F02938() & 1) != 0)
  {
    v17 = *(v3 + 16);
    v18 = qword_1EC0B7188;

    if (v18 != -1)
    {
      sub_1C441A834();
    }

    v19 = qword_1EC0C4C60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C11520();
    if (v5)
    {
      goto LABEL_9;
    }

    v21 = v20;

    a3[3] = &_s18GraphDatabaseTableVN;
    a3[4] = &off_1F4403750;
    result = swift_allocObject();
    *a3 = result;
    *(result + 16) = 0x72675F746E657665;
    *(result + 24) = 0xEB00000000687061;
    *(result + 32) = v21;
    *(result + 40) = v19;
LABEL_11:
    *(result + 48) = 0x7463656A627573;
    *(result + 56) = 0xE700000000000000;
    return result;
  }

  sub_1C450B034();
  swift_allocError();
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = 0xD000000000000013;
  *(v22 + 24) = 0x80000001C4F5D9B0;
  *(v22 + 32) = 0xD000000000000017;
  *(v22 + 40) = 0x80000001C4FB9E80;
  *(v22 + 48) = v23;
  *(v22 + 64) = 0;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4C119E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s19HandleViewGeneratorCMa();
      a4 = swift_allocObject();
      sub_1C4C11BD8(__dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = xmmword_1C4F5B670;
      *(v8 + 32) = 0xD000000000000025;
      *(v8 + 40) = 0x80000001C4FB83A0;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C11B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C119E0(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C11BD8(const void *a1)
{
  sub_1C4B756E8(&unk_1F43DA990, v5);
  v3 = v5[1];
  *(v1 + 144) = v5[0];
  *(v1 + 160) = v3;
  *(v1 + 176) = v6;
  memcpy((v1 + 16), a1, 0x80uLL);
  return v1;
}

uint64_t sub_1C4C11C38(uint64_t a1)
{
  v3 = *(a1 + 64);
  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (v3 & 0xC000000000000001) == 0);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C6940F90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v6 = *(*(v1 + 16) + 16);
    MEMORY[0x1EEE9AC00](v5);

    sub_1C49A56B8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    sub_1C4D0E5C0();
    if (*(*(a1 + 56) + 80) == 1)
    {
    }

    else
    {
      v19 = sub_1C4F02938();

      if ((v19 & 1) == 0)
      {
      }
    }

    if (v12)
    {
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v20 = sub_1C44F95AC(v8, v10);
      v21 = v22;
    }

    sub_1C4CCDA9C(v20, v21);
    sub_1C441DFEC(v20, v21);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "Expected at least one KG config", v16, 2u);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  sub_1C446D0DC();
  swift_allocError();
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001C4FB9EF0;
  *(v17 + 16) = 2;
  return swift_willThrow();
}

void sub_1C4C11F1C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v10 = a2;
  v12 = a2[12];
  if (v12)
  {
    v57 = a4;
    v13 = a2[17];
    v15 = a2[15];
    v14 = a2[16];
    v17 = a2[14];
    v18 = a2[13];
    v64 = a2[11];
    v65 = v12;
    v66 = v18;
    v67 = v17;
    v68 = v15;
    v69 = v14;
    v70 = v13;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    sub_1C4BC3C1C(v64, v12);

    sub_1C4B8B458();
    v8 = v7;
    if (v7)
    {
      return;
    }

    v20 = v19;
    v21 = a1;
    v22 = a2;

    sub_1C4B8B8EC();

    v56 = v21;
    v24 = a3;
    v23 = a5;
    v10 = v22;
    a4 = v57;
  }

  else
  {
    v23 = a5;
    v24 = a3;
    v56 = a1;
    v20 = 0;
  }

  v71 = MEMORY[0x1E69E7CD0];
  v25 = *v24;
  v26 = *(a4 + 64);
  if (v25 >= sub_1C4428DA0())
  {
LABEL_29:
    if (v20)
    {
      v43 = v8;
      v44 = v71;
      v61[3] = sub_1C456902C(&qword_1EC0C4C68, qword_1C4F5DB38);
      v61[4] = sub_1C4401CBC(&qword_1EC0C4C70, &qword_1EC0C4C68, qword_1C4F5DB38);
      v61[0] = v44;
      v61[1] = sub_1C4C13B78;
      v61[2] = 0;

      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v61);
      }

      else
      {
        sub_1C440962C(v61);

        sub_1C4B8BB5C();
        v46 = v45;
        v48 = v47;

        *a7 = v46;
        *(a7 + 8) = v48;
        *(a7 + 16) = 0;
      }
    }

    else
    {

      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) = 1;
    }

    return;
  }

  v27 = *(v10 + 10);
  v62[0] = *(v10 + 9);
  v62[1] = v27;
  v63 = v10[22];
  v50 = v26 + 32;
  v51 = a6;
  v59 = v26 & 0xC000000000000001;
  v60 = v26 & 0xFFFFFFFFFFFFFF8;
  v58 = v26 >> 62;
  v52 = v20;
  v55 = v26;
  while (1)
  {
    v28 = *v24;
    if (v59)
    {
      v29 = MEMORY[0x1C6940F90](v28, v26);
      goto LABEL_12;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 >= *(v60 + 16))
    {
      goto LABEL_38;
    }

    v29 = *(v50 + 8 * v28);

LABEL_12:
    v30 = *v23;
    *v23 = v29;

    v31 = sub_1C4CDFB34(*a6, 0, v62, 0, 1);
    v33 = v32;
    v34 = v31;

    *a6 = v33;
    if (*(v34 + 16))
    {
      sub_1C4C123DC(v56, v34, v20);
      if (v8)
      {

        return;
      }

      v35 = v10;
      v36 = *(v34 + 16);
      if (v36)
      {
        v61[0] = MEMORY[0x1E69E7CC0];
        sub_1C459D380();
        v37 = v61[0];
        v38 = *(v61[0] + 16);
        v39 = 72;
        do
        {
          v40 = *(v34 + v39);
          v61[0] = v37;
          if (v38 >= *(v37 + 24) >> 1)
          {
            sub_1C459D380();
            v37 = v61[0];
          }

          *(v37 + 16) = v38 + 1;
          *(v37 + 8 * v38 + 32) = v40;
          v39 += 152;
          ++v38;
          --v36;
        }

        while (v36);

        a6 = v51;
        v20 = v52;
        v24 = a3;
        v23 = a5;
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      sub_1C4D403C8(v37);
      v10 = v35;
      v8 = 0;
      v26 = v55;
    }

    else
    {

      if (__OFADD__(*v24, 1))
      {
        goto LABEL_37;
      }

      ++*v24;
      *a6 = 0;
    }

    v41 = *v24;
    if (v58)
    {
      v42 = sub_1C4F02128();
    }

    else
    {
      v42 = *(v60 + 16);
    }

    if (v41 >= v42)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1C4C123DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v209 = a3;
  v227 = a2;
  v222 = a1;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v217 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v216 = &v207 - v7;
  v215 = sub_1C4EF9488();
  v208 = *(v215 - 8);
  v8 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1C4EFBC98();
  v225 = *(v221 - 8);
  v10 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v210 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v220 = &v207 - v13;
  v14 = sub_1C4EFEEF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v207 - v20;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v22 = swift_allocObject();
  v219 = xmmword_1C4F0CE60;
  *(v22 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE518();
  v23 = sub_1C4EFEB68();
  v25 = v24;
  v26 = *(v15 + 8);
  v26(v21, v14);
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1C4EFE478();
  v27 = sub_1C4EFEB68();
  v29 = v28;
  v26(v18, v14);
  *(v22 + 48) = v27;
  *(v22 + 56) = v29;
  sub_1C4499940(v22, v30, v31, v32, v33, v34, v35, v36, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, *(&v219 + 1));
  v38 = v37;
  v226 = swift_allocObject();
  *(v226 + 16) = v38;
  v223 = *(v227 + 16);
  v39 = v223;
  v232 = v227 + 32;
  v40 = v38 + 56;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = 0;
  v228 = v39;
  while (v41 != v39)
  {
    memcpy(v231, (v232 + 152 * v41), 0x92uLL);
    if (*(v38 + 16))
    {
      v42 = v231[6];
      v43 = v231[7];
      v44 = *(v38 + 40);
      sub_1C4F02AF8();
      sub_1C45E8CE0(v231, v230);
      sub_1C4F01298();
      v45 = sub_1C4F02B68();
      v46 = ~(-1 << *(v38 + 32));
      while (1)
      {
        v18 = v45 & v46;
        if (((*(v40 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
        {
          break;
        }

        v47 = (*(v38 + 48) + 16 * v18);
        if (*v47 != v42 || v47[1] != v43)
        {
          v49 = sub_1C4F02938();
          v45 = v18 + 1;
          if ((v49 & 1) == 0)
          {
            continue;
          }
        }

LABEL_23:
        sub_1C45E8D3C(v231);
        v39 = v228;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1C45E8CE0(v231, v230);
    }

    if (*(v38 + 16))
    {
      v50 = v231[9];
      v51 = v231[10];
      v52 = *(v38 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      v53 = sub_1C4F02B68();
      v54 = ~(-1 << *(v38 + 32));
      while (1)
      {
        v18 = v53 & v54;
        if (((*(v40 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
        {
          break;
        }

        v55 = (*(v38 + 48) + 16 * v18);
        if (*v55 != v50 || v55[1] != v51)
        {
          v57 = sub_1C4F02938();
          v53 = v18 + 1;
          if ((v57 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    sub_1C45E8D3C(v231);
    ++v41;
    v39 = v228;
  }

  v41 = v223;
  while (1)
  {
LABEL_24:
    if (v41 == v39)
    {
      v74 = v223;
      v41 = v223;
      goto LABEL_54;
    }

    if (v41 >= v39)
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    memcpy(v231, (v232 + 152 * v41), 0x92uLL);
    v18 = BYTE1(v231[18]);
    sub_1C45E8CE0(v231, v230);
    String.normalizedContactHandle()();
    sub_1C45E8D3C(v231);

    if (v18)
    {
      break;
    }

    while (1)
    {
      if (++v41 == v39)
      {
        v41 = v223;
        goto LABEL_24;
      }

      memcpy(v230, (v232 + 152 * v41), 0x92uLL);
      if (*(v38 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v230, v229);
LABEL_39:
      if (*(v38 + 16))
      {
        v66 = v230[9];
        v67 = v230[10];
        v68 = *(v38 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();
        v69 = sub_1C4F02B68();
        v70 = ~(-1 << *(v38 + 32));
        while (1)
        {
          v18 = v69 & v70;
          if (((*(v40 + (((v69 & v70) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v69 & v70)) & 1) == 0)
          {
            break;
          }

          v71 = (*(v38 + 48) + 16 * v18);
          if (*v71 != v66 || v71[1] != v67)
          {
            v73 = sub_1C4F02938();
            v69 = v18 + 1;
            if ((v73 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_50;
        }

        v39 = v228;
      }

      sub_1C45E8D3C(v230);
    }

    v58 = v230[6];
    v59 = v230[7];
    v60 = *(v38 + 40);
    sub_1C4F02AF8();
    sub_1C45E8CE0(v230, v229);
    sub_1C4F01298();
    v61 = sub_1C4F02B68();
    v62 = ~(-1 << *(v38 + 32));
    do
    {
      v18 = v61 & v62;
      if (((*(v40 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
      {
        v39 = v228;
        goto LABEL_39;
      }

      v63 = (*(v38 + 48) + 16 * v18);
      if (*v63 == v58 && v63[1] == v59)
      {
        break;
      }

      v65 = sub_1C4F02938();
      v61 = v18 + 1;
    }

    while ((v65 & 1) == 0);
LABEL_50:
    sub_1C45E8D3C(v230);
    v39 = v228;
  }

  v74 = v223;
LABEL_54:
  v18 = v227;
  v231[26] = v227;
  v231[27] = sub_1C4C145A0;
  v231[28] = v226;
  v231[29] = sub_1C4C14254;
  v231[30] = 0;
  v231[31] = sub_1C4C1429C;
  v231[32] = 0;
  v213 = sub_1C4C145A8(v41, v74);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  for (i = 0; i != v39; ++i)
  {
    memcpy(v231, (v232 + 152 * i), 0x92uLL);
    if (*(v38 + 16))
    {
      v76 = v231[6];
      v77 = v231[7];
      v78 = *(v38 + 40);
      sub_1C4F02AF8();
      sub_1C45E8CE0(v231, v230);
      sub_1C4F01298();
      v79 = sub_1C4F02B68();
      v80 = ~(-1 << *(v38 + 32));
      while (1)
      {
        v18 = v79 & v80;
        if (((*(v40 + (((v79 & v80) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & v80)) & 1) == 0)
        {
          break;
        }

        v81 = (*(v38 + 48) + 16 * v18);
        if (*v81 != v76 || v81[1] != v77)
        {
          v83 = sub_1C4F02938();
          v79 = v18 + 1;
          if ((v83 & 1) == 0)
          {
            continue;
          }
        }

LABEL_78:
        sub_1C45E8D3C(v231);
        v39 = v228;
        goto LABEL_79;
      }

      v39 = v228;
    }

    else
    {
      sub_1C45E8CE0(v231, v230);
    }

    if (*(v38 + 16))
    {
      v84 = v231[9];
      v85 = v231[10];
      v86 = *(v38 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      v87 = sub_1C4F02B68();
      v88 = ~(-1 << *(v38 + 32));
      while (1)
      {
        v18 = v87 & v88;
        if (((*(v40 + (((v87 & v88) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v87 & v88)) & 1) == 0)
        {
          break;
        }

        v89 = (*(v38 + 48) + 16 * v18);
        if (*v89 != v84 || v89[1] != v85)
        {
          v91 = sub_1C4F02938();
          v87 = v18 + 1;
          if ((v91 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_78;
      }

      v39 = v228;
    }

    sub_1C45E8D3C(v231);
  }

  i = v223;
  while (1)
  {
LABEL_79:
    if (i == v39)
    {
      v108 = v223;
      i = v223;
      goto LABEL_109;
    }

    if (i >= v39)
    {
      goto LABEL_220;
    }

    memcpy(v231, (v232 + 152 * i), 0x92uLL);
    v18 = BYTE1(v231[18]);
    sub_1C45E8CE0(v231, v230);
    String.normalizedContactHandle()();
    sub_1C45E8D3C(v231);

    if (v18 != 1)
    {
      break;
    }

    while (1)
    {
      if (++i == v39)
      {
        i = v223;
        goto LABEL_79;
      }

      memcpy(v230, (v232 + 152 * i), 0x92uLL);
      if (*(v38 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v230, v229);
LABEL_94:
      if (*(v38 + 16))
      {
        v100 = v230[9];
        v101 = v230[10];
        v102 = *(v38 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();
        v103 = sub_1C4F02B68();
        v104 = ~(-1 << *(v38 + 32));
        while (1)
        {
          v18 = v103 & v104;
          if (((*(v40 + (((v103 & v104) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v103 & v104)) & 1) == 0)
          {
            break;
          }

          v105 = (*(v38 + 48) + 16 * v18);
          if (*v105 != v100 || v105[1] != v101)
          {
            v107 = sub_1C4F02938();
            v103 = v18 + 1;
            if ((v107 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_105;
        }

        v39 = v228;
      }

      sub_1C45E8D3C(v230);
    }

    v92 = v230[6];
    v93 = v230[7];
    v94 = *(v38 + 40);
    sub_1C4F02AF8();
    sub_1C45E8CE0(v230, v229);
    sub_1C4F01298();
    v95 = sub_1C4F02B68();
    v96 = ~(-1 << *(v38 + 32));
    do
    {
      v18 = v95 & v96;
      if (((*(v40 + (((v95 & v96) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v95 & v96)) & 1) == 0)
      {
        v39 = v228;
        goto LABEL_94;
      }

      v97 = (*(v38 + 48) + 16 * v18);
      if (*v97 == v92 && v97[1] == v93)
      {
        break;
      }

      v99 = sub_1C4F02938();
      v95 = v18 + 1;
    }

    while ((v99 & 1) == 0);
LABEL_105:
    sub_1C45E8D3C(v230);
    v39 = v228;
  }

  v108 = v223;
LABEL_109:
  v231[19] = v227;
  v231[20] = sub_1C4C145A0;
  v231[21] = v226;
  v231[22] = sub_1C4C14254;
  v231[23] = 0;
  v231[24] = sub_1C4C142A4;
  v231[25] = 0;
  v212 = sub_1C4C145A8(i, v108);

  v18 = v221;
  v39 = v220;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_225;
  }

  while (1)
  {
    v109 = sub_1C4F00978();
    sub_1C442B738(v109, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v110 = sub_1C4F00968();
    HIDWORD(v211) = sub_1C4F01CB8();
    if (!os_log_type_enabled(v110, BYTE4(v211)))
    {
      break;
    }

    v39 = 0;
    v207 = swift_slowAlloc();
    *v207 = 134218496;
    v111 = v225;
    v224 = v110;
    while (1)
    {
      if (v39 == v228)
      {
        v18 = 0;
LABEL_169:
        v149 = v207;
        *(v207 + 4) = v18;

        *(v149 + 12) = 2048;
        *(v149 + 14) = v213;
        *(v149 + 22) = 2048;
        *(v149 + 24) = v212;
        _os_log_impl(&dword_1C43F8000, v110, BYTE4(v211), "HandleMap: Processing %ld relevant triples. %ld removes, %ld adds.", v149, 0x20u);
        MEMORY[0x1C6942830](v149, -1, -1);

        v18 = v221;
        v39 = v220;
        goto LABEL_170;
      }

      memcpy(v231, (v232 + 152 * v39), 0x92uLL);
      if (*(v38 + 16))
      {
        break;
      }

      sub_1C45E8CE0(v231, v230);
LABEL_124:
      if (*(v38 + 16))
      {
        v121 = v231[9];
        v122 = v231[10];
        v123 = *(v38 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();
        v124 = sub_1C4F02B68();
        v125 = ~(-1 << *(v38 + 32));
        while (1)
        {
          v126 = v124 & v125;
          if (((*(v40 + (((v124 & v125) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v124 & v125)) & 1) == 0)
          {
            break;
          }

          v127 = (*(v38 + 48) + 16 * v126);
          if (*v127 != v121 || v127[1] != v122)
          {
            v129 = sub_1C4F02938();
            v124 = v126 + 1;
            if ((v129 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_136;
        }

        v110 = v224;
        v111 = v225;
      }

      sub_1C45E8D3C(v231);
      ++v39;
    }

    v112 = v231[6];
    v113 = v231[7];
    v114 = *(v38 + 40);
    sub_1C4F02AF8();
    sub_1C45E8CE0(v231, v230);
    sub_1C4F01298();
    v115 = sub_1C4F02B68();
    v116 = ~(-1 << *(v38 + 32));
    do
    {
      v117 = v115 & v116;
      if (((*(v40 + (((v115 & v116) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v115 & v116)) & 1) == 0)
      {
        v110 = v224;
        v111 = v225;
        goto LABEL_124;
      }

      v118 = (*(v38 + 48) + 16 * v117);
      if (*v118 == v112 && v118[1] == v113)
      {
        break;
      }

      v120 = sub_1C4F02938();
      v115 = v117 + 1;
    }

    while ((v120 & 1) == 0);
LABEL_136:
    sub_1C45E8D3C(v231);
    v18 = 0;
LABEL_137:
    v110 = v224;
    v130 = __OFADD__(v18++, 1);
    if (!v130)
    {
      if (v39 == v228)
      {
        goto LABEL_224;
      }

      v111 = v225;
      while (1)
      {
        v130 = __OFADD__(v39++, 1);
        if (v130)
        {
          break;
        }

        if (v39 == v228)
        {
          goto LABEL_169;
        }

        if (v39 >= v228)
        {
          goto LABEL_222;
        }

        memcpy(v231, (v232 + 152 * v39), 0x92uLL);
        if (*(v38 + 16))
        {
          v131 = v231[6];
          v132 = v231[7];
          v133 = *(v38 + 40);
          sub_1C4F02AF8();
          sub_1C45E8CE0(v231, v230);
          sub_1C4F01298();
          v134 = sub_1C4F02B68();
          v135 = ~(-1 << *(v38 + 32));
          do
          {
            v136 = v134 & v135;
            if (((*(v40 + (((v134 & v135) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v134 & v135)) & 1) == 0)
            {
              v110 = v224;
              v111 = v225;
              goto LABEL_154;
            }

            v137 = (*(v38 + 48) + 16 * v136);
            if (*v137 == v131 && v137[1] == v132)
            {
              break;
            }

            v139 = sub_1C4F02938();
            v134 = v136 + 1;
          }

          while ((v139 & 1) == 0);
LABEL_165:
          sub_1C45E8D3C(v231);
          goto LABEL_137;
        }

        sub_1C45E8CE0(v231, v230);
LABEL_154:
        if (*(v38 + 16))
        {
          v140 = v231[9];
          v141 = v231[10];
          v142 = *(v38 + 40);
          sub_1C4F02AF8();
          sub_1C4F01298();
          v143 = sub_1C4F02B68();
          v144 = ~(-1 << *(v38 + 32));
          while (1)
          {
            v145 = v143 & v144;
            if (((*(v40 + (((v143 & v144) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v143 & v144)) & 1) == 0)
            {
              break;
            }

            v146 = (*(v38 + 48) + 16 * v145);
            if (*v146 != v140 || v146[1] != v141)
            {
              v148 = sub_1C4F02938();
              v143 = v145 + 1;
              if ((v148 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_165;
          }

          v110 = v224;
          v111 = v225;
        }

        sub_1C45E8D3C(v231);
      }

LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
    }

    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    swift_once();
  }

  v111 = v225;
LABEL_170:
  MEMORY[0x1C693A960](0xD000000000000023, 0x80000001C4FB9F10);
  v150 = v218;
  v151 = sub_1C4EFBEE8();
  if (v150)
  {
    (*(v111 + 8))(v39, v18);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v224 = v151;
    v225 = *(v111 + 8);
    (v225)(v39, v18);
    v152 = v210;
    MEMORY[0x1C693A960](0xD000000000000031, 0x80000001C4FB9F40);
    v222 = sub_1C4EFBEE8();
    (v225)(v152, v18);
    if (v209)
    {
      v229[0] = MEMORY[0x1E69E7CD0];

      v154 = 32;
      for (j = v223; j; j = (j - 1))
      {
        memcpy(v231, (v227 + v154), 0x92uLL);
        v229[19] = v231[5];
        sub_1C45E8CE0(v231, v230);
        v156 = sub_1C4F02858();
        sub_1C44869B4(v230, v156, v157);
        sub_1C45E8D3C(v231);

        v154 += 152;
      }

      v158 = v229[0];
      v231[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v231[4] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
      v231[0] = v158;
      sub_1C4B8C0BC();

      sub_1C440962C(v231);
    }

    v223 = (v208 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v159 = 0;
    while (v159 != v228)
    {
      memcpy(v231, (v232 + 152 * v159++), 0x92uLL);
      if (*(v38 + 16))
      {
        v160 = v231[6];
        v161 = v231[7];
        v162 = *(v38 + 40);
        sub_1C4F02AF8();
        sub_1C45E8CE0(v231, v230);
        sub_1C4F01298();
        v163 = sub_1C4F02B68();
        v164 = ~(-1 << *(v38 + 32));
        do
        {
          v165 = v163 & v164;
          if (((*(v40 + (((v163 & v164) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v163 & v164)) & 1) == 0)
          {
            goto LABEL_188;
          }

          v166 = (*(v38 + 48) + 16 * v165);
          if (*v166 == v160 && v166[1] == v161)
          {
            break;
          }

          v168 = sub_1C4F02938();
          v163 = v165 + 1;
        }

        while ((v168 & 1) == 0);
LABEL_196:
        v225 = 0;
        v178 = v231[11];
        v179 = v231[12];
        v180 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
        v181 = sub_1C4F01108();
        v182 = [v180 typeOfHandleString_];

        if (v182 == 1)
        {
          v183 = objc_autoreleasePoolPush();
          v230[0] = sub_1C4F00FF8();
          v230[1] = v184;
          v185 = v214;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v186 = sub_1C4F01FF8();
          v188 = v187;
          (*v223)(v185, v215);

          objc_autoreleasePoolPop(v183);
          goto LABEL_204;
        }

        sub_1C44CFDB0(58, 0xE100000000000000, v178, v179);
        if (v189)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        else
        {
          v190 = sub_1C4F012B8();
          v191 = sub_1C44DBF14(v190, v178, v179);
          MEMORY[0x1C693FEF0](v191);
        }

        sub_1C4C14660();
        v192 = sub_1C44D0148();
        v193 = [v192 unformattedInternationalStringValue];
        if (v193)
        {
          v194 = v193;
          v186 = sub_1C4F01138();
          v188 = v195;

LABEL_204:
          sub_1C45E8D3C(v231);
        }

        else
        {

          sub_1C45E8D3C(v231);
          v186 = 0;
          v188 = 0;
        }

        v196 = v231[5];
        v197 = BYTE1(v231[18]);
        sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v198 = swift_allocObject();
        *(v198 + 16) = v219;
        if (v197)
        {
          if (v188)
          {
            v199 = MEMORY[0x1E69E6158];
            v200 = MEMORY[0x1E69A0138];
          }

          else
          {
            v186 = 0;
            v199 = 0;
            v200 = 0;
            *(v198 + 48) = 0;
          }

          v203 = v225;
          *(v198 + 32) = v186;
          *(v198 + 40) = v188;
          *(v198 + 56) = v199;
          *(v198 + 64) = v200;
          *(v198 + 96) = MEMORY[0x1E69E7360];
          *(v198 + 104) = MEMORY[0x1E69A01D0];
          *(v198 + 72) = v196;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v204 = v217;
          sub_1C4EFB728();
          v205 = sub_1C4EFB768();
          sub_1C440BAA8(v204, 0, 1, v205);
        }

        else
        {
          if (v188)
          {
            v201 = MEMORY[0x1E69E6158];
            v202 = MEMORY[0x1E69A0138];
          }

          else
          {
            v186 = 0;
            v201 = 0;
            v202 = 0;
            *(v198 + 48) = 0;
          }

          v203 = v225;
          *(v198 + 32) = v186;
          *(v198 + 40) = v188;
          *(v198 + 56) = v201;
          *(v198 + 64) = v202;
          *(v198 + 96) = MEMORY[0x1E69E7360];
          *(v198 + 104) = MEMORY[0x1E69A01D0];
          *(v198 + 72) = v196;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v204 = v216;
          sub_1C4EFB728();
          v206 = sub_1C4EFB768();
          sub_1C440BAA8(v204, 0, 1, v206);
        }

        sub_1C4EFC0A8();
        if (!v203)
        {

          sub_1C4AE5118(v204);
          continue;
        }

        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
        return sub_1C4AE5118(v204);
      }

      sub_1C45E8CE0(v231, v230);
LABEL_188:
      if (*(v38 + 16))
      {
        v169 = v231[9];
        v170 = v231[10];
        v171 = *(v38 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();
        v172 = sub_1C4F02B68();
        v173 = ~(-1 << *(v38 + 32));
        while (1)
        {
          v174 = v172 & v173;
          if (((*(v40 + (((v172 & v173) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v172 & v173)) & 1) == 0)
          {
            break;
          }

          v175 = (*(v38 + 48) + 16 * v174);
          if (*v175 != v169 || v175[1] != v170)
          {
            v177 = sub_1C4F02938();
            v172 = v174 + 1;
            if ((v177 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_196;
        }
      }

      sub_1C45E8D3C(v231);
    }

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1C4C13B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_1C4F02858();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1C4C13BC4(uint64_t a1)
{
  v4 = sub_1C4D0E2C0();
  if (v4)
  {
    sub_1C4C13EF8();
    sub_1C4D0E478();
    return;
  }

  sub_1C4D0E664(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45, v46, v48, v50, v52, v53, v55, v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, v61, v62, v63);
  if (v12)
  {
    sub_1C4C11C38(a1);
    return;
  }

  v13 = *(a1 + 56);
  v15 = *(v13 + 88);
  v14 = *(v13 + 96);
  if (*(v13 + 80) == 1)
  {
    v16 = v14 >> 60 == 15;
    if (v14 >> 60 == 15)
    {
      v49 = *(v13 + 96);
      v51 = v1;
      v47 = *(v13 + 88);
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v21 = sub_1C440BB4C();
      sub_1C4431E64(v21, v22);
      v23 = sub_1C440BB4C();
      sub_1C44344B8(v23, v24);
      v25 = sub_1C440BB4C();
      sub_1C44F9344(v25, v26);
      if (v2)
      {
        v29 = v15;
LABEL_31:
        sub_1C441DFEC(v29, v14);
        return;
      }

      v49 = v14;
      v51 = v1;
      v47 = v15;
      v17 = v27;
      v18 = v28;
    }
  }

  else
  {
    v49 = *(v13 + 96);
    v51 = v1;
    v47 = *(v13 + 88);
    v16 = 1;
    v19 = sub_1C440BB4C();
    sub_1C4431E64(v19, v20);
    v17 = 0.0;
    v18 = 0.0;
  }

  v54 = *(a1 + 64);
  v30 = sub_1C4428DA0();
  if (!v30)
  {
LABEL_25:
    if (*(v13 + 80) != 1)
    {
      sub_1C444F17C();
      sub_1C441DFEC(v47, v49);
      return;
    }

    if (v16)
    {
      v42 = 0;
      v14 = 0xF000000000000000;
    }

    else
    {
      v42 = sub_1C44F95AC(v17, v18);
      v14 = v43;
    }

    sub_1C4CCDA9C(v42, v14);
    sub_1C441DFEC(v47, v49);
    v29 = v42;
    goto LABEL_31;
  }

  v31 = v30;
  if (v30 >= 1)
  {
    for (i = 0; i != v31; ++i)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1C6940F90](i, v54);
      }

      else
      {
        v33 = *(v54 + 8 * i + 32);
      }

      if (*(v13 + 32) & 1) != 0 || *(v33 + 32) == 1 && (sub_1C4C13F58())
      {
        v34 = *(v51 + 160);
        v58 = *(v51 + 144);
        v59 = v34;
        v60 = *(v51 + 176);
        v35 = sub_1C4CDFB34(0, 1, &v58, 0, 1);
        v37 = v36;
        v38 = *(*(v51 + 16) + 16);
        MEMORY[0x1EEE9AC00](v35);

        sub_1C49A56B8();
        v18 = v39;
        v16 = v40;
        v17 = v41;

        sub_1C4CDF41C(v37);
      }

      else
      {
        *(v33 + 34) = 1;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1C4C13EF8()
{
  v1 = *(*(v0 + 16) + 16);

  sub_1C446C37C(sub_1C4C149AC, v0);
}

uint64_t sub_1C4C13F58()
{
  v1 = *(v0 + 33);
  v2 = 1;
  switch(v1)
  {
    case 3:
      break;
    default:
      v2 = sub_1C4F02938();
      break;
  }

  return v2 & 1;
}

void sub_1C4C14050(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = a5;
  v8 = a2[12];
  if (v8)
  {
    v16 = a4;
    v20 = *(a3 + 16);
    v18 = *a3;
    v19 = a3[1];
    v9 = a2[11];
    v21 = a2[13];
    v22 = a2[14];
    v23 = a2[15];
    v24 = a2[16];
    v25 = a2[17];
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    v6 = a1;
    sub_1C4BC3C1C(v9, v8);

    sub_1C4B8B458();
    if (v5)
    {
      return;
    }

    v11 = v10;
    a4 = v16;
    v7 = a5;
  }

  else
  {
    v11 = 0;
  }

  sub_1C4C123DC(v6, a4, v11);
  if (v5)
  {
  }

  else if (v11)
  {

    sub_1C4B8BB5C();
    v13 = v12;
    v15 = v14;

    *v7 = v13;
    *(v7 + 8) = v15;
    *(v7 + 16) = 0;
  }

  else
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
  }
}

BOOL sub_1C4C141E4(uint64_t *a1, void *a2)
{
  v3 = a1[9];
  v4 = a1[10];
  if (sub_1C4499AD0(a1[6], a1[7], a2))
  {
    return 1;
  }

  return sub_1C4499AD0(v3, v4, a2);
}

uint64_t sub_1C4C14254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v6 = *(a1 + 145);
  v8 = String.normalizedContactHandle()();
  result = v8.value._countAndFlagsBits;
  *a2 = v8;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  return result;
}

void sub_1C4C142B4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 2, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[12];
    if (v4)
    {
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = a2[14];
      v9 = a2[15];
      v10 = a2[16];
      v11 = a2[17];
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

void *sub_1C4C143E0()
{
  memcpy(v4, v0 + 2, sizeof(v4));
  sub_1C4BCDE54(v4);
  v1 = v0[18];
  v2 = v0[22];

  return v0;
}

uint64_t sub_1C4C14434()
{
  sub_1C4C143E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C1448C(uint64_t a1)
{
  sub_1C4C13BC4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C14504(uint64_t a1)
{
  sub_1C4C11C38(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C145A8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = v2[1];
  v11 = *v2;
  v12 = v5;
  v13 = *(v2 + 4);
  result = sub_1C4C14844(a1, a2);
  if (v3 < a1)
  {
    v10 = v3;
    v7 = -1;
    v3 = a1;
    goto LABEL_6;
  }

  v10 = a1;
  if (a1 != v3)
  {
    v7 = 1;
LABEL_6:
    v9 = 0;
    while (1)
    {
      v8 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        break;
      }

      result = sub_1C4C146A4(&v10);
      v9 += v7;
      if (v10 == v3)
      {
        return v8;
      }
    }

    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1C4C14660()
{
  result = qword_1EDDFA538;
  if (!qword_1EDDFA538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA538);
  }

  return result;
}

unint64_t *sub_1C4C146A4(unint64_t *result)
{
  v2 = *result;
  v3 = *(*v1 + 16);
  if (*result != v3)
  {
    v5 = v1[1];
    v4 = v1[2];
    v14 = v1[3];
    v12 = result;
    v13 = v1[4];
    v6 = *v1 + 32;
    v7 = v1[5];
    v8 = v1[6];
    while (1)
    {
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v9 == v3)
      {
        goto LABEL_10;
      }

      if (v9 >= v3)
      {
        goto LABEL_12;
      }

      memcpy(__dst, (v6 + 152 * v9), 0x92uLL);
      memcpy(__src, (v6 + 152 * v9), 0x92uLL);
      sub_1C45E8CE0(__dst, v19);
      v10 = v5(__src);
      memcpy(v22, __src, 0x92uLL);
      result = sub_1C45E8D3C(v22);
      if (v10)
      {
        memcpy(v19, (v6 + 152 * v9), 0x92uLL);
        memcpy(v15, (v6 + 152 * v9), 0x92uLL);
        sub_1C45E8CE0(v19, __src);
        v14(&v16, v15);
        memcpy(__src, v15, 0x92uLL);
        sub_1C45E8D3C(__src);
        v15[0] = v16;
        *&v15[1] = v17;
        LOBYTE(v15[3]) = v18;
        v11 = v7(v15);

        if (v11)
        {
          v3 = v2 + 1;
LABEL_10:
          *v12 = v3;
          return result;
        }
      }

      ++v2;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C14844(uint64_t result, uint64_t a2)
{
  v3 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v14 = 1;
    v4 = a2;
    v3 = result;
  }

  else
  {
    v14 = -1;
    v4 = result;
  }

  v5 = 0;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *(v6 + 16);
  v10 = v6 + 32;
  while (2)
  {
    v11 = __OFADD__(v5, v14);
    v5 += v14;
    if (v11)
    {
LABEL_19:
      __break(1u);
    }

    else if (v3 != v9)
    {
      while (1)
      {
        v12 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (v12 == v9)
        {
          break;
        }

        if (v12 >= v9)
        {
          goto LABEL_18;
        }

        memcpy(__dst, (v10 + 152 * v12), 0x92uLL);
        memcpy(__src, (v10 + 152 * v12), 0x92uLL);
        sub_1C45E8CE0(__dst, v17);
        v13 = v7(__src);
        memcpy(v17, __src, 0x92uLL);
        result = sub_1C45E8D3C(v17);
        ++v3;
        if (v13)
        {
          v3 = v12;
          goto LABEL_15;
        }
      }

      v3 = v9;
LABEL_15:
      if (v3 != v4)
      {
        continue;
      }

      return v5;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C149DC()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1C4409678(v0 + 6, v1);
  (*(v2 + 16))(v6, v1, v2);
  v3 = v7;
  v4 = v8;
  sub_1C4409678(v6, v7);
  (*(v4 + 32))(v3, v4);
  return sub_1C440962C(v6);
}

uint64_t sub_1C4C14A7C(uint64_t a1)
{
  v2 = v1;
  v4 = v1[9];
  v5 = v1[10];
  sub_1C4409678(v1 + 6, v4);
  (*(v5 + 16))(v11, v4, v5);
  v6 = v12;
  v7 = v13;
  sub_1C4409678(v11, v12);
  v8 = *((*(v7 + 16))(v6, v7) + 16);

  v10[2] = v2;
  v10[3] = a1;
  sub_1C446C37C(sub_1C4C15CF4, v10);

  return sub_1C440962C(v11);
}

uint64_t sub_1C4C14B6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v112 = *MEMORY[0x1E69E9840];
  v7 = sub_1C456902C(&qword_1EC0C4C78, &unk_1C4F5FAF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v97 = (&v89 - v9);
  v10 = sub_1C456902C(&qword_1EC0C4C80, &unk_1C4F5DC90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = sub_1C4F00588();
  v100 = *(v17 - 8);
  v18 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = (&v89 - v21);
  v95 = sub_1C4EFBF08();
  if (v95)
  {
    v102 = v13;
    v103 = v7;
    v94 = a3;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1C4F02248();
    ppStmt = v106;
    v111 = v107;
    MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB3840);
    v22 = a2[9];
    v23 = a2[10];
    sub_1C4409678(a2 + 6, v22);
    (*(v23 + 16))(&v106, v22, v23);
    v24 = v108;
    v25 = v109;
    sub_1C4409678(&v106, v108);
    v26 = (*(v25 + 8))(v24, v25);
    MEMORY[0x1C6940010](v26);

    sub_1C440962C(&v106);
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
    MEMORY[0x1C6940010](a2[4], a2[5]);
    MEMORY[0x1C6940010](0x3F203D2022, 0xE500000000000000);
    v96 = ppStmt;
    v91 = v111;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1C4F02248();
    ppStmt = v106;
    v111 = v107;
    MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FBA000);
    v27 = a2[9];
    v28 = a2[10];
    sub_1C4409678(a2 + 6, v27);
    (*(v28 + 16))(&v106, v27, v28);
    v29 = v108;
    v30 = v109;
    sub_1C4409678(&v106, v108);
    v31 = (*(v30 + 8))(v29, v30);
    MEMORY[0x1C6940010](v31);

    sub_1C440962C(&v106);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBA020);
    v32 = a2[9];
    v33 = a2[10];
    sub_1C4409678(a2 + 6, v32);
    (*(v33 + 16))(&v106, v32, v33);
    v34 = v108;
    v35 = v109;
    sub_1C4409678(&v106, v108);
    v36 = *((*(v35 + 24))(v34, v35) + 16);
    if (v36)
    {
      v98 = v17;
      v99 = v3;
      v105 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v37 = v105;
      v38 = *(v105 + 16);
      v39 = 16 * v38;
      do
      {
        v105 = v37;
        v40 = v38 + 1;
        if (v38 >= *(v37 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v37 = v105;
        }

        *(v37 + 16) = v40;
        v41 = v37 + v39;
        *(v41 + 32) = 63;
        *(v41 + 40) = 0xE100000000000000;
        v39 += 16;
        v38 = v40;
        --v36;
      }

      while (v36);

      v17 = v98;
      v4 = v99;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    sub_1C440962C(&v106);
    v106 = v37;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    v44 = sub_1C4F01048();
    v46 = v45;

    MEMORY[0x1C6940010](v44, v46);

    MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
    v90 = ppStmt;
    ppStmt = 0;
    v47 = v91;
    v48 = sub_1C4F011C8();
    LODWORD(v44) = sqlite3_prepare_v2(v95, (v48 + 32), -1, &ppStmt, 0);

    if (v44 || (v54 = ppStmt) == 0)
    {

      v106 = 0;
      v107 = 0xE000000000000000;
      sub_1C4F02248();

      v106 = 0xD00000000000001CLL;
      v107 = 0x80000001C4FBA040;
      MEMORY[0x1C6940010](v96, v47);

      v49 = v106;
      v50 = v107;
      sub_1C446D0DC();
      swift_allocError();
      *v51 = v49;
      *(v51 + 8) = v50;
      *(v51 + 16) = 2;
      swift_willThrow();
LABEL_13:
      v52 = ppStmt;
      goto LABEL_14;
    }

    sub_1C4F006D8();
    v55 = sub_1C4F006B8();

    if (!*(v55 + 16))
    {
      goto LABEL_49;
    }

    v56 = *(v100 + 16);
    v89 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v93 = v100 + 16;
    v92 = v56;
    v56(v101, (v55 + v89), v17);

    while (1)
    {
      sub_1C4F006D8();
      v57 = sub_1C4F006A8();
      if (v4)
      {
        (*(v100 + 8))(v101, v17);

        goto LABEL_13;
      }

      v58 = v57;

      if ((v58 & 1) == 0)
      {
        break;
      }

      sqlite3_reset(v54);
      v59 = sub_1C4F00568();
      sqlite3_bind_value(v54, 1, v59);
      if ((sqlite3_step(v54) & 0xFFFFFFFE) != 0x64)
      {

        v106 = 0;
        v107 = 0xE000000000000000;
        sub_1C4F02248();

        v106 = 0x747320726F727265;
        v107 = 0xEF20676E69707065;
        MEMORY[0x1C6940010](v96, v47);

        v60 = v106;
        v61 = v107;
        sub_1C446D0DC();
        swift_allocError();
        *v62 = v60;
        *(v62 + 8) = v61;
        *(v62 + 16) = 2;
        swift_willThrow();
        (*(v100 + 8))(v101, v17);
        goto LABEL_13;
      }
    }

    v98 = *(v100 + 8);
    v99 = v100 + 8;
    v98(v101, v17);
    sqlite3_finalize(ppStmt);
    ppStmt = 0;
    v63 = sub_1C4F011C8();

    v64 = sqlite3_prepare_v2(v95, (v63 + 32), -1, &ppStmt, 0);

    if (!v64)
    {
      v101 = ppStmt;
      if (ppStmt)
      {
        v67 = (v100 + 32);
        while (1)
        {
          sub_1C4F006E8();
          v68 = sub_1C4F006A8();

          if ((v68 & 1) == 0)
          {
            break;
          }

          v69 = v101;
          sqlite3_reset(v101);
          sqlite3_clear_bindings(v69);
          sub_1C4F006E8();
          v70 = sub_1C4F006B8();

          v71 = 0;
          v72 = *(v70 + 2);
          v95 = v70;
          v90 = (v70 + v89);
          while (1)
          {
            v73 = v103;
            if (v71 == v72)
            {
              v74 = 1;
              v71 = v72;
              v75 = v102;
            }

            else
            {
              if ((v71 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              if (v71 >= *(v95 + 2))
              {
                goto LABEL_48;
              }

              v76 = v90 + *(v100 + 72) * v71;
              v77 = *(v103 + 48);
              v78 = v97;
              *v97 = v71;
              v92(v78 + v77, v76, v17);
              v79 = v78;
              v75 = v102;
              sub_1C482D820(v79, v102, &qword_1EC0C4C78, &unk_1C4F5FAF0);
              v74 = 0;
              ++v71;
            }

            sub_1C440BAA8(v75, v74, 1, v73);
            sub_1C482D820(v75, v16, &qword_1EC0C4C80, &unk_1C4F5DC90);
            if (sub_1C44157D4(v16, 1, v73) == 1)
            {
              break;
            }

            v80 = *v16;
            (*v67)(v104, &v16[*(v73 + 48)], v17);
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
            }

            if (v81 < 0xFFFFFFFF80000000)
            {
              goto LABEL_45;
            }

            if (v81 > 0x7FFFFFFF)
            {
              goto LABEL_46;
            }

            v82 = v104;
            v83 = sub_1C4F00568();
            sqlite3_bind_value(v101, v80 + 1, v83);
            v98(v82, v17);
          }

          v84 = sqlite3_step(v101);
          v85 = v96;
          if ((v84 & 0xFFFFFFFE) != 0x64)
          {
            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1C4F02248();

            v106 = 0x747320726F727265;
            v107 = 0xEF20676E69707065;
            MEMORY[0x1C6940010](v85, v91);

            v86 = v106;
            v87 = v107;
            sub_1C446D0DC();
            swift_allocError();
            *v88 = v86;
            *(v88 + 8) = v87;
            *(v88 + 16) = 2;
            swift_willThrow();
            goto LABEL_43;
          }
        }

LABEL_43:
        v52 = v101;
LABEL_14:
        result = sqlite3_finalize(v52);
        goto LABEL_15;
      }
    }

    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1C4F02248();

    v106 = 0xD00000000000001CLL;
    v107 = 0x80000001C4FBA040;
    MEMORY[0x1C6940010](v96, v47);

    v65 = v106;
    v66 = v107;
    sub_1C446D0DC();
    swift_allocError();
    *v42 = v65;
    *(v42 + 8) = v66;
  }

  else
  {
    sub_1C446D0DC();
    swift_allocError();
    *v42 = 0xD000000000000014;
    *(v42 + 8) = 0x80000001C4FB9FE0;
  }

  *(v42 + 16) = 2;
  result = swift_willThrow();
LABEL_15:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4C157CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FB3A10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C15898(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1C4C158D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = sub_1C456902C(&qword_1EC0C4C98, &qword_1C4F5DCA8);
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4C16098();
  sub_1C4F02BF8();
  v19 = 0;
  sub_1C4F02798();
  if (!v5)
  {
    v18 = 1;
    sub_1C4F02798();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1C4C15A3C(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C4C88, &qword_1C4F5DCA0);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4C16098();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C4F02678();
    v9 = sub_1C4402F74();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4C15C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C157CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C15C2C(uint64_t a1)
{
  v2 = sub_1C4C16098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C15C68(uint64_t a1)
{
  v2 = sub_1C4C16098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C15CA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4C15A3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_1C4C15D10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = _s10ViewConfigVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  sub_1C4C81AA0();
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v28, v31);
      swift_unownedRetainStrong();
      v12 = *(a4 + 16);

      sub_1C443A738(a1, a2, v13, v14, v15, v16, v17, v18);

      v21 = v11[22];
      if (v21)
      {
        v23 = v11[23];
        v22 = v11[24];
        v24 = v11[21];
        sub_1C441D670(v31, v30);
        _s31IncrementalObjectViewGenerationCMa();
        a2 = swift_allocObject();
        sub_1C441D670(v30, (a2 + 6));
        a2[4] = v23;
        a2[5] = v22;
        a2[2] = v24;
        a2[3] = v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        sub_1C450B034();
        swift_allocError();
        *v25 = a1;
        *(v25 + 8) = a2;
        *(v25 + 16) = 0xD000000000000041;
        *(v25 + 24) = 0x80000001C4FB2690;
        v26 = v30[1];
        *(v25 + 32) = v30[0];
        *(v25 + 48) = v26;
        *(v25 + 64) = 3;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v31);
      }

      sub_1C445F57C(v11);
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      sub_1C4C162E0(v28);
      sub_1C450B034();
      swift_allocError();
      *v19 = a1;
      *(v19 + 8) = a2;
      *(v19 + 16) = xmmword_1C4F5B670;
      *(v19 + 32) = 0xD000000000000025;
      *(v19 + 40) = 0x80000001C4FB83A0;
      *(v19 + 48) = v27;
      *(v19 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4C15FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1C4C15D10(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

unint64_t sub_1C4C16098()
{
  result = qword_1EC0C4C90;
  if (!qword_1EC0C4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4C90);
  }

  return result;
}

_BYTE *_s17IncrementalObjectV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4C161DC()
{
  result = qword_1EC0C4CA0;
  if (!qword_1EC0C4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CA0);
  }

  return result;
}

unint64_t sub_1C4C16234()
{
  result = qword_1EC0C4CA8;
  if (!qword_1EC0C4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CA8);
  }

  return result;
}

unint64_t sub_1C4C1628C()
{
  result = qword_1EC0C4CB0;
  if (!qword_1EC0C4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4CB0);
  }

  return result;
}

uint64_t sub_1C4C162E0(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C06B0, &qword_1C4F5FBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4C16384()
{
  v1 = sub_1C4C16348();
  v2 = *(v0 + 8);

  return v2(v1, &off_1F4403A58);
}

void sub_1C4C163F8()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Configuration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C43F8000, v10, v11, "initializeGlobalKnowledgeAssetsViewGenerator: triggering global asset load...", v12, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v39[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v39[1] = xmmword_1EDDFFA48;
  do
  {
    v17 = v15;
    v18 = &v39[v16];
    v20 = *v18;
    v19 = v18[1];
    if ((v20 & ~v13) != 0 || (v19 & v14) != v19)
    {
      v13 |= v20;
      v14 |= v19;
    }

    v15 = 1;
    v16 = 1;
  }

  while ((v17 & 1) == 0);
  sub_1C4F001A8();
  (*(v1 + 16))(v8, v4, v0);
  static Features.optionsForEnabledFeatures.getter(v38);
  (*(v1 + 8))(v4, v0);
  v22 = v38[1] | v14;
  v23 = &v8[*(v5 + 20)];
  *v23 = v38[0] | v13;
  v23[1] = v22;
  v24 = type metadata accessor for GlobalKnowledgeDatabase();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  GlobalKnowledgeDatabase.checkAndLoadAssets()();

  if (!v27)
  {
    v29 = sub_1C4F00968();
    v35 = sub_1C4F01CB8();
    if (os_log_type_enabled(v29, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v35, "initializeGlobalKnowledgeAssetsViewGenerator: done global asset load...", v36, 2u);
      sub_1C43FBE2C();
    }

    goto LABEL_19;
  }

  v28 = v27;
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CD8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_1C43F8000, v29, v30, "initializeGlobalKnowledgeAssetsViewGenerator: failed to load global asset: %@", v31, 0xCu);
    sub_1C45B4B90(v32);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_19:
    return;
  }
}

uint64_t sub_1C4C16884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s28K2TLifeEventMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C169D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C16884(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C16A84(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FCE30(&v171 - v8);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FCE30(&v171 - v14);
  v186 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v186);
  v191 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCE30(&v171 - v20);
  v202 = sub_1C4EFEFD8();
  v21 = sub_1C43FCDF8(v202);
  v190 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FCE30(&v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1C456902C(&qword_1EC0C4CB8, &qword_1C4F5DF20);
  v27 = sub_1C43FBD18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v171 - v30;
  v207 = sub_1C456902C(&qword_1EC0C4CC0, &qword_1C4F5DF28);
  v31 = sub_1C43FBCE0(v207);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v171 - v35;
  v37 = sub_1C456902C(&qword_1EC0C4CC8, &qword_1C4F5DF30);
  v38 = sub_1C43FBD18(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v171 - v44;
  v209 = sub_1C456902C(&qword_1EC0C4CD0, &qword_1C4F5DF38);
  v46 = sub_1C43FCDF8(v209);
  v192 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FCE30(&v171 - v50);
  v195 = sub_1C456902C(&qword_1EC0C4CD8, &unk_1C4F5DF40);
  v51 = sub_1C43FCDF8(v195);
  v194 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v171 - v56;
  v198 = v1;
  v58 = *(v1 + 16);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v59 = *(sub_1C4EFEEF8() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  v199 = a1;
  v63 = sub_1C486F58C(a1, v62, 0.0);

  __dst[0] = v63;
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4C17E38(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
  v64 = sub_1C4F01498();

  v201 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0xD000000000000013, 0x80000001C4FAA9C0, v201);
  v200 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0x2D4D4D2D79797979, 0xEA00000000006464, v200);
  v197 = v64;
  __dst[0] = v64;
  v65 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v66 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0);
  v67 = sub_1C4C17E38(&qword_1EC0C4CE0, MEMORY[0x1E69A97F8]);
  v68 = sub_1C4C17CE0();
  v69 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  v196 = v69;
  if (!v69)
  {
    v79 = *(v194 + 16);
    v179 = v57;
    v79(v188, v57, v195);
    __dst[0] = v65;
    __dst[1] = v202;
    __dst[2] = v66;
    __dst[3] = v67;
    v176 = v67;
    __dst[4] = v68;
    swift_getOpaqueTypeConformance2();
    v80 = v189;
    sub_1C4F01478();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v188 = v190 + 32;
    v178 = (v191 + 32);
    v177 = (v191 + 8);
    v191 = MEMORY[0x1E69E7CC0];
    v81 = &qword_1EC0C4CC0;
    v175 = xmmword_1C4F0F830;
    v190 += 8;
    v82 = v80;
    v83 = v193;
    v203 = v36;
    v204 = v42;
    while (1)
    {
      while (1)
      {
        v84 = v82;
        sub_1C4F01FA8();
        sub_1C49328EC(v42, v45, &qword_1EC0C4CC8, &qword_1C4F5DF30);
        v85 = sub_1C456902C(&qword_1EC0C4CE8, &qword_1C4F5DF60);
        if (sub_1C44157D4(v45, 1, v85) == 1)
        {
          (*(v192 + 8))(v84, v209);
          (*(v194 + 8))(v179, v195);
          v163 = v191;
          goto LABEL_33;
        }

        v86 = v81;
        v87 = v206;
        sub_1C49328EC(&v45[*(v85 + 48)], v206, &qword_1EC0C4CB8, &qword_1C4F5DF20);
        if (sub_1C44157D4(v87, 1, v207) == 1)
        {
          sub_1C4420C3C(v87, &qword_1EC0C4CB8, &qword_1C4F5DF20);
          goto LABEL_12;
        }

        v88 = v87;
        v89 = v203;
        sub_1C49328EC(v88, v203, v81, &qword_1C4F5DF28);
        sub_1C4C17DC8(v89, v83);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1C4420C3C(v89, v81, &qword_1C4F5DF28);
        sub_1C4420C3C(v83, v81, &qword_1C4F5DF28);
LABEL_12:
        v90 = sub_1C456902C(&qword_1EC0C4CF0, qword_1C4F5DF68);
        sub_1C43FBCE0(v90);
        (*(v91 + 8))(v45);
        v82 = v84;
        v42 = v204;
      }

      sub_1C4402C08(&v210);
      v92 = v187;
      v93 = v202;
      v94(v187, v83, v202);
      v95 = v185;
      sub_1C4EFEFC8();
      v96 = sub_1C4EFFC68();
      if (sub_1C44157D4(v95, 1, v96) == 1)
      {
        break;
      }

      v189 = v96;
      v101 = v184;
      sub_1C4EFFC58();
      v92 = v101;
      v102 = *(v189 - 8);
      v81 = *(v102 + 8);
      v174 = v102 + 8;
      (v81)(v95);
      v103 = v186;
      if (sub_1C44157D4(v92, 1, v186) == 1)
      {
        v104 = sub_1C4407F0C();
        v105(v104);
        v106 = sub_1C440B618();
        goto LABEL_17;
      }

      v173 = v81;
      v108 = v103;
      v172 = *v178;
      v172(v183, v92, v103);
      v109 = v182;
      v92 = v187;
      sub_1C4EFEFC8();
      v81 = v189;
      if (sub_1C44157D4(v109, 1, v189) == 1)
      {
        sub_1C4402C08(&__dst[1]);
        v110(v183, v108);
        sub_1C4402C08(&v211);
        v111(v92, v202);
        v112 = sub_1C440B618();
        sub_1C4420C3C(v112, v113, &qword_1C4F5DF28);
        sub_1C4420C3C(v109, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v114 = sub_1C44039C0(&__dst[4]);
        sub_1C440BAA8(v114, v115, v116, v108);
        goto LABEL_20;
      }

      v119 = v81;
      v81 = v180;
      sub_1C4EFFC48();
      v92 = v81;
      (v173)(v182, v119);
      if (sub_1C44157D4(v81, 1, v108) == 1)
      {
        sub_1C4402C08(&__dst[1]);
        v120(v183, v108);
        v121 = sub_1C4407F0C();
        v122(v121);
        v106 = sub_1C440B618();
LABEL_17:
        sub_1C4420C3C(v106, v107, &qword_1C4F5DF28);
LABEL_20:
        sub_1C4420C3C(v92, &unk_1EC0B84E0, qword_1C4F0D2D0);
        goto LABEL_21;
      }

      v172(v181, v81, v108);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v123 = swift_allocObject();
      *(v123 + 16) = v175;
      *(v123 + 56) = sub_1C4EFF0C8();
      *(v123 + 64) = sub_1C4C17E38(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
      sub_1C4422F90((v123 + 32));
      sub_1C4EFD5A8();
      sub_1C4EF9AD8();
      v124 = MEMORY[0x1E69E63B0];
      *(v123 + 96) = MEMORY[0x1E69E63B0];
      v125 = MEMORY[0x1E69A0168];
      *(v123 + 104) = MEMORY[0x1E69A0168];
      *(v123 + 72) = v126;
      sub_1C4EF9AD8();
      *(v123 + 136) = v124;
      *(v123 + 144) = v125;
      *(v123 + 112) = v127;
      v128 = sub_1C4EF9BF8();
      v129 = sub_1C44039D4(v128, sel_stringFromDate_);

      v130 = sub_1C4F01138();
      v189 = v131;

      *(v123 + 176) = MEMORY[0x1E69E6158];
      v132 = MEMORY[0x1E69A0138];
      *(v123 + 184) = MEMORY[0x1E69A0138];
      v133 = v189;
      *(v123 + 152) = v130;
      *(v123 + 160) = v133;
      v134 = sub_1C4EF9BF8();
      v135 = sub_1C44039D4(v134, sel_stringFromDate_);

      v136 = sub_1C4F01138();
      v138 = v137;

      *(v123 + 216) = MEMORY[0x1E69E6158];
      *(v123 + 224) = v132;
      *(v123 + 192) = v136;
      *(v123 + 200) = v138;
      v139 = sub_1C4EF9BF8();
      v140 = sub_1C44039D4(v139, sel_stringFromDate_);

      v141 = sub_1C4F01138();
      v189 = v142;

      *(v123 + 256) = MEMORY[0x1E69E6158];
      *(v123 + 264) = v132;
      v143 = v189;
      *(v123 + 232) = v141;
      *(v123 + 240) = v143;
      v144 = sub_1C4EF9BF8();
      v145 = v123;
      v146 = sub_1C44039D4(v144, sel_stringFromDate_);

      v147 = sub_1C4F01138();
      v149 = v148;

      v145[37] = MEMORY[0x1E69E6158];
      v145[38] = v132;
      v145[34] = v147;
      v145[35] = v149;
      v150 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = *(v150 + 16);
        sub_1C458B824();
        v150 = v161;
      }

      v151 = *(v150 + 16);
      v152 = v151 >= *(v150 + 24) >> 1;
      v83 = v193;
      v189 = v151;
      v174 = v151 + 1;
      if (v152)
      {
        sub_1C458B824();
        v191 = v162;
      }

      else
      {
        v191 = v150;
      }

      v81 = v177;
      v153 = *v177;
      v154 = v186;
      (*v177)(v181, v186);
      v153(v183, v154);
      v155 = sub_1C4407F0C();
      v156(v155);
      v157 = sub_1C440B618();
      sub_1C4420C3C(v157, v158, &qword_1C4F5DF28);
      v159 = v191;
      *(v191 + 16) = v174;
      *(v159 + 8 * v189 + 32) = v145;
LABEL_21:
      v42 = v204;
      v117 = sub_1C456902C(&qword_1EC0C4CF0, qword_1C4F5DF68);
      sub_1C43FBCE0(v117);
      (*(v118 + 8))(v45);
      v82 = v84;
    }

    sub_1C4402C08(&v211);
    v97(v92, v93);
    sub_1C4420C3C(v203, v86, &qword_1C4F5DF28);
    sub_1C4420C3C(v95, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v98 = sub_1C44039C0(&__dst[8]);
    sub_1C440BAA8(v98, v99, v100, v186);
    v81 = v86;
    goto LABEL_20;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v70 = sub_1C4F00978();
  sub_1C442B738(v70, qword_1EDE2DF70);
  v71 = v196;
  v72 = v196;
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CD8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138412290;
    v77 = v71;
    v78 = _swift_stdlib_bridgeErrorToNSError();
    *(v75 + 4) = v78;
    *v76 = v78;
    _os_log_impl(&dword_1C43F8000, v73, v74, "error with context.allGraphObjectsOfType: %@", v75, 0xCu);
    sub_1C4420C3C(v76, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v76, -1, -1);
    MEMORY[0x1C6942830](v75, -1, -1);
  }

  else
  {
  }

  v163 = MEMORY[0x1E69E7CC0];
LABEL_33:
  memcpy(__dst, (v198 + 24), sizeof(__dst));
  sub_1C4BE3DEC(v163, v199, v164, v165, v166, v167, v168, v169);
}

unint64_t sub_1C4C17CE0()
{
  result = qword_1EDDDBD90;
  if (!qword_1EDDDBD90)
  {
    sub_1C4572308(&qword_1EC0C4720, &unk_1C4F5DF50);
    sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800);
    sub_1C4C17E38(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD90);
  }

  return result;
}

uint64_t sub_1C4C17DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4CC0, &qword_1C4F5DF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C17E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4C17E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      _s36K2TSemanticEntitySearchViewGeneratorCMa();
      a4 = swift_allocObject();

      sub_1C4C18094(v8, __dst);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C17FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = sub_1C4C17E90(a1, a2, a3, *v3);
  v7 = *(v4 + 8);

  return v7(v6);
}

void *sub_1C4C18094(uint64_t a1, const void *a2)
{
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x48uLL);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB78]);

  sub_1C46A9810(a2, v9);
  v5 = [v4 init];
  v2[12] = v5;
  v6 = v5;
  v7 = sub_1C4F01108();
  [v6 setDateFormat_];

  sub_1C4AF99F4(a2);

  return v2;
}

void sub_1C4C18170(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = sub_1C4409678(a1, a1[3]);
  v6 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  v7 = *(*(v4 + 8) + 8);
  v8 = a2 + v6[5];
  sub_1C4EFF7E8();
  sub_1C43FE064();
  v9 = v6[6];
  sub_1C440115C();
  sub_1C4EFF7F8();
  sub_1C43FE064();
  v10 = v6[7];
  sub_1C440115C();
  sub_1C4EFF7B8();
  sub_1C43FE064();
  v11 = v6[8];
  sub_1C440115C();
  sub_1C4EFF7C8();
  sub_1C43FE064();
  v12 = *(v5[1] + 8);
  v13 = sub_1C4EFF7D8();
  v15 = v14;
  v17 = a1[3];
  v16 = a1[4];
  sub_1C4433950();
  v18 = *(*(v16 + 8) + 16);
  v19 = sub_1C43FEF2C();
  v20(v19);
  v21 = a1[3];
  v22 = a1[4];
  sub_1C4433950();
  v23 = *(v22 + 40);
  v24 = sub_1C43FEF2C();
  v26 = v25(v24, v22);
  v27 = a1[3];
  v28 = a1[4];
  sub_1C4433950();
  v29 = *(v28 + 48);
  v30 = sub_1C43FEF2C();
  v31(v30, v28);
  v33 = a1[3];
  v32 = a1[4];
  sub_1C4433950();
  v34 = *(*(v32 + 8) + 24);
  v35 = sub_1C43FEF2C();
  v37 = v36(v35);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v38 = (a2 + v6[9]);
  *v38 = v13;
  v38[1] = v15;
  *(a2 + v6[10]) = v42;
  *(a2 + v6[11]) = v26;
  v39 = (a2 + v6[12]);
  *v39 = v40;
  v39[1] = v41;
  *(a2 + v6[13]) = v37;
}

uint64_t sub_1C4C18328@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  if (sub_1C4F01278())
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    v8 = sub_1C4EFF0C8();
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      (*(*(v8 - 8) + 32))(a1, v7, v8);
      v10 = a1;
      v11 = 0;
      v9 = v8;
      return sub_1C440BAA8(v10, v11, 1, v9);
    }

    sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v9 = sub_1C4EFF0C8();
  v10 = a1;
  v11 = 1;
  return sub_1C440BAA8(v10, v11, 1, v9);
}

uint64_t sub_1C4C1846C(uint64_t a1)
{
  v240 = sub_1C4EFB258();
  v3 = sub_1C43FCDF8(v240);
  v226 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v239 = v7;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  sub_1C43FD2C8(v13);
  v221 = sub_1C4EF9CD8();
  v14 = sub_1C43FCDF8(v221);
  v225 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v208 = v19;
  v20 = sub_1C456902C(&qword_1EC0C4CF8, &unk_1C4F5E060);
  v21 = sub_1C43FBD18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2C8(&v205 - v24);
  v231 = sub_1C4EFF248();
  v25 = sub_1C43FCDF8(v231);
  *&v224 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v30 = sub_1C43FD2C8(v29);
  v242 = type metadata accessor for GraphTriple(v30);
  v31 = sub_1C43FCDF8(v242);
  v219 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v237 = v35;
  v207 = sub_1C4F002D8();
  v36 = sub_1C43FCDF8(v207);
  v206 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v230 = v40;
  v41 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v42 = sub_1C43FBD18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2C8(&v205 - v45);
  v46 = sub_1C4EFF0C8();
  v47 = sub_1C43FCDF8(v46);
  v245 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v238 = v51;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  v236 = v54;
  v235 = type metadata accessor for EventTriple(0);
  v55 = sub_1C43FCDF8(v235);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v205 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  v63 = sub_1C43FCDF8(v62);
  v244 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v205 - v68;
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FD230();
  v243 = v71;
  v223 = v1;
  v72 = *(v1 + 16);
  v211 = a1;
  v227 = v72;
  v73 = sub_1C486EC90(a1);
  v74 = *(v73 + 16);
  v241 = v46;
  if (v74)
  {
    v234 = v62;
    sub_1C440FDA8(MEMORY[0x1E69E7CC0]);
    v75 = v247;
    v76 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v217 = v73;
    v77 = v57;
    v78 = v73 + v76;
    v79 = *(v77 + 72);
    v80 = v235;
    do
    {
      sub_1C4C199B4(v78, v61, type metadata accessor for EventTriple);
      __dst[3] = v80;
      __dst[4] = sub_1C4C19A6C(&qword_1EDDEBC08, type metadata accessor for EventTriple);
      v81 = sub_1C4422F90(__dst);
      sub_1C4C199B4(v61, v81, type metadata accessor for EventTriple);
      sub_1C4C18170(__dst, v69);
      sub_1C4C19A14(v61, type metadata accessor for EventTriple);
      sub_1C440962C(__dst);
      v247 = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1C43FCFE8(v82);
        sub_1C4401DCC();
        sub_1C459D9C8();
        v80 = v235;
        v75 = v247;
      }

      *(v75 + 16) = v83 + 1;
      sub_1C43FBF6C();
      sub_1C4C19950(v69, v75 + v84 + *(v85 + 72) * v83);
      v78 += v79;
      --v74;
    }

    while (v74);

    v46 = v241;
    v62 = v234;
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  v86 = *(v75 + 16);
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v232;
  if (v86)
  {
    v89 = &v243[*(v62 + 36)];
    sub_1C43FBF6C();
    v91 = v75 + v90;
    v93 = *(v92 + 72);
    v234 = (v245 + 32);
    v235 = v93;
    do
    {
      v94 = v243;
      sub_1C4C199B4(v91, v243, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      v95 = *v89;
      v96 = *(v89 + 1);
      sub_1C4C18328(v88);
      sub_1C4C19A14(v94, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      if (sub_1C44157D4(v88, 1, v46) == 1)
      {
        sub_1C4420C3C(v88, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v97 = v88;
        v98 = *v234;
        (*v234)(v236, v97, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44D45E4(0, *(v87 + 16) + 1, 1, v87);
          v87 = v104;
        }

        v100 = *(v87 + 16);
        v99 = *(v87 + 24);
        if (v100 >= v99 >> 1)
        {
          sub_1C43FCFE8(v99);
          sub_1C4401DCC();
          sub_1C44D45E4(v105, v106, v107, v87);
          v87 = v108;
        }

        *(v87 + 16) = v100 + 1;
        sub_1C43FBF6C();
        v103 = v87 + v101 + *(v102 + 72) * v100;
        v46 = v241;
        v98(v103, v236, v241);
        v88 = v232;
      }

      v91 += v235;
      --v86;
    }

    while (v86);
  }

  v109 = v211;
  __dst[0] = v211;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3B44(v87);
  v110 = sub_1C4872610(__dst[0]);

  v111 = *(v110 + 2);
  if (v111)
  {
    sub_1C440FDA8(MEMORY[0x1E69E7CC0]);
    v112 = v247;
    sub_1C43FBF6C();
    v243 = v110;
    v114 = &v110[v113];
    v116 = *(v115 + 72);
    v117 = v218;
    do
    {
      v118 = v237;
      sub_1C4C199B4(v114, v237, type metadata accessor for GraphTriple);
      __dst[3] = v242;
      __dst[4] = sub_1C4C19A6C(&qword_1EC0BAA28, type metadata accessor for GraphTriple);
      v119 = sub_1C4422F90(__dst);
      sub_1C4C199B4(v118, v119, type metadata accessor for GraphTriple);
      sub_1C4C18170(__dst, v117);
      sub_1C4C19A14(v118, type metadata accessor for GraphTriple);
      sub_1C440962C(__dst);
      v247 = v112;
      v121 = *(v112 + 16);
      v120 = *(v112 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_1C43FCFE8(v120);
        sub_1C4401DCC();
        sub_1C459D9C8();
        v112 = v247;
      }

      *(v112 + 16) = v121 + 1;
      sub_1C43FBF6C();
      sub_1C4C19950(v117, v112 + v122 + *(v123 + 72) * v121);
      v114 += v116;
      --v111;
    }

    while (v111);

    v109 = v211;
  }

  else
  {

    v112 = MEMORY[0x1E69E7CC0];
  }

  __dst[0] = v112;
  sub_1C49D3B18(v75);
  sub_1C456902C(&qword_1EC0C4D00, &qword_1C4F5E070);
  sub_1C4401CBC(&qword_1EC0C4D08, &qword_1EC0C4D00, &qword_1C4F5E070);
  sub_1C4C19A6C(&qword_1EC0C3E70, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
  v124 = sub_1C4F01498();

  __dst[3] = sub_1C456902C(&qword_1EC0C4D10, qword_1C4F5E078);
  __dst[4] = sub_1C4401CBC(&qword_1EC0C4D18, &qword_1EC0C4D10, qword_1C4F5E078);
  __dst[0] = v124;
  v205 = v124;

  v125 = v230;
  sub_1C4F002C8();
  v126 = v228;
  v127 = v222;
  v128 = v221;
  v129 = v212;
  v235 = *(v109 + 16);
  if (v235)
  {
    v130 = 0;
    v244 = *(v245 + 16);
    v210 = (*(v245 + 80) + 32) & ~*(v245 + 80);
    v234 = (v109 + v210);
    v245 += 16;
    v242 = *(v245 + 56);
    v243 = (v245 - 8);
    v217 = v224 + 32;
    v216 = v225 + 32;
    v215 = v225 + 8;
    v237 = (v226 + 8);
    v214 = v224 + 8;
    *(&v131 + 1) = 10;
    v213 = xmmword_1C4F13950;
    *&v131 = 138412290;
    v224 = v131;
    v232 = MEMORY[0x1E69E7CC0];
    v132 = v229;
    v133 = v241;
    do
    {
      v244(v129, &v234[v242 * v130], v133);
      sub_1C4F002B8();
      v236 = v130;
      if (v126)
      {
        if (qword_1EDDFECD0 != -1)
        {
          swift_once();
        }

        v134 = sub_1C4F00978();
        sub_1C442B738(v134, qword_1EDE2DF70);
        v135 = sub_1C43FEF2C();
        v136 = sub_1C4F00968();
        v137 = sub_1C4F01CD8();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v138 = v224;
          v140 = v126;
          v141 = _swift_stdlib_bridgeErrorToNSError();
          *(v138 + 4) = v141;
          *v139 = v141;
          _os_log_impl(&dword_1C43F8000, v136, v137, "error whilst textualizing: %@", v138, 0xCu);
          sub_1C4420C3C(v139, &qword_1EC0BDA00, &qword_1C4F10D30);
          v142 = v139;
          v125 = v230;
          MEMORY[0x1C6942830](v142, -1, -1);
          v143 = v138;
          v132 = v229;
          MEMORY[0x1C6942830](v143, -1, -1);
        }

        else
        {
        }

        v147 = sub_1C440B628();
        v148(v147);
        v126 = 0;
      }

      else
      {
        v144 = v231;
        if (sub_1C44157D4(v132, 1, v231) == 1)
        {
          v145 = sub_1C440B628();
          v146(v145);
          sub_1C4420C3C(v132, &qword_1EC0C4CF8, &unk_1C4F5E060);
        }

        else
        {
          sub_1C4402C08(&__dst[1]);
          v149(v233, v132, v144);
          sub_1C4EFF238();
          if (sub_1C44157D4(v127, 1, v128) == 1)
          {
            sub_1C4420C3C(v127, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v150 = 0;
            v227 = 0xE000000000000000;
          }

          else
          {
            sub_1C4402C08(__dst);
            v151 = v208;
            v152(v208, v127, v128);
            v153 = sub_1C440DA5C();
            v154 = [v144 stringFromDate_];

            v150 = sub_1C4F01138();
            v227 = v155;

            sub_1C4402C08(&v245);
            v156(v151, v128);
          }

          v157 = v220;
          sub_1C4EFF228();
          if (sub_1C44157D4(v157, 1, v128) == 1)
          {
            sub_1C4420C3C(v157, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v226 = 0;
            v225 = 0xE000000000000000;
          }

          else
          {
            sub_1C4402C08(__dst);
            v158 = v209;
            v159(v209, v157, v128);
            v160 = sub_1C440DA5C();
            v161 = [v157 stringFromDate_];

            v226 = sub_1C4F01138();
            v225 = v162;

            sub_1C4402C08(&v245);
            v163(v158, v128);
          }

          v164 = MEMORY[0x1E69E7CC0];
          v228 = 0;
          v165 = sub_1C4EFF208();
          v166 = *(v165 + 16);
          if (v166)
          {
            v219 = v150;
            __dst[0] = v164;
            sub_1C44CD9C0();
            v167 = __dst[0];
            v218 = v165;
            v168 = v165 + v210;
            do
            {
              v169 = v238;
              v244(v238, v168, v133);
              v170 = v239;
              sub_1C4EFF058();
              sub_1C4C19A6C(&qword_1EC0C35A0, MEMORY[0x1E699FE40]);
              v171 = v133;
              v172 = v240;
              v173 = sub_1C4F02858();
              v175 = v174;
              (*v237)(v170, v172);
              (*v243)(v169, v171);
              __dst[0] = v167;
              v177 = *(v167 + 16);
              v176 = *(v167 + 24);
              if (v177 >= v176 >> 1)
              {
                sub_1C43FCFE8(v176);
                sub_1C44CD9C0();
                v167 = __dst[0];
              }

              *(v167 + 16) = v177 + 1;
              v178 = v167 + 16 * v177;
              *(v178 + 32) = v173;
              *(v178 + 40) = v175;
              v133 = v241;
              v168 += v242;
              --v166;
            }

            while (v166);

            v129 = v212;
            v150 = v219;
          }

          else
          {

            v167 = v164;
          }

          __dst[0] = v167;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
          v179 = sub_1C4F01048();
          v181 = v180;

          sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
          v182 = swift_allocObject();
          *(v182 + 16) = v213;
          *(v182 + 56) = v133;
          *(v182 + 64) = sub_1C4C19A6C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
          v183 = sub_1C4422F90((v182 + 32));
          v244(v183, v129, v133);
          v184 = sub_1C4EFF218();
          v185 = MEMORY[0x1E69E6158];
          *(v182 + 96) = MEMORY[0x1E69E6158];
          v186 = MEMORY[0x1E69A0138];
          *(v182 + 104) = MEMORY[0x1E69A0138];
          *(v182 + 112) = v150;
          *(v182 + 72) = v184;
          *(v182 + 80) = v187;
          *(v182 + 136) = v185;
          *(v182 + 144) = v186;
          *(v182 + 120) = v227;
          *(v182 + 176) = v185;
          *(v182 + 184) = v186;
          v188 = v225;
          *(v182 + 152) = v226;
          *(v182 + 160) = v188;
          *(v182 + 216) = v185;
          *(v182 + 224) = v186;
          *(v182 + 192) = v179;
          *(v182 + 200) = v181;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v195 = *(v232 + 16);
            sub_1C458B824();
            v232 = v196;
          }

          v126 = v228;
          v127 = v222;
          v132 = v229;
          v190 = *(v232 + 16);
          v189 = *(v232 + 24);
          v128 = v221;
          if (v190 >= v189 >> 1)
          {
            sub_1C43FCFE8(v189);
            sub_1C4401DCC();
            sub_1C458B824();
            v232 = v197;
          }

          sub_1C4402C08(&v244);
          v191(v233, v231);
          v192 = sub_1C440B628();
          v193(v192);
          v194 = v232;
          *(v232 + 16) = v190 + 1;
          *(v194 + 8 * v190 + 32) = v182;
          v125 = v230;
        }
      }

      v130 = v236 + 1;
    }

    while (v236 + 1 != v235);
  }

  else
  {
    v232 = MEMORY[0x1E69E7CC0];
  }

  memcpy(__dst, (v223 + 24), 0x48uLL);
  sub_1C4BE3DEC(v232, v211, v198, v199, v200, v201, v202, v203);

  return (*(v206 + 8))(v125, v207);
}

uint64_t sub_1C4C1987C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);

  return v0;
}

uint64_t sub_1C4C198F8()
{
  sub_1C4C1987C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C19950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C199B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4C19A14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C19A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4C19AC4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v7 = v15;
    v8 = *(type metadata accessor for ViewDatabaseArtifact.Property() - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v10 = *(v8 + 72);
    while (1)
    {
      sub_1C4C1CCE4(v9, a2, &v13, v14);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v15 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1C459D930();
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1C441D670(v14, v7 + 40 * v11 + 32);
      v9 = (v9 + v10);
      if (!--v4)
      {

        return v7;
      }
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1C4C19C58(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFEC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4C1ECF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4C19CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v27 - v14;
  sub_1C4BCAD0C(a3, a4, a5, a6);
  v16 = sub_1C4EFBE98();
  v17 = v6;
  if (v6)
  {
  }

  v27[1] = v16;

  v29 = *(a2 + 16);
  if (v29)
  {
    v19 = 0;
    v28 = a2 + 32;
    v27[0] = v15;
    do
    {
      v20 = *(v28 + 8 * v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v31 = v19;
        v32 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C459D088(0, v21, 0);
        v22 = v20;
        v23 = v35;
        v30 = v22;
        v24 = v22 + 32;
        do
        {
          sub_1C442E860(v24, v33);
          sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          swift_dynamicCast();
          v35 = v23;
          v26 = *(v23 + 16);
          v25 = *(v23 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1C459D088((v25 > 1), v26 + 1, 1);
            v23 = v35;
          }

          *(v23 + 16) = v26 + 1;
          sub_1C44482AC(&v34, (v23 + 32 * v26 + 32));
          v24 += 40;
          --v21;
        }

        while (v21);

        v19 = v31;
        v17 = v32;
        v15 = v27[0];
      }

      sub_1C4EFB788();
      sub_1C4EFC0A8();
      sub_1C4423A0C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v17)
      {
        break;
      }

      ++v19;
    }

    while (v19 != v29);
  }
}

uint64_t sub_1C4C19F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v5 = *(a4 + 16);
  v7[2] = v8;
  v7[3] = a1;

  sub_1C446C37C(sub_1C4C1F2B4, v7);
}

uint64_t sub_1C4C19FCC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2DF70);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1C43FD1A8();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C43F8000, v20, v21, "KTSCadenceViewGenerator: Created", v22, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C441D670(a1, v10 + 32);
  *(v10 + 128) = a2;
  *(v10 + 136) = a3;
  *(v10 + 144) = a4;
  *(v10 + 152) = a5;
  sub_1C4C1F3D0(a6, v10 + 72);
  *(v10 + 160) = a7;
  *(v10 + 16) = a8;
  *(v10 + 24) = a9;
  return v10;
}

uint64_t sub_1C4C1A148()
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - v7;
  v9 = sub_1C4EF9CD8();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44164BC();
  v11 = v1[12];
  v12 = v1[13];
  sub_1C4409678(v1 + 9, v11);
  result = (*(v12 + 8))(v11, v12);
  v14 = v2;
  if (v2)
  {
    return result;
  }

  v15 = result;
  v45 = v0;
  v46 = v8;
  v47 = 0;
  v48 = v9;
  v49 = v1;
  v16 = sub_1C4428DA0();
  v17 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 == v17)
    {

      v52 = v51;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = v47;
      sub_1C4C19C58(&v52);
      v14 = v27;
      if (v27)
      {
        goto LABEL_36;
      }

      v29 = v48;
      v28 = v49;
      v30 = v50;
      v32 = v45;
      v31 = v46;
      if (*(v52 + 16))
      {
        v33 = *(v52 + 32);

        sub_1C4EF9AC8();
        sub_1C4D07BE0(v32, v31);
        v34 = *(v30 + 8);
        v34(v32, v29);
        if (sub_1C44157D4(v31, 1, v29) == 1)
        {
          sub_1C4423A0C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_1C4F02248();
          MEMORY[0x1C6940010](0xD000000000000042, 0x80000001C4FBA200);
          v35 = 0xE700000000000000;
          v36 = 0x796C68746E6F6DLL;
          if (*(v28 + 16) != 1)
          {
            v36 = 0x6C61756E6E61;
            v35 = 0xE600000000000000;
          }

          if (*(v28 + 16))
          {
            v37 = v36;
          }

          else
          {
            v37 = 0x796C6B656577;
          }

          if (*(v28 + 16))
          {
            v38 = v35;
          }

          else
          {
            v38 = 0xE600000000000000;
          }

          MEMORY[0x1C6940010](v37, v38);

          MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FBA250);
          v39 = v52;
          v40 = v53;
          sub_1C446D0DC();
          sub_1C441C114();
          swift_allocError();
          *v41 = v39;
          *(v41 + 8) = v40;
          *(v41 + 16) = 3;
          return swift_willThrow();
        }

        sub_1C4EF9AD8();
        v43 = v44;
        result = (v34)(v31, v29);
      }

      else
      {

        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v43 = v42;
        result = (*(v30 + 8))(v32, v29);
      }

      v28[3] = v43;
      return result;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v14 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    sub_1C4EFBC68();

    if (v54)
    {
      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v19 = v55;
      v20 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v20 + 16);
        sub_1C43FCEC0();
        sub_1C458A6E0();
        v20 = v25;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v51 = v20;
      if (v22 >= v21 >> 1)
      {
        sub_1C458A6E0();
        v51 = v26;
      }

      v23 = v51;
      *(v51 + 16) = v22 + 1;
      *(v23 + 8 * v22 + 32) = v19;
      v17 = v14;
    }

    else
    {
      sub_1C4423A0C(&v52, &qword_1EC0B9038, &unk_1C4F231C0);
LABEL_16:
      ++v17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

  __break(1u);
  return result;
}

uint64_t sub_1C4C1A620()
{
  sub_1C43FBCD4();
  v1[4] = v0;
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_1C43FE604();
  v1[6] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  v1[7] = v7;
  sub_1C43FCF7C(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_1C43FE604();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4C1AA98()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1C43FBE64();
  *v8 = v7;
  *(v9 + 144) = v0;

  if (v0)
  {
    v10 = sub_1C4C1AFA4;
  }

  else
  {
    v10 = sub_1C4C1ABA0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C4C1ABA0()
{
  sub_1C4441100();
  v63 = v0;
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = ceil((*(v0 + 128) - v7) / v6);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 56));
  v9 = v7 + v6 * v8;
  *(v0 + 96) = v9;
  v10 = *(v0 + 88);
  if (v9 >= *(v0 + 24))
  {
    v36 = *(v0 + 72);
    v35 = *(v0 + 80);
    v38 = *(v0 + 40);
    v37 = *(v0 + 48);
    v39 = *(v0 + 88);

    sub_1C43FC1B0();
    goto LABEL_13;
  }

  v11 = *(v0 + 32);
  v12 = *(v0 + 88);
  sub_1C4EF9AC8();
  v13 = sub_1C4D08790(v10);
  if (v14)
  {
LABEL_6:
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v17 = sub_1C445EA3C();
    sub_1C442B738(v17, qword_1EDE2DF70);
    v18 = sub_1C44206D4();
    v19(v18);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();
    v22 = sub_1C4400B94(v21);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);
    if (v22)
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      v61 = sub_1C440E550();
      *&v62[0] = v61;
      *v1 = 136315138;
      sub_1C441A854();
      sub_1C4C1F314(v26, v27);
      v28 = sub_1C4402598();
      v30 = v29;
      v31 = sub_1C442D6F8();
      (v3)(v31);
      sub_1C441D828(v28, v30, v62);
      sub_1C4441528();
      *(v1 + 4) = v23;
      sub_1C4404638(&dword_1C43F8000, v32, v33, "KTSCadenceViewGenerator: Bad historic date %s");
      sub_1C440962C(v61);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v34 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v34);
    }

    else
    {

      v40 = sub_1C442D6F8();
      (v3)(v40);
    }

    v41 = *(v0 + 88);
    v42 = *(v0 + 56);
    *&v62[0] = 0;
    *(&v62[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C4411F0C();
    *&v62[0] = v44;
    *(&v62[0] + 1) = v43;
    sub_1C441A854();
    sub_1C4C1F314(v45, v46);
    v47 = sub_1C441503C();
    MEMORY[0x1C6940010](v47);

    v48 = v62[0];
    sub_1C450B034();
    sub_1C441C114();
    swift_allocError();
    *v49 = 0;
    *(v49 + 8) = 0xE000000000000000;
    *(v49 + 16) = v48;
    v50 = v62[1];
    *(v49 + 32) = v62[0];
    *(v49 + 48) = v50;
    *(v49 + 64) = 9;
    swift_willThrow();
    v51 = sub_1C442C04C();
    (v3)(v51);

    sub_1C43FBDA0();
LABEL_13:
    sub_1C4433E50();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FCA54(v13);
  sub_1C43FF7A4();
  if (v15 || (sub_1C441BDA8(), v16 = sub_1C4430294(), v4(v16), sub_1C4EF9C28(), sub_1C4D07BE0(v1, v10), (v4)(v1, v2), sub_1C44157D4(v10, 1, v2) == 1))
  {
    sub_1C4423A0C(*v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_6;
  }

  v54 = *(v0 + 56);
  v55 = *(v0 + 40);
  sub_1C4EF9AD8();
  *(v0 + 128) = v56;
  v57 = sub_1C4402120();
  v4(v57);
  v58 = swift_task_alloc();
  *(v0 + 136) = v58;
  *v58 = v0;
  sub_1C43FE080();
  sub_1C4433E50();

  return sub_1C4C1B05C();
}