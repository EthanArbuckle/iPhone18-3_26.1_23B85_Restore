uint64_t Message.merge<A>(serializedBytes:extensions:partial:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[7] = a2;
  v12 = a3;
  v13 = v8;
  v14 = v9;
  return (*(a8 + 32))(sub_1AC4504E8, v11, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

uint64_t Message.init<A>(serializedBytes:extensions:partial:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  (*(a7 + 16))(a5, a7);
  v21 = v15;
  v22 = v16;
  v17 = v23;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(a1, a2, a3, &v21, a5, a6, a7, a8);
  sub_1AC455360(a2);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  if (v17)
  {
    return (*(*(a5 - 8) + 8))(a9, a5);
  }

  return result;
}

uint64_t sub_1AC450304()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1AC51EC28();
}

uint64_t sub_1AC450324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Message._merge(rawBuffer:extensions:partial:options:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  if (!result)
  {
    goto LABEL_4;
  }

  v13 = result;
  v14 = a2 - result;
  if (a2 - result < 1)
  {
    goto LABEL_4;
  }

  v15 = *a5;
  v16 = *(a5 + 8);
  sub_1AC450324(a3, v18);
  v20 = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = 1;
  v27 = xmmword_1AC5205D0;
  v28 = xmmword_1AC5205D0;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v13;
  v19[3] = 0;
  sub_1AC450538(v18, v21 + 8);
  v24 = v15;
  v25 = v16;
  v26 = v15;
  sub_1AC4505A8(v9, a6, a7);
  result = sub_1AC45466C(v19);
  if (!v8)
  {
LABEL_4:
    if ((a4 & 1) == 0)
    {
      result = (*(a7 + 32))(a6, a7);
      if ((result & 1) == 0)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v17 = 4;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1AC4504E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v10 = *(v2 + 72);
  v11 = v8;
  return Message._merge(rawBuffer:extensions:partial:options:)(a1, a2, v5, v7, &v10, v3, v4);
}

uint64_t sub_1AC450538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AC4505A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC4506F4();
  if (!v4)
  {
    (*(a3 + 64))(v3, &type metadata for BinaryDecoder, &off_1F211C348, a2, a3);
    sub_1AC451450();
    if (v3[1])
    {
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      *v7 = 0;
      swift_willThrow();
    }

    else if (v3[17] >> 60 != 15)
    {
      v8 = v3[16];
      v9 = *(a3 + 56);
      v10 = OUTLINED_FUNCTION_93_0();
      sub_1AC4578F4(v10, v11);
      v12 = v9(v15, a2, a3);
      OUTLINED_FUNCTION_93_0();
      sub_1AC51EC98();
      v12(v15, 0);
      v13 = OUTLINED_FUNCTION_93_0();
      sub_1AC45AC74(v13, v14);
    }
  }
}

void sub_1AC4506F4()
{
  v1 = *(v0 + 120);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v3;
    if (v3 < 0)
    {
      sub_1AC48D31C();
      swift_allocError();
      *v4 = 6;
      swift_willThrow();
    }
  }
}

void sub_1AC450760()
{
  OUTLINED_FUNCTION_28_0();
  if (*(v0 + 40) >= 1)
  {
    v3 = v2[19];
    if (v3 >> 60 == 15)
    {
      if ((v2[4] & 1) == 0)
      {
        if (*(v2 + 112) == 1)
        {
          v4 = v2[3];
          if (v4)
          {
            *v2 = v4;
          }

          else
          {
            v29 = v2[1];
            v28 = v2[2];
            v30 = (*v2 - v28);
            v31 = __OFADD__(v29, v30);
            v32 = &v30[v29];
            if (v31)
            {
              goto LABEL_49;
            }

            *v2 = v28;
            v2[1] = v32;
            OUTLINED_FUNCTION_17_0();
            v33 = sub_1AC467C1C();
            if (v1)
            {
              return;
            }

            if ((v33 & 0x100000000) != 0)
            {
              sub_1AC48D31C();
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_22_3();
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_17_0();
            sub_1AC467A40(v34);
            v2[3] = *v2;
          }
        }

        else
        {
          OUTLINED_FUNCTION_17_0();
          sub_1AC467CD8();
          if (v1)
          {
            return;
          }

          v24 = v22;
          v25 = v23;
          v26 = v2[17];
          if (v26 >> 60 == 15)
          {
            sub_1AC45AC74(v2[16], v26);
            v2[16] = v24;
            v2[17] = v25;
          }

          else
          {
            OUTLINED_FUNCTION_12();
            sub_1AC51EC98();
            v39 = OUTLINED_FUNCTION_12();
            sub_1AC4513F8(v39, v40);
          }
        }
      }
    }

    else
    {
      v5 = v2[17];
      v6 = v2[18];
      if (v5 >> 60 == 15)
      {
        v7 = v2[16];
        v8 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v8, v9);
        sub_1AC45AC74(v7, v5);
        v2[16] = v6;
        v2[17] = v3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v10, v11);
        OUTLINED_FUNCTION_12();
        sub_1AC51EC98();
        v12 = OUTLINED_FUNCTION_12();
        sub_1AC45AC74(v12, v13);
      }

      sub_1AC45AC74(v2[18], v2[19]);
      *(v2 + 9) = xmmword_1AC5205D0;
    }
  }

  v14 = v2[1];
  if (!v14)
  {
    return;
  }

  v15 = *v2;
  v2[2] = *v2;
  v2[3] = 0;
  v16 = *v15;
  v17 = sub_1AC450A70(v16 & 7);
  if (v17 == 6)
  {
    goto LABEL_22;
  }

  *(v2 + 33) = v17;
  if ((v16 & 0x80) == 0)
  {
    *v2 = v15 + 1;
    if (!__OFSUB__(v14, 1))
    {
      v2[1] = (v14 - 1);
      v18 = (v16 >> 3);
      goto LABEL_16;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v19 = ((v16 >> 3) & 0xF);
  v2[5] = v19;
  if (v14 <= 1)
  {
    goto LABEL_22;
  }

  v27 = v15[1];
  if (v27 < 0)
  {
    v35 = (v16 >> 3) & 0xFLL | (16 * (v27 & 0x7F));
    v2[5] = v35;
    if (v14 != 2)
    {
      v36 = v15[2];
      v18 = (v35 | ((v36 & 0x7F) << 11));
      v2[5] = v18;
      if (v36 < 0)
      {
        if (v14 <= 3)
        {
          goto LABEL_22;
        }

        v41 = v15[3];
        v18 = (v18 | ((v41 & 0x7F) << 18));
        v2[5] = v18;
        if (v41 < 0)
        {
          if (v14 == 4)
          {
            goto LABEL_22;
          }

          v42 = v15[4];
          if (v42 >= 0x10)
          {
            goto LABEL_22;
          }

          v18 = (v18 | (v42 << 25));
          v2[5] = v18;
          v37 = v15 + 5;
          v38 = v14 - 5;
        }

        else
        {
          v37 = v15 + 4;
          v38 = v14 - 4;
        }
      }

      else
      {
        v37 = v15 + 3;
        v38 = v14 - 3;
      }

      *v2 = v37;
      v2[1] = v38;
      if (v18)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_23_2();
LABEL_23:
    OUTLINED_FUNCTION_107_0(v20, v21);
    return;
  }

  *v2 = v15 + 2;
  v2[1] = (v14 - 2);
  v18 = (v19 | (16 * v27));
LABEL_16:
  v2[5] = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_17:
  *(v2 + 32) = 0;
  if (v17 == 4 && ((v2[12] & 1) != 0 || v2[11] != v18))
  {
    goto LABEL_22;
  }
}

uint64_t sub_1AC450A70(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_1AC51F338();
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void sub_1AC450BB0()
{
  OUTLINED_FUNCTION_60();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1AC51F228();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_0();
  if (*(v4 + 33) != 2)
  {
    goto LABEL_9;
  }

  v35 = v16;
  v44 = v6;
  sub_1AC453530();
  if (v1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v19 && v18)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v20 = *(v4 + 8);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v20 >= v17;
    v21 = v20 - v17;
    if (!v18)
    {
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_53_1();
LABEL_8:
      OUTLINED_FUNCTION_59(v22, v23);
LABEL_9:
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61();
      return;
    }

    v32 = *v4;
    v33 = v17;
    *v4 += v17;
    *(v4 + 8) = v21;
    v34 = v10;
    (*(v35 + 16))(v3, v10, v11);
    v24 = OUTLINED_FUNCTION_92_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v25, v8);
    (*(v35 + 8))(v3, v11);
    if (EnumTagSinglePayload == 1)
    {
      (*(v6 + 16))(v8);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
      (*(v35 + 40))(v34, v2, v11);
    }

    sub_1AC4530E8(v4, &v37);
    v27 = v38[7];
    v28 = v39;
    sub_1AC452928(v38, v36, &qword_1EB557F98, &qword_1AC520460);
    OUTLINED_FUNCTION_39_0();
    *(v29 + 128) = xmmword_1AC5205D0;
    *(v29 + 144) = xmmword_1AC5205D0;
    v41[0] = v32;
    v41[1] = v33;
    v41[2] = v32;
    v41[3] = 0;
    sub_1AC454060(v36, v30 + 48, &qword_1EB557F98, &qword_1AC520460);
    v41[13] = v27;
    v42 = v28;
    v31 = v40;
    sub_1AC45466C(&v37);
    v43 = v31;
    OUTLINED_FUNCTION_42_0(v34, 1, v8);
    if (!v19)
    {
      sub_1AC4505A8(v34, v8, v44);
      sub_1AC45466C(v41);
      *(v4 + 32) = 1;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1AC450E7C(_DWORD *a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_1AC51F388();
}

uint64_t OUTLINED_FUNCTION_36(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

void OUTLINED_FUNCTION_11_13()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_18@<X0>(unint64_t a1@<X8>)
{

  return sub_1AC4D0918(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);

  return sub_1AC4578F4(v6, v5);
}

uint64_t OUTLINED_FUNCTION_70@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1AC51F108();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

void OUTLINED_FUNCTION_12_12()
{
  v3 = *v0;
  *(v3 + 16) = v2 + 1;
  *(v3 + v2 + 32) = 91;
  *v0 = v3;
  *(v0 + 4) = 256;
  v4 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void *OUTLINED_FUNCTION_108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __dst)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_26_6()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_26_7()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = *(v0 + 6);
  v6 = *(v0 + 28);
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

uint64_t sub_1AC4513F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AC451450()
{
  v1 = *(v0 + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 120) = v3;
  if (*(v0 + 104) < v3)
  {
LABEL_5:
    result = sub_1AC51F388();
    __break(1u);
  }

  return result;
}

double UnknownStorage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  return result;
}

uint64_t Message.serializedBytes<A>(partial:options:)(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  if ((a1 & 1) == 0 && ((*(a5 + 32))(a3, a5) & 1) == 0)
  {
    goto LABEL_6;
  }

  result = sub_1AC451818(a3, a5);
  if (v6)
  {
    return result;
  }

  if (result <= 2147483646)
  {
    v13 = (*(a6 + 8))(0, result, a4, a6);
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](v13);
    return (*(a6 + 40))(sub_1AC451A44);
  }

  else
  {
LABEL_6:
    sub_1AC476EEC();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t static Message.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(a2, a3);
  result = a1(a4);
  if (v4)
  {
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

uint64_t Message.serializedData(partial:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  result = Message.serializedBytes<A>(partial:options:)(a1, &v5, a2, MEMORY[0x1E6969080], a3, &protocol witness table for Data);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1AC451818(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = (*(a2 + 72))(&v4, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a1, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1AC451874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC51ECA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1AC45189C(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_1AC451978((8 * a3) | 2u);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1AC4519B4(v7);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = __OFADD__(*v3, v11);
  v12 = *v3 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1AC451978(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >> 14)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC4519B4(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 10;
  }

  if (!(a1 >> 35))
  {
    if (!(a1 >> 21))
    {
      result = 2;
      if (v2 < 0x4000)
      {
        return result;
      }

      return ++result;
    }

    result = 4;
LABEL_14:
    if (!(v2 >> 28))
    {
      return result;
    }

    return ++result;
  }

  if (a1 >> 49)
  {
    v2 = a1 >> 28;
    result = 8;
    goto LABEL_14;
  }

  result = 6;
  if (v2 >> 42)
  {
    return ++result;
  }

  return result;
}

uint64_t sub_1AC451A6C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v10 = a2;
    v7[0] = a3 & 1;
    v8 = result;
    v9 = result;
    return (*(a7 + 72))(v7, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a5, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AC451CCC(a3, 2u);
}

void *OUTLINED_FUNCTION_109(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __src)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_13_13()
{

  sub_1AC4854E8(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return sub_1AC51F048();
}

unint64_t sub_1AC451C88()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_13_3(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_12();
  return sub_1AC451D28(v3, v4);
}

uint64_t sub_1AC451CCC(uint64_t result, unsigned __int8 a2)
{
  v3 = (8 * (result & 0x1FFFFFFF)) | a2;
  v4 = *v2;
  if (v3 < 0x80)
  {
    LOBYTE(v5) = (8 * result) | a2;
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  *v2 = v4 + 1;
  return result;
}

unint64_t sub_1AC451D28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v10 = sub_1AC51EF48();
    result = sub_1AC451EC4(v10);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = 4 << ((a1 & 0x800000000000000) != 0);
    v13 = 15;
    while (4 * v11 != v13 >> 14)
    {
      result = v13;
      if ((v13 & 0xC) == v12)
      {
        v16 = OUTLINED_FUNCTION_0_6();
        result = sub_1AC488FF0(v16, v17, v18);
      }

      if (v11 <= result >> 16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      result = sub_1AC51EF88();
      v14 = result;
      if ((v13 & 0xC) == v12)
      {
        v19 = OUTLINED_FUNCTION_0_6();
        result = sub_1AC488FF0(v19, v20, v21);
        v13 = result;
      }

      if (v11 <= v13 >> 16)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_0_6();
      result = sub_1AC51EF58();
      v13 = result;
      v15 = *v2;
      *v15 = v14;
      *v2 = v15 + 1;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
      v23[0] = a1;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      result = sub_1AC451EC4(v8);
      if (v8)
      {
        result = memcpy(*v2, v23, HIBYTE(a2) & 0xF);
      }

      v9 = *v2 + v8;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = sub_1AC51F308();
        v6 = v22;
      }

      result = sub_1AC451EC4(v6);
      if (v5)
      {
        if (v6 >= 1)
        {
          result = memmove(*v2, v5, v6);
        }
      }

      else
      {
        v6 = 0;
      }

      v9 = *v2 + v6;
    }

    *v2 = v9;
  }

  return result;
}

unint64_t sub_1AC451EC4(unint64_t result)
{
  v2 = *v1;
  if (result < 0x80)
  {
    LOBYTE(v3) = result;
  }

  else
  {
    do
    {
      *v2++ = result | 0x80;
      v3 = result >> 7;
      v4 = result >> 14;
      result >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  *v1 = v2 + 1;
  return result;
}

void sub_1AC451EFC(uint64_t a1, int a2)
{
  v4 = sub_1AC451978((8 * a2) | 2u);
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  v8 = v6 + 1;
  while (2)
  {
    if (!--v8)
    {
      goto LABEL_29;
    }

    v9 = v7 + 2;
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = *v7 >> 62;
    v13 = 1;
    v14 = 0;
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_34;
        }

        v14 = v14;
LABEL_8:
        if (v14 < 0x80)
        {
          v13 = 1;
          goto LABEL_25;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          v13 = 10;
          goto LABEL_25;
        }

        if (v14 >> 35)
        {
          if (!(v14 >> 49))
          {
            if (!(v14 >> 42))
            {
              v13 = 6;
              goto LABEL_25;
            }

            v13 = 6;
            goto LABEL_24;
          }

          v18 = v14 >> 28;
          v13 = 8;
        }

        else
        {
          if (v14 < 0x200000)
          {
            v13 = 2;
            if (v14 < 0x4000)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v13 = 4;
          v18 = v14;
        }

        if (!(v18 >> 28))
        {
          goto LABEL_25;
        }

LABEL_24:
        ++v13;
LABEL_25:
        v17 = __OFADD__(v5, v13);
        v19 = v5 + v13;
        if (v17)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v7 = v9;
        v17 = __OFADD__(v19, v14);
        v5 = v19 + v14;
        if (!v17)
        {
          continue;
        }

        __break(1u);
LABEL_29:
        v20 = v4 * v6;
        if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v21 = v20 + v5;
        if (__OFADD__(v20, v5))
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v17 = __OFADD__(*v2, v21);
        v22 = *v2 + v21;
        if (v17)
        {
LABEL_38:
          __break(1u);
          JUMPOUT(0x1AC452074);
        }

        OUTLINED_FUNCTION_11_4(v22);
        return;
      case 2uLL:
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        v17 = __OFSUB__(v15, v16);
        v14 = v15 - v16;
        if (!v17)
        {
          goto LABEL_8;
        }

        goto LABEL_35;
      case 3uLL:
        goto LABEL_25;
      default:
        v14 = BYTE6(v11);
        goto LABEL_8;
    }
  }
}

uint64_t sub_1AC4520DC(uint64_t result, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = v5 | 2;
    v7 = result + 32;
    v8 = *(v2 + 8);
    v33 = v5;
    v34 = *(result + 16);
    v32 = result + 32;
    while (2)
    {
      v9 = (v7 + 16 * v4);
      v11 = *v9;
      v10 = v9[1];
      if (v5 < 0x80)
      {
        LOBYTE(v13) = v6;
      }

      else
      {
        v12 = v6;
        do
        {
          *v8++ = v12 | 0x80;
          v13 = v12 >> 7;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
      }

      ++v4;
      *v8 = v13;
      v15 = v8 + 1;
      switch(v10 >> 62)
      {
        case 1uLL:
          LODWORD(v16) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
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

          v16 = v16;
LABEL_16:
          if (v16 < 0x80)
          {
            LOBYTE(v20) = v16;
          }

          else
          {
            do
            {
              *v15++ = v16 | 0x80;
              v20 = v16 >> 7;
              v21 = v16 >> 14;
              v16 >>= 7;
            }

            while (v21);
          }

          *v15 = v20;
          v8 = v15 + 1;
          switch(v10 >> 62)
          {
            case 1uLL:
              if (v11 >> 32 < v11)
              {
                goto LABEL_46;
              }

              sub_1AC4578F4(v11, v10);
              v22 = sub_1AC51EB78();
              if (!v22)
              {
                goto LABEL_27;
              }

              v23 = sub_1AC51EBA8();
              if (__OFSUB__(v11, v23))
              {
                goto LABEL_49;
              }

              v22 += v11 - v23;
LABEL_27:
              v24 = (v11 >> 32) - v11;
LABEL_32:
              v28 = sub_1AC51EB98();
              if (v28 >= v24)
              {
                v29 = v24;
              }

              else
              {
                v29 = v28;
              }

              if (v22)
              {
                v7 = v32;
                if (v29 < 1)
                {
                  result = sub_1AC4513F8(v11, v10);
                }

                else
                {
                  memmove(v8, v22, v29);
                  result = sub_1AC4513F8(v11, v10);
                  v8 += v29;
                }

                v5 = v33;
                v3 = v34;
              }

              else
              {
                result = sub_1AC4513F8(v11, v10);
                v5 = v33;
                v3 = v34;
                v7 = v32;
              }

              break;
            case 2uLL:
              v25 = *(v11 + 16);
              v26 = *(v11 + 24);
              sub_1AC4578F4(v11, v10);
              v22 = sub_1AC51EB78();
              if (!v22)
              {
                goto LABEL_31;
              }

              v27 = sub_1AC51EBA8();
              if (__OFSUB__(v25, v27))
              {
                goto LABEL_48;
              }

              v22 += v25 - v27;
LABEL_31:
              v19 = __OFSUB__(v26, v25);
              v24 = v26 - v25;
              if (!v19)
              {
                goto LABEL_32;
              }

              goto LABEL_47;
            case 3uLL:
              break;
            default:
              __src = v11;
              v36 = v10;
              v37 = BYTE2(v10);
              v38 = BYTE3(v10);
              v39 = BYTE4(v10);
              v40 = BYTE5(v10);
              if (BYTE6(v10))
              {
                result = memmove(v8, &__src, BYTE6(v10));
                v8 += BYTE6(v10);
              }

              break;
          }

LABEL_41:
          if (v4 != v3)
          {
            continue;
          }

          *(v31 + 8) = v8;
          break;
        case 2uLL:
          v18 = *(v11 + 16);
          v17 = *(v11 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (!v19)
          {
            goto LABEL_16;
          }

          goto LABEL_45;
        case 3uLL:
          v8[1] = 0;
          v8 += 2;
          goto LABEL_41;
        default:
          v16 = BYTE6(v10);
          goto LABEL_16;
      }

      break;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Message.init(serializedData:extensions:partial:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a5;
  v15 = *(a5 + 8);
  (*(a7 + 16))(a6, a7);
  v19 = v14;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a2;
  v20 = v15;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(v21, a3, a4, &v19, a6, MEMORY[0x1E6969080], a7, &protocol witness table for Data);
  sub_1AC455360(a3);
  if (v18)
  {
    (*(*(a6 - 8) + 8))(a8, a6);
  }

  return sub_1AC4513F8(a1, v22);
}

void OUTLINED_FUNCTION_87_1(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1);

  JUMPOUT(0x1AC5B48A0);
}

void sub_1AC452588(uint64_t *a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC4525C0()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558298, &qword_1AC520A50);
    v9 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_5();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC452690()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v11);
    OUTLINED_FUNCTION_6_3(v12);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v13 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v14[4 * v3] <= v13)
    {
      memmove(v13, v14, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v3);
  }
}

void sub_1AC452764()
{
  OUTLINED_FUNCTION_25_1();
  if (v3)
  {
    v4 = v2;
    sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v3 && v6)
      {
        sub_1AC48D31C();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_23_2();
      }

      else
      {
        v7 = v0[1];
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v6 = v7 >= v5;
        v8 = v7 - v5;
        if (v6)
        {
          v11 = *v0;
          *v0 += v5;
          v0[1] = v8;
          v12 = sub_1AC456544(v11, v5);
          if (v13)
          {
            v14 = v12;
            v15 = v13;
            v16 = v4[1];

            *v4 = v14;
            v4[1] = v15;
            OUTLINED_FUNCTION_26_1();
            return;
          }

          sub_1AC48D31C();
          OUTLINED_FUNCTION_11();
          v10 = 2;
        }

        else
        {
          sub_1AC48D31C();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_22_3();
        }
      }

      OUTLINED_FUNCTION_107_0(v9, v10);
    }
  }
}

void sub_1AC45286C()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v11);
    OUTLINED_FUNCTION_6_3(v12);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v13 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v14[8 * v3] <= v13)
    {
      memmove(v13, v14, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v3);
  }
}

uint64_t sub_1AC452928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_105_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_5_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_5_4(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = a1 + *(v3 + 72) * v2;
  v5 = *(v3 + 16);
}

uint64_t OUTLINED_FUNCTION_5_6(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19)
{
  a1[1] = a17;
  a1[2] = a18;
  a1[3] = a19;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v2 = v0[4];
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v2);
  v3 = *(v1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, char a22, uint64_t a23, unint64_t a24)
{
  sub_1AC4854E8(a19, a20, a21, a22);

  return sub_1AC4513F8(a23, a24);
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return sub_1AC4673EC(a1, 1000000000);
}

void OUTLINED_FUNCTION_5_11()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_5_15(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

__n128 OUTLINED_FUNCTION_5_17()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

void OUTLINED_FUNCTION_5_18(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(v3 - 152) = v2;
  *(v3 - 144) = 44;
}

uint64_t OUTLINED_FUNCTION_5_20()
{

  return sub_1AC4F18B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return sub_1AC51ED88();
}

uint64_t OUTLINED_FUNCTION_5_23()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 88) = a6;
  *(v6 - 112) = a2;
  *(v6 - 104) = a3;
  v7 = *(a4 - 8);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_1AC51EE08();
}

void OUTLINED_FUNCTION_27_2(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = a1 + *(v3 + 72) * v2;
  v5 = *(v3 + 16);
}

void OUTLINED_FUNCTION_27_3(_BYTE *a1@<X8>)
{
  if (v1 == 3)
  {
    LOBYTE(v1) = 0;
  }

  *a1 = v1;
}

char *OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 112) = v11;
  *(v12 - 104) = v10;
  v13 = *(v11 + 16);
  return &a9 - v9;
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(uint64_t, char *, uint64_t), void (*a5)(__int128 *, char *, char *), uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1AC4663B4(v9, v8, a3, a4, a5, va, v10, v7);
}

void OUTLINED_FUNCTION_27_10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

void OUTLINED_FUNCTION_46_0(unint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 - 215) = a2;
  *(v2 - 208) = a1 >> 3;

  sub_1AC467A40(a1);
}

__n128 OUTLINED_FUNCTION_46_1(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  return result;
}

void OUTLINED_FUNCTION_46_3()
{
  *v1 = v0;

  sub_1AC458F28();
}

void OUTLINED_FUNCTION_46_4()
{
  *(v3 + 16) = v4;
  *(v3 + v2 + 32) = v1;
  *v0 = v3;
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_1AC51F048();
}

void OUTLINED_FUNCTION_46_7(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = v7;
  a5[1] = v6;
  a5[2] = v8;
  a5[3] = v5;
  sub_1AC480274(a1, a2, a3, a4);
}

void sub_1AC453120()
{
  OUTLINED_FUNCTION_60();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_1();
  if (!v16)
  {
    goto LABEL_10;
  }

  v43 = v15;
  v17 = sub_1AC453530();
  if (v1)
  {
    goto LABEL_10;
  }

  v18 = v17;
  OUTLINED_FUNCTION_27_1();
  if (!v16 && v19)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
    goto LABEL_9;
  }

  v20 = v0[1];
  if ((v20 & 0x8000000000000000) == 0)
  {
    v19 = v20 >= v18;
    v21 = v20 - v18;
    if (v19)
    {
      v34 = *v0;
      *v0 += v18;
      v0[1] = v21;
      (*(v5 + 16))(v7, v5);
      sub_1AC4530E8(v0, &v36);
      v24 = v37[7];
      v33 = v38;
      sub_1AC452928(v37, v35, &qword_1EB557F98, &qword_1AC520460);
      OUTLINED_FUNCTION_39_0();
      *(v25 + 128) = xmmword_1AC5205D0;
      *(v25 + 144) = xmmword_1AC5205D0;
      v40[0] = v34;
      v40[1] = v18;
      v40[2] = v34;
      v40[3] = 0;
      sub_1AC454060(v35, v26 + 48, &qword_1EB557F98, &qword_1AC520460);
      v40[13] = v24;
      v41 = v33;
      v27 = v39;
      sub_1AC45466C(&v36);
      v42 = v27;
      v28 = OUTLINED_FUNCTION_67_0();
      sub_1AC4505A8(v28, v29, v5);
      (*(v43 + 16))(v13, v2, v7);
      OUTLINED_FUNCTION_88_0();
      sub_1AC51F108();
      sub_1AC51F0D8();
      v30 = *(v43 + 8);
      v31 = OUTLINED_FUNCTION_67_0();
      v32(v31);
      sub_1AC45466C(v40);
      *(v3 + 32) = 1;
      goto LABEL_10;
    }

    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_53_1();
LABEL_9:
    OUTLINED_FUNCTION_59(v22, v23);
LABEL_10:
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_61();
    return;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_69_1(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12)
{
  *(v12 - 80) = a1;
  a12 = a1;

  return sub_1AC4848F4(v12 - 80, &a10);
}

uint64_t sub_1AC453530()
{
  v1 = v0[1];
  v2 = v1 < 1;
  v3 = v1 - 1;
  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v5 = *v0 + 1;
    result = **v0;
    if ((result & 0x8000000000000000) == 0)
    {
LABEL_7:
      *v0 = v5;
      v0[1] = v3;
      return result;
    }

    result &= 0x7Fu;
    v6 = 7;
    v7 = 3;
    while (1)
    {
      v2 = v3-- < 1;
      if (v2 || v6 > 0x3F)
      {
        break;
      }

      v8 = *v5++;
      result |= (v8 & 0x7F) << v6;
      v6 += 7;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  sub_1AC48D31C();
  OUTLINED_FUNCTION_11();
  *v9 = v7;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf12ExtensionMap_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_9@<X0>(uint64_t a1@<X8>)
{
  v18 = *(v1 + 56);
  v9 = v8 + 48 * a1;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  v15 = *(v9 + 56);
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  sub_1AC4854E8(v10, v11, v12, v15);

  return sub_1AC4513F8(v13, v14);
}

void OUTLINED_FUNCTION_2_16(uint64_t a1@<X8>)
{
  *(a1 + 32) = 91;
  *v2 = v1;
  *(v2 + 8) = 256;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1AC51F3D8();
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC4F1450(v10, &a9, v9, a1);
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC4F300C(&a9, v10, v9);
}

uint64_t OUTLINED_FUNCTION_2_22@<X0>(uint64_t a1@<X8>)
{

  return sub_1AC4D0AF0(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_2_24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[3] = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[4] = v8;
  a1[5] = v6;
  a1[6] = v5;
  a1[7] = v4;
  a1[8] = v3;
  a1[9] = v2;
  *v7 = a1;
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 1 << *(a4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a4 + 64);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, size_t a3)
{
  *(v8 - 125) = v7;
  *(v8 - 124) = v6;
  *(v8 - 123) = v5;
  *(v8 - 122) = v4;
  *(v8 - 121) = v3;

  return memcmp((v8 - 120), (v8 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_1AC51EE08();
}

uint64_t OUTLINED_FUNCTION_9_20()
{
  *(v1 - 136) = v0;

  return sub_1AC51F038();
}

void *OUTLINED_FUNCTION_86_2(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__dst)
{

  return memcpy(__dst, a2, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_32_2()
{
  v1 = *(v0 + 128);
  *(v0 + 78) = *(v0 + 14);
  *(v0 + 64) = *v0;
  result = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_232()
{

  return sub_1AC51F468();
}

uint64_t OUTLINED_FUNCTION_32_3()
{
  result = v0;
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2)
{

  return sub_1AC459C7C(a2);
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_32_7()
{
  *v3 = v2;
  *(v3 + 8) = v0;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
}

void OUTLINED_FUNCTION_32_8()
{

  sub_1AC50AB78(0x3Au);
}

void OUTLINED_FUNCTION_32_9()
{
  *(v1 + 16) = v3;
  *(v1 + v0 + 32) = v4;
  *v2 = v1;
}

uint64_t sub_1AC453DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) > a1)
    {
      v7 = *(v5 + 16);
    }

    result = a2();
    v5 = result;
  }

  *v2 = v5;
  return result;
}

char *sub_1AC453E68(char *result, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *result++;
      if ((v3 & 0x80000000) == 0 && __OFADD__(v2++, 1))
      {
        break;
      }

      if (!--a2)
      {
        return v2;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  sub_1AC4854E8(v22, a14, a15, a21);

  return sub_1AC4513F8(v21, v23);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, sub_1AC456C38);
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t result)
{
  *v1 = result;
  *(result + 56) = v2;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  *(v1 + 88) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;

  return sub_1AC4779A8(v0 + 400, v0 + 240);
}

char *OUTLINED_FUNCTION_38_6()
{

  return sub_1AC45FD18(v0);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + 24);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t *OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 48) = a3;
  *(v4 - 40) = a4;

  return __swift_allocate_boxed_opaque_existential_1((v4 - 72));
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_1AC502214(v0);
}

uint64_t sub_1AC454060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_105_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_7_0(unint64_t *a1)
{

  return sub_1AC477788(a1);
}

double OUTLINED_FUNCTION_7_2()
{
  *(v0 - 216) = 1;
  result = 0.0;
  v2 = v0 - 248;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v0 - 160) = 0;
  *(v0 - 152) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1AC51F018();
}

void OUTLINED_FUNCTION_7_5()
{
  *(v0 + 24) = 4;
  *(v0 + 25) = 50529027;
  *(v0 + 29) = 3;
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  v3 = *(v0 + 8);

  return type metadata accessor for MessageExtension();
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1AC5B4340);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_13()
{
  *(v1 + 16) = v2;
  *(v1 + v4 + 32) = v3;
  *v0 = v1;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_7_14(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

void OUTLINED_FUNCTION_7_15()
{

  JUMPOUT(0x1AC5B4070);
}

void OUTLINED_FUNCTION_7_19()
{

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1)
{
  *(v2 - 80) = a1;
  v3 = **(v2 - 120);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16_0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1AC4578F4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_1AC474690(v0);
}

uint64_t OUTLINED_FUNCTION_1_16()
{
  result = v0[2];
  v2 = *(*v0 + result);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_1AC51F3D8();
}

void OUTLINED_FUNCTION_1_21()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 91;
  *v0 = v2;
  *(v0 + 4) = 256;
}

void OUTLINED_FUNCTION_1_31()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 91;
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, int a2)
{

  return sub_1AC451978((8 * a2) | 2u);
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_1AC45BD44(v0, v1 - 176);
}

uint64_t OUTLINED_FUNCTION_16_9(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  return *a1;
}

void OUTLINED_FUNCTION_16_10(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2].n128_u16[0] = v3;
  *a1 = a2;
  a1[1] = a3;
}

void OUTLINED_FUNCTION_16_13(uint64_t a1, unint64_t a2)
{

  sub_1AC5035B4(a1, a2, sub_1AC5010CC);
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 34;
  *(v2 - 288) = a1;

  return sub_1AC45FA3C(0x6570797440, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, int a2)
{

  return sub_1AC451978((8 * a2) | 2u);
}

void OUTLINED_FUNCTION_8_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_8_9@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

unsigned __int8 *OUTLINED_FUNCTION_8_10(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_8_11()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  result = v0[2];
  v2 = *(*v0 + result);
  return result;
}

void OUTLINED_FUNCTION_8_13()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_8_15()
{
  sub_1AC458F28();
  v1 = v0[2];
  v2 = *v0;
}

__n128 OUTLINED_FUNCTION_8_16()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_8_21(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1AC5B48A0);
}

void sub_1AC4549A0()
{
  OUTLINED_FUNCTION_25_1();
  if (v5)
  {
    v6 = v4;
    v7 = v3;
    sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_9_2();
      if (!v5 & v8)
      {
        v10 = 3;
      }

      else
      {
        v9 = *(v0 + 8);
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v10 = 1;
        v11 = v9 - v2;
        if (v9 >= v2)
        {
          v6(*v7, v7[1]);
          *v0 += v2;
          *(v0 + 8) = v11;
          *v7 = MEMORY[0x1AC5B4090]();
          v7[1] = v12;
          *(v0 + 32) = 1;
          return;
        }
      }

      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      *v13 = v10;
      swift_willThrow();
    }
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 360))();
}

{
  return (*(a3 + 368))();
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_94_1()
{

  sub_1AC4BBFB4();
}

void OUTLINED_FUNCTION_58_0()
{
  *(v0 + 16) = v2;
  *(v0 + 8 * v4 + 32) = v3;
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

__n128 OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v10 - 24) = a9;
  *(v10 - 8) = v9;
  *(v10 + 4) = v12;
  *v10 = v11;
  return result;
}

void OUTLINED_FUNCTION_0_0()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, char a41)
{
  *(v41 + 73) = a41;

  return sub_1AC4F0580(&a29);
}

uint64_t OUTLINED_FUNCTION_4()
{
  v2 = *(v0 + 16);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, char a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  *(v8 - 133) = a7;
  *(v8 - 132) = a6;
  *(v8 - 131) = a5;
  *(v8 - 130) = v7;
  *(v8 - 129) = a4;
  *(v8 - 128) = a2;
  *(v8 - 127) = result;
  return result;
}

void OUTLINED_FUNCTION_4_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);

  return sub_1AC51F0B8();
}

void OUTLINED_FUNCTION_4_9()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t result)
{
  *v1 = v2;
  *(v1 + 8) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_4_14(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return a1[2];
}

void OUTLINED_FUNCTION_4_15()
{
  *(v4 - 160) = v0;
  *(v4 - 159) = v3;
  *(v4 - 158) = v2;
  *(v4 - 157) = v1;
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_4_21()
{

  JUMPOUT(0x1AC5B4340);
}

void *OUTLINED_FUNCTION_4_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{
  *(v20 - 72) = v19;

  return memcpy(&__dst, v18, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_4_24()
{
  v5 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  v6 = *(v3 + 16);
  result = v0;
  v8 = *(v4 - 120);
  return result;
}

__n128 OUTLINED_FUNCTION_67_1()
{
  *(v1 + 136) = *(v0 + 40);
  *(v1 + 152) = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 168) = result;
  *(v1 + 182) = *(v0 + 86);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1AC4530E8(v5, va);
}

void sub_1AC454FD0(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64) | (*(v0 + 68) << 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  sub_1AC4FBB8C(a1, sub_1AC4513F8);
}

void OUTLINED_FUNCTION_21_11()
{
  *(v1 + 16) = v3;
  *(v1 + v0 + 32) = 45;
  *v2 = v1;
}

uint64_t sub_1AC455360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC4553E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AC45542C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result)
{
  *(result + 8) = sub_1AC486D78;
  v2 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_1AC51F3D8();
}

void OUTLINED_FUNCTION_3_19()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 34;
  *v0 = v2;
}

__n128 OUTLINED_FUNCTION_3_22(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v2 = v1[1];
  v6 = a1[2];
  v7 = *v1;
  return v1[2];
}

void OUTLINED_FUNCTION_3_23()
{
  v2 = *(v0 + 16) + 1;

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_3_27()
{

  JUMPOUT(0x1AC5B4340);
}

void OUTLINED_FUNCTION_3_30()
{
  v2 = *(v0 + 16) + 1;

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

void OUTLINED_FUNCTION_0_2()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 10;
  *v0 = v2;
}

double OUTLINED_FUNCTION_0_4()
{
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_13(unint64_t result, unsigned __int32 a2, __n128 a3)
{
  v3[1] = a3;
  v3->n128_u64[0] = result;
  v3->n128_u32[2] = a2;
  return result;
}

void OUTLINED_FUNCTION_0_18()
{

  sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  v2 = **(v1 - 160);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_0_22()
{
  v3 = *v1;
  *(v3 + 16) = v0 + 1;
  *(v3 + v0 + 32) = v2;
  *v1 = v3;
}

void OUTLINED_FUNCTION_0_23()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 93;
  *v0 = v2;
  *(v0 + 4) = 44;
}

__n128 OUTLINED_FUNCTION_0_26()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

void OUTLINED_FUNCTION_0_27()
{

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_0_36()
{
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 10;
  *v0 = v2;
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 336))();
}

{
  return (*(a3 + 344))();
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  v1 = *(v0[13] + 8);
  result = v0[10];
  v3 = v0[7];
  return result;
}

__n128 OUTLINED_FUNCTION_45_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13)
{
  *&v15[28] = a13;
  *&v15[24] = a12;
  *&v15[16] = a11;
  *&v15[8] = a10;
  *v15 = a9;
  *v13 = *v15;
  result = *&v15[14];
  *(v13 + 14) = *&v15[14];
  return result;
}

uint64_t OUTLINED_FUNCTION_45_4()
{
  v2 = *(v0 + 112);

  return sub_1AC51F0D8();
}

uint64_t sub_1AC455C34(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *OUTLINED_FUNCTION_6_1(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_6_12()
{
  *(v0 - 56) = *(v0 - 48);
}

void OUTLINED_FUNCTION_6_13()
{

  JUMPOUT(0x1AC5B48A0);
}

void OUTLINED_FUNCTION_6_15(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 1;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 240);
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_6_23()
{

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_10_4(uint64_t a1@<X8>)
{
  *v1 += v3;
  v1[1] = a1;
  v4 = *(*v2 + 16);
}

void OUTLINED_FUNCTION_10_10()
{

  sub_1AC45A78C();
}

void *OUTLINED_FUNCTION_10_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char __dst)
{

  return memcpy(&__dst, &a9, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 104);
  v5 = *(v1 - 128);
  return result;
}

uint64_t sub_1AC45604C(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    v5 = *(v3 + 16);
    OUTLINED_FUNCTION_11_8();
    result = a1();
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  v3 = *(v0 + 24);
  result = v1;
  v6 = *(v2 - 96);
  v5 = *(v2 - 88);
  v7 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_1AC457638();
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1AC51ED58();
}

void OUTLINED_FUNCTION_34_7()
{
  v2 = *(v0 + 16) + 1;

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{

  sub_1AC4854E8(a17, v23, a23, a14);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);

  return sub_1AC51EDA8();
}

void *OUTLINED_FUNCTION_104_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(a1, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_1AC4578F4(v21, a21);
}

__n128 OUTLINED_FUNCTION_91_2@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

void OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_1AC51F3D8();
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_35_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, &__src, 0x41uLL);
}

void OUTLINED_FUNCTION_35_7()
{

  JUMPOUT(0x1AC5B4070);
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, sub_1AC48F190);
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_1AC459020(0x5Du);
}

uint64_t OUTLINED_FUNCTION_37_4()
{
  v2 = *(*v0 + 16);

  return sub_1AC45A85C(v2);
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_1AC4EF50C(&a18, &a27);
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 144))();
}

{
  return (*(a3 + 152))();
}

void sub_1AC45641C(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      OUTLINED_FUNCTION_98_1(v4);
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t sub_1AC456544(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = (a1 + a2);
  v23 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_0_33();
  v8 = v7 | 0x80800000;
  v10 = v9;
  while (1)
  {
    while (1)
    {
      while (!v3)
      {
        if (!v10 || v2 == v10)
        {
          return sub_1AC51EE98();
        }

        v3 = 0;
        v12 = *v10++;
        v11 = v12;
        if (v12 < 0)
        {
          v13 = v23 & 0xFFFFFF00 | v11;
          v14 = 8;
          goto LABEL_8;
        }
      }

      if ((v23 & 0x80) != 0)
      {
        break;
      }

      sub_1AC463F1C();
      v21 = sub_1AC463E74();
      sub_1AC463E94(0);
      (v21)(v22, 0);
      OUTLINED_FUNCTION_0_33();
      v8 = v18 | 0x80800000;
    }

    OUTLINED_FUNCTION_0_33();
    v8 = v19 | 0x80800000;
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_8:
    v15 = v10;
    while (v15 != v2)
    {
      v16 = *v15++;
      ++v10;
      v13 = (v16 << v14) | ((-255 << v14) - 1) & v13;
      v14 += 8;
      if (v14 >= 0x20u)
      {
        goto LABEL_13;
      }
    }

    if (!v14)
    {
      return sub_1AC51EE98();
    }

LABEL_13:
    if ((v13 & 0xC0E0) == 0x80C0)
    {
      if ((v13 & 0x1E) == 0)
      {
        goto LABEL_30;
      }

      v17 = 16;
    }

    else if ((v13 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v13 & v4) == 0 || (v13 & v4) == v5)
      {
        goto LABEL_30;
      }

      v17 = 24;
    }

    else
    {
      if ((v13 & v6) != v8 || (v13 & 0x3007) == 0 || __rev16(v13 & 0x3007) > 0x400)
      {
LABEL_30:
        sub_1AC51F4D8();
        return 0;
      }

      v17 = 32;
    }

    v23 = v13 >> v17;
    v3 = v14 - v17;
    v24 = v3;
  }
}

void OUTLINED_FUNCTION_89_0(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 72) = a1;
}

uint64_t dispatch thunk of Decoder.decodeSingularInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))();
}

{
  return (*(a3 + 104))();
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 200))();
}

{
  return (*(a3 + 192))();
}

void sub_1AC456860(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 33) == 1)
  {
    v5 = a2();
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return UnknownStorage.traverse<A>(visitor:)(v2, v1, v0);
}

char *OUTLINED_FUNCTION_48_6()
{

  return sub_1AC45FD18(v0);
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 56))();
}

{
  return (*(a3 + 48))();
}

uint64_t sub_1AC456984()
{
  v1 = *(v0 + 8);
  v2 = v1 < 8;
  v3 = v1 - 8;
  if (v2)
  {
    sub_1AC48D31C();
    v4 = swift_allocError();
    return OUTLINED_FUNCTION_15(v4, v5);
  }

  else
  {
    result = **v0;
    *v0 += 8;
    *(v0 + 8) = v3;
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))();
}

{
  return (*(a3 + 128))();
}

void sub_1AC456B04()
{
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    v5 = v3;
    sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v4 && v7)
      {
        sub_1AC48D31C();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_23_2();
      }

      else
      {
        v8 = v0[1];
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v7 = v8 >= v6;
        v9 = v8 - v6;
        if (v7)
        {
          v12 = *v0;
          *v0 += v6;
          v0[1] = v9;
          v13 = sub_1AC456544(v12, v6);
          if (v14)
          {
            v15 = v13;
            v16 = v14;
            sub_1AC456458();
            v17 = OUTLINED_FUNCTION_48_1();
            sub_1AC456470(v17);
            OUTLINED_FUNCTION_32_0(v2 + 1);
            v19 = v18 + 16 * v2;
            *(v19 + 32) = v15;
            *(v19 + 40) = v16;
            *v5 = v18;
            OUTLINED_FUNCTION_33_0();
            return;
          }

          sub_1AC48D31C();
          OUTLINED_FUNCTION_11();
          v11 = 2;
        }

        else
        {
          sub_1AC48D31C();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_22_3();
        }
      }

      OUTLINED_FUNCTION_107_0(v10, v11);
    }
  }
}

void sub_1AC456CE0(int a1)
{
  v2 = 8 * a1;
  v3 = 10;
  v4 = 11;
  v5 = 12;
  if ((8 * a1) >> 28)
  {
    v5 = 13;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * a1) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 9;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v8);
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))();
}

{
  return (*(a3 + 80))();
}

unint64_t sub_1AC456D58(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_16_4(a1, a2);
  v5 = OUTLINED_FUNCTION_28_1();
  result = sub_1AC451818(v5, v6);
  if (!v3)
  {
    v8 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AC4519B4(result);
      v9 = v4 + result;
      if (!__OFADD__(v4, result))
      {
        v10 = __OFADD__(v9, v8);
        v11 = v9 + v8;
        if (!v10)
        {
          v10 = __OFADD__(*v2, v11);
          v12 = *v2 + v11;
          if (!v10)
          {
            *v2 = v12;
            return result;
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void sub_1AC456E64()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_1AC4519B4(v1);
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    v12 = __OFADD__(*v0, v11);
    v13 = *v0 + v11;
    if (!v12)
    {
      OUTLINED_FUNCTION_11_4(v13);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1AC456F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_3_7(a1, a2);
  sub_1AC451CCC(v8, 2u);
  result = sub_1AC451818(a3, a4);
  if (!v5)
  {
    sub_1AC45702C(result);
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a3, a4);
  }

  return result;
}

uint64_t sub_1AC457064()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = OUTLINED_FUNCTION_3_7(v0, v2);
  sub_1AC451CCC(v3, 0);
  return sub_1AC457060(v1 & 1);
}

void Message.init<A>(jsonUTF8Bytes:extensions:options:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v10;
  v27 = v9;
  v25 = v11;
  OUTLINED_FUNCTION_5();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_8();
  v19 = v18 - v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  (*(v23 + 16))(v24, v23);
  v28[2] = v8;
  v28[3] = v6;
  v28[4] = v4;
  v28[5] = v2;
  v28[6] = v21;
  v29 = v22;
  v30 = v26;
  v31 = v19;
  (*(v2 + 32))(sub_1AC458DB8, v28, MEMORY[0x1E69E7CA8] + 8, v6, v2);
  (*(*(v6 - 8) + 8))(v27, v6);
  if (!v0)
  {
    (*(v13 + 16))(v25, v19, v8);
  }

  sub_1AC4575D8(v26, &qword_1EB557F98, &qword_1AC520460);
  (*(v13 + 8))(v19, v8);
  OUTLINED_FUNCTION_61();
}

void sub_1AC4572A8(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 3;
  v5 = 4;
  v6 = 5;
  if ((8 * a2) >> 28)
  {
    v6 = 6;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC45731C()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_5();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_8();
  v15 = v14 - v13;
  if (dynamic_cast_existential_1_conditional(v16))
  {
    (*(v17 + 8))(v30);
    v18 = v0[17];
    v19 = v0[18];
    v20 = v0[19];
    sub_1AC458E14(v0[16]);
    v21 = v30[1];
    *(v0 + 8) = v30[0];
    *(v0 + 9) = v21;
    (*(v9 + 16))(v15, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC458DF0(&v27, v30);
      sub_1AC47782C(v30, &v27);
      v22 = *(&v28 + 1);
      v23 = v29;
      __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      (*(v23 + 16))(v0, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (!v1)
      {
        (*(v9 + 8))(v7, v5);
        sub_1AC47782C(&v27, &v26);
        swift_dynamicCast();
      }

      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      sub_1AC4575D8(&v27, &qword_1EB557FC8, &unk_1AC528980);
      sub_1AC458E74(0x7Bu);
      if (!v1)
      {
        sub_1AC458FC0();
        if (sub_1AC459020(0x7Du))
        {
          sub_1AC45A9B0();
        }

        else
        {
          (*(v3 + 64))(v0, &type metadata for JSONDecoder, &off_1F211C6C8, v5, v3);
        }
      }
    }
  }

  else
  {
    sub_1AC477660();
    v24 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36(xmmword_1AC528950, v24, v25);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4575D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AC457638()
{
  sub_1AC458F28();
  v1 = v0[2];
  v2 = *v0;
  if (*v0)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v3 = 0;
  }

  if (v1 == v3 || *(v2 + v1) != 110)
  {
    return 0;
  }

  return sub_1AC459FB0(&unk_1F2126E98);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AC457700()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  sub_1AC451CCC(v3, 1u);
  v4 = *(v0 + 8);
  *v4 = v2;
  OUTLINED_FUNCTION_16_5((v4 + 1));
}

uint64_t sub_1AC457764(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v2, 0);
  v3 = OUTLINED_FUNCTION_10_7();
  return sub_1AC457060(v3);
}

void sub_1AC4577A0()
{
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    v5 = v3;
    sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_27_1();
      if (!v4 && v7)
      {
        v9 = 3;
      }

      else
      {
        v8 = *(v0 + 8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v9 = 1;
        v7 = v8 >= v6;
        v10 = v8 - v6;
        if (v7)
        {
          *v0 += v6;
          *(v0 + 8) = v10;
          v11 = MEMORY[0x1AC5B4090]();
          v13 = v12;
          sub_1AC45846C();
          v14 = OUTLINED_FUNCTION_48_1();
          sub_1AC458484(v14);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          v16 = v15 + 16 * v2;
          *(v16 + 32) = v11;
          *(v16 + 40) = v13;
          *v5 = v15;
          *(v0 + 32) = 1;
          return;
        }
      }

      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      *v17 = v9;
      swift_willThrow();
    }
  }
}

uint64_t sub_1AC45788C(int a1, uint64_t a2)
{
  v2 = a1;
  sub_1AC451CCC(a2, 0);
  return sub_1AC457060(v2);
}

uint64_t sub_1AC4578F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1AC45794C()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558238, &qword_1AC5209F8);
    v9 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_5();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1AC457A34()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
  }

  else
  {
    result = sub_1AC457AA8();
    if (!v0)
    {
      if (result == result)
      {
        *v1 = result;
      }

      else
      {
        sub_1AC477660();
        v3 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v3, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1AC457AEC(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t *, char *, uint64_t *, uint64_t), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v7 = OUTLINED_FUNCTION_19_8();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v37 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v14 = v13 - v12;
  sub_1AC458F28();
  v15 = *v4;
  if (*v4)
  {
    v16 = *(v5 + 8) - v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v5 + 16);
  if (v17 == v16)
  {
LABEL_5:
    sub_1AC477660();
    v18 = OUTLINED_FUNCTION_11();
    v20 = xmmword_1AC51FB60;
LABEL_6:
    OUTLINED_FUNCTION_36(v20, v18, v19);
    return v4;
  }

  if (*(v15 + v17) != 34)
  {
    OUTLINED_FUNCTION_16_8();
    v31 = *(v5 + 8);
    v32 = OUTLINED_FUNCTION_20_8();
    a1(v32);
    if (!v3)
    {
      OUTLINED_FUNCTION_20();
      sub_1AC457DC4(v39);
      if ((v5 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_16;
    }

LABEL_13:
    sub_1AC457DC4(v39);
    return v4;
  }

  v35 = a1;
  v21 = *(v5 + 8);
  *(v5 + 16) = sub_1AC458F9C(v17, v15, v21);
  OUTLINED_FUNCTION_16_8();
  v22 = OUTLINED_FUNCTION_20_8();
  v23 = v35(v22, v21, v5 + 16);
  if (v3)
  {
    goto LABEL_13;
  }

  v4 = v23;
  v36 = v21;
  v25 = v24;
  sub_1AC457DC4(v39);
  if ((v25 & 1) == 0)
  {
    v33 = *(v5 + 16);
    v34 = *v5;
    if (*v5)
    {
      v34 = *(v5 + 8) - v34;
    }

    if (v33 == v34)
    {
      goto LABEL_5;
    }

    if (*(v15 + v33) == 34)
    {
      *(v5 + 16) = sub_1AC458F9C(v33, v15, v36);
      return v4;
    }

LABEL_16:
    sub_1AC477660();
    v18 = OUTLINED_FUNCTION_11();
    v20 = xmmword_1AC528340;
    goto LABEL_6;
  }

  *(v5 + 16) = v17;
  OUTLINED_FUNCTION_17_0();
  sub_1AC45993C();
  v4 = v26;
  sub_1AC51EE18();
  v27 = sub_1AC51EDF8();
  v29 = v28;
  result = (*(v37 + 8))(v14, v7);
  if (v29 >> 60 != 15)
  {

    sub_1AC4E58D8(v27, v29, v5, a2, v40);
    OUTLINED_FUNCTION_20();
    sub_1AC45AC74(v27, v29);
    if ((v5 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC457E18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  v9 = *(a1 + v5);
  if (v9 != 92 && v9 != 78)
  {
    v13 = *a3;
    if (v9 != 45)
    {
      goto LABEL_11;
    }

    v14 = sub_1AC458F9C(*a3, a1, a2);
    *a3 = v14;
    if (v14 == a4)
    {
      *a3 = v5;
LABEL_2:
      v6 = 13;
LABEL_3:
      sub_1AC477660();
      swift_allocError();
      *v7 = 0;
      v7[1] = v6;
      swift_willThrow();
      return;
    }

    v13 = v14;
    v9 = *(a1 + v14);
    if (v9 != 92)
    {
LABEL_11:
      if (v9 != 73)
      {
        if (v9 == 48)
        {
          v15 = sub_1AC458F9C(v13, a1, a2);
          *a3 = v15;
          if (v15 == a4)
          {
            return;
          }

          v16 = v15;
          v9 = *(a1 + v15);
          if (v9 == 92)
          {
            return;
          }

          if ((v9 - 58) >= 0xFFFFFFF6)
          {
            v6 = 12;
            goto LABEL_3;
          }
        }

        else
        {
          if ((v9 - 58) < 0xFFFFFFF7)
          {
            goto LABEL_16;
          }

          v17 = a2 - a1;
          if (!a1)
          {
            v17 = 0;
          }

          v18 = v13 + 1;
          while (1)
          {
            v16 = v18 - 1;
            if ((v9 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            if (v13 < 0 || v16 >= v17)
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              return;
            }

            *a3 = v18;
            if (a4 == v18)
            {
LABEL_61:
              v28 = *(v4 + 24);
              v29 = a1;
              v30 = a2;
              v31 = v5;
              v16 = a4;
              goto LABEL_63;
            }

            v9 = *(a1 + v18++);
            if (v9 == 92)
            {
              return;
            }
          }
        }

        if (v9 == 46)
        {
          v19 = sub_1AC458F9C(v16, a1, a2);
          *a3 = v19;
          if (v19 == a4)
          {
            goto LABEL_2;
          }

          v9 = *(a1 + v19);
          if ((v9 - 58) < 0xFFFFFFF6)
          {
            v6 = 1;
            if (v9 != 92)
            {
              goto LABEL_3;
            }

            return;
          }

          v20 = a2 - a1;
          if (!a1)
          {
            v20 = 0;
          }

          v21 = v19 + 1;
          while (1)
          {
            v16 = v21 - 1;
            if ((v9 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            if (v19 < 0 || v16 >= v20)
            {
              goto LABEL_66;
            }

            *a3 = v21;
            if (a4 == v21)
            {
              goto LABEL_61;
            }

            v9 = *(a1 + v21++);
            if (v9 == 92)
            {
              return;
            }
          }
        }

        if ((v9 | 0x20) != 0x65)
        {
LABEL_62:
          v32 = *(v4 + 24);
          v29 = a1;
          v30 = a2;
          v31 = v5;
LABEL_63:
          sub_1AC458188(v29, v30, v31, v16);
          if (v33)
          {
            v6 = 6;
            goto LABEL_3;
          }

          return;
        }

        v22 = sub_1AC458F9C(v16, a1, a2);
        *a3 = v22;
        if (v22 == a4)
        {
          goto LABEL_2;
        }

        v23 = v22;
        v24 = *(a1 + v22);
        if (v24 != 43)
        {
          if (v24 == 92)
          {
            return;
          }

          if (v24 != 45)
          {
            goto LABEL_51;
          }
        }

        v25 = sub_1AC458F9C(v22, a1, a2);
        *a3 = v25;
        if (v25 == a4)
        {
          goto LABEL_2;
        }

        v23 = v25;
        v24 = *(a1 + v25);
        if (v24 != 92)
        {
LABEL_51:
          if ((v24 - 58) >= 0xFFFFFFF6)
          {
            v26 = a2 - a1;
            if (!a1)
            {
              v26 = 0;
            }

            v27 = v23 + 1;
            while (1)
            {
              v16 = v27 - 1;
              if ((v24 - 58) < 0xFFFFFFF6)
              {
                goto LABEL_62;
              }

              if (v23 < 0 || v16 >= v26)
              {
                goto LABEL_67;
              }

              *a3 = v27;
              if (a4 == v27)
              {
                goto LABEL_61;
              }

              v24 = *(a1 + v27++);
              if (v24 == 92)
              {
                return;
              }
            }
          }

LABEL_16:
          v6 = 1;
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_1AC458188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < a3)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v4 = a1 + a4;
    }

    else
    {
      v4 = 0;
    }

    if (a1)
    {
      v5 = a1 + a3;
    }

    else
    {
      v5 = 0;
    }

    sub_1AC45D17C(v5, v4);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.jsonString(options:)(InternalSwiftProtobuf::JSONEncodingOptions options)
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  v6 = v5;
  v7 = sub_1AC51EE28();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_5();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_8();
  v14 = *v6;
  v15 = v6[1];
  v16 = v6[2];
  v17 = v6[3];
  (*(v18 + 16))(v13 - v12, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(v24, v26);
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_4_15();
    (*(v20 + 8))(v24, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1AC4575D8(v24, &qword_1EB557FC8, &unk_1AC528980);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    Message.jsonUTF8Bytes<A>(options:)();
    if (!v2)
    {
      sub_1AC51EE18();
      sub_1AC45A8C0();
      v21 = sub_1AC51EE08();
      if (!v22)
      {
        __break(1u);
        goto LABEL_8;
      }
    }
  }

  OUTLINED_FUNCTION_61();
LABEL_8:
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

void sub_1AC4584B4(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t sub_1AC4584F0()
{
  sub_1AC45AB1C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void Message.init(jsonString:extensions:options:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_8();
  v16 = v15 - v14;
  v17 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v17 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v25 = v3;
    v18 = *v1;
    v19 = *(v1 + 8);
    sub_1AC51EE18();
    v20 = sub_1AC51EDF8();
    v22 = v21;

    (*(v10 + 8))(v16, v8);
    if (v22 >> 60 != 15)
    {
      v26[5] = v20;
      v26[6] = v22;
      sub_1AC450324(v25, v26);
      sub_1AC4578F4(v20, v22);
      Message.init<A>(jsonUTF8Bytes:extensions:options:)();
      sub_1AC4575D8(v25, &qword_1EB557F98, &qword_1AC520460);
      sub_1AC45AC74(v20, v22);
      goto LABEL_9;
    }

    sub_1AC477660();
    swift_allocError();
    *v23 = xmmword_1AC51FB60;
    swift_willThrow();
    v3 = v25;
  }

  else
  {

    sub_1AC477660();
    swift_allocError();
    *v24 = xmmword_1AC51FB60;
    swift_willThrow();
  }

  sub_1AC4575D8(v3, &qword_1EB557F98, &qword_1AC520460);
LABEL_9:
  OUTLINED_FUNCTION_61();
}

void Message.init(jsonString:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  Message.init(jsonString:extensions:options:)();
}

void sub_1AC4587B0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || (v10 = a2, v11 = a1, a2 - a1 < 1))
  {
    sub_1AC477660();
    swift_allocError();
    *v17 = xmmword_1AC51FB60;
    swift_willThrow();
    return;
  }

  v43 = a6;
  v44 = v9;
  v58 = a7;
  v14 = a9;
  sub_1AC450324(a5, &v51);
  sub_1AC450324(&v51, &v49);
  type metadata accessor for DoubleParser();
  v15 = swift_allocObject();
  *(v15 + 16) = swift_slowAlloc();
  *(v15 + 24) = 128;
  *&v48[0] = v11;
  *(&v48[0] + 1) = v10;
  *&v48[1] = 0;
  *(&v48[1] + 1) = v15;
  *(&v48[5] + 1) = a3;
  *&v48[2] = a3;
  BYTE8(v48[2]) = a4 & 1;
  if (v50)
  {
    sub_1AC4575D8(&v51, &qword_1EB557F98, &qword_1AC520460);
    sub_1AC458DF0(&v49, &v45);
    v16 = v58;
  }

  else
  {
    v47 = &protocol witness table for SimpleExtensionMap;
    v46 = &type metadata for SimpleExtensionMap;
    *&v45 = MEMORY[0x1E69E7CC8];
    sub_1AC4575D8(&v51, &qword_1EB557F98, &qword_1AC520460);
    v16 = v58;
    if (v50)
    {
      sub_1AC4575D8(&v49, &qword_1EB557F98, &qword_1AC520460);
    }
  }

  sub_1AC458DF0(&v45, &v48[3]);
  memcpy(v54, v48, 0x60uLL);
  v54[13] = a9;
  v54[14] = 0;
  v55 = 0;
  v56 = 0u;
  v57 = 0u;
  v54[12] = v16;
  v18 = v54[1] - v54[0];
  v19 = v54[2];
  if (v54[0])
  {
    v20 = v54[1] - v54[0];
  }

  else
  {
    v20 = 0;
  }

  v21 = v54[2];
  if (!v54[0])
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v18 == v21)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v22 = *(v54[0] + v21);
    if (v22 > 0x20 || ((1 << v22) & 0x100002600) == 0)
    {
      break;
    }

    if (v19 < 0 || v21 >= v20)
    {
      __break(1u);
      goto LABEL_46;
    }

    v54[2] = ++v21;
    if (v54[0])
    {
      goto LABEL_12;
    }

LABEL_14:
    if (!v21)
    {
      goto LABEL_43;
    }
  }

  if (!v54[0] || v18 == v21 || v22 != 110)
  {
LABEL_43:
    sub_1AC45731C();
    if (v44)
    {
LABEL_44:
      sub_1AC45AA7C(v54);
      return;
    }

    goto LABEL_50;
  }

  if ((v21 & 0x8000000000000000) == 0 && v21 < v18)
  {
    v54[2] = v21 + 1;
    if (v18 - 1 == v21 || *(v54[0] + v21 + 1) != 117)
    {
      goto LABEL_42;
    }

    if (v21 + 1 >= v18)
    {
LABEL_72:
      __break(1u);
    }

    else
    {
      v54[2] = v21 + 2;
      if (v18 - 2 == v21 || *(v54[0] + v21 + 2) != 108)
      {
        goto LABEL_42;
      }

      if (v21 + 2 < v18)
      {
        v54[2] = v21 + 3;
        if (v18 - 3 == v21 || *(v54[0] + v21 + 3) != 108)
        {
          goto LABEL_42;
        }

        if (v21 + 3 < v18)
        {
          v54[2] = v21 + 4;
          if (v18 - 4 == v21 || (*(v54[0] + v21 + 4) & 0xDFu) - 91 < 0xFFFFFFE6)
          {
            v24 = dynamic_cast_existential_1_conditional(v16);
            if (!v24)
            {
LABEL_48:
              sub_1AC477660();
              swift_allocError();
              v31 = xmmword_1AC528940;
LABEL_70:
              *v30 = v31;
              swift_willThrow();
              goto LABEL_44;
            }

            v14 = v24;
            a3 = v25;
            v26 = *(v25 + 24);
            v10 = sub_1AC51F228();
            v42 = *(v10 - 8);
            v27 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x1EEE9AC00](v10);
            v11 = &v41 - v28;
            v29 = v44;
            v26(v14, a3);
            if (v29)
            {
              goto LABEL_44;
            }

LABEL_46:
            if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
            {
              (*(v42 + 8))(v11, v10);
              goto LABEL_48;
            }

            v52 = v14;
            v53 = a3;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
            (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v11, v14);
            sub_1AC458DF0(&v51, v48);
            sub_1AC458DF0(v48, &v51);
            (*(*(v58 - 8) + 8))(v43, v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
            swift_dynamicCast();
LABEL_50:
            v33 = v54[1] - v54[0];
            v34 = v54[2];
            if (v54[0])
            {
              v35 = v54[1] - v54[0];
            }

            else
            {
              v35 = 0;
            }

            v36 = v54[2];
            if (!v54[0])
            {
              goto LABEL_56;
            }

LABEL_54:
            if (v33 == v36)
            {
              goto LABEL_44;
            }

            while (1)
            {
              v37 = *(v54[0] + v36);
              v38 = v37 > 0x20;
              v39 = (1 << v37) & 0x100002600;
              if (v38 || v39 == 0)
              {
                break;
              }

              if (v34 < 0 || v36 >= v35)
              {
                __break(1u);
                goto LABEL_72;
              }

              v54[2] = ++v36;
              if (v54[0])
              {
                goto LABEL_54;
              }

LABEL_56:
              if (!v36)
              {
                goto LABEL_44;
              }
            }

            if (v54[0])
            {
              if (v33 == v36)
              {
                goto LABEL_44;
              }
            }

            else if (!v36)
            {
              goto LABEL_44;
            }

            sub_1AC477660();
            swift_allocError();
            v31 = xmmword_1AC529040;
            goto LABEL_70;
          }

LABEL_42:
          v54[2] = v21;
          goto LABEL_43;
        }

        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC458DF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AC458E14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC458E74(unsigned __int8 a1)
{
  sub_1AC458F28();
  v3 = v1[2];
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1] - v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == v5)
  {
    sub_1AC477660();
    OUTLINED_FUNCTION_11();
    *v6 = xmmword_1AC51FB60;
  }

  else
  {
    if (*(v4 + v3) == a1)
    {
      result = sub_1AC458F9C(v3, v4, v1[1]);
      v1[2] = result;
      return result;
    }

    sub_1AC477660();
    v8 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_16_6(v8, v9);
  }

  return swift_willThrow();
}

void sub_1AC458F28()
{
  v1 = *v0;
  v2 = v0[1] - *v0;
  v3 = v0[2];
  if (*v0)
  {
    v4 = v0[1] - *v0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[2];
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (v2 != v5)
  {
    do
    {
      v6 = *(v1 + v5);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (v7 || v8 == 0)
      {
        break;
      }

      if (v3 < 0 || v5 >= v4)
      {
        __break(1u);
        return;
      }

      v0[2] = ++v5;
      if (v1)
      {
        goto LABEL_5;
      }

LABEL_7:
      ;
    }

    while (v5);
  }
}

uint64_t sub_1AC458F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (result < 0 || v3 <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

void sub_1AC458FC0()
{
  v1 = *(v0 + 88);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 88) = v3;
    if (v3 < 0)
    {
      sub_1AC477660();
      v4 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36(xmmword_1AC528EA0, v4, v5);
    }
  }
}

uint64_t sub_1AC459020(unsigned __int8 a1)
{
  sub_1AC458F28();
  v3 = v1[2];
  v4 = *v1;
  if (*v1)
  {
    v5 = v1[1] - v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == v5 || *(v4 + v3) != a1)
  {
    return 0;
  }

  v1[2] = sub_1AC458F9C(v3, v4, v1[1]);
  return 1;
}

uint64_t sub_1AC45908C()
{
  v3 = v1;
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    return 0;
  }

  v4 = v0[14];
  if (v4 >= 1)
  {
    sub_1AC458E74(0x2Cu);
    if (v1)
    {
      return v2;
    }
  }

  result = v0[16];
  if (result)
  {
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[17];
    v14 = v0[16];
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v9 = v0[12];
    v10 = v0[13];

    v11 = sub_1AC4591F8(&v14, v9, v10);
    if (v3)
    {
      v2 = v15;

      return v2;
    }

    v2 = v11;
    v13 = v12;

    if (v13)
    {
      return v2;
    }

    if (!__OFADD__(v4, 1))
    {
      v0[14] = v4 + 1;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4591D4()
{
  result = sub_1AC45908C();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1AC4591F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v60 = a3;
  v6 = *(a1 + 24);
  while (1)
  {
    OUTLINED_FUNCTION_17_0();
    v7 = sub_1AC4595E0();
    if (v4)
    {
      return v3;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_17_0();
      v10 = sub_1AC45993C();
      v12 = v11;
      v54 = v10;
      v55 = v11;
      v3 = v5;
      sub_1AC458F28();
      v13 = *v5;
      if (*v5)
      {
        v14 = *(v5 + 8) - v13;
      }

      else
      {
        v14 = 0;
      }

      v24 = *(v5 + 16);
      if (v24 == v14)
      {
        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        *v50 = xmmword_1AC51FB60;
LABEL_36:
        swift_willThrow();
        goto LABEL_37;
      }

      if (*(v13 + v24) != 58)
      {
        sub_1AC477660();
        v51 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_16_6(v51, v52);
        goto LABEL_36;
      }

      *(v5 + 16) = sub_1AC458F9C(v24, v13, *(v5 + 8));
      v25 = OUTLINED_FUNCTION_30();
      v27 = sub_1AC4F2B28(v25, v26);
      v28 = (v27 + 32 + *(v27 + 16));
      v58[0] = (v27 + 32);
      v58[1] = v28;
      v58[2] = "";
      v58[3] = 0;
      v59 = 258;
      v3 = sub_1AC4CFB1C(v58, v6);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v15 = v7;
      v16 = v8;
      v3 = v5;
      sub_1AC458F28();
      v17 = *v5;
      if (*v5)
      {
        v18 = *(v5 + 8) - v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v5 + 16);
      if (v19 == v18)
      {
        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        v47 = xmmword_1AC51FB60;
        goto LABEL_39;
      }

      if (*(v17 + v19) != 58)
      {
        sub_1AC477660();
        v48 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_16_6(v48, v49);
LABEL_40:
        swift_willThrow();
        return v3;
      }

      result = sub_1AC458F9C(v19, v17, *(v5 + 8));
      *(v5 + 16) = result;
      v56[0] = v15;
      v56[1] = v16;
      v56[2] = "";
      v56[3] = 0;
      v57 = 258;
      if (*(v6 + 16))
      {
        v3 = v6;
        result = sub_1AC4599C0(v56);
        if (v21)
        {
          return *(*(v6 + 56) + 8 * result);
        }
      }

      if (!v15)
      {
        goto LABEL_46;
      }

      v22 = sub_1AC456544(v15, v16 - v15);
      if (!v23)
      {
        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        v47 = xmmword_1AC51FB70;
LABEL_39:
        *v46 = v47;
        goto LABEL_40;
      }

      v10 = v22;
      v12 = v23;
      v54 = v22;
      v55 = v23;
    }

    v31 = OUTLINED_FUNCTION_30();
    if ((sub_1AC4E6114(v31, v32) & 0x1FF) == 0x5B)
    {
      v33 = OUTLINED_FUNCTION_30();
      result = sub_1AC4D41A8(v33, v34);
      if ((result & 0x1FF) == 0x5D)
      {
        break;
      }
    }

LABEL_27:
    if ((*(v5 + 40) & 1) == 0)
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v45 = v10;
      v45[1] = v12;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_17_0();
    sub_1AC4E61EC();
    v3 = v5;
    if (sub_1AC459020(0x7Du))
    {
      sub_1AC45A9B0();

      return 0;
    }

    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v44);
  }

  v35 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v35 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = OUTLINED_FUNCTION_30();
    result = sub_1AC4E61A4(v36, v37);
    if (!v38)
    {
      goto LABEL_47;
    }

    v39 = sub_1AC4E6ACC(1);
    sub_1AC4E597C(v39);

    v40 = *(v5 + 72);
    v41 = *(v5 + 80);
    v3 = __swift_project_boxed_opaque_existential_1((v5 + 48), v40);
    v10 = v54;
    v12 = v55;
    v42 = (*(v41 + 16))(a2, v60, v54, v55, v40, v41);
    if ((v43 & 1) == 0)
    {
      v3 = v42;
LABEL_37:

      return v3;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1AC4595E0()
{
  sub_1AC458F28();
  v2 = v0[2];
  v3 = *v0;
  if (*v0)
  {
    v4 = v0[1] - v3;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == v4)
  {
    goto LABEL_5;
  }

  if (*(v3 + v2) != 34)
  {
    return 0;
  }

  v6 = v0[1];
  result = sub_1AC458F9C(v0[2], *v0, v6);
  v0[2] = result;
  if (v3)
  {
    v8 = v6 - v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = result;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6 - v3 == v9)
  {
    v9 = v6 - v3;
  }

  else
  {
    do
    {
      v10 = *(v3 + v9);
      if (v10 == 34)
      {
        break;
      }

      if (v10 == 92)
      {
        v1 = 0;
        goto LABEL_28;
      }

      if (result < 0 || v9 >= v8)
      {
        __break(1u);
        goto LABEL_31;
      }

      ++v9;
      if (v3)
      {
        goto LABEL_11;
      }

LABEL_13:
      ;
    }

    while (v9);
  }

  v0[2] = v9;
  v11 = *v0;
  if (*v0)
  {
    v11 = v0[1] - v11;
  }

  if (v9 == v11)
  {
LABEL_5:
    sub_1AC477660();
    swift_allocError();
    *v5 = xmmword_1AC51FB60;
    swift_willThrow();
    return v1;
  }

  if (v3)
  {
    if (!__OFSUB__(v9, result))
    {
      v1 = v3 + result;
      v2 = sub_1AC458F9C(v9, v3, v6);
LABEL_28:
      v0[2] = v2;
      return v1;
    }

LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC45976C()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    result = sub_1AC45993C();
    if (v0)
    {
      return result;
    }

    v2 = result;
    v3 = v5;
  }

  v6 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

void *OUTLINED_FUNCTION_15_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_1AC465B44(v10, (v11 + 1));
  *v11 = a10;
  return result;
}

void OUTLINED_FUNCTION_15_14(uint64_t a1, unint64_t a2)
{

  sub_1AC5035B4(a1, a2, sub_1AC500DF8);
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t result)
{
  *(v2 - 72) = result;
  *(v2 - 96) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return sub_1AC4578F4(v0, v1);
}

uint64_t sub_1AC45993C()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2 || *(v1 + v0) != 34 || (result = sub_1AC459B18(), !v4))
  {
    sub_1AC477660();
    v5 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_17_10(v5, v6);
  }

  return result;
}

unint64_t sub_1AC4599C0(unsigned __int8 **a1)
{
  v3 = *(v1 + 40);
  sub_1AC51F468();
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    while (v4 != v5)
    {
      v6 = *v4++;
      sub_1AC51F488();
    }
  }

  v7 = sub_1AC51F4C8();

  return sub_1AC459A4C(a1, v7);
}

unint64_t sub_1AC459A4C(unsigned __int8 **a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    do
    {
      v9 = (*(v2 + 48) + 40 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 - v10;
      if (!v10)
      {
        v12 = 0;
      }

      if (v8)
      {
        if (v12 != v7 - v8)
        {
          goto LABEL_22;
        }
      }

      else if (v12)
      {
        goto LABEL_22;
      }

      v13 = v8;
      while (1)
      {
        v14 = !v13 || v13 == v7;
        v15 = v14;
        if (!v10 || v10 == v11)
        {
          break;
        }

        if (!v15)
        {
          v17 = *v10++;
          v16 = v17;
          v18 = *v13++;
          if (v16 == v18)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      if (v15)
      {
        return result;
      }

LABEL_22:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AC459B18()
{
  v1 = *v0;
  v2 = v0[1];
  result = sub_1AC458F9C(v0[2], *v0, v2);
  v4 = 0;
  v0[2] = result;
  v5 = v2 - v1;
  if (v1)
  {
    v6 = v2 - v1;
  }

  else
  {
    v6 = 0;
  }

  v7 = result;
  while (1)
  {
    if (v1)
    {
      if (v7 == v5)
      {
        goto LABEL_27;
      }
    }

    else if (!v7)
    {
      v5 = 0;
LABEL_27:
      v11 = 0;
      v0[2] = v5;
      return v11;
    }

    v8 = *(v1 + v7);
    if (v8 == 92)
    {
      break;
    }

    if (v8 == 34)
    {
      goto LABEL_22;
    }

    if (!v1)
    {
      v9 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v9 = v2 - v1;
LABEL_19:
    if ((v7 & 0x8000000000000000) == 0 && v7++ < v9)
    {
      continue;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v0[2] = v7;
    if (!v1)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v7, result))
    {
      goto LABEL_30;
    }

    v11 = sub_1AC456544(v1 + result, v7 - result);
    v13 = v12;
    v0[2] = sub_1AC458F9C(v7, v1, v2);
    if (((v13 != 0) & v4) == 1)
    {
      v11 = sub_1AC462044(v11, v13);
    }

    return v11;
  }

  if ((v7 & 0x8000000000000000) == 0 && v7 < v6)
  {
    if (!v1)
    {
      goto LABEL_21;
    }

    if (++v7 == v5)
    {
      goto LABEL_27;
    }

    v4 = 1;
    goto LABEL_18;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC459C7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 58);
  v5 = *(v1 + 24);
  v6 = *(v5 + 16);
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = sub_1AC45AA38(a1);
      if (v8)
      {
        v9 = *(v5 + 56) + 80 * v7;
        v10 = *(v9 + 40);
        v11 = *(v9 + 48);
        v13 = *(v9 + 56);
        v12 = *(v9 + 64);
        LOBYTE(v14) = *(v9 + 72);
        LOBYTE(v15) = *(v9 + 73);
LABEL_17:
        v43 = OUTLINED_FUNCTION_44_4();
        sub_1AC45AC88(v43, v44, v45, v46);
        v55[0] = v10;
        v55[1] = v11;
        v55[2] = v13;
        v55[3] = v12;
        v56 = v14;
        v57 = v15;
        sub_1AC45AC08(v55);
        v47 = OUTLINED_FUNCTION_44_4();
        return sub_1AC45AE94(v47, v48, v49, v50);
      }
    }
  }

  else if (v6)
  {
    v16 = sub_1AC45AA38(a1);
    if (v17)
    {
      v18 = *(v5 + 56) + 80 * v16;
      v14 = *(v18 + 32);
      if (v14 >> 8 <= 0xFE)
      {
        v13 = *(v18 + 16);
        v12 = *(v18 + 24);
        v15 = (v14 >> 8) & 1;
        v10 = *v18;
        v11 = *(v18 + 8);
        goto LABEL_17;
      }
    }
  }

  v19 = *(v2 + 48);
  if (v19)
  {
    if (*(v19 + 16) && (v20 = sub_1AC45AA38(a1), (v21 & 1) != 0))
    {
      sub_1AC45A5F0(*(v19 + 56) + 40 * v20, &v52);
      if (*(&v53 + 1))
      {
        v22 = *(&v53 + 1);
        v23 = v54;
        v24 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        v25 = *(v22 - 8);
        v26 = *(v25 + 64);
        MEMORY[0x1EEE9AC00](v24);
        OUTLINED_FUNCTION_12_8();
        v29 = v28 - v27;
        (*(v25 + 16))(v28 - v27);
        sub_1AC45A718(&v52, &qword_1EB558200, &unk_1AC520780);
        v30 = *(v23 + 24);
        v31 = OUTLINED_FUNCTION_19();
        v32(v31);
        (*(v25 + 8))(v29, v22);
        v33 = v51[4];
        __swift_project_boxed_opaque_existential_1(v51, v51[3]);
        v34 = *(v33 + 16);
        v35 = OUTLINED_FUNCTION_19();
        v37 = v36(v35);
        v39 = v38;
        __swift_destroy_boxed_opaque_existential_1(v51);
        sub_1AC4E3028(v37, v39);
      }
    }

    else
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
    }

    sub_1AC45A718(&v52, &qword_1EB558200, &unk_1AC520780);
  }

  sub_1AC4777D8();
  v41 = swift_allocError();
  return OUTLINED_FUNCTION_21_6(v41, v42);
}

uint64_t sub_1AC459F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_1AC459C7C(a3);
  if (!v4)
  {
    return a4(a1, a2);
  }

  return result;
}

uint64_t sub_1AC459FB0(uint64_t result)
{
  v2 = v1[2];
  v3 = *(result + 16);
  v4 = *v1;
  v5 = v2;
  if (v3)
  {
    v6 = v1[1];
    v7 = v6 - v4;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = -v3;
    v9 = v2 + v4 - v6;
    v10 = 32;
    while (1)
    {
      v11 = v2 + v10 == 32;
      if (v4)
      {
        v11 = v9 + v10 == 32;
      }

      if (v11 || *(v2 + v4 + v10 - 32) != *(result + v10))
      {
        goto LABEL_19;
      }

      if (v2 < 0 || v2 + v10 - 32 >= v7)
      {
        __break(1u);
        return result;
      }

      v1[2] = v2 + v10++ - 31;
      if (v8 + v10 == 32)
      {
        v5 = v2 + v10 - 32;
        break;
      }
    }
  }

  if (v4)
  {
    if (v5 == v1[1] - v4)
    {
      return 1;
    }
  }

  else if (!v5)
  {
    return 1;
  }

  if ((*(v4 + v5) & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    return 1;
  }

LABEL_19:
  result = 0;
  v1[2] = v2;
  return result;
}

void Message.jsonUTF8Bytes<A>(options:)()
{
  OUTLINED_FUNCTION_60();
  v34 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_5();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  (*(v17 + 16))(v11 - v10, v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(&v36, &v39);
    v18 = *(&v40 + 1);
    v19 = *v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    LOBYTE(v36) = v13;
    BYTE1(v36) = v14;
    BYTE2(v36) = v15;
    BYTE3(v36) = v16;
    v20 = (*(v19 + 8))(&v36, v18, v19);
    if (!v1)
    {
      *&v36 = v20;
      *(&v36 + 1) = v21;
      v22 = *(v34 + 16);
      v23 = sub_1AC4EEA20();
      v22(&v36, MEMORY[0x1E69E6108], v23);
    }

    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    *v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1AC4575D8(&v36, &qword_1EB557FC8, &unk_1AC528980);
    if (dynamic_cast_existential_1_conditional(v6))
    {
      (*(v24 + 8))(&v36);
      *&v39 = MEMORY[0x1E69E7CC0];
      WORD4(v39) = 256;
      v40 = v36;
      *v41 = v37;
      *&v41[16] = 0;
      v41[24] = v13;
      v41[25] = v14;
      v41[26] = v15;
      v41[27] = v16;
      sub_1AC45A44C(v0, &v39, v6, v4);
      (*(v4 + 72))(&v39, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, v6, v4);
      if (!v1)
      {
        v25 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v25 + 16);
          sub_1AC45A78C();
          v25 = v32;
        }

        v26 = *(v25 + 16);
        if (v26 >= *(v25 + 24) >> 1)
        {
          sub_1AC45A78C();
          v25 = v33;
        }

        *(v25 + 16) = v26 + 1;
        *(v25 + v26 + 32) = 125;
        *&v39 = v25;
        WORD4(v39) = 44;
        v35 = v25;
        v27 = *(v34 + 16);

        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
        v29 = sub_1AC45A8C0();
        v27(&v35, v28, v29);
      }

      v36 = v39;
      v37 = v40;
      *v38 = *v41;
      *&v38[12] = *&v41[12];
      sub_1AC45A95C(&v36);
    }

    else
    {
      sub_1AC4777D8();
      swift_allocError();
      *v30 = 4;
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC45A44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1(v5);
  (*(v6 + 16))();
  sub_1AC45A5F0(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (OUTLINED_FUNCTION_33_4())
  {
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v7 = OUTLINED_FUNCTION_24_6();
    v8(v7);
    v9 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1AC45A718(&v16, &qword_1EB5597A0, &qword_1AC528E18);
    v9 = 0;
  }

  v10 = v4[6];

  v4[6] = v9;
  sub_1AC45A774();
  v11 = *(*v4 + 16);
  sub_1AC45A85C(v11);
  v12 = *v4;
  *(v12 + 16) = v11 + 1;
  *(v12 + v11 + 32) = 123;
  *v4 = v12;
  *(v4 + 4) = 256;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1AC45A5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_1(v3);
  (*v4)(a2);
  return a2;
}

void OUTLINED_FUNCTION_33_1(_BYTE *a1@<X8>)
{
  if (v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_1AC51ED58();
}

void OUTLINED_FUNCTION_33_6()
{
  v4 = *v3;
  *(v4 + 16) = v2 + 1;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *v3 = v4;
}

uint64_t sub_1AC45A718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1AC45A78C()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5582A0, &qword_1AC520A58);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1AC45A8C0()
{
  result = qword_1ED6E4338;
  if (!qword_1ED6E4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4338);
  }

  return result;
}

uint64_t sub_1AC45A924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC51F138();
  *a1 = result;
  return result;
}

uint64_t sub_1AC45A9B0()
{
  v1 = *(v0 + 88);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 88) = v3;
  if (*(v0 + 32) < v3)
  {
LABEL_5:
    result = sub_1AC51F388();
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC45AA38(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1AC51F458();

  return sub_1AC45AB48(a1, v4);
}

void OUTLINED_FUNCTION_44_5()
{

  sub_1AC50AB78(0x3Au);
}

uint64_t sub_1AC45AB1C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1AC5B4D30](v1, -1, -1);
  }

  return v0;
}

unint64_t sub_1AC45AB48(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1AC45ABA8(uint64_t a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45AC98(*a1, *(a1 + 8));
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf8_NameMapVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AC45AC08(uint64_t a1)
{
  if ((*(v1 + 9) & 1) == 0)
  {
    v3 = *(v1 + 8);
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    *(v4 + 32) = v3;
    *v1 = v5;
  }

  sub_1AC45ABA8(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v6);
  *(v1 + 8) = 44;
}

uint64_t sub_1AC45AC74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC4513F8(a1, a2);
  }

  return a1;
}

uint64_t sub_1AC45AC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1AC45AC98(unsigned __int8 *a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  if (__OFADD__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = v8;
  sub_1AC45AE04(v9 + v7, 1);
  v4 = *v2;
  v10 = *(*v2 + 16);
  v11 = *(*v2 + 24) >> 1;
  v12 = v11 - v10;
  if (!v5 || !v3 || (v3 > v5 ? (v13 = v11 == v10) : (v13 = 1), v13))
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v6 >= v12)
  {
    v6 = v11 - v10;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    memmove((v4 + v10 + 32), v5, v6);
    v5 += v6;
LABEL_13:
    if (v6 >= v7)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v14 = *(v4 + 16);
      v15 = __OFADD__(v14, v6);
      v16 = v14 + v6;
      if (!v15)
      {
        *(v4 + 16) = v16;
LABEL_17:
        if (v6 != v12 || v5 == 0 || v5 == v3)
        {
LABEL_25:
          *v2 = v4;
          return;
        }

LABEL_33:
        v19 = *(v4 + 16);
        v22 = *v5;
        v21 = v5 + 1;
        v20 = v22;
LABEL_34:
        v23 = *(v4 + 24) >> 1;
        if (v23 < v19 + 1)
        {
          v25 = v20;
          sub_1AC45A78C();
          v20 = v25;
          v4 = v26;
          v23 = *(v26 + 24) >> 1;
        }

        while (1)
        {
          if (v19 >= v23)
          {
            *(v4 + 16) = v19;
            goto LABEL_34;
          }

          *(v4 + v19 + 32) = v20;
          if (v21 == v3)
          {
            break;
          }

          v24 = *v21++;
          v20 = v24;
          ++v19;
        }

        *(v4 + 16) = v19 + 1;
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1AC45AE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1AC45AE94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1AC45AEA4(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  v6 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v6);
  OUTLINED_FUNCTION_1();
  *(v7 + 32) = 34;
  *v2 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    v10 = 0;
    v59 = a1;
    v60 = v2;
    v61 = v9;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1AC51F2C8();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v63[0] = a1;
          v63[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v63 + v10);
          if (*(v63 + v10) < 0)
          {
            OUTLINED_FUNCTION_19_6();
            switch(v25)
            {
              case 1:
LABEL_44:
                v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
                v16 = 2;
                break;
              case 2:
LABEL_56:
                v12 = ((v12 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
                v16 = 3;
                break;
              case 3:
LABEL_57:
                v12 = ((v12 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
                v16 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1AC51F308();
          }

          v12 = *(v11 + v10);
          if (*(v11 + v10) < 0)
          {
            OUTLINED_FUNCTION_19_6();
            switch(v14)
            {
              case 1:
                goto LABEL_44;
              case 2:
                goto LABEL_56;
              case 3:
                goto LABEL_57;
              default:
                break;
            }
          }
        }

LABEL_14:
        v16 = 1;
      }

LABEL_15:
      switch(v12)
      {
        case 8u:
          v17 = "\\b";
          goto LABEL_40;
        case 9u:
          v17 = "\\t";
          goto LABEL_40;
        case 0xAu:
          v17 = "\\n";
          goto LABEL_40;
        case 0xBu:
          goto LABEL_20;
        case 0xCu:
          v17 = "\\f";
          goto LABEL_40;
        case 0xDu:
          v17 = "\\r";
          goto LABEL_40;
        default:
          if (v12 == 34)
          {
            v17 = "\\"";
            goto LABEL_40;
          }

          if (v12 == 92)
          {
            v17 = "\\\";
LABEL_40:
            sub_1AC45FD18(v17);
            goto LABEL_41;
          }

LABEL_20:
          if (v12 < 0x20 || v12 - 160 >= 0xFFFFFFDF)
          {
            sub_1AC45FD18("\\u00");
            if (qword_1EB557C18 != -1)
            {
              swift_once();
            }

            v26 = off_1EB557C20;
            if (*(off_1EB557C20 + 2) <= v12 >> 4)
            {
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              JUMPOUT(0x1AC45B4C8);
            }

            v62 = *(off_1EB557C20 + (v12 >> 4) + 32);
            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              v37 = *(v3 + 16);
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v38;
            }

            v27 = *(v3 + 16);
            v28 = v27 + 1;
            if (v27 >= *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_8_13();
              v3 = v39;
            }

            *(v3 + 16) = v28;
            *(v3 + v27 + 32) = v62;
            if (v26[2] <= (v12 & 0xF))
            {
              goto LABEL_84;
            }

            v18 = *(v26 + (v12 & 0xF) + 32);
            v29 = v27 + 2;
            if ((v27 + 2) > *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_10_10();
              v3 = v40;
            }

            a1 = v59;
            v2 = v60;
            v9 = v61;
            *(v3 + 16) = v29;
            v30 = v3 + v28;
            goto LABEL_80;
          }

          if (v12 <= 0x7E)
          {
            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              v41 = *(v3 + 16);
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v42;
            }

            v31 = *(v3 + 16);
            if (v31 >= *(v3 + 24) >> 1)
            {
              OUTLINED_FUNCTION_8_13();
              v3 = v43;
            }

            *(v3 + 16) = v31 + 1;
            *(v3 + v31 + 32) = v12;
          }

          else
          {
            v18 = v12 & 0x3F | 0x80;
            if (v12 > 0x7FF)
            {
              v58 = (v12 >> 6) & 0x3F | 0xFFFFFF80;
              if (v12 - 0x10000 >= 0xFFFF0800)
              {
                if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
                {
                  v49 = *(v3 + 16);
                  OUTLINED_FUNCTION_6_0();
                  sub_1AC45A78C();
                  v3 = v50;
                }

                v35 = *(v3 + 16);
                v20 = *(v3 + 24) >> 1;
                v36 = v35 + 1;
                if (v20 <= v35)
                {
                  OUTLINED_FUNCTION_8_13();
                  OUTLINED_FUNCTION_9_12(v51);
                }

                *(v3 + 16) = v36;
                *(v3 + v35 + 32) = (v12 >> 12) | 0xE0;
                v23 = v35 + 2;
                if (v20 < (v35 + 2))
                {
                  OUTLINED_FUNCTION_10_10();
                  OUTLINED_FUNCTION_9_12(v52);
                }

                *(v3 + 16) = v23;
                *(v3 + v36 + 32) = v58;
                v24 = v35 + 3;
              }

              else
              {
                if ((((v12 >> 18) + 240) & 0x100) != 0)
                {
                  goto LABEL_85;
                }

                if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
                {
                  v53 = *(v3 + 16);
                  OUTLINED_FUNCTION_6_0();
                  sub_1AC45A78C();
                  v3 = v54;
                }

                v19 = *(v3 + 16);
                v20 = *(v3 + 24) >> 1;
                v21 = v19 + 1;
                if (v20 <= v19)
                {
                  sub_1AC45A78C();
                  OUTLINED_FUNCTION_9_12(v55);
                }

                *(v3 + 16) = v21;
                *(v3 + v19 + 32) = (v12 >> 18) - 16;
                v22 = v19 + 2;
                if (v20 < (v19 + 2))
                {
                  sub_1AC45A78C();
                  OUTLINED_FUNCTION_9_12(v56);
                }

                *(v3 + 16) = v22;
                *(v3 + v21 + 32) = (v12 >> 12) & 0x3F | 0x80;
                v23 = v19 + 3;
                if (v20 < (v19 + 3))
                {
                  OUTLINED_FUNCTION_10_10();
                  OUTLINED_FUNCTION_9_12(v57);
                }

                *(v3 + 16) = v23;
                *(v3 + v22 + 32) = v58;
                v24 = v19 + 4;
              }

              if (v20 < v24)
              {
                OUTLINED_FUNCTION_8_13();
                v3 = v48;
              }

              v9 = v61;
              *(v3 + 16) = v24;
              v30 = v3 + v23;
LABEL_80:
              *(v30 + 32) = v18;
              goto LABEL_81;
            }

            if ((OUTLINED_FUNCTION_22_8() & 1) == 0)
            {
              v44 = *(v3 + 16);
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v3 = v45;
            }

            v32 = *(v3 + 16);
            v33 = *(v3 + 24) >> 1;
            v34 = v32 + 1;
            if (v33 <= v32)
            {
              OUTLINED_FUNCTION_8_13();
              OUTLINED_FUNCTION_9_12(v46);
            }

            *(v3 + 16) = v34;
            *(v3 + v32 + 32) = (v12 >> 6) | 0xC0;
            if (v33 < (v32 + 2))
            {
              OUTLINED_FUNCTION_10_10();
              v3 = v47;
            }

            *(v3 + 16) = v32 + 2;
            *(v3 + v34 + 32) = v12 & 0x3F | 0x80;
          }

LABEL_81:
          *v2 = v3;
LABEL_41:
          v10 += v16;
          if (v10 >= v9)
          {

            goto LABEL_82;
          }

          break;
      }
    }
  }

LABEL_82:
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 168);
  v5 = *(v0 - 328);
  v6 = *(v0 - 128);

  return sub_1AC460BE4();
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  v2 = *v0;
  result = *(v1 - 96);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_22_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __dst)
{

  return memcpy(&__dst, v24, 0x78uLL);
}

void OUTLINED_FUNCTION_22_11()
{
  sub_1AC4854E8(v1, v2, v3, v4);
  *v5 = v6;
  *(v5 + 8) = v0;
  *(v5 + 16) = 0x2000000000000000;
  *(v5 + 24) = 0;
}

void *OUTLINED_FUNCTION_22_12(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return sub_1AC51EE48();
}

void sub_1AC45B658(uint64_t *a1)
{
  if (*(v1 + 33) == 1)
  {
    v4 = sub_1AC456830();
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC45B6D4(BOOL *a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      *a1 = v4 != 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC45B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_1AC51F228();
  v33 = OUTLINED_FUNCTION_3_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = v65 - v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_26_2();
  v67 = v42;
  if (sub_1AC457638())
  {
    v66 = v31;
    if (dynamic_cast_existential_1_conditional(v29))
    {
      v43 = dynamic_cast_existential_1_unconditional(v29);
      v45 = v44;
      v46 = OUTLINED_FUNCTION_54_2(v43, v44);
      v65[1] = v65;
      OUTLINED_FUNCTION_3_0(v46);
      v65[0] = v47;
      v49 = *(v48 + 64);
      OUTLINED_FUNCTION_65();
      MEMORY[0x1EEE9AC00](v50);
      OUTLINED_FUNCTION_48_4();
      (v27)(v43, v45);
      if (v21)
      {
        OUTLINED_FUNCTION_40_3(&a16);
      }

      else
      {
        v62 = v65[0];
        OUTLINED_FUNCTION_19_5(v22);
        if (v58)
        {
          (*(v62 + 8))(v22, v46);
          OUTLINED_FUNCTION_40_3(&a16);
          v70 = 0;
          v68 = 0u;
          v69 = 0u;
        }

        else
        {
          *(&v69 + 1) = v43;
          v70 = v45;
          __swift_allocate_boxed_opaque_existential_1(&v68);
          OUTLINED_FUNCTION_13_7();
          (*(v63 + 32))();
          OUTLINED_FUNCTION_40_3(&a16);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
        OUTLINED_FUNCTION_45_2();
        v64 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v43, v64 ^ 1u, 1, v29);
        (*(v35 + 40))(v66, v43, v32);
      }
    }

    else
    {
      (*(v35 + 8))(v66, v32);
      v59 = OUTLINED_FUNCTION_7_11();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v29);
    }

LABEL_16:
    OUTLINED_FUNCTION_61();
    return;
  }

  v51 = *(v35 + 16);
  v52 = OUTLINED_FUNCTION_51();
  v53(v52);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v29);
  (*(v35 + 8))(v41, v32);
  if (EnumTagSinglePayload == 1)
  {
    (*(v27 + 16))(v29, v27);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v29);
    (*(v35 + 40))(v31, v22, v32);
  }

  sub_1AC45BD44(v25, &v68);
  v72 = v27;
  v73 = 0;
  v74 = 0;
  v75 = 0u;
  v76 = 0u;
  v71 = v29;
  OUTLINED_FUNCTION_42_0(v31, 1, v29);
  if (!v58)
  {
    sub_1AC45731C();
    if (!v21)
    {
      sub_1AC45C408(&v68, v25);
    }

    sub_1AC45AA7C(&v68);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 312))();
}

{
  return (*(a3 + 320))();
}

uint64_t OUTLINED_FUNCTION_39(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __s2, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38)
{
  __s2 = a23;
  a26 = a7;
  a27 = a6;
  a28 = a5;
  a29 = v38;
  a30 = a4;
  a31 = a2;
  a32 = a1;
  a33 = v44;
  a34 = v43;
  a35 = v42;
  a36 = v41;
  a37 = v40;
  a38 = v39;

  return memcmp((v45 - 128), &__s2, a3);
}

double OUTLINED_FUNCTION_39_0()
{
  *(v0 + 264) = 1;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 328) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_39_5()
{
  *(v0 + 16) = v3;
  *(v0 + v4 + 32) = v2;
  *v1 = v0;
}

void OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  sub_1AC456860(a1, sub_1AC456830);
}

uint64_t OUTLINED_FUNCTION_51_3()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return v2;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_1AC51EE28();
}

void sub_1AC45BEC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 == a4)
  {
    goto LABEL_2;
  }

  if (*(a1 + v6) == 45)
  {
    v12 = sub_1AC458F9C(v6, a1, a2);
    *a3 = v12;
    if (v12 == a4)
    {
LABEL_2:
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC51FB60;
LABEL_3:
      *v7 = v8;
      swift_willThrow();
      return;
    }

    if (*(a1 + v12) - 58 <= 0xFFFFFFF5)
    {
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC528340;
      goto LABEL_3;
    }

    sub_1AC45C184(a1, a2, a3, a4);
    if (!v4 && (v16 & 1) == 0 && v15 < 0 && v15 != 0x8000000000000000)
    {
LABEL_19:
      sub_1AC477660();
      swift_allocError();
      v8 = xmmword_1AC5284F0;
      goto LABEL_3;
    }
  }

  else
  {
    sub_1AC45C184(a1, a2, a3, a4);
    if (!v4 && (v14 & 1) == 0 && v13 < 0)
    {
      goto LABEL_19;
    }
  }
}

double OUTLINED_FUNCTION_20_6()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_20_13(uint64_t a1, unint64_t a2)
{

  sub_1AC502478(a2);
}

void sub_1AC45C184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 == a4)
  {
    sub_1AC477660();
    swift_allocError();
    v7 = xmmword_1AC51FB60;
LABEL_3:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v12 = *(a1 + v5);
  if (v12 != 48)
  {
    if ((v12 - 58) >= 0xFFFFFFF7)
    {
      v15 = 0;
      v16 = a2 - a1;
      if (!a1)
      {
        v16 = 0;
      }

      v17 = *a3;
      while (a4 != v17)
      {
        v18 = *(a1 + v17);
        if ((v18 - 58) < 0xF6u)
        {
          if (v18 != 46 && v18 != 101 && v18 != 69)
          {
            return;
          }

          goto LABEL_33;
        }

        if (v15 > 0x1999999999999999 || (v19 = (v18 - 48), __CFADD__(v19, 10 * v15)))
        {
          sub_1AC477660();
          swift_allocError();
          v7 = xmmword_1AC5284F0;
          goto LABEL_3;
        }

        if (v5 < 0 || v17 >= v16)
        {
          __break(1u);
          return;
        }

        v20 = 10 * v15;
        *a3 = ++v17;
        v15 = 10 * v15 + v19;
        if (__CFADD__(v20, v19))
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      return;
    }

    if (v12 == 92)
    {
      return;
    }

LABEL_42:
    sub_1AC477660();
    swift_allocError();
    v7 = xmmword_1AC528340;
    goto LABEL_3;
  }

  v13 = sub_1AC458F9C(*a3, a1, a2);
  *a3 = v13;
  if (v13 != a4)
  {
    v14 = *(a1 + v13);
    if ((v14 - 58) >= 0xFFFFFFF6)
    {
LABEL_28:
      sub_1AC477660();
      swift_allocError();
      v7 = xmmword_1AC528EB0;
      goto LABEL_3;
    }

    if (v14 == 46 || v14 == 101 || v14 == 69)
    {
LABEL_33:
      *a3 = v5;
      sub_1AC457E18(a1, a2, a3, a4);
      if (v4)
      {
        return;
      }

      if ((v22 & 1) == 0)
      {
        v23 = trunc(v21);
        v24 = v21 > -1.0 && v21 < 1.84467441e19;
        if (v24 && v23 == v21)
        {
          return;
        }
      }

      goto LABEL_42;
    }
  }
}

uint64_t sub_1AC45C464()
{
  result = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((result & 1) != 0 || (result = sub_1AC45CC3C(), !v0))
  {
    *v1 = v3;
  }

  return result;
}

void sub_1AC45C4C8()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v120 = v7;
  v129 = *(v8 + 8);
  v127 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v118 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v14);
  v123 = v6;
  v124 = &v115 - v15;
  v128 = *(v4 + 8);
  v16 = swift_getAssociatedTypeWitness();
  v145 = sub_1AC51F228();
  v17 = OUTLINED_FUNCTION_3_0(v145);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_86_0(v23, v24, v25, v26, v27, v28, v29, v30, v115);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v115 - v32;
  OUTLINED_FUNCTION_88_0();
  v34 = sub_1AC51F228();
  v35 = OUTLINED_FUNCTION_3_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_80_0();
  if (*(v2 + 33) != 2)
  {
    goto LABEL_10;
  }

  v121 = v19;
  v122 = v42;
  v130 = v44;
  v126 = v43;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, AssociatedTypeWitness);
  v125 = v33;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v16);
  v51 = sub_1AC453530();
  if (v1)
  {
LABEL_9:
    v57 = OUTLINED_FUNCTION_41_1();
    v58(v57, v145);
    v59 = OUTLINED_FUNCTION_54_0();
    v60(v59);
LABEL_10:
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_61();
    return;
  }

  v52 = v51;
  if (v51 >= 0x7FFFFFFF)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v55, v56);
    goto LABEL_9;
  }

  v53 = *(v2 + 8);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v87 = v53 >= v51;
    v54 = v53 - v51;
    if (v87)
    {
      v61 = *v2;
      *v2 += v51;
      *(v2 + 8) = v54;
      sub_1AC4530E8(v2, v132);
      v117 = v133[7];
      v116 = v134;
      sub_1AC452928(v133, v131, &qword_1EB557F98, &qword_1AC520460);
      OUTLINED_FUNCTION_7_2();
      *(v62 + 128) = xmmword_1AC5205D0;
      *(v62 + 144) = xmmword_1AC5205D0;
      v136 = v61;
      v137 = v52;
      v138 = v61;
      v139 = 0;
      sub_1AC454060(v131, v63 + 48, &qword_1EB557F98, &qword_1AC520460);
      v142 = v117;
      v143 = v116;
      v117 = v135;
      v64 = sub_1AC45466C(v132);
      v144 = v117;
      v138 = v61;
      v139 = 0;
      if (v52)
      {
        v69 = v61;
        v117 = v129 + 32;
        do
        {
          v70 = v69 + 1;
          v71 = *v69;
          v72 = v52 - 1;
          if ((v71 & 0x8000000000000000) != 0)
          {
            v74 = 7;
            v73 = v130;
            while (v72 >= 1 && v74 <= 0x3F)
            {
              OUTLINED_FUNCTION_31_0(v70);
              if ((v75 & 0x80) == 0)
              {
                OUTLINED_FUNCTION_79_0(v70);
                if (v87)
                {
                  break;
                }

                goto LABEL_20;
              }
            }

LABEL_50:
            sub_1AC48D31C();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_36_1();
LABEL_51:
            OUTLINED_FUNCTION_59(v111, v112);
            v113 = OUTLINED_FUNCTION_41_1();
            v114(v113, v145);
            (*(v73 + 8))(v126, v122);
            goto LABEL_52;
          }

          v136 = (v69 + 1);
          v137 = v52 - 1;
          v73 = v130;
LABEL_20:
          v76 = v71 & 7;
          if (v71 < 8 || v76 > 5)
          {
            goto LABEL_50;
          }

          v78 = v71 >> 3;
          if (v76 == 4)
          {
            OUTLINED_FUNCTION_71();
            goto LABEL_50;
          }

          v140 = v76;
          v141 = v78;
          if (v78 == 2)
          {
            OUTLINED_FUNCTION_101_0(v64, v65, v66, v67, v68, v128);
            OUTLINED_FUNCTION_97_0();
            v64 = v80();
          }

          else if (v78 == 1)
          {
            OUTLINED_FUNCTION_101_0(v64, v65, v66, v67, v68, v129);
            OUTLINED_FUNCTION_97_0();
            v64 = v79();
          }

          else
          {
            v81 = v70 - v69;
            v82 = __OFADD__(v72, v81);
            v83 = v72 + v81;
            if (v82)
            {
              goto LABEL_55;
            }

            v136 = v69;
            v137 = v83;
            if (v83 < 1)
            {
              sub_1AC48D31C();
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_53_1();
              goto LABEL_51;
            }

            sub_1AC453530();
            OUTLINED_FUNCTION_99_0();
            v73 = v130;
            if (!v85 && v87)
            {
              goto LABEL_50;
            }

            v86 = v84 & 7;
            v87 = v84 < 8 || v86 >= 6;
            if (v87)
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_46_0(v84, v86);
          }

          v69 = v136;
          v52 = v137;
          v138 = v136;
          v139 = 0;
        }

        while (v137 > 0);
        if (!v137)
        {
          goto LABEL_40;
        }

        sub_1AC48D31C();
        v88 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_94_0(v88, v89);
        v90 = OUTLINED_FUNCTION_41_1();
        v91(v90, v145);
        v92 = OUTLINED_FUNCTION_54_0();
        v93(v92);
LABEL_52:
        sub_1AC45466C(&v136);
      }

      else
      {
LABEL_40:
        (*(v130 + 16))(v40, v126, v122);
        v94 = OUTLINED_FUNCTION_92_0();
        v96 = OUTLINED_FUNCTION_42_0(v94, v95, AssociatedTypeWitness);
        if (v85)
        {
          OUTLINED_FUNCTION_91_0(v96, v129);
          v97();
          v98 = v130;
          v99 = OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_42_0(v99, v100, AssociatedTypeWitness);
          if (!v85)
          {
            (*(v98 + 8))(v40, v122);
          }
        }

        else
        {
          (*(v118 + 32))(v124, v40, AssociatedTypeWitness);
        }

        (*(v121 + 16))(&protocol requirements base descriptor for FieldType, v125, v145);
        v101 = OUTLINED_FUNCTION_24_2(&protocol requirements base descriptor for FieldType);
        if (v85)
        {
          OUTLINED_FUNCTION_91_0(v101, v128);
          v102();
          OUTLINED_FUNCTION_24_2(&protocol requirements base descriptor for FieldType);
          if (!v85)
          {
            v103 = *(v121 + 8);
            v104 = OUTLINED_FUNCTION_93_0();
            v105(v104);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_1(v16);
          (*(v106 + 32))(v119, &protocol requirements base descriptor for FieldType, v16);
        }

        OUTLINED_FUNCTION_64_0();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_88_0();
        sub_1AC51ED88();
        OUTLINED_FUNCTION_104_0();
        v107 = OUTLINED_FUNCTION_41_1();
        v108(v107, v145);
        v109 = OUTLINED_FUNCTION_54_0();
        v110(v109);
        sub_1AC45466C(&v136);
        *(v2 + 32) = 1;
      }

      goto LABEL_10;
    }

    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_53_1();
    goto LABEL_8;
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1AC45CC3C()
{
  v3 = OUTLINED_FUNCTION_19_8();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_8();
  sub_1AC458F28();
  v9 = *v0;
  if (*v0)
  {
    v10 = *(v2 + 8) - v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v2 + 16);
  if (v11 == v10)
  {
LABEL_5:
    sub_1AC477660();
    v12 = OUTLINED_FUNCTION_11();
    v14 = xmmword_1AC51FB60;
    return OUTLINED_FUNCTION_36(v14, v12, v13);
  }

  if (*(v9 + v11) != 34)
  {
    OUTLINED_FUNCTION_16_8();
    v23 = *(v2 + 8);
    v24 = OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_24_7(v24, v25, v26, v27);
    if (!v1)
    {
      OUTLINED_FUNCTION_20();
      result = sub_1AC457DC4(v43);
      if ((v2 & 1) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    return sub_1AC457DC4(v43);
  }

  *(v2 + 16) = OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_16_8();
  v16 = OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_24_7(v16, v6, v17, v18);
  if (v1)
  {
    return sub_1AC457DC4(v43);
  }

  v20 = v19;
  sub_1AC457DC4(v43);
  if ((v20 & 1) == 0)
  {
    v28 = *(v2 + 16);
    v29 = *v2;
    if (*v2)
    {
      v29 = *(v2 + 8) - v29;
    }

    if (v28 == v29)
    {
      goto LABEL_5;
    }

    if (*(v9 + v28) == 34)
    {
      result = sub_1AC458F9C(v28, v9, v6);
      *(v2 + 16) = result;
      return result;
    }

    goto LABEL_19;
  }

  *(v2 + 16) = v11;
  OUTLINED_FUNCTION_17_0();
  sub_1AC45993C();
  OUTLINED_FUNCTION_12_13();
  v22 = v22 && v21 == 0xE300000000000000;
  if (v22 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
  }

  v30 = v9 == 6712905 && v20 == 0xE300000000000000;
  if (v30 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
  }

  v31 = v9 == 1718503725 && v20 == 0xE400000000000000;
  if (v31 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
  }

  OUTLINED_FUNCTION_13_10();
  v32 = v22 && v20 == 0xE800000000000000;
  if (v32 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
  }

  OUTLINED_FUNCTION_5_16();
  v34 = v22 && v20 == v33;
  if (v34 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {
  }

  sub_1AC51EE18();
  OUTLINED_FUNCTION_23_8();
  v35 = OUTLINED_FUNCTION_9_14();
  result = v36(v35);
  if (v9 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v37 = OUTLINED_FUNCTION_12_0();
  sub_1AC4E58D8(v37, v38, v2, v39, v40);
  OUTLINED_FUNCTION_20();
  v41 = OUTLINED_FUNCTION_12_0();
  result = sub_1AC45AC74(v41, v42);
  if (v2)
  {
LABEL_19:
    sub_1AC477660();
    v12 = OUTLINED_FUNCTION_11();
    v14 = xmmword_1AC528340;
    return OUTLINED_FUNCTION_36(v14, v12, v13);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 440))();
}

{
  return (*(a7 + 448))();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  return sub_1AC51F228();
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  v2 = *(v0 - 120);
  v1 = *(v0 - 112);
  result = *(v0 - 72);
  v4 = *(v0 - 88);
  return result;
}

void OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1AC457E18(a1, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return sub_1AC51F338();
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_24_11()
{
  v3 = *(v1 + 8 * v0 + 32);

  return sub_1AC45AA38(v3);
}

__n128 OUTLINED_FUNCTION_65_1()
{
  v1 = v0[8].n128_u64[0];
  result = *v0;
  v3 = v0[1].n128_u64[0];
  v4 = v0[1].n128_u32[2];
  return result;
}

void sub_1AC45D17C(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 24);
  v4 = a2 - a1;
  if (a2 - a1 < 1 || v4 >= v3)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 16) + v3;
  sub_1AC51F258();
  v8 = *(v2 + 16);
  v8[v4] = 0;
  v9[0] = v8;
  if (v8)
  {
    strtod(v8, v9);
    if (*(v2 + 16))
    {
LABEL_6:
      v6 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_1AC485CDC(&a27, &a18);
}

uint64_t sub_1AC45D2B4(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v4 = a2;
  }

  else
  {
    if (*(v3 + 120) == 1)
    {
      result = sub_1AC4E5D54();
    }

    else
    {
      result = sub_1AC45D3B4();
    }

    if (!v2)
    {
      *v4 = result & 1;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_88_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char __src)
{

  return memcpy(a1, &__src, 0x48uLL);
}

uint64_t sub_1AC45D3B4()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + v0);
  if (v3 == 116)
  {
    if (sub_1AC459FB0(&unk_1F2127708))
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_11:
    sub_1AC477660();
    v5 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_17_10(v5, v6);
    return v4 & 1;
  }

  if (v3 != 102 || (sub_1AC459FB0(&unk_1F21276E0) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t static ProtobufString.decodeSingular<A>(value:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 344);
  OUTLINED_FUNCTION_1_11();
  return v5();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1AC485CDC(v9 - 168, va);
}

void *OUTLINED_FUNCTION_78_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __src)
{

  return memcpy(&a9, &__src, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v9 - 24) = a9;
  *(v9 - 8) = v10;
  *(v9 + 4) = v12;
  *v9 = v11;
  return result;
}

void *OUTLINED_FUNCTION_63(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return sub_1AC51F228();
}

uint64_t OUTLINED_FUNCTION_103_2()
{
  v2 = *v0;
  v3 = v0[1];
}

void sub_1AC45D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v28 = v27;
  v163 = v29;
  v167 = *(v30 + 8);
  v165 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v159 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v36);
  v162 = v151 - v37;
  v171 = *(v26 + 8);
  v169 = v28;
  v38 = swift_getAssociatedTypeWitness();
  v39 = OUTLINED_FUNCTION_3_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  v161 = v44 - v45;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_26_2();
  v166 = v47;
  OUTLINED_FUNCTION_38_3();
  v168 = sub_1AC51F228();
  v48 = OUTLINED_FUNCTION_3_0(v168);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6();
  v160 = v53 - v54;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v55);
  v164 = v151 - v56;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_26_2();
  v172 = v58;
  OUTLINED_FUNCTION_38_3();
  v170 = sub_1AC51F228();
  v59 = OUTLINED_FUNCTION_3_0(v170);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6();
  v66 = v64 - v65;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_26_2();
  v173 = v68;
  if ((sub_1AC457638() & 1) != 0 || (OUTLINED_FUNCTION_32_4(), sub_1AC458E74(v69), v21))
  {
LABEL_32:
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_61();
    return;
  }

  OUTLINED_FUNCTION_32_4();
  sub_1AC458FC0();
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
    goto LABEL_32;
  }

  v157 = v167 + 32;
  v158 = v171 + 32;
  v155 = v41 + 32;
  v156 = (v61 + 16);
  v154 = (v50 + 16);
  v151[3] = v159 + 4;
  v151[2] = v41 + 16;
  v151[1] = v159 + 2;
  v151[0] = v159 + 1;
  v159 = (v50 + 8);
  v70 = (v61 + 8);
  v152 = v70;
  v153 = v41 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v71 = sub_1AC45DF14();
    v73 = v166;
    v74 = v71 == 34 && v72 == 0xE100000000000000;
    if (v74)
    {
    }

    else
    {
      v75 = OUTLINED_FUNCTION_35_3();

      if ((v75 & 1) == 0)
      {
        sub_1AC477660();
        v144 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v144, v145);
        goto LABEL_32;
      }
    }

    *(v24 + 120) = 1;
    v76 = OUTLINED_FUNCTION_7_11();
    v79 = __swift_storeEnumTagSinglePayload(v76, v77, v78, v38);
    OUTLINED_FUNCTION_42_2(v79, v80, v81, v82, v83, v171);
    OUTLINED_FUNCTION_49_2();
    v88(v84, v85, v86, v87);
    *(v24 + 120) = 0;
    sub_1AC458F28();
    v89 = sub_1AC45E184();
    v90 = v170;
    if (!v89)
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v131 = xmmword_1AC51FB60;
LABEL_24:
      swift_willThrow();
LABEL_31:
      (*v70)(v173, v90);
      goto LABEL_32;
    }

    v91 = OUTLINED_FUNCTION_8_12();
    if (v93 != 58)
    {
      sub_1AC477660();
      v132 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v132, v133);
      goto LABEL_24;
    }

    *(v24 + 16) = sub_1AC458F9C(v91, v92, *(v24 + 8));
    v94 = OUTLINED_FUNCTION_7_11();
    v97 = __swift_storeEnumTagSinglePayload(v94, v95, v96, AssociatedTypeWitness);
    OUTLINED_FUNCTION_42_2(v97, v98, v99, v100, v101, v167);
    OUTLINED_FUNCTION_49_2();
    v106(v102, v103, v104, v105);
    (*v156)(v66, v173, v90);
    OUTLINED_FUNCTION_42_0(v66, 1, v38);
    v107 = v168;
    if (v74)
    {
      (*v70)(v66, v90);
      v134 = v159;
LABEL_27:
      sub_1AC477660();
      v137 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v137, v138);
      (*v134)(v172, v107);
      goto LABEL_31;
    }

    v108 = OUTLINED_FUNCTION_26_5();
    v109(v108, v66, v38);
    v110 = v164;
    (*v154)(v164, v172, v107);
    OUTLINED_FUNCTION_42_0(v110, 1, AssociatedTypeWitness);
    if (v74)
    {
      v135 = OUTLINED_FUNCTION_26_5();
      v136(v135, v38);
      v134 = v159;
      (*v159)(v110, v107);
      v90 = v170;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_14_8(&a18);
    v111 = v162;
    v112(v162, v110, AssociatedTypeWitness);
    OUTLINED_FUNCTION_14_8(&a17);
    v113(v161, v73, v38);
    OUTLINED_FUNCTION_14_8(&a16);
    v114(v160, v111, AssociatedTypeWitness);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    OUTLINED_FUNCTION_14_8(&a15);
    v118(v111, AssociatedTypeWitness);
    v119 = OUTLINED_FUNCTION_26_5();
    v120(v119, v38);
    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v121 = OUTLINED_FUNCTION_8_12();
      if (v123 == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    v124 = sub_1AC45E184();
    v70 = v152;
    v90 = v170;
    if (!v124)
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v139 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      v142 = OUTLINED_FUNCTION_22_7();
      v143(v142);
      goto LABEL_31;
    }

    v125 = OUTLINED_FUNCTION_8_12();
    if (v127 != 44)
    {
      sub_1AC477660();
      v140 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v140, v141);
      goto LABEL_30;
    }

    v128 = sub_1AC458F9C(v125, v126, *(v24 + 8));
    v129 = OUTLINED_FUNCTION_22_7();
    v130(v129);
    (*v70)(v173, v90);
    *(v24 + 16) = v128;
  }

  *(v24 + 16) = sub_1AC458F9C(v121, v122, *(v24 + 8));
  v146 = *(v24 + 88);
  v147 = __OFADD__(v146, 1);
  v148 = v146 + 1;
  v149 = v152;
  v150 = v170;
  if (v147)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 88) = v148;
    if (*(v24 + 32) >= v148)
    {
      (*v159)(v172, v168);
      (*v149)(v173, v150);
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return sub_1AC51F048();
}

uint64_t static ProtobufInt32.decodeSingular<A>(value:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  OUTLINED_FUNCTION_1_11();
  return v5();
}

uint64_t sub_1AC45DF14()
{
  OUTLINED_FUNCTION_8_15();
  if (v1)
  {
    OUTLINED_FUNCTION_15_9();
  }

  else
  {
    v2 = 0;
  }

  if (v0 == v2)
  {
    sub_1AC477660();
    v3 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v3, v4);
  }

  else
  {
    v6 = *(v1 + v0);
    return sub_1AC51EEA8();
  }
}

uint64_t OUTLINED_FUNCTION_42(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char __s2, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char __s1)
{
  __s2 = v37;
  a17 = a7;
  a18 = a6;
  a19 = a5;
  a20 = v30;
  a21 = a4;
  a22 = a2;
  a23 = a1;
  a24 = v36;
  a25 = v35;
  a26 = v34;
  a27 = v33;
  a28 = v32;
  a29 = v31;

  return memcmp(&__s1, &__s2, a3);
}

void OUTLINED_FUNCTION_42_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 88);

  sub_1AC480274(a1, a2, a21, v23);
}

uint64_t static ProtobufUInt32.decodeSingular<A>(value:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 128);
  OUTLINED_FUNCTION_1_11();
  return v5();
}

uint64_t sub_1AC45E0FC(uint64_t *a1)
{
  if (sub_1AC457638())
  {
    v3 = a1[1];

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = sub_1AC45993C();
    if (!v1)
    {
      v6 = result;
      v7 = v5;
      v8 = a1[1];

      *a1 = v6;
      a1[1] = v7;
    }
  }

  return result;
}

BOOL sub_1AC45E184()
{
  v1 = *v0;
  if (*v0)
  {
    v1 = v0[1] - v1;
  }

  return v0[2] != v1;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  a47 = v49;
  a48 = v48;

  return sub_1AC45466C(&a14);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

unint64_t OUTLINED_FUNCTION_14_5()
{

  return sub_1AC45702C(0);
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v6;
  a4[2] = v5;
  return sub_1AC485860(result, a2, a3);
}

uint64_t OUTLINED_FUNCTION_14_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 24);
  v3 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + a1), v2);
  v4 = *(v3 + 8);
  return v2;
}

void OUTLINED_FUNCTION_14_9()
{

  sub_1AC45A78C();
}

void OUTLINED_FUNCTION_14_10(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *v3 = v1;
  *(v3 + 8) = 44;
}

void sub_1AC45E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  a10 = v30;
  v31 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0(v31);
  v91 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v35);
  v94 = &v81 - v36;
  OUTLINED_FUNCTION_5();
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v81 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_26_2();
  v93 = v46;
  if (sub_1AC457638())
  {
    goto LABEL_19;
  }

  sub_1AC458E74(0x5Bu);
  if (v21 || (sub_1AC459020(0x5Du) & 1) != 0)
  {
    goto LABEL_19;
  }

  v90 = v27 + 16;
  v92 = v38 + 16;
  v84 = v38 + 32;
  v47 = (v38 + 8);
  v86 = v31;
  v85 = v47;
  while (1)
  {
    sub_1AC458F28();
    if (!sub_1AC45E184() || *(*v25 + v25[2]) != 110 || (sub_1AC459FB0(&unk_1F2127878) & 1) == 0)
    {
      v61 = *(v27 + 16);
      v62 = OUTLINED_FUNCTION_51();
      v63(v62);
      sub_1AC45BD44(v25, &v95);
      v99 = v27;
      v100 = 0;
      v101 = 0;
      v102 = 0u;
      v103 = 0u;
      v98 = v29;
      sub_1AC45731C();
      OUTLINED_FUNCTION_14_8(&a16);
      v64(v45, v22, v29);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*v47)(v22, v29);
      sub_1AC45C408(&v95, v25);
      sub_1AC45AA7C(&v95);
      goto LABEL_13;
    }

    v48 = OUTLINED_FUNCTION_50_3();
    if (!dynamic_cast_existential_1_conditional(v48))
    {
      goto LABEL_18;
    }

    v49 = OUTLINED_FUNCTION_50_3();
    v50 = dynamic_cast_existential_1_unconditional(v49);
    v52 = v51;
    v53 = *(v51 + 24);
    v87 = v51 + 24;
    v88 = v53;
    v54 = sub_1AC51F228();
    v89 = &v81;
    v83 = v54;
    OUTLINED_FUNCTION_3_0(v54);
    v82 = v55;
    v57 = *(v56 + 64);
    OUTLINED_FUNCTION_65();
    MEMORY[0x1EEE9AC00](v58);
    v59 = OUTLINED_FUNCTION_39_3();
    v88(v59, v52);
    OUTLINED_FUNCTION_19_5(v31);
    if (v60)
    {
      (*(v82 + 8))(v31, v83);
      OUTLINED_FUNCTION_40_3(&a13);
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
    }

    else
    {
      *(&v96 + 1) = v50;
      v97 = v52;
      __swift_allocate_boxed_opaque_existential_1(&v95);
      OUTLINED_FUNCTION_13_7();
      (*(v65 + 32))();
      OUTLINED_FUNCTION_40_3(&a13);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
    OUTLINED_FUNCTION_45_2();
    v66 = swift_dynamicCast();
    v31 = v86;
    if ((v66 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v29);
    OUTLINED_FUNCTION_14_8(&v104);
    v70 = v93;
    v71(v93, v50, v29);
    OUTLINED_FUNCTION_14_8(&a16);
    v72(v45, v70, v29);
    sub_1AC51F108();
    sub_1AC51F0D8();
    OUTLINED_FUNCTION_14_8(&a9);
    v73 = v70;
    v47 = v74;
    v75(v73, v29);
LABEL_13:
    if (sub_1AC459020(0x5Du))
    {
      goto LABEL_19;
    }

    sub_1AC458E74(0x2Cu);
  }

  v76 = OUTLINED_FUNCTION_7_11();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v29);
  (*(v91 + 8))(v50, v31);
LABEL_18:
  sub_1AC477660();
  v79 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_36(xmmword_1AC528940, v79, v80);
LABEL_19:
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

unint64_t sub_1AC45E8C0()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
  }

  else
  {
    result = sub_1AC45E964();
    if (!v0)
    {
      if (HIDWORD(result))
      {
        sub_1AC477660();
        v3 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v3, v4);
      }

      else
      {
        *v1 = result;
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_18_0(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;

  sub_1AC45A78C();
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  result = *(v0 - 136);
  v2 = *(v0 - 184);
  v3 = *(v0 - 344);
  v4 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t result)
{
  *v1 = result;
  *(result + 72) = v2;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_1AC457638();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  *(v4 - 184) = v2;
  v6 = *(v0 + 8);

  return sub_1AC458F9C(v3, v1, v6);
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 56) + 40 * a1;

  return sub_1AC47782C(v6, va);
}

uint64_t sub_1AC45EB24()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            break;
          }

          if (*(*v1 + v1[2]) != 34 || (v5 = sub_1AC459B18(), !v6))
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            v14 = xmmword_1AC51FB50;
            goto LABEL_11;
          }

          v7 = v5;
          v8 = v6;
          sub_1AC456458();
          v9 = *(*v2 + 16);
          sub_1AC456470(v9);
          OUTLINED_FUNCTION_32_0(v9 + 1);
          v11 = v10 + 16 * v9;
          *(v11 + 32) = v7;
          *(v11 + 40) = v8;
          *v2 = v10;
          result = OUTLINED_FUNCTION_37_3();
          if (result)
          {
            return result;
          }

          OUTLINED_FUNCTION_17_0();
          sub_1AC458E74(v12);
        }

        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        v14 = xmmword_1AC51FB60;
LABEL_11:
        *v13 = v14;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1AC45EC6C()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
    *(v1 + 4) = 1;
  }

  else
  {
    result = sub_1AC457AA8();
    if (!v0)
    {
      if (result == result)
      {
        *v1 = result;
        *(v1 + 4) = 0;
      }

      else
      {
        sub_1AC477660();
        v3 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v3, v4);
      }
    }
  }

  return result;
}

unint64_t sub_1AC45ED1C()
{
  result = OUTLINED_FUNCTION_34_3();
  if (result)
  {
    *v1 = 0;
    *(v1 + 4) = 1;
  }

  else
  {
    result = sub_1AC45E964();
    if (!v0)
    {
      if (HIDWORD(result))
      {
        sub_1AC477660();
        v3 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_36(xmmword_1AC5284F0, v3, v4);
      }

      else
      {
        *v1 = result;
        *(v1 + 4) = 0;
      }
    }
  }

  return result;
}

void sub_1AC45EDF4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 >= 0x80)
      {
        v11 = v8 >> 14;
        v12 = v8 >> 28 ? 5 : 4;
        v10 = v8 >= 0x200000 ? v12 : 3;
        if (!v11)
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      v13 = __OFADD__(v4, v10);
      v4 += v10;
      if (v13)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
LABEL_17:
  v14 = sub_1AC4519B4(v4);
  v15 = v3 + v14;
  if (__OFADD__(v3, v14))
  {
    goto LABEL_22;
  }

  v13 = __OFADD__(v15, v4);
  v16 = v15 + v4;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v13)
  {
    OUTLINED_FUNCTION_11_4(v17);
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1AC45EEB8(uint64_t a1, int a2)
{
  v4 = sub_1AC451978((8 * a2) | 2u);
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = *v7;
    if ((*v7 & 0x1000000000000000) != 0)
    {
      v10 = sub_1AC51EF48();
    }

    else
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v9) & 0xF;
LABEL_13:
        v11 = 1;
        goto LABEL_14;
      }

      v10 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v10 < 0x80)
    {
      goto LABEL_13;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = 10;
      goto LABEL_14;
    }

    if (v10 >> 35)
    {
      if (v10 >> 49)
      {
        v14 = v10 >> 28;
        v11 = 8;
LABEL_24:
        if (!(v14 >> 28))
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

      if (!(v10 >> 42))
      {
        v11 = 6;
        goto LABEL_14;
      }

      v11 = 6;
    }

    else
    {
      if (v10 >= 0x200000)
      {
        v11 = 4;
        v14 = v10;
        goto LABEL_24;
      }

      v11 = 2;
      if (v10 < 0x4000)
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    ++v11;
LABEL_14:
    v12 = __OFADD__(v5, v11);
    v13 = v5 + v11;
    if (v12)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v7 += 2;
    v5 = v13 + v10;
    if (__OFADD__(v13, v10))
    {
      goto LABEL_34;
    }
  }

  v15 = v4 * v6;
  if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
  {
    goto LABEL_35;
  }

  v12 = __OFADD__(v15, v5);
  v16 = v15 + v5;
  if (v12)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v12)
  {
    OUTLINED_FUNCTION_11_4(v17);
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1AC45F000()
{
  result = OUTLINED_FUNCTION_18_6();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    result = sub_1AC458E74(v4);
    if (!v0)
    {
      result = OUTLINED_FUNCTION_37_3();
      if ((result & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17_0();
          v5 = sub_1AC45E964();
          v6 = v5;
          if (HIDWORD(v5))
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            v16 = xmmword_1AC5284F0;
            goto LABEL_12;
          }

          sub_1AC45F1A8();
          v7 = OUTLINED_FUNCTION_19_2();
          sub_1AC45F378(v7);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          *(v8 + 4 * v2 + 32) = v6;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v9 = OUTLINED_FUNCTION_1_16();
            if (v11 == 93)
            {
              result = sub_1AC458F9C(v9, v10, *(v1 + 8));
              *(v1 + 16) = result;
              return result;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            break;
          }

          v12 = OUTLINED_FUNCTION_1_16();
          if (v14 != 44)
          {
            sub_1AC477660();
            v17 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_16_6(v17, v18);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v12, v13, *(v1 + 8));
        }

        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        v16 = xmmword_1AC51FB60;
LABEL_12:
        *v15 = v16;
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1AC45F1D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (*(v3 + 16))
  {
    v5 = OUTLINED_FUNCTION_5_5();
    v7 = 3;
    v8 = 4;
    do
    {
      v9 = *(v3 + 4 * v6);
      if (v9 >= 0x80)
      {
        if (v9 >> 14)
        {
          if (v9 >> 28)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v8;
          }

          if (v9 >= 0x200000)
          {
            v10 = v11;
          }

          else
          {
            v10 = v7;
          }
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      if (__OFADD__(v5, v10))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_5();
    }

    while (!v12);
    sub_1AC45702C(v5);
    OUTLINED_FUNCTION_11_5();
    do
    {
      if (*(v3 + 4 * v14) < 0x80u)
      {
        v16 = *(v3 + 4 * v14);
      }

      else
      {
        do
        {
          OUTLINED_FUNCTION_1_7(v13);
        }

        while (v15);
      }

      OUTLINED_FUNCTION_4_5(v13);
    }

    while (!v12);
    *(v2 + 8) = v13;
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
  }
}

unint64_t sub_1AC45F2B0(unint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = result + 32;
    do
    {
      v7 = (v6 + 16 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v2 + 8);
      if (v5 < 0x80)
      {
        LOBYTE(v12) = v5 | 2;
      }

      else
      {
        v11 = v5 | 2;
        do
        {
          *v10++ = v11 | 0x80;
          v12 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v10 = v12;
      *(v2 + 8) = v10 + 1;
      result = sub_1AC451D28(v8, v9);
    }

    while (v4 != v3);
  }

  return result;
}

void sub_1AC45F390()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((sub_1AC457638() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v10);
    if (!v1 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_0();
        v11 = v7();
        v5();
        v12 = *(*v9 + 16);
        v3(v12);
        v13 = *v9;
        *(v13 + 16) = v12 + 1;
        *(v13 + 8 * v12 + 32) = v11;
        *v9 = v13;
        sub_1AC458F28();
        if (sub_1AC45E184())
        {
          v14 = OUTLINED_FUNCTION_1_16();
          if (v16 == 93)
          {
            break;
          }
        }

        sub_1AC458F28();
        if (!sub_1AC45E184())
        {
          sub_1AC477660();
          OUTLINED_FUNCTION_11();
          *v20 = xmmword_1AC51FB60;
LABEL_12:
          swift_willThrow();
          goto LABEL_14;
        }

        v17 = OUTLINED_FUNCTION_1_16();
        if (v19 != 44)
        {
          sub_1AC477660();
          v21 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_16_6(v21, v22);
          goto LABEL_12;
        }

        *(v0 + 16) = sub_1AC458F9C(v17, v18, *(v0 + 8));
      }

      *(v0 + 16) = sub_1AC458F9C(v14, v15, *(v0 + 8));
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC45F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_9_13(a1, a2, a3);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_8();
  result = sub_1AC459C7C(v13);
  if (!v5)
  {
    v15 = OUTLINED_FUNCTION_40_4();
    v16(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC465B44(v44, v46);
      v17 = v47;
      v18 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      OUTLINED_FUNCTION_31_3();
      LOBYTE(v44[0]) = v19;
      BYTE1(v44[0]) = v20;
      BYTE2(v44[0]) = v21;
      BYTE3(v44[0]) = v22;
      v23 = (*(v18 + 8))(v44, v17, v18);
      sub_1AC45FA3C(v23, v24);
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_1AC45A718(v44, &qword_1EB557FC8, &unk_1AC528980);
      v25 = dynamic_cast_existential_1_conditional(a3);
      if (v25)
      {
        OUTLINED_FUNCTION_42_3(v25, v26);
        v27();
        v28 = v46[1];
        v29 = v46[2];
        v30 = v47;
        v42 = v4[3];
        v43 = v4[2];
        v40 = v4[5];
        v41 = v4[4];
        v31 = v4[6];
        v4[2] = v46[0];
        v4[3] = v28;
        v4[4] = v29;
        v4[5] = v30;
        v49 = v31;

        sub_1AC45A44C(v6, v4, a3, a4);
        (*(a4 + 72))(v4, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, a4);
        sub_1AC45A774();
        OUTLINED_FUNCTION_34_4();

        OUTLINED_FUNCTION_15_8();
        OUTLINED_FUNCTION_14_10(v34);
        v35 = v4[2];
        v36 = v7[3];
        v38 = v7[4];
        v37 = v7[5];

        v7[2] = v43;
        v7[3] = v42;
        v7[4] = v41;
        v7[5] = v40;
        v39 = v7[6];

        v7[6] = v49;
      }

      else
      {
        sub_1AC4777D8();
        v32 = swift_allocError();
        return OUTLINED_FUNCTION_21_6(v32, v33);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_5()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_40_6()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}