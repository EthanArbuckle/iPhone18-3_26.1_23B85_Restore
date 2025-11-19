uint64_t static ProtobufBytes.decodeSingular<A>(value:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 368);
  OUTLINED_FUNCTION_1_11();
  return v5();
}

uint64_t static ProtobufBytes.decodeRepeated<A>(value:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 376);
  OUTLINED_FUNCTION_1_11();
  return v5();
}

uint64_t static ProtobufBytes.visitRepeated<A>(value:fieldNumber:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 264);
  OUTLINED_FUNCTION_0_10();
  return v6();
}

unint64_t sub_1AC4D2DA0()
{
  result = qword_1EB5596F0;
  if (!qword_1EB5596F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5596F0);
  }

  return result;
}

double sub_1AC4D2DF4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  return result;
}

unint64_t sub_1AC4D2E7C(uint64_t a1)
{
  result = sub_1AC4D2EA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4D2EA4()
{
  result = qword_1EB557AB8;
  if (!qword_1EB557AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AB8);
  }

  return result;
}

uint64_t sub_1AC4D3060(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_4();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1AC4D30AC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1AC4D3184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
LABEL_2:
  while (2)
  {
    v5 = *(a2 + 88);
    while (1)
    {
      if (v5 >= 1)
      {
        sub_1AC507364();
      }

      result = *(a2 + 104);
      if (!result)
      {
        goto LABEL_22;
      }

      v7 = *(a2 + 112);
      v8 = *(a2 + 120);
      v33[0] = *(a2 + 104);
      v33[1] = v7;
      v9 = *(a2 + 128);
      v10 = *(a2 + 136);
      v33[2] = v8;
      v33[3] = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 96);
      v13 = *(a2 + 97);

      v14 = sub_1AC5073AC(v33, v10, v11, v12 | (v13 << 8));
      if (v3)
      {
      }

      v16 = v14;
      v17 = v15;

      if (v17)
      {
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      *(a2 + 88) = v5 + 1;
      if (v16 == 1)
      {
        break;
      }

      ++v5;
      if (v16 == 2)
      {
        v18 = sub_1AC474398();
        v20 = v19;
        sub_1AC509980();
        v21 = *(a2 + 40);
        if (v21 != *(a2 + 48) && *v21 == 58)
        {
          *(a2 + 40) = v21 + 1;
          sub_1AC509980();
          sub_1AC507E80();
          v23 = v22;
          v25 = v24;
          sub_1AC4513F8(v18, v20);
          sub_1AC474608(v23, v25);
          goto LABEL_2;
        }

        sub_1AC477954();
        swift_allocError();
        *v31 = 0;
        swift_willThrow();
        return sub_1AC474608(v18, v20);
      }
    }

    swift_beginAccess();
    sub_1AC509980();
    v26 = *(a2 + 40);
    if (v26 != *(a2 + 48) && *v26 == 58)
    {
      *(a2 + 40) = v26 + 1;
      sub_1AC509980();
      v27 = sub_1AC507D8C();
      v28 = *(a1 + 24);
      *(a1 + 16) = v27;
      *(a1 + 24) = v29;
      swift_endAccess();

      continue;
    }

    break;
  }

  sub_1AC477954();
  swift_allocError();
  *v30 = 0;
  swift_willThrow();
  return swift_endAccess();
}

uint64_t sub_1AC4D345C(uint64_t a1)
{
  v3 = v1;
  result = sub_1AC50730C();
  if (!v2)
  {
    v7 = v6;
    if (v6)
    {
      v8 = result;
      v9 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v1 + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8();
        v12 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v12);
      }

      sub_1AC47514C(v8, v7, a1);
    }

    else
    {
      Google_Protobuf_Any.typeURL.setter();
      v13 = *(v1 + 16);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v1 + 16);
      if ((v14 & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8();
        v16 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v16);
      }

      sub_1AC474608(0, 0xC000000000000000);
      v17 = *(v3 + 16);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v3 + 16);
      if ((v18 & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8();
        v20 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v20);
      }

      return sub_1AC4D3184(v19, a1);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Any.init(message:partial:typePrefix:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 & 1) != 0 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), ((*(v10 + 32))(v9, v10)))
  {
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v11 = qword_1ED6E4C40;
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);

    v15 = sub_1AC4D5238(v14, a3, a4, v12, v13);
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2_8();
      v11 = OUTLINED_FUNCTION_1_12();
    }

    swift_beginAccess();
    v18 = *(v11 + 24);
    *(v11 + 16) = v15;
    *(v11 + 24) = v17;

    sub_1AC47782C(a1, v21);
    v21[40] = 1;
    swift_beginAccess();
    sub_1AC477750(v21, v11 + 32);
    swift_endAccess();
    *a5 = xmmword_1AC51F990;
    *(a5 + 16) = v11;
  }

  else
  {

    sub_1AC476EEC();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Google_Protobuf_Any.init(textFormatString:extensions:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 100;
  v13 = 0;
  sub_1AC450324(a3, v11);
  Google_Protobuf_Any.init(textFormatString:options:extensions:)(a1, a2, &v12, v11, &v14);
  sub_1AC455360(a3);
  if (!v4)
  {
    v10 = v15;
    result = *&v14;
    *a4 = v14;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t Google_Protobuf_Any.init(textFormatString:options:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AC51EE28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *a3;
  v26 = *(a3 + 8);
  v15 = *(a3 + 9);
  if (qword_1ED6E3410 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v28 = xmmword_1AC51F990;
  v29 = qword_1ED6E4C40;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_11:
    v22 = v28;
    v23 = v29;
    *a5 = v28;
    *(a5 + 16) = v23;
    sub_1AC4578F4(v22, *(&v22 + 1));

    goto LABEL_12;
  }

  sub_1AC51EE18();
  v17 = sub_1AC51EDF8();
  v19 = v18;

  v20 = (*(v11 + 8))(v14, v10);
  if (v19 >> 60 == 15)
  {
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v20);
  *&v25[-32] = v27;
  v25[-24] = v26;
  v25[-23] = v15;
  *&v25[-16] = a4;
  *&v25[-8] = &v28;
  v21 = v30;
  sub_1AC46B4AC(sub_1AC4D3DC0, &v25[-48], v17, v19);
  sub_1AC45AC74(v17, v19);
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_1AC455360(a4);
  sub_1AC4513F8(v28, *(&v28 + 1));
}

uint64_t sub_1AC4D3A44(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v11 = sub_1AC472D54();
  sub_1AC450324(a5, v25);
  *(&__src[5] + 1) = 0;
  LOWORD(__src[6]) = 256;
  *(&__src[6] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  sub_1AC450324(v25, v23);
  type metadata accessor for DoubleParser();
  memset(__src, 0, 40);
  v12 = swift_allocObject();
  *(v12 + 16) = swift_slowAlloc();
  *(v12 + 24) = 128;
  *(&__src[3] + 1) = v12;
  v13 = &v6[v7];
  *(&__src[2] + 1) = v6;
  *&__src[3] = &v6[v7];
  sub_1AC46B9B4(v23, __src);
  *&__src[4] = a3;
  WORD4(__src[4]) = a4 & 0x101;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    *&__src[5] = a3 - 1;
    do
    {
      v14 = *v6;
      if (v14 > 0x23)
      {
        break;
      }

      if (((1 << v14) & 0x100002600) == 0)
      {
        if (v14 == 35)
        {
          ++v6;
          while (v6 != v13)
          {
            v16 = *v6++;
            v15 = v16;
            if (v16 == 10 || v15 == 13)
            {
              goto LABEL_8;
            }
          }

          *(&__src[2] + 1) = v13;
        }

        break;
      }

      ++v6;
LABEL_8:
      *(&__src[2] + 1) = v6;
    }

    while (v6 != v13);
    sub_1AC455360(v23);
    if (qword_1EB557B20 == -1)
    {
      goto LABEL_21;
    }
  }

  swift_once();
LABEL_21:
  v18 = qword_1EB557B28;
  v19 = unk_1EB557B30;
  v20 = qword_1EB557B38;
  v21 = unk_1EB557B40;

  sub_1AC455360(v25);
  sub_1AC458E14(*(&__src[6] + 1));
  *(&__src[6] + 1) = v18;
  *&__src[7] = v19;
  *(&__src[7] + 1) = v20;
  *&__src[8] = v21;
  *(&__src[8] + 1) = &type metadata for Google_Protobuf_Any;
  *&__src[9] = v11;
  memcpy(__dst, __src, 0x98uLL);
  sub_1AC4D345C(__dst);
  if (!v5 && __dst[5] != __dst[6])
  {
    sub_1AC477954();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  return sub_1AC477AA8(__dst);
}

uint64_t sub_1AC4D3CE8(char *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(v1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  return sub_1AC4763E8(v7);
}

void sub_1AC4D3D30(uint64_t *a1)
{
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8();
    v6 = OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_3_10(v6);
  }

  sub_1AC476AEC(a1);
}

uint64_t sub_1AC4D3DC0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 40);
  return sub_1AC4D3A44(a1, a2, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32));
}

uint64_t static Google_Protobuf_Any.messageType(forTypeURL:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AC4D3E40(a1, a2);
  v4 = static Google_Protobuf_Any.messageType(forMessageName:)(v2, v3);

  return v4;
}

uint64_t sub_1AC4D3E40(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  v3 = 4 * v2;
  v4 = 15;
  v5 = 15;
  while (v3 > v5 >> 14)
  {
    OUTLINED_FUNCTION_1_13();
    v6 = sub_1AC51EFC8();
    v8 = v7;
    OUTLINED_FUNCTION_1_13();
    v5 = sub_1AC51EED8();
    if (v6 == 47 && v8 == 0xE100000000000000)
    {

      v4 = v5;
    }

    else
    {
      v10 = sub_1AC51F3D8();

      if (v10)
      {
        v4 = v5;
      }
    }
  }

  if (v3 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1AC51EFF8();
    v12 = MEMORY[0x1AC5B4290](v11);

    return v12;
  }

  return result;
}

uint64_t sub_1AC4D3F78()
{
  v0 = sub_1AC51F1F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AC51ED38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1AC51F1E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1AC4D51F4();
  sub_1AC51F1D8();
  sub_1AC51ED28();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1AC51F218();
  qword_1EB557AA0 = result;
  return result;
}

uint64_t sub_1AC4D4128(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1AC51EEE8();
  return sub_1AC51EFC8();
}

unint64_t sub_1AC4D41A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v12 = 0;
    return v12 | ((v2 == 0) << 8);
  }

  v5 = (a1 & 0x800000000000000uLL) >> 59;
  v6 = 4 << v5;
  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  result = v7 | (v2 << 16);
  v9 = v7 & 0xC;
  if ((a2 & 0x1000000000000000) == 0)
  {
    v6 = 8;
  }

  if (v9 == v6 && (OUTLINED_FUNCTION_1_13(), result = sub_1AC488FF0(v14, v15, v16), result < 0x4000))
  {
    __break(1u);
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
    v10 = (result & 0xFFFFFFFFFFFF0000) - 65532;
    LOBYTE(v5) = 1;
    goto LABEL_12;
  }

  if (v2 >= result >> 16)
  {
    OUTLINED_FUNCTION_1_13();
    v10 = sub_1AC51EF68();
LABEL_12:
    if ((v10 & 0xC) == 4 << v5)
    {
      OUTLINED_FUNCTION_1_13();
      v10 = sub_1AC488FF0(v17, v18, v19);
    }

    v11 = v10 >> 16;
    if (v10 >> 16 >= v2)
    {
      __break(1u);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_1_13();
        v12 = sub_1AC51EF88();
        return v12 | ((v2 == 0) << 8);
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v20 + v11);
        return v12 | ((v2 == 0) << 8);
      }

      if ((a1 & 0x1000000000000000) != 0)
      {
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_21:
        v12 = *(v13 + v11);
        return v12 | ((v2 == 0) << 8);
      }
    }

    v13 = sub_1AC51F308();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D4374()
{
  v0 = sub_1AC4D4304();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC4D43C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5596F8, &qword_1AC528088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC528000;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001AC52DE20;
  v1 = sub_1AC472D54();
  *(inited + 48) = &type metadata for Google_Protobuf_Any;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x80000001AC52EA50;
  v2 = sub_1AC4D4DB0();
  *(inited + 80) = &type metadata for Google_Protobuf_BoolValue;
  *(inited + 88) = v2;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x80000001AC52EA70;
  v3 = sub_1AC4D4E04();
  *(inited + 112) = &type metadata for Google_Protobuf_BytesValue;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001AC52EA90;
  v4 = sub_1AC4D4E58();
  *(inited + 144) = &type metadata for Google_Protobuf_DoubleValue;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001AC52E9D0;
  v5 = sub_1AC4C8BD4();
  *(inited + 176) = &type metadata for Google_Protobuf_Duration;
  *(inited + 184) = v5;
  *(inited + 192) = 0xD000000000000015;
  *(inited + 200) = 0x80000001AC52E9F0;
  v6 = sub_1AC4C923C();
  *(inited + 208) = &type metadata for Google_Protobuf_Empty;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = 0x80000001AC52EA10;
  v7 = sub_1AC4D1710();
  *(inited + 240) = &type metadata for Google_Protobuf_FieldMask;
  *(inited + 248) = v7;
  *(inited + 256) = 0xD00000000000001ALL;
  *(inited + 264) = 0x80000001AC52EAB0;
  v8 = sub_1AC4D4EAC();
  *(inited + 272) = &type metadata for Google_Protobuf_FloatValue;
  *(inited + 280) = v8;
  *(inited + 288) = 0xD00000000000001ALL;
  *(inited + 296) = 0x80000001AC52EAD0;
  v9 = sub_1AC4D4F00();
  *(inited + 304) = &type metadata for Google_Protobuf_Int32Value;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x80000001AC52EAF0;
  v10 = sub_1AC4D4F54();
  *(inited + 336) = &type metadata for Google_Protobuf_Int64Value;
  *(inited + 344) = v10;
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x80000001AC52EB10;
  v11 = sub_1AC4D4FA8();
  *(inited + 368) = &type metadata for Google_Protobuf_ListValue;
  *(inited + 376) = v11;
  *(inited + 384) = 0xD00000000000001BLL;
  *(inited + 392) = 0x80000001AC52EB30;
  v12 = sub_1AC4D4FFC();
  *(inited + 400) = &type metadata for Google_Protobuf_StringValue;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000016;
  *(inited + 424) = 0x80000001AC52EB50;
  v13 = sub_1AC4D5050();
  *(inited + 432) = &type metadata for Google_Protobuf_Struct;
  *(inited + 440) = v13;
  *(inited + 448) = 0xD000000000000019;
  *(inited + 456) = 0x80000001AC52EB70;
  v14 = sub_1AC4D50A4();
  *(inited + 464) = &type metadata for Google_Protobuf_Timestamp;
  *(inited + 472) = v14;
  *(inited + 480) = 0xD00000000000001BLL;
  *(inited + 488) = 0x80000001AC52EB90;
  v15 = sub_1AC4D50F8();
  *(inited + 496) = &type metadata for Google_Protobuf_UInt32Value;
  *(inited + 504) = v15;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = 0x80000001AC52EBB0;
  v16 = sub_1AC4D514C();
  *(inited + 528) = &type metadata for Google_Protobuf_UInt64Value;
  *(inited + 536) = v16;
  *(inited + 544) = 0xD000000000000015;
  *(inited + 552) = 0x80000001AC52EBD0;
  v17 = sub_1AC4D51A0();
  *(inited + 560) = &type metadata for Google_Protobuf_Value;
  *(inited + 568) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559700, &qword_1AC528090);
  v18 = sub_1AC51ED58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559708, &qword_1AC528098);
  result = swift_allocObject();
  *(result + 16) = v18;
  off_1EB557AB0 = result;
  return result;
}

uint64_t static Google_Protobuf_Any.register(messageType:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC51ED18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(a2 + 24))(a1, a2);
  v19 = 0;
  v14 = v9;
  v15 = v10;
  v16 = &v19;
  v17 = a1;
  v18 = a2;
  if (qword_1EB557A98 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v11 = sub_1AC51ED08();
  MEMORY[0x1EEE9AC00](v11);
  *&v13[-16] = sub_1AC4D4B88;
  *&v13[-8] = v13;
  sub_1AC51F208();

  (*(v5 + 8))(v8, v4);
  return v19;
}

uint64_t sub_1AC4D48CC(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB557AA8 != -1)
  {
    swift_once();
  }

  v10 = off_1EB557AB0;
  swift_beginAccess();
  v11 = sub_1AC4CFBC4(a1, a2, v10[2]);
  if (v11)
  {
    v12 = v11;
    result = swift_endAccess();
    v14 = v12 == a4;
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v15 = v10[2];
    swift_isUniquelyReferenced_nonNull_native();
    v16 = v10[2];
    sub_1AC4F02D0(a4, a5, a1, a2);
    v10[2] = v16;
    result = swift_endAccess();
    v14 = 1;
  }

  *a3 = v14;
  return result;
}

uint64_t static Google_Protobuf_Any.messageType(forMessageName:)(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v7[2] = v9;
  v7[3] = a1;
  v7[4] = a2;
  if (qword_1EB557A98 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v2 = qword_1EB557AA0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1AC4D4C8C;
  *(v3 + 24) = v7;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AC4D4C98;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1AC4D4C98;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AC4D4CC0;
  aBlock[3] = &block_descriptor;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v9[0];
  }

  __break(1u);
  return result;
}

__n128 sub_1AC4D4B98(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB557AA8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB557AB0;
  swift_beginAccess();
  v7 = v6[2];
  v11 = 0u;
  if (*(v7 + 16))
  {
    v8 = sub_1AC4EFE58(a2, a3);
    if (v9)
    {
      v11 = *(*(v7 + 56) + 16 * v8);
    }
  }

  swift_endAccess();
  result = v11;
  *a1 = v11;
  return result;
}

uint64_t sub_1AC4D4C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1AC4D4C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AC4D4D04(uint64_t a1)
{
  v1 = *(a1 + 80);
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

unint64_t sub_1AC4D4DB0()
{
  result = qword_1EB557C08;
  if (!qword_1EB557C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C08);
  }

  return result;
}

unint64_t sub_1AC4D4E04()
{
  result = qword_1EB557BD8;
  if (!qword_1EB557BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BD8);
  }

  return result;
}

unint64_t sub_1AC4D4E58()
{
  result = qword_1EB557B68;
  if (!qword_1EB557B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B68);
  }

  return result;
}

unint64_t sub_1AC4D4EAC()
{
  result = qword_1EB557BA8;
  if (!qword_1EB557BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BA8);
  }

  return result;
}

unint64_t sub_1AC4D4F00()
{
  result = qword_1EB557B78;
  if (!qword_1EB557B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B78);
  }

  return result;
}

unint64_t sub_1AC4D4F54()
{
  result = qword_1EB557B70;
  if (!qword_1EB557B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B70);
  }

  return result;
}

unint64_t sub_1AC4D4FA8()
{
  result = qword_1EB557BE8;
  if (!qword_1EB557BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BE8);
  }

  return result;
}

unint64_t sub_1AC4D4FFC()
{
  result = qword_1EB557B60;
  if (!qword_1EB557B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B60);
  }

  return result;
}

unint64_t sub_1AC4D5050()
{
  result = qword_1EB557AC8;
  if (!qword_1EB557AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AC8);
  }

  return result;
}

unint64_t sub_1AC4D50A4()
{
  result = qword_1ED6E3400;
  if (!qword_1ED6E3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3400);
  }

  return result;
}

unint64_t sub_1AC4D50F8()
{
  result = qword_1EB557B58;
  if (!qword_1EB557B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B58);
  }

  return result;
}

unint64_t sub_1AC4D514C()
{
  result = qword_1EB557B48;
  if (!qword_1EB557B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B48);
  }

  return result;
}

unint64_t sub_1AC4D51A0()
{
  result = qword_1EB557AD8;
  if (!qword_1EB557AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AD8);
  }

  return result;
}

unint64_t sub_1AC4D51F4()
{
  result = qword_1EB5579F0[0];
  if (!qword_1EB5579F0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB5579F0);
  }

  return result;
}

uint64_t sub_1AC4D5238(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = sub_1AC4D4128(a2, a3);
  if (!v12)
  {
    goto LABEL_11;
  }

  if (v11 == 47 && v12 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v14 = sub_1AC51F3D8();

  if ((v14 & 1) == 0)
  {
LABEL_11:
    MEMORY[0x1AC5B4340](47, 0xE100000000000000);
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(v19, v20);
  swift_getDynamicType();
  v15 = (*(v21 + 24))();
  v17 = v16;

  MEMORY[0x1AC5B4340](v15, v17);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return a2;
}

void sub_1AC4D53C0()
{

  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v75 = 1;
  do
  {
    v4 = sub_1AC51EF38();
    if (!v5)
    {
      goto LABEL_135;
    }

    v6 = v4;
    v7 = v5;
    v8 = v4 == 45 && v5 == 0xE100000000000000;
    if (v8 || (sub_1AC51F3D8() & 1) != 0)
    {
      if (v0)
      {
        goto LABEL_134;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v3 + 16);
        sub_1AC48F0C0();
        v3 = v43;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1AC48F0C0();
        v3 = v44;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v1 = 1;
    }

    else
    {
      if (v6 == 48 && v7 == 0xE100000000000000)
      {
        goto LABEL_91;
      }

      v12 = sub_1AC51F3D8();
      v13 = v6 == 49 && v7 == 0xE100000000000000;
      v14 = v13;
      if ((v12 & 1) != 0 || v14)
      {
        goto LABEL_91;
      }

      v15 = sub_1AC51F3D8();
      v16 = v6 == 50 && v7 == 0xE100000000000000;
      v17 = v16;
      if ((v15 & 1) != 0 || v17)
      {
        goto LABEL_91;
      }

      v18 = sub_1AC51F3D8();
      v19 = v6 == 51 && v7 == 0xE100000000000000;
      v20 = v19;
      if ((v18 & 1) != 0 || v20)
      {
        goto LABEL_91;
      }

      v21 = sub_1AC51F3D8();
      v22 = v6 == 52 && v7 == 0xE100000000000000;
      v23 = v22;
      if ((v21 & 1) != 0 || v23)
      {
        goto LABEL_91;
      }

      v24 = sub_1AC51F3D8();
      v25 = v6 == 53 && v7 == 0xE100000000000000;
      v26 = v25;
      if ((v24 & 1) != 0 || v26)
      {
        goto LABEL_91;
      }

      v27 = sub_1AC51F3D8();
      v28 = v6 == 54 && v7 == 0xE100000000000000;
      v29 = v28;
      if ((v27 & 1) != 0 || v29)
      {
        goto LABEL_91;
      }

      v30 = sub_1AC51F3D8();
      v31 = v6 == 55 && v7 == 0xE100000000000000;
      v32 = v31;
      if (v30 & 1) != 0 || v32 || ((v33 = sub_1AC51F3D8(), v6 == 56) ? (v34 = v7 == 0xE100000000000000) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), (v33 & 1) != 0 || (v35 & 1) != 0 || ((v36 = sub_1AC51F3D8(), v6 == 57) ? (v37 = v7 == 0xE100000000000000) : (v37 = 0), !v37 ? (v38 = 0) : (v38 = 1), (v36 & 1) != 0 || (v38 & 1) != 0 || (sub_1AC51F3D8())))
      {
LABEL_91:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = *(v3 + 16);
          sub_1AC48F0C0();
          v3 = v46;
        }

        v39 = *(v3 + 16);
        if (v39 >= *(v3 + 24) >> 1)
        {
          sub_1AC48F0C0();
          v3 = v47;
        }

        *(v3 + 16) = v39 + 1;
        v40 = v3 + 16 * v39;
        *(v40 + 32) = v6;
        *(v40 + 40) = v7;
        v41 = __OFADD__(v2++, 1);
        if (v41)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v48 = v6 == 46 && v7 == 0xE100000000000000;
        if (!v48 && (sub_1AC51F3D8() & 1) == 0)
        {
          goto LABEL_109;
        }

        if ((v75 & 1) == 0)
        {
          goto LABEL_135;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
        sub_1AC4D659C();
        v49 = sub_1AC51EFD8();
        v51 = sub_1AC4D5A9C(v49, v50);
        v6 = v52;

        if ((v6 & 1) != 0 || (v51 - 0x4979CB9E01) < 0xFFFFFF6D0C68C3FFLL)
        {
          goto LABEL_136;
        }

        v2 = 0;
        v75 = 0;
        v3 = MEMORY[0x1E69E7CC0];
      }
    }

    v41 = __OFADD__(v0++, 1);
  }

  while (!v41);
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v53 = v6 == 115 && v7 == 0xE100000000000000;
  if (!v53 && (sub_1AC51F3D8() & 1) == 0)
  {
    goto LABEL_134;
  }

  if (v75)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
    sub_1AC4D659C();
    v54 = sub_1AC51EFD8();
    v74 = sub_1AC4D5A9C(v54, v55);
    if ((v56 & 1) != 0 || v74 < -315576000000 || v74 > 315576000000)
    {
      goto LABEL_134;
    }

    goto LABEL_144;
  }

  if (v2 > 8)
  {
    if (v2 != 9)
    {
      v68 = v2 + 1;
      while (*(v3 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC488568(v3);
          v3 = v72;
        }

        v69 = *(v3 + 16);
        if (!v69)
        {
          goto LABEL_148;
        }

        v70 = v69 - 1;
        v71 = *(v3 + 16 * v70 + 40);
        *(v3 + 16) = v70;

        if (--v68 <= 10)
        {
          goto LABEL_129;
        }
      }

      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }
  }

  else
  {
    v57 = v2 - 9;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v3 + 16);
        sub_1AC48F0C0();
        v3 = v62;
      }

      v58 = *(v3 + 16);
      if (v58 >= *(v3 + 24) >> 1)
      {
        sub_1AC48F0C0();
        v3 = v63;
      }

      *(v3 + 16) = v58 + 1;
      v59 = v3 + 16 * v58;
      *(v59 + 32) = 48;
      *(v59 + 40) = 0xE100000000000000;
    }

    while (!__CFADD__(v57++, 1));
  }

LABEL_129:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
  sub_1AC4D659C();
  v64 = sub_1AC51EFD8();
  v66 = sub_1AC4D5D94(v64, v65);
  if ((v66 & 0x100000000) != 0)
  {
LABEL_134:

LABEL_135:

LABEL_136:
    sub_1AC477660();
    swift_allocError();
    *v67 = xmmword_1AC5280A0;
    swift_willThrow();

    return;
  }

  if ((v1 & 1) != 0 && __OFSUB__(0, v66))
  {
    __break(1u);
    goto LABEL_134;
  }

LABEL_144:
  sub_1AC51EF38();
  if (v73)
  {

    goto LABEL_135;
  }
}

uint64_t sub_1AC4D5A9C(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AC51F308();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1AC4D6B78(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1AC4D5D94(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1AC4D6600(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if (v16 != v16)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if (v21 != v21)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D6074(uint64_t result, int a2)
{
  if ((a2 + 999999999) > 0x773593FE)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && (v3 = result - 1, result >= 1))
  {
    v4 = (a2 + 1000000000);
  }

  else
  {
    v5 = a2 - 1000000000;
    if (result < 0)
    {
      v6 = result + 1;
    }

    else
    {
      v5 = a2;
      v6 = result;
    }

    if (a2 >= 1)
    {
      v4 = v5;
    }

    else
    {
      v4 = a2;
    }

    if (a2 >= 1)
    {
      v3 = v6;
    }

    else
    {
      v3 = result;
    }
  }

  if ((v3 - 0x4979CB9E01) < 0xFFFFFF6D0C68C3FFLL)
  {
    return 0;
  }

  v7 = sub_1AC467704(v4);
  v9 = v8;
  if ((v4 & 0x80000000) == 0 || v3)
  {
    v10 = sub_1AC51F3B8();
  }

  else
  {
    v10 = 12333;
  }

  MEMORY[0x1AC5B4340](v7, v9);

  MEMORY[0x1AC5B4340](115, 0xE100000000000000);
  return v10;
}

uint64_t sub_1AC4D61B0(uint64_t result, int a2)
{
  if ((a2 + 999999999) >= 0x773593FF)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if ((a2 & 0x80000000) == 0 || (v3 = result - 1, result < 1))
  {
    if (result < 0)
    {
      v4 = result + 1;
    }

    else
    {
      v4 = result;
    }

    if (a2 >= 1)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }

  return v3;
}

double Google_Protobuf_Duration.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_1AC51F990;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1AC4D623C()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    sub_1AC4D53C0();
    v4 = v3;
    v6 = v5;

    *v0 = v4;
    *(v0 + 8) = v6;
  }

  return result;
}

uint64_t sub_1AC4D62B8()
{
  v1 = sub_1AC4D6074(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1AC5B4340](v1);

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

void _s21InternalSwiftProtobuf07Google_C9_DurationV12floatLiteralACSd_tcfC_0(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = trunc(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_1AC4D61B0(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t - prefix(_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_14(a1);
  result = -v2;
  if (__OFSUB__(0, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 8);
    if (!__OFSUB__(0, v4))
    {
      v5 = sub_1AC4D61B0(result, -v4);
      return OUTLINED_FUNCTION_0_13(v5, v6, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t + infix(_:_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_14(a1);
  result = v3 + *v1;
  if (__OFADD__(v3, *v1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 8);
    v6 = *(v2 + 8);
    if (!__OFADD__(v6, v5))
    {
      v7 = sub_1AC4D61B0(result, v6 + v5);
      return OUTLINED_FUNCTION_0_13(v7, v8, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC4D653C(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_14(a1);
  result = v3 - *v1;
  if (__OFSUB__(v3, *v1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 8);
    v6 = *(v2 + 8);
    if (!__OFSUB__(v6, v5))
    {
      v7 = sub_1AC4D61B0(result, v6 - v5);
      return OUTLINED_FUNCTION_0_13(v7, v8, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC4D659C()
{
  result = qword_1EB559718;
  if (!qword_1EB559718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559710, &qword_1AC528118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559718);
  }

  return result;
}

unsigned __int8 *sub_1AC4D6600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1AC51EFE8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC4D7100();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1AC4D6B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1AC51EFE8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC4D7100();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
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

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7100()
{
  v0 = sub_1AC4D716C();
  v4 = sub_1AC4D71A0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1AC4D71A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AC51EEA8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1AC51F238();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1AC4D7300(v9, 0);
  v12 = sub_1AC4D7370(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1AC51EEA8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1AC51F308();
LABEL_4:

  return sub_1AC51EEA8();
}

void *sub_1AC4D7300(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5582A0, &qword_1AC520A58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1AC4D7370(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1AC488FF0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
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
          result = sub_1AC51F308();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1AC488FF0(v12, a6, a7);
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

    result = sub_1AC51EF58();
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

unint64_t sub_1AC4D7588(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v14 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    v10 = v9 >> 14;
    if (v9 >> 14 == v5)
    {
      return v10 == v5;
    }

    result = v9;
    if ((v9 & 0xC) == v7)
    {
      result = sub_1AC488FF0(v9, a1, a2);
    }

    v12 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      v13 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v15[0] = a1;
      v15[1] = v14;
      v13 = *(v15 + v12);
    }

    else
    {
      result = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      v13 = *(result + v12);
    }

    if ((v9 & 0xC) == v7)
    {
      result = sub_1AC488FF0(v9, a1, a2);
      v9 = result;
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_22:
        if (v4 <= v9 >> 16)
        {
          goto LABEL_27;
        }

        v9 = sub_1AC51EF58();
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_22;
    }

    v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_24:
    if ((v13 - 33) >= 0x5Eu)
    {
      return v10 == v5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7710(unint64_t a1, unint64_t a2)
{
  if ((sub_1AC4D7588(a1, a2) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v2 = sub_1AC51EF38();
      if (!v3)
      {

        return 0;
      }

      v4 = v2;
      v5 = v3;
      v6 = v2 == 95 && v3 == 0xE100000000000000;
      if (v6 || (sub_1AC51F3D8() & 1) != 0)
      {
        break;
      }

      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_91;
      }

      if (v4 != 65 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_33;
        }

        if (v4 == 90 && v5 == 0xE100000000000000)
        {
          goto LABEL_86;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_33:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_92;
      }

      if (v4 != 97 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_44;
        }

        if (v4 == 122 && v5 == 0xE100000000000000)
        {
          goto LABEL_85;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_44:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_93;
      }

      if (v4 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_60;
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        if (v4 == 57 && v5 == 0xE100000000000000)
        {
          goto LABEL_85;
        }

LABEL_60:
        v24 = sub_1AC51F3D8();
        v26 = v4 == 46 && v5 == 0xE100000000000000;
        if ((v24 & 1) == 0 || v26)
        {
          goto LABEL_85;
        }

        goto LABEL_68;
      }

      if (v4 == 46 && v5 == 0xE100000000000000)
      {
        goto LABEL_85;
      }

LABEL_68:
      v27 = sub_1AC51F3D8();
      v29 = v4 == 40 && v5 == 0xE100000000000000;
      if ((v27 & 1) == 0 && !v29)
      {
        v30 = sub_1AC51F3D8();
        v31 = v4 == 41 && v5 == 0xE100000000000000;
        v32 = v31;
        if ((v30 & 1) == 0 && !v32)
        {
          sub_1AC51F3D8();
        }
      }

LABEL_85:
      MEMORY[0x1AC5B4330](v4, v5);
    }

    v7 = sub_1AC51EF38();
    if (!v8)
    {
      goto LABEL_87;
    }

    v9 = v7;
    v10 = v8;
    result = sub_1AC51F3D8();
    if (result)
    {
      break;
    }

    if (v9 == 97 && v10 == 0xE100000000000000)
    {
      goto LABEL_20;
    }

    if (sub_1AC51F3D8())
    {
      goto LABEL_86;
    }

    if (v9 != 122 || v10 != 0xE100000000000000)
    {
LABEL_20:
      if (sub_1AC51F3D8())
      {
LABEL_86:

LABEL_87:

        return 0;
      }
    }

    v14 = sub_1AC51EE58();
    v16 = v15;

    MEMORY[0x1AC5B4340](v14, v16);
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7AAC(unint64_t a1, unint64_t a2)
{
  if ((sub_1AC4D7588(a1, a2) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v2 = sub_1AC51EF38();
    if (!v3)
    {

      return 0;
    }

    v4 = v2;
    v5 = v3;
    v6 = v2 == 95 && v3 == 0xE100000000000000;
    if (v6 || (sub_1AC51F3D8() & 1) != 0)
    {

      return 0;
    }

    result = sub_1AC51F3D8();
    if (result)
    {
      break;
    }

    if (v4 != 65 || v5 != 0xE100000000000000)
    {
      if (sub_1AC51F3D8())
      {
        goto LABEL_20;
      }

      if (v4 == 90 && v5 == 0xE100000000000000)
      {
        goto LABEL_43;
      }
    }

    if (sub_1AC51F3D8())
    {
LABEL_20:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_78;
      }

      if (v4 != 97 || v5 != 0xE100000000000000)
      {
        if (sub_1AC51F3D8())
        {
          goto LABEL_31;
        }

        if (v4 == 122 && v5 == 0xE100000000000000)
        {
          goto LABEL_73;
        }
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_31:
      result = sub_1AC51F3D8();
      if (result)
      {
        goto LABEL_79;
      }

      if (v4 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_48;
      }

      if ((sub_1AC51F3D8() & 1) == 0)
      {
        if (v4 == 57 && v5 == 0xE100000000000000)
        {
          goto LABEL_73;
        }

LABEL_48:
        v18 = sub_1AC51F3D8();
        v20 = v4 == 46 && v5 == 0xE100000000000000;
        if ((v18 & 1) == 0 || v20)
        {
          goto LABEL_73;
        }

        goto LABEL_56;
      }

      if (v4 == 46 && v5 == 0xE100000000000000)
      {
        goto LABEL_73;
      }

LABEL_56:
      v21 = sub_1AC51F3D8();
      v23 = v4 == 40 && v5 == 0xE100000000000000;
      if ((v21 & 1) == 0 && !v23)
      {
        v24 = sub_1AC51F3D8();
        v26 = v4 == 41 && v5 == 0xE100000000000000;
        if ((v24 & 1) == 0 && !v26)
        {
          sub_1AC51F3D8();
        }
      }

LABEL_73:
      MEMORY[0x1AC5B4330](v4, v5);
    }

    else
    {
LABEL_43:
      MEMORY[0x1AC5B4330](95, 0xE100000000000000);
      v14 = sub_1AC51EE38();
      v16 = v15;

      MEMORY[0x1AC5B4340](v14, v16);
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D7DCC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = 0;
  v28 = 0xE000000000000000;

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v4 = 0;
  while (1)
  {
    v5 = sub_1AC51EF38();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v8 = v6;
    v9 = v5 == 44 && v6 == 0xE100000000000000;
    if (v9 || (sub_1AC51F3D8() & 1) != 0)
    {

      if (!v4)
      {

LABEL_31:

        goto LABEL_32;
      }

      v12 = sub_1AC4D7AAC(v27, v28);
      v14 = v13;

      if (!v14)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v3 + 16);
        sub_1AC4525C0();
        v3 = v18;
      }

      v15 = *(v3 + 16);
      if (v15 >= *(v3 + 24) >> 1)
      {
        sub_1AC4525C0();
        v3 = v19;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v27 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_5;
    }

    v10 = &v27;
    MEMORY[0x1AC5B4330](v7, v8);

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_35:
      v24 = *(v3 + 16);
      sub_1AC4525C0();
      v3 = v25;
      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v10 = sub_1AC4D7AAC(v27, v28);
  v8 = v20;

  if (!v8)
  {
LABEL_32:

    return 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  v21 = *(v3 + 16);
  if (v21 >= *(v3 + 24) >> 1)
  {
    sub_1AC4525C0();
    v3 = v26;
  }

  *(v3 + 16) = v21 + 1;
  v22 = v3 + 16 * v21;
  *(v22 + 32) = v10;
  *(v22 + 40) = v8;
  return v3;
}

double Google_Protobuf_FieldMask.init(protoPaths:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_FieldMask.init(jsonPaths:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 40;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v6 + 16 * v4);
  while (1)
  {
    if (v5 == v4)
    {

      *a2 = v7;
      *(a2 + 8) = xmmword_1AC51F990;
      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v9 = v8 + 2;
    v10 = *(v8 - 1);
    v11 = *v8;

    v12 = sub_1AC4D7AAC(v10, v11);
    v14 = v13;

    v8 = v9;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v7 + 16);
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v18;
      }

      v15 = *(v7 + 16);
      if (v15 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v19;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1AC4D81D4()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    v4 = sub_1AC4D7DCC(result, v3);

    if (v4)
    {
      v5 = *v0;

      *v0 = v4;
    }

    else
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v6 = xmmword_1AC528120;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1AC4D8264()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = (*v0 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559730, &qword_1AC528220);
      sub_1AC4DAA08();
      v15 = sub_1AC51EDC8();
      v17 = v16;

      MEMORY[0x1AC5B4340](v15, v17);

      MEMORY[0x1AC5B4340](34, 0xE100000000000000);

      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v4 - 1);
    v7 = *v4;

    v8 = sub_1AC4D7710(v6, v7);
    v10 = v9;

    if (!v10)
    {

      sub_1AC4777D8();
      OUTLINED_FUNCTION_11();
      *v18 = 3;
      swift_willThrow();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_14();
      sub_1AC4525C0();
      v5 = v13;
    }

    v11 = *(v5 + 16);
    if (v11 >= *(v5 + 24) >> 1)
    {
      sub_1AC4525C0();
      v5 = v14;
    }

    *(v5 + 16) = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v4 += 2;
    ++v1;
  }

  __break(1u);
}

__n128 Google_Protobuf_FieldMask.init<A>(allFieldsOf:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = xmmword_1AC51F990;
  sub_1AC4D8510(&v6, a1, a2, a3);

  sub_1AC4513F8(0, 0xC000000000000000);
  result = v7;
  *a4 = v6;
  *(a4 + 8) = result;
  return result;
}

uint64_t sub_1AC4D8510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AC4D8564(a2, a3, a4);
  v6 = *a1;

  *a1 = v5;
  return result;
}

uint64_t sub_1AC4D8564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v19);
  v3 = sub_1AC4D9754(v19[1]);

  v4 = *(v3 + 16);
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AC4D0AD0(0, v4, 0);
    v5 = v18;
    v6 = (v3 + 65);
    do
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 9);
      if (*v6)
      {
        v9 = *(v6 - 1);
        v10 = *(v6 - 17);
        v11 = *(v6 - 9);
        v7 = sub_1AC51F2E8();
        v8 = v12;
      }

      else
      {
        v13 = *(v6 - 9);
      }

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AC4D0AD0(v14 > 1, v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v7;
      *(v16 + 40) = v8;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void Google_Protobuf_FieldMask.init<A>(fieldNumbers:of:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {

      sub_1AC4513F8(0, 0xC000000000000000);
      *a5 = v9;
      *(a5 + 8) = xmmword_1AC51F990;
      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v10 = sub_1AC4D8858(*(a1 + 8 * v7 + 32), a2, a3, a4);
    if (!v11)
    {

      sub_1AC4D9B2C();
      OUTLINED_FUNCTION_11();
      *v18 = 1;
      swift_willThrow();

      sub_1AC4513F8(0, 0xC000000000000000);

      return;
    }

    v12 = v10;
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_14();
      sub_1AC4525C0();
      v9 = v16;
    }

    v14 = *(v9 + 16);
    if (v14 >= *(v9 + 24) >> 1)
    {
      sub_1AC4525C0();
      v9 = v17;
    }

    *(v9 + 16) = v14 + 1;
    v15 = v9 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    ++v7;
  }

  __break(1u);
}

uint64_t sub_1AC4D8858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v19, a2, a4);
  v5 = v20;
  if (*(v20 + 16) && (v6 = sub_1AC45AA38(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 80 * v6;
    v17 = *(v8 + 8);
    v18 = *v8;
    v9 = *(v8 + 16);
    v16 = *(v8 + 24);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 73);
    v14 = *(v8 + 32);
    sub_1AC4DB1E4(*v8, v17, v9, v16, v14);
    sub_1AC45AC88(v10, v11, v12, v13);

    sub_1AC45AC88(v10, v11, v12, v13);
    sub_1AC4DB20C(v18, v17, v9, v16, v14);
    sub_1AC45AE94(v10, v11, v12, v13);
    if (v13 == 1)
    {
      return sub_1AC51F2E8();
    }
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t Google_Protobuf_FieldMask.addPath<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (static Message.isPathValid(_:)(a1, a2, a4, a5))
  {

    sub_1AC45604C(sub_1AC4525C0);
    v8 = *(*v5 + 16);
    result = sub_1AC455C34(v8, sub_1AC4525C0);
    v10 = *v5;
    *(v10 + 16) = v8 + 1;
    v11 = v10 + 16 * v8;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *v5 = v10;
  }

  else
  {
    sub_1AC4D9B2C();
    OUTLINED_FUNCTION_11();
    *v12 = 0;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_FieldMask.canonical.getter@<D0>(uint64_t a1@<X8>)
{
  v23[0] = *v1;

  sub_1AC4D9B80(v23);
  v3 = *(v23[0] + 16);
  if (v3)
  {
    v4 = (v23[0] + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = (v5 + 16 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      if (*(v4 - 1) != *v7 || *v4 != v8)
      {
        v11 = *(v4 - 1);
        v12 = *v4;
        v13 = *v7;
        v14 = v7[1];
        if ((sub_1AC51F3D8() & 1) == 0)
        {
          v23[0] = v9;
          v23[1] = v8;

          MEMORY[0x1AC5B4340](46, 0xE100000000000000);
          v15 = sub_1AC51EFA8();

          if ((v15 & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = *(v5 + 16) + 1;
LABEL_19:
              sub_1AC4525C0();
              v5 = v21;
            }

LABEL_12:
            OUTLINED_FUNCTION_5_8();
            if (v18)
            {
              OUTLINED_FUNCTION_2_0(v17);
              sub_1AC4525C0();
              v5 = v20;
            }

            OUTLINED_FUNCTION_4_9();
            goto LABEL_15;
          }
        }
      }

LABEL_15:
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_21;
      }
    }

    v16 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_21:

  *a1 = v5;
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_FieldMask.union(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v29 = MEMORY[0x1E69E7CD0];
  v28 = *v2;

  sub_1AC4865D0(v4);
  v5 = *(v28 + 16);
  if (v5)
  {
    v6 = 0;
    v27 = a2;
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v28 + 16))
    {
      v8 = (v28 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      if (*(v29 + 16))
      {
        v11 = *(v29 + 40);
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        v12 = sub_1AC51F4C8();
        v13 = ~(-1 << *(v29 + 32));
        while (1)
        {
          v14 = v12 & v13;
          if (((*(v29 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_9((*(v29 + 48) + 16 * v14));
          v16 = v16 && v15 == v9;
          if (!v16)
          {
            v17 = OUTLINED_FUNCTION_3_11();
            v12 = v14 + 1;
            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_84();
      sub_1AC4DA74C(v18, v19, v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v7 + 16);
        OUTLINED_FUNCTION_11_8();
        sub_1AC4525C0();
        v7 = v25;
      }

      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_2_0(v21);
        sub_1AC4525C0();
        v7 = v26;
      }

      *(v7 + 16) = v22 + 1;
      v23 = v7 + 16 * v22;
      *(v23 + 32) = v10;
      *(v23 + 40) = v9;
LABEL_19:
      if (++v6 == v5)
      {

        a2 = v27;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *a2 = v7;
    *(a2 + 8) = xmmword_1AC51F990;
  }
}

void Google_Protobuf_FieldMask.intersect(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *v2;

  v9 = sub_1AC4D90D4(v8);
  v37 = MEMORY[0x1E69E7CD0];
  v36 = *(v7 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_10_9();
    v10 = MEMORY[0x1E69E7CC0];
    v34 = v7;
    while (v4 < *(v7 + 16))
    {
      if (v9[2])
      {
        v11 = (v35 + 16 * v4);
        v13 = *v11;
        v12 = v11[1];
        v14 = v9[5];
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_12_9();
        do
        {
          OUTLINED_FUNCTION_9_9(v15);
          if ((v16 & 1) == 0)
          {

            goto LABEL_27;
          }

          OUTLINED_FUNCTION_8_9((v9[6] + 16 * v3));
          v18 = v18 && v17 == v12;
          if (v18)
          {
            break;
          }

          v19 = OUTLINED_FUNCTION_3_11();
          v15 = v3 + 1;
        }

        while ((v19 & 1) == 0);
        if (v37[2])
        {
          v20 = v37[5];
          sub_1AC51F468();
          OUTLINED_FUNCTION_84();
          sub_1AC51EEB8();
          sub_1AC51F4C8();
          OUTLINED_FUNCTION_7_7();
          while (1)
          {
            OUTLINED_FUNCTION_6_9(v21);
            if ((v22 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_9((v37[6] + 16 * v7));
            if (!v18 || v23 != v12)
            {
              v25 = OUTLINED_FUNCTION_3_11();
              v21 = v7 + 1;
              if ((v25 & 1) == 0)
              {
                continue;
              }
            }

            v7 = v34;
            goto LABEL_27;
          }
        }

        OUTLINED_FUNCTION_84();
        sub_1AC4DA74C(v26, v27, v28);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_14();
          sub_1AC4525C0();
          v10 = v31;
        }

        v7 = v34;
        OUTLINED_FUNCTION_5_8();
        if (v30)
        {
          OUTLINED_FUNCTION_2_0(v29);
          sub_1AC4525C0();
          v10 = v32;
        }

        OUTLINED_FUNCTION_4_9();
      }

LABEL_27:
      if (++v4 == v36)
      {

        a2 = v33;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_30:
    *a2 = v10;
    *(a2 + 8) = xmmword_1AC51F990;
  }
}

uint64_t sub_1AC4D90D4(uint64_t a1)
{
  result = MEMORY[0x1AC5B45E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1AC4DA74C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void Google_Protobuf_FieldMask.subtract(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *v2;

  v9 = sub_1AC4D90D4(v8);
  v37 = MEMORY[0x1E69E7CD0];
  v36 = *(v7 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_10_9();
    v10 = MEMORY[0x1E69E7CC0];
    v34 = v7;
    while (v4 < *(v7 + 16))
    {
      v11 = (v35 + 16 * v4);
      v13 = *v11;
      v12 = v11[1];
      if (v9[2])
      {
        v14 = v9[5];
        sub_1AC51F468();

        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_12_9();
        while (1)
        {
          OUTLINED_FUNCTION_9_9(v15);
          if ((v16 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_9((v9[6] + 16 * v3));
          v18 = v18 && v17 == v12;
          if (!v18)
          {
            v19 = OUTLINED_FUNCTION_3_11();
            v15 = v3 + 1;
            if ((v19 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      if (v37[2])
      {
        v20 = v37[5];
        sub_1AC51F468();
        OUTLINED_FUNCTION_84();
        sub_1AC51EEB8();
        sub_1AC51F4C8();
        OUTLINED_FUNCTION_7_7();
        while (1)
        {
          OUTLINED_FUNCTION_6_9(v21);
          if ((v22 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_9((v37[6] + 16 * v7));
          if (!v18 || v23 != v12)
          {
            v25 = OUTLINED_FUNCTION_3_11();
            v21 = v7 + 1;
            if ((v25 & 1) == 0)
            {
              continue;
            }
          }

          v7 = v34;
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_84();
      sub_1AC4DA74C(v26, v27, v28);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_14();
        sub_1AC4525C0();
        v10 = v31;
      }

      v7 = v34;
      OUTLINED_FUNCTION_5_8();
      if (v30)
      {
        OUTLINED_FUNCTION_2_0(v29);
        sub_1AC4525C0();
        v10 = v32;
      }

      OUTLINED_FUNCTION_4_9();
LABEL_28:
      if (++v4 == v36)
      {

        a2 = v33;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *a2 = v10;
    *(a2 + 8) = xmmword_1AC51F990;
  }
}

Swift::Bool __swiftcall Google_Protobuf_FieldMask.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = (*v1 + 40);
  v14 = -*(*v1 + 16);
  v6 = -1;
  while (1)
  {
    v7 = v14 + v6;
    if (v14 + v6 == -1)
    {
      goto LABEL_12;
    }

    if (++v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v5 - 1);
    v8 = *v5;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5B4340](46, 0xE100000000000000);
    v10 = sub_1AC51EFA8();

    if ((v10 & 1) != 0 || (v9 == countAndFlagsBits ? (v11 = v8 == object) : (v11 = 0), v11))
    {

LABEL_12:
      LOBYTE(a1._countAndFlagsBits) = v7 != -1;
      return a1._countAndFlagsBits;
    }

    v5 += 2;
    v12 = sub_1AC51F3D8();

    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return a1._countAndFlagsBits;
}

uint64_t Google_Protobuf_FieldMask.isValid<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v4;
  (*(v13 + 16))(v14, v13);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = v11;
  LOBYTE(a4) = sub_1AC4D9618(sub_1AC4DA898, v16, v12);
  (*(v8 + 8))(v11, a2);
  return a4 & 1;
}

BOOL sub_1AC4D9618(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v10[0] = *(v5 - 1);
    v10[1] = v7;

    v8 = a1(v10);

    if (v3)
    {
      break;
    }

    v5 += 2;
  }

  while ((v8 & 1) != 0);
  return v6 == 0;
}

uint64_t FieldMaskError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4D9754(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1AC4D0AB0(0, v1, 0);
  v2 = v42;
  result = sub_1AC4DB234(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v29 = v5;
  v30 = v1;
  v28 = v3 + 72;
  v31 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v33 = v8;
    v34 = v5;
    v32 = v6;
    v11 = *(v3 + 56);
    v12 = v3;
    v13 = *(*(v3 + 48) + 8 * v7);
    v14 = (v11 + 80 * v7);
    memcpy(__dst, v14, 0x4AuLL);
    memcpy(__src, v14, sizeof(__src));
    v40 = v13;
    memcpy(v41, __src, 0x4AuLL);
    v35 = *&v41[5];
    v36 = *&v41[7];
    v15 = LOBYTE(v41[9]);
    v16 = BYTE1(v41[9]);
    sub_1AC4DB274(__dst, v37);
    sub_1AC45AC88(v36, *(&v36 + 1), v15, v16);
    result = sub_1AC4DB2D0(&v40);
    v42 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1AC4D0AB0(v17 > 1, v18 + 1, 1);
      v2 = v42;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 40 * v18;
    *(v19 + 32) = v35;
    *(v19 + 48) = v36;
    *(v19 + 64) = v15;
    *(v19 + 65) = v16;
    v20 = 1 << *(v12 + 32);
    if (v7 >= v20)
    {
      goto LABEL_24;
    }

    v3 = v12;
    v9 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v3 + 36) != v34)
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v20 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1AC4DB338(v7, v34, v32 & 1);
          v20 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1AC4DB338(v7, v34, v32 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v33 + 1;
    v7 = v20;
    v5 = v29;
    if (v33 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1AC4D9B2C()
{
  result = qword_1EB559720;
  if (!qword_1EB559720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559720);
  }

  return result;
}

uint64_t sub_1AC4D9B80(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AC4DB1D0(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AC4D9BEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC4D9BEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AC51F3A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1AC51F098();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1AC4D9DA8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AC4D9CE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AC4D9CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1AC51F3D8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1AC4D9DA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1AC51F3D8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1AC51F3D8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1AC51F3D8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1AC48EF10();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1AC48EF10();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1AC4DA3DC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1AC4DA2B0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1AC4DA2B0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1AC4DA60C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1AC4DA3DC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1AC4DA3DC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1AC48F564(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1AC51F3D8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1AC48F564(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1AC51F3D8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1AC4DA580(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AC4DA60C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_1AC4DA620(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1AC4DA64C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558290, &qword_1AC528230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

BOOL sub_1AC4DA74C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1AC51F468();
  sub_1AC51EEB8();
  v9 = sub_1AC51F4C8();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1AC51F3D8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1AC4DACC8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1AC4DA898(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_1AC4EDE48(*a1, a1[1], v2, v3) & 1;
}

unint64_t sub_1AC4DA8D8()
{
  result = qword_1EB559728;
  if (!qword_1EB559728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559728);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FieldMaskError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC4DAA08()
{
  result = qword_1EB559738;
  if (!qword_1EB559738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559730, &qword_1AC528220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559738);
  }

  return result;
}

uint64_t sub_1AC4DAA6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  result = sub_1AC51F2A8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1AC4F3BDC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1AC51F468();
    sub_1AC51EEB8();
    result = sub_1AC51F4C8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC4DACC8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1AC4DAA6C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1AC4DAF88(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1AC51F468();
      sub_1AC51EEB8();
      result = sub_1AC51F4C8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1AC51F3D8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1AC4DAE30();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1AC51F3F8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1AC4DAE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  v2 = *v0;
  v3 = sub_1AC51F298();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AC4DAF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559740, &qword_1AC528228);
  result = sub_1AC51F2A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1AC51F468();

        sub_1AC51EEB8();
        result = sub_1AC51F4C8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1AC4DB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_1AC45AC88(a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1AC4DB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_1AC45AE94(a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1AC4DB234(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1AC51F288();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1AC4DB2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559748, &qword_1AC528238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC4DB338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double Google_Protobuf_ListValue.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_ListValue.init(values:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

void sub_1AC4DB3C8(unsigned __int8 *a1)
{
  v3 = sub_1AC51EE28();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *a1;
  v6 = a1[1];
  v84 = a1[2];
  v85 = v6;
  v83 = a1[3];
  v7 = *v1;
  v97 = MEMORY[0x1E69E7CC0];
  v98 = 256;
  sub_1AC45FA3C(91, 0xE100000000000000);
  v8 = 0;
  v9 = *(v7 + 16);
  v87 = v7;
  v88 = v9;
  v10 = v7 + 40;
  v11 = "";
  while (1)
  {
    if (v88 == v8)
    {
      sub_1AC45FA3C(93, 0xE100000000000000);
      v92 = v97;

      sub_1AC51EE18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
      sub_1AC45A8C0();
      sub_1AC51EE08();
      v67 = v66;

      if (v67)
      {

        return;
      }

      goto LABEL_30;
    }

    if (v8 >= *(v87 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v89 = v8;
    v12 = *(v10 - 8);
    v13 = *v10;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    v17 = *(v10 + 24);
    v16 = *(v10 + 32);
    v18 = OUTLINED_FUNCTION_0_15();
    sub_1AC48541C(v18, v19, v20, v21);
    v90 = v17;
    v91 = v16;
    sub_1AC4578F4(v17, v16);
    sub_1AC45FD18(v11);
    if ((~v14 & 0x3000000000000000) == 0 && v15 == 255)
    {
      break;
    }

    switch((v14 >> 60) & 3 | (4 * (v15 & 1u)))
    {
      case 1uLL:
        if ((~v12 & 0x7FF0000000000000) != 0)
        {
          v42 = sub_1AC51F188();
          sub_1AC45FA3C(v42, v43);
          goto LABEL_21;
        }

        sub_1AC4777D8();
        OUTLINED_FUNCTION_11();
        *v81 = 6;
        swift_willThrow();
        v69 = OUTLINED_FUNCTION_0_15();
        goto LABEL_26;
      case 2uLL:
        v34 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v34, v35, v36, v37);
        sub_1AC45AEA4(v12, v13);
        v38 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v38, v39, v40, v41);
        sub_1AC4513F8(v90, v91);
        goto LABEL_18;
      case 3uLL:
        if (v12)
        {
          v22 = "true";
        }

        else
        {
          v22 = "false";
        }

        goto LABEL_20;
      case 4uLL:
        v96 = &off_1F211D2A8;
        v92 = v12;
        v93 = v13;
        v94 = v14;
        v95 = &type metadata for Google_Protobuf_Struct;
        __swift_project_boxed_opaque_existential_1(&v92, &type metadata for Google_Protobuf_Struct);
        v100 = v99;
        v101 = v85;
        v102 = v84;
        v103 = v83;
        v23 = OUTLINED_FUNCTION_0_15();
        sub_1AC48541C(v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v27, v28, v29, v30);
        v31 = v86;
        v32 = sub_1AC4DC260(&v100);
        goto LABEL_16;
      case 5uLL:
        v96 = &off_1F2121388;
        v92 = v12;
        v93 = v13;
        v94 = v14 & 0xCFFFFFFFFFFFFFFFLL;
        v95 = &type metadata for Google_Protobuf_ListValue;
        __swift_project_boxed_opaque_existential_1(&v92, &type metadata for Google_Protobuf_ListValue);
        v100 = v99;
        v101 = v85;
        v102 = v84;
        v103 = v83;
        v44 = OUTLINED_FUNCTION_0_15();
        sub_1AC48541C(v44, v45, v46, v47);
        v48 = OUTLINED_FUNCTION_1_15();
        sub_1AC485440(v48, v49, v50, v51);
        v31 = v86;
        v32 = sub_1AC4DB3C8(&v100);
LABEL_16:
        v86 = v31;
        if (v31)
        {
          v73 = OUTLINED_FUNCTION_0_15();
          sub_1AC4854E8(v73, v74, v75, v76);
          v77 = OUTLINED_FUNCTION_0_15();
          sub_1AC4854E8(v77, v78, v79, v80);
          sub_1AC4513F8(v90, v91);

          __swift_destroy_boxed_opaque_existential_1(&v92);
          return;
        }

        v52 = v32;
        v53 = v33;
        __swift_destroy_boxed_opaque_existential_1(&v92);

        sub_1AC45FA3C(v52, v53);
        v54 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v54, v55, v56, v57);
        sub_1AC4513F8(v90, v91);

LABEL_18:
        v58 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v58, v59, v60, v61);
LABEL_22:
        v10 += 48;
        v8 = v89 + 1;
        v11 = ",";
        break;
      default:
        v22 = "null";
LABEL_20:
        sub_1AC45FD18(v22);
LABEL_21:
        v62 = OUTLINED_FUNCTION_0_15();
        sub_1AC4854E8(v62, v63, v64, v65);
        sub_1AC4513F8(v90, v91);
        goto LABEL_22;
    }
  }

  sub_1AC4777D8();
  OUTLINED_FUNCTION_11();
  *v68 = 5;
  swift_willThrow();
  v69 = OUTLINED_FUNCTION_1_15();
  v72 = -1;
LABEL_26:
  sub_1AC4854E8(v69, v70, v71, v72);
  sub_1AC4513F8(v90, v91);
}

uint64_t sub_1AC4DB858(uint64_t *a1)
{
  result = sub_1AC457638();
  if ((result & 1) == 0)
  {
    result = sub_1AC458E74(0x5Bu);
    if (!v1)
    {
      sub_1AC458FC0();
      if (sub_1AC459020(0x5Du))
      {
        return sub_1AC45A9B0();
      }

      else
      {
        while (1)
        {
          sub_1AC4DE11C();
          v4 = OUTLINED_FUNCTION_3_12();
          sub_1AC48541C(v4, v5, v6, v7);
          sub_1AC4578F4(0, 0xC000000000000000);
          sub_1AC4D9A9C();
          v8 = *(*v16 + 16);
          sub_1AC4D9A0C(v8);
          v9 = *v16;
          *(v9 + 16) = v8 + 1;
          v10 = v9 + 48 * v8;
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
          *(v10 + 48) = 0x3000000000000000;
          *(v10 + 56) = -1;
          *(v10 + 64) = xmmword_1AC51F990;
          *v16 = v9;
          sub_1AC458F28();
          if (sub_1AC45E184())
          {
            v11 = a1[2];
            if (*(*a1 + v11) == 93)
            {
              break;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            *v14 = xmmword_1AC51FB60;
LABEL_12:
            swift_willThrow();
            sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
            return sub_1AC4513F8(0, 0xC000000000000000);
          }

          v12 = a1[2];
          if (*(*a1 + v12) != 44)
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            *v15 = 0;
            v15[1] = 0;
            goto LABEL_12;
          }

          v13 = sub_1AC458F9C(v12, *a1, a1[1]);
          sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
          sub_1AC4513F8(0, 0xC000000000000000);
          a1[2] = v13;
        }

        a1[2] = sub_1AC458F9C(v11, *a1, a1[1]);
        sub_1AC45A9B0();
        sub_1AC4854E8(0, 0, 0x3000000000000000uLL, 255);
        return sub_1AC4513F8(0, 0xC000000000000000);
      }
    }
  }

  return result;
}

unint64_t Google_Protobuf_ListValue.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 48 * result;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v9 = *(v3 + 56);
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  sub_1AC48541C(v4, v5, v6, v9);

  return sub_1AC4578F4(v7, v8);
}

double sub_1AC4DBB8C@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v12 = *a1;
  v13 = *(a1 + 1);
  Google_Protobuf_ListValue.subscript.getter(v4, &v8);
  v5 = v9;
  v6 = v10;
  *a3 = v8;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  result = v11[0];
  *(a3 + 32) = *v11;
  return result;
}

void sub_1AC4DBBF8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = v5;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  sub_1AC48541C(v9[0], v4, v5, v8);
  sub_1AC4578F4(v6, v7);
  Google_Protobuf_ListValue.subscript.setter(v9, v3);
}

void Google_Protobuf_ListValue.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC488FC8(v10);
  v10 = v18;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v10 + 16) > a2)
  {
    v11 = v10 + 48 * a2;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 72);
    *(v11 + 32) = v4;
    *(v11 + 40) = v5;
    *(v11 + 48) = v6;
    v17 = *(v11 + 56);
    *(v11 + 56) = v7;
    *(v11 + 64) = v8;
    *(v11 + 72) = v9;
    sub_1AC4854E8(v12, v13, v14, v17);
    sub_1AC4513F8(v15, v16);
    *v2 = v10;
    return;
  }

LABEL_7:
  __break(1u);
}

void (*Google_Protobuf_ListValue.subscript.modify(void (**a1)(uint64_t **a1, char a2), unint64_t a2))(uint64_t **a1, char a2)
{
  result = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = result;
  *(result + 6) = a2;
  *(result + 7) = v2;
  v6 = *v2;
  *(result + 8) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    v7 = result;
    v8 = v6 + 48 * a2;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 64);
    v13 = *(v8 + 72);
    v14 = *(v8 + 56);
    *v7 = v9;
    *(v7 + 1) = v10;
    *(v7 + 2) = v11;
    *(v7 + 24) = v14;
    *(v7 + 4) = v12;
    *(v7 + 5) = v13;
    sub_1AC48541C(v9, v10, v11, v14);
    sub_1AC4578F4(v12, v13);
    return sub_1AC4DBDE8;
  }

  __break(1u);
  return result;
}

void sub_1AC4DBDE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[8];
  if (a2)
  {
    sub_1AC48541C(**a1, (*a1)[1], (*a1)[2], *(*a1 + 24));
    sub_1AC4578F4(v4, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[8];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC488FC8(v2[8]);
      v7 = v14;
    }

    v8 = v2[6];
    if (*(v7 + 16) > v8)
    {
      OUTLINED_FUNCTION_2_9(v8);
      *v16 = v7;
      v9 = v2[4];
      v10 = v2[5];
      sub_1AC4854E8(*v2, v2[1], v2[2], *(v2 + 24));
      sub_1AC4513F8(v9, v10);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v11 = (*a1)[8];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2[8];
  if ((v12 & 1) == 0)
  {
LABEL_13:
    sub_1AC488FC8(v7);
    v7 = v15;
  }

  v13 = v2[6];
  if (*(v7 + 16) <= v13)
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_9(v13);
  *v16 = v7;
LABEL_9:

  free(v2);
}

uint64_t Google_Protobuf_Struct.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1AC51ED58();
  v49 = *(a1 + 16);
  if (v49)
  {
    v4 = 0;
    v5 = (a1 + 48);
    v48 = a1;
    while (v4 < *(a1 + 16))
    {
      v50 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      v11 = *(v5 + 24);
      v13 = v5[4];
      v12 = v5[5];

      v14 = OUTLINED_FUNCTION_54();
      sub_1AC48541C(v14, v15, v10, v11);
      sub_1AC4578F4(v13, v12);
      v16 = OUTLINED_FUNCTION_54();
      sub_1AC48541C(v16, v17, v10, v11);
      v51 = v13;
      v52 = v12;
      sub_1AC4578F4(v13, v12);
      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_1AC4EFE58(v7, v6);
      if (__OFADD__(*(v3 + 16), (v19 & 1) == 0))
      {
        goto LABEL_15;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
      if (sub_1AC51F338())
      {
        v22 = sub_1AC4EFE58(v7, v6);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_17;
        }

        v20 = v22;
      }

      if (v21)
      {

        OUTLINED_FUNCTION_2_10();
        v26 = v24 + v20 * v25;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        v31 = *(v26 + 40);
        *v26 = v8;
        *(v26 + 8) = v9;
        *(v26 + 16) = v10;
        v32 = *(v26 + 24);
        *(v26 + 24) = v11;
        *(v26 + 32) = v51;
        *(v26 + 40) = v52;
        sub_1AC4854E8(v27, v28, v29, v32);
        sub_1AC4513F8(v30, v31);
        v33 = OUTLINED_FUNCTION_54();
        sub_1AC4854E8(v33, v34, v10, v11);
        sub_1AC4513F8(v51, v52);
      }

      else
      {
        *(v3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v35 = (*(v3 + 48) + 16 * v20);
        *v35 = v7;
        v35[1] = v6;
        OUTLINED_FUNCTION_2_10();
        v38 = v36 + v20 * v37;
        *v38 = v8;
        *(v38 + 8) = v9;
        *(v38 + 16) = v10;
        *(v38 + 24) = v11;
        *(v38 + 32) = v51;
        *(v38 + 40) = v52;
        v39 = OUTLINED_FUNCTION_54();
        sub_1AC4854E8(v39, v40, v41, v42);
        sub_1AC4513F8(v51, v52);
        v43 = *(v3 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_16;
        }

        *(v3 + 16) = v45;
      }

      v4 = v50 + 1;
      v5 += 8;
      a1 = v48;
      if (v49 == v50 + 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1AC51F408();
    __break(1u);
  }

  else
  {
LABEL_13:

    *a2 = v3;
    *(a2 + 8) = xmmword_1AC51F990;
  }

  return result;
}

uint64_t sub_1AC4DC260(_BYTE *a1)
{
  v3 = sub_1AC51EE28();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *a1;
  LOBYTE(v8) = a1[1];
  LOBYTE(v9) = a1[2];
  LOBYTE(a1) = a1[3];
  v51 = *v1;

  sub_1AC45A78C();
  v12 = v11;
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  v15 = (v14 + 1);
  v42 = v6;
  if (v14 >= v13 >> 1)
  {
LABEL_33:
    sub_1AC45A78C();
    v12 = v38;
  }

  v16 = 0;
  v44 = 0;
  v43 = 0;
  v45 = 0;
  *(v12 + 16) = v15;
  *(v12 + v14 + 32) = 123;
  v48 = 0uLL;
  *&v49[8] = v12;
  v14 = v51 + 64;
  v17 = *(v51 + 64);
  v18 = 1 << *(v51 + 32);
  v19 = -1;
  *v49 = 256;
  *&v49[16] = 256;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v49[18] = v7;
  v49[19] = v8;
  v49[20] = v9;
  v49[21] = a1;
  v22 = 1;
  if (v20)
  {
    while (1)
    {
      v7 = v16;
LABEL_9:
      v23 = __clz(__rbit64(v20)) | (v7 << 6);
      v24 = *(v51 + 48) + 16 * v23;
      a1 = *v24;
      v8 = *(v24 + 8);
      v25 = (*(v51 + 56) + 48 * v23);
      v27 = v25[1];
      v26 = v25[2];
      v50[0] = *v25;
      v50[1] = v27;
      v50[2] = v26;
      if (v22)
      {
        *&v48 = ",";
        *(&v48 + 1) = 1;
        v45 = 2;
        *v49 = 2;

        sub_1AC4DD110(v50, &v46);
        v44 = ",";
        v43 = 1;
        v9 = &v48;
      }

      else
      {

        sub_1AC4DD110(v50, &v46);
        v9 = &v48;
        sub_1AC45FE50(v44, v43, v45);
      }

      sub_1AC45AEA4(a1, v8);

      sub_1AC45FE50(":", 1, 2);
      v28 = v49[21] ? 0x1000000 : 0;
      v29 = v49[20] ? 0x10000 : 0;
      v30 = v49[19] ? 256 : 0;
      v31 = sub_1AC4DE928(v30 | v49[18] | v29 | v28);
      if (v2)
      {
        break;
      }

      v20 &= v20 - 1;
      v15 = &v49[8];
      sub_1AC45FA3C(v31, v32);
      sub_1AC4DD16C(v50);
      v22 = 0;
      v16 = v7;
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    sub_1AC4DD16C(v50);

    v46 = v48;
    v47[0] = *v49;
    *(v47 + 14) = *&v49[14];
    sub_1AC4DD1C0(&v46);
    return a1;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v21)
      {
        break;
      }

      v20 = *(v14 + 8 * v7);
      ++v16;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    v33 = *&v49[8];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v33 + 16);
      sub_1AC45A78C();
      v33 = v40;
    }

    v34 = *(v33 + 16);
    if (v34 >= *(v33 + 24) >> 1)
    {
      sub_1AC45A78C();
      v33 = v41;
    }

    *(v33 + 16) = v34 + 1;
    *(v33 + v34 + 32) = 125;
    *&v46 = v33;

    sub_1AC51EE18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    sub_1AC45A8C0();
    a1 = sub_1AC51EE08();
    v36 = v35;

    if (v36)
    {

      return a1;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4DC688(uint64_t *a1)
{
  v3 = v1;
  result = sub_1AC458E74(0x7Bu);
  if (!v2)
  {
    sub_1AC458FC0();
    if (sub_1AC459020(0x7Du))
    {
      return sub_1AC45A9B0();
    }

    while (1)
    {
      v6 = sub_1AC45993C();
      v8 = v7;
      sub_1AC458F28();
      if (!sub_1AC45E184())
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_1_16();
      if (v11 != 58)
      {

        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        *v22 = 0;
        v22[1] = 0;
        return swift_willThrow();
      }

      a1[2] = sub_1AC458F9C(v9, v10, a1[1]);
      v39 = 0uLL;
      *&v40 = 0x3000000000000000;
      BYTE8(v40) = -1;
      v41 = xmmword_1AC51F990;
      sub_1AC4DE11C(a1);
      v42[0] = v39;
      v42[1] = v40;
      v42[2] = v41;
      sub_1AC4DD110(v42, v38);
      v12 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *v3;
      sub_1AC4F00B4(v42, v6, v8);

      *v3 = v38[0];
      sub_1AC458F28();
      if (sub_1AC45E184())
      {
        v13 = OUTLINED_FUNCTION_1_16();
        if (v15 == 125)
        {
          v25 = sub_1AC458F9C(v13, v14, a1[1]);
          a1[2] = v25;
          v33 = a1[11];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            __break(1u);
          }

          else
          {
            a1[11] = v35;
            if (a1[4] >= v35)
            {
              return OUTLINED_FUNCTION_5_9(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, 0, 0xC000000000000000, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v39, *(&v39 + 1), v40, SBYTE8(v40), v41, *(&v41 + 1));
            }
          }

          result = sub_1AC51F388();
          __break(1u);
          return result;
        }
      }

      sub_1AC458F28();
      if (!sub_1AC45E184())
      {
        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        *v23 = xmmword_1AC51FB60;
LABEL_16:
        v25 = swift_willThrow();
        return OUTLINED_FUNCTION_5_9(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, 0, 0xC000000000000000, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v39, *(&v39 + 1), v40, SBYTE8(v40), v41, *(&v41 + 1));
      }

      v16 = OUTLINED_FUNCTION_1_16();
      if (v18 != 44)
      {
        sub_1AC477660();
        OUTLINED_FUNCTION_11();
        *v24 = 0;
        v24[1] = 0;
        goto LABEL_16;
      }

      v19 = sub_1AC458F9C(v16, v17, a1[1]);
      v20 = v41;
      sub_1AC4854E8(v39, *(&v39 + 1), v40, SBYTE8(v40));
      sub_1AC4513F8(v20, *(&v20 + 1));
      a1[2] = v19;
    }

    sub_1AC477660();
    OUTLINED_FUNCTION_11();
    *v21 = xmmword_1AC51FB60;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_Struct.init(fields:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AC51ED58();

  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Struct.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*v3 + 16) && (sub_1AC4EFE58(a1, a2), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_10();
    v9 = v7 + v6 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    *a3 = *v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    v15 = *(v9 + 24);
    *(a3 + 24) = v15;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
    sub_1AC48541C(v10, v11, v12, v15);

    sub_1AC4578F4(v13, v14);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    result = 1.49166815e-154;
    *(a3 + 16) = xmmword_1AC528290;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

double sub_1AC4DCAC4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v10 = *a1;
  v11 = *(a1 + 1);
  Google_Protobuf_Struct.subscript.getter(v5, v4, v8);
  v6 = v8[1];
  *a3 = v8[0];
  a3[1] = v6;
  result = v9[0];
  a3[2] = *v9;
  return result;
}

void sub_1AC4DCB20(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  *&v10 = *a1;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;

  sub_1AC4DD08C(v10, v5, v6, v7, v8, v9, sub_1AC48541C, sub_1AC4578F4);
  Google_Protobuf_Struct.subscript.setter(&v10, v3, v4);
}

void Google_Protobuf_Struct.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  if ((v6 & 0x3000000000000000) == 0x2000000000000000 && (v8 = *(a1 + 24) == 255, v7 == 255))
  {
    sub_1AC4DCF40(a2, a3, &v18);

    OUTLINED_FUNCTION_0_16();
    sub_1AC4DD08C(v9, v10, v11, v12, v13, v14, v15, sub_1AC4513F8);
  }

  else
  {
    v18 = *a1;
    v19 = v6;
    LOBYTE(v20) = v7;
    v21 = a1[2];
    v16 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1AC4F00B4(&v18, a2, a3);

    *v3 = v17;
  }
}

void (*Google_Protobuf_Struct.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0xD8uLL);
  *a1 = v7;
  v7[25] = a3;
  v7[26] = v3;
  v7[24] = a2;
  if (*(*v3 + 16) && (sub_1AC4EFE58(a2, a3), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_10();
    v12 = v10 + v9 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    v18 = *(v12 + 24);
    v7[12] = *v12;
    v7[13] = v14;
    v7[14] = v15;
    *(v7 + 120) = v18;
    v7[16] = v16;
    v7[17] = v17;
    sub_1AC48541C(v13, v14, v15, v18);
    sub_1AC4578F4(v16, v17);
  }

  else
  {
    v7[12] = 0;
    v7[13] = 0;
    *(v7 + 7) = xmmword_1AC528290;
    v7[16] = 0;
    v7[17] = 0;
  }

  return sub_1AC4DCDAC;
}

void sub_1AC4DCDAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 200);
  v3 = *(*a1 + 208);
  v5 = *(*a1 + 192);
  v6 = *(*a1 + 112);
  if (a2)
  {
    *v2 = *(v2 + 96);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 128);

    sub_1AC4DD01C(v2, v2 + 144);
    sub_1AC4C96CC(v2, v5, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);
    v9 = *(v2 + 112);
    v10 = *(v2 + 120);
    v11 = *(v2 + 128);
    v12 = *(v2 + 136);
    OUTLINED_FUNCTION_0_16();
    sub_1AC4DD08C(v13, v14, v15, v16, v17, v18, v19, sub_1AC4513F8);
  }

  else
  {
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v6;
    *(v2 + 80) = *(v2 + 128);

    sub_1AC4C96CC((v2 + 48), v5, v4);
  }

  free(v2);
}

double sub_1AC4DCE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1AC4EFE58(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
    v11 = OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_6_10(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_1AC4CA7D4((*(v6 + 56) + 32 * v9), a3);
    sub_1AC51F358();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1AC4DCF40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1AC4EFE58(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
    v11 = OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_6_10(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
    OUTLINED_FUNCTION_2_10();
    v21 = v19 + v9 * v20;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    *a3 = *v21;
    *(a3 + 16) = v22;
    *(a3 + 24) = v23;
    *(a3 + 32) = *(v21 + 32);
    sub_1AC51F358();
    *v4 = v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    result = 1.49166815e-154;
    *(a3 + 16) = xmmword_1AC528290;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AC4DD01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559758, &qword_1AC5282A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AC4DD08C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t))
{
  if ((a3 & 0x3000000000000000) != 0x2000000000000000 || a4 != 255)
  {
    a7();

    a8(a5, a6);
  }
}

uint64_t sub_1AC4DD214(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      return v6;
    }

    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1AC4D0918(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v23;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v20 = v3;
    v21 = v11;
    v12 = 15;
    v19 = v10;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v12;
      if ((v12 & 0xC) == v10)
      {
        v13 = sub_1AC488FF0(v12, v3, a2);
      }

      v14 = v13 >> 16;
      if (v13 >> 16 >= v21)
      {
        goto LABEL_34;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = sub_1AC51EF88();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(v22 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v15 = sub_1AC51F308();
        }

        v16 = *(v15 + v14);
      }

      v23 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AC4D0918(v17 > 1, v18 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v10 = v19;
      v3 = v20;
      if ((v12 & 0xC) == v19)
      {
        v12 = sub_1AC488FF0(v12, v20, a2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v21 <= v12 >> 16)
        {
          goto LABEL_35;
        }

        v12 = sub_1AC51EF58();
      }

      else
      {
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      ++v8;
      if (v4 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v5 = sub_1AC51EF48();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4DD45C(unint64_t a1, unint64_t a2)
{
  v6 = sub_1AC4DD214(a1, a2);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 <= 0x13)
  {
    goto LABEL_3;
  }

  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v9 = v6 + 32;
  v12 = vdupq_n_s64(0xFFFFFFFFFFFFFFC6);
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFFF6);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v13, vaddq_s64(v11, v12)), vcgtq_u64(v13, vaddq_s64(v10, v12))))))
  {
    goto LABEL_3;
  }

  if (*(v6 + 64) != 45)
  {
    goto LABEL_3;
  }

  v16 = 1000 * v11.i64[0] + 100 * v11.i64[1] + 10 * v10.i64[0] + v10.i64[1];
  v17 = v16 - 53328;
  if (v16 == 53328)
  {
    goto LABEL_3;
  }

  result = sub_1AC4DDAE8(*(v6 + 72), *(v6 + 80), 48, 57);
  if (v2)
  {

    return v4;
  }

  v18 = v7[2];
  if (v18 < 8)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = result;
  if (v7[11] != 45 || (result - 13) <= 0xFFFFFFFFFFFFFFF3)
  {
    goto LABEL_3;
  }

  if (v18 == 8)
  {
    goto LABEL_43;
  }

  if (v18 < 0xA)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1AC4DDAE8(v7[12], v7[13], 48, 57);
  v21 = v7[2];
  if (v21 < 0xB)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v7[14] != 84)
  {
    goto LABEL_3;
  }

  v4 = result;
  LOBYTE(v20) = result - 32;
  if ((result - 32) <= 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_3;
  }

  if (v21 == 11)
  {
    goto LABEL_95;
  }

  if (v21 < 0xD)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = sub_1AC4DDAE8(v7[15], v7[16], 48, 57);
  v21 = v7[2];
  if (v21 < 0xE)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v5 = result;
  v20 = v7[17];
  if (v20 != 58 || result >= 24)
  {
    goto LABEL_3;
  }

  if (v21 == 14)
  {
    goto LABEL_98;
  }

  if (v21 < 0x10)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  result = sub_1AC4DDAE8(v7[18], v7[19], 48, 57);
  v21 = v7[2];
  if (v21 < 0x11)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v7[20] != 58 || result >= 60)
  {
    goto LABEL_3;
  }

  v52 = v8;
  if (v21 == 17)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v21 < 0x13)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v8 = result;
  result = sub_1AC4DDAE8(v7[21], v7[22], 48, 57);
  if (result >= 62)
  {
LABEL_3:

LABEL_4:
    sub_1AC477660();
    swift_allocError();
    *v14 = xmmword_1AC5282F0;
    swift_willThrow();
    return v4;
  }

  v18 = qword_1F2127780[v3 + 3];
  if ((v16 + 12208) % 0x190u)
  {
    if ((v16 & 3) != 0 || !((v16 + 12208) % 0x64u) || v3 <= 2)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v3 < 3)
  {
    goto LABEL_47;
  }

LABEL_46:
  v23 = __OFADD__(v18++, 1);
  if (v23)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_47:
  v23 = __OFADD__(v18, v4 - 1);
  v24 = v18 + v4 - 1;
  if (v23)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v25 = 365 * v17 - 719527;
  v23 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v23)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v23 = __OFADD__(v26, (v16 - 53329) >> 2);
  v27 = v26 + ((v16 - 53329) >> 2);
  if (v23)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v28 = (v16 + 12207);
  v29 = v28 / 0x64;
  v23 = __OFSUB__(v27, v29);
  v30 = v27 - v29;
  if (v23)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v31 = v28 / 0x190;
  v23 = __OFADD__(v30, v31);
  v32 = v30 + v31;
  if (v23)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v33 = 60 * v5;
  if ((v5 * 60) >> 64 != (60 * v5) >> 63)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v23 = __OFADD__(v33, v8);
  v34 = v33 + v8;
  if (v23)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v35 = 60 * v34;
  if ((v34 * 60) >> 64 != (60 * v34) >> 63)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v37 = 86400 * v32;
  if ((v32 * 86400) >> 64 != (86400 * v32) >> 63)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v4 = v37 + v36;
  if (__OFADD__(v37, v36))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v38 = v7[2];
  if (v38 < 0x14)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v7[23] == 46)
  {
    v39 = 0;
    v40 = 100000000;
    for (i = 24; ; ++i)
    {
      v42 = i - 4;
      if (i - 4 >= v52)
      {
        break;
      }

      if (20 - v38 + i == 24)
      {
        goto LABEL_107;
      }

      v43 = v7[i];
      if ((v43 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_69;
      }

      v44 = (v43 - 48) * v40;
      if (v44 < 0xFFFFFFFF80000000)
      {
        goto LABEL_108;
      }

      if (v44 > 0x7FFFFFFF)
      {
        goto LABEL_109;
      }

      v23 = __OFADD__(v39, v44);
      v39 += v44;
      if (v23)
      {
        goto LABEL_110;
      }

      v40 /= 10;
    }

    goto LABEL_3;
  }

  v42 = 19;
LABEL_69:
  if (v42 >= v38)
  {
    goto LABEL_125;
  }

  v45 = *(v9 + 8 * v42);
  if (v45 != 45 && v45 != 43)
  {
LABEL_89:

    if (v45 != 90)
    {
      goto LABEL_4;
    }

    v17 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
LABEL_91:
      if (v17 == v52 && (v4 - 0x3AFFF44180) >= 0xFFFFFFB68879C780)
      {
        return v4;
      }

      goto LABEL_4;
    }

    goto LABEL_130;
  }

  v17 = v42 + 6;
  if (__OFADD__(v42, 6))
  {
    goto LABEL_127;
  }

  if (v52 < v17)
  {
    goto LABEL_3;
  }

  if (v42 + 1 >= v38)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v42 + 2 >= v38)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  result = sub_1AC4DDAE8(*(v9 + 8 * (v42 + 1)), *(v9 + 8 * (v42 + 2)), 48, 57);
  v46 = v7[2];
  if (v42 + 4 >= v46)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v42 + 5 >= v46)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v45 = result;
  result = sub_1AC4DDAE8(*(v9 + 8 * (v42 + 4)), *(v9 + 8 * (v42 + 5)), 48, 57);
  if (v45 > 13)
  {
    goto LABEL_3;
  }

  v8 = result;
  if (result > 59)
  {
    goto LABEL_3;
  }

  if (v42 + 3 >= v7[2])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (*(v9 + 8 * (v42 + 3)) != 58)
  {
    goto LABEL_3;
  }

  v47 = *(v9 + 8 * v42);

  v21 = 3600 * v45;
  LOBYTE(v20) = (v45 * 3600) >> 64 != (3600 * v45) >> 63;
  if (v47 == 43)
  {
    if ((v45 * 3600) >> 64 != (3600 * v45) >> 63)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v23 = __OFSUB__(v4, v21);
    v48 = v4 - v21;
    if (v23)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v49 = 60 * v8;
    if ((v8 * 60) >> 64 != (60 * v8) >> 63)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v4 = v48 - v49;
    if (!__OFSUB__(v48, v49))
    {
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_89;
  }

LABEL_101:
  if (v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v23 = __OFADD__(v4, v21);
  v50 = v4 + v21;
  if (v23)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v51 = 60 * v8;
  if ((v8 * 60) >> 64 == (60 * v8) >> 63)
  {
    v4 = v50 + v51;
    if (!__OFADD__(v50, v51))
    {
      goto LABEL_91;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1AC4DDAE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < result || a2 < a3 || a4 < a2)
  {
    sub_1AC477660();
    swift_allocError();
    *v7 = xmmword_1AC5282F0;
    return swift_willThrow();
  }

  v8 = 10 * result;
  if ((result * 10) >> 64 != (10 * result) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v8, a2);
  v10 = v8 + a2;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v10 - 528;
  if (__OFSUB__(v10, 528))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

double Google_Protobuf_Timestamp.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_1AC51F990;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_1AC4DDBA4()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    v4 = sub_1AC4DD45C(result, v3);
    v6 = v5;

    *v0 = v4;
    *(v0 + 8) = v6;
  }

  return result;
}

void Google_Protobuf_Timestamp.init(timeIntervalSince1970:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = round((v3 - v4) * 1000000000.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) > v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = OUTLINED_FUNCTION_1_17(v8);
  if (!__OFADD__(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_5_10(v9);
    OUTLINED_FUNCTION_4_10(v12);
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_15:
  __break(1u);
}

void Google_Protobuf_Timestamp.timeIntervalSinceReferenceDate.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v5 ^ v6 | v4))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v5)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(v1, v7))
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1AC4DDDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (__OFADD__(*a1, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(*(a1 + 8), *(a2 + 8)))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_11();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = ~v6;
  }

  if (!__OFADD__(v5, v9))
  {
    v10 = OUTLINED_FUNCTION_5_10(v4);
    *(a3 + 16) = xmmword_1AC51F990;
    OUTLINED_FUNCTION_4_10(v10);
    return;
  }

LABEL_10:
  __break(1u);
}

void - infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (__OFSUB__(*a1, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(*(a1 + 8), *(a2 + 8)))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_11();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = ~v6;
  }

  if (!__OFADD__(v5, v9))
  {
    v10 = OUTLINED_FUNCTION_5_10(v4);
    *(a3 + 16) = xmmword_1AC51F990;
    OUTLINED_FUNCTION_4_10(v10);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1AC4DDEA0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  if ((~v10 & 0x3000000000000000) != 0 || v11 != 255)
  {
    switch((v10 >> 60) & 3 | (4 * (v11 & 1u)))
    {
      case 1uLL:
        if ((~*&v8 & 0x7FF0000000000000) == 0)
        {
          sub_1AC4777D8();
          swift_allocError();
          v13 = 6;
          goto LABEL_4;
        }

        sub_1AC45F9B0(*v2);
        return;
      case 2uLL:
        v30 = OUTLINED_FUNCTION_4_11();
        sub_1AC485440(v30, v31, v32, v33);
        sub_1AC45AEA4(*&v8, v9);
        goto LABEL_16;
      case 3uLL:
        if (LOBYTE(v8))
        {
          v14 = "true";
          v15 = 4;
        }

        else
        {
          v14 = "false";
          v15 = 5;
        }

        goto LABEL_18;
      case 4uLL:
        v16 = OUTLINED_FUNCTION_4_11();
        v17 = v3;
        sub_1AC485440(v16, v18, v19, v20);
        OUTLINED_FUNCTION_2_12();
        v26 = v25 | v24;
        v27 = *&v8;
        v28 = v9;
        v29 = v10;
        goto LABEL_14;
      case 5uLL:
        v34 = OUTLINED_FUNCTION_4_11();
        v17 = v3;
        sub_1AC485440(v34, v35, v36, v37);
        OUTLINED_FUNCTION_3_15();
        v26 = v39 | v38;
        v29 = v10 & 0xCFFFFFFFFFFFFFFFLL;
        v27 = *&v8;
        v28 = v9;
LABEL_14:
        v40 = sub_1AC4DEB2C(v26, v27, v28, v29, v21, v22, v23);
        if (!v17)
        {
          sub_1AC45FA3C(v40, v41);
        }

LABEL_16:
        v42 = OUTLINED_FUNCTION_4_11();
        sub_1AC4854E8(v42, v43, v44, v11);
        break;
      default:
        v14 = "null";
        v15 = 4;
LABEL_18:
        sub_1AC45FE50(v14, v15, 2);
        break;
    }
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    v13 = 5;
LABEL_4:
    *v12 = v13;
    swift_willThrow();
  }
}

void sub_1AC4DE11C()
{
  v2 = v0;
  v3 = sub_1AC45DF14();
  if (v1)
  {
    return;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 110 && v4 == 0xE100000000000000;
  if (!v7 && (OUTLINED_FUNCTION_1_18() & 1) == 0)
  {
    v9 = v5 == 91 && v6 == 0xE100000000000000;
    if (v9 || (OUTLINED_FUNCTION_1_18() & 1) != 0)
    {

      v24 = MEMORY[0x1E69E7CC0];
      v10 = OUTLINED_FUNCTION_6_11();
      sub_1AC4DB858(v10);
      OUTLINED_FUNCTION_5_11();
      *v2 = v24;
      *(v2 + 8) = v26;
      *(v2 + 16) = v27 | 0x1000000000000000;
LABEL_17:
      *(v2 + 24) = 1;
      return;
    }

    v11 = v5 == 123 && v6 == 0xE100000000000000;
    if (v11 || (OUTLINED_FUNCTION_1_18() & 1) != 0)
    {

      v25 = sub_1AC51ED58();
      v12 = OUTLINED_FUNCTION_6_11();
      sub_1AC4DC688(v12);
      OUTLINED_FUNCTION_5_11();
      *v2 = v25;
      *(v2 + 8) = v26;
      *(v2 + 16) = v27;
      goto LABEL_17;
    }

    v13 = v5 == 116 && v6 == 0xE100000000000000;
    if (v13 || (OUTLINED_FUNCTION_1_18() & 1) != 0 || (v5 == 102 ? (v14 = v6 == 0xE100000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_1_18() & 1) != 0))
    {

      v15 = sub_1AC45D3B4() & 1;
      OUTLINED_FUNCTION_5_11();
      *v2 = v15;
      v16 = xmmword_1AC528330;
LABEL_35:
      *(v2 + 8) = v16;
      goto LABEL_9;
    }

    if (v5 == 34 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_1_18();

      if ((v18 & 1) == 0)
      {
        sub_1AC45CC3C();
        v20 = v19;
        OUTLINED_FUNCTION_5_11();
        *v2 = v20;
        v16 = xmmword_1AC528320;
        goto LABEL_35;
      }
    }

    v21 = sub_1AC45993C();
    v23 = v22;
    OUTLINED_FUNCTION_5_11();
    *v2 = v21;
    *(v2 + 8) = v23;
    *(v2 + 16) = 0x2000000000000000;
    goto LABEL_9;
  }

  if (sub_1AC457638())
  {
    OUTLINED_FUNCTION_5_11();
    *v2 = xmmword_1AC528340;
    *(v2 + 16) = 0;
LABEL_9:
    *(v2 + 24) = 0;
    return;
  }

  sub_1AC477660();
  swift_allocError();
  *v8 = 0;
  v8[1] = 0;
  swift_willThrow();
}

double Google_Protobuf_Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = xmmword_1AC528320;
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  *a1 = xmmword_1AC528340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

uint64_t sub_1AC4DE4A8(_BYTE *a1)
{
  v4 = sub_1AC51EE28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  LOBYTE(v6) = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(v1 + 2);
  v12 = *(v1 + 24);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = 256;
  v18 = *v1;
  v19 = v11;
  v20 = v12;
  v21 = v1[2];
  v17[0] = v6;
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  sub_1AC4DDEA0(&v22, v17);
  if (v2)
  {
    goto LABEL_3;
  }

  *&v18 = v22;

  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  v7 = sub_1AC51EE08();
  v14 = v13;

  if (v14)
  {
LABEL_3:

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AC4DE610@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  result = 0.0;
  *a1 = xmmword_1AC528340;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  return result;
}

double Google_Protobuf_Value.init(numberValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  OUTLINED_FUNCTION_0_18();
  *a1 = a2;
  *(a1 + 8) = xmmword_1AC528320;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

double sub_1AC4DE6F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_18();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0x2000000000000000;
  *(a3 + 24) = 0;
  result = 0.0;
  *(a3 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(BOOLValue:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1 & 1;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = xmmword_1AC528330;
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(structValue:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v3 = *(a1 + 2);
  OUTLINED_FUNCTION_0_18();
  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Value.init(listValue:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2] | 0x1000000000000000;
  OUTLINED_FUNCTION_0_18();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = xmmword_1AC51F990;
  return result;
}

unint64_t sub_1AC4DE858()
{
  result = qword_1EB559768;
  if (!qword_1EB559768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559768);
  }

  return result;
}

unint64_t sub_1AC4DE8BC()
{
  result = qword_1EB559770;
  if (!qword_1EB559770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559770);
  }

  return result;
}

uint64_t sub_1AC4DE928(int a1)
{
  v17 = a1;
  v3 = sub_1AC51EE28();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v24[3] = &type metadata for Google_Protobuf_Value;
  v24[4] = &off_1F211D618;
  v7 = swift_allocObject();
  v24[0] = v7;
  v8 = v1[1];
  v7[1] = *v1;
  v7[2] = v8;
  v7[3] = v1[2];
  v9 = __swift_project_boxed_opaque_existential_1(v24, &type metadata for Google_Protobuf_Value);
  v10 = v9[2];
  v11 = *(v9 + 24);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = 256;
  v18 = *v9;
  v19 = v10;
  v20 = v11;
  v21 = *(v9 + 2);
  sub_1AC4DD110(v1, v16);
  sub_1AC4DDEA0(&v22, &v17);
  if (v2)
  {
    goto LABEL_3;
  }

  *&v18 = v22;

  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  v6 = sub_1AC51EE08();
  v13 = v12;

  if (v13)
  {
LABEL_3:

    __swift_destroy_boxed_opaque_existential_1(v24);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4DEB2C(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *))
{
  v12 = a1;
  v13[3] = a5;
  v13[4] = a6;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  __swift_project_boxed_opaque_existential_1(v13, a5);

  sub_1AC4578F4(a3, a4);
  v10 = a7(&v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_1AC4DEBF4(uint64_t a1)
{
  v3 = v1;
  if (sub_1AC457638())
  {
    result = 0;
LABEL_7:
    *v3 = result & 1;
    return result;
  }

  if (*(a1 + 120) == 1)
  {
    result = sub_1AC4E5D54();
  }

  else
  {
    result = sub_1AC45D3B4();
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AC4DEC64()
{
  v2 = v0;
  if (sub_1AC457638())
  {
    v3 = 0;
    v4 = 0xC000000000000000;
  }

  else
  {
    result = sub_1AC469AA4();
    if (v1)
    {
      return result;
    }

    v3 = result;
    v4 = v6;
  }

  result = sub_1AC4513F8(*v2, *(v2 + 8));
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t sub_1AC4DECD0()
{
  result = sub_1AC457638();
  v3 = 0;
  if ((result & 1) != 0 || (result = sub_1AC4E59E4(), !v1))
  {
    *v0 = v3;
  }

  return result;
}

uint64_t sub_1AC4DED24()
{
  if (sub_1AC457638())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_1AC457AA8();
  if (!v1)
  {
    if (result == result)
    {
      goto LABEL_3;
    }

    sub_1AC477660();
    swift_allocError();
    *v3 = xmmword_1AC5284F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC4DEDB8()
{
  result = sub_1AC457638();
  v3 = 0;
  if ((result & 1) != 0 || (result = sub_1AC45CC3C(), !v1))
  {
    *v0 = v3;
  }

  return result;
}

uint64_t sub_1AC4DEE0C()
{
  v2 = v0;
  if (sub_1AC457638())
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    result = sub_1AC45993C();
    if (v1)
    {
      return result;
    }

    v3 = result;
    v4 = v6;
  }

  v7 = v2[1];

  *v2 = v3;
  v2[1] = v4;
  return result;
}

unint64_t sub_1AC4DEE78()
{
  if (sub_1AC457638())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_1AC45E964();
  if (!v1)
  {
    if (!HIDWORD(result))
    {
      goto LABEL_3;
    }

    sub_1AC477660();
    swift_allocError();
    *v3 = xmmword_1AC5284F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC4DEF0C(uint64_t a1, uint64_t (*a2)(void))
{
  if (sub_1AC457638())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v3)
    {
      return result;
    }
  }

  *v2 = result;
  return result;
}

uint64_t sub_1AC4DEF90()
{
  v1 = sub_1AC51EE28();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_12_8();
  if ((*v0 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_1AC51F178();
    OUTLINED_FUNCTION_5_12();
    return OUTLINED_FUNCTION_1_19();
  }

  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  sub_1AC45F9B0(v3);
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_5_12();

  if (v4)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4DF0D4()
{
  v1 = sub_1AC51EE28();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_12_8();
  if ((*v0 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    sub_1AC51F198();
    OUTLINED_FUNCTION_5_12();
    return OUTLINED_FUNCTION_1_19();
  }

  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  sub_1AC4E2E10(v3);
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_5_12();

  if (v4)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  __break(1u);
  return result;
}

double Google_Protobuf_Int64Value.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

uint64_t sub_1AC4DF218(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_8_10(a1);
  sub_1AC4DF8C8();
  result = sub_1AC51F278();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_9();

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);

    return v3;
  }

  return result;
}