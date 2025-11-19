uint64_t sub_2169FC198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v20;
  v28 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v30)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  (*(v27 + 32))(a3, v23, v28);
  v25 = *(type metadata accessor for CollaborationAction() + 20);
  v26 = sub_21700C924();
  return __swift_storeEnumTagSinglePayload(a3 + v25, 1, 1, v26);
}

uint64_t type metadata accessor for MenuAction()
{
  result = qword_280E45780;
  if (!qword_280E45780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2169FC4AC()
{
  result = type metadata accessor for MenuActionType();
  if (v1 <= 0x3F)
  {
    result = sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_2169FC538()
{
  v0 = sub_216BAE074();
  if (v0 >= sub_216BAE074())
  {
    return 0;
  }

  v1 = sub_216BADF14();
  v2 = sub_216BADF14();
  if (v2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217034320[v2];
  }

  if (v1 > 0xEu)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_217034320[v1];
  }

  return v3 >= v5;
}

uint64_t sub_2169FC5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169FC530();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2169FC624()
{
  result = qword_27CABFA30;
  if (!qword_27CABFA30)
  {
    type metadata accessor for MenuAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFA30);
  }

  return result;
}

uint64_t type metadata accessor for OpenContextualMenuAction()
{
  result = qword_280E365F8;
  if (!qword_280E365F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169FC6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

_BYTE *storeEnumTagSinglePayload for UnifiedMessages(_BYTE *result, int a2, int a3)
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

void sub_2169FCA1C(unsigned __int8 *a1)
{
  v3 = *a1;
  if (!*(v2 + 184))
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v8, qword_280E73D20);
    oslog = sub_217007C84();
    v9 = sub_21700ED84();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = OUTLINED_FUNCTION_96();
      v11 = OUTLINED_FUNCTION_45_19();
      v16 = v11;
      *v10 = 136315138;
      if (v3)
      {
        v12 = 0x6E776F6E6B6E75;
      }

      else
      {
        v12 = 0x507972617262696CLL;
      }

      if (v3)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xEF64656464416E69;
      }

      v14 = sub_2166A85FC(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_216679000, oslog, v9, "💬 ⛔ No data store available. Skip reporting %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      OUTLINED_FUNCTION_26_4();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v4 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v4, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_96();
      v7 = OUTLINED_FUNCTION_45_19();
      v16 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2166A85FC(0x6E776F6E6B6E75, 0xE700000000000000, &v16);
      _os_log_impl(&dword_216679000, oslog, v1, "💬 Unsupported FeatureEngagementEvent %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_26_4();
LABEL_17:
      OUTLINED_FUNCTION_6();

      return;
    }

LABEL_18:

    return;
  }

  sub_216B5B400();
}

void sub_2169FCC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v5 = sub_2166F42A4(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        sub_21700DF14();
        if (v13 >= v12 >> 1)
        {
          sub_2166F4258();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_2166F42E8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_2166F42E8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_2169FCED4()
{
  v1 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver;
  if (!*(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver))
  {
    type metadata accessor for MusicUIEngagementLibraryObserver();
    swift_allocObject();
    *(v0 + v1) = sub_216B955B8();
  }
}

uint64_t sub_2169FCF54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_22_16(v5);
  OUTLINED_FUNCTION_30_25();
  v8 = sub_216A06C54(v6, v7);
  OUTLINED_FUNCTION_53();
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = v1;
  swift_retain_n();

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

void sub_2169FD04C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v27[0] = v2;
  v27[1] = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  v19 = *v7;
  v18 = v7[1];
  v20 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v17, v21, v22, v20);
  sub_216681B04(v5, v13, &qword_27CAB8DF8);
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700DF14();
  v23 = sub_21700EA24();
  v24 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v23;
  v25[3] = v26;
  v25[4] = v1;
  v25[5] = v19;
  v25[6] = v18;
  sub_216A06448(v13, v25 + v24);
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();

  sub_216681B04(v5, v13, &qword_27CAB8DF8);
  sub_2169FF528(v13);
  swift_unknownObjectRetain();
  sub_2169FDD74();
  OUTLINED_FUNCTION_26();
}

void sub_2169FD23C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_21700DF14();
  v9 = 0;
  if (v6)
  {
LABEL_12:
    while (1)
    {
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = (a1[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2166A6DF8(a1[7] + 32 * v11, v35);
      *&v34 = v14;
      *(&v34 + 1) = v13;
      v32[2] = v34;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v32[0] = v34;
      sub_21700DF14();
      swift_dynamicCast();
      sub_2166EF9C4(v33, v27);
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_2166EF9C4(v27, v31);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      sub_2166EF9C4(v31, v32);
      v15 = sub_21700F334() & ~(-1 << *(v2 + 32));
      if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_87_11();
LABEL_21:
      OUTLINED_FUNCTION_55_14();
      *(v8 + v20) |= v21;
      v23 = *(v2 + 48) + 40 * v22;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      sub_2166EF9C4(v32, (*(v2 + 56) + 32 * v22));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_85_9();
    while (++v16 != v18 || (v17 & 1) == 0)
    {
      v19 = v16 == v18;
      if (v16 == v18)
      {
        v16 = 0;
      }

      v17 |= v19;
      if (*(v8 + 8 * v16) != -1)
      {
        OUTLINED_FUNCTION_84_11();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      v6 = a1[v10 + 8];
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2169FD4B4(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBD8);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  result = sub_21700DF14();
  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_2166A6DF8(a1[7] + 32 * v12, v30);
    *&v29 = v14;
    *(&v29 + 1) = v15;
    v27[2] = v29;
    v28[0] = v30[0];
    v28[1] = v30[1];
    v16 = v29;
    sub_2166EF9C4(v28, &v23);
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0);
    swift_dynamicCast();
    sub_2166EF9C4(&v24, v26);
    sub_2166EF9C4(v26, v27);
    sub_2166EF9C4(v27, &v25);
    result = sub_2166AF66C(v16, *(&v16 + 1));
    v17 = result;
    if (v18)
    {
      *(v2[6] + 16 * result) = v16;

      v19 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      result = sub_2166EF9C4(&v25, v19);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v16;
      result = sub_2166EF9C4(&v25, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2169FD720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0);
    v2 = sub_21700F5C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_21700DF14();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_216788294(*(a1 + 48) + 40 * v11, v33);
    v35 = *(*(a1 + 56) + v11);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    LOBYTE(v32[0]) = v35;
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_2166EF9C4(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_2166EF9C4(v31, v32);
    result = sub_21700F334();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    result = sub_2166EF9C4(v32, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_2169FD9C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_21700DF14();
  v9 = 0;
  if (v6)
  {
LABEL_12:
    while (1)
    {
      v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v6)) | (v9 << 6)));
      v12 = v11[1];
      *&v30[0] = *v11;
      *(&v30[0] + 1) = v12;
      sub_21700DF14();
      swift_dynamicCast();
      swift_dynamicCast();
      v26 = v22;
      v27 = v23;
      v28 = v24;
      sub_2166EF9C4(&v25, v29);
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_2166EF9C4(v29, v30);
      v13 = sub_21700F334() & ~(-1 << *(v2 + 32));
      if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_87_11();
LABEL_21:
      OUTLINED_FUNCTION_55_14();
      *(v8 + v18) |= v19;
      v21 = *(v2 + 48) + 40 * v20;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      sub_2166EF9C4(v30, (*(v2 + 56) + 32 * v20));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_85_9();
    while (++v14 != v16 || (v15 & 1) == 0)
    {
      v17 = v14 == v16;
      if (v14 == v16)
      {
        v14 = 0;
      }

      v15 |= v17;
      if (*(v8 + 8 * v14) != -1)
      {
        OUTLINED_FUNCTION_84_11();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      v6 = *(a1 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2169FDC30()
{
  OUTLINED_FUNCTION_120_0();
  v0 = OUTLINED_FUNCTION_116();
  sub_216ABB124(v0, v1, v2);
  swift_endAccess();
}

uint64_t sub_2169FDC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700D574();
  sub_21700D4D4();
  sub_21700E094();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_2169FDD04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2169FDD74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

void sub_2169FDDF0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v51 = v2;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB80);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_34();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB70);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  v23 = [objc_opt_self() mainBundle];
  v24 = sub_2166E2BA8(v23);
  v26 = 0x6C7070612E6D6F63;
  if (v25)
  {
    v26 = v24;
  }

  v27 = 0xEF636973754D2E65;
  if (v25)
  {
    v27 = v25;
  }

  *(v0 + 120) = v26;
  *(v0 + 128) = v27;
  *(v0 + 136) = 0x636973756DLL;
  *(v0 + 144) = 0xE500000000000000;
  strcpy((v0 + 168), "page_metrics");
  *(v0 + 181) = 0;
  *(v0 + 182) = -5120;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48);
  swift_allocObject();
  *(v0 + 200) = sub_217007D84();
  v28 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__impressionsTracker;
  v55 = 0;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAA8);
  sub_217007DA4();
  (*(v19 + 32))(&v1[v28], v22, v17);
  v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled] = 2;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask] = 0;
  v29 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements;
  sub_2166E2C24();
  *&v1[v29] = v30;
  v31 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_cacheRequiredPlacements;
  sub_2166E2C24();
  *&v1[v31] = v32;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver] = 0;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_subscriptions] = MEMORY[0x277D84F98];
  v33 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8);
  OUTLINED_FUNCTION_88(&v1[v33], v35, v36, v34);
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay] = 0;
  v37 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__pageMetrics;
  v38 = sub_21700D194();
  OUTLINED_FUNCTION_88(v16, v39, v40, v38);
  sub_216681B04(v16, v14, &qword_27CAB8DF8);
  sub_217007DA4();
  sub_216697664(v16, &qword_27CAB8DF8);
  (*(v7 + 32))(&v1[v37], v10, v50);
  *(v1 + 26) = v51;
  sub_216685F4C(0, &qword_280E29D60);

  sub_21700DF14();
  v41 = sub_2166A315C();
  *(v1 + 20) = v41;
  sub_216685F4C(0, &qword_280E29B78);
  v42 = v41;
  v43 = sub_2166A3488(0x636973754DLL, 0xE500000000000000, 49, 0xE100000000000000, v41);
  *(v1 + 19) = v43;
  v44 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement] = v44;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v54, sel_init);
  v46 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v52, v47, v48, v46);
  OUTLINED_FUNCTION_181();
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v45;
  v45;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169FE384()
{
  OUTLINED_FUNCTION_33();
  sub_2166E360C();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169FE3DC()
{
  OUTLINED_FUNCTION_33();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_21700D7E4();
  v1[9] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40);
  v1[12] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v1[15] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v11);
  v1[18] = OUTLINED_FUNCTION_80();
  v12 = sub_21700CFB4();
  v1[19] = v12;
  OUTLINED_FUNCTION_2(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_80();
  v14 = sub_21700DA84();
  v1[22] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  OUTLINED_FUNCTION_36(v16);
  v1[25] = OUTLINED_FUNCTION_80();
  v17 = sub_21700D574();
  v1[26] = v17;
  OUTLINED_FUNCTION_2(v17);
  v1[27] = v18;
  v1[28] = OUTLINED_FUNCTION_80();
  v1[29] = sub_21700EA34();
  v1[30] = sub_21700EA24();

  return MEMORY[0x2822009F8](sub_2169FE694, v0, 0);
}

uint64_t sub_2169FE694()
{
  OUTLINED_FUNCTION_31();
  sub_2169FDC8C(v0[25]);
  v2 = sub_21700E9B4();
  v0[31] = v2;
  v0[32] = v1;

  return MEMORY[0x2822009F8](sub_2169FE724, v2, v1);
}

uint64_t sub_2169FE724()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[25];
  v1 = v0[26];
  v3 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v3, v4, v1) == 1)
  {

    sub_216697664(v2, &unk_27CABFB50);
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v5 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v5, qword_280E73D20);
    v6 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v8);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_68_12();

    OUTLINED_FUNCTION_3();

    return v14();
  }

  else
  {
    v16 = v0[8];
    OUTLINED_FUNCTION_90_9();
    v17();
    v0[33] = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay;
    sub_21700DF14();

    return MEMORY[0x2822009F8](sub_2169FE8FC, v16, 0);
  }
}

uint64_t sub_2169FE8FC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[32];
  v0[34] = *(v0[8] + v0[33]);
  sub_21700DF14();
  v2 = OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2822009F8](v2, v3, v1);
}

uint64_t sub_2169FE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = v12;
  v13 = v12[34];
  v14 = v12[5];
  if (v13)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v14;
    sub_216860DB0(v13, sub_216A8D714, 0, isUniquelyReferenced_nonNull_native, &v44);
  }

  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78);
  v16 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_217013DA0;
  v21 = qword_280E2A160;
  sub_21700DF14();
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = v12[18];
  v23 = __swift_project_value_buffer(v16, qword_280E73A08);
  (*(v18 + 16))(v20 + v19, v23, v16);
  sub_216F0F260(v20);
  sub_21700CFA4();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_90_9();
  sub_217007DE4();

  v24 = sub_21700D194();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
  v26 = v12[18];
  if (EnumTagSinglePayload)
  {
    sub_216697664(v12[18], &qword_27CAB8DF8);
  }

  else
  {
    v27 = sub_21700D0F4();
    sub_216697664(v26, &qword_27CAB8DF8);
    if (v27)
    {
      v12[4] = v27;
      sub_21700DA44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      sub_21700DA64();
      v28 = OUTLINED_FUNCTION_115();
      v29(v28);
    }
  }

  v30 = sub_2169FDD04();
  if (v30)
  {
    v12[2] = v30;
    v12[3] = v31;
    sub_21700DA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60);
    sub_21700DA64();
    v32 = OUTLINED_FUNCTION_115();
    v33(v32);
    swift_unknownObjectRelease();
  }

  v39 = swift_task_alloc();
  v12[35] = v39;
  *v39 = v12;
  v39[1] = sub_2169FED3C;
  v40 = v12[24];
  v41 = v12[21];
  v42 = v12[11];

  return MEMORY[0x28217F3A8](v42, v41, v40, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_2169FED3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[36] = v0;

  if (v0)
  {
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_2169FEF5C;
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_2169FEE50;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2169FEE50()
{
  OUTLINED_FUNCTION_115_1();
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_68_12();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_2169FEF5C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t sub_2169FF08C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_2169FF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = sub_21700EA34();
  v7[5] = sub_21700EA24();
  v7[2] = a5;
  v7[3] = a6;
  v11 = swift_task_alloc();
  v7[6] = v11;
  *v11 = v7;
  v11[1] = sub_2169FF1E4;

  return sub_2169FF314(v7 + 2, a7, 0);
}

uint64_t sub_2169FF1E4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v5 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2169FF314(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[10] = v3;
  v4[11] = v5;
  v4[12] = v6;
  return OUTLINED_FUNCTION_3_79(sub_2169FF33C, v3);
}

uint64_t sub_2169FF33C()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[11];
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_21700DF14();
  sub_2166E2C24();
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2169FF424;

  return sub_2169FF604();
}

uint64_t sub_2169FF424()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_2169FF528(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216681B04(a1, v1, &qword_27CAB8DF8);

  sub_217007DF4();
  v5 = OUTLINED_FUNCTION_116();
  return sub_216697664(v5, v6);
}

uint64_t sub_2169FF604()
{
  OUTLINED_FUNCTION_33();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v5);
  v1[12] = OUTLINED_FUNCTION_80();
  v6 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2169FF68C()
{
  OUTLINED_FUNCTION_115_1();
  v69 = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = v1[8];
  v4 = sub_217007CA4();
  v1[13] = OUTLINED_FUNCTION_29_2(v4, qword_280E73D20);
  sub_21700DF14();
  v5 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v5, v0))
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_72_12();
    *v3 = 136446210;
    sub_216A069B8();
    v6 = sub_21700EB94();
    v8 = sub_2166A85FC(v6, v7, &v68);

    *(v3 + 4) = v8;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v9, v10, "💬 ╭ Attempting to make request for: %{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  v11 = [objc_opt_self() sharedPrivacyInfo];
  v12 = [v11 privacyAcknowledgementRequiredForMusic];

  if (v12)
  {
    v13 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v15);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    goto LABEL_19;
  }

  v21 = v1[11];
  v22 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v23 = *(v21 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  if (v23 != 2)
  {
LABEL_12:
    if (v23)
    {
      sub_21700D194();
      v25 = OUTLINED_FUNCTION_58_0();
      if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
      {
        v28 = swift_task_alloc();
        v29 = OUTLINED_FUNCTION_86_10(v28);
        *v29 = v30;
        OUTLINED_FUNCTION_2_73(v29);
        OUTLINED_FUNCTION_50_15();

        return sub_216A00B98(v31, v32, v33);
      }

      else
      {
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_50_15();

        return MEMORY[0x2822009F8](v64, v65, v66);
      }
    }

LABEL_17:
    v13 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (!os_log_type_enabled(v13, v36))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v21 = 136446210;
    OUTLINED_FUNCTION_7_54();
    *(v21 + 4) = sub_2166A85FC(0xD000000000000028, v37, v38);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_56_1();
LABEL_19:
    OUTLINED_FUNCTION_26_4();
LABEL_20:

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_50_15();

    __asm { BRAA            X2, X16 }
  }

  v24 = *(v21 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask);
  v1[14] = v24;
  if (!v24)
  {
    goto LABEL_17;
  }

  if (swift_task_isCancelled())
  {

    v23 = *(v21 + v22);
    if (v23 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v46 = sub_217007C84();
  v47 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_41_0(v47))
  {
    OUTLINED_FUNCTION_96();
    v68 = OUTLINED_FUNCTION_64_1();
    *v22 = 136446210;
    OUTLINED_FUNCTION_7_54();
    *(v22 + 4) = sub_2166A85FC(0xD000000000000028, v48, v49);
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  v55 = swift_task_alloc();
  v1[15] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  *v55 = v1;
  v55[1] = sub_2169FFAE0;
  OUTLINED_FUNCTION_50_15();

  return MEMORY[0x282200430](v56, v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_2169FFAE0()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  v5 = *(v2 + 88);
  if (v0)
  {

    v6 = sub_216A009A4;
  }

  else
  {
    v6 = sub_2169FFC0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2169FFC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_99();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_93();
  a14 = v16;
  if (*(v16 + 208))
  {

    sub_21700D194();
    v20 = OUTLINED_FUNCTION_58_0();
    if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
    {
      v23 = swift_task_alloc();
      v24 = OUTLINED_FUNCTION_86_10(v23);
      *v24 = v25;
      OUTLINED_FUNCTION_2_73(v24);
      OUTLINED_FUNCTION_47_8();

      return sub_216A00B98(v26, v27, v28);
    }

    else
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_47_8();

      return MEMORY[0x2822009F8](v47, v48, v49);
    }
  }

  else
  {
    v31 = sub_217007C84();
    v32 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_41_0(v32))
    {
      OUTLINED_FUNCTION_96();
      a9 = OUTLINED_FUNCTION_64_1();
      *v17 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v17 + 4) = sub_2166A85FC(0xD000000000000028, v33, &a9);
      OUTLINED_FUNCTION_123_0();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_56_1();
    }

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_47_8();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46);
  }
}

uint64_t sub_2169FFDA8()
{
  OUTLINED_FUNCTION_33();
  sub_21700EA34();
  *(v0 + 128) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2169FFE20()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 96);

  v2 = OUTLINED_FUNCTION_74_0();
  sub_216681B04(v2, v3, v4);
  sub_2169FF528(v1);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_86_10(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_73(v6);

  return sub_216A00B98(v8, v9, v10);
}

uint64_t sub_2169FFEC0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2169FFFBC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[11];
  v0[19] = *(v1 + 136);
  v0[20] = *(v1 + 144);
  objc_allocWithZone(MEMORY[0x277CEE4A8]);
  sub_21700DF14();
  OUTLINED_FUNCTION_115();
  v0[21] = sub_216A06884();
  OUTLINED_FUNCTION_120_0();
  v2 = sub_21700DF14();
  sub_216AB3E44(v2);
  swift_endAccess();
  v0[22] = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_216A000D0;
  OUTLINED_FUNCTION_12_7();

  return sub_216A00FB0(v4);
}

uint64_t sub_216A000D0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v7 + 192) = v6;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A001F0()
{
  v164 = v0;
  v1 = v0[24];
  v2 = &unk_217013000;
  if (!v1 || (v3 = v1, (v4 = sub_216A06A88(v3)) == 0))
  {
LABEL_17:
    v17 = v0[8];
    OUTLINED_FUNCTION_120_0();
    sub_216ABC91C();
    swift_endAccess();
    sub_21700DF14();
    v18 = sub_217007C84();
    v19 = sub_21700EDA4();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[24];
    v22 = v0[21];
    if (v20)
    {
      OUTLINED_FUNCTION_96();
      v163 = OUTLINED_FUNCTION_44_0();
      *v17 = v2[398].isa;
      sub_216A069B8();
      v23 = sub_21700EB94();
      v25 = sub_2166A85FC(v23, v24, &v163);

      *(v17 + 4) = v25;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_26_4();
    }

LABEL_58:
    v136 = 0;
    goto LABEL_59;
  }

  v5 = v4;
  v154 = v3;
  v6 = sub_2166BF3C8(v4);
  v7 = v6;
  v8 = 0;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      v2 = &unk_217013000;
      goto LABEL_17;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEA0220](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v6 = *(v5 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_63;
    }

    v10 = v0[19];
    v11 = v0[20];
    v162 = v6;
    v12 = [v6 serviceType];
    v13 = sub_21700E514();
    v2 = v14;

    if (v13 == v10 && v2 == v11)
    {
      break;
    }

    v16 = sub_21700F7D4();

    if (v16)
    {
      goto LABEL_21;
    }

    ++v8;
  }

LABEL_21:

  v31 = v0[8];
  v32 = v31 + 56;
  OUTLINED_FUNCTION_38_18();
  v34 = v33 >> 6;
  v6 = sub_21700DF14();
  v35 = 0;
  v160 = v0;
  v161 = v34;
  v159 = v31;
  while (v9)
  {
    v36 = v35;
LABEL_27:
    v37 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v38 = (*(v31 + 48) + ((v36 << 10) | (16 * v37)));
    v39 = *v38;
    v40 = v38[1];
    sub_21700DF14();
    v41 = sub_216A06A0C(v162);
    if (v41)
    {
      v8 = v41;
      if (*(v41 + 16))
      {
        sub_21700DF14();
        v42 = OUTLINED_FUNCTION_115();
        v44 = sub_2166AF66C(v42, v43);
        v46 = v45;

        if (v46)
        {
          v47 = *(*(v8 + 56) + 8 * v44);
          sub_21700DF14();

          if (v47 >> 62)
          {
            result = sub_21700F2B4();
            if (result)
            {
LABEL_32:
              if ((v47 & 0xC000000000000001) != 0)
              {
                v49 = MEMORY[0x21CEA0220](0, v47);
              }

              else
              {
                if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v49 = *(v47 + 32);
              }

              v149 = v49;

              sub_21700DF14();
              v50 = sub_217007C84();
              sub_21700EDA4();
              OUTLINED_FUNCTION_101_6();
              v144 = v32;
              if (OUTLINED_FUNCTION_100_9())
              {
                v51 = OUTLINED_FUNCTION_96();
                v52 = OUTLINED_FUNCTION_45_19();
                OUTLINED_FUNCTION_4_61(v52, v53, v54, v55, v56, v57, v58, v59, v52, v32, v149, v154, v60);
                v61 = OUTLINED_FUNCTION_115();
                v62 = MEMORY[0x21CE9F490](v61);
                v70 = OUTLINED_FUNCTION_54_16(v62, v63, v64, v65, v66, v67, v68, v69, v140, v145, v150, v155);

                *(v51 + 4) = v70;
                v0 = v160;
                _os_log_impl(&dword_216679000, v50, v8, "💬 ╰ Received request for %{public}s", v51, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v139);
                OUTLINED_FUNCTION_15_20();
                v31 = v159;
                OUTLINED_FUNCTION_6();
              }

              v71 = *(v0[11] + 112);
              sub_21700DF14();
              v72 = OUTLINED_FUNCTION_115();
              v74 = sub_216CE11AC(v72, v73, v71);

              if (v74)
              {
                v2 = v149;
                v75 = [v149 engagementRequest];
                if (v75)
                {
                  v0 = v160;
                  v8 = v75;
                  sub_216A01254();

LABEL_49:
                  v35 = v36;
                  v32 = v144;
                  v34 = v161;
                  continue;
                }

                v6 = [v149 makeDialogRequest];
                if (v6)
                {
                  goto LABEL_65;
                }

                v0 = v160;
                sub_21700DF14();
                v2 = sub_217007C84();
                sub_21700EDA4();
                OUTLINED_FUNCTION_101_6();
                if (OUTLINED_FUNCTION_100_9())
                {
                  v76 = OUTLINED_FUNCTION_96();
                  v77 = OUTLINED_FUNCTION_45_19();
                  v106 = OUTLINED_FUNCTION_4_61(v77, v98, v99, v100, v101, v102, v103, v104, v139, v144, v149, v154, v105);
                  MEMORY[0x21CE9F490](v39, v40, v106);

                  OUTLINED_FUNCTION_54_16(v107, v108, v109, v110, v111, v112, v113, v114, v142, v147, v152, v157);
                  OUTLINED_FUNCTION_92_7();

                  *(v76 + 4) = v40;
                  v95 = v8;
                  v96 = v2;
                  v97 = "💬 ╰ No UM found for %{public}s";
                  goto LABEL_47;
                }
              }

              else
              {
                sub_21700DF14();
                v2 = sub_217007C84();
                sub_21700EDA4();
                OUTLINED_FUNCTION_101_6();
                if (OUTLINED_FUNCTION_100_9())
                {
                  v76 = OUTLINED_FUNCTION_96();
                  v77 = OUTLINED_FUNCTION_45_19();
                  v86 = OUTLINED_FUNCTION_4_61(v77, v78, v79, v80, v81, v82, v83, v84, v139, v144, v149, v154, v85);
                  MEMORY[0x21CE9F490](v39, v40, v86);

                  OUTLINED_FUNCTION_54_16(v87, v88, v89, v90, v91, v92, v93, v94, v141, v146, v151, v156);
                  OUTLINED_FUNCTION_92_7();

                  *(v76 + 4) = v40;
                  v95 = v8;
                  v96 = v2;
                  v97 = "💬 Placement '%{public}s' was recently removed by the user, so prevent displaying it again.";
LABEL_47:
                  _os_log_impl(&dword_216679000, v96, v95, v97, v76, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v77);
                  v0 = v160;
                  OUTLINED_FUNCTION_6();
                  v31 = v159;
                  OUTLINED_FUNCTION_6();

                  goto LABEL_49;
                }
              }

              goto LABEL_49;
            }
          }

          else
          {
            result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }

    sub_21700DF14();
    v2 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_101_6();
    if (OUTLINED_FUNCTION_100_9())
    {
      v115 = OUTLINED_FUNCTION_96();
      v116 = v32;
      v117 = OUTLINED_FUNCTION_45_19();
      OUTLINED_FUNCTION_4_61(v117, v118, v119, v120, v121, v122, v123, v124, v139, v144, v149, v154, v125);
      v126 = OUTLINED_FUNCTION_115();
      MEMORY[0x21CE9F490](v126);

      OUTLINED_FUNCTION_54_16(v127, v128, v129, v130, v131, v132, v133, v134, v143, v148, v153, v158);
      OUTLINED_FUNCTION_92_7();

      *(v115 + 4) = v40;
      _os_log_impl(&dword_216679000, v2, v8, "💬 ╰ No messageRequest for placement: %{public}s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      v32 = v116;
      v0 = v160;
      OUTLINED_FUNCTION_6();
      v31 = v159;
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v35 = v36;
    v34 = v161;
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      v135 = v0[21];

      goto LABEL_58;
    }

    v9 = *(v32 + 8 * v36);
    ++v35;
    if (v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v136 = v6;
  v138 = v160[21];

LABEL_59:

  OUTLINED_FUNCTION_43_4();

  return v137(v136);
}

uint64_t sub_216A009A4()
{
  OUTLINED_FUNCTION_33();

  sub_21700D194();
  v0 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v0, v1, v2) == 1)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_86_10(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_2_73(v4);

    return sub_216A00B98(v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_216A00A68()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 200);
  v2 = v1;
  v3 = sub_217007C84();
  sub_21700ED84();

  v4 = OUTLINED_FUNCTION_105_7();
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_96();
    v8 = OUTLINED_FUNCTION_79_14();
    *v7 = 138412290;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_216697664(v8, &qword_27CABF880);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_12_7();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_216A00B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A00C38, v3, 0);
}

uint64_t sub_216A00C38()
{
  v2 = *(v0 + 96);
  v3 = MEMORY[0x277D84F90];
  v4 = *(v0 + 80) + 56;
  v32 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_38_18();
  v6 = v5 >> 6;
  v28 = v7;
  result = sub_21700DF14();
  v9 = 0;
  v26 = v6;
  v27 = v4;
  v29 = v2;
  if (v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v1 = *(v4 + 8 * v10);
    ++v9;
    if (v1)
    {
      v9 = v10;
      do
      {
LABEL_6:
        v11 = (*(v28 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v1)))));
        v30 = v11[1];
        v31 = *v11;
        sub_21700DF14();
        v12 = v2;
        if (!v2)
        {
          v12 = sub_21700E384();
        }

        sub_216681B04(*(v0 + 88), *(v0 + 112), &qword_27CAB8DF8);
        v13 = sub_21700D194();
        v14 = OUTLINED_FUNCTION_58_0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);
        sub_21700DF14();
        v17 = *(v0 + 112);
        if (EnumTagSinglePayload == 1)
        {
          sub_216697664(*(v0 + 112), &qword_27CAB8DF8);
          v2 = v29;
          v4 = v27;
        }

        else
        {
          v18 = sub_21700D0F4();
          (*(*(v13 - 8) + 8))(v17, v13);
          v4 = v27;
          if (v18)
          {
            *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
            *(v0 + 16) = v18;
            sub_2166EF9C4((v0 + 16), (v0 + 48));
            sub_21700DF14();
            swift_isUniquelyReferenced_nonNull_native();
            sub_2166EF9D4();
          }

          v2 = v29;
        }

        if (v31 == 0x636E75614C707061 && v30 == 0xEE00746565685368)
        {
          v20 = 1;
        }

        else
        {
          v20 = sub_21700F7D4();
        }

        sub_2169FD23C(v12);
        v22 = v21;

        v23 = objc_allocWithZone(MEMORY[0x277CEE4C0]);
        v24 = [sub_216A06918(v31 v30];
        MEMORY[0x21CE9F610](v24);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21700E874();
        }

        v1 &= v1 - 1;
        OUTLINED_FUNCTION_115();
        result = sub_21700E8C4();
        v3 = v32;
        v6 = v26;
      }

      while (v1);
    }
  }

  OUTLINED_FUNCTION_43_4();

  return v25(v3);
}

uint64_t sub_216A00FB0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_3_79(sub_216A00FCC, 0);
}

uint64_t sub_216A00FCC()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB08);
  *v2 = v0;
  v2[1] = sub_216A010D0;
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822008A0](v3, v4, v5, 0xD000000000000015, v6, v7, v1, v8);
}

uint64_t sub_216A010D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A011F8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A01254()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v11 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v11, qword_280E73D20);
  v12 = v8;
  sub_21700DF14();
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v21 = v2;
    v15 = OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_79_14();
    v22 = OUTLINED_FUNCTION_56_14();
    *v15 = 136446722;
    OUTLINED_FUNCTION_17_5();
    *(v15 + 4) = sub_2166A85FC(0xD000000000000039, v16, &v22);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_2166A85FC(v6, v4, &v22);
    *(v15 + 22) = 2114;
    *(v15 + 24) = v12;
    *v0 = v8;
    v17 = v12;
    _os_log_impl(&dword_216679000, v13, v14, "💬 %{public}s Engagement request for '%{public}s': '%{public}@'", v15, 0x20u);
    sub_216697664(v0, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    v2 = v21;
    OUTLINED_FUNCTION_6();
  }

  if (v8)
  {
    v18 = sub_21700EA74();
    OUTLINED_FUNCTION_22_16(v18);
    OUTLINED_FUNCTION_53();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;
    v19[5] = v12;
    v20 = v12;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216A0148C()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  if (qword_280E2B900 != -1)
  {
    swift_once();
  }

  if ((byte_280E73A81 & 1) != 0 || (v17 = *(v2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled), v17 == 2) || (v17 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v23 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v23, qword_280E73D20);
    v40 = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v40, v24))
    {
      v25 = OUTLINED_FUNCTION_43();
      *v25 = 0;
      _os_log_impl(&dword_216679000, v40, v7, "💬 Sheet presentation disabled, skipped presenting sheet", v25, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }

  else
  {
    if (*(v2 + 192) != 1)
    {
      v28 = *(v2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay);
      if (v28)
      {
        v29 = sub_21700DF14();
        sub_2169FD23C(v29);
        v40 = v30;

        v28 = sub_21700E344();
      }

      [v6 setMetricsOverlay_];

      v31 = *(v2 + 152);
      v40 = *(v2 + 160);
      sub_2170077F4();
      v39[1] = swift_allocObject();
      v39[0] = v31;
      v32 = v40;
      v33 = v6;
      v40 = sub_2170077D4();
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = v4;

      sub_2170077C4();
      sub_21700D4D4();
      sub_21700E094();
      v35 = type metadata accessor for ModalFlowAction();
      v41[3] = v35;
      v41[4] = sub_216A06C54(qword_280E426A8, type metadata accessor for ModalFlowAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      sub_21700D234();
      *(boxed_opaque_existential_1 + *(v35 + 20)) = v40;
      type metadata accessor for FlowAction.Destination(0);
      swift_storeEnumTagMultiPayload();
      *(boxed_opaque_existential_1 + *(v35 + 24)) = xmmword_217015580;
      (*(v9 + 104))(v1, *MEMORY[0x277D21E18], v7);
      type metadata accessor for ObjectGraph();

      sub_21700D4F4();
      sub_21700D5E4();

      v37 = OUTLINED_FUNCTION_74_0();
      v38(v37);
      (*(v13 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      goto LABEL_21;
    }

    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v18 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v18, qword_280E73D20);
    v40 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v40, v19))
    {
      v20 = OUTLINED_FUNCTION_96();
      v21 = OUTLINED_FUNCTION_45_19();
      v41[0] = v21;
      *v20 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v20 + 4) = sub_2166A85FC(0xD00000000000001BLL, v22, v41);
      _os_log_impl(&dword_216679000, v40, v7, "💬 ⛔ %{public}s Sheet presentation suppressed while purchasing subscription.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_15_20();

LABEL_21:
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  OUTLINED_FUNCTION_26();
}

void sub_216A019FC(int a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v4 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v9 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements);
    v10 = 1 << v9[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 7);
    v24 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
    v25 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement;
    v13 = (v10 + 63) >> 6;
    sub_21700DF14();
    v14 = 0;
    if (v12)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v3 = v24;
        v2 = a1;
        goto LABEL_15;
      }

      v12 = *&v9[8 * v15 + 56];
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_12:
          v12 &= v12 - 1;
          v16 = *(v1 + v25);
          sub_21700DF14();
          v17 = sub_21700E4D4();
          v18 = sub_21700E4D4();
          [v16 removeObserver:v1 placement:v17 serviceType:v18];
        }

        while (v12);
        continue;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  sub_2169FCC9C(*(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements));
  v7 = sub_216E64354(v6);
  v8 = sub_21700E4D4();
  sub_216A06FF8(v1, v7, v8, v5);

LABEL_15:
  v19 = *(v1 + v3);
  if (v19 == 2)
  {
    if (v2 == 2)
    {
      return;
    }

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    sub_21700F364();
    *(inited + 72) = *(v1 + v3) & 1;
    v13 = sub_21700E384();
    v9 = [objc_opt_self() defaultCenter];
    if (qword_280E29C40 == -1)
    {
LABEL_21:
      v21 = qword_280E739E0;
      v22 = sub_2169FD720(v13);

      sub_216ED18A0(v21, v1, v22, v9);

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_21;
  }

  if (v2 == 2 || ((v19 ^ v2) & 1) != 0)
  {
    goto LABEL_20;
  }
}

void sub_216A01D14(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled) = a1;
  sub_216A019FC(v2);
}

id sub_216A01D2C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_2166AA548(0xD000000000000014, 0x800000021707F690);
  if (result)
  {
    v2 = result;
    v3 = sub_21700E4D4();
    v4 = [v2 BOOLForKey_];

    return (v4 ^ 1);
  }

  return result;
}

uint64_t sub_216A01DF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  sub_216681B04(a1, v1, &qword_27CAB8DF8);
  return sub_2169FF528(v1);
}

void sub_216A01E8C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *a1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_280E73D20);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_216679000, v9, v10, "💬 🔄 GDPR has changed - isPrivacyAcknowledgementRequired: %{BOOL,public}d", v11, 8u);
    MEMORY[0x21CEA1440](v11, -1, -1);
  }

  if ((v7 & 1) == 0)
  {
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "💬 ┃ 🟢 GDPR has been acknowledged, start checking for enablement.", v14, 2u);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    v15 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;

    sub_21677BBA0();
  }
}

uint64_t sub_216A020DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_78_10();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_216A0219C;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_75_9();
  v4 = swift_weakLoadStrong();
  *(v0 + 80) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_31_28();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A0219C()
{
  OUTLINED_FUNCTION_33();
  sub_2166E3A90();

  v0 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_216A02200()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_75_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_31_28();

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216A02298()
{
  OUTLINED_FUNCTION_33();
  *(*(v0 + 80) + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver) = 0;

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A02308()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_216A02424()
{
  OUTLINED_FUNCTION_115_1();
  v23 = v1;
  sub_216A01D14(*(v1 + 152));

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = *(v1 + 80);
  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);

  v4 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v4, v0))
  {
    OUTLINED_FUNCTION_96();
    v22 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_95_10(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8);
    v5 = sub_21700E594();
    v7 = sub_2166A85FC(v5, v6, &v22);

    *(v2 + 4) = v7;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v8, v9, "💬 ┃ Unified Messages enabled?: %{public}s");
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_97_8();
  if (v11 || (v10 & 1) == 0)
  {
    v12 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v14);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_26_4();
    }
  }

  else
  {
    sub_216A03328(*(v1 + 88));
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_216A025F8()
{
  v42 = v1;

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v1[18];
  v40 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v40, qword_280E73D20);
  v3 = v2;
  v4 = sub_217007C84();
  sub_21700ED84();

  if (OUTLINED_FUNCTION_105_7())
  {
    v5 = v1[18];
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_79_14();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_76_10(&dword_216679000, v10, v0, "💬 ❌ Failed to check if Unified Messages is enabled, disabling feature: %{public}@");
    sub_216697664(v7, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  v39 = v1[18];
  v11 = v1[16];
  v13 = v1[12];
  v12 = v1[13];
  v14 = v1[10];
  v15 = v1[11];

  *(v14 + v11) = 0;

  sub_216A01D14(0);
  v16 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_181();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA8);
  sub_2166EF228(&qword_27CABFBB0, &qword_27CABFBA8);

  OUTLINED_FUNCTION_38();
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 2));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  v19 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;
  OUTLINED_FUNCTION_120_0();
  sub_216A07378(v12, v14 + v19);
  swift_endAccess();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = v1[10];
  OUTLINED_FUNCTION_29_2(v40, qword_280E73D20);

  v21 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v21, v12))
  {
    OUTLINED_FUNCTION_96();
    v41 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_95_10(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8);
    v22 = sub_21700E594();
    v24 = sub_2166A85FC(v22, v23, &v41);

    *(v20 + 4) = v24;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v25, v26, "💬 ┃ Unified Messages enabled?: %{public}s");
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_97_8();
  if (v28 || (v27 & 1) == 0)
  {
    v29 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v31);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_26_4();
    }
  }

  else
  {
    sub_216A03328(v1[11]);
  }

  OUTLINED_FUNCTION_3();

  return v37();
}

uint64_t sub_216A02A00()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v5 + 24);
    *(v5 + 40) = v3 & 1;

    return MEMORY[0x2822009F8](sub_216A02B38, v11, 0);
  }
}

uint64_t sub_216A02B38()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_3();
  return v1();
}

uint64_t sub_216A02B68()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v3;
  }

  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A02CA8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 72) & 1;

  return v1(v2);
}

uint64_t sub_216A02D0C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();

  return v0(0);
}

uint64_t sub_216A02D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73D20);
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_216679000, v11, v12, "💬 JSStack reloading, attempting setup again...", v13, 2u);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;

  sub_21677BBA0();
}

uint64_t sub_216A02F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78);
  v6[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A0303C, 0, 0);
}

uint64_t sub_216A0303C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_78_10();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    *(v0 + 128) = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;

    return MEMORY[0x2822009F8](sub_216A030F8, Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v2();
  }
}

uint64_t sub_216A030F8()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  OUTLINED_FUNCTION_75_9();
  sub_216681B04(v2 + v1, v3, &qword_27CABFB78);
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A03180()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v3, v4, v1) == 1)
  {
    sub_216697664(v2, &qword_27CABFB78);
  }

  else
  {
    OUTLINED_FUNCTION_90_9();
    v5();
    sub_21700CC24();
    v6 = OUTLINED_FUNCTION_74_0();
    v7(v6);
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A0325C()
{
  OUTLINED_FUNCTION_33();
  sub_2166E3BD0(*(v0 + 72), *(v0 + 80));
  v1 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A032BC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A03328(uint64_t a1)
{
  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73D20);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217086400, &v19);
    _os_log_impl(&dword_216679000, v5, v6, "💬 ┃┏ Starting %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  sub_216A036CC();
  v9 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
  [v9 reportAppIconBadgeActionMetrics];

  if (!*(v2 + 184))
  {
    type metadata accessor for UnifiedMessages.DataStore();
    swift_allocObject();

    v10 = sub_216B5C4C4(v2, a1);

    sub_216B5A830(sub_216A073E8, v2);

    sub_216B5ACE8();
    sub_216B5ADB4();
    sub_216B5AE94();
    *(v2 + 184) = v10;
  }

  sub_2169FCF54(a1);
  v11 = sub_216A01D2C();
  sub_216A01D14(v11 & 1);

  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = sub_216A01D2C() & 1;

    _os_log_impl(&dword_216679000, v12, v13, "💬 ┃┃ isSubscriptionContentAllowed = %{BOOL}d", v14, 8u);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {
  }

  oslog = sub_217007C84();
  v15 = sub_21700EDA4();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217086400, &v19);
    _os_log_impl(&dword_216679000, oslog, v15, "💬 ┗┗ Ending %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }
}

uint64_t sub_216A036CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217086420, &v15);
    _os_log_impl(&dword_216679000, v6, v7, "💬 ┃┃ %{public}s Attempt to add cache policy.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  v10 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  v11 = sub_216A06C54(&unk_280E41BA8, type metadata accessor for UnifiedMessages.Coordinator);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v11;
  v12[4] = v1;
  swift_retain_n();
  sub_21677BBA0();
}

uint64_t sub_216A03928()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = *(v0[20] + 152);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_88_8();
  v2 = sub_21700E4D4();
  v3 = [v1 arrayForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_216A03A84;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_216A04080;
  v0[13] = &block_descriptor_92_0;
  v0[14] = v4;
  [v3 valueWithCompletion_];
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200938](v5);
}

uint64_t sub_216A03A84()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = sub_216A03FF8;
  }

  else
  {
    v6 = sub_216A03B98;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_216A03B98()
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  v1 = *(v0 + 144);
  sub_21700E814();

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_25_26(v2);
  OUTLINED_FUNCTION_74_12();

  return sub_216A04118();
}

uint64_t sub_216A03D6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 153) = v5;

  v7 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A03E68()
{
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
  v4 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    swift_slowAlloc();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v0 = 136446466;
    OUTLINED_FUNCTION_7_54();
    *(v0 + 4) = sub_2166A85FC(0xD000000000000010, v7, v8);
    *(v0 + 12) = 1024;
    *(v0 + 14) = v6;
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_4();
  }

  if (*(v1 + 153) == 1)
  {
    v14 = *(v1 + 160);
    v15 = *(v14 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
    sub_2169FCC9C(*(v14 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_cacheRequiredPlacements));
    v17 = sub_216E64354(v16);
    v18 = sub_21700E4D4();
    sub_216A06D30(1, v17, v18, v15);
  }

  OUTLINED_FUNCTION_3();

  return v19();
}

uint64_t sub_216A03FF8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_25_26(v2);

  return sub_216A04118();
}

uint64_t *sub_216A04080(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_216A2E2E0(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_216A294DC(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A04138()
{
  OUTLINED_FUNCTION_115_1();
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  OUTLINED_FUNCTION_70_9();
  v3 = sub_21700E4D4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_216697664(v0 + 16, &unk_27CABF7A0);
    v5 = [v1 standardUserDefaults];
    OUTLINED_FUNCTION_70_9();
    v6 = sub_21700E4D4();
    v7 = [v5 BOOLForKey_];

    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v8, qword_280E73D20);
    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_41_0(v10))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_64_1();
      *v3 = 136446466;
      OUTLINED_FUNCTION_17_5();
      v11 = OUTLINED_FUNCTION_70_9();
      *(v3 + 1) = sub_2166A85FC(v11, v12, v13);
      *(v3 + 6) = 1026;
      *(v3 + 14) = v7;
      OUTLINED_FUNCTION_123_0();
      _os_log_impl(v14, v15, v16, v17, v18, 0x12u);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_56_1();
    }

    OUTLINED_FUNCTION_43_4();

    return v19(v7);
  }

  else
  {
    v21 = *(v0 + 56);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_216697664(v0 + 16, &unk_27CABF7A0);
    type metadata accessor for JSIntentDispatcher();
    v22 = *(v21 + 208);
    sub_21700D4D4();
    OUTLINED_FUNCTION_38();
    sub_21700E094();
    *(v0 + 64) = *(v0 + 48);
    *(v0 + 72) = sub_2166E5204(0xD00000000000001FLL, 0x80000002170864A0, v22);
    v23 = swift_task_alloc();
    *(v0 + 80) = v23;
    *v23 = v0;
    v23[1] = sub_216A0444C;

    return sub_2166E5748();
  }
}

uint64_t sub_216A0444C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v7 + 96) = v6;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A0458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v12, qword_280E73D20);
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_41_0(v14))
  {
    v15 = *(v10 + 96);
    swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_64_1();
    *v11 = 136446466;
    OUTLINED_FUNCTION_7_54();
    v16 = OUTLINED_FUNCTION_70_9();
    *(v11 + 4) = sub_2166A85FC(v16, v17, v18);
    *(v11 + 12) = 1026;
    *(v11 + 14) = (v15 >> 8) & 1;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_74_12();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_216A046C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v12, qword_280E73D20);
  v13 = sub_217007C84();
  v14 = sub_21700ED84();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v10 + 88);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_72_12();
    *v17 = 136446210;
    OUTLINED_FUNCTION_7_54();
    v18 = OUTLINED_FUNCTION_70_9();
    *(v17 + 4) = sub_2166A85FC(v18, v19, v20);
    OUTLINED_FUNCTION_76_10(&dword_216679000, v21, v14, "💬 ┃┃ %{public}s Could not check isCachePolicyEnabled, so setting to false");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_74_12();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_216A047EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  return MEMORY[0x2822009F8](sub_216A0480C, a5, 0);
}

uint64_t sub_216A0480C()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  sub_21700D4D4();
  OUTLINED_FUNCTION_90_9();
  sub_21700E094();
  v1 = v0[33];
  v2 = v0[34];
  v0[39] = v1;
  v0[40] = v2;
  v0[41] = __swift_project_boxed_opaque_existential_1(v0 + 30, v1);
  v0[42] = *(v2 + 8);
  v0[43] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0xD4C7000000000000;
  sub_21700EA34();
  v0[44] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v3 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A048DC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[42];

  v2 = OUTLINED_FUNCTION_74_0();
  v0[35] = v1(v2);
  v0[36] = v3;
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A04960()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 30));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v5 = *(v3 + 128);
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = *(v3 + 120);
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 1682535268;
  *(inited + 88) = 0xE400000000000000;
  sub_21700E294();
  OUTLINED_FUNCTION_92_7();
  sub_21700DF14();
  sub_21700E284();
  v7 = sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 120) = v6;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000217082740;
  *(inited + 168) = v6;
  *(inited + 176) = 0x746E6F4365676170;
  *(inited + 216) = v6;
  *(inited + 184) = 0xEB00000000747865;
  *(inited + 192) = v1;
  *(inited + 200) = v2;
  OUTLINED_FUNCTION_116();
  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay) = sub_21700E384();

  OUTLINED_FUNCTION_3();

  return v12();
}

void sub_216A04B10(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  sub_2169FD23C(a1);
  v3 = sub_21700E344();
}

void sub_216A04BA8()
{
  if (*(v1 + 184))
  {

    sub_216B5B420();
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v2 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = OUTLINED_FUNCTION_43();
      *v4 = 0;
      _os_log_impl(&dword_216679000, oslog, v0, "💬 ⛔ No data store available. Skip performing natural language search query.", v4, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }
}

void sub_216A04C9C(char *a1)
{
  if (*(v2 + 184))
  {
    v7 = *a1;

    sub_216B5B498(&v7);
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v3 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = OUTLINED_FUNCTION_43();
      *v5 = 0;
      _os_log_impl(&dword_216679000, oslog, v1, "💬 ⛔ No data store available. Skip setting mliState.", v5, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }
}

uint64_t sub_216A04D9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_0();
  v11 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v5, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v15 = a2;
  sub_21700DF14();

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216A04E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_216A04EA8, 0, 0);
}

uint64_t sub_216A04EA8()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A04EC8, v1);
}

uint64_t sub_216A04EC8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  sub_2169FCF54(*(v0 + 48));
  *(v0 + 64) = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_216A04F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  v13 = *(v11 + 64);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    if (*(v11 + 24))
    {
      if (qword_280E416F8 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v14 = *(v11 + 40);
      v15 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v15, qword_280E73D20);
      sub_21700DF14();
      v16 = sub_217007C84();
      v17 = sub_21700EDA4();

      if (!OUTLINED_FUNCTION_105_7())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_56_14();
      OUTLINED_FUNCTION_72_12();
      *v14 = 136446466;
      OUTLINED_FUNCTION_7_54();
      v18 = OUTLINED_FUNCTION_88_8();
      v21 = sub_2166A85FC(v18, v19, v20);
      *(v14 + 14) = OUTLINED_FUNCTION_67_10(v21, v22);
      v23 = "💬 %{public}s pushed dialogRequest: '%{public}s'";
    }

    else
    {
      if (qword_280E416F8 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v14 = *(v11 + 40);
      v44 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v44, qword_280E73D20);
      sub_21700DF14();
      v16 = sub_217007C84();
      v17 = sub_21700EDA4();

      if (!OUTLINED_FUNCTION_105_7())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_56_14();
      OUTLINED_FUNCTION_72_12();
      *v14 = 136446466;
      OUTLINED_FUNCTION_7_54();
      v45 = OUTLINED_FUNCTION_88_8();
      v48 = sub_2166A85FC(v45, v46, v47);
      *(v14 + 14) = OUTLINED_FUNCTION_67_10(v48, v49);
      v23 = "💬 %{public}s dialogRequest is nil: '%{public}s'";
    }

    _os_log_impl(&dword_216679000, v16, v17, v23, v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
LABEL_20:

    sub_21700EA34();
    *(v11 + 56) = OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_47();
    sub_21700E9B4();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_74_12();

    return MEMORY[0x2822009F8](v50, v51, v52);
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v24 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v24, qword_280E73D20);
  v25 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v10 = 136446210;
    OUTLINED_FUNCTION_7_54();
    v27 = OUTLINED_FUNCTION_88_8();
    *(v10 + 4) = sub_2166A85FC(v27, v28, v29);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_4();
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_74_12();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_216A05238()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_216A05318(v4, v1, v2, v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_216A05318(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  sub_21700DF14();
  sub_217007D74();
}

uint64_t sub_216A0543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A0545C, 0, 0);
}

uint64_t sub_216A0545C()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A075A0, v1);
}

void sub_216A05564(uint64_t a1, void *a2)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
  v4 = a2;
  oslog = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_79_14();
    *v6 = 138543362;
    *(v6 + 4) = v4;
    *v7 = a2;
    v8 = v4;
    _os_log_impl(&dword_216679000, oslog, v5, "💬 '%{public}@'", v6, 0xCu);
    sub_216697664(v7, &qword_27CABF880);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_6();
  }
}

void sub_216A05724()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v6 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v6, qword_280E73D20);
  v7 = v3;
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_115_0();
    v11 = OUTLINED_FUNCTION_79_14();
    v12 = OUTLINED_FUNCTION_45_19();
    v18 = v12;
    *v10 = 136446466;
    OUTLINED_FUNCTION_17_5();
    *(v10 + 4) = sub_2166A85FC(0xD000000000000020, v13, &v18);
    *(v10 + 12) = 2114;
    *(v10 + 14) = v7;
    *v11 = v3;
    v14 = v7;
    _os_log_impl(&dword_216679000, v8, v9, "💬 %{public}s Engagement request: '%{public}@'", v10, 0x16u);
    sub_216697664(v11, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  if (v3)
  {
    v15 = sub_21700EA74();
    OUTLINED_FUNCTION_22_16(v15);
    OUTLINED_FUNCTION_53();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v16[5] = v7;
    v17 = v7;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A05910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A05930, 0, 0);
}

uint64_t sub_216A05930()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A05950, v1);
}

uint64_t sub_216A05950()
{
  OUTLINED_FUNCTION_33();
  sub_216A0148C();
  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A05A54()
{
  OUTLINED_FUNCTION_49();
  v41 = v1;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v13 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v13, qword_280E73D20);
  v14 = v8;
  sub_21700DF14();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v12;
    v18 = v17;
    OUTLINED_FUNCTION_79_14();
    v19 = OUTLINED_FUNCTION_56_14();
    v40 = v6;
    v43 = v19;
    *v18 = 136446978;
    *(v18 + 4) = sub_2166A85FC(0xD000000000000041, 0x8000000217086310, &v43);
    *(v18 + 12) = 2114;
    *(v18 + 14) = v14;
    *v0 = v8;
    *(v18 + 22) = 2080;
    v20 = v14;
    *(v18 + 24) = sub_2166A85FC(v42, v4, &v43);
    *(v18 + 32) = 2048;
    *(v18 + 34) = v40;
    _os_log_impl(&dword_216679000, v15, v16, "💬 %{public}s Engagement request '%{public}@' for '%s' with action: %ld", v18, 0x2Au);
    sub_216697664(v0, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    v6 = v40;
    OUTLINED_FUNCTION_6();
    v12 = v39;
    OUTLINED_FUNCTION_6();
  }

  if (v6 < 2)
  {
    OUTLINED_FUNCTION_26();

    sub_216A04D9C(v21, v22, v23, v24);
    return;
  }

  if (v6 == 2)
  {
    v25 = sub_21700EA74();
    OUTLINED_FUNCTION_88(v12, v26, v27, v25);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v42;
    v28[4] = v41;
    v28[5] = v29;
    v28[6] = v4;
    v28[7] = v8;
    v28[8] = 2;
    v30 = v14;
    sub_21700DF14();

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();

LABEL_14:
    OUTLINED_FUNCTION_26();
    return;
  }

  v42 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v42, v31))
  {
    v33 = OUTLINED_FUNCTION_115_0();
    v34 = OUTLINED_FUNCTION_45_19();
    v43 = v34;
    *v33 = 136446466;
    OUTLINED_FUNCTION_17_5();
    *(v33 + 4) = sub_2166A85FC(0xD000000000000041, v35, &v43);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v6;
    _os_log_impl(&dword_216679000, v42, v0, "💬 %{public}s Unsupported presentation action: %ld", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_15_20();

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A05DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v8[11] = a8;
  v8[12] = v9;
  return MEMORY[0x2822009F8](sub_216A05E1C, a4, 0);
}

uint64_t sub_216A05E44()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 49);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v5 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v5, qword_280E73D20);
    v6 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_91_11();
      *v0 = 136446210;
      OUTLINED_FUNCTION_7_54();
      *(v0 + 4) = sub_2166A85FC(0xD000000000000041, v8, v9);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_3();

    return v15();
  }

  else
  {
    v4 = *(v1 + 56);
    *(v1 + 104) = *(v4 + 208);

    return MEMORY[0x2822009F8](sub_216A05FB0, v4, 0);
  }
}

uint64_t sub_216A05FB0()
{
  OUTLINED_FUNCTION_33();
  sub_2169FCF54(*(v0 + 104));
  v1 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A06010()
{
  OUTLINED_FUNCTION_33();
  sub_21700EA34();
  *(v0 + 112) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A06088()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v5 = v2;
  sub_21700DF14();
  sub_217007D74();
  v6 = *(v0 + 32);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_216A061EC()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_216A0623C()
{

  v1 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__impressionsTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB70);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_216697664(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver, &qword_27CABFB78);

  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__pageMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB80);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_216A063D4()
{
  sub_216A0623C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_216A06408@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216A06448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A064B8()
{
  OUTLINED_FUNCTION_82_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_64_13();

  return sub_2169FF104(v4, v5, v6, v7, v8, v9, v10);
}

void sub_216A065B8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [a2 enqueueMessageEvent_];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_216A06BD0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F82C0;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  [v10 addFinishBlock_];
  _Block_release(v13);
}

uint64_t sub_216A06790(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10);
    return sub_21700E9C4();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10);
    return sub_21700E9D4();
  }
}

uint64_t sub_216A06814()
{
  OUTLINED_FUNCTION_17_5();
  result = sub_21700E4D4();
  qword_280E739E0 = result;
  return result;
}

id sub_216A06884()
{
  v1 = sub_21700E4D4();

  sub_216685F4C(0, &qword_280E29BA8);
  v2 = sub_21700E804();

  v3 = [v0 initWithServiceType:v1 placementInfo:v2];

  return v3;
}

id sub_216A06918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700E4D4();

  if (a3)
  {
    v6 = sub_21700E344();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6];

  return v7;
}

unint64_t sub_216A069B8()
{
  result = qword_280E44FE8[0];
  if (!qword_280E44FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44FE8);
  }

  return result;
}

uint64_t sub_216A06A0C(void *a1)
{
  v1 = [a1 placementsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAF8);
  v3 = sub_21700E354();

  return v3;
}

uint64_t sub_216A06A88(void *a1)
{
  v2 = [a1 messageActions];

  if (!v2)
  {
    return 0;
  }

  sub_216685F4C(0, &unk_280E29B90);
  v3 = sub_21700E824();

  return v3;
}

uint64_t sub_216A06B00()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A0543C(v3, v4, v5, v6, v7);
}

uint64_t sub_216A06BD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10);
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_74_0();

  return sub_216A06790(v1, v2);
}

uint64_t sub_216A06C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A06C9C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A047EC(v3, v4, v5, v6, v7);
}

void sub_216A06D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_21700EB74();

  [a4 addCachePolicy:a1 forPlacements:v7 serviceType:a3];
}

uint64_t sub_216A06DC0()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_3_3(v4);
  OUTLINED_FUNCTION_64_13();

  return sub_216A05DEC(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_216A06E74()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_64_13();

  return sub_216A04E84(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216A06F64()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A05910(v3, v4, v5, v6, v7);
}

void sub_216A06FF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v7 = sub_21700EB74();

  [a4 addObserver:a1 placements:v7 serviceType:a3];
}

uint64_t sub_216A07094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v7 = *(a2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  v8 = OUTLINED_FUNCTION_116();
  v10 = v9(v8);
  sub_2169FD23C(v10);

  v11 = sub_21700E344();

  v12 = OUTLINED_FUNCTION_38();
  return v13(v12);
}

uint64_t sub_216A071F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_2169FE364(v5, v6, v7, v1);
}

uint64_t sub_216A07294()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A020BC(v5, v6, v7, v1);
}

uint64_t objectdestroy_34Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216A07378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A073EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A03908(v5, v6, v7, v1);
}

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A074FC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216A02F34(v3, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_79_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_100_9()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_101_6()
{
}

unint64_t sub_216A07650()
{
  result = qword_280E30DD0[0];
  if (!qword_280E30DD0[0])
  {
    type metadata accessor for CompleteSocialOnboardingAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30DD0);
  }

  return result;
}

uint64_t sub_216A076A8()
{
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v0 = v3[0];
  sub_216CACDBC();
  v3[3] = sub_21700D7C4();
  v3[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_21700D7B4();
  sub_21700D2A4();
  v1 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t type metadata accessor for RemoveDownloadAction()
{
  result = qword_280E3BAC8;
  if (!qword_280E3BAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A077F8()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166DF3F4();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216A07894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v42 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v41 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_21700CE04();
  v22 = a2;
  v48 = v7;
  v23 = *(v7 + 16);
  v24 = v5;
  v23(v12, v22, v5);
  v25 = v45;
  sub_21700D224();
  if (v25)
  {
    (*(v48 + 8))(v22, v5);
    return (*(v46 + 8))(v49, v47);
  }

  else
  {
    v45 = type metadata accessor for RemoveDownloadAction();
    v40 = *(v45 + 20);
    (*(v41 + 32))(v44, v21, v17);
    v27 = v43;
    v28 = v49;
    v29 = v22;
    sub_21700CE04();
    v23(v42, v22, v24);
    sub_216AC5BB0();
    v30 = v44;
    *(v44 + v40) = v31;
    sub_21700CE04();
    v32 = sub_21700CDB4();
    v34 = v33;
    (*(v48 + 8))(v29, v24);
    v35 = *(v46 + 8);
    v36 = v28;
    v37 = v47;
    v35(v36, v47);
    result = (v35)(v27, v37);
    v38 = (v30 + *(v45 + 24));
    *v38 = v32;
    v38[1] = v34;
  }

  return result;
}

uint64_t sub_216A07C64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v72 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v60 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v59 = v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v58 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v23 = sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v62 = v6;
  v25 = *(v6 + 16);
  v24 = v6 + 16;
  v66 = v4;
  v63 = v25;
  v25(v9, v69, v4);
  v64 = v9;
  sub_21700D734();
  v65 = a1;
  sub_21700CE04();
  v26 = v19;
  sub_21700CDB4();
  OUTLINED_FUNCTION_3_80();
  v27 = *(v12 + 8);
  v67 = v12 + 8;
  v68 = v10;
  v27(v19, v10);
  if (v23)
  {
    v28 = type metadata accessor for SocialProfileHorizontalLockup();
    v70 = v26;
    v71 = v23;
    v29 = v27;
    v61 = v27;
    v30 = v72;
    sub_21700F364();
    sub_21700CE04();
    v31 = v30;
    v32 = v69;
    sub_21700D2E4();
    v29(v22, v68);
    v33 = type metadata accessor for Artwork();
    sub_21700CE04();
    v63(v64, v32, v66);
    sub_2166D7674(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    v34 = v68;
    v58[1] = v24;
    v35 = v61;
    v61(v22, v68);
    v36 = (v31 + v28[7]);
    *v36 = v22;
    v36[1] = v33;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    v35(v22, v34);
    v37 = (v31 + v28[8]);
    *v37 = v22;
    v37[1] = v33;
    v38 = v59;
    sub_21700CE04();
    v39 = sub_21700CD44();
    v35(v38, v34);
    *(v31 + v28[9]) = v39 & 1;
    v40 = v60;
    sub_21700CE04();
    v41 = sub_21700CD44();
    v35(v40, v34);
    v42 = v28[10];
    v58[0] = v28;
    v43 = v72;
    *(v72 + v42) = v41 & 1;
    v44 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    v45 = v65;
    sub_21700CE04();
    v46 = v69;
    v47 = v66;
    v63(v64, v69, v66);
    sub_2166D7674(qword_280E40390, type metadata accessor for ContentDescriptor);
    v48 = v43;
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    (*(v62 + 8))(v46, v47);
    v49 = v45;
    v50 = v68;
    v51 = v61;
    v61(v49, v68);
    result = v51(v22, v50);
    v53 = (v48 + *(v58[0] + 44));
    *v53 = v22;
    v53[1] = v44;
  }

  else
  {
    v54 = sub_21700E2E4();
    sub_2166D7674(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v56 = v55;
    v57 = type metadata accessor for SocialProfileHorizontalLockup();
    *v56 = 25705;
    v56[1] = 0xE200000000000000;
    v56[2] = v57;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v62 + 8))(v69, v66);
    v27(v65, v68);
    return sub_2167B0250(v72);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI31SocialBadgingRequestCoordinatorC0c7ProfileE10DescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A083C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A08424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_216A084BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &__src[-v8];
  (*(a2 + 8))(a1, a2, v7);
  v10 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_21669987C(v9, &qword_27CAB6A00);
  }

  else
  {
    memcpy(__dst, v9 + 8, 0x69uLL);
    sub_21686BC90(__dst, __src);
    sub_2168F3F20(v9);
    v11 = *(a2 + 16);
    if (v11(a1, a2) > 0)
    {
      v12 = v11(a1, a2);
      memcpy(__src, __dst, 0x69uLL);
      memcpy(a3, __src, 0x70uLL);
      *(a3 + 14) = v12;
      return result;
    }

    sub_21686BCEC(__dst);
  }

  result = 0.0;
  *a3 = xmmword_217016ED0;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  *(a3 + 14) = 0;
  return result;
}

uint64_t sub_216A0865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v6 = sub_21700B384();
  v8 = v7;
  memcpy(__src, v3, sizeof(__src));
  type metadata accessor for SocialBadgingRequestCoordinator();
  sub_216A09328(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
  KeyPath = swift_getKeyPath();
  sub_216A08958(__dst, v22);
  v10 = sub_217008CF4();
  v12 = v11;
  v22[0] = 0;
  memcpy(v21, __src, 0x78uLL);
  v21[15] = sub_216A088F0;
  v21[16] = 0;
  v21[17] = KeyPath;
  LOBYTE(v21[18]) = 0;
  *(&v21[18] + 1) = *v17;
  HIDWORD(v21[18]) = *&v17[3];
  v21[19] = v10;
  v21[20] = v12;
  v21[21] = sub_216B0E6FC;
  v21[22] = 0;
  LOBYTE(v21[23]) = 0;
  *(&v21[23] + 1) = *v19;
  HIDWORD(v21[23]) = *&v19[3];
  v21[24] = v6;
  v21[25] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBF0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBF8);
  memcpy((a2 + *(v14 + 36)), v21, 0xD0uLL);
  memcpy(v22, __src, sizeof(v22));
  v23 = sub_216A088F0;
  v24 = 0;
  v25 = KeyPath;
  v26 = 0;
  *v27 = *v17;
  *&v27[3] = *&v17[3];
  v28 = v10;
  v29 = v12;
  v30 = sub_216B0E6FC;
  v31 = 0;
  v32 = 0;
  *v33 = *v19;
  *&v33[3] = *&v19[3];
  v34 = v6;
  v35 = v8;
  sub_216681B64(v21, v16, &qword_27CABFC00);
  return sub_21669987C(v22, &qword_27CABFC00);
}

uint64_t sub_216A088F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009C84();
  sub_217007F24();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;

  return sub_21700DF14();
}

uint64_t sub_216A08990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0xC02E000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC18);
  return sub_216A089E8(a1);
}

uint64_t sub_216A089E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    result = sub_216AB9A40(0, v2, 0);
    v4 = v8;
    v5 = v2 - 1;
    while (v5 != -1)
    {
      v9 = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        result = sub_216AB9A40(v6 > 1, v7 + 1, 1);
        v4 = v9;
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v5--;
      if (v5 == -1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC28);
    sub_2166D9530(&qword_280E29E20, &qword_27CABFC20);
    sub_216A09240();
    return sub_21700B154();
  }

  return result;
}

uint64_t sub_216A08B98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v6 = sub_217006FE4();
    (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v3, v6);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC28);
    *(a3 + *(result + 36)) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_216A08C60@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_21700C444();
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_217007474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_217006FC4();
  sub_217007434();
  sub_21700C414();
  sub_2170073E4();
  (*(v1 + 8))(v3, v32);
  v12 = *(v6 + 8);
  v12(v8, v5);
  v13 = sub_217006FA4();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2167C505C();
  sub_2170073F4();

  v12(v11, v5);
  v17 = sub_21700ACF4();
  sub_2170081E4();
  v18 = v34[11];
  LODWORD(v12) = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = sub_21700B3B4();
  v25 = v24;
  v26 = sub_21700B3B4();
  v28 = v27;
  v42[0] = v18;
  v42[1] = __PAIR64__(v19, v12);
  v42[2] = v20;
  v42[3] = v21;
  v42[4] = v22;
  v42[5] = v17;
  LOWORD(v42[6]) = 256;
  *(&v42[6] + 2) = v40;
  HIWORD(v42[6]) = v41;
  v42[7] = v23;
  v42[8] = v25;
  v42[9] = v26;
  v42[10] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC48);
  v30 = v33;
  memcpy((v33 + *(v29 + 36)), v42, 0x58uLL);
  v43 = v18;
  v44 = v12;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v17;
  v50 = 256;
  v51 = v40;
  v52 = v41;
  v53 = v23;
  v54 = v25;
  v55 = v26;
  v56 = v28;
  sub_216681B64(v42, v34, &qword_27CABFC50);
  sub_21669987C(&v43, &qword_27CABFC50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC58);
  *(v30 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216A09050(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = sub_216A084BC(v5, v6, v9);
  MEMORY[0x21CE9B900](v9, a2, &type metadata for SocialBadgingViewModifier, a3, v7);
  memcpy(__dst, v9, sizeof(__dst));
  return sub_216A09208(__dst);
}

unint64_t sub_216A09108()
{
  result = qword_27CABFC08;
  if (!qword_27CABFC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFBF8);
    sub_2166D9530(&qword_280E2A8B0, &qword_27CABFBF0);
    sub_2166D9530(&qword_27CABFC10, &qword_27CABFC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC08);
  }

  return result;
}

unint64_t sub_216A09240()
{
  result = qword_280E2B228;
  if (!qword_280E2B228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC28);
    sub_216A09328(qword_280E2B7D8, type metadata accessor for BadgeView);
    sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B228);
  }

  return result;
}

uint64_t sub_216A09328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BadgeView()
{
  result = qword_280E2B7A0;
  if (!qword_280E2B7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A093E4()
{
  result = sub_217006FE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A0946C()
{
  result = qword_27CABFC60;
  if (!qword_27CABFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC58);
    sub_216A09524();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC60);
  }

  return result;
}

unint64_t sub_216A09524()
{
  result = qword_27CABFC68;
  if (!qword_27CABFC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC48);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CABFC70, &qword_27CABFC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC68);
  }

  return result;
}

uint64_t sub_216A09608(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_216A0965C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216A096CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v9 = sub_21700CDB4();
  v21 = v10;
  v22 = v9;
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v13 = v12;
  v11(v8, v5);
  sub_21700CE04();
  v14 = sub_21700CDB4();
  v16 = v15;
  v17 = sub_21700CF34();
  (*(*(v17 - 8) + 8))(v23, v17);
  v11(a1, v5);
  result = (v11)(v8, v5);
  v19 = v21;
  *a3 = v22;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v16;
  return result;
}

double sub_216A098DC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_216A096CC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_216A09924()
{
  result = qword_27CABFC78;
  if (!qword_27CABFC78)
  {
    type metadata accessor for Section.Header.ColumnHeader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC78);
  }

  return result;
}

__n128 sub_216A0997C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Section.Header.ColumnHeader(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  v7 = (a1 + v4[6]);
  v8 = v7[1];
  v9 = (a1 + v4[7]);
  v11 = *v9;
  v10 = v9[1];
  v15 = *v7;
  v14 = *v5;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216A09A78(a1);
  *&v12 = v14;
  result.n128_u64[0] = v15;
  *(&v12 + 1) = v6;
  result.n128_u64[1] = v8;
  *a2 = v12;
  *(a2 + 16) = result;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
  return result;
}

double sub_216A09A34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&result = sub_216A0997C(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_216A09A78(uint64_t a1)
{
  v2 = type metadata accessor for Section.Header.ColumnHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ExpandableParagraphView()
{
  result = qword_280E385C0;
  if (!qword_280E385C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A09B48()
{
  result = type metadata accessor for ParagraphComponentModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216A09BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ParagraphComponentModel();
  v4 = *(v3 + 28);
  v5 = (v1 + *(v3 + 24));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700D234();
  v11 = a1 + v10[25];
  sub_21700AEA4();
  *v11 = v17;
  *(v11 + 8) = v18;
  v12 = v10[26];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10);
  swift_storeEnumTagMultiPayload();
  result = sub_216A09D20(v1, a1);
  *(a1 + v10[17]) = 1;
  *(a1 + v10[18]) = 1;
  v14 = (a1 + v10[20]);
  *v14 = v7;
  v14[1] = v6;
  v15 = (a1 + v10[19]);
  *v15 = v9;
  v15[1] = v8;
  *(a1 + v10[21]) = 8;
  *(a1 + v10[23]) = 0;
  v16 = (a1 + v10[22]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_216A09D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ModalPresentationDescriptor();
  MEMORY[0x28223BE20](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for ParagraphComponentModel();
  v19 = (a1 + *(v18 + 28));
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(a1) = *(a1 + *(v18 + 32));
  sub_21700DF14();
  sub_21700D234();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = v20;
  *(v8 + 5) = v21;
  v8[48] = 8;
  *(v8 + 7) = 0;
  v8[64] = a1;
  sub_216A0A1D4(v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_21700D234();
    sub_216A0A244(v14);
    if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
    {
      sub_216A0A244(v11);
    }
  }

  else
  {
    sub_216A0A244(v14);
    (*(v4 + 32))(v6, v11, v3);
  }

  v22 = v25;
  (*(v4 + 32))(&v8[*(v25 + 40)], v6, v3);
  sub_216A0A2AC(v8, v17, type metadata accessor for ModalPresentationDescriptor);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
  v23 = v26;
  sub_216A0A314(v17, v26);
  result = type metadata accessor for ParagraphView(0);
  *(v23 + *(result + 20)) = 0;
  *(v23 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_216A0A0C4(uint64_t a1)
{
  result = sub_216A0A11C(qword_280E38600, type metadata accessor for ExpandableParagraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0A11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A0A170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0A1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0A244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A0A2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_216A0A314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A0A384()
{
  result = qword_27CABBE28;
  if (!qword_27CABBE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBE28);
  }

  return result;
}

uint64_t type metadata accessor for ResumePlaybackAction()
{
  result = qword_280E3B950;
  if (!qword_280E3B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0A498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

void sub_216A0A718(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3);
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_280E29C30 != -1)
  {
    OUTLINED_FUNCTION_0_110();
    v4 = v5;
  }

  [v4 addObserver:v2 selector:sel_eventDidFire name:qword_280E739D8 object:0];
}

void sub_216A0A7E4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E29C30 != -1)
  {
    OUTLINED_FUNCTION_0_110();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E739D8 object:0];
}

uint64_t sub_216A0A894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageRenderMetricsViewModifier();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 1) = swift_getKeyPath();
  v9[16] = 0;
  v10 = *(v6 + 24);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC80);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;

  MEMORY[0x21CE9B900](v9, a2, v6, a3);
  return sub_216A0A9E4(v9);
}

uint64_t type metadata accessor for PageRenderMetricsViewModifier()
{
  result = qword_280E314D0;
  if (!qword_280E314D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0A9E4(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_216A0AA68()
{
  sub_21700DDB4();
  if (v0 <= 0x3F)
  {
    sub_2166DB904();
    if (v1 <= 0x3F)
    {
      sub_216A0AB04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A0AB04()
{
  if (!qword_280E2B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC90);
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4C8);
    }
  }
}

uint64_t sub_216A0AB84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderMetricsViewModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC98);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCA0);
  OUTLINED_FUNCTION_34();
  (*(v13 + 16))(v10, a1);
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCA8) + 36)];
  *v14 = sub_216A0B64C;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11);
  v16 = &v10[*(v7 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_216A0B664;
  *(v16 + 3) = v15;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v11);
  OUTLINED_FUNCTION_0_111();
  sub_216A0B7B8(v18, &qword_27CABFC98, &unk_217034FA8, v19);
  sub_21700A284();

  return sub_216A0B8A0(v10);
}

uint64_t sub_216A0AE3C(uint64_t a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC90);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_21700DCA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageRenderMetricsViewModifier();
  sub_216C0C998();
  v11 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {

    sub_21700ED94();
    v12 = sub_217009C34();
    v15 = v2;
    v13 = v12;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v11, 0);
    (*(v3 + 8))(v5, v15);
  }

  sub_21700DC94();
  sub_21700DD74();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_216A0B0AC(uint64_t a1, uint64_t a2)
{
  v31 = sub_21700DD44();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C394();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700DD54();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700C3A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D7EF58])
  {
    goto LABEL_2;
  }

  if (v17 == *MEMORY[0x277D7EF48])
  {
    (*(v13 + 96))(v16, v12);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCB0);
    v22 = v29;
    v21 = v30;
    (*(v29 + 32))(v8, &v16[*(v20 + 48)], v30);
    sub_216A0B908();
    v23 = swift_allocError();
    (*(v22 + 16))(v24, v8, v21);
    *v5 = v23;
    v5[8] = 1;
    v25 = v31;
    (*(v3 + 104))(v5, *MEMORY[0x277D22278], v31);
    sub_21700DD84();
    (*(v3 + 8))(v5, v25);
    return (*(v22 + 8))(v8, v21);
  }

  else
  {
    if (v17 == *MEMORY[0x277D7EF60])
    {
LABEL_2:
      *v5 = 1;
      v18 = v31;
      (*(v3 + 104))(v5, *MEMORY[0x277D22288], v31);
      sub_21700DD84();
      return (*(v3 + 8))(v5, v18);
    }

    if (v17 == *MEMORY[0x277D7EF50])
    {
      *v11 = 1;
      v26 = v28;
      (*(v28 + 104))(v11, *MEMORY[0x277D22298], v9);
      sub_21700DD94();
      return (*(v26 + 8))(v11, v9);
    }

    else
    {
      *v5 = 1;
      v27 = v31;
      (*(v3 + 104))(v5, *MEMORY[0x277D22288], v31);
      sub_21700DD84();
      (*(v3 + 8))(v5, v27);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t sub_216A0B584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0B5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0B67C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PageRenderMetricsViewModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_216A0B6F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PageRenderMetricsViewModifier();

  return sub_216A0B0AC(a1, a2);
}

uint64_t sub_216A0B7B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216A0B83C()
{
  result = qword_280E2A8A0;
  if (!qword_280E2A8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A8A0);
  }

  return result;
}

uint64_t sub_216A0B8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A0B908()
{
  result = qword_27CABFCB8;
  if (!qword_27CABFCB8)
  {
    sub_21700C394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCB8);
  }

  return result;
}

uint64_t sub_216A0B99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v51 - v6;
  v62 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v56 = v9;
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - v11;
  v12 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v55 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v65 = v20;
  v66 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v59 = v22;
  MEMORY[0x28223BE20](v23);
  v24 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v60 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  sub_21700CE04();
  v29 = *(v14 + 16);
  v29(v19, a2, v12);
  v30 = v64;
  sub_21700D224();
  if (v30)
  {
    (*(v14 + 8))(a2, v12);
    return (*(v66 + 8))(v67, v65);
  }

  else
  {
    v52 = v29;
    v53 = v24;
    v54 = v14;
    v64 = v12;
    (*(v60 + 32))(v63, v28, v24);
    v32 = v59;
    sub_21700CE04();
    v33 = v61;
    sub_21700CD74();
    v34 = v65;
    v35 = v66 + 8;
    v36 = *(v66 + 8);
    v36(v32, v65);
    if (__swift_getEnumTagSinglePayload(v33, 1, v62) == 1)
    {
      v37 = v34;
      sub_216A0BF90(v61);
      v38 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      v40 = v39;
      v41 = type metadata accessor for ApproveAllFollowRequestsAction();
      *v40 = 0xD000000000000010;
      v40[1] = 0x8000000217085C70;
      v40[2] = v41;
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D22530], v38);
      swift_willThrow();
      v42 = OUTLINED_FUNCTION_2_74();
      v43(v42, v64);
      v36(v67, v37);
      return (*(v60 + 8))(v63, v53);
    }

    else
    {
      v66 = v35;
      v45 = v57;
      v44 = v58;
      v46 = v62;
      (*(v58 + 32))(v57, v61, v62);
      (*(v44 + 16))(v56, v45, v46);
      v47 = v64;
      v52(v55, a2, v64);
      sub_216A0BFF8();
      v48 = sub_21700E934();
      v49 = OUTLINED_FUNCTION_2_74();
      v50(v49, v47);
      v36(v67, v65);
      (*(v44 + 8))(v45, v62);
      result = type metadata accessor for ApproveAllFollowRequestsAction();
      *(v63 + *(result + 20)) = v48;
    }
  }

  return result;
}

uint64_t sub_216A0BF90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A0BFF8()
{
  result = qword_27CABFCC0;
  if (!qword_27CABFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InlineUpsell.AssetName(_BYTE *result, int a2, int a3)
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

uint64_t sub_216A0C148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v42 = v6;
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v41 = *(v11 + 8);
  v41(v17, v9);
  if (v21)
  {
    v44 = v19;
    v45 = v21;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    (*(v42 + 16))(v8, v46, v43);
    v22 = type metadata accessor for InlineUpsell();
    OUTLINED_FUNCTION_2_75();
    sub_21700D734();
    OUTLINED_FUNCTION_4_62();
    sub_21700CDB4();
    v23 = OUTLINED_FUNCTION_0_112();
    v24 = v41;
    (v41)(v23);
    v25 = (a3 + v22[6]);
    *v25 = v15;
    v25[1] = v8;
    sub_21700CE04();
    sub_21700CDB4();
    v26 = OUTLINED_FUNCTION_0_112();
    v24(v26);
    v27 = (a3 + v22[7]);
    *v27 = v15;
    v27[1] = v8;
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_0_112();
    v24(v28);
    v29 = (a3 + v22[8]);
    *v29 = v15;
    v29[1] = v8;
    OUTLINED_FUNCTION_4_62();
    v30 = v46;
    sub_21700D2E4();
    v31 = OUTLINED_FUNCTION_19();
    v24(v31);
    sub_21700CE04();
    OUTLINED_FUNCTION_2_75();
    sub_21700D2E4();
    v32 = OUTLINED_FUNCTION_19();
    v24(v32);
    sub_21700CE04();
    OUTLINED_FUNCTION_2_75();
    sub_21700D2E4();
    v33 = OUTLINED_FUNCTION_19();
    v24(v33);
    sub_21700CE04();
    sub_216A0C854();
    sub_21700CD14();
    (*(v42 + 8))(v30, v43);
    (v24)(v18, v9);
    v34 = OUTLINED_FUNCTION_19();
    result = (v24)(v34);
    *(a3 + v22[12]) = v44;
  }

  else
  {
    v36 = sub_21700E2E4();
    sub_216A0C80C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v38 = v37;
    v39 = type metadata accessor for InlineUpsell();
    *v38 = 25705;
    v38[1] = 0xE200000000000000;
    v38[2] = v39;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v42 + 8))(v46, v43);
    return (v41)(v18, v9);
  }

  return result;
}

BOOL sub_216A0C65C()
{
  v0 = sub_21700F5E4();

  return v0 != 0;
}

BOOL sub_216A0C6CC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_216A0C65C();
  *a1 = result;
  return result;
}

unint64_t sub_216A0C724()
{
  result = qword_27CABFCC8;
  if (!qword_27CABFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCC8);
  }

  return result;
}

uint64_t sub_216A0C80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216A0C854()
{
  result = qword_27CABFCD0;
  if (!qword_27CABFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFCD0);
  }

  return result;
}

uint64_t sub_216A0C8A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31CollaborationMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216A0C9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_216A0CAC4(a1, a2, a3, &v13 - v7);
  v9 = sub_21678C1C4();
  sub_216697664(v8, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v9;
  v11 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v11;
}

uint64_t sub_216A0CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v97 = a2;
  v7 = sub_2170075A4();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v96 = v8;
  v98 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21700C924();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CollaborationAction();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v95 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v10;
  MEMORY[0x28223BE20](v11);
  v89 = &v72 - v12;
  v87 = sub_21700CFB4();
  v13 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217005EF4();
  v78 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700D704();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v82 = sub_21700D284();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216A0D6CC())
  {
    v75 = v7;
    v76 = a4;
    v77 = v4;
    v74 = a1;
    v73 = sub_21700C7C4();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v32 = (v79 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v33 = v32[1];
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = *v32;
    *(inited + 56) = v33;
    *(inited + 72) = v34;
    *(inited + 80) = 1684957547;
    *(inited + 120) = v34;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x7473696C79616C70;
    *(inited + 104) = 0xE800000000000000;
    sub_21700DF14();
    v35 = sub_21700E384();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v15);
    sub_21700D6F4();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v102 = v35;
    sub_2166EF9C4(&v102, v101);
    v36 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v36;
    sub_2166EF9D4();
    v37 = v100;
    v103 = v34;
    *&v102 = 0x726F62616C6C6F63;
    *(&v102 + 1) = 0xEB00000000657461;
    sub_2166EF9C4(&v102, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v37;
    sub_2166EF9D4();
    v38 = v100;
    v103 = v34;
    *&v102 = 0xD000000000000010;
    *(&v102 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v102, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v100 = v38;
    sub_2166EF9D4();
    v39 = v100;
    sub_216681B04(v27, v24, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
    {
      sub_216697664(v24, &qword_27CABA820);
    }

    else
    {
      v79 = v30;
      v42 = v78;
      (*(v78 + 32))(v17, v24, v15);
      v43 = sub_217005DE4();
      v103 = v34;
      *&v102 = v43;
      *(&v102 + 1) = v44;
      sub_2166EF9C4(&v102, v101);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v39;
      sub_2166EF9D4();
      v39 = v100;
      (*(v42 + 8))(v17, v15);
      v30 = v79;
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v45 = sub_21700CF84();
    v46 = __swift_project_value_buffer(v45, qword_280E73DB0);
    v47 = v86;
    MEMORY[0x21CE9DD70](v73, v30, 0x6E6F74747562, 0xE600000000000000, v39, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v48 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_217013DA0;
    v50 = v49 + v48;
    v51 = v87;
    (*(v13 + 16))(v50, v47, v87);
    v52 = v84;
    v53 = v85;
    (*(v84 + 16))(v83, v21, v85);
    v54 = v80;
    sub_21700D244();
    (*(v13 + 8))(v47, v51);
    (*(v52 + 8))(v21, v53);
    sub_216697664(v27, &qword_27CABA820);
    v55 = v91;
    v56 = *(v91 + 16);
    v57 = v90;
    v58 = v74;
    v59 = v94;
    v56(v90, v74, v94);
    v60 = v89;
    (*(v81 + 32))(v89, v54, v82);
    v61 = *(v88 + 20);
    (*(v55 + 32))(v60 + v61, v57, v59);
    __swift_storeEnumTagSinglePayload(v60 + v61, 0, 1, v59);
    v62 = v76;
    v56(v76, v58, v59);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v63 = v95;
    sub_216A0DE7C(v60, v95);
    v64 = v99;
    v65 = v98;
    v66 = v75;
    (*(v99 + 16))(v98, v97, v75);
    v67 = (*(v92 + 80) + 24) & ~*(v92 + 80);
    v68 = (v93 + *(v64 + 80) + v67) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v77;
    sub_216A0DE7C(v63, v69 + v67);
    (*(v64 + 32))(v69 + v68, v65, v66);
    v70 = type metadata accessor for MenuAction();
    v71 = (v62 + *(v70 + 20));
    *v71 = sub_216A0DEE0;
    v71[1] = v69;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v70);
  }

  else
  {
    v40 = type metadata accessor for MenuAction();

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v40);
  }
}

uint64_t sub_216A0D6CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA780);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_21700C6E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v10 = v16;
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  if ((sub_216A0DAD4() & 1) == 0)
  {
    if (qword_280E464C0 != -1)
    {
      swift_once();
    }

    if ((sub_2166C129C() & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_21700C6F4();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {

      sub_216697664(v2, &qword_27CABA780);
      return 0;
    }

    (*(v4 + 32))(v9, v2, v3);
    sub_21700C6D4();
    sub_216A0E014(&qword_27CABA790, MEMORY[0x277D2B310]);
    v14 = sub_21700F1F4();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_2166B90EC();
  if ((v11 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_2166C0578(&v16);

  if (v17)
  {
    v12 = v18;
    sub_216697664(&v16, &qword_27CAC5980);
    if (v12 != 2 && (v12 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_216A0D9F8(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for CollaborationAction();
  v5[4] = sub_216A0E014(&qword_280E3E2D8, type metadata accessor for CollaborationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216A0DFB0(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216A0DAD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCD8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_21700C694();
  v9 = sub_21700C684();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_216697664(v2, &qword_27CABFCD8);
    v10 = sub_21700C654();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  sub_21700C674();
  (*(*(v9 - 8) + 8))(v2, v9);
  v11 = sub_21700C654();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    goto LABEL_13;
  }

  sub_216681B04(v8, v5, &qword_27CABFCE0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v5, v11);
  if (v13 != *MEMORY[0x277D2B2D8] && v13 != *MEMORY[0x277D2B2E0] && v13 != *MEMORY[0x277D2B2E8])
  {
    (*(v12 + 8))(v5, v11);
    goto LABEL_13;
  }

  v16 = 1;
LABEL_14:
  sub_216697664(v8, &qword_27CABFCE0);
  return v16;
}

uint64_t sub_216A0DD5C()
{

  v1 = OBJC_IVAR____TtC7MusicUI31CollaborationMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CollaborationMenuActionProvider()
{
  result = qword_280E30558;
  if (!qword_280E30558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0DE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0DEE0()
{
  v1 = *(type metadata accessor for CollaborationAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  v3 = *(v0 + 16);

  return sub_216A0D9F8(v3, v0 + v2);
}

uint64_t sub_216A0DFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0E014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A0E134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  type metadata accessor for PageMappedItemsStore();
  v16 = OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
  *(v16 + 16) = sub_21700E384();
  v17 = type metadata accessor for JSReplayPage();
  v27 = a1;
  v28 = a2;
  v29 = v16;
  sub_216CC9FAC();
  v19 = v18;
  sub_216681B04(v4 + *(v17 + 24), v10, &qword_27CAB6BF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6BF0);
    v20 = 0;
  }

  else
  {
    sub_216A0F158(v10, v15, type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0);
    sub_216CCCA0C();
    v20 = v21;
    sub_216A0F1B8(v15, type metadata accessor for Page.Header);
  }

  v22 = type metadata accessor for MappedReplayPage(0);
  v23 = *(v22 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  result = (*(v24 + 16))(&a3[v23], v4);
  *a3 = v19;
  *(a3 + 1) = v16;
  *&a3[*(v22 + 28)] = v20;
  return result;
}

uint64_t sub_216A0E3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD48);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD40);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E450@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD20);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E4A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216A0E4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD28);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_216A0E5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_216A0E64C(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD00, type metadata accessor for MappedReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E6A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216A0E70C(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD08, type metadata accessor for MappedReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_216A0E7D0(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E3FFC0, type metadata accessor for MappedCatalogPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E870(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_280E3FFB8, type metadata accessor for MappedCatalogPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E910(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_27CABFD10, type metadata accessor for MappedSearchPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E988(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E40DB8, type metadata accessor for MappedSearchPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0E9E0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = _s7SectionVMa(0);
  sub_2168C4AF4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CABBB00);
    v14 = type metadata accessor for MappedSection(0);
    v15 = a3;
    v16 = 1;
  }

  else
  {
    sub_216A0F158(v7, v12, type metadata accessor for MappedSection.Content);
    v17 = a1[1];
    v32 = *a1;
    sub_21700DF14();
    v18 = sub_216C2750C();
    v30 = v19;
    v31 = v18;
    v20 = v13[6];
    v21 = type metadata accessor for MappedSection(0);
    sub_216681B04(a1 + v20, a3 + v21[6], &qword_27CABDCC0);
    sub_2169728B8(v12, a3 + v21[7]);
    HIDWORD(v29) = *(a1 + v13[7]);
    sub_216681B04(a1 + v13[5], a3 + v21[9], &qword_27CAB6D58);
    sub_216681B04(a1 + v13[12], a3 + v21[10], &qword_27CABFD18);
    v22 = *(a1 + v13[11]);
    v23 = sub_216970CA0();
    sub_216A0F1B8(v12, type metadata accessor for MappedSection.Content);
    v24 = *(v23 + 16);

    v25 = *(a1 + v13[8]);
    v26 = v31;
    *a3 = v32;
    a3[1] = v17;
    v27 = v30;
    a3[2] = v26;
    a3[3] = v27;
    *(a3 + v21[8]) = WORD2(v29);
    *(a3 + v21[11]) = v22;
    *(a3 + v21[12]) = v24;
    *(a3 + v21[13]) = v25;
    v15 = a3;
    v16 = 0;
    v14 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t sub_216A0EC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  type metadata accessor for PageMappedItemsStore();
  v16 = OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
  *(v16 + 16) = sub_21700E384();
  v17 = type metadata accessor for Page(0);
  v28 = a1;
  v29 = a2;
  v30 = v16;
  sub_216CC9FAC();
  v19 = v18;
  sub_216681B04(v4 + v17[5], v10, &qword_27CAB6BF0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6BF0);
    v20 = 0;
  }

  else
  {
    sub_216A0F158(v10, v15, type metadata accessor for Page.Header);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0);
    sub_216CCCA0C();
    v20 = v21;
    sub_216A0F1B8(v15, type metadata accessor for Page.Header);
  }

  v22 = v17[6];
  v23 = type metadata accessor for MappedCatalogPage(0);
  sub_216681B04(v4 + v22, &a3[v23[5]], &qword_27CAB7A28);
  v24 = v23[8];
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v25 + 16))(&a3[v24], v4);
  result = sub_216681B04(v4 + v17[9], &a3[v23[9]], &qword_27CABFCE8);
  *a3 = v20;
  *&a3[v23[6]] = v19;
  *&a3[v23[7]] = v16;
  return result;
}

uint64_t sub_216A0EF4C()
{
  OUTLINED_FUNCTION_10_46();
  v2 = OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
  *(v2 + 16) = sub_21700E384();
  v3 = type metadata accessor for JSSearchPage();
  sub_216CC9FAC();
  v5 = v4;
  v6 = *(v1 + *(v3 + 28));
  v7 = *(type metadata accessor for MappedSearchPage(0) + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v8 + 16))(&v0[v7], v1);
  *v0 = 0;
  *(v0 + 1) = v5;
  *(v0 + 2) = v6;
  *(v0 + 3) = v2;
  return sub_21700DF14();
}

uint64_t sub_216A0F05C()
{
  OUTLINED_FUNCTION_10_46();
  v2 = OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498);
  *(v2 + 16) = sub_21700E384();
  sub_216CC9FAC();
  v4 = v3;
  v5 = *(type metadata accessor for JSSearchResultsPage(0) + 32);
  v6 = type metadata accessor for MappedSearchResultsPage(0);
  sub_216681B04(v1 + v5, v0 + v6[6], &qword_27CABFD58);
  LOBYTE(v5) = *(v1 + 16);
  result = sub_216EC58B8(v0 + v6[8]);
  *v0 = v4;
  v0[1] = v2;
  *(v0 + v6[7]) = v5;
  return result;
}

uint64_t sub_216A0F158(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A0F1B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A0F240()
{
  sub_21668A338(319, &qword_280E45790, &qword_27CABD4A0);
  if (v0 <= 0x3F)
  {
    sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_216A0F354();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PageMappedItemsStore();
        if (v3 <= 0x3F)
        {
          sub_21700D194();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216A0F354()
{
  if (!qword_280E29F68)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F68);
    }
  }
}

void sub_216A0F3CC()
{
  sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageMappedItemsStore();
    if (v1 <= 0x3F)
    {
      sub_21700D194();
      if (v2 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E45790, &qword_27CABD4A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A0F510(uint64_t a1)
{
  result = sub_216A0E6A4(&qword_280E37DD8, type metadata accessor for MappedSearchResultsPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0F588(uint64_t a1)
{
  result = sub_216A0E6A4(qword_280E37DE0, type metadata accessor for MappedSearchResultsPage);
  *(a1 + 8) = result;
  return result;
}

void sub_216A0F60C()
{
  sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageMappedItemsStore();
    if (v1 <= 0x3F)
    {
      sub_2166D1580(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21700D194();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for UploadedVideoContextMenu()
{
  result = qword_280E35D78;
  if (!qword_280E35D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A0F7C8()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167B84AC();
    if (v1 <= 0x3F)
    {
      sub_2167EE974();
      if (v2 <= 0x3F)
      {
        sub_2170070F4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A0F8B0()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for UploadedVideoContextMenu();
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F50(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216A0FA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_allocate_value_buffer(v0, qword_27CB22950);
  __swift_project_value_buffer(v0, qword_27CB22950);
  return sub_217007C14();
}

_BYTE *storeEnumTagSinglePayload for SwiftMusicInterval(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A0FBC0()
{
  result = qword_27CABFD60;
  if (!qword_27CABFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD60);
  }

  return result;
}

uint64_t sub_216A0FC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for BlockUserAction();
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for BlockUserAction();
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_216A10034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_216A10074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216A10280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEE00444972616559;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216A10358(char a1)
{
  if (a1)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_216A103A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFDB0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A11460();
  OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_9_47();
  if (!v1)
  {
    type metadata accessor for ReplaySelectYearAction(0);
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_0_113();
    sub_216A11418(v9, v10);
    OUTLINED_FUNCTION_8_46();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A104EC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_37(a1);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFDA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_33();
  type metadata accessor for ReplaySelectYearAction(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_216A11460();
  OUTLINED_FUNCTION_11_42();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  v10 = OUTLINED_FUNCTION_6_52();
  OUTLINED_FUNCTION_12_40(v10, v11);
  OUTLINED_FUNCTION_0_113();
  sub_216A11418(v12, v13);
  OUTLINED_FUNCTION_5_58();
  v14 = OUTLINED_FUNCTION_3_4();
  v15(v14);
  v16 = OUTLINED_FUNCTION_7_55();
  v17(v16);
  sub_216A114B4(v9, v19, type metadata accessor for ReplaySelectYearAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return sub_216A11514(v9, type metadata accessor for ReplaySelectYearAction);
}

uint64_t sub_216A10744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A10280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216A1076C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_21_32();
  *a1 = result;
  return result;
}

uint64_t sub_216A10794(uint64_t a1)
{
  v2 = sub_216A11460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A107D0(uint64_t a1)
{
  v2 = sub_216A11460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A10854(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  sub_21700EA34();
  v3[37] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A108F0, v5, v4);
}

uint64_t sub_216A108F0()
{
  v1 = v0[35];

  *(swift_task_alloc() + 16) = v1;
  sub_216C2E88C();

  if (v0[19])
  {
    memcpy(v0 + 2, v0 + 18, 0x80uLL);
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v3 = v0[36];
    if (IsReduceMotionEnabled)
    {
      sub_216880D18((v0 + 2), (v0 + 18));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
      sub_21700B0D4();
    }

    else
    {
      sub_21700B414();
      sub_217008244();
      sub_217008224();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = v0 + 2;
      sub_217008A84();
    }

    v6 = v0[34];
    v7 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 104))(v6, v7);
    sub_216880DBC((v0 + 2));
    OUTLINED_FUNCTION_3();
  }

  else
  {
    sub_216697664((v0 + 18), &qword_27CABA690);
    sub_216A11354();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v4();
}

uint64_t sub_216A10B08(uint64_t a1, void *a2)
{
  if (*(a1 + 96) == *a2 && *(a1 + 104) == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_216A10B60(uint64_t a1, uint64_t a2)
{
  sub_216880D18(a2, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
  return sub_21700B0D4();
}

uint64_t sub_216A10BC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7449646F69726570 && a2 == 0xEC00000044496D65;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216A10C94(char a1)
{
  if (a1)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x7449646F69726570;
  }
}

uint64_t sub_216A10CE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD90);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216A113C4();
  OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_9_47();
  if (!v1)
  {
    type metadata accessor for ReplaySelectPeriodAction(0);
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_0_113();
    sub_216A11418(v9, v10);
    OUTLINED_FUNCTION_8_46();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A10E24@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_37(a1);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_13_33();
  type metadata accessor for ReplaySelectPeriodAction(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_216A113C4();
  OUTLINED_FUNCTION_11_42();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  v10 = OUTLINED_FUNCTION_6_52();
  OUTLINED_FUNCTION_12_40(v10, v11);
  OUTLINED_FUNCTION_0_113();
  sub_216A11418(v12, v13);
  OUTLINED_FUNCTION_5_58();
  v14 = OUTLINED_FUNCTION_3_4();
  v15(v14);
  v16 = OUTLINED_FUNCTION_7_55();
  v17(v16);
  sub_216A114B4(v9, v19, type metadata accessor for ReplaySelectPeriodAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return sub_216A11514(v9, type metadata accessor for ReplaySelectPeriodAction);
}

uint64_t sub_216A11074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_36(v1);

  return sub_216A10854(v2, v3);
}

uint64_t sub_216A1111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A10BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216A11144(uint64_t a1)
{
  v2 = sub_216A113C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A11180(uint64_t a1)
{
  v2 = sub_216A113C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A111BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

unint64_t sub_216A11270(uint64_t a1)
{
  result = sub_216A11298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A11298()
{
  result = qword_27CABFD68;
  if (!qword_27CABFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD68);
  }

  return result;
}

unint64_t sub_216A11354()
{
  result = qword_27CABFD70;
  if (!qword_27CABFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD70);
  }

  return result;
}

unint64_t sub_216A113C4()
{
  result = qword_27CABFD80;
  if (!qword_27CABFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFD80);
  }

  return result;
}

uint64_t sub_216A11418(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216A11460()
{
  result = qword_27CABFDA8;
  if (!qword_27CABFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDA8);
  }

  return result;
}

uint64_t sub_216A114B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A11514(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A11574(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_216A115B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_216A1163C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A1172C()
{
  result = qword_27CABFDB8;
  if (!qword_27CABFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDB8);
  }

  return result;
}

unint64_t sub_216A11784()
{
  result = qword_27CABFDC0;
  if (!qword_27CABFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDC0);
  }

  return result;
}

unint64_t sub_216A117DC()
{
  result = qword_27CABFDC8;
  if (!qword_27CABFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDC8);
  }

  return result;
}

uint64_t sub_216A11830(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  sub_21700EA34();
  v3[33] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216A118CC, v5, v4);
}

uint64_t sub_216A118CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);

  sub_216BF47DC(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *v2, v2[1], (v0 + 128));
  if (*(v0 + 136))
  {
    memcpy((v0 + 16), (v0 + 128), 0x70uLL);
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v4 = *(v0 + 256);
    if (IsReduceMotionEnabled)
    {
      sub_216970008(v0 + 16, v0 + 128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98);
      sub_21700B0D4();
    }

    else
    {
      sub_21700B414();
      sub_217008244();
      sub_217008224();
      v6 = swift_task_alloc();
      *(v6 + 16) = v4;
      *(v6 + 24) = v0 + 16;
      sub_217008A84();
    }

    v7 = *(v0 + 240);
    v8 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v9 + 104))(v7, v8);
    sub_216970064(v0 + 16);
    OUTLINED_FUNCTION_3();
  }

  else
  {
    sub_216697664(v0 + 128, &qword_27CABA698);
    sub_216A11DE0();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3();
  }

  return v5();
}

uint64_t sub_216A11AB8(uint64_t a1, uint64_t a2)
{
  sub_216970008(a2, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98);
  return sub_21700B0D4();
}

uint64_t sub_216A11B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_36(v1);

  return sub_216A11830(v2, v3);
}

unint64_t sub_216A11BB8(uint64_t a1)
{
  result = sub_216A11BE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A11BE0()
{
  result = qword_27CABFDD0;
  if (!qword_27CABFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDD0);
  }

  return result;
}

unint64_t sub_216A11C84()
{
  result = qword_27CABFDD8;
  if (!qword_27CABFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDD8);
  }

  return result;
}

unint64_t sub_216A11CDC()
{
  result = qword_27CABFDE0;
  if (!qword_27CABFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDE0);
  }

  return result;
}

unint64_t sub_216A11D34()
{
  result = qword_27CABFDE8;
  if (!qword_27CABFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDE8);
  }

  return result;
}

unint64_t sub_216A11D8C()
{
  result = qword_27CABFDF0;
  if (!qword_27CABFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDF0);
  }

  return result;
}

unint64_t sub_216A11DE0()
{
  result = qword_27CABFDF8;
  if (!qword_27CABFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFDF8);
  }

  return result;
}

_BYTE *sub_216A11E50(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A11F00()
{
  result = qword_27CABFE00;
  if (!qword_27CABFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFE00);
  }

  return result;
}

_BYTE *_s9SizeClassOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216A1204C(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 <= 1194.0)
  {
    return 4;
  }

  if (a1 <= 1500.0)
  {
    return 5;
  }

  if (a1 > 2500.0)
  {
    return 7;
  }

  return 6;
}

BOOL sub_216A120F8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217035F00[a2];
  }

  if (a1 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217035F00[a1];
  }

  return v2 >= v3;
}

uint64_t sub_216A12228@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_21700E574();
  OUTLINED_FUNCTION_1();
  v52 = v5;
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v51 = v7 - v6;
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v55 = v9;
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v54 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  MusicStackAuthority.featureNames.getter();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8);
  sub_21700D4B4();
  v57 = a2;
  if (!v59)
  {
    sub_2166997CC(&v58, &qword_27CABFE08);
    goto LABEL_21;
  }

  sub_2166A0F18(&v58, v60);
  v21 = v61;
  v22 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v24 = (*(v22 + 8))(v21, v22);
  v25 = v23;
  v26 = v20[2];
  if (v26 && (v20[4] == v24 ? (v27 = v20[5] == v23) : (v27 = 0), v27 || (sub_21700F7D4() & 1) != 0))
  {
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v20;
    if (!isUniquelyReferenced_nonNull_native || v26 >= v20[3] >> 1)
    {
      sub_21693776C();
      v20 = v29;
      *&v58 = v29;
    }

    sub_216A12FA0(0, 0, 1, v24, v25);
  }

  v30 = v61;
  v31 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  result = (*(v31 + 16))(v30, v31);
  if (!v33)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
LABEL_21:
    v60[0] = v20;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_216856418();
    v39 = sub_21700E454();
    v41 = v40;

    v42 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21700CE54();
    sub_21700D274();
    (*(v14 + 8))(v18, v54);
    sub_21700D6C4();
    v44 = v43;
    (*(v55 + 8))(v12, v56);
    if (v44)
    {
      sub_21700E564();
      v45 = sub_21700E524();
      v47 = v46;

      (*(v52 + 8))(v51, v53);
      if (v47 >> 60 != 15)
      {

LABEL_26:
        *v57 = v39;
        v57[1] = v41;
        v57[2] = v45;
        v57[3] = v47;
        return __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }
    }

    else
    {
      v45 = 0;
      v47 = 0xF000000000000000;
    }

    v48 = sub_216936F7C();
    v50 = v49;

    sub_21677A510(v45, v47);

    v45 = v48;
    v47 = v50;
    goto LABEL_26;
  }

  v34 = v20[2];
  if (v34)
  {
    v35 = result;
    v36 = v33;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v58 = v20;
    if (!v37 || v34 >= v20[3] >> 1)
    {
      sub_21693776C();
      v20 = v38;
      *&v58 = v38;
    }

    sub_216A12FA0(1, 1, 1, v35, v36);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_216A12718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21700CE54();
  sub_21700D274();
  (*(v12 + 8))(v16, v10);
  v17 = sub_21700D6C4();
  v19 = v18;
  (*(v5 + 8))(v9, v3);
  if (!v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8);
    sub_21700D4B4();
    if (!v40)
    {
      sub_2166997CC(&v39, &qword_27CABFE08);
      v26 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    sub_2166A0F18(&v39, v41);
    v20 = v42;
    v21 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    sub_21693776C();
    v26 = v25;
    *&v39 = v25;
    sub_216A12FA0(0, 0, 1, v22, v24);
    v27 = v42;
    v28 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v29 = (*(v28 + 16))(v27, v28);
    if (!v30)
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_9:
      v41[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      sub_216856418();
      v17 = sub_21700E454();
      v19 = v33;

      goto LABEL_10;
    }

    v32 = *(v26 + 16);
    if (v32)
    {
      v27 = v29;
      v31 = v30;
      *&v39 = v26;
      if (v32 < *(v26 + 24) >> 1)
      {
LABEL_6:
        sub_216A12FA0(1, 1, 1, v27, v31);
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v35 = v31;
    sub_21693776C();
    v31 = v35;
    v26 = v36;
    *&v39 = v36;
    goto LABEL_6;
  }

LABEL_10:

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = xmmword_217029BA0;
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_216A12A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for GoToArtistContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7();
  v11 = (v10 - v9);
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  sub_21697A49C(a1, v14 - v13);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
      OUTLINED_FUNCTION_5_31();
      goto LABEL_16;
    case 3:
      result = OUTLINED_FUNCTION_4_63();
      v17 = 37;
      goto LABEL_21;
    case 4:
LABEL_16:
      sub_216A12F10(v15, v11, type metadata accessor for ContentDescriptor);
      sub_216A12F70(v11, a2);
      v24 = type metadata accessor for ContentDescriptor;
      v25 = v11;
      goto LABEL_35;
    case 5:
      sub_216A12F10(v15, v7, type metadata accessor for GoToArtistContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = 22;
      }

      else
      {
        v26 = 0;
      }

      *a2 = v26;
      v24 = type metadata accessor for GoToArtistContext;
      v25 = v7;
      goto LABEL_35;
    case 6:
      *a2 = 0;
      sub_21700C084();
      goto LABEL_29;
    case 7:
      v18 = 44;
      goto LABEL_33;
    case 8:
      v18 = 46;
      goto LABEL_33;
    case 9:
      v18 = 47;
      goto LABEL_33;
    case 10:
      v18 = 1;
      goto LABEL_33;
    case 11:
      v18 = 7;
      goto LABEL_33;
    case 12:
    case 18:
    case 20:
      v18 = 48;
      goto LABEL_33;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);
      OUTLINED_FUNCTION_5_31();
      *a2 = 0;
      goto LABEL_14;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);
      OUTLINED_FUNCTION_5_31();
      *a2 = 26;
      goto LABEL_27;
    case 15:
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8) + 48);
      *a2 = 26;
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v15 + v20);
      v22 = type metadata accessor for ContentDescriptor;
      goto LABEL_34;
    case 16:
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      *a2 = 0;
      sub_2166997CC(v15 + v23, &qword_27CAB6AE8);
LABEL_14:
      sub_21700C1E4();
      goto LABEL_29;
    case 17:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      *a2 = 26;
      sub_2166997CC(v15 + v19, qword_27CAB6AF0);
LABEL_27:
      sub_21700C924();
LABEL_29:
      OUTLINED_FUNCTION_9_0();
      return (*(v27 + 8))(v15);
    case 19:
      v17 = 24;
      goto LABEL_21;
    case 21:
      v18 = 50;
      goto LABEL_33;
    case 22:
    case 23:
    case 25:
    case 26:
      result = OUTLINED_FUNCTION_4_63();
      goto LABEL_3;
    case 24:

      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
      *a2 = 48;
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      return (*(v29 + 8))(v15 + v28);
    case 27:
      v17 = 8;
      goto LABEL_21;
    case 28:
    case 29:
    case 30:
LABEL_3:
      v17 = 48;
      goto LABEL_21;
    case 31:
    case 32:
      v17 = 33;
LABEL_21:
      *a2 = v17;
      break;
    default:
      v18 = 4;
LABEL_33:
      *a2 = v18;
      v22 = type metadata accessor for FlowAction.Destination;
LABEL_34:
      v24 = v22;
      v25 = v15;
LABEL_35:
      result = sub_216A12EBC(v25, v24);
      break;
  }

  return result;
}

uint64_t sub_216A12EBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A12F10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *sub_216A12F70@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result - 4 > 0x12)
  {
    v2 = 9;
  }

  else
  {
    v2 = byte_217036072[(*result - 4)];
  }

  *a2 = v2;
  return result;
}

uint64_t sub_216A12FA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_21677589C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {
      result = sub_21700DF14();
      __break(1u);
    }
  }

  return result;
}

void sub_216A130BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *v7;
  v13 = *(sub_21700C4B4() - 8);
  v14 = *(v13 + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v17 = v16 + v14 * a1;
  swift_arrayDestroy();
  v18 = __OFSUB__(a3, v15);
  v19 = a3 - v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = *(v12 + 16);
  if (__OFSUB__(v20, a2))
  {
    goto LABEL_16;
  }

  sub_216939710(v16 + v14 * a2, v20 - a2, v17 + v14 * a3);
  v21 = *(v12 + 16);
  v18 = __OFADD__(v21, v19);
  v22 = v21 + v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 16) = v22;
LABEL_7:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_11;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:

  swift_unknownObjectRelease();
}

uint64_t sub_216A13250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170093C4();
  sub_216A1337C(a1, &v10);
  v9 = v10;
  v5 = v11;
  v6 = v12;
  v12 = sub_2170067A4();
  v13 = sub_2166D2A28(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_216CCB56C();
  sub_2167B7D58(&v10, a2 + 72);
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D2A28(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *(a2 + 56) = sub_217008CF4();
  *(a2 + 64) = v7;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v9;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
}

uint64_t sub_216A1337C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TVMovieDescription();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_retain_n();
  sub_216DE9DB8();
  sub_216681B64(&v7[*(v5 + 36)], v13, &qword_27CAB6DB0);
  sub_216A1354C(v7);
  v8 = v14;
  sub_21669987C(v13, &qword_27CAB6DB0);
  if (v8)
  {

    v10 = 0x4038000000000000;
  }

  else
  {

    v10 = 0;
    v9 = 0;
  }

  *a2 = a1;
  a2[1] = v10;
  a2[2] = 0;
  a2[3] = v9;
}

unint64_t sub_216A134D0(uint64_t a1)
{
  result = sub_216A134F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A134F8()
{
  result = qword_280E38AE8[0];
  if (!qword_280E38AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E38AE8);
  }

  return result;
}

uint64_t sub_216A1354C(uint64_t a1)
{
  v2 = type metadata accessor for TVMovieDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_216A135A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170091A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_216A1363C((a1 + 24));
  v2 = sub_217009D44();
  *(a1 + 96) = swift_getKeyPath();
  *(a1 + 104) = v2;
  sub_21700B3C4();
  sub_2170083C4();
  *(a1 + 112) = v4;
  *(a1 + 128) = v5;
  result = *&v6;
  *(a1 + 144) = v6;
  return result;
}

uint64_t sub_216A1363C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TVMovieDescription();
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12[3] = v5;
  v12[4] = sub_2166D2A28(&qword_27CABFE30, type metadata accessor for TVMovieDescription);
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_216DE9DB8();
  sub_216DE9DB8();
  v6 = &v4[*(v2 + 24)];
  v8 = *v6;
  v7 = v6[1];
  sub_21700DF14();
  sub_216A1354C(v4);
  if (v7)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  sub_216905714(v12, v11);
  sub_216905714(v11, a1);
  a1[5] = v8;
  a1[6] = v7;
  a1[7] = 0;
  a1[8] = v9;
  sub_2167770D0(v8, v7, 0, v9);
  sub_2169056C0(v12);
  sub_2167C4DF0(v8, v7, 0, v9);
  return sub_2169056C0(v11);
}

uint64_t sub_216A137A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170091A4();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE38);
  sub_216A138A8((a1 + *(v2 + 44)));
  sub_21700B3C4();
  sub_2170083C4();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE40) + 36));
  *v3 = v7;
  v3[1] = v8;
  v3[2] = v9;
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE48) + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  LODWORD(KeyPath) = sub_217009834();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE50);
  *(a1 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_216A138A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE58);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TVMovieDescription();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_216DE9DB8();
  v17 = &v16[*(v11 + 44)];
  v18 = v17[1];
  v32 = *v17;
  sub_21700DF14();
  sub_216A1354C(v16);
  v19 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  sub_216DE9DB8();
  v21 = *&v13[*(v11 + 40)];
  sub_21700DF14();
  sub_216A1354C(v13);
  if (v21)
  {
    v33 = v21;
    v28 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    v29 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE70);
    sub_2166D9530(&qword_27CAB8D88, &qword_27CAB74F8);
    sub_216A13F34();
    v22 = v30;
    v2 = v29;
    sub_21700B154();
    (*(v31 + 32))(v9, v22, v2);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v23, 1, v2);
  if (v18)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = 0;
  }

  if (v18)
  {
    v25 = v32;
  }

  else
  {
    v25 = 0;
  }

  sub_216681B64(v9, v6, &qword_27CABFE60);
  *a1 = v25;
  a1[1] = v18;
  a1[2] = 0;
  a1[3] = v24;
  a1[4] = KeyPath;
  a1[5] = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE68);
  sub_216681B64(v6, a1 + *(v26 + 48), &qword_27CABFE60);
  sub_2167770D0(v25, v18, 0, v24);

  sub_21669987C(v9, &qword_27CABFE60);
  sub_21669987C(v6, &qword_27CABFE60);
  sub_2167C4DF0(v25, v18, 0, v24);
}

__n128 sub_216A13C94@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v22 = *a1;
  sub_21700DF14();
  v21 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v5 = sub_217009C84();
  v6 = sub_21700AD34();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFE70) + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v9 = (v7 + *(v8 + 36));
  v10 = *(sub_217008B44() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #2.0 }

  *v9 = _Q0;
  *v7 = 0x3FF0000000000000;
  *(v7 + 8) = 0;
  *(v7 + 16) = v6;
  v18 = v7 + *(v8 + 40);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *a2 = v22;
  *(a2 + 8) = v3;
  v19 = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v21;
  *(a2 + 48) = v5;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + 56) = result;
  *(a2 + 72) = result;
  *(a2 + 88) = 0;
  return result;
}