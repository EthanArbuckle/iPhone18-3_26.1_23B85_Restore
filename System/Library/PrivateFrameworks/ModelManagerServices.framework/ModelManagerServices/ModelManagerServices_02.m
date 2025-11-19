uint64_t sub_19796FA3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);
  *v4 = *v2;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19796FB78()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_19796FBD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_19796FBF0()
{
  result = qword_1ED87DE38;
  if (!qword_1ED87DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_164_1()
{
  result = *(v0 + 128);
  v2 = *(v0 + 112);
  return result;
}

void InferenceProviderPrewarmInformation.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = sub_197A87298();
  v4 = OUTLINED_FUNCTION_2(v3);
  v32 = v5;
  v33 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49038, &unk_197A8BB60);
  OUTLINED_FUNCTION_2(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v34 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  v15 = OUTLINED_FUNCTION_6(v34);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = v2[3];
  v22 = v2[4];
  v23 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_113_0(v23, v24);
  sub_1979701EC();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_87();
    *v20 = sub_197A87FA8();
    *(v20 + 8) = v25;
    OUTLINED_FUNCTION_112_0();
    sub_1979705E8();
    OUTLINED_FUNCTION_87();
    sub_197A87FD8();
    *(v20 + 16) = v36;
    *(v20 + 32) = v37;
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v26);
    OUTLINED_FUNCTION_41_1();
    sub_197A87FD8();
    (*(v32 + 32))(v20 + v34[6], v10, v33);
    OUTLINED_FUNCTION_87();
    v27 = sub_197A87FA8();
    v28 = (v20 + v34[7]);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v35) = 4;
    OUTLINED_FUNCTION_87();
    *(v20 + v34[8]) = sub_197A87FE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&unk_1ED87F888);
    OUTLINED_FUNCTION_41_1();
    sub_197A87F88();
    *(v20 + v34[9]) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_1979546EC(&qword_1ED87DD78);
    OUTLINED_FUNCTION_41_1();
    sub_197A87F88();
    v30 = OUTLINED_FUNCTION_30_1();
    v31(v30);
    *(v20 + v34[10]) = v35;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_1979701EC()
{
  result = qword_1ED87DDE0;
  if (!qword_1ED87DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDE0);
  }

  return result;
}

uint64_t type metadata accessor for _OSTransaction()
{
  result = qword_1ED87D170;
  if (!qword_1ED87D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_197970294(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_105_1()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 448);
  return result;
}

uint64_t static _OSTransaction.named<A>(_:closure:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[7] = a8;
  v9[8] = v8;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(a8 - 8);
  v9[9] = v10;
  v11 = *(v10 + 64) + 15;
  v9[10] = swift_task_alloc();
  swift_getObjectType();
  v13 = sub_197A87B58();
  v9[11] = v13;
  v9[12] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1979704B4, v13, v12);
}

uint64_t sub_1979704B4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v0[13] = swift_allocObject();
  sub_197A878A8();
  _OSTransaction.init(_:)(v4, v3);
  v12 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_19797677C;
  v9 = v0[10];
  v10 = v0[6];

  return v12(v9);
}

unint64_t sub_1979705E8()
{
  result = qword_1ED87E470;
  if (!qword_1ED87E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderPrewarmInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x197970708);
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

uint64_t _OSTransaction.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v41 = a1;
  v6 = sub_197A87298();
  v7 = OUTLINED_FUNCTION_3_20(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34[-v15];
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1EAF482C8 != -1)
  {
    OUTLINED_FUNCTION_1_19();
  }

  v17 = sub_197A87608();
  __swift_project_value_buffer(v17, qword_1EAF482D0);
  v40 = *(v9 + 16);
  v40(v14, v16, v3);
  sub_197A878A8();
  v18 = sub_197A875E8();
  v19 = sub_197A87D78();

  v20 = os_log_type_enabled(v18, v19);
  v39 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v38 = v4;
    v22 = v21;
    v37 = swift_slowAlloc();
    v42 = v37;
    *v22 = 136315394;
    OUTLINED_FUNCTION_2_19(&qword_1ED87E510);
    v35 = v19;
    v23 = sub_197A88148();
    v24 = v9;
    v26 = v25;
    v36 = *(v24 + 8);
    v36(v14, v3);
    sub_197948834(v23, v26, &v42);

    OUTLINED_FUNCTION_4_13();
    v27 = v41;
    *(v22 + 14) = sub_197948834(v41, a2, v28);
    _os_log_impl(&dword_197941000, v18, v35, "Beginning transaction: %s (%s)", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    v4 = v38;
    OUTLINED_FUNCTION_44();

    v29 = v36;
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v14, v3);
    v27 = v41;
  }

  v40((v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid), v16, v3);
  v30 = (v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name);
  *v30 = v27;
  v30[1] = a2;
  sub_197A879A8();
  sub_197A878A8();
  v31 = os_transaction_create();

  if (v31)
  {
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__transaction) = v31;
    if (qword_1EAF48670 != -1)
    {
      result = OUTLINED_FUNCTION_0_26();
    }

    v33 = qword_1EAF48678;
    MEMORY[0x1EEE9AC00](result);
    *&v34[-32] = v16;
    *&v34[-24] = v27;
    *&v34[-16] = a2;
    os_unfair_lock_lock((v33 + 24));
    sub_197970B6C((v33 + 16));
    os_unfair_lock_unlock((v33 + 24));

    v29(v16, v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceError.Context.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_197970B6C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_197970B8C(a1);
}

void sub_197970B8C(uint64_t *a1)
{
  sub_197A878A8();
  v2 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *a1;
  sub_197970C10();
  *a1 = v3;
}

void sub_197970C10()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v6 = v5;
  v7 = sub_197A87298();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = *v0;
  v14 = sub_197970E74();
  OUTLINED_FUNCTION_5_8(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F0, &qword_197AA1270);
  OUTLINED_FUNCTION_29_6();
  if ((sub_197A87EB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v1;
  v22 = sub_197970E74();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v1;
  if (v20)
  {
    v25 = (v24[7] + 16 * v19);
    v26 = v25[1];
    *v25 = v6;
    v25[1] = v28;
    OUTLINED_FUNCTION_66();
  }

  else
  {
    (*(v8 + 16))(v12, v3, v7);
    sub_197970EF8(v19, v12, v6, v28, v24);
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_197970DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_119_2(*(v14 + 88));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_197970E74()
{
  v1 = *(v0 + 40);
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  sub_19794A664(v2, 255, v3);
  OUTLINED_FUNCTION_76_7();
  sub_197A878E8();
  v4 = OUTLINED_FUNCTION_133_0();

  return sub_197971764(v4, v5);
}

uint64_t sub_197970EF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_197A87298();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
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

uint64_t sub_197970FB8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960FB0;
  v6 = OUTLINED_FUNCTION_81();

  return sub_197971148(v6, v7, v8, v9);
}

uint64_t sub_197971050()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197971148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_32_0(sub_197971164, 0);
}

uint64_t sub_197971164()
{
  OUTLINED_FUNCTION_9();
  sub_197947C44(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1979711BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 336);
  *v4 = *v2;
  *(v3 + 344) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t _s20ModelManagerServices35InferenceProviderPrewarmInformationV16internalMetadataSDyS2SGSgvg_0()
{
  v1 = *(v0 + *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 36));

  return sub_197A878A8();
}

uint64_t sub_197971328()
{
  OUTLINED_FUNCTION_114_0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = v0(v9, v1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v11;
}

uint64_t sub_197971430()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1979714B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for InferenceProviderXPCSender();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_1979715F8(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1979715F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v17 - v10;
  v18[3] = a3;
  v18[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  v13 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_197947C44(v18, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_197945EF8(v17, v14 + 32);
  v15 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  *(a2 + 112) = v15;
  return a2;
}

unint64_t sub_197971764(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_197A87298();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
    v10 = sub_197A87918();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197971968()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 32);
  *v4 = *v2;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197971AA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

unint64_t sub_197971C00()
{
  result = qword_1EAF48898;
  if (!qword_1EAF48898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48898);
  }

  return result;
}

uint64_t sub_197971CB8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

double InferenceProviderExtension.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_197971D04@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = InferenceProviderExtension.configuration.getter();
  *a1 = v3;
  return result;
}

uint64_t InferenceProviderExtension.handleConnection(_:)(_xpc_connection_s *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20[-v6];
  v8 = sub_197A87658();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  pid = xpc_connection_get_pid(a1);
  sub_1979722FC(v20);
  type metadata accessor for InferenceProviderXPCRequestDispatcher();
  swift_allocObject();
  InferenceProviderXPCRequestDispatcher.init(configuration:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49180, &qword_197A8D170);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49188, &unk_197A8D178);
  swift_allocObject();

  *(v11 + 16) = sub_197973B0C(v12);
  sub_197A876C8();
  *(swift_allocObject() + 16) = pid;
  swift_unknownObjectRetain();

  sub_197A87638();
  v13 = sub_197A87628();
  v14 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
  sub_197A87BE8();

  v15 = sub_197A87BD8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v2;
  v16[5] = v13;
  sub_19795CB2C();
}

uint64_t sub_197972118()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.prewarmBundle(information:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 168);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12_5(v4);

  return v7(v6);
}

uint64_t sub_197972264()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979722FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = dynamic_cast_existential_1_conditional(v3);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = *(v5 + 8);
    *(a1 + 24) = &type metadata for InferenceProviderAdapter;
    *(a1 + 32) = &protocol witness table for InferenceProviderAdapter;
    v9 = swift_allocObject();
    *a1 = v9;
    v9[5] = v6;
    v9[6] = v7;
    __swift_allocate_boxed_opaque_existential_1(v9 + 2);
    result = v8(v6, v7);
LABEL_5:
    *(a1 + 40) = 0;
    return result;
  }

  result = dynamic_cast_existential_1_conditional(v3);
  if (result)
  {
    v12 = result;
    v13 = v11;
    v14 = *(v11 + 8);
    *(a1 + 24) = result;
    *(a1 + 32) = v11;
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = v14(v12, v13);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_197972410()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OUTLINED_FUNCTION_15_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
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

uint64_t sub_197972484()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_98_1();
  sub_197967254(v0, v1, type metadata accessor for InferenceProviderPrewarmInformation);
  OUTLINED_FUNCTION_17(dword_197A92178);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_139(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_38_3(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t InferenceProviderXPCRequestDispatcher.init(configuration:)()
{
  OUTLINED_FUNCTION_150_2();
  swift_defaultActor_initialize();
  *(v1 + 160) = MEMORY[0x1E69E7CD0];
  *(v1 + 168) = 0;
  type metadata accessor for RequestKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  sub_197973734(&qword_1ED87DF18, 255, type metadata accessor for RequestKey);
  *(v1 + 176) = sub_197A87898();
  type metadata accessor for InferenceProviderRequestStream(0);
  *(v1 + 184) = sub_197A87898();
  v2 = v0[1];
  *(v1 + 112) = *v0;
  *(v1 + 128) = v2;
  *(v1 + 137) = *(v0 + 25);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41_3()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_41_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_41_6()
{
  v1 = *(v0 + 152);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_41_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 120);

  return sub_197A880E8();
}

void sub_19797271C()
{
  sub_1979728D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_197972790(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_197972C1C;

  return sub_197967424((v3 + 2));
}

void sub_1979728D4()
{
  if (!qword_1ED87FE68)
  {
    type metadata accessor for RequestMetadata(255);
    v0 = type metadata accessor for UUIDIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED87FE68);
    }
  }
}

void sub_197972934()
{
  type metadata accessor for ClientData(319);
  if (v0 <= 0x3F)
  {
    sub_197A87298();
    if (v1 <= 0x3F)
    {
      sub_197972B10();
      if (v2 <= 0x3F)
      {
        sub_197973688();
        if (v3 <= 0x3F)
        {
          type metadata accessor for RequestKey(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_197972A4C()
{
  sub_197972AB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_197972AB8()
{
  if (!qword_1ED8813F0[0])
  {
    sub_197A877A8();
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8813F0);
    }
  }
}

void sub_197972B10()
{
  if (!qword_1ED880248)
  {
    type metadata accessor for Session(255);
    v0 = type metadata accessor for UUIDIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED880248);
    }
  }
}

void sub_197972B70()
{
  if (!qword_1ED8816E0)
  {
    type metadata accessor for Session.Metadata(255);
    type metadata accessor for ModelManagerError();
    sub_1979548FC(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
    v0 = sub_197A88368();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8816E0);
    }
  }
}

uint64_t sub_197972C1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_197972D30()
{
  sub_197972B70();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_197A87298();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_197972E40()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void sub_197972F30()
{
  sub_197A87118();
  if (v0 <= 0x3F)
  {
    sub_197972B10();
    if (v1 <= 0x3F)
    {
      sub_197A87298();
      if (v2 <= 0x3F)
      {
        sub_197973084();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_197973018()
{
  result = sub_197A87298();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_197973084()
{
  if (!qword_1ED881018[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, qword_1ED881018);
    }
  }
}

void sub_1979730E8()
{
  sub_197A877A8();
  if (v0 <= 0x3F)
  {
    sub_19797317C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19797317C()
{
  if (!qword_1ED881628[0])
  {
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, qword_1ED881628);
    }
  }
}

uint64_t sub_1979731CC()
{
  v0 = type metadata accessor for InferenceError(319);
  if (v1 <= 0x3F)
  {
    sub_19797352C();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v4 = sub_197A87298();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_197973584();
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_1979735FC();
          v0 = v8;
          if (v9 <= 0x3F)
          {
            v0 = sub_197973660();
            if (v10 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1979732F8()
{
  result = type metadata accessor for InferenceError.Context(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_197973380()
{
  sub_19797347C();
  if (v0 <= 0x3F)
  {
    sub_1979734D8(319, qword_1ED8811F0, MEMORY[0x1E698C278]);
    if (v1 <= 0x3F)
    {
      sub_1979734D8(319, &qword_1ED8813D8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19797347C()
{
  if (!qword_1ED8811E8)
  {
    v0 = sub_197A878B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8811E8);
    }
  }
}

void sub_1979734D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_197A87DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19797352C()
{
  if (!qword_1ED881778)
  {
    v0 = sub_197A87D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED881778);
    }
  }
}

void sub_197973584()
{
  if (!qword_1ED8815D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8815D8);
    }
  }
}

void sub_1979735FC()
{
  if (!qword_1ED8815D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8815D0);
    }
  }
}

uint64_t sub_197973660()
{
  result = qword_1ED8813E8;
  if (!qword_1ED8813E8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ED8813E8);
  }

  return result;
}

void sub_197973688()
{
  if (!qword_1ED8813E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8813E0);
    }
  }
}

uint64_t sub_1979736EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197973734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1979737E4()
{
  result = sub_197A87298();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RequestKey(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void InferenceProviderXPCRequest.PrewarmBundle.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DE8, &qword_197A92E08);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_19796FBF0();
  OUTLINED_FUNCTION_50_6();
  type metadata accessor for InferenceProviderPrewarmInformation(0);
  OUTLINED_FUNCTION_102_2();
  sub_19796A788(v4);
  OUTLINED_FUNCTION_24_7();
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197973A60(uint64_t a1)
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

uint64_t sub_197973B0C(uint64_t a1)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
  v3 = sub_197A87898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49198, &qword_197A8D2D0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 112) = a1;
  *(v1 + 120) = v4;
  return v1;
}

void sub_197973BB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_197973C04()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_197973C9C(v4, v5, v6, v7, v0);
}

uint64_t sub_197973C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_197A87BE8();
  v5[4] = sub_197A87BD8();
  v7 = sub_197A87B58();

  return MEMORY[0x1EEE6DFA0](sub_197973D4C, v7, v6);
}

uint64_t sub_197973D4C()
{
  v7 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v6[3] = sub_197A876C8();
  v6[4] = &protocol witness table for XPCSession;
  v6[0] = v2;

  sub_197973DDC(v6);
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197973DDC(uint64_t a1)
{
  swift_beginAccess();
  sub_197973E2C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_197973E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49178, &unk_197A8D160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InferenceProviderPrewarmInformation.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49028, &qword_197A8BB58);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v11, v12);
  sub_1979701EC();
  OUTLINED_FUNCTION_125();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_55();
  sub_197A880B8();
  if (!v2)
  {
    v25 = *(v3 + 1);
    v28 = *(v3 + 2);
    sub_1979741F8();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v15 = type metadata accessor for InferenceProviderPrewarmInformation(0);
    v16 = v15[6];
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v17);
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v18 = (v3 + v15[7]);
    v19 = *v18;
    v20 = v18[1];
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    v21 = *(v3 + v15[8]);
    OUTLINED_FUNCTION_55();
    sub_197A880F8();
    v26 = *(v3 + v15[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&unk_1ED87FC00);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A88098();
    v27 = *(v3 + v15[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_1979546EC(&qword_1ED87FB40);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A88098();
  }

  v22 = OUTLINED_FUNCTION_79_4();
  return v23(v22);
}

uint64_t sub_19797418C()
{
  result = sub_197A87818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1979741F8()
{
  result = qword_1ED87E478;
  if (!qword_1ED87E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E478);
  }

  return result;
}

uint64_t sub_19797424C()
{
  result = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AuditToken.encode(to:)(void *a1)
{
  v2 = v1;
  v19 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B258, &qword_197AA0FA8);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797450C();
  sub_197A883D8();
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v2[3];
  sub_197974560(&v16);
  result = (*(v7 + 8))(v11, v4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19797447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_19797450C()
{
  result = qword_1ED87DF30;
  if (!qword_1ED87DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DF30);
  }

  return result;
}

uint64_t sub_197974560(uint64_t a1)
{
  v3 = sub_197974728(a1, a1 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B258, &qword_197AA0FA8);
  sub_1979747FC();
  sub_197A880E8();
  return sub_197974AFC(v3, v4);
}

uint64_t sub_1979745E8()
{
  result = type metadata accessor for InferenceProviderXPCRequest.ConvertData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_197974728(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_197A87128();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x19A8EA400]();
    }

    else
    {
      v6 = MEMORY[0x19A8EA410]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

unint64_t sub_1979747FC()
{
  result = qword_1EAF488F8;
  if (!qword_1EAF488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF488F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuditToken.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1979748ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_197974914(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_114(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_133_0();
    v6 = sub_197A87DB8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_197974974()
{
  sub_197A87298();
  if (v0 <= 0x3F)
  {
    sub_197974914(319, &qword_1ED8811E0, &qword_1EAF48B58);
    if (v1 <= 0x3F)
    {
      sub_197974914(319, qword_1ED881018, &qword_1EAF49030);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974A68()
{
  type metadata accessor for InferenceProviderAssetDescriptor(319);
  if (v0 <= 0x3F)
  {
    sub_1979728D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_197974AFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_197974B54()
{
  sub_197974C5C();
  if (v0 <= 0x3F)
  {
    sub_197974CB4(319, &qword_1ED87EA08);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_127@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_197A879B8();
}

void sub_197974C5C()
{
  if (!qword_1ED87F050)
  {
    type metadata accessor for CustomAssetConfiguration(255);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED87F050);
    }
  }
}

void sub_197974CB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_197A87DB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_197974D20()
{
  type metadata accessor for ClientData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InferenceProviderRequestConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_1979728D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974DCC()
{
  sub_19797352C();
  if (v0 <= 0x3F)
  {
    sub_197A87298();
    if (v1 <= 0x3F)
    {
      sub_197974CB4(319, qword_1ED881628);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974EC8()
{
  sub_197A0F34C(319, &qword_1ED87EA00, type metadata accessor for ClientData, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RequestMetadata(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for InferenceProviderRequestConfiguration(319);
      if (v2 <= 0x3F)
      {
        sub_1979728D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_197974FC4()
{
  result = type metadata accessor for RequestKey(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_197975040(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AuditToken.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B250, &qword_197AA0FA0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797450C();
  sub_197A883A8();
  if (!v2)
  {
    sub_1979752CC();
    sub_197A87FD8();
    v14 = v22;
    v18 = 0u;
    v19 = 0u;
    v20 = v22;
    sub_197975320();
    sub_197A87008();
    (*(v8 + 8))(v12, v5);
    sub_197974AFC(v14, *(&v14 + 1));
    v15 = v19;
    v20 = v18;
    v21 = v19;
    *a2 = v18;
    a2[1] = v15;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1979752CC()
{
  result = qword_1ED87DD50;
  if (!qword_1ED87DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD50);
  }

  return result;
}

unint64_t sub_197975320()
{
  result = qword_1ED87E518;
  if (!qword_1ED87E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E518);
  }

  return result;
}

void OUTLINED_FUNCTION_102_1()
{
  v0[2] = v1;
  v3 = v0[14];
  v4 = v0[11];

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_102_5()
{

  return sub_197A87F08();
}

void OUTLINED_FUNCTION_134_2()
{
  v1 = *(v0 + 104);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t sub_197975480(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_32_0(sub_19797549C, a2);
}

uint64_t sub_19797549C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1[18];
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    OUTLINED_FUNCTION_28_11();
LABEL_9:

    return v3();
  }

  sub_197961900((v1 + 2), (v1 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (OUTLINED_FUNCTION_128_3())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 12);
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v4 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v4, qword_1ED87D2C0);
    v5 = sub_197A875E8();
    v6 = sub_197A87D38();
    if (OUTLINED_FUNCTION_65(v6))
    {
      OUTLINED_FUNCTION_95_8();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v7);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v13 = v1[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
    OUTLINED_FUNCTION_133_0();
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
    OUTLINED_FUNCTION_15();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_67_12();
  OUTLINED_FUNCTION_17_2();
  v21 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v1[20] = v18;
  *v18 = v1;
  v18[1] = sub_197971050;
  v19 = OUTLINED_FUNCTION_81_7(v1[19]);

  return v20(v19);
}

unint64_t sub_1979756EC()
{
  result = qword_1ED87DE18;
  if (!qword_1ED87DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE18);
  }

  return result;
}

unint64_t sub_197975744()
{
  result = qword_1ED87DE20;
  if (!qword_1ED87DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE20);
  }

  return result;
}

unint64_t sub_1979757AC()
{
  result = qword_1ED87DDE8;
  if (!qword_1ED87DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDE8);
  }

  return result;
}

unint64_t sub_197975804()
{
  result = qword_1ED87DDF0;
  if (!qword_1ED87DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDF0);
  }

  return result;
}

uint64_t sub_197975858()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197975998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49BD8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49BD8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.PrewarmSession(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BE0, &qword_197A92C58);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_197976048()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DF90);
  __swift_project_value_buffer(v0, qword_1ED87DF90);
  return sub_197A875F8();
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

uint64_t sub_19797611C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19797623C()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 200);
  v6 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 208) = v0;

  sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_46_0();
  v8 = *(v7 + 144);
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void OUTLINED_FUNCTION_255()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
}

uint64_t sub_1979763E4()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1979764A4(uint64_t a1)
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

void sub_19797654C()
{
  type metadata accessor for RequestKey(319);
  if (v0 <= 0x3F)
  {
    sub_197A0F34C(319, &qword_1ED880E68, MEMORY[0x1E69E84A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_197A0F34C(319, &qword_1ED880FB0, type metadata accessor for ClientData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_197976658(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1979766D4()
{
  result = qword_1ED87EE68;
  if (!qword_1ED87EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87EE68);
  }

  return result;
}

unint64_t sub_197976728()
{
  result = qword_1ED87EE70[0];
  if (!qword_1ED87EE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87EE70);
  }

  return result;
}

uint64_t sub_19797677C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_197A6C120;
  }

  else
  {
    v7 = sub_1979768B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1979768B8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[2];

  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t _OSTransaction.__deallocating_deinit()
{
  _OSTransaction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _OSTransaction.deinit()
{
  v2 = v0;
  v3 = sub_197A87298();
  v4 = OUTLINED_FUNCTION_3_20(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v38 = OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid;
  v39 = v6;
  v14 = *(v6 + 16);
  v14(&v34 - v12, v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid, v1);
  v15 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name + 8);
  v36 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name);
  v37 = v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name;
  v16 = qword_1EAF482C8;
  sub_197A878A8();
  if (v16 != -1)
  {
    OUTLINED_FUNCTION_1_19();
  }

  v17 = sub_197A87608();
  __swift_project_value_buffer(v17, qword_1EAF482D0);
  v14(v11, v13, v1);
  sub_197A878A8();
  v18 = sub_197A875E8();
  v19 = sub_197A87D78();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v2;
    v21 = v20;
    v34 = swift_slowAlloc();
    v40 = v34;
    *v21 = 136315394;
    OUTLINED_FUNCTION_2_19(&qword_1ED87E510);
    v22 = sub_197A88148();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_5_16();
    (v14)(v25);
    sub_197948834(v22, v24, &v40);

    OUTLINED_FUNCTION_4_13();
    v27 = sub_197948834(v36, v15, v26);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_197941000, v18, v19, "Ending transaction: %s (%s)", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    v2 = v35;
    OUTLINED_FUNCTION_44();
  }

  else
  {

    v29 = OUTLINED_FUNCTION_5_16();
    v28 = (v14)(v29);
  }

  if (qword_1EAF48670 != -1)
  {
    v28 = OUTLINED_FUNCTION_0_26();
  }

  v30 = qword_1EAF48678;
  MEMORY[0x1EEE9AC00](v28);
  *(&v34 - 2) = v13;
  os_unfair_lock_lock((v30 + 24));
  sub_197976E50((v30 + 16));
  os_unfair_lock_unlock((v30 + 24));
  (v14)(v13, v1);
  (v14)(v2 + v38, v1);
  v31 = *(v37 + 8);

  v32 = *(v2 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__transaction);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_197976D20(uint64_t *a1)
{
  v2 = *a1;
  result = sub_197970E74();
  if (v4)
  {
    v5 = result;
    v6 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v7 = *(*a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F0, &qword_197AA1270);
    sub_197A87EB8();
    v8 = *(v11 + 48);
    v9 = sub_197A87298();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(*(v11 + 56) + 16 * v5 + 8);
    sub_197954654(&qword_1ED880FE0);
    sub_197A87EC8();

    *a1 = v11;
  }

  return result;
}

unint64_t sub_197976E80()
{
  result = qword_1ED87E640;
  if (!qword_1ED87E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E640);
  }

  return result;
}

unint64_t sub_197976ED8()
{
  result = qword_1ED87DE30;
  if (!qword_1ED87DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE30);
  }

  return result;
}

unint64_t sub_197976F44()
{
  result = qword_1ED87DDD0;
  if (!qword_1ED87DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDD0);
  }

  return result;
}

unint64_t sub_197976F9C()
{
  result = qword_1ED87DDD8;
  if (!qword_1ED87DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDD8);
  }

  return result;
}

unint64_t sub_197977018()
{
  result = qword_1ED87DF20;
  if (!qword_1ED87DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DF20);
  }

  return result;
}

unint64_t sub_197977070()
{
  result = qword_1ED87DE40;
  if (!qword_1ED87DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE40);
  }

  return result;
}

unint64_t sub_1979770C4()
{
  result = qword_1ED87DF28;
  if (!qword_1ED87DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DF28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return swift_allocError();
}

unint64_t sub_19797716C()
{
  result = qword_1ED87D8E8;
  if (!qword_1ED87D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8E8);
  }

  return result;
}

uint64_t sub_1979771C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RequestMetadata.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for RequestMetadata(v0);
  OUTLINED_FUNCTION_177(*(v1 + 28));
  return sub_197944528();
}

uint64_t sub_19797726C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_197977368()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197977468()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 208);

  v2 = *(v0 + 200);

  OUTLINED_FUNCTION_13();

  return v3();
}

void InferenceProviderXPCRequest.InferenceRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v44 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v45);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21_6();
  v9 = type metadata accessor for InferenceProviderRequestConfiguration(v8);
  v10 = OUTLINED_FUNCTION_6(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for ClientData(0);
  v17 = OUTLINED_FUNCTION_6(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E10, &qword_197A92E30);
  OUTLINED_FUNCTION_2(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_156();
  v46 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  v27 = OUTLINED_FUNCTION_6(v46);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_0();
  v47 = v30;
  v31 = v3[3];
  v32 = v3[4];
  OUTLINED_FUNCTION_16_7();
  sub_197977C50();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    *v47 = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v33);
    sub_197A87FD8();
    v35 = v46[5];
    OUTLINED_FUNCTION_14_9();
    sub_197958DA4(v22, v37 + v36);
    OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_11_5();
    sub_19796A788(v38);
    sub_197A87FD8();
    v39 = v46[6];
    OUTLINED_FUNCTION_12_7();
    sub_197958DA4(v15, &v47[v40]);
    OUTLINED_FUNCTION_22_3(&unk_1ED87FC90);
    sub_197A87FD8();
    v41 = OUTLINED_FUNCTION_155_0();
    v42(v41);
    sub_19794BDF8(v1, &v47[v46[7]], &qword_1EAF49128, &unk_197A8CE70);
    v43 = OUTLINED_FUNCTION_71_6();
    sub_1979698F8(v43, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_10_11();
    sub_1979699A8(v47, v34);
  }

  OUTLINED_FUNCTION_93();
}

void ClientData.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v37 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  v5 = OUTLINED_FUNCTION_28(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0C8, &qword_197A954B8);
  v39 = OUTLINED_FUNCTION_2(v13);
  v40 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_28_0();
  v19 = type metadata accessor for ClientData(v18);
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197977F0C();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v34 = v19;
    v35 = v25;
    v36 = v10;
    sub_197A877A8();
    OUTLINED_FUNCTION_7_8();
    sub_197978008(v27, 255, v28);
    v29 = v39;
    OUTLINED_FUNCTION_97_4();
    sub_19794B118();
    OUTLINED_FUNCTION_97_4();
    v30 = OUTLINED_FUNCTION_118_3();
    v31(v30, v29);
    v32 = *(v34 + 20);
    sub_19794B118();
    OUTLINED_FUNCTION_2_12();
    sub_1979672B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_0_16();
    sub_197978A98();
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_197977C50()
{
  result = qword_1ED87DE50;
  if (!qword_1ED87DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE50);
  }

  return result;
}

uint64_t sub_197977CB8()
{
  OUTLINED_FUNCTION_71();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

void sub_197977D1C()
{
  OUTLINED_FUNCTION_71();
  if (v4 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_157();
    v5 = type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_70(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[5];
    }

    else
    {
      v8 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70(v8);
      if (*(v9 + 84) == v3)
      {
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v11 = v2[7];
      }
    }

    OUTLINED_FUNCTION_122_2();

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_197977E30()
{
  OUTLINED_FUNCTION_71();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_197977E98()
{
  OUTLINED_FUNCTION_76_1();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_197A87298();
    v6 = v1 + *(v4 + 28);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

unint64_t sub_197977F0C()
{
  result = qword_1ED87FDB8[0];
  if (!qword_1ED87FDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87FDB8);
  }

  return result;
}

unint64_t sub_197977F60(char a1)
{
  result = 0x6D61657274537369;
  switch(a1)
  {
    case 1:
      result = 0x6144746E65696C63;
      break;
    case 2:
      result = 0x72756769666E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197978008(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197978060()
{
  OUTLINED_FUNCTION_111();
  if (v3)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_197A87298();
  v8 = v0 + *(v5 + 28);

  return __swift_getEnumTagSinglePayload(v8, v6, v7);
}

uint64_t sub_1979780E4(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for ClientData(0);
    v11 = OUTLINED_FUNCTION_70(v10);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v16 = OUTLINED_FUNCTION_70(v15);
      if (*(v17 + 84) == a2)
      {
        v13 = v16;
        v14 = a3[6];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v14 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v14], a2, v13);
  }
}

void InferenceProviderRequestConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v61 = v4;
  v5 = sub_197A87298();
  v6 = OUTLINED_FUNCTION_2(v5);
  v66 = v7;
  v67 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE8, &qword_197A8BAF0);
  OUTLINED_FUNCTION_2(v63);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_64_1();
  v68 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v24 = OUTLINED_FUNCTION_6(v68);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_0();
  v64 = v3;
  v65 = (v28 - v27);
  v29 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197978F70();
  v62 = v1;
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  else
  {
    v30 = v18;
    v31 = v16;
    v32 = v12;
    v33 = v20;
    LOBYTE(v69) = 0;
    v34 = sub_197A87FA8();
    v35 = v65;
    *v65 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_32_2(1);
    v35[2] = sub_197A87FA8();
    v35[3] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    sub_197978AF8(&unk_1ED87FE58);
    OUTLINED_FUNCTION_107();
    sub_197A87FD8();
    v35[4] = v69;
    LOBYTE(v69) = 3;
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v38);
    v39 = v67;
    OUTLINED_FUNCTION_107();
    v60 = v40;
    sub_197A87FD8();
    v41 = v35 + v68[7];
    v42 = v30;
    v43 = *(v66 + 32);
    v59 = v66 + 32;
    v43(v41, v42, v39);
    LOBYTE(v69) = 4;
    OUTLINED_FUNCTION_107();
    sub_197A87FD8();
    v43(v35 + v68[8], v31, v67);
    OUTLINED_FUNCTION_32_2(5);
    v44 = sub_197A87FC8();
    v58 = v43;
    *(v35 + v68[9]) = v44;
    OUTLINED_FUNCTION_32_2(6);
    *(v35 + v68[10]) = sub_197A87FC8();
    LOBYTE(v69) = 7;
    sub_197A87FD8();
    v58(v35 + v68[11], v32, v67);
    sub_1979705E8();
    sub_197A87F88();
    v45 = v71;
    v46 = v35 + v68[12];
    v47 = v70;
    *v46 = v69;
    *(v46 + 1) = v47;
    v46[32] = v45;
    OUTLINED_FUNCTION_32_2(9);
    *(v65 + v68[13]) = sub_197A88008();
    OUTLINED_FUNCTION_62_1(10);
    v48 = sub_197A87FA8();
    v49 = (v65 + v68[14]);
    *v49 = v48;
    v49[1] = v50;
    OUTLINED_FUNCTION_62_1(11);
    v51 = sub_197A87FA8();
    v52 = (v65 + v68[15]);
    *v52 = v51;
    v52[1] = v53;
    sub_19795F5C4();
    OUTLINED_FUNCTION_124_0();
    v54 = DWORD2(v69);
    v55 = v65 + v68[16];
    *v55 = v69;
    *(v55 + 2) = v54;
    sub_197978D10();
    OUTLINED_FUNCTION_124_0();
    *(v65 + v68[17]) = v69;
    OUTLINED_FUNCTION_62_1(14);
    v56 = sub_197A88008();
    (*(v33 + 8))(v62, v63);
    *(v65 + v68[18]) = v56;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197978A98()
{
  v1 = OUTLINED_FUNCTION_97();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_197978AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197978B60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 24);
}

void OUTLINED_FUNCTION_148(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_148_2()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

ModelManagerServices::RequestPriority_optional __swiftcall RequestPriority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_197978CBC()
{
  result = qword_1ED87DE78[0];
  if (!qword_1ED87DE78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87DE78);
  }

  return result;
}

unint64_t sub_197978D10()
{
  result = qword_1ED87DE70;
  if (!qword_1ED87DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE70);
  }

  return result;
}

unint64_t sub_197978D64(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0x556E6F6973736573;
      break;
    case 5:
      result = 0x666C616865426E6FLL;
      break;
    case 6:
    case 11:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x536E6F6973736573;
      break;
    case 8:
      result = 0x6B6F547469647561;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x5674736575716572;
      break;
    case 13:
      result = 0x5074736575716572;
      break;
    case 14:
      result = 0x6575716572627573;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_197978F70()
{
  result = qword_1ED87DDC8;
  if (!qword_1ED87DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x197979090);
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

uint64_t getEnumTagSinglePayload for InferenceProviderRequestConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderRequestConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x19797920CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_197979234()
{
  OUTLINED_FUNCTION_80();
  if (*(v0 + 152) == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v0 + 136) = v1;
    *v1 = v2;
    v1[1] = sub_197A75B1C;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);

    return sub_197A75D30();
  }

  else
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = type metadata accessor for InferenceProviderRequestConfiguration(0);
    v13 = *(v12 + 28);
    v14 = sub_197A87298();
    OUTLINED_FUNCTION_6(v14);
    (*(v15 + 16))(v8, v11 + v13);
    *(v8 + *(v9 + 20)) = *(v11 + *(v12 + 72));
    OUTLINED_FUNCTION_178_2();
    if (v12)
    {
      v16 = *(v0 + 128);
      OUTLINED_FUNCTION_1_20();
      sub_197969A00(v17, v18);
      OUTLINED_FUNCTION_164_1();
      v19 = *(v0 + 96);

      OUTLINED_FUNCTION_28_11();

      return v20();
    }

    else
    {
      OUTLINED_FUNCTION_67_12();
      v28 = (MEMORY[0x48] + *MEMORY[0x48]);
      v21 = *(MEMORY[0x48] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 144) = v22;
      *v22 = v23;
      v22[1] = sub_197979B88;
      v24 = *(v0 + 112);
      v25 = *(v0 + 96);
      v26 = *(v0 + 64);
      v27 = *(v0 + 72);

      return v28(v24, v26, v27, v25, v8, 0);
    }
  }
}

uint64_t sub_1979794A8()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 152) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for InferenceError(0);
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for ClientData(0);
  *(v1 + 104) = v9;
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_78_0();
  v12 = type metadata accessor for RequestKey(0);
  *(v1 + 120) = v12;
  OUTLINED_FUNCTION_28(v12);
  v14 = *(v13 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_78_0();
  v15 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

unint64_t sub_197979574(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A00, &qword_197A92D00);
    sub_19796A788(&unk_1ED87FC60);
    sub_19796A788(&unk_1ED87DE00);
    OUTLINED_FUNCTION_35_3();
    sub_19796A788(v3);
    OUTLINED_FUNCTION_42_5(&qword_1ED8813D0);
    result = OUTLINED_FUNCTION_135_2();
    atomic_store(result, v1);
  }

  return result;
}

void ClientData.data.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166_1();
  a17 = v18;
  a18 = v19;
  v20 = OUTLINED_FUNCTION_100_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_28(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = sub_197A877A8();
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_147_2();
  sub_197944528();
  v34 = OUTLINED_FUNCTION_122_3();
  if (__swift_getEnumTagSinglePayload(v34, v35, v28) == 1)
  {
    sub_197947A40(v27, &qword_1EAF49000, &qword_197A954A0);
  }

  else
  {
    v36 = *(v31 + 32);
    OUTLINED_FUNCTION_68_1();
    v37();
    v38 = sub_197A87788();
    bytes_ptr = xpc_data_get_bytes_ptr(v38);
    if (bytes_ptr)
    {
      length = xpc_data_get_length(v38);
      MEMORY[0x19A8EA470](bytes_ptr, length);
      swift_unknownObjectRelease();
      v41 = *(v31 + 8);
      v42 = OUTLINED_FUNCTION_63();
      v43(v42);
    }

    else
    {
      v44 = *(v31 + 8);
      v45 = OUTLINED_FUNCTION_63();
      v46(v45);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_165();
}

uint64_t _s20ModelManagerServices10ClientDataV4dataAC10Foundation0E0VSg_tcfC_0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_133_2();
  v9 = 1;
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  if (a1 >> 60 != 15)
  {
    v13 = OUTLINED_FUNCTION_147_2();
    sub_19797992C(v13, v14);
    v15 = OUTLINED_FUNCTION_147_2();
    sub_197979B74(v15, v16);
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(a2, v9, 1, v8);
  v17 = *(type metadata accessor for ClientData(0) + 20);
  return sub_19794B118();
}

uint64_t sub_19797992C(uint64_t a1, unint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v7;
      goto LABEL_8;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_8:
      result = sub_197979AA0(a1, v5);
      goto LABEL_9;
    case 3uLL:
      memset(v9, 0, 14);
      v3 = 0;
      goto LABEL_5;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      v2 = a2 >> 40;
      BYTE4(v9[1]) = BYTE4(a2);
      v3 = BYTE6(a2);
      BYTE5(v9[1]) = v2;
LABEL_5:
      xpc_data_create(v9, v3);
      result = sub_197A87798();
LABEL_9:
      v8 = *MEMORY[0x1E69E9840];
      return result;
  }
}

uint64_t sub_197979AA0(uint64_t a1, uint64_t a2)
{
  result = sub_197A87058();
  v5 = result;
  if (result)
  {
    result = sub_197A87078();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_197A87068();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_197979B34(v5, v11);
}

uint64_t sub_197979B34(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  xpc_data_create(a1, v2);
  return sub_197A87798();
}

uint64_t sub_197979B74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_197974AFC(a1, a2);
  }

  return a1;
}

uint64_t sub_197979B88()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v2 = *(v0 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_46_0();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_197979C9C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_119();
  sub_197979D80();
  v5 = type metadata accessor for InferenceProviderRequestResult(0);
  v6 = *(v5 + 20);
  sub_197A876D8();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = *(v5 + 24);
  OUTLINED_FUNCTION_16_12();
  sub_197979D80();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
  OUTLINED_FUNCTION_164_1();
  v15 = v0[12];

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_197979D80()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_197979DD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 232);
  *v4 = *v2;
  *(v3 + 240) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197979EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v15 = v14[27];
  v16 = v14[28];
  v17 = v14[19];
  OUTLINED_FUNCTION_109_2(v14[17]);
  OUTLINED_FUNCTION_63();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_11();
  sub_1979699A8(v17, v18);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

void InferenceProviderRequestResult.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CD0, &qword_197A92D68);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  sub_19797A1BC();
  OUTLINED_FUNCTION_125();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v9);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_124_3();
  sub_197A880E8();
  if (!v0)
  {
    v10 = type metadata accessor for InferenceProviderRequestResult(0);
    OUTLINED_FUNCTION_149_1(v10);
    sub_197A876D8();
    OUTLINED_FUNCTION_81_4();
    sub_19796A788(v11);
    OUTLINED_FUNCTION_124_3();
    sub_197A88098();
    v12 = *(v2 + 24);
    OUTLINED_FUNCTION_173_0();
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v13);
    OUTLINED_FUNCTION_124_3();
    sub_197A88098();
  }

  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_19797A1BC()
{
  result = qword_1ED87FC70;
  if (!qword_1ED87FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.ConvertData);
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderRequestResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797A30CLL);
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

uint64_t sub_19797A33C(char a1)
{
  if (!a1)
  {
    return 0x4974736575716572;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  return 0x7365527473726966;
}

uint64_t RequestKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B290, &qword_197AA12A8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797A570();
  sub_197A883D8();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  sub_19796AB98(&qword_1ED87FC98, &qword_1EAF49128, &unk_197A8CE70);
  sub_197A880E8();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for RequestKey(0) + 20));
    v16[14] = 1;
    sub_197A88118();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_19797A570()
{
  result = qword_1ED87FBC0;
  if (!qword_1ED87FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FBC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797A690);
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

uint64_t sub_19797A6C0(char a1)
{
  if (a1)
  {
    return 0x6575716572627573;
  }

  else
  {
    return 0x4974736575716572;
  }
}

uint64_t OUTLINED_FUNCTION_144()
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_144_1()
{
  v1 = *(v0 + 96);
  v2 = *v1;
  v3 = v1[1];
}

void OUTLINED_FUNCTION_144_3()
{
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = (v0[11] + 200);

  os_unfair_lock_lock(v6);
}

uint64_t OUTLINED_FUNCTION_144_5()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
}

uint64_t ClientData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0C0, &qword_197A954B0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197977F0C();
  OUTLINED_FUNCTION_159();
  sub_197A877A8();
  OUTLINED_FUNCTION_7_8();
  sub_197978008(v11, 255, v12);
  OUTLINED_FUNCTION_132_3();
  if (!v1)
  {
    v13 = *(type metadata accessor for ClientData(0) + 20);
    OUTLINED_FUNCTION_132_3();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_19797A980()
{
  OUTLINED_FUNCTION_157();
  v2 = OUTLINED_FUNCTION_43_1();
  v3 = type metadata accessor for RequestKey(v2);
  OUTLINED_FUNCTION_70(v3);
  if (*(v4 + 84) != v1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
    OUTLINED_FUNCTION_70(v5);
    if (*(v6 + 84) == v1)
    {
      v7 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
      v8 = *(v0 + 24);
    }
  }

  OUTLINED_FUNCTION_122_2();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_19797AA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_43_1();
  v7 = type metadata accessor for RequestKey(v6);
  v8 = OUTLINED_FUNCTION_70(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
    v13 = OUTLINED_FUNCTION_70(v12);
    if (*(v14 + 84) == v3)
    {
      v10 = v13;
      v15 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
      v15 = *(a3 + 24);
    }

    v11 = v4 + v15;
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

void InferenceProviderRequestResult.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v36 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_125_1(v10, v35);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_83_1();
  v15 = type metadata accessor for RequestKey(0);
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v38 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CD8, &qword_197A92D70);
  OUTLINED_FUNCTION_2(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_21_6();
  v25 = type metadata accessor for InferenceProviderRequestResult(v24);
  v26 = OUTLINED_FUNCTION_6(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v29 = v4[4];
  OUTLINED_FUNCTION_113_0(v4, v4[3]);
  sub_19797A1BC();
  sub_197A883A8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v30);
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_148_1();
    sub_197A87FD8();
    OUTLINED_FUNCTION_1_11();
    sub_197958DA4(v38, v0);
    sub_197A876D8();
    OUTLINED_FUNCTION_81_4();
    sub_19796A788(v31);
    sub_197A87F88();
    sub_19794BDF8(v2, v0 + *(v25 + 20), &qword_1EAF49CC8, &qword_197A92D58);
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v32);
    OUTLINED_FUNCTION_148_1();
    sub_197A87F88();
    v33 = OUTLINED_FUNCTION_112_2();
    v34(v33);
    sub_19794BDF8(v37, v0 + *(v25 + 24), &qword_1EAF49110, &qword_197A92D60);
    sub_1979698F8(v0, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    sub_1979699A8(v0, type metadata accessor for InferenceProviderRequestResult);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_19797AF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_19797B000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t RequestKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B298, &qword_197AA12B0);
  OUTLINED_FUNCTION_2(v31);
  v29 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for RequestKey(0);
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797A570();
  sub_197A883A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v29;
  v33 = 0;
  sub_19796AB98(&qword_1ED87FC90, &qword_1EAF49128, &unk_197A8CE70);
  sub_197A87FD8();
  sub_19794B118();
  v32 = 1;
  v24 = v31;
  v25 = sub_197A88008();
  (*(v23 + 8))(v14, v24);
  *(v21 + *(v15 + 20)) = v25;
  OUTLINED_FUNCTION_2_20();
  sub_197969950();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_1_20();
  return sub_197969A00(v21, v26);
}

uint64_t sub_19797B33C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19797B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_21_4();
  sub_19797B768(v17);
  v18 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v18, &qword_1EAF49A00);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v19, v20);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v21, v22);
  sub_197947900(v18, &qword_1EAF49A00);
  OUTLINED_FUNCTION_81_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5())
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v18, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v34 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v34, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v35 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v37);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v23 = *v18;
  v24 = v18[1];
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v25 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v25, qword_1ED87DD88);
  sub_197A878A8();
  v26 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v27 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v27, v28, v29);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v30, v31, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v32 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v32, v33);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_182_0()
{
  v1 = *(v0 + 112);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_182_1()
{

  return sub_197947A40(v0, v2, v1);
}

uint64_t sub_19797B7D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[9] = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v10 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1979CF60C, v10, 0);
  }

  else
  {
    v11 = v3[7];

    OUTLINED_FUNCTION_13();

    return v12();
  }
}

uint64_t InferenceProviderRequestConfiguration.requestUUID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for InferenceProviderRequestConfiguration(v0) + 28);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_52_2();

  return v6(v5);
}

double ModelXPCRequest.ExecuteRequest.Response.init(result:lockedInferenceProvider:)(uint64_t a1, __n128 *a2)
{
  OUTLINED_FUNCTION_150_1(a1, a2);
  OUTLINED_FUNCTION_100_4();
  sub_197A49444();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(0);
  *&result = OUTLINED_FUNCTION_133_4(v2, v3, v4, v5, v6, v7, v8, v9, v10).n128_u64[0];
  return result;
}

uint64_t sub_19797B9FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;
  v8 = OUTLINED_FUNCTION_29_3();

  return sub_19797BB14(v8, v1, v2, v4, v3);
}

uint64_t sub_19797BAA8()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*(v0 + 24))(*(v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_19797C5EC, v1, 0);
}

uint64_t sub_19797BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19797BAA8, 0, 0);
}

uint64_t sub_19797BB3C(void *a1, uint64_t a2, void *a3)
{
  if (qword_1ED87E900 != -1)
  {
    swift_once();
  }

  v6 = sub_197A87608();
  __swift_project_value_buffer(v6, qword_1ED87DF90);
  v7 = sub_197A875E8();
  v8 = sub_197A87D48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_197941000, v7, v8, "Replying to message %llu.", v9, 0xCu);
    MEMORY[0x19A8EBE00](v9, -1, -1);
  }

  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  return (*(v11 + 16))(v14, v12, v13, v10, v11);
}

void ModelXPCRequest.ExecuteRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A728, &qword_197A98578);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_19797BE04();
  OUTLINED_FUNCTION_125();
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_17_10();
  sub_197954374(v5);
  OUTLINED_FUNCTION_53_11();
  sub_197A880E8();
  if (!v0)
  {
    v6 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(0);
    OUTLINED_FUNCTION_122_5(v6);
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  v7 = OUTLINED_FUNCTION_79_4();
  v8(v7);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_19797BE04()
{
  result = qword_1ED87F950;
  if (!qword_1ED87F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F950);
  }

  return result;
}

uint64_t sub_19797BE5C(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746C75736572;
  }
}

void InferenceProviderDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49080, &qword_197A8BBE8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66_0();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[2];
  v16 = v0[3];
  v17 = *(v0 + 32);
  v13 = v4[4];
  OUTLINED_FUNCTION_113_0(v4, v4[3]);
  sub_19797C050();
  sub_197A883D8();
  OUTLINED_FUNCTION_101();
  sub_197A880B8();
  if (!v1)
  {
    OUTLINED_FUNCTION_112_0();
    v14 = sub_19797C104();
    sub_197A878A8();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();

    if (!v14)
    {
      OUTLINED_FUNCTION_55();
      sub_197A880C8();
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19797C050()
{
  result = qword_1ED87F8E8;
  if (!qword_1ED87F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8E8);
  }

  return result;
}

uint64_t sub_19797C0AC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x65636E6174736E69;
  }

  return 0x6E4F646574736F68;
}

unint64_t sub_19797C104()
{
  result = qword_1ED87CD30;
  if (!qword_1ED87CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87CD30);
  }

  return result;
}

void InferenceProviderDescriptor.Instance.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v36 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49050, &qword_197A8BBB0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v34 = v8;
  v35 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_64_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49058, &qword_197A8BBB8);
  v13 = OUTLINED_FUNCTION_2(v12);
  v31 = v14;
  v32 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  v30 = &v29 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49060, &qword_197A8BBC0);
  OUTLINED_FUNCTION_2(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_65_0();
  v25 = v0[1];
  v33 = *v0;
  v26 = v5[4];
  OUTLINED_FUNCTION_113_0(v5, v5[3]);
  sub_19797C400();
  sub_197A883D8();
  if (v25)
  {
    OUTLINED_FUNCTION_112_0();
    sub_1979A83EC();
    OUTLINED_FUNCTION_106();
    sub_197A88058();
    v27 = v35;
    sub_197A880B8();
    (*(v34 + 8))(v2, v27);
  }

  else
  {
    sub_19797C454();
    v28 = v30;
    OUTLINED_FUNCTION_106();
    sub_197A88058();
    (*(v31 + 8))(v28, v32);
  }

  (*(v21 + 8))(v3, v19);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19797C400()
{
  result = qword_1ED87F8B0;
  if (!qword_1ED87F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8B0);
  }

  return result;
}

unint64_t sub_19797C454()
{
  result = qword_1ED87F870;
  if (!qword_1ED87F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F870);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderDescriptor.Instance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797C574);
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

uint64_t sub_19797C5A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746C7561666564;
  }
}

uint64_t sub_19797C5EC()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  sub_19795B62C();
  OUTLINED_FUNCTION_13();

  return v3();
}

_BYTE *sub_19797C684(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797C750);
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

uint64_t _s20ModelManagerServices15RequestMetadataV2idAA14UUIDIdentifierVyACGvg_0()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for RequestMetadata(v0) + 24);
  v2 = sub_197A87298();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77();

  return v6(v5);
}

uint64_t UUIDIdentifier.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t RequestMetadata.loggingIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t RequestMetadata.useCaseID.getter()
{
  v0 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_99(*(v0 + 60));
  return OUTLINED_FUNCTION_22();
}

void sub_19797C8D0()
{
  OUTLINED_FUNCTION_17_4();
  v1 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_70(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_174_1();
  }
}

void OUTLINED_FUNCTION_154()
{

  JUMPOUT(0x19A8EAC80);
}

void OUTLINED_FUNCTION_154_0()
{
  v1 = *(v0 + 104);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_154_1(void *a1)
{
  v3 = v1 + *a1;

  return type metadata accessor for RequestMetadata(0);
}

uint64_t sub_19797C9B4()
{
  OUTLINED_FUNCTION_121_4();
  v1 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_70(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return (v7 + 1);
  }
}

void ModelXPCRequest.ExecuteRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = type metadata accessor for InferenceProviderRequestResult(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A730, &qword_197A98580);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_88_0();
  v13 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(v12);
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v17 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_19797BE04();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v22) = 0;
    OUTLINED_FUNCTION_17_10();
    sub_197954374(v18);
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    OUTLINED_FUNCTION_100_4();
    sub_197A49444();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    v19 = OUTLINED_FUNCTION_67_0();
    v20(v19);
    v21 = *(v13 + 20);
    OUTLINED_FUNCTION_151_3(v22);
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_19795130C(v1, type metadata accessor for ModelXPCRequest.ExecuteRequest.Response);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void InferenceProviderDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49088, &qword_197A8BBF0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_65_0();
  v9 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_19797C050();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v16) = 0;
    v10 = sub_197A87FA8();
    v15 = v11;
    OUTLINED_FUNCTION_112_0();
    sub_19797CFE8();
    OUTLINED_FUNCTION_106();
    sub_197A87FD8();
    v12 = sub_197A87FB8();
    v13 = OUTLINED_FUNCTION_74_2();
    v14(v13);
    *v4 = v10;
    *(v4 + 8) = v15;
    *(v4 + 16) = v16;
    *(v4 + 24) = v17;
    *(v4 + 32) = v12 & 1;
    sub_197A878A8();
    sub_197A878A8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(type metadata accessor for InferenceProviderRequestConfiguration(0) + 28);

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_122_1()
{

  return sub_197A87E58();
}

unint64_t OUTLINED_FUNCTION_122_5(uint64_t a1)
{
  v4 = (v1 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  *(v2 - 104) = v5;
  *(v2 - 96) = v6;
  *(v2 - 88) = v7;
  *(v2 - 80) = v8;
  *(v2 - 72) = v4;
  *(v2 - 105) = 1;

  return sub_1979518CC();
}

unint64_t sub_19797CFE8()
{
  result = qword_1ED87F898;
  if (!qword_1ED87F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F898);
  }

  return result;
}

uint64_t sub_19797D03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19797D090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

void InferenceProviderDescriptor.Instance.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v49 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49068, &qword_197A8BBC8);
  OUTLINED_FUNCTION_2(v51);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_64_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49070, &qword_197A8BBD0);
  OUTLINED_FUNCTION_2(v8);
  v48 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49078, &unk_197A8BBD8);
  OUTLINED_FUNCTION_2(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_104();
  v18 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_19797C400();
  sub_197A883A8();
  if (v0)
  {
    goto LABEL_8;
  }

  v19 = sub_197A88028();
  sub_197953BF0(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_197A87E88();
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v29 = &type metadata for InferenceProviderDescriptor.Instance;
    sub_197A87F38();
    sub_197A87E78();
    v31 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_36_0(v27);
    (*(v32 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = *(v50 + 8);
    v34 = OUTLINED_FUNCTION_83_0();
    v35(v34);
LABEL_8:
    v36 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_93();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v52 = *(v20 + v21);
    sub_197953BF8(v21 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v52)
      {
        OUTLINED_FUNCTION_112_0();
        sub_1979A83EC();
        OUTLINED_FUNCTION_144();
        OUTLINED_FUNCTION_55();
        v40 = sub_197A87FA8();
        v42 = v41;
        swift_unknownObjectRelease();
        v43 = OUTLINED_FUNCTION_79_4();
        v44(v43);
        v45 = *(v50 + 8);
        v46 = OUTLINED_FUNCTION_83_0();
        v47(v46);
      }

      else
      {
        sub_19797C454();
        OUTLINED_FUNCTION_144();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v1, v8);
        v37 = *(v50 + 8);
        v38 = OUTLINED_FUNCTION_83_0();
        v39(v38);
        v40 = 0;
        v42 = 0;
      }

      v36 = v3;
      *v49 = v40;
      v49[1] = v42;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_19797D5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19797D5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19797D5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746C7561666564 && a2 == 0xEF65636E6174736ELL;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197AA2720 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t OUTLINED_FUNCTION_138(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v3 + 168);
  *(v3 + 168) = 0;
}

uint64_t OUTLINED_FUNCTION_74_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);
  v5 = *(v1 - 104);

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_74_8()
{

  return sub_19794B2DC();
}

void OUTLINED_FUNCTION_74_10()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 120);
  v3 = *(v1 + 112) + **(v1 + 112);
}

uint64_t sub_19797D814()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19797D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_29_4();
  sub_1979D9E24(v19, &qword_1EAF49C50, &qword_197A92CE0);
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &qword_1EAF49C50);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v33);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v20, v21);
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49C50);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v23);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v34 = sub_197A87608();
    v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v35);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v37);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v38, v39, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v40 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v40, v41);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v49 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v49, qword_1ED87FB48);
      sub_197A878A8();
      v50 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v51);
        OUTLINED_FUNCTION_146(&dword_197941000, v52, v53, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v54 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v54, v55);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v42 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v42, qword_1ED87FB48);
      sub_197A878A8();
      v43 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v44);
        OUTLINED_FUNCTION_146(&dword_197941000, v45, v46, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v48)
      {
        sub_197947900(v47, &qword_1EAF499A8);
      }

      else
      {
        v71 = OUTLINED_FUNCTION_14_8();
        v72(v71);
        sub_197A21F90();
        v73 = OUTLINED_FUNCTION_60_3();
        v74(v73);
      }

      v75 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v75, v76);
      OUTLINED_FUNCTION_201();
      v32 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v25 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v25, qword_1ED87FB48);
      sub_197A875E8();
      v26 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v26))
      {
        v27 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v27);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v28, v29, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v30 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v30, v31);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v32 = v22;
      goto LABEL_37;
    default:
      v57 = *(v16 + 96);
      v56 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v58 = OUTLINED_FUNCTION_221();
      v59 = __swift_project_value_buffer(v58, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v50 = sub_197A875E8();
      v60 = sub_197A87D58();
      v61 = OUTLINED_FUNCTION_118_1(v60);
      v62 = *(v16 + 88);
      if (v61)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v64);
        v65 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteRequest(v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C58, &qword_197A92CE8);
        v66 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v66, v67, v68);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v63;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v69, v70, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v77);
      }

      v78 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v78;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v59, v79);
      break;
  }

  v32 = v50;
LABEL_37:
  sub_197947900(v32, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19797E018()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19797E110()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_186();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_100_0();
  sub_19796361C();
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t OUTLINED_FUNCTION_181_0()
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_181_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_219(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_197948834(a1, a2, va);
}

uint64_t sub_19797E228()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 408);
  *v4 = *v1;
  *(v3 + 416) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 248);
  if (v0)
  {
    v8 = sub_197A3C08C;
  }

  else
  {
    v8 = sub_19797E370;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_19797E370()
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 88);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  v11 = *(v3 + 24);
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v12 = *(v0 + 400);
    v13 = *(v0 + 256);

    sub_197947A40(v13, &qword_1EAF49110, &qword_197A92D60);
    v14 = sub_197A875E8();
    v15 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v15))
    {
      v16 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v16);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v17, v18, "ModelXPCSender executeRequest called with invalid data");
      OUTLINED_FUNCTION_44();
    }

    v19 = *(v0 + 376);
    v20 = *(v0 + 320);

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v21, 255, v22);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v20, v23);
    OUTLINED_FUNCTION_46();
    os_activity_scope_leave((v19 + 24));
    swift_endAccess();
    OUTLINED_FUNCTION_30_11();

    OUTLINED_FUNCTION_13();
    v25 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v26 = *(v0 + 328);
    v27 = *(v0 + 272);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v30 = *(v0 + 232);
    OUTLINED_FUNCTION_54_7();
    sub_19794B2DC();
    os_unfair_lock_lock((v29 + 200));
    v31 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    v32 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v32);
    (*(v33 + 16))(v26, v30 + v31);
    v34 = OUTLINED_FUNCTION_100_0();
    v35 = sub_19797E7A8(v34);
    OUTLINED_FUNCTION_100_3(v35, v36);
    if (!v38)
    {
      v39 = v37[1];
      v40 = v37[2];
      v41 = v10;
      v42 = v37[3];
      v55 = v37[4];
      v37[1] = v7;
      v37[2] = v6;
      OUTLINED_FUNCTION_141_2(v37, v41);
      sub_197A878A8();
      sub_197955620(v39, v40);
    }

    ((v29 + 208))(v0 + 96, 0);

    v43 = *(v0 + 376);
    v44 = *(v0 + 360);
    v45 = *(v0 + 344);
    v46 = *(v0 + 320);
    v47 = *(v0 + 328);
    v53 = *(v0 + 336);
    v54 = *(v0 + 312);
    v48 = *(v0 + 272);
    v56 = *(v0 + 296);
    v57 = *(v0 + 256);
    v49 = *(v0 + 224);

    sub_197947A40(v47, &qword_1EAF49130, &qword_197A969C0);
    os_unfair_lock_unlock((v29 + 200));
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v46, v50);
    OUTLINED_FUNCTION_54_7();
    sub_19794B2DC();
    OUTLINED_FUNCTION_46();
    os_activity_scope_leave((v43 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    v51 = *MEMORY[0x1E69E9840];
  }

  return v24();
}

void (*sub_19797E7A8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v2[4] = __swift_coroFrameAllocStub(*(*(v3 - 8) + 64));
  sub_197A44A54();
  v2[5] = sub_19797E874(v2);
  return sub_19797EB48;
}

void (*sub_19797E874(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  v3[8] = v5;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  sub_197A44A54();
  v3[9] = sub_19797EB20(v3);
  v3[10] = sub_19797E960(v3 + 4, v5);
  return sub_19797EBB4;
}

void (*sub_19797E960(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0xC0uLL);
  *a1 = v6;
  v6[18] = a2;
  v6[19] = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v6[22] = __swift_coroFrameAllocStub(*(v8 + 64));
  v9 = *v2;
  v10 = sub_19794B040();
  *(v6 + 41) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
  if (sub_197A87EB8())
  {
    v14 = *v3;
    v15 = sub_19794B040();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_197A88288();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[23] = v12;
  if (v13)
  {
    v17 = *(*v3 + 56) + 48 * v12;
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v18 = xmmword_197A97E00;
    v19 = 0uLL;
  }

  *(v6 + 6) = v18;
  *(v6 + 7) = v19;
  v6[16] = v20;
  *(v6 + 136) = v21;
  return sub_19797EC40;
}

uint64_t (*sub_19797EB20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_19797EF8C;
}

void sub_19797EB48(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_197947A40(v2, &qword_1EAF49130, &qword_197A969C0);
  free(v2);

  free(v1);
}

void sub_19797EBB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_197947A40(v3, &qword_1EAF49130, &qword_197A969C0);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void sub_19797EC40(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[12];
  v5 = (*a1)[13];
  v4 = (*a1)[14];
  v6 = (*a1)[15];
  v7 = (*a1)[16];
  v8 = *(*a1 + 136);
  v9 = *(*a1 + 41);
  if ((a2 & 1) == 0)
  {
    if (v3 == 1)
    {
      if ((*(*a1 + 41) & 1) == 0)
      {
        goto LABEL_15;
      }

      v44 = v2[20];
      v15 = (*a1)[14];
      v16 = (*a1)[13];
      v17 = (*a1)[15];
      v18 = (*a1)[16];
      sub_197947A40(*(*v2[19] + 48) + *(v2[21] + 72) * v2[23], &qword_1EAF49130, &qword_197A969C0);
      OUTLINED_FUNCTION_16_10();
      sub_19796AB98(v19, &qword_1EAF49130, &qword_197A969C0);
      sub_197A87EC8();
      goto LABEL_14;
    }

    v20 = *v2[19];
    v21 = v2[23];
    if ((*(*a1 + 41) & 1) == 0)
    {
      v30 = v2[22];
      v31 = v2[18];
      v15 = v4;
      v32 = v6;
      v16 = v5;
      v33 = v7;
      sub_197A44A54();
      v2[6] = v3;
      v2[7] = v16;
      v2[8] = v15;
      v2[9] = v32;
      v2[10] = v33;
      *(v2 + 88) = v8;
      v26 = OUTLINED_FUNCTION_108_3();
      goto LABEL_13;
    }

LABEL_11:
    v29 = v20[7] + 48 * v21;
    *v29 = v3;
    *(v29 + 8) = v5;
    *(v29 + 16) = v4;
    *(v29 + 24) = v6;
    *(v29 + 32) = v7;
    *(v29 + 40) = v8;
    goto LABEL_15;
  }

  if (v3 != 1)
  {
    v20 = *v2[19];
    v21 = v2[23];
    if ((*(*a1 + 41) & 1) == 0)
    {
      v22 = v2[22];
      v23 = v2[18];
      v15 = v4;
      v24 = v6;
      v16 = v5;
      v25 = v7;
      sub_197A44A54();
      *v2 = v3;
      v2[1] = v16;
      v2[2] = v15;
      v2[3] = v24;
      v2[4] = v25;
      *(v2 + 40) = v8;
      v26 = OUTLINED_FUNCTION_108_3();
      v28 = v2;
LABEL_13:
      sub_19794BD0C(v26, v27, v28, v20);
LABEL_14:
      v4 = v15;
      v5 = v16;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (*(*a1 + 41))
  {
    v43 = v2[20];
    v10 = (*a1)[14];
    v11 = (*a1)[13];
    v12 = (*a1)[15];
    v13 = (*a1)[16];
    sub_197947A40(*(*v2[19] + 48) + *(v2[21] + 72) * v2[23], &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_16_10();
    sub_19796AB98(v14, &qword_1EAF49130, &qword_197A969C0);
    sub_197A87EC8();
    v4 = v10;
    v5 = v11;
  }

LABEL_15:
  v34 = v2[22];
  v35 = v2[12];
  v36 = v2[13];
  v37 = v2[14];
  v38 = v2[15];
  v39 = v2[16];
  v40 = *(v2 + 136);
  sub_19797EF18(v3, v5, v4);
  v41 = OUTLINED_FUNCTION_108_3();
  sub_197963674(v41, v42, v37);
  free(v34);

  free(v2);
}

uint64_t sub_19797EF18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {

    return sub_19794A620(a2, a3);
  }

  return result;
}

uint64_t sub_19797EFAC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_19797F020(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);

  v6 = *a1;
  OUTLINED_FUNCTION_6_9();
  sub_197978A98();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + *a2));
  return v2;
}

uint64_t sub_19797F0C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = sub_197A87298();
  OUTLINED_FUNCTION_6(v9);
  (*(v10 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_19797F19C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_19798933C();
  *a2 = result;
  return result;
}

uint64_t sub_19797F1CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_197A87258();
    v9 = OUTLINED_FUNCTION_70(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 24);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
      v12 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_19797F2A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_197A87258();
    v9 = OUTLINED_FUNCTION_70(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 24);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
      v12 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

double sub_19797F3D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_197961900(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_19797F5FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19797F550();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19797F778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_19797F80C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19797F94C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19797FA38()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1979801D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = sub_197A87258();
  v8 = a1 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_197980250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87258();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1979802D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_52_2();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_197980374()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  result = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_19798040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_70(v11);
    if (*(v12 + 84) != a2)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 24) + 24));
    }

    v10 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_197980504()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v5 = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    result = OUTLINED_FUNCTION_70(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 24) = (v0 - 1);
      return result;
    }

    v8 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1979805F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_70(v11);
    if (*(v12 + 84) != a2)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 24)));
    }

    v10 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1979806EC()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5 = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    result = OUTLINED_FUNCTION_70(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return result;
    }

    v8 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1979807DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_97();
  v6 = sub_197A87298();
  OUTLINED_FUNCTION_70(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(v3 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_52_2();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_197980870()
{
  OUTLINED_FUNCTION_17_4();
  v4 = sub_197A87298();
  result = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1979808FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_52_2();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 4)
    {
      return v11 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1979809A8()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  result = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }

  return result;
}

uint64_t sub_197980B98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_19799A9AC();
  *a2 = result;
  return result;
}

uint64_t sub_197980BC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197980C08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_33_6();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_197980C48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197980CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A0D6DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197980E6C()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for ClientData(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_197980EA8()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for ClientData(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197980EE0()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_197980F1C()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197980F54(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RequestMetadata(0);
    v9 = OUTLINED_FUNCTION_70(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v14 = OUTLINED_FUNCTION_70(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void sub_197981068()
{
  OUTLINED_FUNCTION_71();
  if (v4 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_157();
    v5 = type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_70(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[5];
    }

    else
    {
      v8 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70(v8);
      if (*(v9 + 84) == v3)
      {
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v11 = v2[7];
      }
    }

    OUTLINED_FUNCTION_122_2();

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_19798116C()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1979811B8()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197981200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestKey(0);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 4;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1979812B4()
{
  OUTLINED_FUNCTION_157();
  v4 = OUTLINED_FUNCTION_43_1();
  v5 = type metadata accessor for RequestKey(v4);
  result = OUTLINED_FUNCTION_70(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 + 3);
  }

  return result;
}

uint64_t sub_197981478()
{
  v1 = (type metadata accessor for Request(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  v6 = *(v0 + v3 + 40);

  v7 = *(v0 + v3 + 56);

  sub_197974AFC(*(v0 + v3 + 64), *(v0 + v3 + 72));
  v8 = *(v0 + v3 + 80);

  v9 = v1[11];
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 8))(v0 + v3 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_197981580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1979815B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1979815F0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_197981644()
{
  OUTLINED_FUNCTION_166_1();
  v2 = type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_124(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);

  v8 = v1 + v4;
  v9 = sub_197A877A8();
  v10 = OUTLINED_FUNCTION_122_3();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    OUTLINED_FUNCTION_36_0(v9);
    (*(v12 + 8))(v1 + v4, v9);
  }

  v13 = *(v0 + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v13, 1, v9))
  {
    OUTLINED_FUNCTION_36_0(v9);
    (*(v14 + 8))(v8 + v13, v9);
  }

  OUTLINED_FUNCTION_165();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_197981788(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v6 = type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_70(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[5];
  }

  else
  {
    v9 = sub_197A87298();
    OUTLINED_FUNCTION_70(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
      OUTLINED_FUNCTION_70(v11);
      if (*(v12 + 84) == a2)
      {
        v8 = a3[7];
      }

      else
      {
        type metadata accessor for RequestKey(0);
        v8 = a3[14];
      }
    }
  }

  v13 = OUTLINED_FUNCTION_177(v8);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_1979818CC()
{
  OUTLINED_FUNCTION_71();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_70(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = sub_197A87298();
      OUTLINED_FUNCTION_70(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
        OUTLINED_FUNCTION_70(v11);
        if (*(v12 + 84) == v5)
        {
          v8 = v4[7];
        }

        else
        {
          type metadata accessor for RequestKey(0);
          v8 = v4[14];
        }
      }
    }

    v13 = OUTLINED_FUNCTION_177(v8);

    __swift_storeEnumTagSinglePayload(v13, v14, v0, v15);
  }
}

uint64_t sub_197981A18(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  sub_197A87298();
  v5 = OUTLINED_FUNCTION_177(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_197981A90()
{
  OUTLINED_FUNCTION_71();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_197A87298();
    v5 = OUTLINED_FUNCTION_177(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_197981B84()
{
  OUTLINED_FUNCTION_67();
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v1[2];
  swift_unknownObjectRelease();
  v8 = v1[4];

  v9 = v1[5];

  v10 = v1 + v4;
  v11 = *(v1 + v4 + 8);

  v12 = v1 + v4 + v0[5];
  v13 = sub_197A877A8();
  v14 = OUTLINED_FUNCTION_122_3();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    OUTLINED_FUNCTION_36_0(v13);
    (*(v16 + 8))(v12, v13);
  }

  v17 = *(type metadata accessor for ClientData(0) + 20);
  if (!__swift_getEnumTagSinglePayload(&v12[v17], 1, v13))
  {
    OUTLINED_FUNCTION_36_0(v13);
    (*(v18 + 8))(&v12[v17], v13);
  }

  v19 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v0[6];
  v21 = sub_197A87298();
  OUTLINED_FUNCTION_6(v21);
  v23 = *(v22 + 8);
  v23(&v10[v20], v21);
  v23(&v10[v0[7]], v21);
  v24 = *&v10[v0[8]];

  v23(&v10[v0[14]], v21);
  v25 = *&v10[v0[15] + 8];

  v26 = *(v1 + v19);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v27, v28, v29);
}

uint64_t sub_197981D70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_197981DCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197981E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_197A87298();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197981E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87298();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197981F0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197981F44()
{
  v2 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_82_6(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v5));
  v9 = *(v0 + 28);
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 8))(v1 + v5 + v9);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_197982020()
{
  v2 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_82_6(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v5));
  v10 = *(v0 + 28);
  v11 = sub_197A87298();
  OUTLINED_FUNCTION_6(v11);
  (*(v12 + 8))(v1 + v5 + v10);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_197982198()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_10_13();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1979821D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19798220C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 sub_197982278(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1979822F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197982330()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1979823D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_197982410()
{
  OUTLINED_FUNCTION_67();
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);

  v8 = *(v1 + 24);

  v9 = v1 + v4;
  v10 = *(v1 + v4 + 8);

  v11 = v1 + v4 + v0[5];
  v12 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v12))
  {
    OUTLINED_FUNCTION_21_9();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_76_7();
    v16(v15);
  }

  v17 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v17))
  {
    OUTLINED_FUNCTION_21_9();
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_127_1();
    v21(v20);
  }

  v22 = v0[6];
  v23 = sub_197A87298();
  OUTLINED_FUNCTION_6(v23);
  v25 = *(v24 + 8);
  v25(v9 + v22, v23);
  v26 = OUTLINED_FUNCTION_126_2(v0[7]);
  (v25)(v26);
  v27 = *(v9 + v0[8]);

  v28 = OUTLINED_FUNCTION_126_2(v0[14]);
  (v25)(v28);
  v29 = *(v9 + v0[15] + 8);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1979825A8()
{
  OUTLINED_FUNCTION_67();
  v3 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = v1 + v5;
  v10 = *(v1 + v5 + 8);

  v11 = v1 + v5 + v0[5];
  v12 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v12))
  {
    OUTLINED_FUNCTION_21_9();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_76_7();
    v16(v15);
  }

  v17 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v17))
  {
    OUTLINED_FUNCTION_21_9();
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_127_1();
    v21(v20);
  }

  v22 = OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_6(v22);
  v24 = *(v23 + 8);
  v24(v9 + v5, v22);
  v25 = OUTLINED_FUNCTION_122_4(v0[7]);
  (v24)(v25);
  v26 = *(v9 + v0[8]);

  v27 = OUTLINED_FUNCTION_122_4(v0[14]);
  (v24)(v27);
  v28 = *(v9 + v0[15] + 8);

  v29 = *(v1 + v2);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_197982738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    OUTLINED_FUNCTION_70(v11);
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 24)));
    }

    v10 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_197982828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v9 = OUTLINED_FUNCTION_70(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    result = OUTLINED_FUNCTION_70(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return result;
    }

    v12 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_197982920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  v6 = type metadata accessor for RequestMetadata(0);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = type metadata accessor for InferenceProviderRequestResult(0);
    OUTLINED_FUNCTION_70(v11);
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 24) + 8));
    }

    v10 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1979829FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71();
  v8 = type metadata accessor for RequestMetadata(0);
  v9 = OUTLINED_FUNCTION_70(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = type metadata accessor for InferenceProviderRequestResult(0);
    result = OUTLINED_FUNCTION_70(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return result;
    }

    v12 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_197982AE0()
{
  OUTLINED_FUNCTION_67();
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124(v2);
  v5 = *(v4 + 64);
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = *(v6 + 8);

  v8 = v6 + v0[5];
  v9 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v9))
  {
    OUTLINED_FUNCTION_21_9();
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_76_7();
    v13(v12);
  }

  v14 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v14))
  {
    OUTLINED_FUNCTION_21_9();
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_127_1();
    v18(v17);
  }

  v19 = v0[6];
  v20 = sub_197A87298();
  OUTLINED_FUNCTION_6(v20);
  v22 = *(v21 + 8);
  v22(v6 + v19, v20);
  v23 = OUTLINED_FUNCTION_126_2(v0[7]);
  (v22)(v23);
  v24 = *(v6 + v0[8]);

  v25 = OUTLINED_FUNCTION_126_2(v0[14]);
  (v22)(v25);
  v26 = *(v6 + v0[15] + 8);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v27, v28, v29);
}

uint64_t sub_197982C68()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_121_3();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_197982C9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_197982CDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_197982D1C()
{
  OUTLINED_FUNCTION_67();
  v3 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = *(v1 + v5 + 8);

  v12 = v1 + v5 + v0[5];
  v13 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v13))
  {
    OUTLINED_FUNCTION_21_9();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_76_7();
    v17(v16);
  }

  v18 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v18))
  {
    OUTLINED_FUNCTION_21_9();
    v20 = *(v19 + 8);
    v21 = OUTLINED_FUNCTION_127_1();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_6(v23);
  v25 = *(v24 + 8);
  v25(v10 + v5, v23);
  v26 = OUTLINED_FUNCTION_122_4(v0[7]);
  (v25)(v26);
  v27 = *(v10 + v0[8]);

  v28 = OUTLINED_FUNCTION_122_4(v0[14]);
  (v25)(v28);
  v29 = *(v10 + v0[15] + 8);

  v30 = *(v1 + v2);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v31, v32, v33);
}

uint64_t sub_197982F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A4B0B4();
  *a1 = result;
  return result;
}

uint64_t sub_197982F88(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6F6972506B736174;
  }
}

uint64_t sub_197982FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A4B640();
  *a1 = result;
  return result;
}

uint64_t sub_197983128()
{
  OUTLINED_FUNCTION_121_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_70(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return (v7 + 1);
  }
}

void sub_1979831BC()
{
  OUTLINED_FUNCTION_17_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_70(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_174_1();
  }
}

uint64_t sub_19798324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1979832F8()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5 = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1979833A4()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for Assertion.DaemonRep(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_1979833E0()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for Assertion.DaemonRep(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197983418()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_197983464()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1979834DC()
{
  OUTLINED_FUNCTION_43_1();
  sub_197A876D8();
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_197983518()
{
  OUTLINED_FUNCTION_43_1();
  sub_197A876D8();
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197983580(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87818();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1979835C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87818();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_197983614()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19798364C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1979836C8(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_197983708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A62078();
  *a1 = result;
  return result;
}

unint64_t sub_197983730(char a1)
{
  result = 0x6361667265746E69;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_76_8();
      break;
    case 2:
      result = OUTLINED_FUNCTION_83_6(16);
      break;
    case 3:
      result = 0x6144746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979837D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A618D0();
  *a1 = result;
  return result;
}

uint64_t sub_19798387C(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    v2 = *(a1 + 24);
    OUTLINED_FUNCTION_98_5();
    return (v3 + 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_68_8();
    type metadata accessor for ClientData(v5);
    v6 = OUTLINED_FUNCTION_15_10();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1979838EC(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    type metadata accessor for ClientData(0);
    v4 = OUTLINED_FUNCTION_15_10();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_197983968()
{
  OUTLINED_FUNCTION_111();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 32));
  }

  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v5 = OUTLINED_FUNCTION_177(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1979839E4()
{
  OUTLINED_FUNCTION_76_1();
  if (v3)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
    v5 = OUTLINED_FUNCTION_177(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_197983A60()
{
  OUTLINED_FUNCTION_111();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 24));
  }

  OUTLINED_FUNCTION_68_8();
  sub_197A87298();
  v3 = OUTLINED_FUNCTION_15_10();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_197983AC4()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_197A87298();
    v3 = OUTLINED_FUNCTION_15_10();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_197983B30()
{
  OUTLINED_FUNCTION_111();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v3 = OUTLINED_FUNCTION_15_10();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_197983BA8()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    v3 = OUTLINED_FUNCTION_15_10();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_197983D60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_197A87258();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197983DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87258();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197983FE0()
{
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 8))(v0 + v4);
  v10 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1979840B8()
{
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;
  v16 = *(v0 + 16);
  swift_unknownObjectRelease();
  v17 = *(v0 + 32);

  v18 = sub_197A87298();
  OUTLINED_FUNCTION_6(v18);
  (*(v19 + 8))(v0 + v4);
  (*(v9 + 8))(v0 + v13, v7);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v14, v15 | 7);
}

uint64_t sub_197984210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_155_2();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_197984294()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1979842D0()
{
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_10(NextStreamResultsRequest);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_197A87298();
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 8))(v0 + ((v3 + 16) & ~v3));
  v8 = OUTLINED_FUNCTION_155_2();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_197984388()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1979843DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_197984484(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

uint64_t sub_1979844F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_197A87888();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_197A87878();
  v12 = OUTLINED_FUNCTION_2(v30);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197A878A8();
  sub_197A6AD40(a1, a2);
  sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620]);
  sub_197A87868();
  v19 = OUTLINED_FUNCTION_1();
  sub_197984D18(v19, v20);
  v21 = OUTLINED_FUNCTION_1();
  sub_197984C7C(v21, v22);
  v23 = OUTLINED_FUNCTION_1();
  sub_197974AFC(v23, v24);
  sub_197A87858();
  (*(v7 + 8))(v11, v4);
  v31 = sub_197984748(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF489D8, &qword_197A88F08);
  sub_197984DB8();
  v25 = sub_197A87908();
  v26 = OUTLINED_FUNCTION_1();
  sub_197974AFC(v26, v27);

  (*(v14 + 8))(v18, v30);
  return v25;
}

uint64_t sub_197984748(uint64_t a1)
{
  v2 = sub_197A87878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197984E64(&qword_1EAF489E8, MEMORY[0x1E69663E0]);
  v7 = sub_197A87A38();
  v38 = MEMORY[0x1E69E7CC0];
  sub_19798CC14(0, v7 & ~(v7 >> 63), 0);
  v8 = v38;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_197A87A28();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v10 = v37;
      v11 = *(v36 + 16);
      v34 = v36;
      *&v35 = v11;
      v33 = v36 + 32;
      v32 = xmmword_197A88E50;
      v12 = v37;
      while (v35 != v10)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v33 + v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF489F0, &unk_197A88F10);
        v14 = swift_allocObject();
        *(v14 + 16) = v32;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_197A87958();
        v15 = result;
        v17 = v16;
        v38 = v8;
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_19798CC14(v18 > 1, v19 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        ++v10;
        if (!--v7)
        {
          v37 = v10;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v21 = v36;
      v35 = xmmword_197A88E50;
      while (1)
      {
        v22 = *(v21 + 16);
        if (v37 == v22)
        {

          return v8;
        }

        if (v37 >= v22)
        {
          break;
        }

        v23 = *(v21 + 32 + v37++);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF489F0, &unk_197A88F10);
        v24 = swift_allocObject();
        *(v24 + 16) = v35;
        *(v24 + 56) = MEMORY[0x1E69E7508];
        *(v24 + 64) = MEMORY[0x1E69E7558];
        *(v24 + 32) = v23;
        result = sub_197A87958();
        v25 = result;
        v27 = v26;
        v38 = v8;
        v29 = *(v8 + 16);
        v28 = *(v8 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_19798CC14(v28 > 1, v29 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v29 + 1;
        v30 = v8 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

double default argument 1 of TaskCancellingXPCReceivedMessage.init(isSync:auditToken:request:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t default argument 0 of InputStreamingRequest.init(client:session:loggingIdentifier:clientDataSequence:)@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED880258;
  a1[3] = type metadata accessor for ModelServiceClient();
  a1[4] = &protocol witness table for ModelServiceClient;
  *a1 = v2;
}

uint64_t sub_197984BCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197984BEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteDeviceSet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RemoteDeviceSet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_197984C7C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_197984F80(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_197984EAC();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_197984D18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_197984DB8()
{
  result = qword_1EAF489E0;
  if (!qword_1EAF489E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF489D8, &qword_197A88F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF489E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_197984E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197984EAC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_197A87888();
  sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620]);
  result = sub_197A87848();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_197984F80(uint64_t a1, uint64_t a2)
{
  result = sub_197A87058();
  if (!result || (result = sub_197A87078(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_197A87068();
      sub_197A87888();
      sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620]);
      return sub_197A87848();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197985060(unsigned __int8 a1)
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](a1);
  return sub_197A88358();
}

uint64_t sub_1979850B0()
{
  v1 = *v0;
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v1);
  return sub_197A88358();
}

uint64_t ProcessHandle.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_197A878A8();
  return v1;
}

uint64_t ProcessHandle.executablePath.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_197A878A8();
  return v1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_197985170(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1979851C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_197985244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 5))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 5;
      v2 = v3 - 5;
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

uint64_t sub_197985280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Assertion.DaemonRep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_197985358(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197985434()
{
  result = qword_1EAF48A60;
  if (!qword_1EAF48A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48A60);
  }

  return result;
}

uint64_t sub_197985488()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF48A68);
  __swift_project_value_buffer(v0, qword_1EAF48A68);
  return sub_197A875F8();
}

void sub_197985508()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
  [v0 setValues_];
  sub_19798627C(&unk_1F0C0CDD0, v0);
  qword_1ED8817D0 = v0;
}

uint64_t sub_197985568()
{
  v1 = v0;
  v20 = sub_197A87D88();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_197A87D98();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v9 = sub_197A87838();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_1_0();
  swift_defaultActor_initialize();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1979860A0(MEMORY[0x1E69E7CC0], aBlock);
  *(v0 + 120) = aBlock[0];
  sub_1979863BC(0, &qword_1ED87DD58, 0x1E69E9618);
  sub_197A87828();
  aBlock[0] = v11;
  sub_1979863FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48A98, &unk_197A89100);
  sub_197986454();
  sub_197A87DF8();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8098], v20);
  *(v0 + 128) = sub_197A87DA8();
  v12 = *sub_197A87398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA0, &qword_197A97D80);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(v1 + 136) = v13;
  v14 = OBJC_IVAR____TtC20ModelManagerServices20RunningBoardProvider____lazy_storage___processEventStream;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48A80, qword_197A890B0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E69C75F8]);

  v17 = [v16 init];
  *(v1 + 112) = v17;
  aBlock[4] = sub_197985954;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197985958;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  [v17 updateConfiguration_];
  _Block_release(v18);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

id sub_1979858CC(id a1)
{
  if (qword_1ED87DE68 != -1)
  {
    swift_once();
  }

  [a1 setStateDescriptor_];

  return [a1 setServiceClass_];
}

uint64_t sub_197985958(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_1979859AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [objc_opt_self() identifierWithPid_];
  if (v4)
  {
    v5 = v4;
    sub_1979863BC(0, &qword_1ED87DD68, 0x1E69C75D0);
    v6 = v5;
    v7 = sub_197985C7C(v6);
    sub_197985D54(v7, v13);

    *a2 = v13[0];
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
    v12 = v16;
  }

  else
  {
    if (qword_1EAF48910 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v8 = sub_197A87608();
    __swift_project_value_buffer(v8, qword_1EAF48A68);
    v9 = sub_197A875E8();
    v10 = sub_197A87D78();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v2;
      _os_log_impl(&dword_197941000, v9, v10, "Failed to get RBSProcessIdentifier for %d.", v11, 8u);
      MEMORY[0x19A8EBE00](v11, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v12 = 0uLL;
    *(a2 + 24) = 0u;
  }

  *(a2 + 40) = v12;
}

id sub_197985C7C(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_197A870E8();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v4 = *MEMORY[0x1E69E9840];
  return v1;
}