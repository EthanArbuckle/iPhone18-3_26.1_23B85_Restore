uint64_t sub_1AC4F0734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AC4F0794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf8_NameMapV0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F07FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 74))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 73);
      if (v3 <= 1)
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

uint64_t sub_1AC4F083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AC4F08A4()
{
  result = qword_1ED6E4348;
  if (!qword_1ED6E4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4348);
  }

  return result;
}

void sub_1AC4F08F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_17(a5 + 8 * (a1 >> 6));
  v7 = (v5[6] + 16 * v6);
  *v7 = v8;
  v7[1] = v9;
  v10 = (v5[7] + 48 * v6);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v10[2] = v11[2];
  v13 = v5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v15;
  }
}

void sub_1AC4F095C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_17(a4 + 8 * (a1 >> 6));
  *(*(v5 + 48) + 8 * v6) = v7;
  sub_1AC465B44(v8, *(v5 + 56) + 40 * v6);
  OUTLINED_FUNCTION_21_8();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1AC4F09BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1AC4F0A08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_17(a4 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v5) = v6;
  *(v4[7] + 8 * v5) = v7;
  v8 = v4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v10;
  }
}

uint64_t sub_1AC4F0AE8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v17[0] = a1;
  v17[1] = a2;
  *&v16[0] = 46;
  *(&v16[0] + 1) = 0xE100000000000000;
  sub_1AC4F28C0();
  v11 = sub_1AC51F268();
  sub_1AC4F2914(a3, v16);
  v15 = v10;
  result = sub_1AC4F1208(v11, v16, &v15, a5, v17);
  if (!v6)
  {
    v13 = *(a6 + 64);
    v14 = type metadata accessor for PathDecoder();
    v13(v17, v14, &off_1F2129938, a5, a6);
    return (*(*(v14 - 8) + 8))(v17, v14);
  }

  return result;
}

uint64_t PathDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4F0CC4()
{
  result = qword_1EB5598E0;
  if (!qword_1EB5598E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5598E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PathDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC4F0DF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!dynamic_cast_existential_1_conditional(a3))
  {
    return 0;
  }

  v6 = v5;
  v41 = a1;
  v42 = a2;
  v7 = sub_1AC4F2B28(a1, a2);
  v8 = (v7 + 32);
  v9 = (v7 + 32 + *(v7 + 16));
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_6_19();
  v43 = v12;
  v12(v11);
  v47[0] = v8;
  v47[1] = v9;
  v47[2] = "";
  v47[3] = 0;
  v48 = 258;
  if (!*(v46 + 16))
  {

LABEL_16:

LABEL_18:

    return 0;
  }

  v13 = sub_1AC4599C0(v47);
  if ((v14 & 1) == 0)
  {

    goto LABEL_16;
  }

  v15 = *(*(v46 + 56) + 8 * v13);

  v16 = OUTLINED_FUNCTION_6_19();
  v43(v16);
  if (!*(v45 + 16) || (v17 = sub_1AC45AA38(v15), (v18 & 1) == 0))
  {

    goto LABEL_18;
  }

  v19 = *(v45 + 56) + 80 * v17;
  v20 = *v19;
  v44 = *(v19 + 8);
  v39 = *(v19 + 24);
  v40 = *(v19 + 16);
  v22 = *(v19 + 56);
  v21 = *(v19 + 64);
  v23 = *(v19 + 72);
  v24 = *(v19 + 73);
  v38 = *(v19 + 32);
  sub_1AC4DB1E4(*v19, v44, v40, v39, *(v19 + 32));
  v25 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AC88(v25, v26, v27, v24);

  v28 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AC88(v28, v29, v30, v24);
  sub_1AC4DB20C(v20, v44, v40, v39, v38);
  v31 = OUTLINED_FUNCTION_3_25();
  sub_1AC45AE94(v31, v32, v33, v24);
  if (v24)
  {
    OUTLINED_FUNCTION_3_25();
    v22 = sub_1AC51F2E8();
    v21 = v34;
  }

  if (v22 == v41 && v21 == v42)
  {

    return v15;
  }

  v36 = sub_1AC51F3D8();

  if ((v36 & 1) == 0)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1AC4F1094(uint64_t a1, uint64_t a2)
{
  if (!dynamic_cast_existential_1_conditional(a2))
  {
    return 0;
  }

  (*(v3 + 8))(&v27);
  v4 = v28;
  if (!*(v28 + 16) || (v5 = sub_1AC45AA38(a1), (v6 & 1) == 0))
  {

    return 0;
  }

  v7 = *(v4 + 56) + 80 * v5;
  v25 = *(v7 + 8);
  v26 = *v7;
  v8 = *(v7 + 16);
  v24 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  v11 = *(v7 + 72);
  v12 = *(v7 + 73);
  v13 = *(v7 + 32);
  sub_1AC4DB1E4(*v7, v25, v8, v24, v13);
  v14 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AC88(v14, v15, v16, v12);

  v17 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AC88(v17, v18, v19, v12);
  sub_1AC4DB20C(v26, v25, v8, v24, v13);
  v20 = OUTLINED_FUNCTION_1_25();
  sub_1AC45AE94(v20, v21, v22, v12);
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    return sub_1AC51F2E8();
  }

  return v9;
}

uint64_t sub_1AC4F1208@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a1[2] || (v9 = *a3, v10 = a1[4], v11 = a1[5], , v12 = sub_1AC4F0DF4(v10, v11, a4), v14 = v13, , (v14 & 1) != 0))
  {

    sub_1AC4F299C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return sub_1AC4F29F0(a2);
  }

  *(a5 + 32) = v12;
  *(a5 + 40) = 0;
  v18 = sub_1AC4F13B8(1, a1);
  v20 = v19;
  v22 = v21;
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = v17;
  sub_1AC51F3E8();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v22 >> 1, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v26 != (v22 >> 1) - v20)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v17 = v28;
LABEL_5:
    sub_1AC4F2A58(v18, v17, v20, v22);
    v24 = v23;
LABEL_12:
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v24 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v24)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  *(a5 + 48) = v24;
  v27 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v27;
  *(a5 + 56) = v9;
  return result;
}

uint64_t sub_1AC4F13B8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1AC4F2C40(0, result, v2);
    if (v3)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      v4 = sub_1AC4890FC();

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4F1450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AC51F228();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  if (*(*(v4 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v14 = 1;
LABEL_3:
    *v13 = v14;
    return swift_willThrow();
  }

  sub_1AC4F2914(v4, v18);
  if (v19)
  {
    sub_1AC4F29F0(v18);
    sub_1AC4F2914(v4, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 1, 1, a4);
      (*(v9 + 8))(v12, v8);
      sub_1AC4F299C();
      swift_allocError();
      v14 = 0;
      goto LABEL_3;
    }

    v16 = *(a4 - 8);
    (*(v16 + 8))(a1, a4);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
    return (*(v16 + 32))(a1, v12, a4);
  }

  else
  {
    v17 = *(a4 - 8);
    (*(v17 + 8))(a1, a4);
    sub_1AC4F29F0(v18);
    return (*(v17 + 16))(a1, a2, a4);
  }
}

uint64_t sub_1AC4F1714(uint64_t *a1)
{
  if (*(*(v1 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v3 = 1;
LABEL_13:
    *v2 = v3;
    return swift_willThrow();
  }

  v5 = sub_1AC51F078();
  sub_1AC4F2914(v1, v8);
  if (v9)
  {

    sub_1AC4F29F0(v8);
    sub_1AC4F2914(v1, v8);
    if (v9)
    {
      sub_1AC51F108();
      if (swift_dynamicCast())
      {
        v5 = v10;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AC4F29F0(v8);
    }

    sub_1AC4F299C();
    swift_allocError();
    v3 = 0;
    goto LABEL_13;
  }

  sub_1AC4F29F0(v8);
LABEL_8:
  if (*(v1 + 56) == 1)
  {
    v6 = *a1;

    *a1 = v5;
  }

  else
  {
    v8[0] = v5;
    sub_1AC51F108();
    swift_getWitnessTable();
    return sub_1AC51F0C8();
  }

  return result;
}

uint64_t sub_1AC4F18B4(uint64_t *a1, uint64_t a2)
{
  if (*(*(v2 + 48) + 16))
  {
    sub_1AC4F299C();
    swift_allocError();
    v4 = 1;
LABEL_13:
    *v3 = v4;
    return swift_willThrow();
  }

  swift_getTupleTypeMetadata2();
  sub_1AC51F078();
  v7 = sub_1AC51ED58();
  sub_1AC4F2914(v2, v13);
  if (v14)
  {

    sub_1AC4F29F0(v13);
    sub_1AC4F2914(v2, v13);
    if (v14)
    {
      sub_1AC51ED88();
      v8 = swift_dynamicCast();
      if (v8)
      {
        v7 = v15;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AC4F29F0(v13);
    }

    sub_1AC4F299C();
    swift_allocError();
    v4 = 0;
    goto LABEL_13;
  }

  v8 = sub_1AC4F29F0(v13);
LABEL_8:
  if (*(v2 + 56) == 1)
  {
    v9 = *a1;

    *a1 = v7;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    sub_1AC51ED88();
    return sub_1AC51ED78();
  }

  return result;
}

uint64_t sub_1AC4F1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a2;
  v8 = sub_1AC51F228();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  if (*(*(v4 + 48) + 16))
  {
    sub_1AC4F2914(v4, v29);
    v31 = *(v4 + 56);

    result = sub_1AC4F1208(v18, v29, &v31, a3, v30);
    if (!v5)
    {
      v20 = v28;
      (*(v28 + 16))(v15, a1, v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, a3);
      (*(v20 + 8))(v15, v8);
      v22 = v26;
      if (EnumTagSinglePayload == 1)
      {
        (*(v26 + 16))(a3, v26);
        __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
        (*(v20 + 40))(a1, v12, v8);
      }

      if (__swift_getEnumTagSinglePayload(a1, 1, a3))
      {
        v23 = type metadata accessor for PathDecoder();
      }

      else
      {
        v24 = *(v22 + 64);
        v23 = type metadata accessor for PathDecoder();
        v24(v30, v23, &off_1F2129938, a3, v22);
      }

      return (*(*(v23 - 8) + 8))(v30, v23);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v25 - v16, 1, 1, a3);
    sub_1AC4F1450(a1, v17, v27, v8);
    return (*(v28 + 8))(v17, v8);
  }

  return result;
}

uint64_t sub_1AC4F1DCC()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_1AC4F202C()
{
  OUTLINED_FUNCTION_0_29();
  v6 = 0;
  v7 = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1AC4F1450(v1, &v6, v0, v4);
}

uint64_t sub_1AC4F2084()
{
  OUTLINED_FUNCTION_0_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  return OUTLINED_FUNCTION_2_20(v2, v3, v4, v5, v6, v7, v8, v9, 0);
}

uint64_t sub_1AC4F2104()
{
  OUTLINED_FUNCTION_0_29();
  v4 = 2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559980, &qword_1AC5296A0);
  return sub_1AC4F1450(v1, &v4, v0, v2);
}

uint64_t sub_1AC4F2180(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  return sub_1AC4F1450(a1, v3, a2, MEMORY[0x1E69E6158]);
}

uint64_t sub_1AC4F21B8()
{
  OUTLINED_FUNCTION_0_29();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559978, &qword_1AC529698);
  return OUTLINED_FUNCTION_2_20(v0, v1, v2, v3, v4, v5, v6, v7, 0);
}

uint64_t sub_1AC4F2224(uint64_t a1, uint64_t a2)
{
  v3 = xmmword_1AC51F990;
  sub_1AC4F1450(a1, &v3, a2, MEMORY[0x1E6969080]);
  return sub_1AC4513F8(v3, *(&v3 + 1));
}

uint64_t sub_1AC4F2278()
{
  OUTLINED_FUNCTION_0_29();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559970, &qword_1AC529690);
  return OUTLINED_FUNCTION_2_20(v0, v1, v2, v3, v4, v5, v6, v7, 0);
}

uint64_t sub_1AC4F22EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 24))(v11, v10);
  sub_1AC4F1450(a1, v9, a2, a3);
  return (*(v6 + 8))(v9, a3);
}

uint64_t sub_1AC4F2404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC51F228();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  __swift_storeEnumTagSinglePayload(&v12 - v9, 1, 1, a3);
  sub_1AC4F1450(a1, v10, a2, v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AC4F2540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AC4F18B4(a1, a2);
}

uint64_t sub_1AC4F2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_18(a1, a2, a3, a4, a5);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_5_20();
}

uint64_t sub_1AC4F268C()
{
  result = sub_1AC4F1DCC();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1AC4F28C0()
{
  result = qword_1EB557CB0;
  if (!qword_1EB557CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CB0);
  }

  return result;
}

uint64_t sub_1AC4F2914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC4F299C()
{
  result = qword_1EB5598E8[0];
  if (!qword_1EB5598E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5598E8);
  }

  return result;
}

uint64_t sub_1AC4F29F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559198, &unk_1AC5295F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AC4F2A58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558298, &qword_1AC520A50);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1AC4F2B28(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1AC51EF48())
  {
    result = sub_1AC4D7300(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51F2B8();
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
          result = sub_1AC51F308();
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

uint64_t sub_1AC4F2C40(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1AC4F2C8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4F2CFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1AC4F2D3C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1AC4F2F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC4F300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  result = sub_1AC4F1094(a2, v7);
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = v4[1];
    if (v12)
    {
      v15 = *v4;
      v16 = v12;

      MEMORY[0x1AC5B4340](46, 0xE100000000000000);
      MEMORY[0x1AC5B4340](v10, v11);

      v13 = v15;
      v11 = v16;
      sub_1AC4EE7B8(a1, &v15);
      v14 = v13;
    }

    else
    {
      sub_1AC4EE7B8(a1, &v15);
      v14 = v10;
    }

    return sub_1AC4C9610(&v15, v14, v11);
  }

  return result;
}

uint64_t sub_1AC4F30E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  result = sub_1AC4F1094(a2, v11);
  if (v13)
  {
    v14 = result;
    v15 = v13;
    v16 = v6[1];
    if (v16)
    {
      v23 = *v6;
      v24 = v16;

      MEMORY[0x1AC5B4340](46, 0xE100000000000000);
      MEMORY[0x1AC5B4340](v14, v15);

      v14 = v23;
      v15 = v24;
    }

    v26 = a4;
    v17 = __swift_allocate_boxed_opaque_existential_1(&v23);
    (*(*(a4 - 8) + 16))(v17, a1, a4);

    sub_1AC4C9610(&v23, v14, v15);
    v23 = sub_1AC4F2FB4(v14);
    v24 = v18;
    v25 = v19;
    v20 = *(a5 + 72);
    v21 = type metadata accessor for PathVisitor();
    v20(&v23, v21, &off_1F2129B70, a4, a5);

    sub_1AC4F3CB8(v22, sub_1AC4F3C80, 0, v6 + 2);
  }

  return result;
}

uint64_t sub_1AC4F328C(uint64_t a1, uint64_t a2, float a3)
{
  *v4 = a3;
  v4[3] = MEMORY[0x1E69E6448];
  sub_1AC4F300C(v4, a1, a2);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F32DC(uint64_t a1, uint64_t a2, double a3)
{
  *v4 = a3;
  v4[3] = MEMORY[0x1E69E63B0];
  sub_1AC4F300C(v4, a1, a2);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F332C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  LODWORD(v5[0]) = a1;
  sub_1AC4F300C(v5, a2, a3);
  return OUTLINED_FUNCTION_1_26(v5);
}

uint64_t sub_1AC4F3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[0] = a1;
  sub_1AC4F300C(v5, a2, a3);
  return OUTLINED_FUNCTION_1_26(v5);
}

uint64_t sub_1AC4F33A4(char a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v4[0]) = a1;
  v4[3] = MEMORY[0x1E69E6370];
  sub_1AC4F300C(v4, a2, a3);
  return OUTLINED_FUNCTION_1_26(v4);
}

uint64_t sub_1AC4F33EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = a1;
  v7[1] = a2;

  sub_1AC4F300C(v7, a3, a4);
  return OUTLINED_FUNCTION_1_26(v7);
}

uint64_t sub_1AC4F344C(uint64_t a1, unint64_t a2)
{
  v11[3] = MEMORY[0x1E6969080];
  v11[0] = a1;
  v11[1] = a2;
  v2 = sub_1AC4578F4(a1, a2);
  OUTLINED_FUNCTION_2_21(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
  return OUTLINED_FUNCTION_1_26(v11);
}

uint64_t sub_1AC4F34A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  sub_1AC4F300C(v10, a2, a3);
  return OUTLINED_FUNCTION_1_26(v10);
}

uint64_t sub_1AC4F35B4()
{
  OUTLINED_FUNCTION_15_0();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);

  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  return OUTLINED_FUNCTION_1_26(v12);
}

uint64_t sub_1AC4F3624()
{
  OUTLINED_FUNCTION_15_0();
  v10[3] = sub_1AC51F108();

  OUTLINED_FUNCTION_2_21(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  return OUTLINED_FUNCTION_1_26(v10);
}

uint64_t sub_1AC4F367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  v11 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14[3] = sub_1AC51ED88();
  v14[0] = a1;

  sub_1AC4F300C(v14, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1AC4F377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_30(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_4_19();
  v10[3] = OUTLINED_FUNCTION_5_21();
  v10[0] = v8;

  sub_1AC4F300C(v10, v7, v6);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1AC4F3928(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559A78, &qword_1AC5297A0);
  v36 = a2;
  result = sub_1AC51F398();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1AC4F3BDC(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1AC4CA7D4(v23, v37);
    }

    else
    {
      sub_1AC4EE7B8(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1AC51F468();
    sub_1AC51EEB8();
    result = sub_1AC51F4C8();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1AC4CA7D4(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1AC4F3BDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1AC528340;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AC4F3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC4EE7B8(a4, a1);

  return a2;
}

uint64_t sub_1AC4F3C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC4F3C40((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC4F3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1AC4F3D2C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1AC4F3D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1AC4F3F5C(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1AC4F3F98(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_1AC460BE4();
    }

    v8 = v29;
    sub_1AC4CA7D4(v30, v28);
    v9 = *a5;
    v11 = sub_1AC4EFE58(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
        sub_1AC51F348();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1AC4F3928(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_1AC4EFE58(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1AC4EE7B8(v28, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_1AC4CA7D4(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1AC4CA7D4(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1AC51F408();
  __break(1u);
  return result;
}

uint64_t sub_1AC4F3F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1AC4F3F98@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1AC4EE7B8(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1AC4CA7D4(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1AC4F40D8(v19);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4F40D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB559A80, qword_1AC5297A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1AC4F42E0(_BYTE *result, int a2, int a3)
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

uint64_t SimpleExtensionMap.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_1AC47782C(v3, v5);
      SimpleExtensionMap.insert(_:)(v5);
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SimpleExtensionMap.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = contentsOf._rawValue + 32;
    do
    {
      SimpleExtensionMap.insert(_:)(v2);
      v2 += 5;
      --v1;
    }

    while (v1);
  }
}

uint64_t SimpleExtensionMap.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v8 = *(a1 + v5);
      SimpleExtensionMap.formUnion(_:)(&v8);
      v5 += 8;
      --v4;
    }

    while (v4);

    v7 = v9;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v7;
  return result;
}

uint64_t SimpleExtensionMap.formUnion(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_0_32(*a1);
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v49 = v3;

  v9 = 0;
  v47 = v8;
  v48 = v1;
  v45 = v1;
  if (!v6)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v49 + 48) + v12);
    v14 = *(*(v49 + 56) + v12);
    v15 = *v2;
    v50 = v14;
    if (*(*v2 + 16))
    {
      v16 = sub_1AC45AA38(v13);
      if (v17)
      {
        v46 = v13;
        v18 = *(*(v15 + 56) + 8 * v16);
        v19 = *(v18 + 16);
        v20 = v18 + 32;

        v21 = 0;
        v22 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v19 == v21)
          {

            *&v52[0] = v22;
            sub_1AC486674(v14);
            v42 = *&v52[0];
            v2 = v45;
            v43 = *v45;
            swift_isUniquelyReferenced_nonNull_native();
            *&v51[0] = *v45;
            sub_1AC4F0400(v42, v46);
            *v45 = *&v51[0];
            goto LABEL_30;
          }

          if (v21 >= *(v18 + 16))
          {
            break;
          }

          sub_1AC47782C(v20, v52);
          if (sub_1AC4F4F14(v52, v14))
          {
            sub_1AC465B44(v52, v51);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_2_22(*(v22 + 16));
              v22 = v53;
            }

            v25 = *(v22 + 16);
            v24 = *(v22 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_1AC4D0AF0(v24 > 1, v25 + 1, 1);
              v22 = v53;
            }

            *(v22 + 16) = v25 + 1;
            sub_1AC465B44(v51, v22 + 40 * v25 + 32);
            v14 = v50;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v52);
          }

          v20 += 40;
          ++v21;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    v26 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = *v2;
    v27 = *&v52[0];
    *v2 = 0x8000000000000000;
    v28 = sub_1AC45AA38(v13);
    if (__OFADD__(*(v27 + 16), (v29 & 1) == 0))
    {
      goto LABEL_35;
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D0, &unk_1AC529940);
    if (sub_1AC51F338())
    {
      v32 = v13;
      v33 = sub_1AC45AA38(v13);
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_37;
      }

      v30 = v33;
    }

    else
    {
      v32 = v13;
    }

    v35 = *&v52[0];
    if (v31)
    {
      v36 = *(*&v52[0] + 56);
      v37 = *(v36 + 8 * v30);
      *(v36 + 8 * v30) = v50;
    }

    else
    {
      *(*&v52[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v35[6] + 8 * v30) = v32;
      *(v35[7] + 8 * v30) = v50;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_36;
      }

      v35[2] = v40;
    }

    v41 = *v2;

    *v2 = v35;
LABEL_30:
    v8 = v47;
    v1 = v48;
  }

  while (v6);
LABEL_2:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v6 = v1[v10];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_6;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  MEMORY[0x1AC5B4BA0](0);

  __swift_destroy_boxed_opaque_existential_1(v52);

  __break(1u);
LABEL_37:
  result = sub_1AC51F408();
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = result, result = sub_1AC45AA38(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * result);
    v9 = *(v8 + 16);
    v10 = v8 + 32;

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        goto LABEL_9;
      }

      if (i >= *(v8 + 16))
      {
        break;
      }

      sub_1AC47782C(v10, v15);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      OUTLINED_FUNCTION_1_27(v13);
      if (v14(v12, v13) == v6)
      {

        sub_1AC47782C(v15, a3);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v10 += 40;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t SimpleExtensionMap.fieldNumberForProto(messageType:protoFieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_32(*v4);
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v34 = v4;
  v35 = result;
  v33 = v10;
  do
  {
LABEL_2:
    if (!v8)
    {
      do
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_24;
        }

        if (v13 >= v10)
        {

          return 0;
        }

        v8 = v4[v13];
        ++v12;
      }

      while (!v8);
      v12 = v13;
    }

    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(result + 56);
    v16 = (v12 << 9) | (8 * v14);
    v17 = *(v15 + v16);
    v18 = *(v17 + 16);
  }

  while (!v18);
  v19 = v17 + 32;
  v20 = *(v15 + v16);

  v21 = 0;
  while (v21 < *(v17 + 16))
  {
    sub_1AC47782C(v19, v38);
    v22 = v39;
    v23 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    if ((*(v23 + 16))(v22, v23) == a3 && v24 == a4)
    {
    }

    else
    {
      v26 = sub_1AC51F3D8();

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v27 = v39;
    v28 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    OUTLINED_FUNCTION_1_27(v28);
    if (v29(v27, v28) == a1)
    {

      v30 = v39;
      v31 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v32 = (*(v31 + 8))(v30, v31);

      __swift_destroy_boxed_opaque_existential_1(v38);
      return v32;
    }

LABEL_18:
    ++v21;
    result = __swift_destroy_boxed_opaque_existential_1(v38);
    v19 += 40;
    if (v18 == v21)
    {

      v4 = v34;
      result = v35;
      v10 = v33;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void SimpleExtensionMap.insert(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = sub_1AC4CFB74(v5, *v1);
  if (v6)
  {
    v7 = v6;
    v29 = v5;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    OUTLINED_FUNCTION_1_27(v9);
    v11 = v10(v8, v9);
    v12 = 0;
    v13 = *(v7 + 16);
    v14 = v7 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    while (v13 != v12)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_1AC47782C(v14, &v31);
      v16 = v32;
      v17 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      OUTLINED_FUNCTION_1_27(v17);
      if (v18(v16, v17) == v11)
      {
        __swift_destroy_boxed_opaque_existential_1(&v31);
      }

      else
      {
        sub_1AC465B44(&v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_2_22(*(v15 + 16));
          v15 = v34;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1AC4D0AF0(v20 > 1, v21 + 1, 1);
          v15 = v34;
        }

        *(v15 + 16) = v21 + 1;
        sub_1AC465B44(v30, v15 + 40 * v21 + 32);
      }

      v14 += 40;
      ++v12;
    }

    sub_1AC47782C(a1, &v31);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

LABEL_19:
    v26 = *(v15 + 16);
    sub_1AC48F3FC();
    v15 = v27;
LABEL_14:
    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_1AC48F3FC();
      v15 = v28;
    }

    *(v15 + 16) = v22 + 1;
    sub_1AC465B44(&v31, v15 + 40 * v22 + 32);
    v23 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v31 = *v1;
    sub_1AC4F0400(v15, v29);
    *v1 = v31;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558288, &qword_1AC520A48);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AC529930;
    sub_1AC47782C(a1, v24 + 32);
    v25 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v31 = *v1;
    sub_1AC4F0400(v24, v5);
    *v1 = v31;
  }
}

BOOL sub_1AC4F4F14(void *a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    v3 += 5;
  }

  while (v7 != (*(v9 + 24))(v8, v9));
  return v4 == 0;
}

uint64_t SimpleExtensionMap.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  return SimpleExtensionMap.formUnion(_:)(&v6);
}

double Google_Protobuf_SourceContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_SourceContext.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_SourceContext.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_SourceContext.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

uint64_t Google_Protobuf_SourceContext.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_SourceContext._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB557EF8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EB559C18;
  v3 = qword_1EB559C20;
  v4 = unk_1EB559C28;
  *a1 = qword_1EB559C10;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_SourceContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  while (1)
  {
    result = v7(a2, a3);
    if (v4 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      (*(a3 + 336))(v3, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1AC4F5320(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    result = sub_1AC51EEB8();
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      v9 = a4;
      v10 = a4 >> 32;
      goto LABEL_10;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_10:
      if (v9 != v10)
      {
        return sub_1AC51EC58();
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return result;
      }

      return sub_1AC51EC58();
  }
}

uint64_t Google_Protobuf_SourceContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = (*(a3 + 112))(), !v4))
  {
    sub_1AC4578F4(v10, v11);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_1AC4513F8(v10, v11);
  }

  return result;
}

uint64_t static Google_Protobuf_SourceContext.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v7, v8);
  sub_1AC4578F4(v4, v5);
  v9 = OUTLINED_FUNCTION_44();
  v10 = MEMORY[0x1AC5B4070](v9);
  sub_1AC4513F8(v4, v5);
  v11 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v11, v12);
  return v10 & 1;
}

uint64_t Google_Protobuf_SourceContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F5320(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F5664()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F5320(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4F56F4(uint64_t a1)
{
  result = sub_1AC4F571C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F571C()
{
  result = qword_1EB559C30;
  if (!qword_1EB559C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C30);
  }

  return result;
}

unint64_t sub_1AC4F5770(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4860B4();
  result = sub_1AC4F57A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4F57A0()
{
  result = qword_1EB559C38;
  if (!qword_1EB559C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C38);
  }

  return result;
}

unint64_t sub_1AC4F57F8()
{
  result = qword_1EB559C40;
  if (!qword_1EB559C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559C40);
  }

  return result;
}

double Google_Protobuf_Value.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3000000000000000;
  *(a1 + 24) = -1;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_ListValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

double Google_Protobuf_Struct.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1AC51ED58();
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_NullValue.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1AC4F5934@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

void Google_Protobuf_Value.kind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_1AC48541C(v2, v3, v4, v5);
}

__n128 Google_Protobuf_Value.kind.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  OUTLINED_FUNCTION_11_13();
  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

void Google_Protobuf_Value.nullValue.getter(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v6 = (v2 >> 60) & 3 | (4 * (v3 & 1));
    v7 = v6 == 0;
    v8 = v6 != 0;
    if (v7)
    {
      v4 = *v1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v8 | v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5 & 1;
}

void sub_1AC4F5AB4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = a1[2];
  Google_Protobuf_Value.nullValue.getter(&v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
}

void sub_1AC4F5B18(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  Google_Protobuf_Value.nullValue.setter(&v2);
}

void Google_Protobuf_Value.nullValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

void (*Google_Protobuf_Value.nullValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = v1[2];
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v6 = (v2 >> 60) & 3 | (4 * (v3 & 1));
    v7 = v6 == 0;
    v8 = v6 != 0;
    if (v7)
    {
      v4 = *v1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v8 | v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return sub_1AC4F5C08;
}

void sub_1AC4F5C08(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

double Google_Protobuf_Value.numberValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((~v1 & 0x3000000000000000) != 0 || (result = 0.0, v2 != 255))
  {
    result = *v0;
    if (((v1 >> 60) & 3 | (4 * (v2 & 1u))) != 1)
    {
      return 0.0;
    }
  }

  return result;
}

void sub_1AC4F5C88(__int128 *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = a1[2];
  *a2 = Google_Protobuf_Value.numberValue.getter();
}

double Google_Protobuf_Value.numberValue.setter(double a1)
{
  OUTLINED_FUNCTION_11_13();
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528320;
  *(v1 + 24) = 0;
  return result;
}

double (*Google_Protobuf_Value.numberValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || (v4 = 0.0, v3 != 255))
  {
    v4 = *v1;
    if (((v2 >> 60) & 3 | (4 * (v3 & 1u))) != 1)
    {
      v4 = 0.0;
    }
  }

  *a1 = v4;
  return sub_1AC4F5D74;
}

double sub_1AC4F5D74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528320;
  *(v1 + 24) = 0;
  return result;
}

uint64_t Google_Protobuf_Value.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_5_22();
  if (!v4 || v3 != 255)
  {
    OUTLINED_FUNCTION_21_9();
    if (v5 == 2)
    {
      v6 = OUTLINED_FUNCTION_1_1();
      sub_1AC485440(v6, v7, v8, v9);
    }
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_1AC4F5E0C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v8 = a1[2];
  result = Google_Protobuf_Value.stringValue.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1AC4F5E60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Google_Protobuf_Value.stringValue.setter(v1, v2);
}

void Google_Protobuf_Value.stringValue.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_13();
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0x2000000000000000;
  *(v2 + 24) = 0;
}

void (*Google_Protobuf_Value.stringValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_5_22();
  if (v6 && v5 == 255 || (OUTLINED_FUNCTION_21_9(), v9 != 2))
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    sub_1AC485440(v4, v3, v7, v8 & 1);
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_1AC4F5F68;
}

void sub_1AC4F5F68(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  if (a2)
  {
    v9 = a1[1];

    OUTLINED_FUNCTION_22_11();
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
  }
}

uint64_t Google_Protobuf_Value.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((~v1 & 0x3000000000000000) != 0 || v2 != 255)
  {
    return (((v1 >> 60) & 3 | (4 * (v2 & 1u))) == 3) & *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F6030@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  v7 = a1[2];
  result = Google_Protobuf_Value.BOOLValue.getter();
  *a2 = result & 1;
  return result;
}

double Google_Protobuf_Value.BOOLValue.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528330;
  *(v1 + 24) = 0;
  return result;
}

double (*Google_Protobuf_Value.BOOLValue.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((~v2 & 0x3000000000000000) != 0 || v3 != 255)
  {
    v4 = (((v2 >> 60) & 3 | (4 * (v3 & 1u))) == 3) & *v1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  return sub_1AC4F6124;
}

double sub_1AC4F6124(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_23_11();
  *v1 = v2;
  result = 0.0;
  *(v1 + 8) = xmmword_1AC528330;
  *(v1 + 24) = 0;
  return result;
}

double Google_Protobuf_Value.structValue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_5_22();
  if (v6 && v5 == 255 || (OUTLINED_FUNCTION_21_9(), v11 != 4))
  {
    *a1 = sub_1AC51ED58();
    result = 0.0;
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;

    sub_1AC485440(v7, v8, v9, v10 & 1);
  }

  return result;
}

__n128 Google_Protobuf_Value.structValue.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  OUTLINED_FUNCTION_11_13();
  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = 1;
  return result;
}

void (*Google_Protobuf_Value.structValue.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_5_22();
  if (v6 && v5 == 255 || (OUTLINED_FUNCTION_21_9(), v11 != 4))
  {
    *a1 = sub_1AC51ED58();
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    sub_1AC485440(v7, v8, v9, v10 & 1);
  }

  return sub_1AC4F62EC;
}

void sub_1AC4F62EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = *(v5 + 24);
  if (a2)
  {
    v10 = *a1;

    v11 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v11, v12);
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_32_7();

    v13 = OUTLINED_FUNCTION_44();

    sub_1AC4513F8(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_32_7();
  }
}

double Google_Protobuf_Value.listValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 5)
  {
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(v2, v3, v4, v5 & 1);
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC0];
    result = 0.0;
    *(a1 + 1) = xmmword_1AC51F990;
  }

  return result;
}

double sub_1AC4F63EC@<D0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  v12 = a1[2];
  a2(&v7);
  *a3 = v7;
  result = *&v8;
  *(a3 + 8) = v8;
  return result;
}

uint64_t sub_1AC4F6454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;

  sub_1AC4578F4(v6, v7);
  return a5(v9);
}

void Google_Protobuf_Value.listValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2] | 0x1000000000000000;
  OUTLINED_FUNCTION_11_13();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = 1;
}

void (*Google_Protobuf_Value.listValue.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_5_22();
  if (v6 && v5 == 255 || (OUTLINED_FUNCTION_21_9(), v11 != 5))
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = xmmword_1AC51F990;
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(v7, v8, v9, v10 & 1);
  }

  return sub_1AC4F658C;
}

void sub_1AC4F658C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[2] | 0x1000000000000000;
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 24);
  if (a2)
  {
    v10 = *a1;

    v11 = OUTLINED_FUNCTION_1_1();
    sub_1AC4578F4(v11, v12);
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_31_5();

    v13 = OUTLINED_FUNCTION_1_1();

    sub_1AC4513F8(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_31_5();
  }
}

uint64_t Google_Protobuf_Value.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v103[0] = *a1;
  v103[1] = v3;
  v103[2] = v4;
  v104 = v5;
  v105 = v6;
  v106 = v7;
  v107 = v8;
  v108 = v9;
  if (v5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v56 = 0;
      }

      if ((v55 | v56) != 1)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v103);
      v54 = *&v2 == v6;
      return v54 & 1;
    case 2uLL:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v40 = 0;
      }

      if ((v39 | v40) != 2)
      {

        goto LABEL_53;
      }

      v41 = v2 == *&v6 && v3 == v7;
      if (!v41)
      {
        v42 = sub_1AC51F3D8();
        v43 = OUTLINED_FUNCTION_1_28();
        sub_1AC485440(v43, v44, v45, v46);
        v47 = OUTLINED_FUNCTION_2_23();
        sub_1AC485440(v47, v48, v49, v50);
        sub_1AC4F6AAC(v103);
        return v42 & 1;
      }

      sub_1AC485440(v2, v3, v8, v9);
      v99 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v99, v100, v101, v102);
      sub_1AC4F6AAC(v103);
      goto LABEL_58;
    case 3uLL:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v53 = 0;
      }

      if ((v52 | v53) != 3)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v103);
      v54 = LOBYTE(v6) ^ v2 ^ 1;
      return v54 & 1;
    case 4uLL:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v15 = 0;
      }

      if ((v14 | v15) != 4)
      {

        v85 = OUTLINED_FUNCTION_18_9();
        goto LABEL_52;
      }

      v16 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v20, v21, v22, v23);
      v24 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v28, v29, v30, v31);
      v32 = OUTLINED_FUNCTION_1_1();
      if ((sub_1AC4F88B4(v32) & 1) == 0)
      {
        goto LABEL_50;
      }

      v33 = OUTLINED_FUNCTION_18_9();
      sub_1AC4578F4(v33, v34);
      sub_1AC4578F4(v7, v8);
      v35 = OUTLINED_FUNCTION_18_9();
      v36 = MEMORY[0x1AC5B4070](v35);
      sub_1AC4513F8(v7, v8);
      v37 = OUTLINED_FUNCTION_18_9();
      goto LABEL_46;
    case 5uLL:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v58 = 0;
      }

      if ((v57 | v58) != 5)
      {

        v86 = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v85 = v3;
LABEL_52:
        sub_1AC4578F4(v85, v86);
LABEL_53:
        v95 = OUTLINED_FUNCTION_1_28();
        sub_1AC485440(v95, v96, v97, v98);
        sub_1AC4F6AAC(v103);
        goto LABEL_54;
      }

      v59 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v59, v60, v61, v62);
      v63 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_1_28();
      sub_1AC485440(v67, v68, v69, v70);
      v71 = OUTLINED_FUNCTION_2_23();
      sub_1AC485440(v71, v72, v73, v74);
      v75 = OUTLINED_FUNCTION_1_1();
      if ((sub_1AC47E5E0(v75, v76) & 1) == 0)
      {
LABEL_50:
        sub_1AC4F6AAC(v103);
        v87 = OUTLINED_FUNCTION_1_28();
        sub_1AC48550C(v87, v88, v89, v90);
        v91 = OUTLINED_FUNCTION_2_23();
        sub_1AC48550C(v91, v92, v93, v94);
        goto LABEL_54;
      }

      sub_1AC4578F4(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1AC4578F4(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      v36 = MEMORY[0x1AC5B4070](v3, v4 & 0xCFFFFFFFFFFFFFFFLL, v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1AC4513F8(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
      v38 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v37 = v3;
LABEL_46:
      sub_1AC4513F8(v37, v38);
      sub_1AC4F6AAC(v103);
      v77 = OUTLINED_FUNCTION_1_28();
      sub_1AC48550C(v77, v78, v79, v80);
      v81 = OUTLINED_FUNCTION_2_23();
      sub_1AC48550C(v81, v82, v83, v84);
      if (v36)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_7_17();
      if (v41)
      {
        v12 = 0;
      }

      if (v11 | v12)
      {
        goto LABEL_53;
      }

      sub_1AC4F6AAC(v103);
      if (v3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v2;
      }

      if (v7)
      {
        if (!v13)
        {
          goto LABEL_58;
        }

LABEL_54:
        v54 = 0;
        return v54 & 1;
      }

      if (v13 != *&v6)
      {
        goto LABEL_54;
      }

LABEL_58:
      v54 = 1;
      return v54 & 1;
  }
}

uint64_t sub_1AC4F6A14(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v7, v8);
  sub_1AC4578F4(v5, v6);
  v9 = OUTLINED_FUNCTION_44();
  v10 = MEMORY[0x1AC5B4070](v9);
  sub_1AC4513F8(v5, v6);
  v11 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v11, v12);
  return v10 & 1;
}

uint64_t sub_1AC4F6AAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559CA8, &qword_1AC529BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Google_Protobuf_ListValue.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _s21InternalSwiftProtobuf07Google_C10_BoolValueV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t static Google_Protobuf_NullValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C48);
}

uint64_t static Google_Protobuf_Struct._protobuf_nameMap.getter()
{
  if (qword_1EB557F08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C68);
}

uint64_t sub_1AC4F6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 456);
  v8 = sub_1AC4D51A0();
  v9 = sub_1AC4F8B00();
  return v7(a2, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v8, v9, a3, a4);
}

void sub_1AC4F6DE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_13(a1, a2);
  if (v4)
  {
    MEMORY[0x1AC5B48A0](1);
    v5 = OUTLINED_FUNCTION_18_9();
    sub_1AC516414(v5);
  }

  switch(v2 >> 62)
  {
    case 1uLL:
      v6 = v3;
      v7 = v3 >> 32;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      if (v6 != v7)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_Struct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  if (!*(*v1 + 16) || (v7 = *(v2 + 424), v8 = sub_1AC4D51A0(), v9 = sub_1AC4F8B00(), result = v7(v5, 1, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v8, v9, v3, v2), !v0))
  {
    v11 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v11, v12);
    OUTLINED_FUNCTION_28_2();
    return sub_1AC4513F8(v4, v6);
  }

  return result;
}

uint64_t static Google_Protobuf_Value._protobuf_nameMap.getter()
{
  if (qword_1EB557AE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557AE8);
}

void Google_Protobuf_Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  while (1)
  {
    v7 = v6(a2, a3);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4F71AC(v9, v10, v11, v12);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_7();
        sub_1AC4F72C4(v23, v24, v25, v26);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_7();
        sub_1AC4F73BC(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_7();
        sub_1AC4F74C4(v19, v20, v21, v22);
        break;
      case 5:
        v13 = OUTLINED_FUNCTION_44();
        sub_1AC4F75BC(v13, v14, a2, a3);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_44();
        sub_1AC4F7778(v27, v28, a2, a3);
        break;
      default:
        continue;
    }
  }
}

void sub_1AC4F71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 256;
  v8 = *(a4 + 392);
  v9 = sub_1AC4F930C();
  v8(&v16, &type metadata for Google_Protobuf_NullValue, v9, a3, a4);
  if (!v4 && (v17 & 0x100) == 0)
  {
    v10 = v16;
    v11 = v17;
    v12 = *(a2 + 16);
    if ((~v12 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
    {
      (*(a4 + 8))(a3, a4);
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
    }

    else
    {
      v13 = -1;
    }

    v14 = *a2;
    v15 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_1AC4854E8(v14, v15, v12, v13);
  }
}

void sub_1AC4F72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 1;
  (*(a4 + 56))(&v13, a3, a4);
  if (!v4 && (v14 & 1) == 0)
  {
    v8 = v13;
    v9 = *(a2 + 16);
    if ((~v9 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
    {
      (*(a4 + 8))(a3, a4);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
    }

    else
    {
      v10 = -1;
    }

    v11 = *a2;
    v12 = *(a2 + 8);
    *a2 = v8;
    *(a2 + 8) = xmmword_1AC528320;
    *(a2 + 24) = 0;
    sub_1AC4854E8(v11, v12, v9, v10);
  }
}

void sub_1AC4F73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  (*(a4 + 344))(&v14, a3, a4);
  if (v4)
  {
  }

  else
  {
    v8 = v15;
    if (v15)
    {
      v9 = v14;
      v10 = *(a2 + 16);
      if ((~v10 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
      {
        (*(a4 + 8))(a3, a4);
        v10 = *(a2 + 16);
        v11 = *(a2 + 24);
      }

      else
      {
        v11 = -1;
      }

      v12 = *a2;
      v13 = *(a2 + 8);
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0x2000000000000000;
      *(a2 + 24) = 0;
      sub_1AC4854E8(v12, v13, v10, v11);
    }
  }
}

void sub_1AC4F74C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 2;
  (*(a4 + 320))(&v13, a3, a4);
  if (!v4)
  {
    v8 = v13;
    if (v13 != 2)
    {
      v9 = *(a2 + 16);
      if ((~v9 & 0x3000000000000000) != 0 || *(a2 + 24) != 255)
      {
        (*(a4 + 8))(a3, a4);
        v9 = *(a2 + 16);
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = -1;
      }

      v11 = *a2;
      v12 = *(a2 + 8);
      *a2 = v8 & 1;
      *(a2 + 8) = xmmword_1AC528330;
      *(a2 + 24) = 0;
      sub_1AC4854E8(v11, v12, v9, v10);
    }
  }
}

void sub_1AC4F75BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = (~v8 & 0x3000000000000000) != 0 || v9 != 255;
  if (v11 && ((v8 >> 60) & 3 | (4 * (v9 & 1u))) == 4)
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    sub_1AC485440(*a1, v14, v8, v9 & 1);
    sub_1AC4AEE04(0, 0, 0);
    v25 = v13;
    v26 = v14;
    v27 = v8;
  }

  v15 = *(a4 + 408);
  v16 = sub_1AC4D5050();
  v15(&v25, &type metadata for Google_Protobuf_Struct, v16, a3, a4);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  if (v4)
  {
    v20 = v25;
LABEL_15:
    sub_1AC4AEE04(v20, v26, v27);
    return;
  }

  if (!v25)
  {
    v20 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    v28 = *(a4 + 8);

    sub_1AC4578F4(v17, v19);
    v28(a3, a4);
  }

  else
  {

    sub_1AC4578F4(v17, v19);
  }

  sub_1AC4AEE04(v25, v26, v27);
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  v24 = *(a1 + 24);
  *(a1 + 24) = 1;
  sub_1AC4854E8(v21, v22, v23, v24);
}

void sub_1AC4F7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v27 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = (~v8 & 0x3000000000000000) != 0 || v9 != 255;
  if (v11 && ((v8 >> 60) & 3 | (4 * (v9 & 1u))) == 5)
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v8 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1AC485440(*a1, v14, v8, v9 & 1);
    sub_1AC4AEE04(0, 0, 0);
    v26 = v13;
    v27 = v14;
    v28 = v15;
  }

  v16 = *(a4 + 408);
  v17 = sub_1AC4D4FA8();
  v16(&v26, &type metadata for Google_Protobuf_ListValue, v17, a3, a4);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  if (v4)
  {
    v21 = v26;
LABEL_15:
    sub_1AC4AEE04(v21, v27, v28);
    return;
  }

  if (!v26)
  {
    v21 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    v29 = *(a4 + 8);

    sub_1AC4578F4(v18, v20);
    v29(a3, a4);
  }

  else
  {

    sub_1AC4578F4(v18, v20);
  }

  sub_1AC4AEE04(v26, v27, v28);
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 | 0x1000000000000000;
  v25 = *(a1 + 24);
  *(a1 + 24) = 1;
  sub_1AC4854E8(v22, v23, v24, v25);
}

void *sub_1AC4F7938(void *result)
{
  v3 = v1;
  v4 = result;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if ((~v7 & 0x3000000000000000) == 0 && v8 == 255)
  {
    goto LABEL_3;
  }

  switch((v7 >> 60) & 3 | (4 * (v8 & 1u)))
  {
    case 1uLL:
      v27 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v27, v28, v29, v8);
      result = sub_1AC4DF9DC(*&v5);
      break;
    case 2uLL:
      MEMORY[0x1AC5B48A0](3);
      result = sub_1AC51EEB8();
      goto LABEL_3;
    case 3uLL:
      v24 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v24, v25, v26, v8);
      MEMORY[0x1AC5B48A0](4);
      result = sub_1AC51F488();
      goto LABEL_3;
    case 4uLL:
      MEMORY[0x1AC5B48A0](5);
      memcpy(__dst, v4, sizeof(__dst));
      v17 = OUTLINED_FUNCTION_9_17();
      sub_1AC485440(v17, v18, v19, v20);
      sub_1AC4F6DE0(__dst, v5);
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
      }

      v21 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v21, v22, v23, v8);
      result = memcpy(v4, __dst, 0x48uLL);
      goto LABEL_3;
    case 5uLL:
      result = sub_1AC510AA4(v3, result);
      break;
    default:
      v11 = OUTLINED_FUNCTION_9_17();
      sub_1AC4854E8(v11, v12, v13, v8);
      MEMORY[0x1AC5B48A0](1);
      if (v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v5;
      }

      result = MEMORY[0x1AC5B48A0](v14);
      goto LABEL_3;
  }

  if (!v2)
  {
LABEL_3:
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    switch(v10 >> 62)
    {
      case 1uLL:
        v15 = v9;
        v16 = v9 >> 32;
        goto LABEL_13;
      case 2uLL:
        v15 = *(v9 + 16);
        v16 = *(v9 + 24);
LABEL_13:
        if (v15 != v16)
        {
          goto LABEL_14;
        }

        return result;
      case 3uLL:
        return result;
      default:
        if ((v10 & 0xFF000000000000) == 0)
        {
          return result;
        }

LABEL_14:
        result = sub_1AC51EC58();
        break;
    }
  }

  return result;
}

uint64_t Google_Protobuf_Value.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v10 = v0[1];
  v41 = *v0;
  v42 = v10;
  v43 = v0[2];
  if ((~v10 & 0x3000000000000000) == 0 && BYTE8(v10) == 255)
  {
    goto LABEL_14;
  }

  v11 = (BYTE8(v10) & 1) != 0 ? 4 : 0;
  switch(v11 | (v42 >> 60) & 3)
  {
    case 1uLL:
      v29 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7CFC(v29, v33, v30, v31, v32);
      break;
    case 2uLL:
      v21 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7D7C(v21, v22, v23, v24);
      break;
    case 3uLL:
      v25 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7E00(v25, v26, v27, v28);
      break;
    case 4uLL:
      v17 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7E7C(v17, v18, v19, v20);
      break;
    case 5uLL:
      v34 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7F44(v34, v35, v36, v37);
      break;
    default:
      v12 = OUTLINED_FUNCTION_0_34(v2, v3, v4, v5, v6, v7, v8, v9, v38, v39, v40, *(&v40 + 1), v41);
      result = sub_1AC4F7C3C(v12, v13, v14, v15);
      break;
  }

  if (!v1)
  {
LABEL_14:
    v44 = v43;
    v40 = v43;
    sub_1AC4848F4(&v44, &v38);
    OUTLINED_FUNCTION_28_2();
    return sub_1AC4513F8(v40, *(&v40 + 1));
  }

  return result;
}

uint64_t sub_1AC4F7C3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 24);
  if ((~v7 & 0x3000000000000000) == 0 && v8 == 255 || ((v9 = (v7 >> 60) & 3, (v8 & 1) == 0) ? (v10 = 0) : (v10 = 4), v10 | v9))
  {
    __break(1u);
  }

  else
  {
    v13 = *result;
    v14 = v6;
    v11 = *(a4 + 128);
    v12 = sub_1AC4F930C();
    return v11(&v13, 1, &type metadata for Google_Protobuf_NullValue, v12, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4F7CFC(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v7 = (v5 >> 60) & 3, (v6 & 1) == 0) ? (v8 = 0) : (v8 = 4), (v8 | v7) == 1))
  {
    a2.n128_u64[0] = *result;
    return (*(a5 + 16))(2, a4, a5, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4F7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if ((~v7 & 0x3000000000000000) != 0 || v8 != 255)
  {
    v9 = (v7 >> 60) & 3;
    v10 = (v8 & 1) != 0 ? 4 : 0;
    if ((v10 | v9) == 2)
    {
      return (*(a4 + 112))(result, v6, 3, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4F7E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  if ((~v4 & 0x3000000000000000) != 0 || v5 != 255)
  {
    v6 = (v4 >> 60) & 3;
    v7 = (v5 & 1) != 0 ? 4 : 0;
    if ((v7 | v6) == 3)
    {
      return (*(a4 + 104))(*result & 1, 4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4F7E7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *result;
  v7 = *(result + 16);
  v8 = *(result + 24);
  if (((~v7 & 0x3000000000000000) != 0 || v8 != 255) && ((v8 & 1) == 0 ? (v9 = 0) : (v9 = 4), (v9 | (v7 >> 60) & 3) == 4))
  {
    v12 = *result;
    v13 = v7 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(a4 + 136);
    v11 = sub_1AC4D5050();
    return v10(&v12, 5, &type metadata for Google_Protobuf_Struct, v11, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4F7F44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *result;
  v7 = *(result + 16);
  v8 = *(result + 24);
  if (((~v7 & 0x3000000000000000) != 0 || v8 != 255) && ((v8 & 1) == 0 ? (v9 = 0) : (v9 = 4), (v9 | (v7 >> 60) & 3) == 5))
  {
    v12 = *result;
    v13 = v7 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(a4 + 136);
    v11 = sub_1AC4D4FA8();
    return v10(&v12, 6, &type metadata for Google_Protobuf_ListValue, v11, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Google_Protobuf_Value.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v11 = a2[4];
  v12 = a2[5];
  if ((~v3 & 0x3000000000000000) == 0 && v4 == 255)
  {
    v78 = a2[5];
    v79 = a2[4];
    v13 = OUTLINED_FUNCTION_4_20();
    sub_1AC48541C(v13, v14, v15, 255);
    if ((~v9 & 0x3000000000000000) == 0 && v10 == 255)
    {
      v16 = OUTLINED_FUNCTION_6_21();
      sub_1AC48541C(v16, v17, v18, 255);
      v19 = OUTLINED_FUNCTION_4_20();
      sub_1AC4854E8(v19, v20, v21, 255);
LABEL_10:
      v60 = OUTLINED_FUNCTION_93_0();
      sub_1AC4578F4(v60, v61);
      sub_1AC4578F4(v79, v78);
      v62 = OUTLINED_FUNCTION_93_0();
      v63 = MEMORY[0x1AC5B4070](v62);
      sub_1AC4513F8(v79, v78);
      v64 = OUTLINED_FUNCTION_93_0();
      sub_1AC4513F8(v64, v65);
      return v63 & 1;
    }

    v67 = OUTLINED_FUNCTION_6_21();
    sub_1AC48541C(v67, v68, v69, v10);
    goto LABEL_12;
  }

  v82[0] = *a1;
  v82[1] = v2;
  v82[2] = v3;
  v83 = v4;
  if ((~v9 & 0x3000000000000000) == 0 && v10 == 255)
  {
    v22 = OUTLINED_FUNCTION_3_26();
    sub_1AC48541C(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_6_21();
    sub_1AC48541C(v26, v27, v28, 255);
    v29 = OUTLINED_FUNCTION_3_26();
    sub_1AC48541C(v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_4_20();
    sub_1AC48550C(v33, v34, v35, v36);
LABEL_12:
    v70 = OUTLINED_FUNCTION_3_26();
    sub_1AC4854E8(v70, v71, v72, v73);
    v74 = OUTLINED_FUNCTION_6_21();
    sub_1AC4854E8(v74, v75, v76, v10);
    return 0;
  }

  v78 = v12;
  v79 = v11;
  v80[0] = v7;
  v80[1] = v8;
  v80[2] = v9;
  v77 = v10 & 1;
  v81 = v10 & 1;
  v37 = OUTLINED_FUNCTION_3_26();
  sub_1AC48541C(v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_6_21();
  sub_1AC48541C(v41, v42, v43, v10);
  v44 = OUTLINED_FUNCTION_3_26();
  sub_1AC48541C(v44, v45, v46, v47);
  v48 = static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(v82, v80);
  v49 = OUTLINED_FUNCTION_6_21();
  sub_1AC48550C(v49, v50, v51, v77);
  v52 = OUTLINED_FUNCTION_4_20();
  sub_1AC48550C(v52, v53, v54, v55);
  v56 = OUTLINED_FUNCTION_3_26();
  sub_1AC4854E8(v56, v57, v58, v59);
  if (v48)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t Google_Protobuf_Value.hashValue.getter()
{
  v1 = v0[1];
  v33 = *v0;
  v34 = v1;
  v35 = v0[2];
  v2 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23[0], v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v10 = sub_1AC4F7938(v23);
  OUTLINED_FUNCTION_108(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v23[0], v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F82C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1AC51B77C();
}

void *sub_1AC4F8304(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  return sub_1AC481788(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC4F8340()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4F7938(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ListValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559C88);
}

uint64_t sub_1AC4F84B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v11 = *(a3 + 16);
  while (1)
  {
    result = v11(a2, a3);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1AC4F8540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4D51A0();
  return v7(a2, &type metadata for Google_Protobuf_Value, v8, a3, a4);
}

void sub_1AC4F85C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_13(a1, a2);
  if (!v5 || (sub_1AC50B7FC(), !v2))
  {
    switch(v3 >> 62)
    {
      case 1uLL:
        v6 = v4;
        v7 = v4 >> 32;
        goto LABEL_8;
      case 2uLL:
        v6 = *(v4 + 16);
        v7 = *(v4 + 24);
LABEL_8:
        if (v6 != v7)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t Google_Protobuf_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (!*(*v3 + 16) || (v11 = *(a3 + 280), v12 = sub_1AC4D51A0(), result = v11(v9, 1, &type metadata for Google_Protobuf_Value, v12, a2, a3), !v4))
  {
    v14 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v14, v15);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_1AC4513F8(v8, v10);
  }

  return result;
}

uint64_t sub_1AC4F875C(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = sub_1AC51F468();
  v14 = OUTLINED_FUNCTION_109(v6, v7, v8, v9, v10, v11, v12, v13, v32, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  v22 = OUTLINED_FUNCTION_20_11(v14, v15, v16, v17, v18, v19, v20, v21, v33, v36, v39);
  v23 = a1(v22);
  if (v3)
  {
    v23 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F8848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = sub_1AC51F468();
  v17 = OUTLINED_FUNCTION_109(v9, v10, v11, v12, v13, v14, v15, v16, v35, v38, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60);
  v25 = OUTLINED_FUNCTION_20_11(v17, v18, v19, v20, v21, v22, v23, v24, v36, v39, v42);
  v26 = a4(v25);
  if (v6)
  {
    v26 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v26, v27, v28, v29, v30, v31, v32, v33, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F88B4(uint64_t result, uint64_t a2)
{
  v56 = result;
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(result + 64);
  v48 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v49 = v7;
  if ((v5 & v3) != 0)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v9 = (v6 - 1) & v6;
LABEL_12:
      v12 = v8 | (v2 << 6);
      v13 = (*(v56 + 48) + 16 * v12);
      v14 = v13[1];
      v52 = *v13;
      v15 = *(v56 + 56) + 48 * v12;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v21 = *(v15 + 32);
      v20 = *(v15 + 40);

      v53 = v17;
      v22 = v17;
      v23 = v18;
      v24 = v18;
      v25 = v19;
      sub_1AC48541C(v16, v22, v24, v19);
      v54 = v21;
      v55 = v20;
      sub_1AC4578F4(v21, v20);
      if (!v14)
      {
        return 1;
      }

      v51 = v9;
      v61[0] = v16;
      v61[1] = v53;
      v61[2] = v23;
      v26 = v19;
      v62 = v19;
      v63 = v54;
      v64 = v20;
      v27 = sub_1AC4EFE58(v52, v14);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        sub_1AC4854E8(v16, v53, v23, v25);
        sub_1AC4513F8(v54, v20);
        return 0;
      }

      v30 = *(a2 + 56) + 48 * v27;
      v31 = *(v30 + 8);
      v32 = *(v30 + 16);
      v33 = *(v30 + 32);
      v34 = *(v30 + 40);
      v57[0] = *v30;
      v57[1] = v31;
      v57[2] = v32;
      v58 = *(v30 + 24);
      v59 = v33;
      v60 = v34;
      v35 = OUTLINED_FUNCTION_30_6();
      sub_1AC48541C(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_1_1();
      sub_1AC4578F4(v39, v40);
      v41 = static Google_Protobuf_Value.== infix(_:_:)(v57, v61);
      v42 = OUTLINED_FUNCTION_30_6();
      sub_1AC4854E8(v42, v43, v44, v45);
      v46 = OUTLINED_FUNCTION_1_1();
      sub_1AC4513F8(v46, v47);
      sub_1AC4854E8(v16, v53, v23, v26);
      result = sub_1AC4513F8(v54, v55);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      v7 = v49;
      v6 = v51;
    }

    while (v51);
  }

  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v48 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC4F8B00()
{
  result = qword_1EB559CB0;
  if (!qword_1EB559CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CB0);
  }

  return result;
}

unint64_t sub_1AC4F8B80()
{
  result = qword_1ED6E4058;
  if (!qword_1ED6E4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4058);
  }

  return result;
}

unint64_t sub_1AC4F8BD4()
{
  result = qword_1ED6E4050;
  if (!qword_1ED6E4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4050);
  }

  return result;
}

unint64_t sub_1AC4F8C2C()
{
  result = qword_1EB559CB8;
  if (!qword_1EB559CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559CC0, &qword_1AC529C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CB8);
  }

  return result;
}

unint64_t sub_1AC4F8C94()
{
  result = qword_1ED6E4130;
  if (!qword_1ED6E4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4130);
  }

  return result;
}

unint64_t sub_1AC4F8CE8(uint64_t a1)
{
  result = sub_1AC4F8D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8D10()
{
  result = qword_1EB557AD0;
  if (!qword_1EB557AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AD0);
  }

  return result;
}

unint64_t sub_1AC4F8D90()
{
  result = qword_1EB559CC8;
  if (!qword_1EB559CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CC8);
  }

  return result;
}

unint64_t sub_1AC4F8DE8()
{
  result = qword_1EB559CD0;
  if (!qword_1EB559CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CD0);
  }

  return result;
}

unint64_t sub_1AC4F8E3C(uint64_t a1)
{
  result = sub_1AC4F8E64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8E64()
{
  result = qword_1EB557C28;
  if (!qword_1EB557C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C28);
  }

  return result;
}

unint64_t sub_1AC4F8EE8()
{
  result = qword_1EB559CD8;
  if (!qword_1EB559CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CD8);
  }

  return result;
}

unint64_t sub_1AC4F8F3C(uint64_t a1)
{
  result = sub_1AC4F8F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4F8F64()
{
  result = qword_1EB557BF0;
  if (!qword_1EB557BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BF0);
  }

  return result;
}

uint64_t sub_1AC4F8FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4F9020()
{
  result = qword_1EB559CE0;
  if (!qword_1EB559CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CE0);
  }

  return result;
}

unint64_t sub_1AC4F9078()
{
  result = qword_1EB559CE8;
  if (!qword_1EB559CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_NullValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4F90EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C6_ValueV10OneOf_KindOSg(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24));
  v2 = v1 ^ 0x3FE;
  v3 = 1024 - v1;
  if (v2 >= 0x3FA)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AC4F9150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 48))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v3 = (*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24));
      v4 = v3 ^ 0x3FE;
      v2 = 1022 - v3;
      if (v4 >= 0x3FA)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4F91A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (~a2 & 3) << 60;
      *(result + 24) = ~a2 >> 2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AC4F9224(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FB && *(a1 + 25))
    {
      v2 = *a1 + 1018;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
      if (v2 >= 0x3FA)
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

uint64_t sub_1AC4F9270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1AC4F92D8(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 24) = (a2 & 4) != 0;
  return result;
}

unint64_t sub_1AC4F930C()
{
  result = qword_1EB559CF0;
  if (!qword_1EB559CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CF0);
  }

  return result;
}

uint64_t sub_1AC4F9380@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC4890F8();
  *a1 = result;
  return result;
}

void sub_1AC4F93FC()
{
  v1 = *v0;
  v2 = v0[1];
  JUMPOUT(0x1AC5B40B0);
}

uint64_t static SwiftProtobufError.BinaryStreamDecoding.malformedLength(function:file:line:)()
{
  OUTLINED_FUNCTION_1_29();
  type metadata accessor for SwiftProtobufError.Storage();
  v0 = OUTLINED_FUNCTION_5_23();
  *(v0 + 16) = 1;
  OUTLINED_FUNCTION_2_24(v0, 134);
}

uint64_t static SwiftProtobufError.BinaryStreamDecoding.noBytesAvailable(function:file:line:)()
{
  OUTLINED_FUNCTION_1_29();
  type metadata accessor for SwiftProtobufError.Storage();
  v0 = OUTLINED_FUNCTION_5_23();
  *(v0 + 16) = 1;
  OUTLINED_FUNCTION_2_24(v0, 147);
}

uint64_t sub_1AC4F9590()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v4 = v0[3];
  v3 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v4;
  *(v10 + 32) = v3;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v8;
  *(v10 + 64) = v7;
  *(v10 + 72) = v9;

  return v10;
}

uint64_t sub_1AC4F9648(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 4);
  *(v4 + 16) = *a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  *(v4 + 72) = v7;
  return v4;
}

void *sub_1AC4F9670()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[8];

  return v0;
}

uint64_t sub_1AC4F96AC()
{
  v0 = sub_1AC4F9670();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void sub_1AC4F96EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  SwiftProtobufError.code.getter(&v3);
  *a2 = v3;
}

uint64_t SwiftProtobufError.code.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((result & 1) == 0)
  {
    v6 = sub_1AC4F9590();
    v7 = *v2;

    *v2 = v6;
  }

  *(v6 + 16) = v3;
  return result;
}

uint64_t (*SwiftProtobufError.code.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 16);
  return sub_1AC4F97EC;
}

uint64_t sub_1AC4F97EC(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = **a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    v5 = sub_1AC4F9590();
    v6 = *v1;

    *v1 = v5;
  }

  *(v5 + 16) = v2;
  return result;
}

__n128 SwiftProtobufError.init(code:message:location:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v12 = a4[1];
  v13 = *a4;
  v9 = *(a4 + 4);
  type metadata accessor for SwiftProtobufError.Storage();
  v10 = OUTLINED_FUNCTION_5_23();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  result = v12;
  *(v10 + 40) = v13;
  *(v10 + 56) = v12;
  *(v10 + 72) = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1AC4F990C(char a1)
{
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](a1 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F995C()
{
  v1 = *v0;
  sub_1AC51F468();
  sub_1AC4F98E4(v3, v1);
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.Code.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.SourceLocation.function.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SwiftProtobufError.SourceLocation.function.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SwiftProtobufError.SourceLocation.file.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SwiftProtobufError.SourceLocation.file.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall SwiftProtobufError.SourceLocation.init(function:file:line:)(InternalSwiftProtobuf::SwiftProtobufError::SourceLocation *__return_ptr retstr, Swift::String function, Swift::String file, Swift::Int line)
{
  retstr->function = function;
  retstr->file = file;
  retstr->line = line;
}

uint64_t static SwiftProtobufError.SourceLocation.here(function:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

BOOL static SwiftProtobufError.SourceLocation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1AC51F3D8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1AC51F3D8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SwiftProtobufError.SourceLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1AC51EEB8();
  sub_1AC51EEB8();
  return MEMORY[0x1AC5B48A0](v5);
}

uint64_t SwiftProtobufError.SourceLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1AC51F468();
  sub_1AC51EEB8();
  sub_1AC51EEB8();
  MEMORY[0x1AC5B48A0](v5);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4F9DD8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1AC51F468();
  SwiftProtobufError.SourceLocation.hash(into:)();
  return sub_1AC51F4C8();
}

uint64_t SwiftProtobufError.description.getter()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = "google.protobuf.SourceContext";
  }

  else
  {
    v2 = "Stream decoding error";
  }

  MEMORY[0x1AC5B4340](0xD000000000000015, v2 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_27();
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  sub_1AC51F328();
  OUTLINED_FUNCTION_4_21();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  MEMORY[0x1AC5B4340](v3, v4);

  return 0;
}

uint64_t SwiftProtobufError.debugDescription.getter()
{
  v1 = *v0;
  v5 = *(*v0 + 16);
  v13 = sub_1AC51EE48();
  OUTLINED_FUNCTION_3_27();
  v6 = v1[5];
  v8 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];

  v2 = sub_1AC51EE48();
  MEMORY[0x1AC5B4340](v2);

  OUTLINED_FUNCTION_4_21();
  v7 = v1[3];
  v9 = v1[4];

  v3 = sub_1AC51EE48();
  MEMORY[0x1AC5B4340](v3);

  return v13;
}

uint64_t sub_1AC4F9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  type metadata accessor for SwiftProtobufError.Storage();
  v14 = OUTLINED_FUNCTION_5_23();
  *(v14 + 16) = a6;
  *(v14 + 24) = 0xD00000000000003CLL;
  *(v14 + 32) = 0x80000001AC52DF60;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  *(v14 + 64) = a4;
  *(v14 + 72) = a5;
  *a7 = v14;
}

unint64_t sub_1AC4FA0A0()
{
  result = qword_1EB559CF8;
  if (!qword_1EB559CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559CF8);
  }

  return result;
}

unint64_t sub_1AC4FA0F8()
{
  result = qword_1EB559D00;
  if (!qword_1EB559D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D00);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC4FA20C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AC4FA24C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1AC4FA2AC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1AC4FA354(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC4FA434()
{
  result = qword_1EB559D08;
  if (!qword_1EB559D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D08);
  }

  return result;
}

uint64_t sub_1AC4FA494()
{
  v2 = v1;
  v3 = *(v0 + 88);
  if (v3 >= 1)
  {
    sub_1AC507364();
  }

  result = *(v0 + 104);
  if (result)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = v6;
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v18 = v5;
    v19 = v7;
    v9 = *(v0 + 144);
    v10 = *(v0 + 96);
    v11 = *(v0 + 97);

    v12 = sub_1AC5073AC(&v16, v8, v9, v10 | (v11 << 8));
    if (v2)
    {
      v14 = v17;

      return v14;
    }

    v14 = v12;
    v15 = v13;

    if (v15)
    {
      return v14;
    }

    if (!__OFADD__(v3, 1))
    {
      *(v0 + 88) = v3 + 1;
      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4FA5C4()
{
  sub_1AC477954();
  OUTLINED_FUNCTION_11();
  return OUTLINED_FUNCTION_59(v0, 9);
}

void sub_1AC4FA604()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5078C0();
    *v0 = v2;
  }
}

void sub_1AC4FA634()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5078C0();
    *v0 = v2;
    *(v0 + 4) = 0;
  }
}

void sub_1AC4FA668()
{
  OUTLINED_FUNCTION_32_8();
  if (!v1)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC5078C0();
      v27 = v26;
      sub_1AC4D9ACC();
      v28 = *(*v2 + 16);
      sub_1AC4D9A3C(v28);
      v29 = *v2;
      *(v29 + 16) = v28 + 1;
      *(v29 + 4 * v28 + 32) = v27;
      *v2 = v29;
      return;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v5);
      if (v7)
      {
        OUTLINED_FUNCTION_11_14(v5);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v7)
          {
            if (v10 != 35)
            {
              break;
            }

            v11 = v5 + 1;
            while (v11 != v4)
            {
              OUTLINED_FUNCTION_1_0(v11);
              if (v7)
              {
                goto LABEL_10;
              }
            }

            v11 = v4;
          }

          else
          {
            v11 = v5 + 1;
          }

LABEL_10:
          OUTLINED_FUNCTION_12_16(v11);
          if (v7)
          {
            break;
          }

          v9 = *v5;
        }

LABEL_26:
        if (v5 == v4 || (OUTLINED_FUNCTION_19_11(v5), !v7))
        {
          v30 = 0;
LABEL_51:
          sub_1AC477954();
          OUTLINED_FUNCTION_11();
          *v31 = v30;
          swift_willThrow();
          return;
        }

LABEL_29:
        v17 = (v16 + 1);
LABEL_30:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v17);
          if (v7)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v18);
          if (!v7 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v7)
          {
            goto LABEL_29;
          }

          if (v20 != 35)
          {
            break;
          }

          v17 = (v16 + 1);
          while (v17 != v4)
          {
            OUTLINED_FUNCTION_1_0(v17);
            if (v7)
            {
              goto LABEL_30;
            }
          }

          v17 = v4;
        }
      }

LABEL_20:
      v12 = COERCE_DOUBLE(sub_1AC50A208());
      if (v13)
      {
        v14 = *(v0 + 40);
        if (v14 != v4 && *v14 == 45)
        {
          *(v0 + 40) = v14 + 1;
        }

        if (sub_1AC50A3E4(&unk_1F2127800))
        {
          v15 = NAN;
        }

        else
        {
          *(v0 + 40) = v14;
          v21 = sub_1AC50A4D4();
          if ((v21 & 0x100000000) != 0)
          {
            v30 = 1;
            goto LABEL_51;
          }

          v15 = *&v21;
        }
      }

      else
      {
        v15 = v12;
      }

      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_22();
        sub_1AC48F1A4();
        v3 = v24;
      }

      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_3_28(v22);
        sub_1AC48F1A4();
        v3 = v25;
      }

      OUTLINED_FUNCTION_28_6();
      *(v3 + 4 * v23 + 32) = v15;
      *v2 = v3;
    }

    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }
}

void sub_1AC4FA8B4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5079AC();
    *v0 = v2;
  }
}

void sub_1AC4FA8E4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    sub_1AC5079AC();
    *v0 = v2;
    *(v0 + 8) = 0;
  }
}

void sub_1AC4FA918()
{
  OUTLINED_FUNCTION_32_8();
  if (!v1)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC5079AC();
      v27 = v26;
      sub_1AC4D9AE4();
      v28 = *(*v2 + 16);
      sub_1AC4D9A54(v28);
      v29 = *v2;
      *(v29 + 16) = v28 + 1;
      *(v29 + 8 * v28 + 32) = v27;
      *v2 = v29;
      return;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v5);
      if (v7)
      {
        OUTLINED_FUNCTION_11_14(v5);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v7)
          {
            if (v10 != 35)
            {
              break;
            }

            v11 = v5 + 1;
            while (v11 != v4)
            {
              OUTLINED_FUNCTION_1_0(v11);
              if (v7)
              {
                goto LABEL_10;
              }
            }

            v11 = v4;
          }

          else
          {
            v11 = v5 + 1;
          }

LABEL_10:
          OUTLINED_FUNCTION_12_16(v11);
          if (v7)
          {
            break;
          }

          v9 = *v5;
        }

LABEL_26:
        if (v5 == v4 || (OUTLINED_FUNCTION_19_11(v5), !v7))
        {
          v30 = 0;
LABEL_51:
          sub_1AC477954();
          OUTLINED_FUNCTION_11();
          *v31 = v30;
          swift_willThrow();
          return;
        }

LABEL_29:
        v17 = (v16 + 1);
LABEL_30:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v17);
          if (v7)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v18);
          if (!v7 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v7)
          {
            goto LABEL_29;
          }

          if (v20 != 35)
          {
            break;
          }

          v17 = (v16 + 1);
          while (v17 != v4)
          {
            OUTLINED_FUNCTION_1_0(v17);
            if (v7)
            {
              goto LABEL_30;
            }
          }

          v17 = v4;
        }
      }

LABEL_20:
      v12 = sub_1AC50A208();
      if (v13)
      {
        v14 = *(v0 + 40);
        if (v14 != v4 && *v14 == 45)
        {
          *(v0 + 40) = v14 + 1;
        }

        if (sub_1AC50A3E4(&unk_1F2127828))
        {
          v15 = NAN;
        }

        else
        {
          *(v0 + 40) = v14;
          v21 = sub_1AC50A4D4();
          if ((v21 & 0x100000000) != 0)
          {
            v30 = 1;
            goto LABEL_51;
          }

          v15 = *&v21;
        }
      }

      else
      {
        v15 = *&v12;
      }

      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_22();
        sub_1AC48F268();
        v3 = v24;
      }

      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_3_28(v22);
        sub_1AC48F268();
        v3 = v25;
      }

      OUTLINED_FUNCTION_28_6();
      *(v3 + 8 * v23 + 32) = v15;
      *v2 = v3;
    }

    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }
}

void sub_1AC4FAB64()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v2 = sub_1AC507A20();
    if (v2 == v2)
    {
      *v1 = v2;
    }

    else
    {
      sub_1AC477954();
      v3 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_18(v3, v4);
      swift_willThrow();
    }
  }
}

void sub_1AC4FABD0()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v2 = sub_1AC507A20();
    if (v2 == v2)
    {
      *v1 = v2;
      *(v1 + 4) = 0;
    }

    else
    {
      sub_1AC477954();
      v3 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_18(v3, v4);
      swift_willThrow();
    }
  }
}

void sub_1AC4FAE94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      v23 = sub_1AC507A20();
      sub_1AC45F540();
      v24 = OUTLINED_FUNCTION_16_11();
      sub_1AC45F558(v24);
      OUTLINED_FUNCTION_14_13();
      *(v25 + 8 * v2 + 32) = v23;
      *v1 = v25;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_2_25();
    while (1)
    {
      OUTLINED_FUNCTION_25_6();
      if (v6)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v4);
      if (v6)
      {
        OUTLINED_FUNCTION_11_14(v4);
        sub_1AC509980();
        goto LABEL_2;
      }

      if ((v7 & 1) == 0)
      {
        while (v8 <= 0x23)
        {
          OUTLINED_FUNCTION_8_18();
          if (v6)
          {
            if (v9 != 35)
            {
              break;
            }

            v10 = v4 + 1;
            while (v10 != v3)
            {
              OUTLINED_FUNCTION_10_0(v10);
              if (v6 || v11 == 13)
              {
                goto LABEL_11;
              }
            }

            v10 = v3;
          }

          else
          {
            v10 = v4 + 1;
          }

LABEL_11:
          OUTLINED_FUNCTION_12_16(v10);
          if (v6)
          {
            break;
          }

          v8 = *v4;
        }

LABEL_27:
        if (v4 == v3 || (OUTLINED_FUNCTION_19_11(v4), !v6))
        {
          sub_1AC477954();
          v28 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_26_9(v28, v29);
          goto LABEL_53;
        }

LABEL_30:
        v15 = v4 + 1;
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_12_16(v15);
          if (v6)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v4);
          if (!v6 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_17_14();
          if (!v6)
          {
            goto LABEL_30;
          }

          if (v17 != 35)
          {
            break;
          }

          v15 = v4 + 1;
          while (v15 != v3)
          {
            OUTLINED_FUNCTION_10_0(v15);
            if (v6 || v18 == 13)
            {
              goto LABEL_31;
            }
          }

          v15 = v3;
        }
      }

LABEL_21:
      if (v4 == v3)
      {
        goto LABEL_51;
      }

      if (*v4 != 45)
      {
        v14 = sub_1AC507AC8();
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

LABEL_43:
        v19 = v1;
        if (OUTLINED_FUNCTION_40_5())
        {
          goto LABEL_44;
        }

LABEL_49:
        OUTLINED_FUNCTION_4_22();
        sub_1AC456C38();
        v2 = v21;
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_11_14(v4);
      if (v12 == v3 || *v12 - 58 <= 0xFFFFFFF5)
      {
LABEL_51:
        sub_1AC477954();
        v26 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_9_18(v26, v27);
LABEL_53:
        swift_willThrow();
        goto LABEL_2;
      }

      v13 = sub_1AC507AC8();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = -v13;
        goto LABEL_43;
      }

      if (v13 != 0x8000000000000000)
      {
        goto LABEL_51;
      }

      v19 = v1;
      v14 = 0x8000000000000000;
      if ((OUTLINED_FUNCTION_40_5() & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_44:
      OUTLINED_FUNCTION_15_12();
      if (v16)
      {
        OUTLINED_FUNCTION_3_28(v20);
        sub_1AC456C38();
        v2 = v22;
      }

      OUTLINED_FUNCTION_28_6();
      *(v2 + 8 * v1 + 32) = v14;
      v1 = v19;
      *v19 = v2;
    }

    if (v5)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_2:
  OUTLINED_FUNCTION_61();
}

void sub_1AC4FB100()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v2 = sub_1AC507AC8();
    if (HIDWORD(v2))
    {
      sub_1AC477954();
      v3 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_18(v3, v4);
      swift_willThrow();
    }

    else
    {
      *v1 = v2;
    }
  }
}

void sub_1AC4FB16C()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v2 = sub_1AC507AC8();
    if (HIDWORD(v2))
    {
      sub_1AC477954();
      v3 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_18(v3, v4);
      swift_willThrow();
    }

    else
    {
      *v1 = v2;
      *(v1 + 4) = 0;
    }
  }
}

void sub_1AC4FB670(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_44_5();
  if (!v3)
  {
    *v2 = a2();
  }
}

void sub_1AC4FB6A8(uint64_t a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_44_5();
  if (!v3)
  {
    *v2 = a2();
    *(v2 + 8) = 0;
  }
}

void sub_1AC4FB6E4()
{
  OUTLINED_FUNCTION_44_5();
  if (!v1)
  {
    *v0 = sub_1AC507C74() & 1;
  }
}

void sub_1AC4FB8F4()
{
  OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v2 = sub_1AC507D8C();
    v4 = v3;
    v5 = v1[1];

    *v1 = v2;
    v1[1] = v4;
  }
}

void sub_1AC4FB94C(uint64_t *a1)
{
  sub_1AC50AB78(0x3Au);
  v5 = v2;
  if (!v2)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC507D8C();
      OUTLINED_FUNCTION_50_4();
      sub_1AC456458();
      sub_1AC456470(*(*a1 + 16));
      OUTLINED_FUNCTION_33_6();
      return;
    }

    OUTLINED_FUNCTION_34_6();
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v3)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v7);
      if (v10)
      {
        OUTLINED_FUNCTION_11_14(v7);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_51_4();
          if (v10)
          {
            if (v11 != 35)
            {
              break;
            }

            v12 = v7 + 1;
            while (v12 != v3)
            {
              OUTLINED_FUNCTION_10_0(v12);
              if (v10 || v13 == 13)
              {
                goto LABEL_11;
              }
            }

            v12 = v3;
          }

          else
          {
            v12 = v7 + 1;
          }

LABEL_11:
          OUTLINED_FUNCTION_47_4(v12);
          if (v10)
          {
            break;
          }

          v9 = *v7;
        }

LABEL_27:
        if (v7 == v3 || (OUTLINED_FUNCTION_19_11(v7), !v10))
        {
          sub_1AC477954();
          v30 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_26_9(v30, v31);
          swift_willThrow();
          return;
        }

LABEL_30:
        v25 = (v24 + 1);
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_47_4(v25);
          if (v10)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v26);
          if (!v10 & v27)
          {
            break;
          }

          OUTLINED_FUNCTION_51_4();
          if (!v10)
          {
            goto LABEL_30;
          }

          if (v28 != 35)
          {
            break;
          }

          v25 = (v24 + 1);
          while (v25 != v3)
          {
            OUTLINED_FUNCTION_10_0(v25);
            if (v10 || v29 == 13)
            {
              goto LABEL_31;
            }
          }

          v25 = v3;
        }
      }

LABEL_21:
      sub_1AC507D8C();
      if (v5)
      {
        return;
      }

      OUTLINED_FUNCTION_50_4();
      v14 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_41();
        sub_1AC4525C0();
        v14 = isUniquelyReferenced_nonNull_native;
      }

      v5 = *(v14 + 16);
      v23 = *(v14 + 24);
      a1 = (v5 + 1);
      if (v5 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_43(v23);
        sub_1AC4525C0();
      }

      OUTLINED_FUNCTION_29_6(isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22, v32, v33);
    }

    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

void sub_1AC4FBB8C(uint64_t a1, void (*a2)(void, void))
{
  OUTLINED_FUNCTION_32_8();
  if (!v2)
  {
    sub_1AC507E80();
    v6 = v5;
    v8 = v7;
    a2(*v3, v3[1]);
    *v3 = v6;
    v3[1] = v8;
  }
}

void sub_1AC4FBBF4(uint64_t *a1)
{
  sub_1AC50AB78(0x3Au);
  v5 = v2;
  if (!v2)
  {
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC507E80();
      OUTLINED_FUNCTION_50_4();
      sub_1AC45846C();
      sub_1AC458484(*(*a1 + 16));
      OUTLINED_FUNCTION_33_6();
      return;
    }

    OUTLINED_FUNCTION_34_6();
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v3)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v7);
      if (v10)
      {
        OUTLINED_FUNCTION_11_14(v7);
        sub_1AC509980();
        return;
      }

      if ((v8 & 1) == 0)
      {
        while (v9 <= 0x23)
        {
          OUTLINED_FUNCTION_51_4();
          if (v10)
          {
            if (v11 != 35)
            {
              break;
            }

            v12 = v7 + 1;
            while (v12 != v3)
            {
              OUTLINED_FUNCTION_10_0(v12);
              if (v10 || v13 == 13)
              {
                goto LABEL_11;
              }
            }

            v12 = v3;
          }

          else
          {
            v12 = v7 + 1;
          }

LABEL_11:
          OUTLINED_FUNCTION_47_4(v12);
          if (v10)
          {
            break;
          }

          v9 = *v7;
        }

LABEL_27:
        if (v7 == v3 || (OUTLINED_FUNCTION_19_11(v7), !v10))
        {
          sub_1AC477954();
          v30 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_26_9(v30, v31);
          swift_willThrow();
          return;
        }

LABEL_30:
        v25 = (v24 + 1);
LABEL_31:
        while (1)
        {
          OUTLINED_FUNCTION_47_4(v25);
          if (v10)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v26);
          if (!v10 & v27)
          {
            break;
          }

          OUTLINED_FUNCTION_51_4();
          if (!v10)
          {
            goto LABEL_30;
          }

          if (v28 != 35)
          {
            break;
          }

          v25 = (v24 + 1);
          while (v25 != v3)
          {
            OUTLINED_FUNCTION_10_0(v25);
            if (v10 || v29 == 13)
            {
              goto LABEL_31;
            }
          }

          v25 = v3;
        }
      }

LABEL_21:
      sub_1AC507E80();
      if (v5)
      {
        return;
      }

      OUTLINED_FUNCTION_50_4();
      v14 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_41();
        sub_1AC45794C();
        v14 = isUniquelyReferenced_nonNull_native;
      }

      v5 = *(v14 + 16);
      v23 = *(v14 + 24);
      a1 = (v5 + 1);
      if (v5 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_43(v23);
        sub_1AC45794C();
      }

      OUTLINED_FUNCTION_29_6(isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22, v32, v33);
    }

    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

unsigned __int8 *sub_1AC4FBDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1AC51F228();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  result = sub_1AC508078();
  if (!v3)
  {
    if (v17)
    {
      v18 = sub_1AC507A20();
      if (v18 != v18)
      {
        sub_1AC477954();
        swift_allocError();
        *v19 = 0;
        return swift_willThrow();
      }

      (*(a2 + 32))();
      if (__swift_getEnumTagSinglePayload(v12, 1, a1) == 1)
      {
        (*(v8 + 8))(v12, v7);
        goto LABEL_7;
      }

      v14 = v12;
    }

    else
    {
      sub_1AC46AB60(result, v16, a1, a2, v14);
      if (__swift_getEnumTagSinglePayload(v14, 1, a1) == 1)
      {
        (*(v8 + 8))(v14, v7);
LABEL_7:
        sub_1AC477954();
        swift_allocError();
        *v20 = 8;
        return swift_willThrow();
      }
    }

    return (*(*(a1 - 8) + 32))(a3, v14, a1);
  }

  return result;
}

void sub_1AC4FC030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_22(a1, a2);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_8();
  sub_1AC50AB78(0x3Au);
  if (!v2)
  {
    OUTLINED_FUNCTION_59_2();
    v8 = sub_1AC51F228();
    OUTLINED_FUNCTION_0(v8);
    (*(v9 + 8))(a1);
    v10 = OUTLINED_FUNCTION_55_2();
    v11(v10);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, a2);
  }
}

void sub_1AC4FC138(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_22(a1, a2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_8();
  sub_1AC50AB78(0x3Au);
  if (!v2)
  {
    OUTLINED_FUNCTION_59_2();
    (*(v6 + 8))(a1, a2);
    v10 = OUTLINED_FUNCTION_55_2();
    v11(v10);
  }
}

void sub_1AC4FC218()
{
  OUTLINED_FUNCTION_60();
  v40 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_6_22(v5, v3);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  sub_1AC50AB78(0x3Au);
  if (!v1)
  {
    v36 = v18;
    if ((sub_1AC507934() & 1) == 0)
    {
      sub_1AC4FBDF0(v4, v40, v14);
      (*(v8 + 16))(v36, v14, v4);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*(v8 + 8))(v14, v4);
      goto LABEL_2;
    }

    v38 = (v8 + 16);
    v39 = v6;
    v21 = *(v0 + 48);
    v37 = (v8 + 8);
    OUTLINED_FUNCTION_42_4();
    v22 = 1;
    v23 = v40;
    v24 = v36;
    while (1)
    {
      v25 = *(v0 + 40);
      if (v25 == v21)
      {
        break;
      }

      OUTLINED_FUNCTION_20_12(v25);
      if (v28)
      {
        *(v0 + 40) = v25 + 1;
        sub_1AC509980();
        goto LABEL_2;
      }

      if ((v26 & 1) == 0)
      {
        while (v27 <= 0x23)
        {
          if (((1 << v27) & v6) != 0)
          {
            ++v25;
          }

          else
          {
            if (v27 != 35)
            {
              break;
            }

            ++v25;
            while (v25 != v21)
            {
              OUTLINED_FUNCTION_10_0(v25);
              if (v28 || v29 == 13)
              {
                goto LABEL_11;
              }
            }

            v25 = v21;
          }

LABEL_11:
          *(v0 + 40) = v25;
          if (v25 == v21)
          {
            break;
          }

          v27 = *v25;
        }

LABEL_22:
        if (v25 == v21 || (OUTLINED_FUNCTION_19_11(v25), !v28))
        {
          sub_1AC477954();
          OUTLINED_FUNCTION_11();
          *v35 = 0;
          swift_willThrow();
          goto LABEL_2;
        }

LABEL_25:
        v31 = (v30 + 1);
LABEL_26:
        while (1)
        {
          *(v0 + 40) = v31;
          if (v31 == v21)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v31);
          if (!v28 & v33)
          {
            break;
          }

          if (((1 << v32) & v6) != 0)
          {
            goto LABEL_25;
          }

          if (v32 != 35)
          {
            break;
          }

          v31 = (v30 + 1);
          while (v31 != v21)
          {
            OUTLINED_FUNCTION_10_0(v31);
            if (v28 || v34 == 13)
            {
              goto LABEL_26;
            }
          }

          v31 = v21;
        }
      }

LABEL_21:
      sub_1AC4FBDF0(v4, v23, v20);
      (*v38)(v24, v20, v4);
      sub_1AC51F108();
      sub_1AC51F0D8();
      (*v37)(v20, v4);
      v22 = 0;
      v23 = v40;
    }

    if (v22)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_2:
  OUTLINED_FUNCTION_61();
}

void sub_1AC4FC558()
{
  OUTLINED_FUNCTION_60();
  v49 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_6_22(v5, v3);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v42 = v12 - v11;
  v13 = sub_1AC51F228();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v41 = v16 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v46 = (&v40 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v40 - v24);
  v26 = v0;
  sub_1AC5080F0();
  v27 = *(v14 + 16);
  v48 = v6;
  v44 = v27;
  v45 = v14 + 16;
  v27(v25, v6, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v4);
  v47 = v14;
  v29 = v14;
  v30 = v13;
  v31 = *(v29 + 8);
  v31(v25, v30);
  if (EnumTagSinglePayload == 1)
  {
    (*(v49 + 16))(v4);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v4);
    (*(v47 + 40))(v48, v23, v30);
  }

  sub_1AC507264();
  if (v1)
  {
    goto LABEL_16;
  }

  v33 = v32;
  sub_1AC4779A8(v26, &v52);
  *(&v51[5] + 1) = 0;
  *(&v51[6] + 8) = 0u;
  *(&v51[7] + 8) = 0u;
  sub_1AC4779A8(&v52, v51);
  LOWORD(v51[6]) = v33;
  if (!dynamic_cast_existential_1_conditional(v4))
  {
    sub_1AC477954();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_59(v35, 6);
    sub_1AC477A04(&v52);
    sub_1AC477A04(v51);
    sub_1AC458E14(*(&v51[6] + 1));
LABEL_16:
    OUTLINED_FUNCTION_61();
    return;
  }

  (*(v34 + 8))(v50);
  sub_1AC477A04(&v52);
  sub_1AC458E14(*(&v51[6] + 1));
  *(&v51[7] + 8) = v50[1];
  *(&v51[6] + 8) = v50[0];
  *(&v51[8] + 1) = v4;
  *&v51[9] = v49;
  memcpy(v54, v51, 0x98uLL);
  if (v4 != &type metadata for Google_Protobuf_Any)
  {
    if (__swift_getEnumTagSinglePayload(v48, 1, v4) != 1)
    {
      (*(v49 + 64))(v54, &type metadata for TextFormatDecoder, &off_1F211BCA0, v4);
LABEL_15:
      sub_1AC477AFC(v54, v26);
      sub_1AC477AA8(v54);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_18;
  }

  v4 = v46;
  v36 = v48;
  v44(v46, v48, v30);
  if (__swift_getEnumTagSinglePayload(v4, 1, &type metadata for Google_Protobuf_Any) == 1)
  {
LABEL_18:
    v31(v4, v30);
    goto LABEL_19;
  }

  (*(v43 + 32))(v42, v4, &type metadata for Google_Protobuf_Any);
  OUTLINED_FUNCTION_46_5();
  v51[0] = v52;
  *&v51[1] = v53;
  if (v53)
  {
    sub_1AC4D345C(v54);
    if (*&v51[1])
    {
      v52 = v51[0];
      v53 = *&v51[1];
      sub_1AC4578F4(*&v51[0], *(&v51[0] + 1));

      v37 = v41;
      OUTLINED_FUNCTION_46_5();
      v38 = v37;
      v39 = 0;
    }

    else
    {
      v37 = v41;
      v38 = v41;
      v39 = 1;
    }

    __swift_storeEnumTagSinglePayload(v38, v39, 1, &type metadata for Google_Protobuf_Any);
    (*(v47 + 40))(v36, v37, v30);
    sub_1AC48532C(*&v51[0], *(&v51[0] + 1), *&v51[1]);
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_1AC4FCA80()
{
  OUTLINED_FUNCTION_60();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v182 = v7;
  v8 = v193;
  v184 = v9;
  OUTLINED_FUNCTION_6_22(v7, v9);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v180 = &v170 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v170 - v21;
  sub_1AC5080F0();
  v22 = sub_1AC507934();
  v179 = v6;
  if ((v22 & 1) == 0)
  {
    sub_1AC507264();
    if (v1)
    {
      goto LABEL_237;
    }

    v147 = v146;
    sub_1AC4779A8(v4, &v194);
    OUTLINED_FUNCTION_38_5();
    LOWORD(v193[6]) = v147;
    v148 = v184;
    v149 = dynamic_cast_existential_1_conditional(v184);
    if (v149)
    {
      OUTLINED_FUNCTION_58_3(v149, v150);
      v151();
      sub_1AC477A04(&v194);
      sub_1AC458E14(*(&v193[6] + 1));
      *(&v193[7] + 8) = v192;
      *(&v193[6] + 8) = v191;
      v152 = v179;
      *(&v193[8] + 1) = v148;
      *&v193[9] = v179;
      memcpy(v196, v193, 0x98uLL);
      if (v148 == &type metadata for Google_Protobuf_Any)
      {
        v193[0] = xmmword_1AC51F990;
        if (qword_1ED6E3410 != -1)
        {
          goto LABEL_250;
        }

        goto LABEL_228;
      }

      (*(v179 + 16))(v148, v179);
      (*(v152 + 64))(v196, &type metadata for TextFormatDecoder, &off_1F211BCA0, v148, v152);
      (*(v11 + 16))(v181, v17, v148);
      sub_1AC51F108();
      OUTLINED_FUNCTION_45_4();
      (*(v11 + 8))(v17, v148);
      goto LABEL_240;
    }

LABEL_223:
    sub_1AC477954();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_59(v153, 6);
    sub_1AC477A04(&v194);
    sub_1AC477A04(v193);
    sub_1AC458E14(*(&v193[6] + 1));
    goto LABEL_237;
  }

  v176 = v6 + 64;
  v177 = v6 + 16;
  v175 = (v11 + 16);
  v178 = v11 + 8;
  OUTLINED_FUNCTION_42_4();
  v174 = *(v24 + 2448);
  for (i = 1; ; i = 0)
  {
    v26 = v4[5];
    v27 = v4[6];
    if (v26 != v27 && *v26 == 93)
    {
      v4[5] = v26 + 1;
      sub_1AC509980();
      goto LABEL_237;
    }

    if ((i & 1) == 0)
    {
      sub_1AC509980();
      v28 = v4[5];
      if (v28 == v27 || (OUTLINED_FUNCTION_19_11(v28), !v30))
      {
LABEL_224:
        sub_1AC477954();
        OUTLINED_FUNCTION_11();
        *v154 = 0;
LABEL_226:
        swift_willThrow();
        goto LABEL_237;
      }

      v4[5] = v29 + 1;
      sub_1AC509980();
      v23 = 1;
    }

    v31 = v4[10];
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      goto LABEL_246;
    }

    v4[10] = v33;
    if (v33 < 0)
    {
      sub_1AC477954();
      OUTLINED_FUNCTION_11();
      *v155 = 11;
      goto LABEL_226;
    }

    v34 = v4[5];
    if (v34 == v27)
    {
      goto LABEL_224;
    }

    v37 = *v34;
    v36 = v34 + 1;
    v35 = v37;
LABEL_14:
    while (1)
    {
      v4[5] = v36;
      if (v36 == v27)
      {
        break;
      }

      v38 = *v36;
      if (v38 > 0x23)
      {
        break;
      }

      if (((v23 << v38) & v2) != 0)
      {
        ++v36;
      }

      else
      {
        if (v38 != 35)
        {
          break;
        }

        ++v36;
        while (v36 != v27)
        {
          v40 = *v36++;
          v39 = v40;
          if (v40 == 10 || v39 == 13)
          {
            goto LABEL_14;
          }
        }

        v36 = v27;
      }
    }

    if (v35 == 60)
    {
      v41 = 62;
    }

    else
    {
      if (v35 != 123)
      {
        goto LABEL_224;
      }

      v41 = 125;
    }

    sub_1AC4779A8(v4, &v194);
    OUTLINED_FUNCTION_38_5();
    LOWORD(v193[6]) = v41;
    v42 = v184;
    v43 = dynamic_cast_existential_1_conditional(v184);
    if (!v43)
    {
      goto LABEL_223;
    }

    OUTLINED_FUNCTION_58_3(v43, v44);
    v45();
    sub_1AC477A04(&v194);
    sub_1AC458E14(*(&v193[6] + 1));
    *(&v193[7] + 8) = v192;
    *(&v193[6] + 8) = v191;
    *(&v193[8] + 1) = v42;
    *&v193[9] = v6;
    memcpy(v196, v193, 0x98uLL);
    if (v42 != &type metadata for Google_Protobuf_Any)
    {
      v46 = v180;
      (*(v6 + 16))(v42, v6);
      (*(v6 + 64))(v196, &type metadata for TextFormatDecoder, &off_1F211BCA0, v42, v6);
      if (v3)
      {
        v156 = OUTLINED_FUNCTION_54_3();
        v157(v156);
        goto LABEL_236;
      }

      (*v175)(v181, v46, v42);
      sub_1AC51F108();
      OUTLINED_FUNCTION_45_4();
      v47 = OUTLINED_FUNCTION_54_3();
      v48(v47);
      goto LABEL_217;
    }

    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_18_10();
      swift_once();
    }

    v183 = qword_1ED6E4C40;
    v49 = v196[5];
    v50 = v196[6];
    if (v196[5] != v196[6])
    {
      do
      {
        OUTLINED_FUNCTION_17(v49);
        if (!v30 & v51)
        {
          break;
        }

        OUTLINED_FUNCTION_53_4();
        if (v30)
        {
          if (v52 != 35)
          {
            break;
          }

          v53 = v49 + 1;
          while (v53 != v50)
          {
            OUTLINED_FUNCTION_10_0(v53);
            if (v30 || v54 == 13)
            {
              goto LABEL_39;
            }
          }

          v53 = v50;
        }

        else
        {
          v53 = v49 + 1;
        }

LABEL_39:
        OUTLINED_FUNCTION_35_5(v53);
      }

      while (!v30);
    }

    if (v49 == v50 || *v49 != 91)
    {
      break;
    }

    v55 = v49 + 1;
    v196[5] = v49 + 1;
    if (v49 + 1 == v50 || (*v55 & 0xDFu) - 91 <= 0xFFFFFFE5)
    {
      goto LABEL_238;
    }

    for (j = v49 + 2; ; ++j)
    {
      v196[5] = j;
      if (j == v50)
      {
        break;
      }

      v57 = *j;
      v58 = (v57 - 58) > 0xFFFFFFF5 || (v57 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (!v58 && (v57 - 46) >= 2 && v57 != 95)
      {
        if (v57 != 93)
        {
          goto LABEL_238;
        }

        break;
      }
    }

    if (j == v50 || *j != 93)
    {
LABEL_238:
      sub_1AC477954();
      v162 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_23_12(v162, v163);

      goto LABEL_234;
    }

    OUTLINED_FUNCTION_42_4();

    v133 = sub_1AC456544(v55, j - v55);
    if (!v134)
    {
      sub_1AC477954();
      v168 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_23_12(v168, v169);
      goto LABEL_234;
    }

    v135 = v133;
    v136 = v134;
    OUTLINED_FUNCTION_35_5((j + 1));
    v6 = v179;
    while (!v30)
    {
      OUTLINED_FUNCTION_17(v137);
      if (!v30 & v51)
      {
        break;
      }

      OUTLINED_FUNCTION_53_4();
      if (v30)
      {
        if (v139 != 35)
        {
          break;
        }

        v140 = (v138 + 1);
        while (v140 != v50)
        {
          OUTLINED_FUNCTION_10_0(v140);
          if (v30 || v141 == 13)
          {
            goto LABEL_202;
          }
        }

        v140 = v50;
      }

      else
      {
        v140 = (v138 + 1);
      }

LABEL_202:
      OUTLINED_FUNCTION_35_5(v140);
    }

    v2 = v183;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2_8();
      v2 = sub_1AC474690(v2);
    }

    sub_1AC47514C(v135, v136, v196);
    if (v3)
    {

      goto LABEL_234;
    }

    v183 = v2;

LABEL_216:
    OUTLINED_FUNCTION_42_4();
    v193[0] = v174;
    *&v193[1] = v183;
    v142 = OUTLINED_FUNCTION_15_1();
    sub_1AC4578F4(v142, v143);

    swift_dynamicCast();
    sub_1AC51F108();
    OUTLINED_FUNCTION_45_4();
    v144 = OUTLINED_FUNCTION_15_1();
    sub_1AC4513F8(v144, v145);

LABEL_217:
    sub_1AC477AFC(v196, v4);
    sub_1AC477AA8(v196);
    v23 = 1;
  }

  v59 = v183;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8();
    v59 = sub_1AC474690(v59);
  }

  swift_beginAccess();
  v60 = *(v59 + 24);
  *(v59 + 16) = 0;
  *(v59 + 24) = 0xE000000000000000;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8();
    v59 = sub_1AC474690(v59);
  }

  v61 = OUTLINED_FUNCTION_15_1();
  sub_1AC474608(v61, v62);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v183 = v59;
  }

  else
  {
    type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8();
    v183 = sub_1AC474690(v59);
  }

  v63 = v196[13];
  v187 = v196[15];
  v188 = v196[14];
  v185 = v196[13];
  v186 = v196[16];
LABEL_70:
  v64 = v196[11];
  while (1)
  {
    v189 = v64;
    if (v64 >= 1)
    {
      v65 = v196[5];
      if (v196[5] != v196[6])
      {
        v66 = *v196[5];
        if (v66 == 59 || v66 == 44)
        {
LABEL_75:
          ++v65;
LABEL_76:
          while (1)
          {
            v196[5] = v65;
            if (v65 == v196[6])
            {
              break;
            }

            v67 = *v65;
            if (v67 > 0x23)
            {
              break;
            }

            if (((1 << v67) & v2) != 0)
            {
              goto LABEL_75;
            }

            if (v67 != 35)
            {
              break;
            }

            ++v65;
            while (v65 != v196[6])
            {
              v69 = *v65++;
              v68 = v69;
              if (v69 == 10 || v68 == 13)
              {
                goto LABEL_76;
              }
            }

            v65 = v196[6];
          }
        }
      }
    }

    if (!v63)
    {
      __break(1u);
      return;
    }

    *&v193[0] = v63;
    *(&v193[0] + 1) = v188;
    *&v193[1] = v187;
    *(&v193[1] + 1) = v186;
    v70 = v196[18];
    v197 = v196[17];
    v71 = LOBYTE(v196[12]);
    v72 = BYTE1(v196[12]);

    v73 = sub_1AC5073AC(v193, v197, v70, v71 | (v72 << 8));
    if (v3)
    {

      goto LABEL_234;
    }

    v75 = v73;
    v76 = v74;
    v8 = v4;
    v4 = 0;
    v2 = *&v193[0];
    v3 = *&v193[1];

    if (v76)
    {
      v3 = 0;
      v4 = v8;
      v8 = v193;
      v6 = v179;
      goto LABEL_216;
    }

    v64 = v189 + 1;
    v2 = 0x100002600;
    if (__OFADD__(v189, 1))
    {
      break;
    }

    v196[11] = v189 + 1;
    if (v75 == 2)
    {
      v189 = sub_1AC474398();
      v85 = v84;
      v86 = v196[5];
      v87 = v196[6];
      v4 = v8;
      v8 = v193;
      if (v196[5] != v196[6])
      {
        do
        {
          OUTLINED_FUNCTION_17(v86);
          if (!v30 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_53_4();
          if (v30)
          {
            if (v88 != 35)
            {
              break;
            }

            v89 = v86 + 1;
            while (v89 != v87)
            {
              OUTLINED_FUNCTION_1_0(v89);
              if (v30)
              {
                goto LABEL_123;
              }
            }

            v89 = v87;
          }

          else
          {
            v89 = v86 + 1;
          }

LABEL_123:
          OUTLINED_FUNCTION_35_5(v89);
        }

        while (!v30);
      }

      if (v86 != v87)
      {
        OUTLINED_FUNCTION_57_3(v86);
        if (v30)
        {
LABEL_136:
          v91 = (v90 + 1);
LABEL_137:
          while (1)
          {
            OUTLINED_FUNCTION_35_5(v91);
            if (v30)
            {
              break;
            }

            OUTLINED_FUNCTION_17(v92);
            if (!v30 & v51)
            {
              break;
            }

            OUTLINED_FUNCTION_53_4();
            if (!v30)
            {
              goto LABEL_136;
            }

            if (v93 != 35)
            {
              break;
            }

            v91 = (v90 + 1);
            while (v91 != v87)
            {
              OUTLINED_FUNCTION_1_0(v91);
              if (v30)
              {
                goto LABEL_137;
              }
            }

            v91 = v87;
          }

          sub_1AC509980();
          OUTLINED_FUNCTION_36_5();
          if (!v30)
          {
            v2 = *v107;
            if (v2 == 34 || v2 == 39)
            {
              OUTLINED_FUNCTION_48_5(v107);
              LOBYTE(v191) = 0;
              sub_1AC509AA4(v2, &v191);
              v3 = 0;
              v109 = v108;
              v171 = v85;
              if (v191)
              {
                *&v193[0] = MEMORY[0x1AC5B40A0](v108);
                *(&v193[0] + 1) = v110;
                sub_1AC476FE4(v193, v196, v2);
              }

              else
              {
                v111 = v196[5];
                *&v193[0] = MEMORY[0x1AC5B4090](v196[5], v108);
                *(&v193[0] + 1) = v112;
                if (__OFADD__(v109, 1))
                {
                  goto LABEL_249;
                }

                v196[5] = v111 + v109 + 1;
              }

              OUTLINED_FUNCTION_42_4();
              sub_1AC509980();
              OUTLINED_FUNCTION_36_5();
              for (; !v30; v2 = 0x100002600)
              {
                v114 = *v113;
                if (v114 != 39 && v114 != 34)
                {
                  break;
                }

                OUTLINED_FUNCTION_48_5(v113);
                v190[0] = 0;
                sub_1AC509AA4(v114, v190);
                v116 = v115;
                v3 = v115 << 32;
                if (v190[0])
                {
                  if (v115)
                  {
                    if (v115 <= 14)
                    {
                      if (v115 < 0)
                      {
                        goto LABEL_248;
                      }

                      v3 = 0;
                      v122 = v172 & 0xF00000000000000 | (v115 << 48);
                      v172 = v122;
                    }

                    else
                    {
                      v117 = sub_1AC51EBB8();
                      v118 = *(v117 + 48);
                      v119 = *(v117 + 52);
                      swift_allocObject();
                      v120 = sub_1AC51EB88();
                      v121 = v120;
                      if (v116 >= 0x7FFFFFFF)
                      {
                        sub_1AC51EC18();
                        v3 = swift_allocObject();
                        *(v3 + 16) = 0;
                        *(v3 + 24) = v116;
                        v122 = v121 | 0x8000000000000000;
                      }

                      else
                      {
                        v122 = v120 | 0x4000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v3 = 0;
                    v122 = 0xC000000000000000;
                  }

                  v194 = v3;
                  v195 = v122;
                  sub_1AC476FE4(&v194, v196, v114);
                  v3 = 0;
                  v131 = v194;
                  v132 = v195;
                  sub_1AC51EC98();
                  sub_1AC4513F8(v131, v132);
                }

                else
                {
                  v123 = v196[5];
                  if (v115)
                  {
                    if (v115 <= 14)
                    {
                      v3 = sub_1AC51EBD8();
                      v129 = v173 & 0xF00000000000000 | v130 & 0xFFFFFFFFFFFFFFLL;
                      v173 = v129;
                    }

                    else
                    {
                      v124 = sub_1AC51EBB8();
                      v125 = *(v124 + 48);
                      v126 = *(v124 + 52);
                      swift_allocObject();
                      v127 = sub_1AC51EB68();
                      v128 = v127;
                      if (v116 >= 0x7FFFFFFF)
                      {
                        sub_1AC51EC18();
                        v3 = swift_allocObject();
                        *(v3 + 16) = 0;
                        *(v3 + 24) = v116;
                        v129 = v128 | 0x8000000000000000;
                      }

                      else
                      {
                        v129 = v127 | 0x4000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v3 = 0;
                    v129 = 0xC000000000000000;
                  }

                  sub_1AC51EC98();
                  sub_1AC4513F8(v3, v129);
                  if (__OFADD__(v116, 1))
                  {
                    goto LABEL_247;
                  }

                  v196[5] = v123 + v116 + 1;
                  v3 = 0;
                }

                sub_1AC509980();
                OUTLINED_FUNCTION_36_5();
              }

              sub_1AC4513F8(v189, v171);
              sub_1AC474608(*&v193[0], *(&v193[0] + 1));
              goto LABEL_192;
            }
          }
        }
      }

      sub_1AC477954();
      v166 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_23_12(v166, v167);
      sub_1AC474608(v189, v85);
LABEL_234:
      v160 = OUTLINED_FUNCTION_15_1();
      sub_1AC4513F8(v160, v161);
LABEL_235:

      goto LABEL_236;
    }

    v3 = 0;
    v4 = v8;
    v63 = v185;
    if (v75 == 1)
    {
      swift_beginAccess();
      v77 = v196[5];
      v78 = v196[6];
      while (v77 != v78)
      {
        OUTLINED_FUNCTION_17(v77);
        if (!v30 & v51)
        {
          break;
        }

        if (((1 << v79) & 0x100002600) != 0)
        {
          ++v77;
        }

        else
        {
          if (v79 != 35)
          {
            break;
          }

          ++v77;
          while (v77 != v78)
          {
            OUTLINED_FUNCTION_1_0(v77);
            if (v30)
            {
              goto LABEL_97;
            }
          }

          v77 = v78;
        }

LABEL_97:
        v196[5] = v77;
      }

      if (v77 == v78 || (OUTLINED_FUNCTION_57_3(v77), !v30))
      {
LABEL_233:
        sub_1AC477954();
        v158 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_23_12(v158, v159);
        swift_endAccess();
        goto LABEL_234;
      }

LABEL_108:
      v81 = (v80 + 1);
LABEL_109:
      while (1)
      {
        OUTLINED_FUNCTION_35_5(v81);
        if (v30)
        {
          break;
        }

        OUTLINED_FUNCTION_17(v82);
        if (!v30 & v51)
        {
          break;
        }

        if (((1 << v83) & 0x100002600) != 0)
        {
          goto LABEL_108;
        }

        if (v83 != 35)
        {
          break;
        }

        v81 = (v80 + 1);
        while (v81 != v78)
        {
          OUTLINED_FUNCTION_1_0(v81);
          if (v30)
          {
            goto LABEL_109;
          }
        }

        v81 = v78;
      }

      sub_1AC509980();
      OUTLINED_FUNCTION_36_5();
      if (v30)
      {
        goto LABEL_233;
      }

      v95 = *v94;
      if (v95 != 34 && v95 != 39)
      {
        goto LABEL_233;
      }

      OUTLINED_FUNCTION_48_5(v94);
      v97 = sub_1AC50A11C(v96);
      if (!v98)
      {
        goto LABEL_233;
      }

      v194 = v97;
      v195 = v98;
      OUTLINED_FUNCTION_36_5();
      if (!v30)
      {
        while (1)
        {
          v101 = *v100;
          if (v101 != 39 && v101 != 34)
          {
LABEL_158:
            v99 = v195;
            goto LABEL_159;
          }

          OUTLINED_FUNCTION_48_5(v100);
          v103 = sub_1AC50A11C(v102);
          if (!v104)
          {
            break;
          }

          MEMORY[0x1AC5B4340](v103);

          OUTLINED_FUNCTION_36_5();
          if (v30)
          {
            goto LABEL_158;
          }
        }

        goto LABEL_233;
      }

LABEL_159:
      v105 = v183;
      v106 = *(v183 + 24);
      *(v183 + 16) = v194;
      *(v105 + 24) = v99;
      swift_endAccess();

LABEL_192:
      v63 = v185;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  OUTLINED_FUNCTION_18_10();
  swift_once();
LABEL_228:
  *&v193[1] = qword_1ED6E4C40;

  sub_1AC4D345C(v196);
  if (v3)
  {
    sub_1AC4513F8(*&v193[0], *(&v193[0] + 1));
    goto LABEL_235;
  }

  v164 = v193[0];
  v165 = *&v193[1];
  v8[10] = v193[0];
  *(v8 + 22) = v165;
  sub_1AC4578F4(v164, *(&v164 + 1));

  OUTLINED_FUNCTION_46_5();
  sub_1AC51F108();
  sub_1AC51F0D8();
  sub_1AC4513F8(*&v193[0], *(&v193[0] + 1));

LABEL_240:
  sub_1AC477AFC(v196, v4);
LABEL_236:
  sub_1AC477AA8(v196);
LABEL_237:
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4FDC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v119 = a1;
  v120 = *(a5 + 8);
  v115 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v10 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v106 - v11;
  v12 = *(a4 + 8);
  v128 = a2;
  v129 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v117 = *(v13 - 8);
  v14 = *(v117 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v106 - v18;
  v20 = sub_1AC51F228();
  v123 = *(v20 - 8);
  v21 = *(v123 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v116 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v106 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v106 - v27;
  v29 = sub_1AC51F228();
  v30 = *(v29 - 8);
  v121 = v29;
  v122 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v106 - v35;
  __swift_storeEnumTagSinglePayload(&v106 - v35, 1, 1, v13);
  v124 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, AssociatedTypeWitness);
  v36 = v131;
  sub_1AC507264();
  if (v36)
  {
    v38 = v121;
    v39 = v122;
    v40 = v123;
    j = v124;
    goto LABEL_131;
  }

  v125 = v37;
  v109 = v34;
  v107 = v26;
  v108 = v17;
  v110 = v19;
  v111 = v13;
  v127 = *(v6 + 73);
  v42 = v119;
  v112 = v120 + 32;
  v113 = v20;
  v126 = v129 + 32;
  v43 = *(v6 + 40);
  v44 = *(v6 + 48);
  v46 = v117;
  v45 = v118;
  v47 = v116;
  v48 = AssociatedTypeWitness;
  while (v43 == v44 || *v43 != v125)
  {
    v49 = v47;
    v50 = v46;
    v51 = v45;
    v52 = v48;
    v53 = v42;
    v54 = sub_1AC5081B8(v127);
    v56 = v55;
    if (!v55)
    {
      goto LABEL_128;
    }

    v57 = v54;
    v131 = 0;
    v58 = v54 == 7955819 && v55 == 0xE300000000000000;
    if (v58 || (sub_1AC51F3D8() & 1) != 0 || (v57 == 49 ? (v59 = v56 == 0xE100000000000000) : (v59 = 0), v59 || (sub_1AC51F3D8() & 1) != 0))
    {

      v60 = v131;
      (*(v129 + 32))(v130, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
    }

    else
    {
      if (v57 != 0x65756C6176 || v56 != 0xE500000000000000)
      {
        v66 = sub_1AC51F3D8();
        v67 = v57 == 50 && v56 == 0xE100000000000000;
        v68 = v67;
        if ((v66 & 1) == 0 && !v68 && (sub_1AC51F3D8() & 1) == 0)
        {
          if (v127 && (sub_1AC51EFA8() & 1) != 0)
          {

            v69 = *(v6 + 40);
            v70 = v53;
            v71 = v52;
            v45 = v51;
            v46 = v50;
            v47 = v49;
            for (i = v131; v69 != v44; *(v6 + 40) = v69)
            {
              v73 = *v69;
              if (v73 > 0x23)
              {
                break;
              }

              if (((1 << v73) & 0x100002600) != 0)
              {
                ++v69;
              }

              else
              {
                if (v73 != 35)
                {
                  break;
                }

                ++v69;
                while (v69 != v44)
                {
                  v75 = *v69++;
                  v74 = v75;
                  if (v75 == 10 || v74 == 13)
                  {
                    goto LABEL_54;
                  }
                }

                v69 = v44;
              }

LABEL_54:
              ;
            }

            if (v69 != v44 && *v69 == 58)
            {
LABEL_104:
              ++v69;
LABEL_105:
              while (1)
              {
                *(v6 + 40) = v69;
                if (v69 == v44)
                {
                  break;
                }

                v87 = *v69;
                if (v87 > 0x23)
                {
                  break;
                }

                if (((1 << v87) & 0x100002600) != 0)
                {
                  goto LABEL_104;
                }

                if (v87 != 35)
                {
                  break;
                }

                ++v69;
                while (v69 != v44)
                {
                  v89 = *v69++;
                  v88 = v89;
                  if (v89 == 10 || v88 == 13)
                  {
                    goto LABEL_105;
                  }
                }

                v69 = v44;
              }

              if (v69 == v44)
              {
LABEL_128:
                sub_1AC477954();
                swift_allocError();
                *v94 = 0;
LABEL_129:
                swift_willThrow();
LABEL_130:
                v20 = v113;
                v39 = v122;
                v40 = v123;
                v38 = v121;
                j = v124;
                goto LABEL_131;
              }

LABEL_124:
              v91 = v71;
              v92 = v70;
              v93 = *v69;
              if (v93 != 123 && v93 != 60)
              {
                sub_1AC50A674(1);
                if (i)
                {
                  goto LABEL_130;
                }

                goto LABEL_120;
              }

LABEL_119:
              sub_1AC50A8AC();
              if (i)
              {
                goto LABEL_130;
              }

LABEL_120:
              v42 = v92;
              v48 = v91;
              goto LABEL_20;
            }
          }

          else
          {
            if (*(v6 + 72) != 1)
            {

LABEL_142:
              sub_1AC477954();
              swift_allocError();
              *v104 = 7;
              goto LABEL_129;
            }

            v77 = sub_1AC51EFA8();

            if (v77)
            {
              goto LABEL_142;
            }

            v78 = *(v6 + 40);
            v70 = v53;
            v71 = v52;
            v45 = v51;
            v46 = v50;
            v47 = v49;
            for (i = v131; v78 != v44; *(v6 + 40) = v78)
            {
              v79 = *v78;
              if (v79 > 0x23)
              {
                break;
              }

              if (((1 << v79) & 0x100002600) != 0)
              {
                ++v78;
              }

              else
              {
                if (v79 != 35)
                {
                  break;
                }

                ++v78;
                while (v78 != v44)
                {
                  v81 = *v78++;
                  v80 = v81;
                  if (v81 == 10 || v80 == 13)
                  {
                    goto LABEL_72;
                  }
                }

                v78 = v44;
              }

LABEL_72:
              ;
            }

            if (v78 != v44 && *v78 == 58)
            {
              v69 = v78 + 1;
              *(v6 + 40) = v69;
              for (j = v124; v69 != v44; *(v6 + 40) = v69)
              {
                v83 = *v69;
                if (v83 > 0x23)
                {
                  break;
                }

                if (((1 << v83) & 0x100002600) != 0)
                {
                  ++v69;
                }

                else
                {
                  if (v83 != 35)
                  {
                    break;
                  }

                  ++v69;
                  while (v69 != v44)
                  {
                    v85 = *v69++;
                    v84 = v85;
                    if (v85 == 10 || v84 == 13)
                    {
                      goto LABEL_90;
                    }
                  }

                  v69 = v44;
                }

LABEL_90:
                ;
              }

              if (v69 == v44)
              {
                sub_1AC477954();
                swift_allocError();
                *v105 = 0;
                swift_willThrow();
                v20 = v113;
                v39 = v122;
                v40 = v123;
                v38 = v121;
                goto LABEL_131;
              }

              goto LABEL_124;
            }
          }

          v91 = v71;
          v92 = v70;
          goto LABEL_119;
        }
      }

      v60 = v131;
      (*(v120 + 32))(v124, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
    }

    if (v60)
    {
      goto LABEL_130;
    }

    v42 = v53;
    v48 = v52;
    v45 = v51;
    v46 = v50;
    v47 = v49;
LABEL_20:
    v43 = *(v6 + 40);
    v44 = *(v6 + 48);
    if (v43 != v44)
    {
      v61 = *v43;
      if (v61 == 59 || v61 == 44)
      {
LABEL_23:
        ++v43;
LABEL_24:
        while (1)
        {
          *(v6 + 40) = v43;
          if (v43 == v44)
          {
            break;
          }

          v62 = *v43;
          if (v62 > 0x23)
          {
            break;
          }

          if (((1 << v62) & 0x100002600) != 0)
          {
            goto LABEL_23;
          }

          if (v62 != 35)
          {
            break;
          }

          ++v43;
          while (v43 != v44)
          {
            v64 = *v43++;
            v63 = v64;
            if (v64 == 10 || v63 == 13)
            {
              goto LABEL_24;
            }
          }

          v43 = v44;
        }
      }
    }
  }

  v131 = v48;
  *(v6 + 40) = v43 + 1;
  sub_1AC509980();
  v96 = *(v6 + 80);
  v97 = __OFADD__(v96, 1);
  v98 = v96 + 1;
  v39 = v122;
  if (v97)
  {
    __break(1u);
    goto LABEL_144;
  }

  *(v6 + 80) = v98;
  v20 = v113;
  j = v124;
  v99 = v109;
  if (*(v6 + 64) < v98)
  {
LABEL_144:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v38 = v121;
  (*(v39 + 16))(v109, v130, v121);
  if (__swift_getEnumTagSinglePayload(v99, 1, v111) == 1)
  {
    (*(v39 + 8))(v99, v38);
    v40 = v123;
    goto LABEL_139;
  }

  (*(v46 + 32))(v110, v99, v111);
  v100 = v107;
  (*(v123 + 16))(v107, j, v20);
  v101 = v131;
  if (__swift_getEnumTagSinglePayload(v100, 1, v131) == 1)
  {
    (*(v46 + 8))(v110, v111);
    v40 = v123;
    v20 = v113;
    (*(v123 + 8))(v100, v113);
LABEL_139:
    sub_1AC477954();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
LABEL_131:
    (*(v40 + 8))(j, v20);
  }

  else
  {
    (*(v45 + 32))(v114, v100, v101);
    v103 = v111;
    (*(v46 + 16))(v108, v110, v111);
    (*(v45 + 16))(v47, v114, v101);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v101);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v45 + 8))(v114, v101);
    (*(v46 + 8))(v110, v103);
    (*(v123 + 8))(j, v113);
  }

  return (*(v39 + 8))(v130, v38);
}

uint64_t sub_1AC4FE8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v106 = a5;
  v8 = *(a3 - 8);
  v100 = a1;
  v101 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v11 + 8);
  v115 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v14 = *(v105 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v93 - v17;
  v18 = sub_1AC51F228();
  v110 = *(v18 - 8);
  v19 = *(v110 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v93 - v26;
  v28 = sub_1AC51F228();
  v109 = *(v28 - 8);
  v29 = *(v109 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v93 - v33;
  v108 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(&v93 - v33, 1, 1, AssociatedTypeWitness);
  v111 = v27;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, a3);
  v34 = v114;
  sub_1AC507264();
  if (v34)
  {
    v36 = v111;
    v37 = v18;
    v39 = v109;
    v38 = v110;
    goto LABEL_121;
  }

  v112 = v35;
  v95 = v32;
  v96 = v25;
  v94 = v22;
  v97 = a3;
  v98 = v18;
  v99 = v28;
  LODWORD(v114) = *(v6 + 73);
  v40 = v108;
  v41 = v107;
  v113 = v107 + 32;
  v42 = *(v6 + 40);
  v43 = *(v6 + 48);
  while (v42 == v43 || *v42 != v112)
  {
    v44 = sub_1AC5081B8(v114);
    v46 = v45;
    if (!v45)
    {
      goto LABEL_119;
    }

    v47 = v44;
    v48 = v44 == 7955819 && v45 == 0xE300000000000000;
    if (v48 || (sub_1AC51F3D8() & 1) != 0 || (v47 == 49 ? (v49 = v46 == 0xE100000000000000) : (v49 = 0), v49 || (sub_1AC51F3D8() & 1) != 0))
    {

      (*(v41 + 32))(v116, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
      goto LABEL_18;
    }

    v54 = v47 == 0x65756C6176 && v46 == 0xE500000000000000;
    if (v54 || ((v55 = sub_1AC51F3D8(), v47 == 50) ? (v56 = v46 == 0xE100000000000000) : (v56 = 0), !v56 ? (v57 = 0) : (v57 = 1), (v55 & 1) != 0 || (v57 & 1) != 0 || (sub_1AC51F3D8() & 1) != 0))
    {

      sub_1AC4FC030(v111, v97);
      goto LABEL_18;
    }

    if (v114 && (sub_1AC51EFA8() & 1) != 0)
    {

      for (i = *(v6 + 40); i != v43; *(v6 + 40) = i)
      {
        v59 = *i;
        if (v59 > 0x23)
        {
          break;
        }

        if (((1 << v59) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v59 != 35)
          {
            break;
          }

          ++i;
          while (i != v43)
          {
            v61 = *i++;
            v60 = v61;
            if (v61 == 10 || v60 == 13)
            {
              goto LABEL_53;
            }
          }

          i = v43;
        }

LABEL_53:
        ;
      }

      if (i == v43 || *i != 58)
      {
        goto LABEL_117;
      }

LABEL_100:
      ++i;
LABEL_101:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v43)
        {
          break;
        }

        v72 = *i;
        if (v72 > 0x23)
        {
          break;
        }

        if (((1 << v72) & 0x100002600) != 0)
        {
          goto LABEL_100;
        }

        if (v72 != 35)
        {
          break;
        }

        ++i;
        while (i != v43)
        {
          v74 = *i++;
          v73 = v74;
          if (v74 == 10 || v73 == 13)
          {
            goto LABEL_101;
          }
        }

        i = v43;
      }
    }

    else
    {
      if (*(v6 + 72) != 1)
      {

LABEL_131:
        sub_1AC477954();
        swift_allocError();
        *v92 = 7;
LABEL_120:
        swift_willThrow();
        v37 = v98;
        v28 = v99;
        v39 = v109;
        v38 = v110;
        v36 = v111;
        goto LABEL_121;
      }

      v63 = sub_1AC51EFA8();

      if (v63)
      {
        goto LABEL_131;
      }

      for (i = *(v6 + 40); i != v43; *(v6 + 40) = i)
      {
        v64 = *i;
        if (v64 > 0x23)
        {
          break;
        }

        if (((1 << v64) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v64 != 35)
          {
            break;
          }

          ++i;
          while (i != v43)
          {
            v66 = *i++;
            v65 = v66;
            if (v66 == 10 || v65 == 13)
            {
              goto LABEL_71;
            }
          }

          i = v43;
        }

LABEL_71:
        ;
      }

      if (i == v43 || *i != 58)
      {
LABEL_117:
        sub_1AC50A8AC();
        goto LABEL_18;
      }

LABEL_84:
      ++i;
LABEL_85:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v43)
        {
          break;
        }

        v68 = *i;
        if (v68 > 0x23)
        {
          break;
        }

        if (((1 << v68) & 0x100002600) != 0)
        {
          goto LABEL_84;
        }

        if (v68 != 35)
        {
          break;
        }

        ++i;
        while (i != v43)
        {
          v70 = *i++;
          v69 = v70;
          if (v70 == 10 || v69 == 13)
          {
            goto LABEL_85;
          }
        }

        i = v43;
      }
    }

    if (i == v43)
    {
LABEL_119:
      sub_1AC477954();
      swift_allocError();
      *v77 = 0;
      goto LABEL_120;
    }

    v76 = *i;
    if (v76 == 123 || v76 == 60)
    {
      goto LABEL_117;
    }

    sub_1AC50A674(1);
LABEL_18:
    v42 = *(v6 + 40);
    v43 = *(v6 + 48);
    if (v42 != v43)
    {
      v50 = *v42;
      if (v50 == 59 || v50 == 44)
      {
LABEL_21:
        ++v42;
LABEL_22:
        while (1)
        {
          *(v6 + 40) = v42;
          if (v42 == v43)
          {
            break;
          }

          v51 = *v42;
          if (v51 > 0x23)
          {
            break;
          }

          if (((1 << v51) & 0x100002600) != 0)
          {
            goto LABEL_21;
          }

          if (v51 != 35)
          {
            break;
          }

          ++v42;
          while (v42 != v43)
          {
            v53 = *v42++;
            v52 = v53;
            if (v53 == 10 || v52 == 13)
            {
              goto LABEL_22;
            }
          }

          v42 = v43;
        }
      }
    }
  }

  v79 = v40;
  *(v6 + 40) = v42 + 1;
  sub_1AC509980();
  v80 = *(v6 + 80);
  v81 = __OFADD__(v80, 1);
  v82 = v80 + 1;
  v83 = v99;
  if (v81)
  {
    __break(1u);
    goto LABEL_133;
  }

  *(v6 + 80) = v82;
  v84 = v110;
  v36 = v111;
  v86 = v95;
  v85 = v96;
  if (*(v6 + 64) < v82)
  {
LABEL_133:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v39 = v109;
  (*(v109 + 16))(v95, v116, v83);
  if (__swift_getEnumTagSinglePayload(v86, 1, v79) == 1)
  {
    (*(v39 + 8))(v86, v83);
    v37 = v98;
    v38 = v84;
    v28 = v83;
    goto LABEL_128;
  }

  (*(v105 + 32))(v104, v86, v79);
  v37 = v98;
  (*(v84 + 16))(v85, v36, v98);
  v87 = v97;
  if (__swift_getEnumTagSinglePayload(v85, 1, v97) == 1)
  {
    (*(v105 + 8))(v104, v79);
    v88 = v110;
    (*(v110 + 8))(v85, v37);
    v38 = v88;
    v28 = v99;
LABEL_128:
    sub_1AC477954();
    swift_allocError();
    *v89 = 0;
    swift_willThrow();
LABEL_121:
    (*(v38 + 8))(v36, v37);
    return (*(v39 + 8))(v116, v28);
  }

  else
  {
    v90 = v101;
    (*(v101 + 32))(v103, v85, v87);
    (*(v105 + 16))(v102, v104, v79);
    v91 = v94;
    (*(v90 + 16))(v94, v103, v87);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v87);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v90 + 8))(v103, v87);
    (*(v105 + 8))(v104, v79);
    (*(v110 + 8))(v36, v37);
    return (*(v39 + 8))(v116, v99);
  }
}

void sub_1AC4FF40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_27_6();
  if (!v11)
  {
    OUTLINED_FUNCTION_57_3(v10);
    if (v11)
    {
      OUTLINED_FUNCTION_11_14(v10);
      sub_1AC509980();
      v10 = *(v6 + 40);
    }
  }

  if (v10 == v8 || *v10 != 91)
  {
    v14 = OUTLINED_FUNCTION_5_24();
    a6(v14);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v10);
    sub_1AC509980();
    v12 = *(v6 + 40);
    if (v12 == v8 || *v12 != 93)
    {
      while (1)
      {
        v13 = OUTLINED_FUNCTION_5_24();
        a6(v13);
        if (v7 || (sub_1AC507970() & 1) != 0)
        {
          break;
        }

        sub_1AC50AB78(0x2Cu);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_14(v12);
      sub_1AC509980();
    }
  }
}

uint64_t sub_1AC4FF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v106 = a5;
  v8 = *(a3 - 8);
  v100 = a1;
  v101 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v11 + 8);
  v115 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v14 = *(v105 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v93 - v17;
  v18 = sub_1AC51F228();
  v110 = *(v18 - 8);
  v19 = *(v110 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v93 - v26;
  v28 = sub_1AC51F228();
  v109 = *(v28 - 8);
  v29 = *(v109 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v93 - v33;
  v108 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(&v93 - v33, 1, 1, AssociatedTypeWitness);
  v111 = v27;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, a3);
  v34 = v114;
  sub_1AC507264();
  if (v34)
  {
    v36 = v111;
    v37 = v18;
    v39 = v109;
    v38 = v110;
    goto LABEL_121;
  }

  v112 = v35;
  v95 = v32;
  v96 = v25;
  v94 = v22;
  v97 = a3;
  v98 = v18;
  v99 = v28;
  LODWORD(v114) = *(v6 + 73);
  v40 = v108;
  v41 = v107;
  v113 = v107 + 32;
  v42 = *(v6 + 40);
  v43 = *(v6 + 48);
  while (v42 == v43 || *v42 != v112)
  {
    v44 = sub_1AC5081B8(v114);
    v46 = v45;
    if (!v45)
    {
      goto LABEL_119;
    }

    v47 = v44;
    v48 = v44 == 7955819 && v45 == 0xE300000000000000;
    if (v48 || (sub_1AC51F3D8() & 1) != 0 || (v47 == 49 ? (v49 = v46 == 0xE100000000000000) : (v49 = 0), v49 || (sub_1AC51F3D8() & 1) != 0))
    {

      (*(v41 + 32))(v116, v6, &type metadata for TextFormatDecoder, &off_1F211BCA0);
      goto LABEL_18;
    }

    v54 = v47 == 0x65756C6176 && v46 == 0xE500000000000000;
    if (v54 || ((v55 = sub_1AC51F3D8(), v47 == 50) ? (v56 = v46 == 0xE100000000000000) : (v56 = 0), !v56 ? (v57 = 0) : (v57 = 1), (v55 & 1) != 0 || (v57 & 1) != 0 || (sub_1AC51F3D8() & 1) != 0))
    {

      sub_1AC4FC558();
      goto LABEL_18;
    }

    if (v114 && (sub_1AC51EFA8() & 1) != 0)
    {

      for (i = *(v6 + 40); i != v43; *(v6 + 40) = i)
      {
        v59 = *i;
        if (v59 > 0x23)
        {
          break;
        }

        if (((1 << v59) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v59 != 35)
          {
            break;
          }

          ++i;
          while (i != v43)
          {
            v61 = *i++;
            v60 = v61;
            if (v61 == 10 || v60 == 13)
            {
              goto LABEL_53;
            }
          }

          i = v43;
        }

LABEL_53:
        ;
      }

      if (i == v43 || *i != 58)
      {
        goto LABEL_117;
      }

LABEL_100:
      ++i;
LABEL_101:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v43)
        {
          break;
        }

        v72 = *i;
        if (v72 > 0x23)
        {
          break;
        }

        if (((1 << v72) & 0x100002600) != 0)
        {
          goto LABEL_100;
        }

        if (v72 != 35)
        {
          break;
        }

        ++i;
        while (i != v43)
        {
          v74 = *i++;
          v73 = v74;
          if (v74 == 10 || v73 == 13)
          {
            goto LABEL_101;
          }
        }

        i = v43;
      }
    }

    else
    {
      if (*(v6 + 72) != 1)
      {

LABEL_131:
        sub_1AC477954();
        swift_allocError();
        *v92 = 7;
LABEL_120:
        swift_willThrow();
        v37 = v98;
        v28 = v99;
        v39 = v109;
        v38 = v110;
        v36 = v111;
        goto LABEL_121;
      }

      v63 = sub_1AC51EFA8();

      if (v63)
      {
        goto LABEL_131;
      }

      for (i = *(v6 + 40); i != v43; *(v6 + 40) = i)
      {
        v64 = *i;
        if (v64 > 0x23)
        {
          break;
        }

        if (((1 << v64) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v64 != 35)
          {
            break;
          }

          ++i;
          while (i != v43)
          {
            v66 = *i++;
            v65 = v66;
            if (v66 == 10 || v65 == 13)
            {
              goto LABEL_71;
            }
          }

          i = v43;
        }

LABEL_71:
        ;
      }

      if (i == v43 || *i != 58)
      {
LABEL_117:
        sub_1AC50A8AC();
        goto LABEL_18;
      }

LABEL_84:
      ++i;
LABEL_85:
      while (1)
      {
        *(v6 + 40) = i;
        if (i == v43)
        {
          break;
        }

        v68 = *i;
        if (v68 > 0x23)
        {
          break;
        }

        if (((1 << v68) & 0x100002600) != 0)
        {
          goto LABEL_84;
        }

        if (v68 != 35)
        {
          break;
        }

        ++i;
        while (i != v43)
        {
          v70 = *i++;
          v69 = v70;
          if (v70 == 10 || v69 == 13)
          {
            goto LABEL_85;
          }
        }

        i = v43;
      }
    }

    if (i == v43)
    {
LABEL_119:
      sub_1AC477954();
      swift_allocError();
      *v77 = 0;
      goto LABEL_120;
    }

    v76 = *i;
    if (v76 == 123 || v76 == 60)
    {
      goto LABEL_117;
    }

    sub_1AC50A674(1);
LABEL_18:
    v42 = *(v6 + 40);
    v43 = *(v6 + 48);
    if (v42 != v43)
    {
      v50 = *v42;
      if (v50 == 59 || v50 == 44)
      {
LABEL_21:
        ++v42;
LABEL_22:
        while (1)
        {
          *(v6 + 40) = v42;
          if (v42 == v43)
          {
            break;
          }

          v51 = *v42;
          if (v51 > 0x23)
          {
            break;
          }

          if (((1 << v51) & 0x100002600) != 0)
          {
            goto LABEL_21;
          }

          if (v51 != 35)
          {
            break;
          }

          ++v42;
          while (v42 != v43)
          {
            v53 = *v42++;
            v52 = v53;
            if (v53 == 10 || v52 == 13)
            {
              goto LABEL_22;
            }
          }

          v42 = v43;
        }
      }
    }
  }

  v79 = v40;
  *(v6 + 40) = v42 + 1;
  sub_1AC509980();
  v80 = *(v6 + 80);
  v81 = __OFADD__(v80, 1);
  v82 = v80 + 1;
  v83 = v99;
  if (v81)
  {
    __break(1u);
    goto LABEL_133;
  }

  *(v6 + 80) = v82;
  v84 = v110;
  v36 = v111;
  v86 = v95;
  v85 = v96;
  if (*(v6 + 64) < v82)
  {
LABEL_133:
    result = sub_1AC51F388();
    __break(1u);
    return result;
  }

  v39 = v109;
  (*(v109 + 16))(v95, v116, v83);
  if (__swift_getEnumTagSinglePayload(v86, 1, v79) == 1)
  {
    (*(v39 + 8))(v86, v83);
    v37 = v98;
    v38 = v84;
    v28 = v83;
    goto LABEL_128;
  }

  (*(v105 + 32))(v104, v86, v79);
  v37 = v98;
  (*(v84 + 16))(v85, v36, v98);
  v87 = v97;
  if (__swift_getEnumTagSinglePayload(v85, 1, v97) == 1)
  {
    (*(v105 + 8))(v104, v79);
    v88 = v110;
    (*(v110 + 8))(v85, v37);
    v38 = v88;
    v28 = v99;
LABEL_128:
    sub_1AC477954();
    swift_allocError();
    *v89 = 0;
    swift_willThrow();
LABEL_121:
    (*(v38 + 8))(v36, v37);
    return (*(v39 + 8))(v116, v28);
  }

  else
  {
    v90 = v101;
    (*(v101 + 32))(v103, v85, v87);
    (*(v105 + 16))(v102, v104, v79);
    v91 = v94;
    (*(v90 + 16))(v94, v103, v87);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v87);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v90 + 8))(v103, v87);
    (*(v105 + 8))(v104, v79);
    (*(v110 + 8))(v36, v37);
    return (*(v39 + 8))(v116, v99);
  }
}