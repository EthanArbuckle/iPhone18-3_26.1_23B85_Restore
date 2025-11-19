uint64_t sub_1AC4DF2EC(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_8_10(a1);
  result = sub_1AC51F3B8();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_9();

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);

    return v3;
  }

  return result;
}

double Google_Protobuf_Int32Value.init(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

double Google_Protobuf_BoolValue.init(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_1AC51F990;
  *a2 = a1;
  return result;
}

uint64_t sub_1AC4DF48C()
{
  if (*v0)
  {
    result = 1702195828;
  }

  else
  {
    result = 0x65736C6166;
  }

  *v0;
  return result;
}

double Google_Protobuf_StringValue.init(_:)()
{
  OUTLINED_FUNCTION_3_16();

  result = 0.0;
  *(v2 + 16) = xmmword_1AC51F990;
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

double Google_Protobuf_StringValue.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_3_16();

  *v2 = v1;
  *(v2 + 8) = v0;
  result = 0.0;
  *(v2 + 16) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_BytesValue.init(_:)()
{
  OUTLINED_FUNCTION_3_16();
  *(v2 + 16) = xmmword_1AC51F990;
  result = sub_1AC4513F8(0, 0xC000000000000000);
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

unint64_t sub_1AC4DF690()
{
  result = qword_1EB559778;
  if (!qword_1EB559778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559778);
  }

  return result;
}

unint64_t sub_1AC4DF6E8()
{
  result = qword_1EB559780;
  if (!qword_1EB559780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559780);
  }

  return result;
}

uint64_t sub_1AC4DF76C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_1AC51EE28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_12_8();
  v8 = v7 - v6;
  v9 = *v2;
  v10 = v2[1];
  OUTLINED_FUNCTION_0_19(MEMORY[0x1E69E7CC0]);
  a2();
  OUTLINED_FUNCTION_6_12();
  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  sub_1AC51EE08();
  OUTLINED_FUNCTION_5_12();

  if (v8)
  {

    return OUTLINED_FUNCTION_1_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC4DF8C8()
{
  result = qword_1EB557CA8;
  if (!qword_1EB557CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CA8);
  }

  return result;
}

uint64_t sub_1AC4DF93C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4DF95C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1AC4DF9DC(double a1)
{
  MEMORY[0x1AC5B48A0]();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1AC5B48D0](*&v2);
}

uint64_t sub_1AC4DFAD4()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 8);
  return sub_1AC51EDB8();
}

void sub_1AC4DFB10()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  sub_1AC51AA2C(v0, v1);
}

void sub_1AC4DFB3C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  sub_1AC51A9D4(v0, v1);
}

uint64_t sub_1AC4DFB68()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  return sub_1AC51ACF0(v0);
}

uint64_t sub_1AC4DFB94()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  return sub_1AC51ACEC(v0);
}

void sub_1AC4DFBC0()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  sub_1AC51AA84(v0, v1);
}

void sub_1AC4DFBEC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  sub_1AC51AAC4(v0, v1);
}

void sub_1AC4DFC18()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_261();
  sub_1AC51A964(v0, v1);
}

uint64_t sub_1AC4DFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1AC5B48A0](a2);
  v5 = *(a4 + 8);
  return sub_1AC51F118();
}

uint64_t sub_1AC4DFC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v9;
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4;
  MEMORY[0x1AC5B48A0](v11);
  OUTLINED_FUNCTION_53();
  v12 = sub_1AC51F038();
  v20 = v12;
  OUTLINED_FUNCTION_53();
  result = sub_1AC51F0B8();
  if (v12 != result)
  {
    v16 = *(v18 + 80);
    do
    {
      OUTLINED_FUNCTION_53();
      v14 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v14)
      {
        (*(v7 + 16))(v10, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, a3);
      }

      else
      {
        result = sub_1AC51F2F8();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v7 + 16))(v10, &v19, a3);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v16(v17, a3, v18);
      (*(v7 + 8))(v10, a3);
      OUTLINED_FUNCTION_53();
      result = sub_1AC51F0B8();
      v12 = v20;
    }

    while (v20 != result);
  }

  return result;
}

uint64_t sub_1AC4DFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v8);
  v9 = *(v6 + 8);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  v10 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AC51ED98();
}

uint64_t sub_1AC4DFF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v8);
  v9 = *(v6 + 8);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_10();
  v10 = *(a6 + 8);
  OUTLINED_FUNCTION_5_13();
  return sub_1AC51ED98();
}

uint64_t sub_1AC4E001C()
{
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x1AC5B48A0](v1);
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_2_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_5_13();
  return sub_1AC51ED98();
}

BOOL static Internal.areAllInitialized(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 5;
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v5);
    v7 = (*(v6 + 32))(v5, v6);
    v2 = v4;
  }

  while ((v7 & 1) != 0);
  return v3 == 0;
}

uint64_t static Internal.areAllInitialized<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB557FB8, qword_1AC5279F0);
  v47 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_1AC51F228();
  v8 = *(*(v45 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v46 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v38[0] = v4 + 32;
  v38[1] = v4 + 16;
  v41 = v4;
  v42 = a1;
  v43 = v4 + 8;
  v44 = (v11 + 32);

  v20 = 0;
  v39 = TupleTypeMetadata2;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_10:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v21 << 6);
      v26 = v41;
      v25 = v42;
      v27 = v40;
      v28 = v47;
      (*(v41 + 16))(v40, *(v42 + 48) + *(v41 + 72) * v24, v47);
      sub_1AC47782C(*(v25 + 56) + 40 * v24, &v48);
      v29 = *(v39 + 48);
      v22 = v46;
      v30 = v27;
      TupleTypeMetadata2 = v39;
      (*(v26 + 32))(v46, v30, v28);
      sub_1AC465B44(&v48, v22 + v29);
      __swift_storeEnumTagSinglePayload(v22, 0, 1, TupleTypeMetadata2);
LABEL_11:
      (*v44)(v13, v22, v45);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, TupleTypeMetadata2);
      if (EnumTagSinglePayload == 1)
      {

        return EnumTagSinglePayload == 1;
      }

      sub_1AC465B44(&v13[*(TupleTypeMetadata2 + 48)], &v48);
      v33 = v49;
      v32 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      if (((*(v32 + 32))(v33, v32) & 1) == 0)
      {
        break;
      }

      v34 = OUTLINED_FUNCTION_0_20();
      v35(v34);
      result = __swift_destroy_boxed_opaque_existential_1(&v48);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v36 = OUTLINED_FUNCTION_0_20();
    v37(v36);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    return EnumTagSinglePayload == 1;
  }

  else
  {
LABEL_5:
    v22 = v46;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        __swift_storeEnumTagSinglePayload(v46, 1, 1, TupleTypeMetadata2);
        v17 = 0;
        goto LABEL_11;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Internal(_BYTE *result, int a2, int a3)
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

uint64_t sub_1AC4E0760()
{
  sub_1AC477660();
  v0 = OUTLINED_FUNCTION_11();
  return OUTLINED_FUNCTION_36(xmmword_1AC528930, v0, v1);
}

uint64_t sub_1AC4E07A4()
{
  result = OUTLINED_FUNCTION_34_3();
  v3 = 0;
  if ((result & 1) != 0 || (result = sub_1AC4E59E4(), !v0))
  {
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1AC4E07E4()
{
  result = OUTLINED_FUNCTION_34_3();
  v3 = result;
  v4 = 0;
  if ((result & 1) != 0 || (result = sub_1AC4E59E4(), !v0))
  {
    *v1 = v4;
    *(v1 + 4) = v3 & 1;
  }

  return result;
}

uint64_t sub_1AC4E0838()
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
          sub_1AC4E59E4();
          v6 = v5;
          sub_1AC4D9ACC();
          v7 = *(*v2 + 16);
          sub_1AC4D9A3C(v7);
          OUTLINED_FUNCTION_32_0(v7 + 1);
          *(v8 + 4 * v7 + 32) = v6;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v9 = OUTLINED_FUNCTION_1_16();
            if (v11 == 93)
            {
              break;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            *v15 = xmmword_1AC51FB60;
            return swift_willThrow();
          }

          v12 = OUTLINED_FUNCTION_1_16();
          if (v14 != 44)
          {
            sub_1AC477660();
            v16 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_16_6(v16, v17);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v12, v13, *(v1 + 8));
        }

        result = sub_1AC458F9C(v9, v10, *(v1 + 8));
        *(v1 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AC4E096C()
{
  result = OUTLINED_FUNCTION_34_3();
  v3 = result;
  v4 = 0;
  if ((result & 1) != 0 || (result = sub_1AC45CC3C(), !v0))
  {
    *v1 = v4;
    *(v1 + 8) = v3 & 1;
  }

  return result;
}

uint64_t sub_1AC4E09C0()
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
          sub_1AC45CC3C();
          v6 = v5;
          sub_1AC4D9AE4();
          v7 = *(*v2 + 16);
          sub_1AC4D9A54(v7);
          OUTLINED_FUNCTION_32_0(v7 + 1);
          *(v8 + 8 * v7 + 32) = v6;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v9 = OUTLINED_FUNCTION_1_16();
            if (v11 == 93)
            {
              break;
            }
          }

          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            *v15 = xmmword_1AC51FB60;
            return swift_willThrow();
          }

          v12 = OUTLINED_FUNCTION_1_16();
          if (v14 != 44)
          {
            sub_1AC477660();
            v16 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_16_6(v16, v17);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v12, v13, *(v1 + 8));
        }

        result = sub_1AC458F9C(v9, v10, *(v1 + 8));
        *(v1 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AC4E0AF4()
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
          v5 = sub_1AC457AA8();
          v6 = v5;
          if (v5 != v5)
          {
            sub_1AC477660();
            OUTLINED_FUNCTION_11();
            v16 = xmmword_1AC5284F0;
            goto LABEL_12;
          }

          sub_1AC4D9AB4();
          v7 = OUTLINED_FUNCTION_19_2();
          sub_1AC4D9A24(v7);
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

uint64_t sub_1AC4E0CC0(uint64_t a1, uint64_t (*a2)(void))
{
  if (OUTLINED_FUNCTION_34_3())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  return result;
}

uint64_t sub_1AC4E0DC4(uint64_t a1, uint64_t (*a2)(void))
{
  if (OUTLINED_FUNCTION_34_3())
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  return result;
}

uint64_t sub_1AC4E0E18(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = OUTLINED_FUNCTION_34_3();
  if (v5)
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1AC4E0E78()
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
          v5 = sub_1AC45D3B4();
          sub_1AC4D9B14();
          v6 = OUTLINED_FUNCTION_19_2();
          sub_1AC4D9A84(v6);
          OUTLINED_FUNCTION_32_0(v2 + 1);
          *(v7 + v2 + 32) = v5 & 1;
          OUTLINED_FUNCTION_46_3();
          if (sub_1AC45E184())
          {
            v8 = OUTLINED_FUNCTION_1_16();
            if (v10 == 93)
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
            return swift_willThrow();
          }

          v11 = OUTLINED_FUNCTION_1_16();
          if (v13 != 44)
          {
            sub_1AC477660();
            v15 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_16_6(v15, v16);
            return swift_willThrow();
          }

          *(v1 + 16) = sub_1AC458F9C(v11, v12, *(v1 + 8));
        }

        result = sub_1AC458F9C(v8, v9, *(v1 + 8));
        *(v1 + 16) = result;
      }
    }
  }

  return result;
}

void sub_1AC4E0FA0()
{
  OUTLINED_FUNCTION_60();
  if ((OUTLINED_FUNCTION_18_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v3);
    if (!v0 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      sub_1AC458F28();
      if (sub_1AC45E184())
      {
        v4 = *v1;
        v5 = v1[1];
        v6 = v5 - *v1;
        if (!*v1)
        {
          v6 = 0;
        }

        v21 = v6;
        while (1)
        {
          v7 = sub_1AC469B3C(v4, v5, v1 + 2, v21);
          v9 = v7;
          v10 = v8;
          sub_1AC4578F4(v7, v8);
          sub_1AC45846C();
          v11 = *(*v2 + 16);
          sub_1AC458484(v11);
          OUTLINED_FUNCTION_32_0(v11 + 1);
          v13 = v12 + 16 * v11;
          *(v13 + 32) = v9;
          *(v13 + 40) = v10;
          *v2 = v12;
          if (OUTLINED_FUNCTION_37_3())
          {
            break;
          }

          OUTLINED_FUNCTION_17_0();
          sub_1AC458E74(v14);
          v15 = OUTLINED_FUNCTION_47_3();
          sub_1AC4513F8(v15, v16);
          sub_1AC458F28();
          if (!sub_1AC45E184())
          {
            goto LABEL_12;
          }
        }

        v19 = OUTLINED_FUNCTION_47_3();
        sub_1AC4513F8(v19, v20);
      }

      else
      {
LABEL_12:
        sub_1AC477660();
        v17 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v17, v18);
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4E10D4()
{
  OUTLINED_FUNCTION_60();
  v3 = v0;
  v63 = v5;
  v64 = v4;
  v7 = v6;
  v66 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0(v66);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  OUTLINED_FUNCTION_5();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v21 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_2();
  v62 = v22;
  if ((sub_1AC457638() & 1) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC458E74(v23);
    if (!v1 && (OUTLINED_FUNCTION_37_3() & 1) == 0)
    {
      v61 = v16 + 16;
      v59 = (v16 + 32);
      v60 = (v16 + 8);
      v58 = (v9 + 8);
      v24 = v63;
      while (1)
      {
        sub_1AC458F28();
        if (sub_1AC45E184() && *(*v3 + v3[2]) == 110 && (sub_1AC459FB0(&unk_1F2127850) & 1) != 0)
        {
          v25 = dynamic_cast_existential_1_conditional(v7);
          if (!v25)
          {
            sub_1AC477660();
            v51 = OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_36(xmmword_1AC528940, v51, v52);
            break;
          }

          v27 = v25;
          v28 = *(v26 + 24);
          v55 = v26 + 24;
          v56 = v28;
          v29 = v26;
          v30 = sub_1AC51F228();
          v57 = &v53;
          v31 = OUTLINED_FUNCTION_3_0(v30);
          v53 = v32;
          v54 = v31;
          v34 = *(v33 + 64);
          OUTLINED_FUNCTION_65();
          MEMORY[0x1EEE9AC00](v35);
          v36 = OUTLINED_FUNCTION_39_3();
          v56(v36, v29);
          OUTLINED_FUNCTION_19_5(v24);
          if (v37)
          {
            (*(v53 + 8))(v24, v54);
            OUTLINED_FUNCTION_20_6();
          }

          else
          {
            v65[3] = v27;
            v65[4] = v29;
            __swift_allocate_boxed_opaque_existential_1(v65);
            OUTLINED_FUNCTION_13_7();
            (*(v47 + 32))();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
          v48 = v62;
          swift_dynamicCast();
          v49 = OUTLINED_FUNCTION_26_5();
          v50(v49, v48, v7);
          sub_1AC51F108();
          sub_1AC51F0D8();
          (*v60)(v48, v7);
          v24 = v63;
        }

        else
        {
          OUTLINED_FUNCTION_17_0();
          sub_1AC46A6E0(v38, v39, v40);
          OUTLINED_FUNCTION_42_0(v14, 1, v7);
          if (v37)
          {
            (*v58)(v14, v66);
          }

          else
          {
            v41 = *v59;
            v42 = OUTLINED_FUNCTION_47_3();
            v43(v42);
            v44 = OUTLINED_FUNCTION_26_5();
            v45(v44, v2, v7);
            sub_1AC51F108();
            sub_1AC51F0D8();
            (*v60)(v2, v7);
          }
        }

        if (OUTLINED_FUNCTION_37_3())
        {
          break;
        }

        OUTLINED_FUNCTION_17_0();
        sub_1AC458E74(v46);
      }
    }
  }

  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

void sub_1AC4E153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v137 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v135 = v32;
  OUTLINED_FUNCTION_5();
  v131 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_8();
  v134 = v38 - v37;
  OUTLINED_FUNCTION_38_3();
  v141 = sub_1AC51F228();
  v39 = OUTLINED_FUNCTION_3_0(v141);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  v133 = v44 - v45;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v46);
  v136 = v122 - v47;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_26_2();
  v140 = v49;
  v50 = *(v27 + 8);
  v138 = v31;
  v139 = v50;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_6();
  v132 = v57 - v58;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_26_2();
  v144 = v60;
  OUTLINED_FUNCTION_38_3();
  v143 = sub_1AC51F228();
  v61 = OUTLINED_FUNCTION_3_0(v143);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_26_2();
  v142 = v70;
  if (sub_1AC457638())
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_0();
  sub_1AC458E74(v71);
  if (v21)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_0();
  sub_1AC458FC0();
  if (sub_1AC459020(0x7Du))
  {
    sub_1AC45A9B0();
LABEL_32:
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_61();
    return;
  }

  v130 = v139 + 32;
  v127 = (v54 + 32);
  v128 = (v63 + 16);
  v125 = (v41 + 16);
  v123 = (v131 + 32);
  v122[3] = v54 + 16;
  v122[2] = v131 + 16;
  v122[1] = v131 + 8;
  v72 = (v41 + 8);
  v126 = v54 + 8;
  v129 = (v63 + 8);
  v124 = v72;
  while (1)
  {
    OUTLINED_FUNCTION_53_0();
    v74 = sub_1AC45DF14() == 34 && v73 == 0xE100000000000000;
    if (v74)
    {
    }

    else
    {
      v75 = OUTLINED_FUNCTION_35_3();

      if ((v75 & 1) == 0)
      {
        sub_1AC477660();
        v114 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v114, v115);
        goto LABEL_32;
      }
    }

    *(v24 + 120) = 1;
    v76 = v142;
    __swift_storeEnumTagSinglePayload(v142, 1, 1, AssociatedTypeWitness);
    v77 = *(v139 + 32);
    OUTLINED_FUNCTION_49_2();
    v78();
    (*v128)(v68, v76, v143);
    OUTLINED_FUNCTION_42_0(v68, 1, AssociatedTypeWitness);
    if (v74)
    {
      v98 = *v129;
      (*v129)(v68, v143);
      sub_1AC477660();
      v99 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v99, v100);
      v101 = OUTLINED_FUNCTION_98();
      (v98)(v101);
      goto LABEL_32;
    }

    (*v127)(v144, v68, AssociatedTypeWitness);
    *(v24 + 120) = 0;
    sub_1AC458F28();
    if (!sub_1AC45E184())
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v102 = xmmword_1AC51FB60;
LABEL_27:
      swift_willThrow();
      v105 = OUTLINED_FUNCTION_9_11();
      v106(v105);
      OUTLINED_FUNCTION_44_3();
      v108 = v76;
LABEL_31:
      v107(v108, v143);
      goto LABEL_32;
    }

    v79 = *v24;
    v80 = *(v24 + 16);
    if (*(*v24 + v80) != 58)
    {
      sub_1AC477660();
      v103 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v103, v104);
      v76 = v142;
      goto LABEL_27;
    }

    v81 = *v24;
    v131 = *(v24 + 8);
    *(v24 + 16) = sub_1AC458F9C(v80, v81, v131);
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v29);
    OUTLINED_FUNCTION_53_0();
    sub_1AC46A334();
    v82 = v136;
    v83 = v141;
    (*v125)();
    OUTLINED_FUNCTION_42_0(v82, 1, v29);
    if (v74)
    {
      (*v72)(v82, v83);
    }

    else
    {
      v84 = v82;
      v85 = v134;
      (*v123)(v134, v84, v29);
      OUTLINED_FUNCTION_14_8(&a18);
      v86(v132, v144, AssociatedTypeWitness);
      OUTLINED_FUNCTION_14_8(&a17);
      v87(v133, v85, v29);
      OUTLINED_FUNCTION_43_4();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v29);
      swift_getAssociatedConformanceWitness();
      sub_1AC51ED88();
      v72 = v124;
      sub_1AC51EDA8();
      OUTLINED_FUNCTION_14_8(&a16);
      v91(v85, v29);
    }

    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v92 = *(v24 + 16);
      if (*(v79 + v92) == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    if (!sub_1AC45E184())
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v109 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      (*v72)(v140, v141);
      v112 = OUTLINED_FUNCTION_9_11();
      v113(v112);
      OUTLINED_FUNCTION_44_3();
      v108 = v142;
      goto LABEL_31;
    }

    v93 = *(v24 + 16);
    if (*(v79 + v93) != 44)
    {
      sub_1AC477660();
      v110 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v110, v111);
      goto LABEL_30;
    }

    v94 = sub_1AC458F9C(v93, v79, v131);
    (*v72)(v140, v141);
    v95 = OUTLINED_FUNCTION_9_11();
    v96(v95);
    OUTLINED_FUNCTION_44_3();
    v97(v142, v143);
    *(v24 + 16) = v94;
  }

  *(v24 + 16) = sub_1AC458F9C(v92, v79, v131);
  v116 = *(v24 + 88);
  v117 = __OFADD__(v116, 1);
  v118 = v116 + 1;
  if (v117)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 88) = v118;
    v119 = v142;
    if (*(v24 + 32) >= v118)
    {
      (*v72)(v140, v141);
      v120 = OUTLINED_FUNCTION_9_11();
      v121(v120);
      OUTLINED_FUNCTION_44_3();
      v108 = v119;
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

void sub_1AC4E1DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v159 = v25;
  v27 = v26;
  v157 = v28;
  OUTLINED_FUNCTION_5();
  v153 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12_8();
  v156 = v34 - v33;
  v164 = *(v35 + 8);
  v162 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  v155 = v43 - v44;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_26_2();
  v160 = v46;
  OUTLINED_FUNCTION_38_3();
  v161 = sub_1AC51F228();
  v47 = OUTLINED_FUNCTION_3_0(v161);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6();
  v154 = v52 - v53;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v54);
  v158 = &v143 - v55;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_26_2();
  v165 = v57;
  OUTLINED_FUNCTION_38_3();
  v163 = sub_1AC51F228();
  v58 = OUTLINED_FUNCTION_3_0(v163);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_6();
  v65 = v63 - v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_26_2();
  v166 = v67;
  if ((sub_1AC457638() & 1) != 0 || (OUTLINED_FUNCTION_32_4(), sub_1AC458E74(v68), v21))
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

  v151 = v60 + 16;
  v152 = v164 + 32;
  v149 = (v49 + 16);
  v150 = v40 + 32;
  v145 = (v40 + 16);
  v146 = (v153 + 4);
  v144 = v153 + 2;
  v143 = v153 + 1;
  v153 = (v49 + 8);
  v69 = (v60 + 8);
  v147 = v69;
  v148 = v40 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_32_4();
    v70 = sub_1AC45DF14();
    v72 = v160;
    v73 = v70 == 34 && v71 == 0xE100000000000000;
    if (v73)
    {
    }

    else
    {
      v74 = OUTLINED_FUNCTION_35_3();

      if ((v74 & 1) == 0)
      {
        sub_1AC477660();
        v136 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_36(xmmword_1AC528960, v136, v137);
        goto LABEL_32;
      }
    }

    *(v24 + 120) = 1;
    v75 = OUTLINED_FUNCTION_7_11();
    v78 = __swift_storeEnumTagSinglePayload(v75, v76, v77, AssociatedTypeWitness);
    OUTLINED_FUNCTION_42_2(v78, v79, v80, v81, v82, v164);
    OUTLINED_FUNCTION_49_2();
    v83();
    *(v24 + 120) = 0;
    sub_1AC458F28();
    v84 = sub_1AC45E184();
    v85 = v163;
    if (!v84)
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v123 = xmmword_1AC51FB60;
LABEL_24:
      swift_willThrow();
LABEL_31:
      (*v69)(v166, v85);
      goto LABEL_32;
    }

    v86 = OUTLINED_FUNCTION_8_12();
    if (v88 != 58)
    {
      sub_1AC477660();
      v124 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v124, v125);
      goto LABEL_24;
    }

    *(v24 + 16) = sub_1AC458F9C(v86, v87, *(v24 + 8));
    v89 = OUTLINED_FUNCTION_7_11();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v27);
    OUTLINED_FUNCTION_32_4();
    sub_1AC45B744(v92, v93, v94, v95, v96, v97, v98, v99, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
    OUTLINED_FUNCTION_44_3();
    v100(v65, v166, v85);
    OUTLINED_FUNCTION_42_0(v65, 1, AssociatedTypeWitness);
    v101 = v161;
    if (v73)
    {
      (*v69)(v65, v85);
      v126 = v153;
LABEL_27:
      sub_1AC477660();
      v129 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36(xmmword_1AC528970, v129, v130);
      (*v126)(v165, v101);
      goto LABEL_31;
    }

    v102 = OUTLINED_FUNCTION_26_5();
    v103(v102, v65, AssociatedTypeWitness);
    v104 = v158;
    (*v149)(v158, v165, v101);
    OUTLINED_FUNCTION_42_0(v104, 1, v27);
    if (v73)
    {
      v127 = OUTLINED_FUNCTION_26_5();
      v128(v127, AssociatedTypeWitness);
      v126 = v153;
      (*v153)(v104, v101);
      v85 = v163;
      goto LABEL_27;
    }

    v105 = v156;
    (*v146)(v156, v104, v27);
    (*v145)(v155, v72, AssociatedTypeWitness);
    OUTLINED_FUNCTION_14_8(&a18);
    v106(v154, v105, v27);
    OUTLINED_FUNCTION_43_4();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v27);
    swift_getAssociatedConformanceWitness();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    OUTLINED_FUNCTION_14_8(&a17);
    v110(v105, v27);
    v111 = OUTLINED_FUNCTION_26_5();
    v112(v111, AssociatedTypeWitness);
    sub_1AC458F28();
    if (sub_1AC45E184())
    {
      v113 = OUTLINED_FUNCTION_8_12();
      if (v115 == 125)
      {
        break;
      }
    }

    sub_1AC458F28();
    v116 = sub_1AC45E184();
    v69 = v147;
    v85 = v163;
    if (!v116)
    {
      sub_1AC477660();
      OUTLINED_FUNCTION_11();
      *v131 = xmmword_1AC51FB60;
LABEL_30:
      swift_willThrow();
      v134 = OUTLINED_FUNCTION_22_7();
      v135(v134);
      goto LABEL_31;
    }

    v117 = OUTLINED_FUNCTION_8_12();
    if (v119 != 44)
    {
      sub_1AC477660();
      v132 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_16_6(v132, v133);
      goto LABEL_30;
    }

    v120 = sub_1AC458F9C(v117, v118, *(v24 + 8));
    v121 = OUTLINED_FUNCTION_22_7();
    v122(v121);
    (*v69)(v166, v85);
    *(v24 + 16) = v120;
  }

  *(v24 + 16) = sub_1AC458F9C(v113, v114, *(v24 + 8));
  v138 = *(v24 + 88);
  v139 = __OFADD__(v138, 1);
  v140 = v138 + 1;
  v141 = v147;
  v142 = v163;
  if (v139)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 88) = v140;
    if (*(v24 + 32) >= v140)
    {
      (*v153)(v165, v161);
      (*v141)(v166, v142);
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_11_9();
  __break(1u);
}

void *sub_1AC4E25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v5[9];
  v10 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 6, v9);
  result = (*(v10 + 8))(&v14, a2, a3, a4, v9, v10);
  if (v15)
  {
    sub_1AC458DF0(&v14, v16);
    v12 = sub_1AC48DCB4(&v14, a4);
    sub_1AC4E26CC(v13, v5, v16);
    (v12)(&v14, 0);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1AC4E26CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC4C9AEC(a1, v13);
  v7 = v13[3];
  result = sub_1AC4575D8(v13, &qword_1EB558200, &unk_1AC520780);
  if (v7)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      return (*(v10 + 40))(a2, &type metadata for JSONDecoder, &off_1F211C6C8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v13, a2, &type metadata for JSONDecoder, &off_1F211C6C8, v11, v12);
    if (!v3)
    {
      return sub_1AC4E2B84(v13, a1);
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4E2ACC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1AC4E2B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4E2B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);

  return sub_1AC51F228();
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf17JSONDecodingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC4E2CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEB && *(a1 + 16))
  {
    return (*a1 + 2147483628);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 >= 0x15)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4E2D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483628;
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 19;
    }
  }

  return result;
}

void *sub_1AC4E2D70(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

InternalSwiftProtobuf::JSONDecodingOptions __swiftcall JSONDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

char *sub_1AC4E2E10(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v2 = sub_1AC51F1A8();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "NaN";
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
    }

    else
    {
      v1 = "-Infinity";
    }

    return sub_1AC45FD18(v1);
  }
}

uint64_t sub_1AC4E2E9C()
{
  result = sub_1AC4E2EBC();
  qword_1ED6E3420 = result;
  return result;
}

uint64_t sub_1AC4E2EBC()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AC486360(23105);
  sub_1AC486360(31329);
  sub_1AC486360(14640);
  v0 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v10 + 16);
    sub_1AC45A78C();
    v0 = v7;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = v1 + 1;
  if (v2 <= v1)
  {
    sub_1AC45A78C();
    v0 = v8;
    v2 = *(v8 + 24) >> 1;
  }

  *(v0 + 16) = v3;
  *(v0 + v1 + 32) = 43;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_1AC45A78C();
    v0 = v9;
  }

  *(v0 + 16) = v4;
  *(v0 + v3 + 32) = 47;
  return v0;
}

void sub_1AC4E2FD4()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AC486360(14640);
  sub_1AC486360(17985);
  off_1EB557C20 = v0;
}

char *sub_1AC4E3028(uint64_t a1, unint64_t a2)
{
  if ((*(v2 + 9) & 1) == 0)
  {
    v5 = *(v2 + 8);
    sub_1AC45A774();
    v6 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v6);
    OUTLINED_FUNCTION_1();
    *(v7 + 32) = v5;
    *v2 = v8;
  }

  sub_1AC45FD18("[");

  sub_1AC45FA3C(a1, a2);
  result = sub_1AC45FD18("]:");
  *(v2 + 8) = 44;
  return result;
}

void sub_1AC4E30C0(int a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FC4C(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC4E3108(int a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_13_8(v2);
    v1 = -v1;
  }

  sub_1AC45FBF4(v1);
}

void sub_1AC4E3160(unsigned int a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FBF4(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC4E31A8(char a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_13_8(v2);
  if (a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  sub_1AC45FD18(v3);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v4);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1AC4E3230(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1AC4E3270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t JSONEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4E335C()
{
  result = qword_1EB559788;
  if (!qword_1EB559788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559788);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSONEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for JSONEncodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4E3618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_1AC4E3658(uint64_t result, int a2, int a3)
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
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1AC4E36B8(uint64_t a1, float a2)
{
  result = sub_1AC459C7C(a1);
  if (!v2)
  {
    return sub_1AC4E2E10(a2);
  }

  return result;
}

void sub_1AC4E36F8(int a1, uint64_t a2)
{
  sub_1AC459C7C(a2);
  if (!v2)
  {
    sub_1AC4E3108(a1);
  }
}

uint64_t sub_1AC4E3734(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, char *), uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v37 = a3;
  v38 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  result = sub_1AC459C7C(v16);
  if (!v6)
  {
    v36 = v15;
    v32 = v11;
    sub_1AC45A774();
    v18 = *(*v5 + 16);
    sub_1AC45A85C(v18);
    v19 = *v5;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 91;
    *v5 = v19;
    v5[4] = 256;
    v20 = sub_1AC51F038();
    v40 = v20;
    if (v20 != sub_1AC51F0B8())
    {
      v23 = 0;
      v34 = (v10 + 32);
      v35 = (v10 + 16);
      v33 = (v10 + 8);
      do
      {
        v24 = sub_1AC51F0A8();
        sub_1AC51F048();
        if (v24)
        {
          v25 = v36;
          (*(v10 + 16))(v36, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, a5);
        }

        else
        {
          result = sub_1AC51F2F8();
          if (v32 != 8)
          {
            __break(1u);
            return result;
          }

          v39 = result;
          v25 = v36;
          (*v35)(v36, &v39, a5);
          swift_unknownObjectRelease();
        }

        sub_1AC51F0F8();
        (*v34)(v13, v25, a5);
        if (v23)
        {
          v26 = *v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = *(v26 + 16);
            sub_1AC45A78C();
            v26 = v30;
          }

          v27 = *(v26 + 16);
          if (v27 >= *(v26 + 24) >> 1)
          {
            sub_1AC45A78C();
            v26 = v31;
          }

          *(v26 + 16) = v27 + 1;
          *(v26 + v27 + 32) = 44;
          *v7 = v26;
        }

        v37(v7, v13);
        (*v33)(v13, a5);
        v28 = sub_1AC51F0B8();
        v20 = v40;
        v23 = 1;
      }

      while (v40 != v28);
    }

    sub_1AC45A774();
    v21 = *(*v7 + 16);
    result = sub_1AC45A85C(v21);
    v22 = *v7;
    *(v22 + 16) = v21 + 1;
    *(v22 + v21 + 32) = 93;
    *v7 = v22;
    v7[4] = 44;
  }

  return result;
}

void sub_1AC4E3A9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = *(v9 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v15;
          }

          v10 = *(v9 + 24);
          if (*(v9 + 16) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_57_0(v10);
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_46_4();
        }

        if ((~LODWORD(v8) & 0x7F800000) != 0)
        {
          v12 = sub_1AC51F1A8();
          sub_1AC45FA3C(v12, v13);
        }

        else
        {
          if ((LODWORD(v8) & 0x7FFFFF) != 0)
          {
            v11 = "NaN";
          }

          else if (v8 >= 0.0)
          {
            v11 = "Infinity";
          }

          else
          {
            v11 = "-Infinity";
          }

          sub_1AC45FD18(v11);
        }

        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v16 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v16);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3BEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = *(v9 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v15;
          }

          v10 = *(v9 + 24);
          if (*(v9 + 16) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_57_0(v10);
            sub_1AC45A78C();
          }

          OUTLINED_FUNCTION_46_4();
        }

        if ((~*&v8 & 0x7FF0000000000000) != 0)
        {
          v12 = sub_1AC51F188();
          sub_1AC45FA3C(v12, v13);
        }

        else
        {
          if ((*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v11 = "NaN";
          }

          else if (v8 >= 0.0)
          {
            v11 = "Infinity";
          }

          else
          {
            v11 = "-Infinity";
          }

          sub_1AC45FD18(v11);
        }

        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v16 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v16);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3D3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v2)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    if (*(v3 + 16))
    {
      v5 = 0;
      v6 = (v3 + 32);
      do
      {
        v8 = *v6++;
        v7 = v8;
        if (v5)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v11 = *(v4 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v4 = v12;
          }

          OUTLINED_FUNCTION_6_14();
          if (v9)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v4 = v13;
          }

          OUTLINED_FUNCTION_7_13();
        }

        sub_1AC45FBF4(v7);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v10);
    }

    sub_1AC45A774();
    v14 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v14);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E3E14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  sub_1AC459C7C(a2);
  if (v6 == 1)
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    v7 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_16(v8);
    if (*(a1 + 16))
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v15 = *(a1 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            a1 = v16;
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            a1 = v17;
          }

          OUTLINED_FUNCTION_7_13();
        }

        sub_1AC45FBF4(v11);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v14);
    }
  }

  else
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_12_12();
    if (v4)
    {
      v18 = 0;
      v19 = (a1 + 32);
      do
      {
        v21 = *v19++;
        v20 = v21;
        v22 = *(v6 + 16);
        if (v18)
        {
          v23 = v22 + 1;
          if (v22 >= *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v29;
          }

          OUTLINED_FUNCTION_41_3();
        }

        else
        {
          v23 = *(v6 + 16);
        }

        if (v23 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_26_6();
          v6 = v25;
        }

        *(v6 + 16) = v23 + 1;
        OUTLINED_FUNCTION_13_9();
        sub_1AC45FBF4(v20);
        v6 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = *(v6 + 16);
          OUTLINED_FUNCTION_6_0();
          sub_1AC45A78C();
          v6 = v27;
        }

        v24 = *(v6 + 16);
        if (v24 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_26_6();
          v6 = v28;
        }

        *(v6 + 16) = v24 + 1;
        OUTLINED_FUNCTION_13_9();
        v18 = 1;
        --v4;
      }

      while (v4);
    }
  }

  sub_1AC45A774();
  v30 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v30);
  OUTLINED_FUNCTION_0_23();
}

void sub_1AC4E400C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v2)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    if (*(v3 + 16))
    {
      v5 = 0;
      v6 = (v3 + 32);
      do
      {
        v8 = *v6++;
        v7 = v8;
        if (v5)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v11 = *(v4 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v4 = v12;
          }

          OUTLINED_FUNCTION_6_14();
          if (v9)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v4 = v13;
          }

          OUTLINED_FUNCTION_7_13();
        }

        if ((v7 & 0x80000000) != 0)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v14 = *(v4 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v4 = v15;
          }

          OUTLINED_FUNCTION_6_14();
          if (v9)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v4 = v16;
          }

          OUTLINED_FUNCTION_23_7();
        }

        sub_1AC45FBF4(v7);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v10);
    }

    sub_1AC45A774();
    v17 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v17);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E4130(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  sub_1AC459C7C(a2);
  if (v6 == 1)
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    v7 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_16(v8);
    if (*(a1 + 16))
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v15 = *(a1 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            a1 = v16;
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            a1 = v17;
          }

          OUTLINED_FUNCTION_7_13();
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          if ((OUTLINED_FUNCTION_35_4() & 1) == 0)
          {
            v18 = *(a1 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            a1 = v19;
          }

          OUTLINED_FUNCTION_6_14();
          if (v13)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            a1 = v20;
          }

          OUTLINED_FUNCTION_23_7();
        }

        sub_1AC45FBF4(v11);
        OUTLINED_FUNCTION_45_3();
      }

      while (!v14);
    }
  }

  else
  {
    if (v3)
    {
      return;
    }

    sub_1AC45A774();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_12_12();
    if (v4)
    {
      v21 = 0;
      v22 = (a1 + 32);
      do
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *(v6 + 16);
        if (v21)
        {
          v26 = v25 + 1;
          if (v25 >= *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v34;
          }

          OUTLINED_FUNCTION_41_3();
        }

        else
        {
          v26 = *(v6 + 16);
        }

        v27 = v26 + 1;
        if (v26 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_26_6();
          v6 = v30;
        }

        *(v6 + 16) = v27;
        OUTLINED_FUNCTION_13_9();
        if ((v23 & 0x8000000000000000) != 0)
        {
          v28 = v26 + 2;
          if (v28 > *(v6 + 24) >> 1)
          {
            OUTLINED_FUNCTION_17_9();
            sub_1AC45A78C();
            v6 = v35;
          }

          *(v6 + 16) = v28;
          *(v6 + v27 + 32) = 45;
          *v2 = v6;
          v23 = -v23;
        }

        sub_1AC45FBF4(v23);
        v6 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v6 + 16);
          OUTLINED_FUNCTION_6_0();
          sub_1AC45A78C();
          v6 = v32;
        }

        v29 = *(v6 + 16);
        if (v29 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_26_6();
          v6 = v33;
        }

        *(v6 + 16) = v29 + 1;
        OUTLINED_FUNCTION_13_9();
        v21 = 1;
        --v4;
      }

      while (v4);
    }
  }

  sub_1AC45A774();
  v36 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v36);
  OUTLINED_FUNCTION_0_23();
}

void sub_1AC4E43BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      do
      {
        v8 = *v7;
        if (v6)
        {
          v9 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = *(v9 + 16);
            OUTLINED_FUNCTION_6_0();
            sub_1AC45A78C();
            v9 = v14;
          }

          v11 = *(v9 + 16);
          v10 = *(v9 + 24);
          if (v11 >= v10 >> 1)
          {
            OUTLINED_FUNCTION_8_14(v10);
            sub_1AC45A78C();
            v9 = v15;
          }

          *(v9 + 16) = v11 + 1;
          *(v9 + v11 + 32) = 44;
          *v2 = v9;
        }

        if (v8)
        {
          v12 = "true";
        }

        else
        {
          v12 = "false";
        }

        sub_1AC45FD18(v12);
        ++v7;
        v6 = 1;
        --v5;
      }

      while (v5);
    }

    sub_1AC45A774();
    v16 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v16);
    OUTLINED_FUNCTION_0_23();
  }
}

void sub_1AC4E44D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v52 = *MEMORY[0x1E69E9840];
  sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = 0;
    v8 = *v2;
    *(v8 + 16) = v6 + 1;
    OUTLINED_FUNCTION_22(v8 + v6);
    *(v4 + 4) = 256;
    v9 = *(a1 + 16);
    v10 = (a1 + 40);
    if (v9)
    {
      while (1)
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v13 = OUTLINED_FUNCTION_19();
        sub_1AC4578F4(v13, v14);
        if (v7)
        {
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            OUTLINED_FUNCTION_8_14(v15);
            sub_1AC45A78C();
            v8 = v43;
          }

          *(v8 + 16) = v16 + 1;
          OUTLINED_FUNCTION_22(v8 + v16);
        }

        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_8_14(v17);
          sub_1AC45A78C();
          v8 = v39;
        }

        *(v8 + 16) = v18 + 1;
        OUTLINED_FUNCTION_22(v8 + v18);
        v19 = v12 >> 62;
        switch(v12 >> 62)
        {
          case 1uLL:
            LODWORD(v20) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_43;
            }

            v20 = v20;
LABEL_14:
            if (v20 < 1)
            {
              goto LABEL_35;
            }

            if (v19 == 2)
            {
              v28 = *(v11 + 16);
              v27 = *(v11 + 24);
              v24 = sub_1AC51EB78();
              if (v24)
              {
                v29 = sub_1AC51EBA8();
                if (__OFSUB__(v28, v29))
                {
                  goto LABEL_46;
                }

                v24 += v28 - v29;
              }

              v23 = __OFSUB__(v27, v28);
              v26 = v27 - v28;
              if (v23)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v19 != 1)
              {
                v46 = v11;
                v47 = v12;
                v48 = BYTE2(v12);
                v49 = BYTE3(v12);
                v50 = BYTE4(v12);
                v51 = BYTE5(v12);
                v33 = &v46 + BYTE6(v12);
                v34 = &v46;
                goto LABEL_34;
              }

              if (v11 >> 32 < v11)
              {
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
              }

              v24 = sub_1AC51EB78();
              if (v24)
              {
                v25 = sub_1AC51EBA8();
                if (__OFSUB__(v11, v25))
                {
                  goto LABEL_47;
                }

                v24 += v11 - v25;
              }

              v26 = (v11 >> 32) - v11;
            }

            v30 = sub_1AC51EB98();
            if (v30 >= v26)
            {
              v31 = v26;
            }

            else
            {
              v31 = v30;
            }

            v32 = (v31 + v24);
            if (v24)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v24;
LABEL_34:
            sub_1AC4680FC(v34, v33, v4);
LABEL_35:
            v8 = *v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = *(v8 + 16);
              OUTLINED_FUNCTION_6_0();
              sub_1AC45A78C();
              v8 = v41;
            }

            v36 = *(v8 + 16);
            v35 = *(v8 + 24);
            if (v36 >= v35 >> 1)
            {
              OUTLINED_FUNCTION_8_14(v35);
              sub_1AC45A78C();
              v8 = v42;
            }

            v37 = OUTLINED_FUNCTION_19();
            sub_1AC4513F8(v37, v38);
            *(v8 + 16) = v36 + 1;
            OUTLINED_FUNCTION_22(v8 + v36);
            v10 += 2;
            --v9;
            v7 = 1;
            if (!v9)
            {
              goto LABEL_40;
            }

            break;
          case 2uLL:
            v22 = *(v11 + 16);
            v21 = *(v11 + 24);
            v23 = __OFSUB__(v21, v22);
            v20 = v21 - v22;
            if (!v23)
            {
              goto LABEL_14;
            }

            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          case 3uLL:
            goto LABEL_35;
          default:
            v20 = BYTE6(v12);
            goto LABEL_14;
        }
      }
    }

LABEL_40:
    sub_1AC45A774();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_14_10(v44);
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AC4E4850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = dynamic_cast_existential_1_conditional(a3);
  if (v7)
  {
    v8 = v3[56];
    v9 = v3[57];
    v10 = v3[58];
    v11 = v3[59];
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_28_4();
    *(v13 - 15) = v14;
    *(v13 - 14) = v15;
    *(v13 - 13) = v16;
    v17 = sub_1AC4E5028;
  }

  else
  {
    v18 = v3[57];
    MEMORY[0x1EEE9AC00](0);
    OUTLINED_FUNCTION_28_4();
    v17 = sub_1AC4E5008;
  }

  return sub_1AC4E3734(a1, a2, v17, v12, a3);
}

uint64_t sub_1AC4E4940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v17 = a3;
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
  swift_dynamicCast();
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = (*(v9 + 8))(&v17, v8, v9);
  if (!v4)
  {
    sub_1AC45FA3C(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_1AC4E4A88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) != 0 || (sub_1AC469654(a4, a5, v8), HIBYTE(v9) > 0xFEu))
  {
    v7 = (*(a5 + 40))(a4, a5);
    sub_1AC4E30BC(v7);
  }

  else
  {
    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_1AC45ABA8(v10);
    sub_1AC45A718(v8, &qword_1EB559790, "6V");
  }
}

uint64_t sub_1AC4E4B54()
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_29_0();
  v1 = *(v0 + 8);
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_27_5(v2, v3, sub_1AC4929E8, &v7, sub_1AC4E4FE8, v4, v5, v2);
}

void sub_1AC4E4C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v6)
  {
    sub_1AC4E51B8();
  }
}

uint64_t sub_1AC4E4C94()
{
  OUTLINED_FUNCTION_30_4();
  v11[2] = v0;
  v11[3] = v1;
  v11[4] = v2;
  v11[5] = v3;
  v11[6] = v4;
  v11[7] = v0;
  v5 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_48_0();
  return OUTLINED_FUNCTION_27_5(v6, v7, sub_1AC4927E8, v11, sub_1AC4E4ED8, v8, v9, v6);
}

uint64_t sub_1AC4E4D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v6)
  {
    return sub_1AC4E5110();
  }

  return result;
}

uint64_t sub_1AC4E4ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  v5 = v3[6];
  return sub_1AC4E4D54(a1, a2, a3, v3[2], v3[3], v3[4]);
}

void sub_1AC4E4EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  sub_1AC4680FC(&v4, &v4 + BYTE6(a2), a3);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AC4E4F68(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = WORD2(a4);
  v7 = a4;
  result = a1(&v6, &v6 + BYTE6(a4));
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC4E5028(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (*(v2 + 35))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 34))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(v2 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1AC4E4940(a1, a2, v6 | *(v2 + 32) | v5 | v4, *(v2 + 16));
}

uint64_t sub_1AC4E5110()
{
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v1, v2, v3);
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[37];
  v11[0] = v0[34];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = v11;
  v9 = Message.jsonString(options:)(v7);
  result = v9._countAndFlagsBits;
  if (!v10)
  {
    return sub_1AC45FA3C(v9._countAndFlagsBits, v9._object);
  }

  return result;
}

void sub_1AC4E51B8()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v5, v6, v7);
  if ((*(v0 + 35) & 1) != 0 || (sub_1AC469654(v4, v2, v12), HIBYTE(v15) > 0xFEu))
  {
    v8 = (*(v2 + 40))(v4, v2);
    sub_1AC4E30BC(v8);
  }

  else
  {
    v9 = v13;
    v10 = v14;
    if ((v15 & 0x100) != 0)
    {
      v9 = sub_1AC51F2E8();
      v10 = v11;
    }

    sub_1AC45AEA4(v9, v10);
  }
}

char *sub_1AC4E5294()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v2, v3, v4);
  return sub_1AC4E2E10(v1);
}

char *sub_1AC4E52EC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v2, v3, v4);
  return sub_1AC45F9B0(v1);
}

void sub_1AC4E5344(int a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if (*(v2 + 17))
    {
      OUTLINED_FUNCTION_5_15(",");
    }

    else
    {
      sub_1AC45FE50(*v2, *(v2 + 8), *(v2 + 16));
    }

    sub_1AC4E30C0(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    sub_1AC4E3108(a1);
  }
}

void sub_1AC4E5418()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  if (v3 == 1)
  {
    if (*(v0 + 17))
    {
      OUTLINED_FUNCTION_7_14(",");
    }

    else
    {
      sub_1AC45FE50(*v0, *(v0 + 8), *(v0 + 16));
    }

    sub_1AC4E3160(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    sub_1AC45FBF4(v2);
  }
}

uint64_t sub_1AC4E54E8()
{
  OUTLINED_FUNCTION_3_20();
  if (v3)
  {
    if (*(v1 + 17))
    {
      OUTLINED_FUNCTION_6_15(",");
    }

    else
    {
      sub_1AC45FE50(*v1, *(v1 + 8), *(v1 + 16));
    }
  }

  else
  {
    v4 = v2;
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v5, v6, v7);
    if (*(v1 + 34))
    {
      v8 = OUTLINED_FUNCTION_4_13();
      return v4(v8);
    }
  }

  v10 = OUTLINED_FUNCTION_4_13();
  return v0(v10);
}

void sub_1AC4E5584()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  if (v3 == 1)
  {
    if (*(v0 + 17))
    {
      OUTLINED_FUNCTION_7_14(",");
    }

    else
    {
      sub_1AC45FE50(*v0, *(v0 + 8), *(v0 + 16));
    }

    sub_1AC4E31A8(v2 & 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v4, v5, v6);
    if (v2)
    {
      v7 = "true";
      v8 = 4;
    }

    else
    {
      v7 = "false";
      v8 = 5;
    }

    sub_1AC45FE50(v7, v8, 2);
  }
}

uint64_t sub_1AC4E5638()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_24();
  sub_1AC45FE50(v4, v5, v6);
  return sub_1AC467E68(v3, v1);
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC4E573C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 38))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1AC4E577C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int64_t sub_1AC4E581C(int64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_1AC4E6960(result, v8, v7, a3);
      if (!v3)
      {
        v5 = HIDWORD(result) & 1;
        goto LABEL_12;
      }

      break;
    case 3uLL:
      if (!v3)
      {
        LODWORD(result) = 0;
        LOBYTE(v5) = 1;
        goto LABEL_12;
      }

      break;
    default:
      result = sub_1AC4E6694(result, a2 & 0xFFFFFFFFFFFFFFLL, a3);
      if (!v3)
      {
        v5 = HIDWORD(result) & 1;
LABEL_12:
        result = result | (v5 << 32);
      }

      break;
  }

  return result;
}

uint64_t sub_1AC4E58D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *, uint64_t), uint64_t (*a5)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v9 = v10;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v9 = v7;
LABEL_8:
      result = sub_1AC4E68A0(result, v9, v8, a3, a5);
      break;
    case 3uLL:
      if (!v5)
      {
        result = 0;
      }

      break;
    default:
      result = sub_1AC4E67A4(result, a2 & 0xFFFFFFFFFFFFFFLL, a3, a4);
      break;
  }

  return result;
}

uint64_t sub_1AC4E597C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1AC51EEE8();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1AC4E59E4()
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
      if (v2)
      {
        goto LABEL_51;
      }

      v28 = *&v0;
      if ((LODWORD(v28) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        goto LABEL_51;
      }

      return result;
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
  if (v20)
  {
    *(v2 + 16) = v11;
    OUTLINED_FUNCTION_17_0();
    sub_1AC45993C();
    OUTLINED_FUNCTION_12_13();
    v22 = v22 && v21 == 0xE300000000000000;
    if (v22 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {
    }

    v31 = v9 == 6712905 && v20 == 0xE300000000000000;
    if (v31 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {
    }

    v32 = v9 == 1718503725 && v20 == 0xE400000000000000;
    if (v32 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {
    }

    OUTLINED_FUNCTION_13_10();
    v33 = v22 && v20 == 0xE800000000000000;
    if (v33 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {
    }

    OUTLINED_FUNCTION_5_16();
    v35 = v22 && v20 == v34;
    if (v35 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {
    }

    else
    {
      sub_1AC51EE18();
      OUTLINED_FUNCTION_23_8();
      v36 = OUTLINED_FUNCTION_9_14();
      result = v37(v36);
      if (v9 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {

        v38 = OUTLINED_FUNCTION_12_0();
        v40 = sub_1AC4E581C(v38, v39, v2);
        v41 = OUTLINED_FUNCTION_12_0();
        result = sub_1AC45AC74(v41, v42);
        if ((v40 & 0x100000000) != 0)
        {
          goto LABEL_51;
        }
      }
    }
  }

  else
  {
    v29 = *(v2 + 16);
    v30 = *v2;
    if (*v2)
    {
      v30 = *(v2 + 8) - v30;
    }

    if (v29 == v30)
    {
      goto LABEL_5;
    }

    if (*(v9 + v29) != 34)
    {
LABEL_51:
      sub_1AC477660();
      v12 = OUTLINED_FUNCTION_11();
      v14 = xmmword_1AC528340;
      return OUTLINED_FUNCTION_36(v14, v12, v13);
    }

    result = sub_1AC458F9C(v29, v9, v6);
    *(v2 + 16) = result;
  }

  return result;
}

uint64_t sub_1AC4E5D54()
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
    goto LABEL_19;
  }

  if (*(v1 + v0) != 34)
  {
    goto LABEL_19;
  }

  v3 = sub_1AC459B18();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 0x65736C6166 && v4 == 0xE500000000000000;
  if (!v7 && (sub_1AC51F3D8() & 1) == 0)
  {
    if (v5 == 1702195828 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v10 = sub_1AC51F3D8();

      if ((v10 & 1) == 0)
      {
LABEL_19:
        sub_1AC477660();
        v11 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_17_10(v11, v12);
        return v8 & 1;
      }
    }

    v8 = 1;
    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

unint64_t sub_1AC4E5E7C(int a1)
{
  if ((a1 - 58) >= 0xFFFFFFF6)
  {
    v1 = 0;
    v2 = (a1 - 48);
  }

  else
  {
    v1 = 0;
    v2 = 10;
    if ((a1 - 58) <= 0xFFFFFFF6)
    {
      switch(a1)
      {
        case 'A':
          return v2 | (v1 << 32);
        case 'B':
LABEL_7:
          v1 = 0;
          v2 = 11;
          break;
        case 'C':
LABEL_9:
          v1 = 0;
          v2 = 12;
          break;
        case 'D':
LABEL_10:
          v1 = 0;
          v2 = 13;
          break;
        case 'E':
LABEL_8:
          v1 = 0;
          v2 = 14;
          break;
        case 'F':
LABEL_11:
          v1 = 0;
          v2 = 15;
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      switch(a1)
      {
        case 'a':
          return v2 | (v1 << 32);
        case 'b':
          goto LABEL_7;
        case 'c':
          goto LABEL_9;
        case 'd':
          goto LABEL_10;
        case 'e':
          goto LABEL_8;
        case 'f':
          goto LABEL_11;
        default:
          v2 = 0;
          v1 = 1;
          break;
      }
    }
  }

  return v2 | (v1 << 32);
}

uint64_t sub_1AC4E5F50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  v8 = a2 - result;
  if (a2 - result < 1)
  {
    goto LABEL_10;
  }

  v16 = 0;
  sub_1AC45BD44(a3, v15);
  sub_1AC457E18(v7, a2, &v16, v8);
  if (v4)
  {
    return sub_1AC457DC4(v15);
  }

  v11 = v9;
  v12 = v10;
  result = sub_1AC457DC4(v15);
  if ((v12 & 1) == 0 && (v16 == v8 ? (v14 = COERCE_UNSIGNED_INT(fabs(v11)) <= 0x7F7FFFFF) : (v14 = 0), v14))
  {
    v13 = v11;
    *a4 = v13;
    *(a4 + 4) = 0;
  }

  else
  {
LABEL_10:
    *a4 = 0;
    *(a4 + 4) = 1;
  }

  return result;
}

uint64_t sub_1AC4E6038@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = a2 - result;
  if (a2 - result < 1)
  {
    goto LABEL_8;
  }

  v15 = 0;
  sub_1AC45BD44(a3, v14);
  v9 = OUTLINED_FUNCTION_12_0();
  v10 = a4(v9);
  if (v5)
  {
    return sub_1AC457DC4(v14);
  }

  v12 = v10;
  v13 = v11;
  result = sub_1AC457DC4(v14);
  if ((v13 & 1) == 0 && v15 == v7)
  {
    *a5 = v12;
    *(a5 + 8) = 0;
  }

  else
  {
LABEL_8:
    *a5 = 0;
    *(a5 + 8) = 1;
  }

  return result;
}

uint64_t sub_1AC4E6114(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1AC51EF88();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1AC51F308();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1AC4E61A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1AC51EFC8();
  }

  else
  {
    return 0;
  }
}

void sub_1AC4E61EC()
{
  v2 = v1;
  sub_1AC458F28();
  v3 = 0;
  while (1)
  {
    v4 = 0;
    v6 = *v0;
    v5 = v0[1];
    v7 = v5 - *v0;
    if (*v0)
    {
      v8 = v5 - *v0;
    }

    else
    {
      v8 = 0;
    }

    while (1)
    {
      sub_1AC458F28();
      v9 = v0[2];
      if (v6)
      {
        if (v9 == v7)
        {
          goto LABEL_63;
        }
      }

      else if (!v9)
      {
        goto LABEL_63;
      }

      v10 = *(v6 + v9);
      if (v10 != 91)
      {
        break;
      }

      if (v9 < 0 || v9 >= v8)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        sub_1AC477660();
        v22 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_16_6(v22, v23);
LABEL_64:
        swift_willThrow();
        return;
      }

      v0[2] = v9 + 1;
      v11 = __OFADD__(v4++, 1);
      if (v11)
      {
        goto LABEL_67;
      }
    }

    switch(v10)
    {
      case '{':
        sub_1AC458E74(0x7Bu);
        if (v2)
        {
          return;
        }

        sub_1AC458FC0();
        v2 = 0;
        if ((sub_1AC459020(0x7Du) & 1) == 0)
        {
          while (1)
          {
            sub_1AC458F28();
            sub_1AC4E6548();
            v20 = sub_1AC458E74(0x3Au);
            sub_1AC4E61EC(v20);
            v2 = 0;
            if (sub_1AC459020(0x7Du))
            {
              break;
            }

            sub_1AC458E74(0x2Cu);
          }
        }

        sub_1AC45A9B0();
        goto LABEL_44;
      case ']':
        if (!v4)
        {
          goto LABEL_69;
        }

        while (1)
        {
          sub_1AC458F28();
          v13 = v0[2];
          if (v6)
          {
            if (v13 == v7)
            {
              goto LABEL_44;
            }
          }

          else if (!v13)
          {
            goto LABEL_44;
          }

          if (*(v6 + v13) != 93)
          {
            goto LABEL_44;
          }

          if (v13 < 0 || v13 >= v8)
          {
            __break(1u);
            goto LABEL_71;
          }

          v0[2] = v13 + 1;
          v14 = v4-- <= 1;
          if (v14)
          {
            v4 = 0;
            goto LABEL_44;
          }
        }

      case 'f':
        v12 = &unk_1F2126DD0;
        goto LABEL_25;
      case 'n':
        v12 = &unk_1F2126DA8;
LABEL_25:
        if ((sub_1AC459FB0(v12) & 1) == 0)
        {
LABEL_63:
          sub_1AC477660();
          OUTLINED_FUNCTION_11();
          *v21 = xmmword_1AC51FB60;
          goto LABEL_64;
        }

        goto LABEL_44;
      case 't':
        v12 = &unk_1F2126DF8;
        goto LABEL_25;
      case '""':
        sub_1AC4E6548();
        break;
      default:
        sub_1AC45CC3C();
        break;
    }

    if (v2)
    {
      return;
    }

LABEL_44:
    v11 = __OFADD__(v3, v4);
    v3 += v4;
    if (v11)
    {
      break;
    }

    if (v3 >= 1)
    {
      v16 = *v0;
      v15 = v0[1];
      v17 = v15 - *v0;
      v18 = *v0 ? v15 - *v0 : 0;
      while (1)
      {
        sub_1AC458F28();
        v19 = v0[2];
        if (v16)
        {
          if (v19 == v17)
          {
            break;
          }
        }

        else if (!v19)
        {
          break;
        }

        if (*(v16 + v19) != 93)
        {
          break;
        }

        if (v19 < 0 || v19 >= v18)
        {
          goto LABEL_68;
        }

        v0[2] = v19 + 1;
        v14 = v3-- <= 1;
        if (v14)
        {
          return;
        }
      }

      sub_1AC458E74(0x2Cu);
      if (!v2)
      {
        continue;
      }
    }

    return;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_1AC4E64CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  sub_1AC477660();
  swift_allocError();
  *v4 = xmmword_1AC528EC0;
  return swift_willThrow();
}

uint64_t sub_1AC4E6548()
{
  v1 = v0[2];
  v2 = *v0;
  if (*v0)
  {
    v3 = v0[1] - v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == v3)
  {
    goto LABEL_30;
  }

  if (*(v2 + v1) != 34)
  {
    v10 = 5;
LABEL_31:
    sub_1AC477660();
    swift_allocError();
    *v11 = 0;
    v11[1] = v10;
    return swift_willThrow();
  }

  v4 = v0[1];
  result = sub_1AC458F9C(v1, *v0, v4);
  v0[2] = result;
  v6 = v4 - v2;
  if (v2)
  {
    v7 = v4 - v2;
  }

  else
  {
    v7 = 0;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (result == v6)
  {
LABEL_29:
    v0[2] = v6;
LABEL_30:
    v10 = 13;
    goto LABEL_31;
  }

  while (1)
  {
    v8 = *(v2 + result);
    if (v8 == 92)
    {
      break;
    }

    if (v8 == 34)
    {
      v0[2] = result;
      result = sub_1AC458F9C(result, v2, v4);
      v0[2] = result;
      return result;
    }

    if (result < 0 || result >= v7)
    {
      goto LABEL_33;
    }

    v9 = 1;
LABEL_24:
    result += v9;
    if (v2)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (!result)
    {
      v6 = 0;
      goto LABEL_29;
    }
  }

  if ((result & 0x8000000000000000) == 0 && result < v7)
  {
    if (!v2)
    {
      goto LABEL_34;
    }

    if (result + 1 == v6)
    {
      goto LABEL_29;
    }

    if (result + 1 >= v6)
    {
      goto LABEL_34;
    }

    v9 = 2;
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1AC4E6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = BYTE6(a2);
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  if (!BYTE6(a2))
  {
    goto LABEL_7;
  }

  v14 = 0;
  sub_1AC45BD44(a3, v18);
  sub_1AC457E18(&v15, &v15 + v4, &v14, v4);
  if (!v3)
  {
    v8 = v5;
    v9 = v6;
    sub_1AC457DC4(v18);
    if ((v9 & 1) == 0 && v14 == v4)
    {
      *&v10 = v8;
      v11 = v10;
      if ((~v10 & 0x7F800000) != 0)
      {
        v12 = 0;
        goto LABEL_8;
      }
    }

LABEL_7:
    v11 = 0;
    v12 = 1;
LABEL_8:
    v18[0] = v12;
    result = v11 | (v12 << 32);
    goto LABEL_9;
  }

  result = sub_1AC457DC4(v18);
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC4E67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *, uint64_t))
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = BYTE6(a2);
  v14 = a1;
  v16 = WORD2(a2);
  v15 = a2;
  if (BYTE6(a2))
  {
    v13 = 0;
    sub_1AC45BD44(a3, v17);
    v7 = a4(&v14, &v14 + v5, &v13, v5);
    if (v4)
    {
      result = sub_1AC457DC4(v17);
    }

    else
    {
      v10 = v7;
      v11 = v8;
      sub_1AC457DC4(v17);
      if (v11 & 1 | (v13 != v5))
      {
        result = 0;
      }

      else
      {
        result = v10;
      }
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC4E68A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = sub_1AC51EB78();
  v11 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_1AC51EB98();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = sub_1AC4E6038(v11, v17, a4, a5, &v18);
  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t sub_1AC4E6960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC51EB78();
  v9 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AC51EB98();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = sub_1AC4E5F50(v9, v15, a4, &v16);
  if (!v4)
  {
    return v16 | (v17 << 32);
  }

  return result;
}

uint64_t sub_1AC4E6A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1AC4E6A64(uint64_t result, int a2, int a3)
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

uint64_t sub_1AC4E6ACC(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_1AC51EEF8();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

uint64_t sub_1AC4E6B64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v23[0] = *v1;
  v23[1] = v2;
  v23[2] = *(v1 + 32);
  v24 = *(v1 + 48);
  sub_1AC47782C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v14;
  v5 = *(&v15 + 1);
  v4 = v15;
  v7 = *(&v16 + 1);
  v6 = v16;
  v8 = v17;
  if (!*(&v14 + 1))
  {
LABEL_5:
    sub_1AC4ED750(v3, 0, v4, v5, v6, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v9 = static Google_Protobuf_Option.== infix(_:_:)(v23);
  v10 = v20;
  v12 = v21;
  v11 = v22;

  sub_1AC4513F8(v10, *(&v10 + 1));
  sub_1AC48532C(v12, *(&v12 + 1), v11);
  return v9 & 1;
}

uint64_t sub_1AC4E6C90(uint64_t a1)
{
  memcpy(__dst, v1, 0x68uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB559820, "Vr");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Method.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC486084(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E6D94(uint64_t a1)
{
  v2 = v1[1];
  v26[0] = *v1;
  v26[1] = v2;
  v26[2] = v1[2];
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v3 = 0x2000000000000000;
    v4 = -1;
LABEL_6:
    sub_1AC4CA7E4(v5, v6, v3, v4, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v4 = v16;
  v3 = v15;
  v5 = v13;
  v6 = v14;
  v7 = v17;
  v8 = v18;
  if ((v15 & 0x3000000000000000) == 0x2000000000000000 && v16 == 255)
  {
    goto LABEL_6;
  }

  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v9 = static Google_Protobuf_Value.== infix(_:_:)(v26, &v20);
  v10 = v24;
  v11 = v25;
  sub_1AC4854E8(v20, v21, v22, v23);
  sub_1AC4513F8(v10, v11);
  return v9 & 1;
}

uint64_t sub_1AC4E6EB4(uint64_t a1)
{
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  v14[2] = v1[2];
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v7;
  if (!*(&v7 + 1))
  {
LABEL_5:
    sub_1AC4EDA58(v3, 0);
    v4 = 0;
    return v4 & 1;
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v4 = static Google_Protobuf_Mixin.== infix(_:_:)(v14);
  v5 = v13;

  sub_1AC4513F8(v5, *(&v5 + 1));
  return v4 & 1;
}

uint64_t sub_1AC4E6FB0(uint64_t a1)
{
  memcpy(__dst, v1, 0x80uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4ED810(v6);
    memcpy(__src, v6, sizeof(__src));
    v3 = v6;
  }

  memcpy(v9, v3, sizeof(v9));
  if (sub_1AC4ED828(v9) == 1)
  {
    memcpy(v9, __src, sizeof(v9));
    sub_1AC4575D8(v9, &qword_1EB5597B0, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, sizeof(v9));
    v4 = static Google_Protobuf_Field.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, sizeof(v6));
    sub_1AC4853C8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E70E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_5;
  }

  v6 = v10;
  v5 = v9;
  if (v10 >> 60 == 15)
  {
LABEL_5:
    sub_1AC45AC74(v5, v6);
    v7 = 0;
    return v7 & 1;
  }

  sub_1AC4578F4(a2, a3);
  v7 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC45AC74(v9, v10);
  sub_1AC4513F8(a2, a3);
  return v7 & 1;
}

uint64_t sub_1AC4E71D0(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597B8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Type.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4ED840(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E72D8(uint64_t a1)
{
  memcpy(__dst, v1, 0x70uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*(&__src[0] + 1))
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597A8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Enum.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4ED7BC(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E73D8(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*&__src[8])
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB559828, "Vr");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_Api.== infix(_:_:)(__dst);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC4EDAB4(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E74E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AC47782C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v15;
  v8 = v14;
  if (!v16)
  {
LABEL_7:
    v10 = v8;
    v11 = v7;
    v12 = 0;
LABEL_8:
    sub_1AC48532C(v10, v11, v12);
    v9 = 0;
    return v9 & 1;
  }

  if (v16 != a4 && (sub_1AC472EE4(v16) & 1) == 0)
  {
    v10 = v14;
    v11 = v15;
    v12 = v16;
    goto LABEL_8;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC4578F4(v14, v15);
  v9 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC4513F8(v14, v15);
  sub_1AC4513F8(a2, a3);
  sub_1AC48532C(v14, v15, v16);
  return v9 & 1;
}

uint64_t sub_1AC4E7610(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9A0(v7);
    memcpy(__src, v7, 0x99uLL);
    v3 = v7;
  }

  memcpy(v10, v3, 0x99uLL);
  if (sub_1AC470BC0(v10) == 1)
  {
    memcpy(v10, __src, 0x99uLL);
    sub_1AC4575D8(v10, &qword_1EB5597E8, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, 0x99uLL);
    static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)();
    v4 = v5;
    memcpy(v7, v10, 0x99uLL);
    sub_1AC48596C(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7740(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v9, __src, 0x67uLL);
    sub_1AC4575D8(v9, &qword_1EB5597E0, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x67uLL);
  static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)();
  v4 = v3;
  memcpy(v6, v9, 0x67uLL);
  sub_1AC485E98(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7844(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4ED97C(v7);
    memcpy(__src, v7, sizeof(__src));
    v3 = v7;
  }

  memcpy(v10, v3, sizeof(v10));
  if (sub_1AC470BC0(v10) == 1)
  {
    memcpy(v10, __src, sizeof(v10));
    sub_1AC4575D8(v10, &qword_1EB5597D8, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)();
    v4 = v5;
    memcpy(v7, v10, sizeof(v7));
    sub_1AC4857B0(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7974(uint64_t a1)
{
  memcpy(__dst, v1, 0x47uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 71);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x47uLL);
    sub_1AC4575D8(v8, &qword_1EB5589B0, &qword_1AC520E18);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x47uLL);
  v3 = static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x47uLL);
  sub_1AC4AEF10(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E7A70(uint64_t a1)
{
  v2 = v1[1];
  v14[2] = *v1;
  v14[3] = v2;
  v15[0] = v1[2];
  *(v15 + 10) = *(v1 + 42);
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0u;
    v9 = 0u;
    *&v10[16] = 0;
    *v10 = 1uLL;
    *&v10[24] = 0;
    goto LABEL_5;
  }

  if (*v10 == 1)
  {
LABEL_5:
    v12 = v8;
    v13 = v9;
    v14[0] = *v10;
    *(v14 + 10) = *&v10[10];
    sub_1AC4575D8(&v12, &qword_1EB559808, "^r");
    v4 = 0;
    return v4 & 1;
  }

  v12 = v8;
  v13 = v9;
  v14[0] = *v10;
  *(v14 + 10) = *&v10[10];
  static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)();
  v4 = v3;
  v6[0] = v12;
  v6[1] = v13;
  v7[0] = v14[0];
  *(v7 + 10) = *(v14 + 10);
  sub_1AC485A78(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7B9C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 1;
    memset(&__src[2], 0, 62);
    goto LABEL_5;
  }

  if (*(&__src[1] + 1) == 1)
  {
LABEL_5:
    memcpy(v9, __src, 0x5EuLL);
    sub_1AC4575D8(v9, &qword_1EB5597F8, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x5EuLL);
  static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)();
  v4 = v3;
  memcpy(v6, v9, 0x5EuLL);
  sub_1AC485BD8(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E7CA8(uint64_t a1)
{
  memcpy(__dst, v1, 0x91uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9E4(v6);
    memcpy(__src, v6, 0x91uLL);
    v3 = v6;
  }

  memcpy(v9, v3, 0x91uLL);
  if (sub_1AC470BC0(v9) == 1)
  {
    memcpy(v9, __src, 0x91uLL);
    sub_1AC4575D8(v9, &qword_1EB559800, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, 0x91uLL);
    v4 = static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, 0x91uLL);
    sub_1AC485DE8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E7DD8(uint64_t a1)
{
  memcpy(__dst, v1, 0x78uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_5;
  }

  if (!*__src)
  {
LABEL_5:
    memcpy(v8, __src, sizeof(v8));
    sub_1AC4575D8(v8, &qword_1EB5597D0, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, sizeof(v8));
  v3 = static Google_Protobuf_UninterpretedOption.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, sizeof(v5));
  sub_1AC485B28(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E7EE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v2;
  v20 = *(v1 + 32);
  sub_1AC47782C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v8;
  v4 = v9;
  v5 = v10;
  if (v11 == 1)
  {
LABEL_5:
    sub_1AC4ED938(v3, v4, v5, 1);
    v6 = 0;
    return v6 & 1;
  }

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v6 = static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(v19, &v14);
  sub_1AC4513F8(v14, v15);

  return v6 & 1;
}

uint64_t sub_1AC4E7FC8(uint64_t a1)
{
  memcpy(__dst, v1, 0xB1uLL);
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4EDA0C(v6);
    memcpy(__src, v6, 0xB1uLL);
    v3 = v6;
  }

  memcpy(v9, v3, 0xB1uLL);
  if (sub_1AC470BE4(v9) == 1)
  {
    memcpy(v9, __src, 0xB1uLL);
    sub_1AC4575D8(v9, &qword_1EB559818, "Vr");
    v4 = 0;
  }

  else
  {
    memcpy(v9, __src, 0xB1uLL);
    v4 = static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(__dst, v9);
    memcpy(v6, v9, 0xB1uLL);
    sub_1AC485FF8(v6);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E80F8(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    v3 = __src;
  }

  else
  {
    sub_1AC4ED9C8(v7);
    memcpy(__src, v7, 0x7EuLL);
    v3 = v7;
  }

  memcpy(v10, v3, 0x7EuLL);
  if (sub_1AC470BE4(v10) == 1)
  {
    memcpy(v10, __src, 0x7EuLL);
    sub_1AC4575D8(v10, &qword_1EB5597F0, "^r");
    v4 = 0;
  }

  else
  {
    memcpy(v10, __src, 0x7EuLL);
    static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)();
    v4 = v5;
    memcpy(v7, v10, 0x7EuLL);
    sub_1AC485F48(v7);
  }

  return v4 & 1;
}

uint64_t sub_1AC4E8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v5 = v13;
  v6 = v14;
  if (!v12)
  {
LABEL_5:
    sub_1AC4AEE04(0, v5, v6);
    v8 = 0;
    return v8 & 1;
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  static Google_Protobuf_FeatureSetDefaults.== infix(_:_:)();
  v8 = v7;
  v9 = v18;
  v10 = v19;

  sub_1AC4513F8(v9, v10);
  return v8 & 1;
}

uint64_t sub_1AC4E8314(uint64_t a1)
{
  memcpy(__dst, v1, 0x56uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 40);
    *&__src[40] = 1;
    memset(&__src[48], 0, 38);
    goto LABEL_5;
  }

  if (*&__src[40] == 1)
  {
LABEL_5:
    memcpy(v8, __src, 0x56uLL);
    sub_1AC4575D8(v8, &qword_1EB5597C8, "^r");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x56uLL);
  v3 = static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x56uLL);
  sub_1AC4856C0(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1AC47782C(a1, v30);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v8, v9, v10, v11, v12, v13, v14, v15, v28);
  if (!swift_dynamicCast() || !v29)
  {
    v26 = 0;
LABEL_6:
    sub_1AC4EDA14(v26);
    v21 = 0;
    return v21 & 1;
  }

  if ((a6(a2, v29) & 1) == 0)
  {
    v26 = v29;
    goto LABEL_6;
  }

  v16 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v16, v17);
  v18 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v18, v19);
  OUTLINED_FUNCTION_7_15();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v22, v23);
  v24 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v24, v25);
  sub_1AC4EDA14(v29);
  return v21 & 1;
}

uint64_t sub_1AC4E8530(uint64_t a1)
{
  v2 = v1[1];
  v12 = *v1;
  v13 = v2;
  v14[0] = v1[2];
  *(v14 + 14) = *(v1 + 46);
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0;
    memset(&v9[2], 0, 54);
LABEL_6:
    sub_1AC4ED8DC(0, v6, v5);
    v4 = 0;
    return v4 & 1;
  }

  if (!*&v9[2])
  {
    v6 = *(&v9[2] + 1);
    v5 = *&v9[3];
    goto LABEL_6;
  }

  *&v11[8] = *(&v9[2] + 8);
  *&v11[24] = *(&v9[3] + 8);
  *v11 = *&v9[2];
  *&v11[40] = *(&v9[4] + 1);
  *&v11[52] = WORD2(v9[5]);
  *&v11[48] = v9[5];
  static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)();
  v4 = v3;
  v8[0] = *v11;
  v8[1] = *&v11[16];
  v9[0] = *&v11[32];
  *(v9 + 14) = *&v11[46];
  sub_1AC485610(v8);
  return v4 & 1;
}

uint64_t sub_1AC4E8670(uint64_t a1)
{
  memcpy(__dst, v1, 0x71uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 113);
    goto LABEL_5;
  }

  if (!__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x71uLL);
    sub_1AC4575D8(v8, &qword_1EB5589C0, &qword_1AC520E30);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x71uLL);
  v3 = static Google_Protobuf_EnumValueOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x71uLL);
  sub_1AC4B3334(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8778(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v17;
  v8 = v16;
  if (!v18)
  {
LABEL_7:
    v12 = v8;
    v13 = v7;
    v14 = 0;
LABEL_8:
    sub_1AC48532C(v12, v13, v14);
    v11 = 0;
    return v11 & 1;
  }

  if (v18 != a4)
  {

    sub_1AC4A718C();
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v12 = v16;
      v13 = v17;
      v14 = v18;
      goto LABEL_8;
    }
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC4578F4(v16, v17);
  v11 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC4513F8(v16, v17);
  sub_1AC4513F8(a2, a3);
  sub_1AC48532C(v16, v17, v18);
  return v11 & 1;
}

uint64_t sub_1AC4E88D8(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 32);
    *&__src[32] = 1;
    memset(&__src[40], 0, 63);
    goto LABEL_5;
  }

  if (*&__src[32] == 1)
  {
LABEL_5:
    memcpy(v9, __src, 0x67uLL);
    sub_1AC4575D8(v9, &qword_1EB559810, "Vr");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, 0x67uLL);
  static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)();
  v4 = v3;
  memcpy(v6, v9, 0x67uLL);
  sub_1AC485C88(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E89EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *), void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v35 = a5;
  v36 = BYTE4(a5);
  sub_1AC47782C(a1, v28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v10, v11, v12, v13, v14, v15, v16, v17, v24);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    v20 = 0;
    v18 = 0;
    v19 = 0xF000000000000000;
    goto LABEL_5;
  }

  v19 = *(&v24 + 1);
  v18 = v24;
  v20 = v25;
  v21 = v26 | (v27 << 32);
  if (*(&v24 + 1) >> 60 == 15)
  {
LABEL_5:
    a8(v18, v19, v20, v21);
    v22 = 0;
    return v22 & 1;
  }

  v29 = v24;
  v30 = v25;
  v31 = BYTE4(v25) & 1;
  v32 = v26;
  v33 = BYTE4(v21) & 1;
  v22 = a7(v34, &v29);
  sub_1AC4513F8(v29, *(&v29 + 1));
  return v22 & 1;
}

uint64_t sub_1AC4E8B00(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC47782C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 72);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v9, __src, sizeof(v9));
    sub_1AC4575D8(v9, &qword_1EB5597C0, "^r");
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v9, __src, sizeof(v9));
  static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)();
  v4 = v3;
  memcpy(v6, v9, sizeof(v6));
  sub_1AC485D38(v6);
  return v4 & 1;
}

uint64_t sub_1AC4E8BFC(uint64_t a1)
{
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  v15[0] = v1[2];
  *(v15 + 15) = *(v1 + 47);
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0u;
    memset(v9, 0, 31);
    v7 = 0u;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_5:
    v11 = v7;
    v12 = v8;
    v13[0] = v9[0];
    *(v13 + 15) = *(v9 + 15);
    sub_1AC4575D8(&v11, &qword_1EB5580B0, &qword_1AC5203B8);
    v3 = 0;
    return v3 & 1;
  }

  v11 = v7;
  v12 = v8;
  v13[0] = v9[0];
  *(v13 + 15) = *(v9 + 15);
  v3 = static Google_Protobuf_ServiceOptions.== infix(_:_:)(v14, &v11);
  v5[0] = v11;
  v5[1] = v12;
  v6[0] = v13[0];
  *(v6 + 15) = *(v13 + 15);
  sub_1AC4B3364(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8D1C(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x46uLL);
    sub_1AC4575D8(v8, &qword_1EB5589A8, &qword_1AC520E10);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x46uLL);
  v3 = static Google_Protobuf_MessageOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x46uLL);
  sub_1AC4AEEA8(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8E18(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x46uLL);
    sub_1AC4575D8(v8, &qword_1EB5580B8, &qword_1AC5203C0);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x46uLL);
  v3 = static Google_Protobuf_MethodOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x46uLL);
  sub_1AC4B3430(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E8F14(uint64_t a1)
{
  v2 = v1[1];
  v14[0] = *v1;
  v14[1] = v2;
  v15[0] = v1[2];
  *(v15 + 14) = *(v1 + 46);
  sub_1AC47782C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0u;
    memset(v9, 0, 30);
    v7 = 0u;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_5:
    v11 = v7;
    v12 = v8;
    v13[0] = v9[0];
    *(v13 + 14) = *(v9 + 14);
    sub_1AC4575D8(&v11, &qword_1EB5580C0, &unk_1AC520E20);
    v3 = 0;
    return v3 & 1;
  }

  v11 = v7;
  v12 = v8;
  v13[0] = v9[0];
  *(v13 + 14) = *(v9 + 14);
  v3 = static Google_Protobuf_OneofOptions.== infix(_:_:)(v14, &v11);
  v5[0] = v11;
  v5[1] = v12;
  v6[0] = v13[0];
  *(v6 + 14) = *(v13 + 14);
  sub_1AC4B3264(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E9034(uint64_t a1)
{
  v2 = v1[1];
  v21 = *v1;
  v22[0] = v2;
  *(v22 + 9) = *(v1 + 25);
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v3 = v12;
  v5 = *(&v10 + 1);
  v4 = v10;
  v6 = v11;
  if (v13 == 1)
  {
LABEL_5:
    sub_1AC4B39AC(v4, v5, v6, v3, 1);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)();
  v8 = v7;
  sub_1AC4513F8(v16, *(&v16 + 1));

  return v8 & 1;
}

uint64_t sub_1AC4E9134(uint64_t a1)
{
  v2 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v2;
  v19 = *(v1 + 32);
  sub_1AC47782C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = *(&v9 + 1);
  v4 = v9;
  v6 = v10;
  if (v12 == 1)
  {
LABEL_5:
    sub_1AC4B39AC(v4, v5, v6, v3, 1);
    v7 = 0;
    return v7 & 1;
  }

  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v7 = static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(v18, &v14);
  sub_1AC4513F8(v14, *(&v14 + 1));

  return v7 & 1;
}

uint64_t sub_1AC4E921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1AC47782C(a1, v28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v9, v10, v11, v12, v13, v14, v15, v16, v23);
  if (!OUTLINED_FUNCTION_23_9())
  {
    v17 = 0;
    goto LABEL_10;
  }

  v17 = v24;
  if (!v25)
  {
LABEL_10:
    v20 = v17;
    v21 = 0;
LABEL_11:
    sub_1AC4ED894(v20, v21);
    v19 = 0;
    return v19 & 1;
  }

  v18 = v24 == a2 && v25 == a3;
  if (!v18 && (sub_1AC51F3D8() & 1) == 0)
  {
    v20 = v24;
    v21 = v25;
    goto LABEL_11;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(v26, v27);
  v19 = MEMORY[0x1AC5B4070](a4, a5);
  sub_1AC4513F8(v26, v27);
  sub_1AC4513F8(a4, a5);
  sub_1AC4ED894(v24, v25);
  return v19 & 1;
}

uint64_t sub_1AC4E9364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, _OWORD *))
{
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  sub_1AC47782C(a1, v22);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v8, v9, v10, v11, v12, v13, v14, v15, v20);
  if (!OUTLINED_FUNCTION_23_9())
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_5;
  }

  v17 = *(&v20 + 1);
  v16 = v20;
  if (!v21)
  {
LABEL_5:
    sub_1AC4B3218(v16, v17, 0);
    v18 = 0;
    return v18 & 1;
  }

  v23[0] = v20;
  v23[1] = v21;
  v18 = a7(v24, v23);
  sub_1AC4513F8(*&v23[0], *(&v23[0] + 1));

  return v18 & 1;
}

uint64_t sub_1AC4E9434(uint64_t a1)
{
  memcpy(__dst, v1, 0x46uLL);
  sub_1AC47782C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    memset(__src, 0, 70);
    goto LABEL_5;
  }

  if (!*&__src[0])
  {
LABEL_5:
    memcpy(v8, __src, 0x46uLL);
    sub_1AC4575D8(v8, &qword_1EB5589B8, "R6");
    v3 = 0;
    return v3 & 1;
  }

  memcpy(v8, __src, 0x46uLL);
  v3 = static Google_Protobuf_EnumOptions.== infix(_:_:)(__dst, v8);
  memcpy(v5, v8, 0x46uLL);
  sub_1AC4B32CC(v5);
  return v3 & 1;
}

uint64_t sub_1AC4E9530(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0xF000000000000000;
LABEL_6:
    sub_1AC470B50(v9, v8, v7);
    v10 = 0;
    return v10 & 1;
  }

  v8 = v13;
  v7 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC470B6C(v12, v13, v14);
  v10 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC470B50(v12, v13, v14);
  sub_1AC4513F8(a2, a3);
  sub_1AC470B50(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4E9664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t, uint64_t, unint64_t))
{
  sub_1AC47782C(a1, v35);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v10, v11, v12, v13, v14, v15, v16, v17, v31);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0xF000000000000000;
LABEL_6:
    a7(v20, v19, v18);
    v25 = 0;
    return v25 & 1;
  }

  v19 = v33;
  v18 = v34;
  v20 = v32;
  if (v34 >> 60 == 15 || v32 != a2)
  {
    goto LABEL_6;
  }

  v21 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v21, v22);
  v23 = OUTLINED_FUNCTION_35_1();
  a6(v23);
  v24 = OUTLINED_FUNCTION_121();
  v25 = MEMORY[0x1AC5B4070](v24);
  v26 = OUTLINED_FUNCTION_35_1();
  (a7)(v26);
  v27 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v27, v28);
  v29 = OUTLINED_FUNCTION_35_1();
  (a7)(v29);
  return v25 & 1;
}

uint64_t sub_1AC4E9780(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  sub_1AC47782C(a1, v29);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_17_11(v12, v13, v14, v15, v16, v17, v18, v19, v26);
  if (swift_dynamicCast() && v28 >> 60 != 15 && v27 == a2)
  {
    sub_1AC4578F4(a3, a4);
    v20 = OUTLINED_FUNCTION_14_11();
    a6(v20);
    v21 = MEMORY[0x1AC5B4070](a3, a4);
    v22 = OUTLINED_FUNCTION_14_11();
    a7(v22);
    sub_1AC4513F8(a3, a4);
    v23 = OUTLINED_FUNCTION_14_11();
    a7(v23);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_14_11();
    a7(v24);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1AC4E98A4(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v9 = 0;
    v7 = 0xF000000000000000;
LABEL_6:
    sub_1AC470B50(v9, v8, v7);
    v10 = 0;
    return v10 & 1;
  }

  v8 = v13;
  v7 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a2, a3);
  sub_1AC470B6C(v12, v13, v14);
  v10 = MEMORY[0x1AC5B4070](a2, a3);
  sub_1AC470B50(v12, v13, v14);
  sub_1AC4513F8(a2, a3);
  sub_1AC470B50(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4E99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v15 = a5;
  v16 = WORD2(a5);
  sub_1AC47782C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v5 = 0;
    v10 = 0uLL;
    memset(v11, 0, 14);
LABEL_6:
    sub_1AC485714(v5, v7, 0);
    v6 = 0;
    return v6 & 1;
  }

  v5 = v10;
  if (!v11[0])
  {
    v7 = *(&v10 + 1);
    goto LABEL_6;
  }

  *v13 = v10;
  *&v13[16] = v11[0];
  *&v13[28] = WORD2(v11[1]);
  *&v13[24] = v11[1];
  v6 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v14, v13);
  v9[0] = *v13;
  *(v9 + 14) = *&v13[14];
  sub_1AC4AEF78(v9);
  return v6 & 1;
}

uint64_t sub_1AC4E9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0xF000000000000000;
LABEL_6:
    sub_1AC4ED6C8(v9, v10, v12, v11);
    v13 = 0;
    return v13 & 1;
  }

  v10 = v16;
  v9 = v15;
  v12 = v17;
  v11 = v18;
  if (v16 >> 60 == 15 || (MEMORY[0x1AC5B4070](a2, a3) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(v17, v18);
  v13 = MEMORY[0x1AC5B4070](a4, a5);
  sub_1AC4513F8(v17, v18);
  sub_1AC4513F8(a4, a5);
  sub_1AC4ED6C8(v15, v16, v17, v18);
  return v13 & 1;
}

uint64_t sub_1AC4E9C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  sub_1AC47782C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (OUTLINED_FUNCTION_23_9() && v18 >> 60 != 15 && v16 == a2 && v17 == a3)
  {
    sub_1AC4578F4(a4, a5);
    OUTLINED_FUNCTION_15_10();
    a8();
    v14 = MEMORY[0x1AC5B4070](a4, a5);
    OUTLINED_FUNCTION_15_10();
    a7();
    sub_1AC4513F8(a4, a5);
    OUTLINED_FUNCTION_15_10();
    a7();
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    a7();
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1AC4E9D74(uint64_t a1)
{
  v2 = v1[1];
  v16[0] = *v1;
  v16[1] = v2;
  v16[2] = v1[2];
  sub_1AC47782C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (!swift_dynamicCast())
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v7;
  if (!*(&v7 + 1))
  {
LABEL_5:
    sub_1AC4EDA58(v3, 0);
    v4 = 0;
    return v4 & 1;
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v4 = static Google_Protobuf_EnumValue.== infix(_:_:)(v16);
  v5 = v15;

  sub_1AC4513F8(v5, *(&v5 + 1));
  return v4 & 1;
}

uint64_t sub_1AC4E9E74(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_1AC47782C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    if ((v12 & 1) == (a2 & 1))
    {
      sub_1AC4578F4(a3, a4);
      sub_1AC4ED734(v12, v13, v14);
      v10 = MEMORY[0x1AC5B4070](a3, a4);
      sub_1AC4ED718(v12, v13, v14);
      sub_1AC4513F8(a3, a4);
      sub_1AC4ED718(v12, v13, v14);
      return v10 & 1;
    }

    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  else
  {
    v7 = 2;
    v8 = 0;
    v9 = 0;
  }

  sub_1AC4ED718(v7, v8, v9);
  v10 = 0;
  return v10 & 1;
}

uint64_t _MessageImplementationBase.isEqualTo(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC51F228();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20[-v10 - 8];
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AC47782C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a2);
    (*(v12 + 32))(v15, v11, a2);
    v16 = *(*(a3 + 16) + 8);
    v17 = sub_1AC51EDE8();
    (*(v12 + 8))(v15, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, a2);
    (*(v7 + 8))(v11, v6);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1AC4EA1CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 != a3 && (sub_1AC472EE4(a3) & 1) == 0)
  {
    return 0;
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a4, a5, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a4, a5);
  return v10 & 1;
}

uint64_t sub_1AC4EA274(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Api.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EA2C8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Method.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EA314(_OWORD *a1)
{
  v2 = a1[1];
  v5[3] = *a1;
  v5[4] = v2;
  v5[5] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_Mixin.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EA360(void *__src)
{
  memcpy(__dst, __src, 0xB1uLL);
  memcpy(v3, v1, 0xB1uLL);
  return static Google_Protobuf_FileDescriptorProto.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA3B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 != a3)
  {

    sub_1AC4A718C();
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1AC4578F4(a4, a5);
  sub_1AC4578F4(a1, a2);
  v12 = MEMORY[0x1AC5B4070](a4, a5, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a4, a5);
  return v12 & 1;
}

uint64_t sub_1AC4EA490(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA4DC(void *__src)
{
  memcpy(__dst, __src, 0x47uLL);
  memcpy(v3, v1, 0x47uLL);
  return static Google_Protobuf_ExtensionRangeOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA528(__int128 *a1)
{
  v7 = *a1;
  v8 = a1[1];
  *v9 = a1[2];
  *&v9[10] = *(a1 + 42);
  v4 = *v1;
  v5 = v1[1];
  *v6 = v1[2];
  *&v6[10] = *(v1 + 42);
  static Google_Protobuf_ExtensionRangeOptions.Declaration.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA584(void *__src)
{
  memcpy(__dst, __src, 0x91uLL);
  memcpy(v3, v1, 0x91uLL);
  return static Google_Protobuf_FieldDescriptorProto.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA5D8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA624(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_EnumDescriptorProto.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, void *))
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  v15 = BYTE4(a4);
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v12 = BYTE4(a8);
  v11 = a8;
  return a9(v10, v13) & 1;
}

uint64_t sub_1AC4EA6D4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_EnumValueDescriptorProto.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA728(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_ServiceDescriptorProto.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA774(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_MethodDescriptorProto.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA7C8(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  memcpy(v3, v1, 0x46uLL);
  return static Google_Protobuf_MessageOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  return a9(v10, v11) & 1;
}

uint64_t sub_1AC4EA858(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EA8A4(__int128 *a1)
{
  v6 = *a1;
  *v7 = a1[1];
  *&v7[9] = *(a1 + 25);
  v4 = *v1;
  *v5 = v1[1];
  *&v5[9] = *(v1 + 25);
  static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EA8F0(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 14) = *(a1 + 46);
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v6[0] = v1[2];
  *(v6 + 14) = *(v1 + 46);
  return static Google_Protobuf_OneofOptions.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EA94C(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  memcpy(v3, v1, 0x46uLL);
  return static Google_Protobuf_EnumOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA998(void *__src)
{
  memcpy(__dst, __src, 0x71uLL);
  memcpy(v3, v1, 0x71uLL);
  return static Google_Protobuf_EnumValueOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EA9EC(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 15) = *(a1 + 47);
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v6[0] = v1[2];
  *(v6 + 15) = *(v1 + 47);
  return static Google_Protobuf_ServiceOptions.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EAA48(void *__src)
{
  memcpy(__dst, __src, 0x46uLL);
  memcpy(v3, v1, 0x46uLL);
  return static Google_Protobuf_MethodOptions.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAA94(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_UninterpretedOption.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(v5, v7) & 1;
}

uint64_t sub_1AC4EAB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  v14 = WORD2(a4);
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v11 = WORD2(a8);
  v10 = a8;
  return static Google_Protobuf_FeatureSet.== infix(_:_:)(v9, v12) & 1;
}

uint64_t sub_1AC4EABCC(void *__src)
{
  memcpy(__dst, __src, 0x56uLL);
  memcpy(v3, v1, 0x56uLL);
  return static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EAC18(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v1, sizeof(v4));
  static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EAC64(__int128 *a1)
{
  v7 = *a1;
  v8 = a1[1];
  *v9 = a1[2];
  *&v9[14] = *(a1 + 46);
  v4 = *v1;
  v5 = v1[1];
  *v6 = v1[2];
  *&v6[14] = *(v1 + 46);
  static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)();
  return v2 & 1;
}

uint64_t sub_1AC4EACC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v8 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v8 & 1;
}

uint64_t sub_1AC4EAD48(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  sub_1AC4578F4(a5, a6);
  sub_1AC4578F4(a2, a3);
  v11 = MEMORY[0x1AC5B4070](a5, a6, a2, a3);
  sub_1AC4513F8(a2, a3);
  sub_1AC4513F8(a5, a6);
  return v11 & 1;
}

uint64_t sub_1AC4EADE0(_OWORD *a1)
{
  v2 = a1[1];
  v5[3] = *a1;
  v5[4] = v2;
  v5[5] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_EnumValue.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EAE2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a5 != a1 || a6 != a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_8();
  sub_1AC4578F4(v8, v9);
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v10, v11);
  OUTLINED_FUNCTION_7_15();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v14, v15);
  v16 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v16, v17);
  return v13 & 1;
}

uint64_t sub_1AC4EAEA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((MEMORY[0x1AC5B4070](a5, a6, a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_1AC4578F4(a7, a8);
  sub_1AC4578F4(a3, a4);
  v12 = MEMORY[0x1AC5B4070](a7, a8, a3, a4);
  sub_1AC4513F8(a3, a4);
  sub_1AC4513F8(a7, a8);
  return v12 & 1;
}

uint64_t sub_1AC4EAF48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, float a5, float a6)
{
  if (a6 != a5)
  {
    return 0;
  }

  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v10 & 1;
}

uint64_t sub_1AC4EAFE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  if (a6 != a5)
  {
    return 0;
  }

  sub_1AC4578F4(a3, a4);
  sub_1AC4578F4(a1, a2);
  v10 = MEMORY[0x1AC5B4070](a3, a4, a1, a2);
  sub_1AC4513F8(a1, a2);
  sub_1AC4513F8(a3, a4);
  return v10 & 1;
}

uint64_t sub_1AC4EB078(int a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_11();
  sub_1AC4578F4(v4, v5);
  v6 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v6, v7);
  OUTLINED_FUNCTION_7_15();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v10, v11);
  v12 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v12, v13);
  return v9 & 1;
}

uint64_t sub_1AC4EB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_11();
  sub_1AC4578F4(v4, v5);
  v6 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v6, v7);
  OUTLINED_FUNCTION_7_15();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v10, v11);
  v12 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v12, v13);
  return v9 & 1;
}

uint64_t sub_1AC4EB158()
{
  OUTLINED_FUNCTION_24_8();
  v4 = v3 == v2 && v1 == v0;
  if (!v4 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v5, v6);
  v7 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v7, v8);
  OUTLINED_FUNCTION_7_15();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v11, v12);
  v13 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v13, v14);
  return v10 & 1;
}

uint64_t sub_1AC4EB1E4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Enum.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EB230(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Type.== infix(_:_:)(v3) & 1;
}

uint64_t sub_1AC4EB284(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v3, v1, sizeof(v3));
  return static Google_Protobuf_Field.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1AC4EB2D8(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return static Google_Protobuf_Value.== infix(_:_:)(v5, v6) & 1;
}

uint64_t sub_1AC4EB324(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  v9 = a1[2];
  v10 = *(a1 + 6);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  return static Google_Protobuf_Option.== infix(_:_:)(v5) & 1;
}

uint64_t sub_1AC4EB380()
{
  OUTLINED_FUNCTION_13_11();
  if ((v2(v1, v0) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v3, v4);
  v5 = OUTLINED_FUNCTION_121();
  sub_1AC4578F4(v5, v6);
  OUTLINED_FUNCTION_7_15();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v9, v10);
  v11 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v11, v12);
  return v8 & 1;
}

void *sub_1AC4EB438()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481A1C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB470()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E73D8(v2) & 1;
}

uint64_t sub_1AC4EB4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EA274(v26) & 1;
}

void *sub_1AC4EB4EC()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x68uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481800(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB524()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x68uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E6C90(v2) & 1;
}

uint64_t sub_1AC4EB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x68uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA2C8(v12) & 1;
}

void *sub_1AC4EB6C0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0xB1uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482838(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB6F8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0xB1uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7FC8(v2) & 1;
}

uint64_t sub_1AC4EB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0xB1uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA360(v12) & 1;
}

void *sub_1AC4EB7C8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482B74(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB800()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E88D8(v2) & 1;
}

uint64_t sub_1AC4EB83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x67uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA490(v12) & 1;
}

void *sub_1AC4EB8F0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x47uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4823D8(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EB928()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x47uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7974(v2) & 1;
}

uint64_t sub_1AC4EB964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x47uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x47uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA4DC(v28) & 1;
}

void *sub_1AC4EB9AC()
{
  OUTLINED_FUNCTION_0_26();
  v10 = *(v0 + 42);
  return sub_1AC482420(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC4EB9E4()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 42);
  return sub_1AC4E7A70(v1) & 1;
}

uint64_t sub_1AC4EBA20(__int128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  v14 = *(v2 + 42);
  OUTLINED_FUNCTION_5_17();
  v15 = *(v1 + 42);
  v11 = OUTLINED_FUNCTION_20_9(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  return sub_1AC4EA528(v11) & 1;
}

void *sub_1AC4EBA68()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x91uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC48270C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBAA0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x91uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7CA8(v2) & 1;
}

uint64_t sub_1AC4EBADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x91uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA584(v12) & 1;
}

void *sub_1AC4EBB2C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x5EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC482468(v2);
}

uint64_t sub_1AC4EBB64()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x5EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E7B9C(v2) & 1;
}

uint64_t sub_1AC4EBBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x5EuLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA5D8(v12) & 1;
}

void *sub_1AC4EBBF0()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x7EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC482984(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBC28()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x7EuLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E80F8(v2) & 1;
}

uint64_t sub_1AC4EBC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x7EuLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA624(v12) & 1;
}

void *sub_1AC4EBE0C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x99uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC481A34(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBE44()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x99uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E7610(v2) & 1;
}

uint64_t sub_1AC4EBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x99uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA6D4(v12) & 1;
}

void *sub_1AC4EBED0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481C98(v2);
}

uint64_t sub_1AC4EBF08()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x67uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7740(v2) & 1;
}

uint64_t sub_1AC4EBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x67uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA728(v12) & 1;
}

void *sub_1AC4EBF94()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x88uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482378(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EBFCC()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x88uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7844(v2) & 1;
}

uint64_t sub_1AC4EC008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x88uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EA774(v12) & 1;
}

void *sub_1AC4EC0B0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482B0C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC0E8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8D1C(v2) & 1;
}

uint64_t sub_1AC4EC124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA7C8(v28) & 1;
}

uint64_t sub_1AC4EC204()
{
  OUTLINED_FUNCTION_8_16();
  v7 = *(v0 + 32);
  return sub_1AC48276C(v1, v2, v3, v4, v5);
}

uint64_t sub_1AC4EC23C()
{
  OUTLINED_FUNCTION_8_16();
  v3 = *(v0 + 32);
  return sub_1AC4E9134(v1) & 1;
}

uint64_t sub_1AC4EC278(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 4);
  return sub_1AC4EA858(v5) & 1;
}

void *sub_1AC4EC2CC()
{
  OUTLINED_FUNCTION_8_16();
  v10 = *(v0 + 25);
  return sub_1AC481BEC(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC4EC304()
{
  OUTLINED_FUNCTION_8_16();
  v3 = *(v0 + 25);
  return sub_1AC4E9034(v1) & 1;
}

uint64_t sub_1AC4EC340(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return sub_1AC4EA8A4(&v5) & 1;
}

void *sub_1AC4EC394()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 46);
  return sub_1AC4825D4(v1);
}

uint64_t sub_1AC4EC3CC()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 46);
  return sub_1AC4E8F14(v1) & 1;
}

uint64_t sub_1AC4EC408(__int128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  v14 = *(v2 + 46);
  OUTLINED_FUNCTION_5_17();
  v15 = *(v1 + 46);
  v11 = OUTLINED_FUNCTION_20_9(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  return sub_1AC4EA8F0(v11) & 1;
}

void *sub_1AC4EC450()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4829CC(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC488()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E9434(v2) & 1;
}

uint64_t sub_1AC4EC4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EA94C(v28) & 1;
}

void *sub_1AC4EC50C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x71uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481A7C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC544()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x71uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8670(v2) & 1;
}

uint64_t sub_1AC4EC580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  memcpy(v9, v10, 0x71uLL);
  v11 = memcpy(__dst, v8, sizeof(__dst));
  v19 = OUTLINED_FUNCTION_25_4(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  return sub_1AC4EA998(v19) & 1;
}

void *sub_1AC4EC5CC()
{
  OUTLINED_FUNCTION_0_26();
  v10 = *(v0 + 47);
  return sub_1AC482330(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC4EC604()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 47);
  return sub_1AC4E8BFC(v1) & 1;
}

uint64_t sub_1AC4EC640(__int128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  v14 = *(v2 + 47);
  OUTLINED_FUNCTION_5_17();
  v15 = *(v1 + 47);
  v11 = OUTLINED_FUNCTION_20_9(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  return sub_1AC4EA9EC(v11) & 1;
}

void *sub_1AC4EC688()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4823C0(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC6C0()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x46uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8E18(v2) & 1;
}

uint64_t sub_1AC4EC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x46uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x46uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EAA48(v28) & 1;
}

void *sub_1AC4EC744()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC481AC4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC77C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E7DD8(v2) & 1;
}

uint64_t sub_1AC4EC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EAA94(v26) & 1;
}

uint64_t sub_1AC4EC7F8()
{
  OUTLINED_FUNCTION_8_16();
  v7 = *(v0 + 32);
  return sub_1AC481B2C(v1, v2, v3, v4, v5);
}

uint64_t sub_1AC4EC830()
{
  OUTLINED_FUNCTION_8_16();
  v3 = *(v0 + 32);
  return sub_1AC4E7EE0(v1) & 1;
}

uint64_t sub_1AC4EC86C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = *(v1 + 32);
  return sub_1AC4EAAE8(v5) & 1;
}

uint64_t sub_1AC4EC930(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = *(a1 + 12);
  v9 = *(v1 + 12);
  return sub_1AC4EAB88();
}

void *sub_1AC4EC950()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x56uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482C1C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4EC988()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x56uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8314(v2) & 1;
}

uint64_t sub_1AC4EC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x56uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EABCC(v12) & 1;
}

void *sub_1AC4ECA6C()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x48uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC482898(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ECAA4()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x48uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E8B00(v2) & 1;
}

uint64_t sub_1AC4ECAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v10 = memcpy(v8, v9, 0x48uLL);
  v18 = OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = memcpy(v18, v19, 0x48uLL);
  v28 = OUTLINED_FUNCTION_21_7(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  return sub_1AC4EAC18(v28) & 1;
}

void *sub_1AC4ECB80()
{
  OUTLINED_FUNCTION_0_26();
  v10 = *(v0 + 46);
  return sub_1AC482D3C(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC4ECBB8()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 46);
  return sub_1AC4E8530(v1) & 1;
}

uint64_t sub_1AC4ECBF4(__int128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  v14 = *(v2 + 46);
  OUTLINED_FUNCTION_5_17();
  v15 = *(v1 + 46);
  v11 = OUTLINED_FUNCTION_20_9(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  return sub_1AC4EAC64(v11) & 1;
}

uint64_t sub_1AC4ECE64(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  return sub_1AC4EB158() & 1;
}

uint64_t sub_1AC4ED048(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1AC4EAE2C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *v1, *(v1 + 8)) & 1;
}

void *sub_1AC4ED080()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC48193C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED0B8()
{
  OUTLINED_FUNCTION_1_23();
  memcpy(v0, v1, 0x78uLL);
  v2 = OUTLINED_FUNCTION_6_16();
  return sub_1AC4E71D0(v2) & 1;
}

uint64_t sub_1AC4ED0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v10 = memcpy(v8, v9, 0x78uLL);
  v18 = OUTLINED_FUNCTION_22_9(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v26 = OUTLINED_FUNCTION_25_4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  return sub_1AC4EB230(v26) & 1;
}

void *sub_1AC4ED134()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x80uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC481860(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED16C()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x80uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E6FB0(v2) & 1;
}

uint64_t sub_1AC4ED1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x80uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EB284(v12) & 1;
}

void *sub_1AC4ED1F8()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x70uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC48196C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC4ED230()
{
  OUTLINED_FUNCTION_2_18();
  memcpy(v0, v1, 0x70uLL);
  v2 = OUTLINED_FUNCTION_12_14();
  return sub_1AC4E72D8(v2) & 1;
}

uint64_t sub_1AC4ED26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_15(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  memcpy(v9, v10, 0x70uLL);
  memcpy(__dst, v8, sizeof(__dst));
  return sub_1AC4EB1E4(v12) & 1;
}

void *sub_1AC4ED350()
{
  OUTLINED_FUNCTION_0_26();
  v10 = *(v0 + 48);
  return sub_1AC4817B8(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC4ED388()
{
  OUTLINED_FUNCTION_0_26();
  v3 = *(v0 + 48);
  return sub_1AC4E6B64(v1) & 1;
}

uint64_t sub_1AC4ED3C4(__int128 *a1)
{
  OUTLINED_FUNCTION_4_14(a1);
  v14 = *(v2 + 48);
  OUTLINED_FUNCTION_5_17();
  v15 = *(v1 + 48);
  v11 = OUTLINED_FUNCTION_20_9(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  return sub_1AC4EB324(v11) & 1;
}

void *sub_1AC4ED40C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1AC482F98();
}

void *sub_1AC4ED43C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return sub_1AC483190();
}

uint64_t sub_1AC4ED600(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return sub_1AC4EB078(*a1, *(a1 + 8), *(a1 + 16), *v1) & 1;
}

void *sub_1AC4ED630()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return sub_1AC483458();
}

uint64_t sub_1AC4ED6C8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1AC4513F8(result, a2);

    return sub_1AC4513F8(a3, a4);
  }

  return result;
}

uint64_t sub_1AC4ED718(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_1AC4513F8(a2, a3);
  }

  return result;
}

uint64_t sub_1AC4ED734(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_1AC4578F4(a2, a3);
  }

  return result;
}

uint64_t sub_1AC4ED750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_1AC4513F8(a3, a4);
    return sub_1AC48532C(a5, a6, a7);
  }

  return result;
}

double sub_1AC4ED810(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AC4ED828(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AC4ED894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v2, v3);
  }
}

uint64_t sub_1AC4ED8DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    sub_1AC4513F8(a2, a3);
  }

  return result;
}

uint64_t sub_1AC4ED938(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

double sub_1AC4ED97C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

double sub_1AC4ED9A0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  return result;
}

double sub_1AC4ED9C8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 110) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1AC4ED9E4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1AC4EDA14(uint64_t result)
{
  if (result)
  {

    v1 = OUTLINED_FUNCTION_76();

    return sub_1AC4513F8(v1, v2);
  }

  return result;
}

void sub_1AC4EDA58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_76();

    sub_1AC4513F8(v2, v3);
  }
}

uint64_t Message.init(unpackingAny:extensions:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[1];
  v16 = *a1;
  v11 = a1[2];
  v12 = *a3;
  v13 = *(a3 + 8);
  (*(a5 + 16))(a6, a4, a5);
  v17 = v12;
  v18 = v13;
  v14 = v19;
  sub_1AC474864(a6, a2, &v17, a4, a5);
  sub_1AC4513F8(v16, v10);

  result = sub_1AC455360(a2);
  if (v14)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}

uint64_t Message.merge(serializedData:extensions:partial:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  v12[0] = a1;
  v12[1] = a2;
  v10 = v7;
  v11 = v8;
  return Message.merge<A>(serializedBytes:extensions:partial:options:)(v12, a3, a4, &v10, a6, MEMORY[0x1E6969080], a7, &protocol witness table for Data);
}

uint64_t Message.serializedData(partial:options:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  result = Message.serializedBytes<A>(partial:options:)(a1, &v6, a3, MEMORY[0x1E6969080], a4, &protocol witness table for Data);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t static Message.isPathValid(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v13, v12);
  LOBYTE(a4) = sub_1AC4EDE4C(a1, a2, a3, a4);
  (*(v8 + 8))(v11, a3);
  return a4 & 1;
}

uint64_t sub_1AC4EDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  sub_1AC4F0AE8(a1, a2, v6, &v5, a3, a4);
  sub_1AC4575D8(v6, qword_1EB559198, &unk_1AC5295F0);
  return 1;
}

uint64_t Message.merge(from:fieldMask:mergeOption:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *a3;
  v25[0] = sub_1AC4F2FB4(0);
  v25[1] = v10;
  v26 = v11;
  v12 = *(a5 + 72);
  v13 = type metadata accessor for PathVisitor();
  v12(v25, v13, &off_1F2129B70, a4, a5);
  if (v5)
  {
  }

  else
  {
    v14 = v26;

    v15 = *(v8 + 16);
    if (v15)
    {
      v27 = v9;
      v16 = (v8 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        if (*(v14 + 16))
        {
          v19 = *v16;

          v20 = sub_1AC4EFE58(v17, v18);
          if (v21)
          {
            sub_1AC4EE7B8(*(v14 + 56) + 32 * v20, &v23);
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
          }
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v28 = v27;
        sub_1AC4F0AE8(v17, v18, &v23, &v28, a4, a5);
        sub_1AC4575D8(&v23, qword_1EB559198, &unk_1AC5295F0);

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t Message<>.trim(keeping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27[0] = a5;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  v29 = *v14;
  v30 = v18;
  v31 = v19;
  if ((Google_Protobuf_FieldMask.isValid<A>(for:)(v20, v20, v21, v22) & 1) != 0 && *(v17 + 16))
  {
    (*(v9 + 16))(v13, v5, a2);
    sub_1AC4EE35C(v13, a2, a3, v16);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v28 = 0;
    Message.merge(from:fieldMask:mergeOption:)(v5, &v29, &v28, a2, a3);
    v24 = *(v9 + 32);
    v24(v13, v5, a2);
    v25 = sub_1AC51EDE8();
    (*(v9 + 8))(v13, a2);
    v26 = v25 ^ 1;
    v24(v6, v16, a2);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1AC4EE35C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a4;
  v36 = a1;
  v6 = sub_1AC51F228();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v33 - v9;
  v10 = *(a2 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  (*(a3 + 16))(a2, a3);
  v22 = v10[2];
  v22(v19, v21, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1AC4575D8(&v39, &qword_1EB5597A0, &qword_1AC528E18);
    v23 = v36;
LABEL_7:
    v22(v35, v21, a2);
    goto LABEL_10;
  }

  sub_1AC458DF0(&v39, &v42);
  v23 = v36;
  v22(v16, v36, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1AC4575D8(v37, &qword_1EB5597A0, &qword_1AC528E18);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_7;
  }

  sub_1AC458DF0(v37, &v39);
  v24 = *(&v40 + 1);
  v25 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  (*(v25 + 16))(v37, v24, v25);
  v26 = v43;
  v27 = v44;
  __swift_mutable_project_boxed_opaque_existential_1(&v42, v43);
  (*(v27 + 24))(v37, v26, v27);
  sub_1AC47782C(&v42, v37);
  v28 = v33;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v28, 0, 1, a2);
    v29 = v10[4];
    v30 = v34;
    v29(v34, v28, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, a2);
    v30 = v34;
    v22(v34, v21, a2);
    v29 = v10[4];
  }

  v29(v35, v30, a2);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v23 = v36;
LABEL_10:
  (*(a3 + 40))(&v42, a2, a3);
  v39 = v42;
  (*(a3 + 48))(&v39, a2, a3);
  v31 = v10[1];
  v31(v23, a2);
  return (v31)(v21, a2);
}

uint64_t sub_1AC4EE7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_BYTE *_s12MergeOptionsVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void Message.init<A>(jsonUTF8Bytes:options:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v12 = *v11;
  v13 = *(v11 + 8);
  (*(v5 + 16))(v10 - v9, v3, v14);
  Message.init<A>(jsonUTF8Bytes:extensions:options:)();
  (*(v5 + 8))(v3, v1);
  OUTLINED_FUNCTION_61();
}

unint64_t sub_1AC4EEA20()
{
  result = qword_1EB559838[0];
  if (!qword_1EB559838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB559838);
  }

  return result;
}

uint64_t Message.init(jsonUTF8Data:extensions:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v11 = a1;
  v12 = a2;
  sub_1AC450324(a3, v10);
  sub_1AC4578F4(a1, a2);
  Message.init<A>(jsonUTF8Bytes:extensions:options:)();
  sub_1AC455360(a3);
  return sub_1AC4513F8(a1, a2);
}

void *static Message.array(fromJSONString:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v12[4] = &protocol witness table for SimpleExtensionMap;
  OUTLINED_FUNCTION_4_16();
  v9 = static Message.array(fromJSONString:extensions:options:)(v5, v6, v12, v11, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

void *static Message.array(fromJSONString:extensions:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a3;
  v11 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_8();
  v19 = v18 - v17;
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 && (v27 = a5, a5 = *a4, v21 = *(a4 + 8), sub_1AC51EE18(), v22 = sub_1AC51EDF8(), v24 = v23, (*(v13 + 8))(v19, v11), v24 >> 60 != 15))
  {
    v30[0] = v22;
    v30[1] = v24;
    v28 = a5;
    v29 = v21;
    a5 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v30, v31, &v28, v27, MEMORY[0x1E6969080], a6, &protocol witness table for Data);
    sub_1AC45AC74(v22, v24);
  }

  else
  {
    sub_1AC477660();
    swift_allocError();
    *v25 = xmmword_1AC51FB60;
    swift_willThrow();
  }

  return a5;
}

void *static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v10;
  v16 = v11;
  v17 = a2;
  v12 = *(a7 + 32);
  v13 = sub_1AC51F108();
  result = v12(&v18, sub_1AC4EF140, v15, v13, a5, a7);
  if (!v7)
  {
    return v18;
  }

  return result;
}

void *static Message.array<A>(fromJSONUTF8Bytes:options:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v12[4] = &protocol witness table for SimpleExtensionMap;
  OUTLINED_FUNCTION_4_16();
  v9 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v4, v12, &v11, v5, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

void sub_1AC4EEEB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v17 = sub_1AC51ED48();
  v46 = v17;
  if (!a1 || a2 - a1 < 1)
  {
    goto LABEL_27;
  }

  v47 = a8;
  sub_1AC47782C(a5, v41);
  sub_1AC450324(v41, &v39);
  type metadata accessor for DoubleParser();
  v18 = swift_allocObject();
  *(v18 + 16) = swift_slowAlloc();
  *(v18 + 24) = 128;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = 0;
  __src[3] = v18;
  __src[11] = a3;
  __src[4] = a3;
  LOBYTE(__src[5]) = a4 & 1;
  if (v40)
  {
    sub_1AC455360(v41);
    sub_1AC465B44(&v39, &v34);
  }

  else
  {
    v37 = &protocol witness table for SimpleExtensionMap;
    v36 = &type metadata for SimpleExtensionMap;
    *&v34 = MEMORY[0x1E69E7CC8];
    sub_1AC455360(v41);
    if (v40)
    {
      sub_1AC455360(&v39);
    }
  }

  sub_1AC465B44(&v34, &__src[6]);
  memcpy(__dst, __src, 0x60uLL);
  __dst[13] = a7;
  __dst[14] = 0;
  v43 = 0;
  v44 = 0u;
  v45 = 0u;
  __dst[12] = a6;
  sub_1AC45E30C(&v46, a6, a7, v19, v20, v21, v22, v23, v33, v34, *(&v34 + 1), v35, v36, v37, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
  a8 = v47;
  if (v8)
  {
    sub_1AC45AA7C(__dst);

    return;
  }

  v24 = __dst[1] - __dst[0];
  v25 = __dst[2];
  if (__dst[0])
  {
    v26 = __dst[1] - __dst[0];
  }

  else
  {
    v26 = 0;
  }

  v27 = __dst[2];
  if (!__dst[0])
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v24 == v27)
  {
LABEL_26:
    sub_1AC45AA7C(__dst);
    v17 = v46;
LABEL_27:
    *a8 = v17;
    return;
  }

  while (1)
  {
    v28 = *(__dst[0] + v27);
    v29 = v28 > 0x20;
    v30 = (1 << v28) & 0x100002600;
    if (v29 || v30 == 0)
    {
      break;
    }

    if (v25 < 0 || v27 >= v26)
    {
      __break(1u);
      return;
    }

    __dst[2] = ++v27;
    if (__dst[0])
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v27)
    {
      goto LABEL_26;
    }
  }

  if (__dst[0])
  {
    if (v24 == v27)
    {
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_26;
  }

  sub_1AC477660();
  swift_allocError();
  *v32 = xmmword_1AC529040;
  swift_willThrow();
  sub_1AC45AA7C(__dst);
}

void sub_1AC4EF140(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  sub_1AC4EEEB4(a1, a2, *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 16), *(v3 + 32), a3);
}

void *static Message.array(fromJSONUTF8Data:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v12[0] = a1;
  v12[1] = a2;
  v11[4] = &protocol witness table for SimpleExtensionMap;
  v11[3] = &type metadata for SimpleExtensionMap;
  v11[0] = MEMORY[0x1E69E7CC8];
  v9 = v5;
  v10 = v6;
  v7 = static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v12, v11, &v9, a4, MEMORY[0x1E6969080], a5, &protocol witness table for Data);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *static Message.array(fromJSONUTF8Data:extensions:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v11[0] = a1;
  v11[1] = a2;
  v9 = v6;
  v10 = v7;
  return static Message.array<A>(fromJSONUTF8Bytes:extensions:options:)(v11, a3, &v9, a5, MEMORY[0x1E6969080], a6, &protocol witness table for Data);
}

uint64_t static Message.jsonUTF8Data<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11[0] = *a2;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  result = static Message.jsonUTF8Bytes<A, B>(from:options:)(a1, v11, a3, a4, MEMORY[0x1E6969080], a5, a6, &protocol witness table for Data, &v12);
  if (!v6)
  {
    return v12;
  }

  return result;
}

Swift::String __swiftcall Message.textFormatString()()
{
  v4 = 1;
  v2 = Message.textFormatString(options:)(&v4);
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall Message.textFormatString(options:)(InternalSwiftProtobuf::TextFormatEncodingOptions options)
{
  v4 = v2;
  v5 = v1;
  OUTLINED_FUNCTION_5();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v13 = v12 - v11;
  v15 = *v14;
  v30[3] = v16;
  v30[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v19 = *(v7 + 16);
  v19(boxed_opaque_existential_1, v3, v5);
  __dst[0] = v15;
  v20 = sub_1AC501FA4(v30, __dst, __src);
  (v19)(v13, v3, v5, v20);
  if (swift_dynamicCast())
  {
    v21 = v30[0];
    v22 = v30[1];
    sub_1AC475F40(__src);
    sub_1AC4513F8(v21, v22);
  }

  else
  {
    (*(v4 + 72))(__src, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v5, v4);
  }

  memcpy(__dst, __src, 0x41uLL);
  sub_1AC4EF50C(__dst, v30);
  v23 = sub_1AC500C3C();
  v25 = v24;
  memcpy(v30, __src, 0x41uLL);
  sub_1AC4EF568(v30);
  sub_1AC4EF568(__dst);
  v26 = v23;
  v27 = v25;
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t MessageExtension.fieldName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MessageExtension.messageType.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t *MessageExtension.__allocating_init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  v8 = *(v7 + 88);
  v9 = *(v7 + 104);
  result[5] = v8;
  result[6] = v9;
  return result;
}

uint64_t *MessageExtension.init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(v4 + 88);
  v6 = *(v4 + 104);
  v3[5] = v5;
  v3[6] = v6;
  return v3;
}

uint64_t MessageExtension._protobuf_newField<A>(decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a4;
  v24 = a3;
  v8 = *v4;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = sub_1AC51F228();
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v25[3] = v9;
  v25[4] = &protocol witness table for MessageExtension<A, B>;
  v25[0] = v5;
  v15 = *(v8 + 96);
  v16 = *(v15 + 64);

  v17 = v25[6];
  result = v16(v25, a1, a2, v24, v10, v15);
  if (!v17)
  {
    v20 = v22;
    v19 = v23;
    if (__swift_getEnumTagSinglePayload(v14, 1, v10) == 1)
    {
      result = (*(v20 + 8))(v14, v11);
      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
    }

    else
    {
      *(v19 + 24) = v10;
      *(v19 + 32) = *(v15 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      return (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v14, v10);
    }
  }

  return result;
}

uint64_t MessageExtension.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t MessageExtension.__deallocating_deinit()
{
  MessageExtension.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t _NameMap.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternPool();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = sub_1AC51ED58();
  sub_1AC46C9B4();
  a1[2] = OUTLINED_FUNCTION_34_5();
  result = OUTLINED_FUNCTION_34_5();
  a1[3] = result;
  return result;
}

uint64_t sub_1AC4EFB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 33))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    return sub_1AC51F2E8();
  }

  else
  {
    v6 = *(v0 + 24);
  }

  return v1;
}

char *sub_1AC4EFB98(const void *a1, size_t a2)
{
  v3 = v2;
  result = swift_slowAlloc();
  v7 = result;
  if (!a1)
  {
    goto LABEL_4;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    memmove(result, a1, a2);
LABEL_4:
    swift_beginAccess();
    sub_1AC46D068();
    v8 = *(*(v3 + 16) + 16);
    sub_1AC46D148(v8);
    v9 = *(v3 + 16);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = v7;
    *(v10 + 40) = &v7[a2];
    *(v3 + 16) = v9;
    swift_endAccess();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4EFC60()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        MEMORY[0x1AC5B4D30](v5, -1, -1);
      }

      v4 += 16;
      --v2;
    }

    while (v2);

    v6 = *(v0 + 16);
  }

  return v0;
}

uint64_t sub_1AC4EFCF0()
{
  v0 = sub_1AC4EFC60();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC4EFD20(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1);
  if (!*a1)
  {
    v4 = 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (v5)
  {
    if (v4 == (v6 - v5))
    {
      return sub_1AC4EFD54(v5, v6, v2, v3);
    }
  }

  else if (!v4)
  {
    return sub_1AC4EFD54(v5, v6, v2, v3);
  }

  return 0;
}

uint64_t sub_1AC4EFD54(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_1AC4EFDE0()
{
  sub_1AC51F468();
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1];
    while (v1 != v2)
    {
      v3 = *v1++;
      sub_1AC51F488();
    }
  }

  return sub_1AC51F4C8();
}

unint64_t sub_1AC4EFE58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1AC51F468();
  sub_1AC51EEB8();
  v6 = sub_1AC51F4C8();

  return sub_1AC4EFED0(a1, a2, v6);
}

unint64_t sub_1AC4EFED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1AC51F3D8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1AC4EFF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC4EFE58(v8, v9);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_14:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v14 = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559760, &unk_1AC5294E0);
  if (OUTLINED_FUNCTION_29_5())
  {
    v16 = *v4;
    sub_1AC4EFE58(a2, a3);
    OUTLINED_FUNCTION_9_16();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v5;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1((v19[7] + 32 * v14));
    OUTLINED_FUNCTION_378();

    return sub_1AC4CA7D4(v20, v21);
  }

  else
  {
    sub_1AC4F04FC(v14, a2, a3, v3, v19);
    OUTLINED_FUNCTION_378();
  }
}

uint64_t sub_1AC4F009C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_1AC4F00B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1AC4EFE58(a2, a3);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_14:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v13 = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559750, &qword_1AC5294F0);
  if (OUTLINED_FUNCTION_29_5())
  {
    v15 = *v4;
    sub_1AC4EFE58(a2, a3);
    OUTLINED_FUNCTION_5_19();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    OUTLINED_FUNCTION_378();

    return sub_1AC4F0A54(v20, v21);
  }

  else
  {
    sub_1AC4F08F8(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_378();
  }
}

void sub_1AC4F01CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC45AA38(v5);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_14:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v10 = v6;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558208, &unk_1AC520790);
  if (OUTLINED_FUNCTION_31_4())
  {
    v12 = *v2;
    sub_1AC45AA38(a2);
    OUTLINED_FUNCTION_9_16();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v3 + 56) + 40 * v10));
    OUTLINED_FUNCTION_378();

    sub_1AC465B44(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_378();

    sub_1AC4F095C(v18, v19, v20, v21);
  }
}

void sub_1AC4F02D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  sub_1AC4EFE58(a3, a4);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_12:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v15 = v11;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D8, &qword_1AC5294F8);
  if (sub_1AC51F338())
  {
    v17 = *v5;
    sub_1AC4EFE58(a3, a4);
    OUTLINED_FUNCTION_5_19();
    if (!v19)
    {
      goto LABEL_12;
    }

    v15 = v18;
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_1AC4F09BC(v15, a3, a4, a1, a2, v20);
  }
}

void sub_1AC4F0400(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = OUTLINED_FUNCTION_19_10(a1, a2);
  sub_1AC45AA38(v6);
  OUTLINED_FUNCTION_1_24();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598D0, &unk_1AC529940);
  if ((OUTLINED_FUNCTION_31_4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_1AC45AA38(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1AC51F408();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    v16 = *(*v4 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v2;
    OUTLINED_FUNCTION_378();
  }

  else
  {
    OUTLINED_FUNCTION_378();

    sub_1AC4F0A08(v19, v20, v21, v22);
  }
}

_OWORD *sub_1AC4F04FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1AC4CA7D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1AC4F0568(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_1AC4F05B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AC4F05F0(uint64_t result, int a2, int a3)
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

uint64_t sub_1AC4F0630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 17);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AC4F0674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AC4F06F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
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