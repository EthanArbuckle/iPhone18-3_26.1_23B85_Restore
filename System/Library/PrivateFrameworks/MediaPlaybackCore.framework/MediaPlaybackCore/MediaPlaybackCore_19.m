uint64_t sub_1C5E1DE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5E1DB18(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5E1DE8C(uint64_t a1)
{
  v2 = sub_1C5E21628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E1DEC8(uint64_t a1)
{
  v2 = sub_1C5E21628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C5E1DF04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C5E1DBA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C5E1DF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[53] = a2;
  v3[54] = a3;
  v3[52] = a1;
  sub_1C5C67EBC(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[55] = swift_task_alloc();
  v4 = sub_1C6014F20();
  v3[56] = v4;
  v3[57] = *(v4 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5E1E05C, 0, 0);
}

uint64_t sub_1C5E1E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  sub_1C5CB50F4(*(v16 + 416), &selRef_countryCode);
  if (!v17)
  {
    v23 = 1;
    goto LABEL_5;
  }

  v19 = *(v16 + 440);
  v18 = *(v16 + 448);
  v21 = *(v16 + 424);
  v20 = *(v16 + 432);
  a11 = 0;
  a12 = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000002BLL, 0x80000001C6057260);
  v22 = OUTLINED_FUNCTION_6_3();
  MEMORY[0x1C69534E0](v22);

  OUTLINED_FUNCTION_109();
  MEMORY[0x1C69534E0](0xD00000000000001BLL);
  MEMORY[0x1C69534E0](v21, v20);
  v23 = 0xE000000000000000;
  sub_1C6014F00();
  if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
  {
    sub_1C5C67CF4(*(v16 + 440));
LABEL_5:
    sub_1C5E21444();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    *v24 = 0;
    v24[1] = v23;
    swift_willThrow();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_14_0();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v34 = *(v16 + 464);
  v35 = *(v16 + 472);
  v36 = *(v16 + 448);
  v37 = *(v16 + 456);
  v38 = *(v16 + 440);
  v39 = *(v16 + 416);

  (*(v37 + 32))(v35, v38, v36);
  sub_1C5C64D74(0, &qword_1EC1ABF90);
  v40 = [v39 userIdentity];
  sub_1C5C64D74(0, &qword_1EC1ABF98);
  v41 = sub_1C5E1ECA0();
  v42 = sub_1C5E1ED34(v40, v41);
  *(v16 + 480) = v42;
  (*(v37 + 16))(v34, v35, v36);
  v43 = objc_allocWithZone(MEMORY[0x1E69E4480]);
  v44 = sub_1C5E1EFD0(v34, v42);
  *(v16 + 488) = v44;
  v45 = [objc_opt_self() highPrioritySession];
  *(v16 + 496) = v45;
  *(v16 + 16) = v16;
  *(v16 + 56) = v16 + 384;
  *(v16 + 24) = sub_1C5E1E438;
  v46 = swift_continuation_init();
  sub_1C5E21498(0, &qword_1EC1A8D20, &qword_1EC1A8C58);
  *(v16 + 344) = v47;
  *(v16 + 288) = MEMORY[0x1E69E9820];
  *(v16 + 296) = 1107296256;
  *(v16 + 304) = sub_1C5CA6B88;
  *(v16 + 312) = &block_descriptor_111_0;
  *(v16 + 320) = v46;
  [v45 enqueueDataRequest:v44 withCompletionHandler:v16 + 288];
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6DEC8](v48);
}

uint64_t sub_1C5E1E438()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = *(v3 + 48);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5E1E534()
{
  v1 = *(v0 + 384);

  sub_1C5E213C4(v1, &selRef_bodyData);
  if (v2 >> 60 == 15)
  {
    v35 = *(v0 + 488);
    v37 = *(v0 + 480);
    v3 = *(v0 + 456);
    v39 = *(v0 + 448);
    v41 = *(v0 + 472);
    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v0 + 392) = 1;
    OUTLINED_FUNCTION_9_33();
    sub_1C5C67EBC(0, v6, v7, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    *(v0 + 352) = sub_1C6016940();
    *(v0 + 360) = v9;
    sub_1C60174C0();
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 96) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
    *(inited + 72) = v10;
    sub_1C6016880();
    sub_1C6017540();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000028);
    MEMORY[0x1C69534E0](v5, v4);
    MEMORY[0x1C69534E0](0x646F62206F6E202CLL, 0xEA00000000005D79);
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v11, v12);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    swift_willThrow();

    (*(v3 + 8))(v41, v39);
LABEL_4:

    OUTLINED_FUNCTION_172();

    return v13();
  }

  sub_1C6014C10();
  swift_allocObject();
  sub_1C6014C00();
  sub_1C5E2151C();
  sub_1C6014BF0();
  v43 = v1;

  v15 = *(v0 + 400);
  v38 = *(v0 + 488);
  v40 = *(v0 + 480);
  v42 = *(v0 + 472);
  if (!v15[2])
  {
    v23 = *(v0 + 456);
    v36 = *(v0 + 448);
    v24 = *(v0 + 424);
    v34 = *(v0 + 432);

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v0 + 408) = 1;
    OUTLINED_FUNCTION_9_33();
    sub_1C5C67EBC(0, v25, v26, MEMORY[0x1E69E6F90]);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1C60311E0;
    *(v0 + 368) = sub_1C6016940();
    *(v0 + 376) = v28;
    sub_1C60174C0();
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(v27 + 96) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
    *(v27 + 72) = v29;
    sub_1C6016880();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C60572B0);
    MEMORY[0x1C69534E0](v24, v34);
    MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C60572E0);
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v30, v31);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_203();

    swift_willThrow();
    v32 = OUTLINED_FUNCTION_6_3();
    sub_1C5CB6098(v32, v33);

    (*(v23 + 8))(v42, v36);
    goto LABEL_4;
  }

  v16 = *(v0 + 456);
  v17 = *(v0 + 448);
  v19 = v15[4];
  v18 = v15[5];

  v20 = OUTLINED_FUNCTION_6_3();
  sub_1C5CB6098(v20, v21);

  (*(v16 + 8))(v42, v17);

  OUTLINED_FUNCTION_131_2();

  return v22(v19, v18);
}

uint64_t sub_1C5E1EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = v10[62];
  v13 = v10[60];
  v12 = v10[61];
  v14 = v10[59];
  v15 = v10[56];
  v16 = v10[57];
  swift_willThrow();

  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

id sub_1C5E1ECA0()
{
  v0 = sub_1C6016900();

  v1 = sub_1C6016900();

  v2 = [swift_getObjCClassFromMetadata() clientInfoForMusicKitRequestWithClientIdentifier:v0 clientVersion:v1];

  return v2;
}

id sub_1C5E1ED34(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentity:a1 clientInfo:a2];

  return v4;
}

uint64_t sub_1C5E1ED90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v6 = v5;
  v10 = sub_1C6016900();

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14[4] = sub_1C5CB5C00;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1C5CFA7C4;
  v14[3] = &block_descriptor_98;
  _Block_copy(v14);
  OUTLINED_FUNCTION_75_2();

  v12 = [v6 initWithSource:v10 modelKind:a3 block:a5];

  _Block_release(a5);

  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if ((a3 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

id sub_1C5E1EEDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = sub_1C6016D40();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithFilterPredicates:v4 library:a2];

  return v5;
}

id sub_1C5E1EF5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C6014F50();
    sub_1C5CB6098(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

id sub_1C5E1EFD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C6014EA0();
  v7 = [v3 initWithURL:v6 requestContext:a2];

  v8 = sub_1C6014F20();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_1C5E1F068(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  sub_1C5C8FE04(0, &unk_1EC1ABF78);
  OUTLINED_FUNCTION_19_27();
  result = sub_1C6017510();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = v5 + 1;
    sub_1C5CE34A8(a1 + 32 + 40 * v5, v21);
    result = sub_1C60174A0();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      sub_1C5CE34A8(*(v3 + 48) + 40 * v9, v20);
      v13 = MEMORY[0x1C6953F90](v20, v21);
      sub_1C5CE3504(v20);
      if (v13)
      {
        result = sub_1C5CE3504(v21);
        goto LABEL_12;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    v14 = *(v3 + 48) + 40 * v9;
    v15 = v21[0];
    v16 = v21[1];
    *(v14 + 32) = v22;
    *v14 = v15;
    *(v14 + 16) = v16;
    v17 = *(v3 + 16);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    *(v3 + 16) = v19;
LABEL_12:
    v5 = v7;
    if (v7 == v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C5E1F1F8(uint64_t a1)
{
  if (sub_1C5C6AA20())
  {
    sub_1C5E20DA8();
    OUTLINED_FUNCTION_19_27();
    v2 = sub_1C6017510();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  result = sub_1C5C6AA20();
  if (result)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 + 56;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_12_31();
        result = MEMORY[0x1C6954040](v7);
        v8 = result;
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 32 + 8 * v5);
      }

      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      sub_1C60179F0();
      sub_1C5DF2E44();
      sub_1C60169F0();

      result = sub_1C6017A20();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        if (*(*(v2 + 48) + 8 * v11) == v8)
        {

          goto LABEL_18;
        }

        result = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v8;
      v15 = *(v2 + 16);
      v9 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v9)
      {
        goto LABEL_21;
      }

      *(v2 + 16) = v16;
LABEL_18:
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:

    return v2;
  }

  return result;
}

uint64_t sub_1C5E1F39C(uint64_t a1)
{
  sub_1C6017870();
  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return 1;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 1;
  }

  else
  {
    v5 = 0;
    while (v5 < v4)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      v3 = v6 != 0;
      result = swift_unknownObjectRelease();
      if (v6)
      {
        ++v5;
        v4 = *(a1 + 16);
        if (v5 != v4)
        {
          continue;
        }
      }

      return v3;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1C5E1F478()
{
  v1 = *v0;
  sub_1C60179F0();
  sub_1C60169F0();
  v2 = sub_1C6017A20() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1C5E1F93C(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

BOOL sub_1C5E1F534()
{
  OUTLINED_FUNCTION_44_3();
  v3 = *v1;
  sub_1C60179F0();
  MEMORY[0x1C69544E0](v0);
  sub_1C6017A20();
  OUTLINED_FUNCTION_86_3();
  while (1)
  {
    v7 = v4 & v6;
    v8 = (1 << (v4 & v6)) & *(v5 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      break;
    }

    if (*(*(v3 + 48) + 8 * v7) == v0)
    {
      goto LABEL_6;
    }

    v4 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  sub_1C5E1FA50(v0, v7, isUniquelyReferenced_nonNull_native);
  *v1 = v11;
LABEL_6:
  result = v8 == 0;
  *v2 = v0;
  return result;
}

uint64_t sub_1C5E1F618()
{
  OUTLINED_FUNCTION_94_3();
  if (v6)
  {
    sub_1C60179F0();
    sub_1C5DB789C();
    sub_1C6017A20();
    OUTLINED_FUNCTION_86_3();
    do
    {
      OUTLINED_FUNCTION_103_2();
      if ((v8 & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v10 = OUTLINED_FUNCTION_157_1();
        sub_1C5E1FB88(v10, v5, v4);
        *v3 = v11;
        goto LABEL_13;
      }
    }

    while (*(*(v4 + 48) + 8 * v5) != v2);

    *v0 = *(*(v4 + 48) + 8 * v5);

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_158_0();

    OUTLINED_FUNCTION_13_19();
    sub_1C6017450();
    OUTLINED_FUNCTION_127_2();

    if (v5)
    {

      type metadata accessor for BackgroundTask();
      OUTLINED_FUNCTION_156_1();
      result = 0;
      *v0 = v11;
    }

    else
    {
      result = sub_1C6017440();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1C5DF32BC(v1, result + 1);
        OUTLINED_FUNCTION_132_1();
        if (!(!v6 & v9))
        {
          sub_1C5DF379C();
          v1 = v11;
        }

        sub_1C5DF3910();

        *v3 = v1;
LABEL_13:
        *v0 = v2;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1C5E1F79C()
{
  OUTLINED_FUNCTION_94_3();
  if (v6)
  {
    sub_1C60179F0();
    sub_1C5DF2E44();
    sub_1C60169F0();

    sub_1C6017A20();
    OUTLINED_FUNCTION_86_3();
    do
    {
      OUTLINED_FUNCTION_103_2();
      if ((v8 & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v10 = OUTLINED_FUNCTION_157_1();
        sub_1C5E1FCC0(v10, v5, v4);
        *v3 = v11;
        goto LABEL_13;
      }
    }

    while (*(*(v4 + 48) + 8 * v5) != v2);

    *v0 = *(*(v4 + 48) + 8 * v5);

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_158_0();

    OUTLINED_FUNCTION_13_19();
    sub_1C6017450();
    OUTLINED_FUNCTION_127_2();

    if (v5)
    {

      type metadata accessor for UserEventCompletionMonitor();
      OUTLINED_FUNCTION_156_1();
      result = 0;
      *v0 = v11;
    }

    else
    {
      result = sub_1C6017440();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1C5DF3164(v1, result + 1);
        OUTLINED_FUNCTION_132_1();
        if (!(!v6 & v9))
        {
          sub_1C5DF3688();
          v1 = v11;
        }

        sub_1C5DF38A4();

        *v3 = v1;
LABEL_13:
        *v0 = v2;
        return 1;
      }
    }
  }

  return result;
}

void sub_1C5E1F93C(unint64_t a1, char a2)
{
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 <= v4 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1C5DF3408();
      goto LABEL_8;
    }

    if (v5 <= v4)
    {
      sub_1C5E1FE14();
LABEL_8:
      v6 = *v2;
      sub_1C60179F0();
      sub_1C60169F0();
      a1 = sub_1C6017A20() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    sub_1C5DF3974();
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (a1 >> 6) + 56) |= 1 << a1;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return;
  }

  __break(1u);
LABEL_12:
  sub_1C60178C0();
  __break(1u);
}

void sub_1C5E1FA50(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C5DF3580();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C5E20020();
LABEL_10:
      v12 = *v3;
      sub_1C60179F0();
      MEMORY[0x1C69544E0](a1);
      v13 = sub_1C6017A20();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for MPServerObjectDatabaseAssetFlavor();
        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1C5DF3ACC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1C60178C0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1C5E1FB88(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C5DF379C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C5E20464();
LABEL_10:
      v12 = *v3;
      sub_1C60179F0();
      sub_1C5DB789C();
      v13 = sub_1C6017A20();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for BackgroundTask();
        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1C5DF3C44();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1C60178C0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1C5E1FCC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C5DF3688();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C5E20230();
LABEL_10:
      v12 = *v3;
      sub_1C60179F0();
      sub_1C5DF2E44();
      sub_1C60169F0();

      v13 = sub_1C6017A20();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for UserEventCompletionMonitor();
        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1C5DF3B90(a1);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1C60178C0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_1C5E1FE14()
{
  v1 = *v0;
  sub_1C5E219B8(0, &qword_1EC1A89B0, sub_1C5C66884, &_s8_ContextC8WarmableON, MEMORY[0x1E69E6A10]);
  result = sub_1C60174F0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    if (!v7)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_1C60179F0();
      sub_1C60169F0();
      result = sub_1C6017A20();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v9 + 8 * (v12 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        while (++v13 != v16 || (v15 & 1) == 0)
        {
          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v13);
          if (v18 != -1)
          {
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v9 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v7 &= v7 - 1;
      *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++*(v3 + 16);
    }

    while (v7);
LABEL_6:
    while (1)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_21;
      }

      v7 = *(v1 + 56 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1C5E20020()
{
  v1 = v0;
  v2 = *v0;
  sub_1C5DF51AC();
  result = sub_1C60174F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1C60179F0();
        MEMORY[0x1C69544E0](v14);
        result = sub_1C6017A20();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C5E20230()
{
  v1 = v0;
  v2 = *v0;
  sub_1C5E20DA8();
  result = sub_1C60174F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1C60179F0();

        sub_1C5DF2E44();
        sub_1C60169F0();

        result = sub_1C6017A20();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C5E20464()
{
  v1 = v0;
  v2 = *v0;
  sub_1C5DF5118();
  result = sub_1C60174F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1C60179F0();

        sub_1C5DB789C();
        result = sub_1C6017A20();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

id sub_1C5E2067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C6016900();

  if (a4)
  {
    v8 = sub_1C6016840();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

_OWORD *sub_1C5E2072C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1C5CE2084(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  v13 = OUTLINED_FUNCTION_195();
  sub_1C5C8F9EC(v13, v14, v15, v16);
  if ((sub_1C6017660() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_303();
  v19 = sub_1C5CE2084(v17, v18);
  if ((v12 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1C60178D0();
    __break(1u);
    return result;
  }

  v11 = v19;
LABEL_5:
  v21 = *v4;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v21[7] + 32 * v11);
    v22 = OUTLINED_FUNCTION_255();

    return sub_1C5C70758(v22, v23);
  }

  else
  {
    sub_1C5E20884(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1C5E20884(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C5C70758(a4, (a5[7] + 32 * a1));
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

void sub_1C5E208F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6016900();

  [a3 setPlayActivityFeatureName_];
}

uint64_t sub_1C5E20960(void *a1)
{
  v2 = [a1 siriReferenceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

uint64_t sub_1C5E209D0()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_31();

  return sub_1C5E130D8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C5E20A8C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBCD24;
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_31();

  return sub_1C5E13504(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C5E20B48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5E20B8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C5C64D74(255, a2);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5E20BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C5C74680(255, &qword_1ED7DCAE0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5E20C3C()
{
  if (!qword_1EC1A9270)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A9270);
    }
  }
}

void sub_1C5E20CD0()
{
  if (!qword_1EC1ABE98)
  {
    sub_1C5E2167C(255, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1ABE98);
    }
  }
}

void sub_1C5E20DA8()
{
  if (!qword_1ED7DC220)
  {
    type metadata accessor for UserEventCompletionMonitor();
    sub_1C5E20B48(qword_1ED7DC3C0, type metadata accessor for UserEventCompletionMonitor);
    v0 = sub_1C6017520();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DC220);
    }
  }
}

uint64_t sub_1C5E20E3C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_101_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_39(v1);

  return v4(v3);
}

uint64_t sub_1C5E20ECC()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_159_0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5E20F7C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_101_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_39(v1);

  return v4(v3);
}

uint64_t sub_1C5E2100C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_101_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_39(v1);

  return v4(v3);
}

uint64_t sub_1C5E2109C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_142_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5E21144()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_101_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_39(v1);

  return v4(v3);
}

uint64_t objectdestroy_36Tm()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5E21218()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_101_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_39(v1);

  return v4(v3);
}

uint64_t sub_1C5E212A8()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v1[1] = sub_1C5CBD218;
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_159_0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1C5E21360()
{
  if (!qword_1ED7DCB78)
  {
    v0 = sub_1C6017700();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCB78);
    }
  }
}

uint64_t sub_1C5E213C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C6014F60();
    OUTLINED_FUNCTION_318();
  }

  return OUTLINED_FUNCTION_255();
}

uint64_t block_copy_helper_106_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C5E21444()
{
  result = qword_1EC1ABF88;
  if (!qword_1EC1ABF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABF88);
  }

  return result;
}

void sub_1C5E21498(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C5C64D74(255, a3);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    OUTLINED_FUNCTION_85_0();
    v4 = sub_1C6016CC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5E2151C()
{
  result = qword_1EC1ABFA0;
  if (!qword_1EC1ABFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFA0);
  }

  return result;
}

void sub_1C5E21570(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    OUTLINED_FUNCTION_13_19();
    v3 = sub_1C6016CC0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore01_A15RemotePublisherC17getFallbackIntent3forSo011MPCPlaybackH0CSgSo20MPRemoteCommandEventC_tYaKF05MusicG6SourceL_O20RequestBuildingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C5E21628()
{
  result = qword_1EC1ABFB8;
  if (!qword_1EC1ABFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFB8);
  }

  return result;
}

void sub_1C5E2167C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C5E216CC()
{
  result = qword_1EC1ABFC8;
  if (!qword_1EC1ABFC8)
  {
    sub_1C5E2167C(255, &qword_1EC1ABFC0, &type metadata for _MediaRemotePublisher.MusicFallbackSource.StationResponseData.Station, MEMORY[0x1E69E62F8]);
    sub_1C5E21768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFC8);
  }

  return result;
}

unint64_t sub_1C5E21768()
{
  result = qword_1EC1ABFD0;
  if (!qword_1EC1ABFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFD0);
  }

  return result;
}

uint64_t sub_1C5E217CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1C5E21818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_1C5E218B4()
{
  result = qword_1EC1ABFD8;
  if (!qword_1EC1ABFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFD8);
  }

  return result;
}

unint64_t sub_1C5E2190C()
{
  result = qword_1EC1ABFE0;
  if (!qword_1EC1ABFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFE0);
  }

  return result;
}

unint64_t sub_1C5E21964()
{
  result = qword_1EC1ABFE8;
  if (!qword_1EC1ABFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFE8);
  }

  return result;
}

void sub_1C5E219B8(uint64_t a1, unint64_t *a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3();
    v7 = OUTLINED_FUNCTION_303();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C5E21A1C()
{
  result = qword_1EC1ABFF8;
  if (!qword_1EC1ABFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABFF8);
  }

  return result;
}

_BYTE *sub_1C5E21A70(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C5E21B20()
{
  result = qword_1EC1AC000;
  if (!qword_1EC1AC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AC000);
  }

  return result;
}

unint64_t sub_1C5E21B78()
{
  result = qword_1EC1AC008;
  if (!qword_1EC1AC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AC008);
  }

  return result;
}

unint64_t sub_1C5E21BD0()
{
  result = qword_1EC1AC010;
  if (!qword_1EC1AC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AC010);
  }

  return result;
}

void OUTLINED_FUNCTION_14_27(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6F90];

  sub_1C5E20BCC(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_18_25()
{

  return sub_1C6017280();
}

uint64_t OUTLINED_FUNCTION_23_18()
{

  return swift_allocError();
}

_OWORD *OUTLINED_FUNCTION_42_13@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, uint64_t a6)
{
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v9 = v6[6] + 40 * a1;
  *v9 = a4;
  *(v9 + 16) = a5;
  *(v9 + 32) = a6;
  result = sub_1C5C70758((v8 - 120), (v6[7] + 32 * a1));
  ++v6[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_11()
{

  return sub_1C6017810();
}

uint64_t OUTLINED_FUNCTION_54_8()
{
  *(v0 + 296) = 101;

  return sub_1C6014D30();
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return sub_1C5E1ED90(0x656873696C627550, 0xE900000000000072, v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return sub_1C6017810();
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return sub_1C6017810();
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_110_2()
{

  return sub_1C6017950();
}

id OUTLINED_FUNCTION_111_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_114_0()
{
}

uint64_t OUTLINED_FUNCTION_124_1(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_153_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_155_1()
{
  v2 = *(v0 + 408);
}

uint64_t OUTLINED_FUNCTION_156_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_157_1()
{
}

uint64_t OUTLINED_FUNCTION_158_0()
{
}

uint64_t OUTLINED_FUNCTION_160_0()
{
}

id OUTLINED_FUNCTION_162_0()
{

  return [v1 (v0 + 1912)];
}

uint64_t OUTLINED_FUNCTION_164_0()
{
}

uint64_t OUTLINED_FUNCTION_165_0()
{
}

void OUTLINED_FUNCTION_166_0()
{
}

void OUTLINED_FUNCTION_167_0()
{
}

uint64_t OUTLINED_FUNCTION_168_0()
{

  return swift_continuation_init();
}

uint64_t sub_1C5E22268(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_1C5E2229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C5C70758(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    sub_1C5E361A8(v13, a2, a3);

    *v3 = v12;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    sub_1C5E37FBC(a1, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
    v9 = OUTLINED_FUNCTION_303();
    sub_1C5D458C0(v9, v10, v11);

    return sub_1C5E37FBC(v13, &qword_1ED7E0200, v7 + 8, v8, sub_1C5E37D38);
  }

  return result;
}

uint64_t sub_1C5E223AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    v4 = OUTLINED_FUNCTION_34_4();

    return sub_1C5E0232C(v4, v5);
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t PlaybackEngineSessionManager.performSetQueue(event:installQueueBeforeLoaded:donatedStartPlayerItem:)()
{
  OUTLINED_FUNCTION_13();
  *(v1 + 600) = v2;
  *(v1 + 472) = v3;
  *(v1 + 480) = v0;
  sub_1C6016C10();
  *(v1 + 488) = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  v4 = sub_1C6016BA0();
  *(v1 + 496) = v4;
  *(v1 + 504) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5E224D8, v4, v5);
}

uint64_t sub_1C5E224D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_149();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_112_1();
  a24 = v26;
  a15 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v26 + 512) = Strong;
  if (Strong)
  {
    v31 = Strong;
    v32 = *(v26 + 472);
    v33 = [Strong queueController];
    *(v26 + 520) = v33;
    v34 = [v32 playbackQueue];
    if (!v34)
    {
      __break(1u);
      goto LABEL_34;
    }

    v36 = v34;
    *(v26 + 432) = 0;
    v37 = [v34 verifyWithError_];

    v38 = *(v26 + 432);
    if (v37)
    {
      v39 = &selRef_currentThread;
      if (v33)
      {
        v40 = v33;
        v41 = [v40 reusableBehavior];
        *(v26 + 528) = v41;
        if (v41)
        {
          v42 = v41;
          v34 = [*(v26 + 472) playbackQueue];
          *(v26 + 536) = v34;
          if (v34)
          {
            v43 = v34;
            *(v26 + 80) = v26;
            *(v26 + 120) = v26 + 384;
            *(v26 + 88) = sub_1C5E22DB8;
            swift_continuation_init();
            OUTLINED_FUNCTION_124();
            sub_1C5E37404();
            *(v26 + 264) = v44;
            *(v26 + 208) = MEMORY[0x1E69E9820];
            *(v26 + 216) = 1107296256;
            *(v26 + 224) = sub_1C5E2F4A0;
            *(v26 + 232) = &block_descriptor_8_0;
            *(v26 + 240) = &qword_1ED7DD000;
            [v42 canReuseQueue:v43 completion:v26 + 208];
            OUTLINED_FUNCTION_148_1();

            return MEMORY[0x1EEE6DEC8](v45);
          }

          goto LABEL_35;
        }

        v61 = qword_1ED7DD2B8;
        v62 = *(v26 + 520);
        if (v61 == -1)
        {
          v63 = v62;
        }

        else
        {
          OUTLINED_FUNCTION_59();
          v63 = *(v26 + 520);
        }

        v64 = *(v26 + 512);
        v65 = *(v26 + 472);
        v66 = sub_1C60162D0();
        __swift_project_value_buffer(v66, qword_1ED7E16A8);
        v67 = v63;
        v68 = v64;
        v69 = v65;
        v70 = sub_1C60162B0();
        sub_1C6016F30();

        if (OUTLINED_FUNCTION_48_3())
        {
          v128 = *(v26 + 520);
          v71 = *(v26 + 512);
          v72 = *(v26 + 472);
          v73 = OUTLINED_FUNCTION_21();
          v74 = OUTLINED_FUNCTION_110();
          a14 = OUTLINED_FUNCTION_119_0();
          *v73 = 136446722;
          v75 = [v71 engineID];
          sub_1C6016940();
          OUTLINED_FUNCTION_290();

          v76 = OUTLINED_FUNCTION_111_2();
          sub_1C5C6AB10(v76, &selRef_currentThread, v77);
          OUTLINED_FUNCTION_51_12();
          v39 = 0x1FAD89000;

          *(v73 + 4) = v75;
          *(v73 + 12) = 2114;
          *(v73 + 14) = v72;
          *v74 = v72;
          *(v73 + 22) = 2082;
          v78 = v72;
          v79 = [v128 sessionID];
          sub_1C6016940();
          OUTLINED_FUNCTION_48_12();

          sub_1C5C6AB10(v75, v27, &a14);
          OUTLINED_FUNCTION_164_0();
          *(v73 + 24) = v79;
          OUTLINED_FUNCTION_38_11();
          _os_log_impl(v80, v81, v82, v83, v73, 0x20u);
          sub_1C5CB5700(v74);
          OUTLINED_FUNCTION_6();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_40_10();
        }

        OUTLINED_FUNCTION_195_0();
        [v70 willDisconnectFromPlaybackEngine_];
      }

      v34 = [*(v26 + 472) playbackQueue];
      if (v34)
      {
        v84 = v34;
        v85 = *(v26 + 472);
        v86 = [objc_opt_self() behaviorForQueue_];

        sub_1C5D67920(v85, &selRef_sessionIdentifierOverride);
        if (!v87)
        {
          sub_1C5D67920(*(v26 + 472), &selRef_contextID);
        }

        OUTLINED_FUNCTION_128_1();
        v88 = objc_allocWithZone(MPCQueueController);
        v89 = sub_1C5E35DAC(v86, v84, v85);
        *(v26 + 552) = v89;
        if (qword_1ED7DD2B8 != -1)
        {
          OUTLINED_FUNCTION_59();
        }

        v90 = *(v26 + 512);
        v91 = *(v26 + 472);
        v92 = sub_1C60162D0();
        *(v26 + 560) = OUTLINED_FUNCTION_144(v92, qword_1ED7E16A8);
        v93 = v90;
        v94 = v91;
        v95 = v89;
        v96 = sub_1C60162B0();
        v97 = sub_1C6016F30();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = *(v26 + 472);
          OUTLINED_FUNCTION_21();
          v127 = v97;
          v99 = OUTLINED_FUNCTION_52_9();
          a14 = OUTLINED_FUNCTION_119_0();
          OUTLINED_FUNCTION_101_2(4.8754e-34);
          sub_1C6016940();
          OUTLINED_FUNCTION_227_0();
          sub_1C5C6AB10(v39, v94, &a14);
          OUTLINED_FUNCTION_229_0();
          OUTLINED_FUNCTION_19_28();
          *(v93 + 14) = v98;
          *v99 = v98;
          OUTLINED_FUNCTION_110_3();
          v100 = v98;
          v101 = [v95 sessionID];
          sub_1C6016940();
          OUTLINED_FUNCTION_290();

          v102 = OUTLINED_FUNCTION_111_2();
          v104 = sub_1C5C6AB10(v102, v39, v103);

          v93[3] = v104;
          OUTLINED_FUNCTION_218_0(&dword_1C5C61000, "[SNM:%{public}s] performSetQueue(event: %{public}@) | connecting queue controller [new controller] queueController=%{public}s", v127);
          sub_1C5CB5700(v99);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_176_0();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_35_1();
        }

        v105 = *(v26 + 512);
        v106 = *(v26 + 472);
        v107 = OUTLINED_FUNCTION_96_2();
        [v107 v108];
        v109 = v105;
        v110 = v106;
        v111 = sub_1C60162B0();
        sub_1C6016F30();

        if (OUTLINED_FUNCTION_48_3())
        {
          v112 = *(v26 + 512);
          v113 = OUTLINED_FUNCTION_68_0();
          v114 = OUTLINED_FUNCTION_110();
          v115 = OUTLINED_FUNCTION_21();
          a14 = v115;
          *v113 = 136446466;
          v116 = [v112 engineID];
          sub_1C6016940();
          OUTLINED_FUNCTION_48_12();

          v117 = OUTLINED_FUNCTION_88_0();
          sub_1C5C6AB10(v117, v118, v119);
          OUTLINED_FUNCTION_164_0();
          OUTLINED_FUNCTION_169_1();
          OUTLINED_FUNCTION_38_11();
          _os_log_impl(v120, v121, v122, v123, v113, 0x16u);
          sub_1C5CB5700(v114);
          OUTLINED_FUNCTION_6();
          __swift_destroy_boxed_opaque_existential_0(v115);
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_40_10();
        }

        v124 = swift_task_alloc();
        *(v26 + 568) = v124;
        *v124 = v26;
        v124[1] = sub_1C5E2370C;
        OUTLINED_FUNCTION_148_1();

        return MEMORY[0x1EEE41840](v34, v35);
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return MEMORY[0x1EEE41840](v34, v35);
    }

    v52 = v38;

    sub_1C6014D40();

    swift_willThrow();
  }

  else
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    *(v26 + 424) = v47;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    v49 = v48;
    OUTLINED_FUNCTION_4_47();
    a9 = v49;
    a10 = sub_1C5E37564(v50, 255, v51);
    OUTLINED_FUNCTION_10_33();
    sub_1C6017280();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_148_1();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C5E22DB8()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 544) = v4;
  if (v4)
  {

    v5 = *(v1 + 496);
    v6 = *(v1 + 504);
    v7 = sub_1C5E23D64;
  }

  else
  {
    v5 = *(v1 + 496);
    v6 = *(v1 + 504);
    v7 = sub_1C5E22EF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C5E22EF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  v27 = *(v24 + 520);
  v28 = *(v24 + 384);
  v29 = *(v24 + 400);
  v31 = *(v24 + 408);
  v30 = *(v24 + 416);

  if (v28 != 1)
  {
    swift_unknownObjectRelease();

    v42 = qword_1ED7DD2B8;
    v43 = *(v24 + 520);
    if (v42 == -1)
    {
      v44 = v43;
    }

    else
    {
      OUTLINED_FUNCTION_59();
      v44 = *(v24 + 520);
    }

    v45 = *(v24 + 512);
    v46 = *(v24 + 472);
    v128 = sub_1C60162D0();
    __swift_project_value_buffer(v128, qword_1ED7E16A8);
    v47 = v44;
    v48 = v45;
    v49 = v46;
    v50 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_48_3())
    {
      v126 = *(v24 + 520);
      v51 = *(v24 + 512);
      v52 = *(v24 + 472);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_52_9();
      a12 = OUTLINED_FUNCTION_57_6();
      *v47 = 136446722;
      v53 = [v51 engineID];
      sub_1C6016940();
      v55 = v54;

      v56 = OUTLINED_FUNCTION_107_1();
      v58 = sub_1C5C6AB10(v56, v55, v57);

      OUTLINED_FUNCTION_19_28();
      *(v47 + 14) = v52;
      *v49 = v52;
      OUTLINED_FUNCTION_110_3();
      v59 = v52;
      v60 = [v126 0x1FB45BD78];
      sub_1C6016940();
      OUTLINED_FUNCTION_48_12();

      v61 = sub_1C5C6AB10(v52, v58, &a12);

      v47[3] = v61;
      OUTLINED_FUNCTION_4_19();
      _os_log_impl(v62, v63, v64, v65, v66, 0x20u);
      sub_1C5CB5700(v49);
      OUTLINED_FUNCTION_28();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40_10();
      OUTLINED_FUNCTION_35_1();
    }

    OUTLINED_FUNCTION_195_0();
    [v50 willDisconnectFromPlaybackEngine_];

    v38 = [*(v24 + 472) playbackQueue];
    if (v38)
    {
      v67 = v38;
      v68 = *(v24 + 472);
      v69 = [objc_opt_self() behaviorForQueue_];

      sub_1C5D67920(v68, &selRef_sessionIdentifierOverride);
      if (!v70)
      {
        sub_1C5D67920(*(v24 + 472), &selRef_contextID);
      }

      OUTLINED_FUNCTION_133_3();
      v71 = objc_allocWithZone(MPCQueueController);
      v72 = sub_1C5E35DAC(v69, v67, v47);
      *(v24 + 552) = v72;
      if (qword_1ED7DD2B8 != -1)
      {
        OUTLINED_FUNCTION_59();
      }

      v73 = *(v24 + 512);
      v74 = *(v24 + 472);
      *(v24 + 560) = OUTLINED_FUNCTION_144(v128, qword_1ED7E16A8);
      v75 = v73;
      v76 = v74;
      v77 = v72;
      v78 = sub_1C60162B0();
      v79 = sub_1C6016F30();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = *(v24 + 512);
        v127 = v77;
        v81 = *(v24 + 472);
        OUTLINED_FUNCTION_21();
        v82 = OUTLINED_FUNCTION_52_9();
        a12 = OUTLINED_FUNCTION_119_0();
        *v75 = 136446722;
        [v80 engineID];
        sub_1C6016940();
        OUTLINED_FUNCTION_227_0();
        v83 = OUTLINED_FUNCTION_107_1();
        sub_1C5C6AB10(v83, v76, v84);
        OUTLINED_FUNCTION_229_0();
        OUTLINED_FUNCTION_19_28();
        *(v75 + 14) = v81;
        *v82 = v81;
        OUTLINED_FUNCTION_110_3();
        v85 = v81;
        v77 = v127;
        v86 = [v127 0x1FB45BD78];
        sub_1C6016940();
        OUTLINED_FUNCTION_290();

        v90 = OUTLINED_FUNCTION_55_9(v87, v88, v89);

        v75[3] = v90;
        OUTLINED_FUNCTION_218_0(&dword_1C5C61000, "[SNM:%{public}s] performSetQueue(event: %{public}@) | connecting queue controller [new controller] queueController=%{public}s", v79);
        sub_1C5CB5700(v82);
        OUTLINED_FUNCTION_40_10();
        OUTLINED_FUNCTION_176_0();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_35_1();
      }

      v91 = *(v24 + 512);
      v92 = *(v24 + 472);
      [v77 willConnectToPlaybackEngine_];
      v93 = v91;
      v94 = v92;
      v95 = sub_1C60162B0();
      sub_1C6016F30();

      if (OUTLINED_FUNCTION_48_3())
      {
        v96 = *(v24 + 512);
        v97 = OUTLINED_FUNCTION_68_0();
        v98 = OUTLINED_FUNCTION_110();
        v99 = OUTLINED_FUNCTION_21();
        a12 = v99;
        *v97 = 136446466;
        v100 = [v96 engineID];
        sub_1C6016940();
        OUTLINED_FUNCTION_48_12();

        v101 = OUTLINED_FUNCTION_88_0();
        sub_1C5C6AB10(v101, v102, v103);
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_169_1();
        OUTLINED_FUNCTION_38_11();
        _os_log_impl(v104, v105, v106, v107, v97, 0x16u);
        sub_1C5CB5700(v98);
        OUTLINED_FUNCTION_6();
        __swift_destroy_boxed_opaque_existential_0(v99);
        OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_40_10();
      }

      v108 = swift_task_alloc();
      *(v24 + 568) = v108;
      *v108 = v24;
      v108[1] = sub_1C5E2370C;
      OUTLINED_FUNCTION_14_0();

      return MEMORY[0x1EEE41840](v38, v39);
    }

LABEL_30:
    __break(1u);
    return MEMORY[0x1EEE41840](v38, v39);
  }

  v32 = *(v24 + 520);
  v33 = [*(v24 + 512) eventStream];
  OUTLINED_FUNCTION_2_50();
  sub_1C5E37504(0, v34, v35, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"session-id";
  v37 = @"session-id";
  v38 = [v32 sessionID];
  if (!v38)
  {
    __break(1u);
    goto LABEL_30;
  }

  v40 = v38;

  *(inited + 40) = v40;
  *(inited + 48) = @"session-reuse-reason";
  if (v30)
  {
    v41 = @"session-reuse-reason";
    OUTLINED_FUNCTION_15_1();
    sub_1C6016900();
    OUTLINED_FUNCTION_152_2();
  }

  else
  {
    v110 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    v111 = @"session-reuse-reason";
    v31 = [v110 init];
  }

  *(inited + 56) = v31;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_124();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v112, 255, v113);
  OUTLINED_FUNCTION_47_6();
  sub_1C5E372B8();

  v114 = *(v24 + 520);
  v115 = *(v24 + 512);
  if (v29)
  {
    OUTLINED_FUNCTION_255();
    v116 = sub_1C6016900();

    [v114 jumpToContentItemID:v116 direction:2];

    swift_unknownObjectRelease();
  }

  else
  {
    [*(v24 + 520) jumpToFirstContentItemWithSource_];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C5E2370C()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 576) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 504);
  v7 = *(v2 + 496);
  if (v0)
  {
    v8 = sub_1C5E23EBC;
  }

  else
  {
    v8 = sub_1C5E23864;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E23864()
{
  OUTLINED_FUNCTION_35();
  v1 = v0[69];
  v2 = v0[64];
  v3 = *(v0 + 600);
  v4 = v0[59];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
  v0[46] = sub_1C5E37380;
  v0[47] = v5;
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1C5DBC798;
  v0[45] = &block_descriptor_31;
  v6 = _Block_copy(v0 + 42);
  v0[73] = v6;
  v7 = v0[47];
  v8 = v2;
  v9 = v4;
  v10 = v1;
  OUTLINED_FUNCTION_152_2();

  v0[2] = v0;
  v0[3] = sub_1C5E23A34;
  swift_continuation_init();
  OUTLINED_FUNCTION_124();
  sub_1C5E37398();
  OUTLINED_FUNCTION_60_10(v11);
  v0[19] = 1107296256;
  OUTLINED_FUNCTION_67_7();
  v0[21] = v12;
  v0[22] = v7;
  [v1 performSetQueue:v9 loadingItemReady:v6 completion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C5E23A34()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 504);
  v7 = *(v6 + 496);
  if (v8)
  {
    v9 = sub_1C5E2439C;
  }

  else
  {
    v9 = sub_1C5E23B84;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E23B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v48 = *MEMORY[0x1E69E9840];
  v18 = *(v16 + 584);
  v19 = *(v16 + 600);

  _Block_release(v18);
  if ((v19 & 1) == 0)
  {
    [*(v16 + 512) setQueueController_];
  }

  v20 = *(v16 + 472);
  v21 = *(v16 + 512);
  v22 = v20;
  v23 = sub_1C60162B0();
  sub_1C6016F30();

  v24 = OUTLINED_FUNCTION_48_3();
  v25 = *(v16 + 552);
  v26 = *(v16 + 512);
  if (v24)
  {
    a10 = *(v16 + 520);
    a11 = *(v16 + 552);
    v27 = *(v16 + 472);
    OUTLINED_FUNCTION_68_0();
    v28 = OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_202_0();
    *v22 = 136446466;
    a9 = v26;
    v29 = [v26 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_55_9(v30, v31, v32);
    OUTLINED_FUNCTION_51_12();

    *(v22 + 1) = v29;
    *(v22 + 6) = 2114;
    *(v22 + 14) = v27;
    *v28 = v27;
    v33 = v27;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    sub_1C5CB5700(v28);
    OUTLINED_FUNCTION_28();
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, v48, a14, a15, a16);
}

uint64_t sub_1C5E23D64()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  swift_willThrow();

  *(v0 + 456) = v1;
  v3 = v1;
  sub_1C5CB5808();
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);

    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 512);
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v7();
}

uint64_t PlaybackEngineSessionManager.performLegacyPodcastsMigration(event:)()
{
  OUTLINED_FUNCTION_248();
  v1[14] = v2;
  v1[15] = v0;
  sub_1C6016C10();
  v1[16] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[17] = v3;
  v1[18] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C5E24910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v20[19] = Strong;
  if (Strong)
  {
    v22 = Strong;
    if (qword_1EC1A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
    }

    v23 = sub_1C60162D0();
    v20[20] = __swift_project_value_buffer(v23, qword_1EC1BE3A0);
    v24 = sub_1C60162B0();
    v25 = sub_1C6016F30();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_19();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_35_1();
    }

    v31 = v20[14];

    v20[21] = sub_1C5E37710(v31, &selRef_playbackSessionData);
    v20[22] = v32;
    OUTLINED_FUNCTION_155_2();
    if (!v34 & v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_313();
      v20[11] = 0;
      sub_1C5E3194C(v20 + 11);
      v38 = MRSystemAppPlaybackQueueCreate();
      if (v38)
      {
        v39 = v20[11];
        v20[23] = v39;
        if (v39)
        {
          v40 = v38;
          sub_1C5C64D74(0, &qword_1EC1A92B0);
          OUTLINED_FUNCTION_120();
          sub_1C6016AF0();
          OUTLINED_FUNCTION_126();
          MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

          sub_1C5C64D74(0, &qword_1EC1AC020);
          v41 = [swift_getObjCClassFromMetadata() queueWithMediaRemotePlaybackQueue_];
          v20[24] = v41;
          [v41 setRequestingImmediatePlayback_];
          sub_1C5C64D74(0, &qword_1EC1AC028);
          v42 = [v22 mediaRemotePublisher];
          v43 = [v42 commandCenter];

          [v43 setPlaybackQueueCommand];
          v44 = OUTLINED_FUNCTION_255();
          v46 = sub_1C5E31B28(v44, v45);
          v20[25] = v46;
          if (v46)
          {
            v47 = swift_task_alloc();
            v20[26] = v47;
            *v47 = v20;
            v47[1] = sub_1C5E24FD8;
            OUTLINED_FUNCTION_8_3();

            PlaybackEngineSessionManager.performSetQueue(event:installQueueBeforeLoaded:donatedStartPlayerItem:)();
            return;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  OUTLINED_FUNCTION_88();
  v20[10] = v35;
  sub_1C6016880();
  OUTLINED_FUNCTION_124();
  _s3__C4CodeOMa_2();
  OUTLINED_FUNCTION_4_47();
  sub_1C5E37564(v36, 255, v37);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_73();

  swift_willThrow();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_8_3();

  v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C5E24FD8()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_1C5E2522C;
  }

  else
  {
    v8 = sub_1C5E25104;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E25104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();

  v11 = sub_1C60162B0();
  v12 = sub_1C6016F00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C5C61000, v11, v12, "Resetting playback rate from handoff", v13, 2u);
    OUTLINED_FUNCTION_11_8();
  }

  v14 = v10[24];
  v15 = v10[25];
  v16 = v10[19];

  v17 = [objc_opt_self() standardUserDefaults];
  LODWORD(v18) = 1.0;
  [v17 setPlaybackRate_];
  v19 = OUTLINED_FUNCTION_80();
  sub_1C5CB6098(v19, v20);

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C5E2522C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  sub_1C5CB6098(v0[21], v0[22]);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t PlaybackEngineSessionManager.performSetSession(event:)()
{
  OUTLINED_FUNCTION_248();
  v1[54] = v2;
  v1[55] = v0;
  sub_1C6016C10();
  v1[56] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[57] = v3;
  v1[58] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E2533C()
{
  OUTLINED_FUNCTION_35();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 472) = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_65_11();

    *(v2 + 480) = v1;
    *(v2 + 488) = v0;
    v6 = [v4 player];
    v7 = sub_1C5D3877C();

    if (v7)
    {
      v8 = [*(v2 + 432) commandID];
      if (!v8)
      {
        __break(1u);
        return MEMORY[0x1EEE41840](v8, v9);
      }

      v10 = v8;
      OUTLINED_FUNCTION_58();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v0;

      sub_1C5DCCCA8();
    }

    v12 = swift_task_alloc();
    *(v2 + 496) = v12;
    *v12 = v2;
    v12[1] = sub_1C5E255FC;
    v8 = 0xD000000000000020;
    v9 = 0x80000001C60573B0;

    return MEMORY[0x1EEE41840](v8, v9);
  }

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  OUTLINED_FUNCTION_88();
  *(v2 + 384) = v13;
  sub_1C6016880();
  OUTLINED_FUNCTION_297();
  _s3__C4CodeOMa_2();
  OUTLINED_FUNCTION_4_47();
  sub_1C5E37564(v14, 255, v15);
  OUTLINED_FUNCTION_10_33();
  sub_1C6017280();
  OUTLINED_FUNCTION_73();

  swift_willThrow();
  OUTLINED_FUNCTION_172();

  return v16();
}

uint64_t sub_1C5E255FC()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 464);
  v7 = *(v2 + 456);
  if (v0)
  {
    v8 = sub_1C5E28588;
  }

  else
  {
    v8 = sub_1C5E25728;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_1C5E25728()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 504);
  v3 = sub_1C5E39134(*(v0 + 480), *(v0 + 488));
  *(v0 + 512) = v3;
  if (v2)
  {
    OUTLINED_FUNCTION_200_0();
    v5 = *(v0 + 432);

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v6 = sub_1C6016940();
    *(v0 + 392) = 5;
    OUTLINED_FUNCTION_53_9();
    sub_1C6017540();

    OUTLINED_FUNCTION_34_15();
    *(v0 + 400) = [v5 type];
    sub_1C5E37504(0, &qword_1EC1AC030, type metadata accessor for MPPlaybackSessionType, MEMORY[0x1E69E6720]);
    v7 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v7);

    sub_1C6016880();
    OUTLINED_FUNCTION_150_1();
    _s3__C4CodeOMa_1();
    v9 = v8;
    OUTLINED_FUNCTION_0_77();
    v124 = sub_1C5E37564(v10, 255, v11);
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_201_0();

    OUTLINED_FUNCTION_6_34();
    sub_1C5E37504(0, v12, v13, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C60311E0;
    *(v14 + 32) = v2;
    *(v0 + 408) = v6;
    v15 = v2;
    sub_1C5D4A854();
    v16 = v6;
    v17 = sub_1C6017810();
    v126 = v2;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = swift_allocError();
      *v28 = v16;
    }

    v125 = *(v0 + 472);
    v29 = sub_1C6014D30();

    v30 = [v29 domain];
    v31 = sub_1C6016940();
    v33 = v32;

    v34 = [v29 code];
    v35 = [v29 userInfo];
    v36 = sub_1C6016860();

    v37 = sub_1C6016940();
    v39 = v38;
    OUTLINED_FUNCTION_6_34();
    sub_1C5E37504(0, v40, v41, MEMORY[0x1E69E62F8]);
    *(v0 + 296) = v42;
    *(v0 + 272) = v14;
    sub_1C5C70758((v0 + 272), (v0 + 304));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C5E2072C((v0 + 304), v37, v39);

    v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v31, v33, v34, v36);

    swift_willThrow();
    OUTLINED_FUNCTION_172();

    v44();
    return;
  }

  v19 = v3;
  v20 = v4;
  v21 = [*(v0 + 472) leaseManager];
  [v21 setCanStealLeaseIfNeeded];

  if (!v20)
  {
    v45 = *&v19[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackRate];
    v46 = qword_1ED7DD2B8;
    v47 = v19;
    if (v46 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v48 = *(v0 + 488);
    v49 = *(v0 + 432);
    v50 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v50, qword_1ED7E16A8);

    v51 = v49;
    v52 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_66();

    if (OUTLINED_FUNCTION_137_0())
    {
      v54 = *(v0 + 480);
      v53 = *(v0 + 488);
      v55 = *(v0 + 432);
      swift_slowAlloc();
      OUTLINED_FUNCTION_104_2();
      *v48 = 136446722;
      v56 = OUTLINED_FUNCTION_63_4();
      *(v48 + 4) = sub_1C5C6AB10(v56, v57, v58);
      OUTLINED_FUNCTION_79_5();
      sub_1C5E20CA0(v55);
      OUTLINED_FUNCTION_151_1();

      if (!v53)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v59 = OUTLINED_FUNCTION_63_4();
      sub_1C5C6AB10(v59, v60, v61);
      OUTLINED_FUNCTION_137_2();

      *(v48 + 14) = v54;
      *(v48 + 22) = 1024;
      *(v48 + 24) = v45 > 0.0;
      OUTLINED_FUNCTION_17_26();
      _os_log_impl(v62, v63, v64, v65, v66, 0x1Cu);
      OUTLINED_FUNCTION_176_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_11_8();
    }

    else
    {
      v76 = *(v0 + 432);
    }

    v77 = [*(v0 + 472) player];
    v78 = OUTLINED_FUNCTION_312();
    sub_1C5E20CA0(v78);
    if (v79)
    {
      v80 = *(v0 + 432);
      v81 = sub_1C6016900();

      [v52 prepareToPlayWithIdentifier:v81 isRequestingImmediatePlayback:v45 > 0.0];

      *(v0 + 520) = sub_1C5E39C38();
      OUTLINED_FUNCTION_53_9();
      sub_1C6017540();

      OUTLINED_FUNCTION_34_15();
      v129 = v82;
      v83 = [v80 description];
      sub_1C6016940();
      OUTLINED_FUNCTION_133_3();

      v84 = OUTLINED_FUNCTION_45_0();
      MEMORY[0x1C69534E0](v84);

      OUTLINED_FUNCTION_170_0();
      *(v0 + 528) = v129;
      v74 = swift_task_alloc();
      *(v0 + 536) = v74;
      *(v74 + 16) = v47;
      v85 = swift_task_alloc();
      *(v0 + 544) = v85;
      *v85 = v0;
      v85[1] = sub_1C5E2627C;
      goto LABEL_22;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 == 1)
  {
    v22 = v19;
    v23 = [(_MPCProtoMigrationData *)v22 timeSync];
    if (v23)
    {
      v24 = v23;
      v25 = [(_MPCProtoMigrationDataTimeSync *)v23 rate];
      v26 = *&v25;

      v27 = v26 > 0.0;
    }

    else
    {
      v27 = 0;
    }

    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v90 = *(v0 + 432);
    v91 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v91, qword_1ED7E16A8);

    v92 = v90;
    v93 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_171_0())
    {
      v95 = *(v0 + 480);
      v94 = *(v0 + 488);
      v96 = *(v0 + 432);
      v97 = swift_slowAlloc();
      v1 = OUTLINED_FUNCTION_119_0();
      *v97 = 136446722;
      v98 = OUTLINED_FUNCTION_93_3();
      *(v97 + 4) = sub_1C5C6AB10(v98, v99, v100);
      *(v97 + 12) = 2082;
      sub_1C5E20CA0(v96);
      OUTLINED_FUNCTION_129_2();

      if (!v94)
      {
LABEL_39:
        __break(1u);
        return;
      }

      v101 = OUTLINED_FUNCTION_93_3();
      sub_1C5C6AB10(v101, v102, v103);
      OUTLINED_FUNCTION_161_1();
      *(v97 + 14) = v95;
      *(v97 + 22) = 1024;
      *(v97 + 24) = v27;
      OUTLINED_FUNCTION_239();
      _os_log_impl(v104, v105, v106, v107, v108, 0x1Cu);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_35_1();
    }

    else
    {
      v109 = *(v0 + 432);
    }

    v110 = *(v0 + 432);
    v111 = [*(v0 + 472) player];
    sub_1C5E20CA0(v110);
    if (v112)
    {
      v114 = *(v0 + 480);
      v113 = *(v0 + 488);
      v115 = *(v0 + 432);
      sub_1C6016900();
      OUTLINED_FUNCTION_152_2();

      [v111 prepareToPlayWithIdentifier:v1 isRequestingImmediatePlayback:v27];

      *(v0 + 560) = sub_1C5E39CA8();
      OUTLINED_FUNCTION_53_9();
      sub_1C6017540();

      OUTLINED_FUNCTION_34_15();
      v127 = v117;
      v130 = v116;
      v118 = [v115 description];
      v119 = sub_1C6016940();
      v121 = v120;

      MEMORY[0x1C69534E0](v119, v121);

      OUTLINED_FUNCTION_170_0();
      *(v0 + 568) = v130;
      v122 = swift_task_alloc();
      *(v0 + 576) = v122;
      v122[2] = v22;
      v122[3] = v115;
      v122[4] = v114;
      v122[5] = v113;
      v123 = swift_task_alloc();
      *(v0 + 584) = v123;
      *v123 = v0;
      v123[1] = sub_1C5E268D4;
      v88 = sub_1C5E375E8;
      v86 = v127;
      v87 = v130;
      v89 = v122;
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v67 = [*(v0 + 472) player];
  v68 = OUTLINED_FUNCTION_73();
  sub_1C5E20CA0(v68);
  if (!v69)
  {
    __break(1u);
    goto LABEL_36;
  }

  v70 = *(v0 + 432);
  sub_1C6016900();
  OUTLINED_FUNCTION_66();

  [v19 prepareToPlayWithIdentifier:v20 isRequestingImmediatePlayback:0];

  OUTLINED_FUNCTION_53_9();
  sub_1C6017540();

  OUTLINED_FUNCTION_34_15();
  v128 = v71;
  v72 = [v70 description];
  sub_1C6016940();
  OUTLINED_FUNCTION_133_3();

  v73 = OUTLINED_FUNCTION_45_0();
  MEMORY[0x1C69534E0](v73);

  OUTLINED_FUNCTION_170_0();
  *(v0 + 600) = v128;
  v74 = swift_task_alloc();
  *(v0 + 608) = v74;
  *(v74 + 16) = v70;
  v75 = swift_task_alloc();
  *(v0 + 616) = v75;
  *v75 = v0;
  v75[1] = sub_1C5E26F2C;
LABEL_22:
  v86 = OUTLINED_FUNCTION_102_0();
  v89 = v74;
LABEL_32:

  sub_1C5E2FA04(v86, v87, v88, v89);
}

uint64_t sub_1C5E2627C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 552) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5E263D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_112_1();
  v25 = 0xD000000000000021;

  v26 = *(v21 + 520);
  *(v21 + 632) = v26;
  v27 = OUTLINED_FUNCTION_180_0();
  *(v21 + 640) = v27;
  if (!v27)
  {

LABEL_11:

    goto LABEL_12;
  }

  v23 = OUTLINED_FUNCTION_182_0(v27);
  sub_1C6016940();
  OUTLINED_FUNCTION_205_0();

  sub_1C5E20CA0(v22);
  if (!v28)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_146_2();
  v30 = v30 && v29 == v19;
  if (v30)
  {
  }

  else
  {
    OUTLINED_FUNCTION_125_2();
    OUTLINED_FUNCTION_230_0();

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_200_0();

LABEL_12:
      v31 = *(v21 + 472);
      sub_1C6016940();
      OUTLINED_FUNCTION_65_11();
      *(v21 + 416) = 3102;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_121_2();
      v32 = [v31 (v24 + 2535)];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 sessionID];

        sub_1C6016940();
        OUTLINED_FUNCTION_313();
      }

      else
      {
        v23 = 0;
      }

      OUTLINED_FUNCTION_192_0();
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      *(v21 + 336) = v33;
      *(v21 + 344) = v23;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v35, v36, v37);
      v38 = OUTLINED_FUNCTION_179_0();
      MEMORY[0x1C69534E0](v38);

      OUTLINED_FUNCTION_36_11();
      v39 = sub_1C5E20CA0(&selRef_removeAllItems);
      v41 = OUTLINED_FUNCTION_167_1(v39, v40);
      MEMORY[0x1C69534E0](v41);

      sub_1C6016880();
      OUTLINED_FUNCTION_8_30();
      _s3__C4CodeOMa_1();
      v43 = v42;
      OUTLINED_FUNCTION_0_77();
      v73 = v43;
      v74 = sub_1C5E37564(v44, 255, v45);
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_73();

      swift_willThrow();
      v18 = v26;
      goto LABEL_16;
    }
  }

  sub_1C5D67920(*(v21 + 432), &selRef_contentItemID);
  if (v55)
  {
    OUTLINED_FUNCTION_122_1();
    v56 = sub_1C5D67920(v18, &selRef_targetContentItemID);
    if (!v57)
    {
LABEL_27:
      OUTLINED_FUNCTION_166_1();

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_151_1();
      *(v21 + 424) = 3103;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_120_1();
      *(v21 + 368) = sub_1C5D67920(v18, &selRef_targetContentItemID);
      *(v21 + 376) = v59;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v60, v61, v62);
      v63 = sub_1C60169A0();
      MEMORY[0x1C69534E0](v63);

      OUTLINED_FUNCTION_36_11();
      v64 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v64);

      sub_1C6016880();
      OUTLINED_FUNCTION_297();
      _s3__C4CodeOMa_1();
      v66 = v65;
      OUTLINED_FUNCTION_0_77();
      v73 = v66;
      v74 = sub_1C5E37564(v67, 255, v68);
      v25 = a11;
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_20_26();
      OUTLINED_FUNCTION_168_1();

      swift_willThrow();

LABEL_16:
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_148_1();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, v73, v74, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    if (v56 == v22 && v57 == v20)
    {
    }

    else
    {
      OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_193_0();

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  v69 = swift_task_alloc();
  *(v21 + 648) = v69;
  *v69 = v21;
  OUTLINED_FUNCTION_8_37(v69);
  OUTLINED_FUNCTION_148_1();

  return MEMORY[0x1EEE41840](v70, v71);
}

uint64_t sub_1C5E268D4()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 592) = v0;

  OUTLINED_FUNCTION_43_0();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5E26A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_112_1();
  v25 = 0xD000000000000021;

  v26 = *(v21 + 560);
  *(v21 + 632) = v26;
  v27 = OUTLINED_FUNCTION_180_0();
  *(v21 + 640) = v27;
  if (!v27)
  {

LABEL_11:

    goto LABEL_12;
  }

  v23 = OUTLINED_FUNCTION_182_0(v27);
  sub_1C6016940();
  OUTLINED_FUNCTION_205_0();

  sub_1C5E20CA0(v22);
  if (!v28)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_146_2();
  v30 = v30 && v29 == v19;
  if (v30)
  {
  }

  else
  {
    OUTLINED_FUNCTION_125_2();
    OUTLINED_FUNCTION_230_0();

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_200_0();

LABEL_12:
      v31 = *(v21 + 472);
      sub_1C6016940();
      OUTLINED_FUNCTION_65_11();
      *(v21 + 416) = 3102;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_121_2();
      v32 = [v31 (v24 + 2535)];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 sessionID];

        sub_1C6016940();
        OUTLINED_FUNCTION_313();
      }

      else
      {
        v23 = 0;
      }

      OUTLINED_FUNCTION_192_0();
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      *(v21 + 336) = v33;
      *(v21 + 344) = v23;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v35, v36, v37);
      v38 = OUTLINED_FUNCTION_179_0();
      MEMORY[0x1C69534E0](v38);

      OUTLINED_FUNCTION_36_11();
      v39 = sub_1C5E20CA0(&selRef_removeAllItems);
      v41 = OUTLINED_FUNCTION_167_1(v39, v40);
      MEMORY[0x1C69534E0](v41);

      sub_1C6016880();
      OUTLINED_FUNCTION_8_30();
      _s3__C4CodeOMa_1();
      v43 = v42;
      OUTLINED_FUNCTION_0_77();
      v73 = v43;
      v74 = sub_1C5E37564(v44, 255, v45);
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_73();

      swift_willThrow();
      v18 = v26;
      goto LABEL_16;
    }
  }

  sub_1C5D67920(*(v21 + 432), &selRef_contentItemID);
  if (v55)
  {
    OUTLINED_FUNCTION_122_1();
    v56 = sub_1C5D67920(v18, &selRef_targetContentItemID);
    if (!v57)
    {
LABEL_27:
      OUTLINED_FUNCTION_166_1();

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_151_1();
      *(v21 + 424) = 3103;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_120_1();
      *(v21 + 368) = sub_1C5D67920(v18, &selRef_targetContentItemID);
      *(v21 + 376) = v59;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v60, v61, v62);
      v63 = sub_1C60169A0();
      MEMORY[0x1C69534E0](v63);

      OUTLINED_FUNCTION_36_11();
      v64 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v64);

      sub_1C6016880();
      OUTLINED_FUNCTION_297();
      _s3__C4CodeOMa_1();
      v66 = v65;
      OUTLINED_FUNCTION_0_77();
      v73 = v66;
      v74 = sub_1C5E37564(v67, 255, v68);
      v25 = a11;
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_20_26();
      OUTLINED_FUNCTION_168_1();

      swift_willThrow();

LABEL_16:
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_148_1();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, v73, v74, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    if (v56 == v22 && v57 == v20)
    {
    }

    else
    {
      OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_193_0();

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  v69 = swift_task_alloc();
  *(v21 + 648) = v69;
  *v69 = v21;
  OUTLINED_FUNCTION_8_37(v69);
  OUTLINED_FUNCTION_148_1();

  return MEMORY[0x1EEE41840](v70, v71);
}

uint64_t sub_1C5E26F2C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 624) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5E27088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_112_1();
  *(v21 + 632) = 0;
  v25 = OUTLINED_FUNCTION_180_0();
  *(v21 + 640) = v25;
  if (!v25)
  {

LABEL_11:

    goto LABEL_12;
  }

  v23 = OUTLINED_FUNCTION_182_0(v25);
  sub_1C6016940();
  OUTLINED_FUNCTION_205_0();

  sub_1C5E20CA0(v22);
  if (!v26)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_146_2();
  v28 = v28 && v27 == v19;
  if (v28)
  {
  }

  else
  {
    OUTLINED_FUNCTION_125_2();
    OUTLINED_FUNCTION_230_0();

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_200_0();

LABEL_12:
      v29 = *(v21 + 472);
      sub_1C6016940();
      OUTLINED_FUNCTION_65_11();
      *(v21 + 416) = 3102;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_121_2();
      v30 = [v29 (v24 + 2535)];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 sessionID];

        sub_1C6016940();
        OUTLINED_FUNCTION_313();
      }

      else
      {
        v23 = 0;
      }

      v33 = *(v21 + 512);
      v34 = *(v21 + 472);
      v35 = *(v21 + 432);
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      *(v21 + 336) = v31;
      *(v21 + 344) = v23;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_179_0();
      MEMORY[0x1C69534E0](v39);

      OUTLINED_FUNCTION_36_11();
      v40 = sub_1C5E20CA0(v35);
      v42 = OUTLINED_FUNCTION_167_1(v40, v41);
      MEMORY[0x1C69534E0](v42);

      sub_1C6016880();
      OUTLINED_FUNCTION_8_30();
      _s3__C4CodeOMa_1();
      v44 = v43;
      OUTLINED_FUNCTION_0_77();
      v74 = v44;
      v75 = sub_1C5E37564(v45, 255, v46);
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_73();

      swift_willThrow();
      goto LABEL_16;
    }
  }

  sub_1C5D67920(*(v21 + 432), &selRef_contentItemID);
  if (v56)
  {
    OUTLINED_FUNCTION_122_1();
    v57 = sub_1C5D67920(v18, &selRef_targetContentItemID);
    if (!v58)
    {
LABEL_27:
      a12 = *(v21 + 512);
      v34 = *(v21 + 472);

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_151_1();
      *(v21 + 424) = 3103;
      OUTLINED_FUNCTION_28_14();
      sub_1C6017540();
      OUTLINED_FUNCTION_126_3();
      OUTLINED_FUNCTION_120_1();
      *(v21 + 368) = sub_1C5D67920(v18, &selRef_targetContentItemID);
      *(v21 + 376) = v60;
      OUTLINED_FUNCTION_5_40();
      sub_1C5E37D38(0, v61, v62, v63);
      v64 = sub_1C60169A0();
      MEMORY[0x1C69534E0](v64);

      OUTLINED_FUNCTION_36_11();
      v65 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v65);

      sub_1C6016880();
      OUTLINED_FUNCTION_297();
      _s3__C4CodeOMa_1();
      v67 = v66;
      OUTLINED_FUNCTION_0_77();
      v74 = v67;
      v75 = sub_1C5E37564(v68, 255, v69);
      v33 = a12;
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_20_26();
      OUTLINED_FUNCTION_168_1();

      swift_willThrow();

LABEL_16:
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_148_1();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, v74, v75, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    if (v57 == v22 && v58 == v20)
    {
    }

    else
    {
      OUTLINED_FUNCTION_122_2();
      OUTLINED_FUNCTION_193_0();

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  v70 = swift_task_alloc();
  *(v21 + 648) = v70;
  *v70 = v21;
  OUTLINED_FUNCTION_8_37(v70);
  OUTLINED_FUNCTION_148_1();

  return MEMORY[0x1EEE41840](v71, v72);
}

uint64_t sub_1C5E27588()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[82] = v0;

  if (v0)
  {

    v7 = v3[57];
    v8 = v3[58];
    v9 = sub_1C5E28768;
  }

  else
  {
    v7 = v3[57];
    v8 = v3[58];
    v9 = sub_1C5E2768C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E2768C()
{
  OUTLINED_FUNCTION_13();
  v2 = [*(v0 + 472) player];
  *(v0 + 664) = v2;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1C5E27788;
  swift_continuation_init();
  OUTLINED_FUNCTION_297();
  sub_1C5E37398();
  *(v0 + 672) = v3;
  OUTLINED_FUNCTION_60_10(v3);
  *(v0 + 152) = 1107296256;
  OUTLINED_FUNCTION_67_7();
  *(v0 + 168) = v4;
  *(v0 + 176) = v1;
  [v2 finalizeStateRestoreWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C5E27788()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[85] = v5;
  if (v5)
  {

    v6 = v2[57];
    v7 = v2[58];
    v8 = sub_1C5E287DC;
  }

  else
  {
    v6 = v2[57];
    v7 = v2[58];
    v8 = sub_1C5E27890;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C5E27890()
{
  OUTLINED_FUNCTION_49_1();
  v53 = v0;
  v1 = *(v0 + 632);

  if (!v1)
  {
    v23 = *(v0 + 640);
    v24 = *(v0 + 472);

    OUTLINED_FUNCTION_73_3();

    __asm { BRAA            X3, X16 }
  }

  v2 = *(v0 + 632);
  v3 = OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_playbackRate;
  if (*&v2[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_playbackRate] > 0.0)
  {
    v4 = qword_1ED7DD2B8;
    v5 = v2;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v6 = sub_1C60162D0();
    __swift_project_value_buffer(v6, qword_1ED7E16A8);

    v7 = v5;
    v8 = sub_1C60162B0();
    v9 = sub_1C6016F30();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 480);
      v10 = *(v0 + 488);
      v12 = OUTLINED_FUNCTION_21();
      v52 = OUTLINED_FUNCTION_119_0();
      *v12 = 136446722;
      *(v12 + 4) = sub_1C5C6AB10(v11, v10, &v52);
      *(v12 + 12) = 2082;
      v13 = sub_1C5E39D98();
      v15 = sub_1C5C6AB10(v13, v14, &v52);

      *(v12 + 14) = v15;
      *(v12 + 22) = 2050;
      *(v12 + 24) = *&v2[v3];
      _os_log_impl(&dword_1C5C61000, v8, v9, "[SNM:%{public}s] performSetSession | play with timeContinuity=%{public}s, with rate=%{public}f", v12, 0x20u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_6();
    }

    *(v0 + 688) = [*(v0 + 472) player];
    v16 = v7;
    v17 = OUTLINED_FUNCTION_145_0();
    v18 = sub_1C5E20CA0(v17);
    *(v0 + 696) = v19;
    if (v19)
    {
      OUTLINED_FUNCTION_133_3();
      v20 = swift_task_alloc();
      *(v0 + 704) = v20;
      *v20 = v0;
      v20[1] = sub_1C5E27E1C;
      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_73_3();

      return sub_1C5D399B0();
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v2[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_isLive])
  {
    *(v0 + 744) = 0;
    v27 = v2;
    v28 = swift_task_alloc();
    *(v0 + 752) = v28;
    *v28 = v0;
    OUTLINED_FUNCTION_11_24(v28);
    OUTLINED_FUNCTION_142_3();
    OUTLINED_FUNCTION_73_3();

    return MEMORY[0x1EEE41840](v18, v19);
  }

  v30 = qword_1ED7DD2B8;
  v31 = v2;
  if (v30 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v32 = sub_1C60162D0();
  __swift_project_value_buffer(v32, qword_1ED7E16A8);

  v33 = v31;
  v34 = sub_1C60162B0();
  sub_1C6016F30();
  OUTLINED_FUNCTION_230_0();

  if (OUTLINED_FUNCTION_48_3())
  {
    v35 = OUTLINED_FUNCTION_21();
    v36 = OUTLINED_FUNCTION_21();
    v52 = v36;
    *v35 = 136446722;
    v37 = OUTLINED_FUNCTION_6_3();
    *(v35 + 4) = sub_1C5C6AB10(v37, v38, v39);
    *(v35 + 12) = 2050;
    *(v35 + 14) = *&v33[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referencePosition];
    *(v35 + 22) = 2050;
    *(v35 + 24) = *&v2[v3];
    OUTLINED_FUNCTION_38_11();
    _os_log_impl(v40, v41, v42, v43, v35, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_68_6();
    OUTLINED_FUNCTION_28();
  }

  v44 = *(v0 + 432);
  v45 = [*(v0 + 472) player];
  *(v0 + 720) = v45;
  v46 = *&v33[OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_referencePosition];
  v18 = sub_1C5E20CA0(v44);
  if (!v19)
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x1EEE41840](v18, v19);
  }

  v47 = *(v0 + 672);
  v48 = sub_1C6016900();
  *(v0 + 728) = v48;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1C5E28074;
  v49 = swift_continuation_init();
  *(v0 + 264) = v47;
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1C5E223AC;
  *(v0 + 232) = &block_descriptor_20_2;
  *(v0 + 240) = v49;
  [v45 jumpToTime:v48 identifier:v0 + 208 completion:v46];
  OUTLINED_FUNCTION_73_3();

  return MEMORY[0x1EEE6DEC8](v50);
}

uint64_t sub_1C5E27E1C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 712) = v0;

  v5 = *(v2 + 632);

  if (v0)
  {
  }

  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5E27F98()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[79] + OBJC_IVAR____TtC17MediaPlaybackCore34_MPCSessionMigrationTimeContinuity_scheduledRateChangeTime;
  if (*(v1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *v1;
    v4 = [objc_allocWithZone(_MPCProtoSetPlaybackSessionResponse) init];
    if (!v4)
    {
      __break(1u);
      return MEMORY[0x1EEE41840](v4, v5);
    }

    v2 = v4;
    [(_MPCProtoSetPlaybackSessionResponse *)v4 setScheduledRateChangeTimestamp:v3];
  }

  v0[93] = v2;
  v6 = swift_task_alloc();
  v0[94] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_11_24(v6);
  v4 = OUTLINED_FUNCTION_142_3();

  return MEMORY[0x1EEE41840](v4, v5);
}

uint64_t sub_1C5E28074()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  v2[92] = v5;
  if (v5)
  {
    v6 = v2[79];

    v7 = v2[57];
    v8 = v2[58];
    v9 = sub_1C5E288F4;
  }

  else
  {
    v7 = v2[57];
    v8 = v2[58];
    v9 = sub_1C5E28184;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E28184()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 728);

  *(v0 + 744) = 0;
  v2 = swift_task_alloc();
  *(v0 + 752) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_11_24(v2);
  v3 = OUTLINED_FUNCTION_142_3();

  return MEMORY[0x1EEE41840](v3, v4);
}

uint64_t sub_1C5E2821C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[95] = v0;

  if (v0)
  {
    v7 = v3[79];

    v8 = v3[57];
    v9 = v3[58];
    v10 = sub_1C5E28990;
  }

  else
  {
    v8 = v3[57];
    v9 = v3[58];
    v10 = sub_1C5E28328;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

void sub_1C5E28328()
{
  OUTLINED_FUNCTION_35();

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v1 = *(v0 + 432);
  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1ED7E16A8);
  OUTLINED_FUNCTION_73();

  v3 = v1;
  v4 = sub_1C60162B0();
  sub_1C6016F30();

  v5 = OUTLINED_FUNCTION_48_3();
  v6 = *(v0 + 432);
  if (v5)
  {
    v8 = *(v0 + 480);
    v7 = *(v0 + 488);
    v9 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_119_0();
    *v9 = 136446466;
    v10 = OUTLINED_FUNCTION_63_4();
    sub_1C5C6AB10(v10, v11, v12);
    OUTLINED_FUNCTION_137_2();

    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    sub_1C5E20CA0(v6);
    OUTLINED_FUNCTION_151_1();

    if (!v7)
    {
      __break(1u);
      return;
    }

    v13 = *(v0 + 632);
    v14 = OUTLINED_FUNCTION_63_4();
    v17 = sub_1C5C6AB10(v14, v15, v16);

    *(v9 + 14) = v17;
    OUTLINED_FUNCTION_38_11();
    _os_log_impl(v18, v19, v20, v21, v9, 0x16u);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_40_10();
  }

  else
  {
    v22 = *(v0 + 632);
  }

  v23 = *(v0 + 744);
  if (!v23)
  {
    v32 = *(v0 + 632);
    v33 = *(v0 + 472);

LABEL_12:
    v29 = 0;
    v31 = 0xF000000000000000;
    goto LABEL_13;
  }

  v24 = [*(v0 + 744) data];
  v25 = *(v0 + 640);
  v26 = *(v0 + 632);
  v27 = *(v0 + 472);
  if (!v24)
  {

    goto LABEL_12;
  }

  v28 = v24;
  v29 = sub_1C6014F60();
  v31 = v30;

LABEL_13:
  v34 = *(v0 + 8);

  v34(v29, v31);
}

uint64_t sub_1C5E28588()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 472);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5E285F8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 512);
  v2 = *(v0 + 472);

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E2867C()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 512);
  v2 = *(v0 + 472);

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E28700()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5E28768()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_178_0();

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E287DC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[64];
  v5 = v0[59];

  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v6();
}

uint64_t sub_1C5E28880()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_178_0();

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E288F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = v10[91];
  v12 = v10[90];
  v13 = v10[80];
  v14 = v10[79];
  v15 = v10[64];
  v16 = v10[59];

  swift_willThrow();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1C5E28990()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 744);
  v2 = *(v0 + 632);
  v3 = *(v0 + 512);
  v4 = *(v0 + 472);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t PlaybackEngineSessionManager.getTransportablePlaybackSessionRepresentation(for:)()
{
  OUTLINED_FUNCTION_13();
  v1[80] = v0;
  v1[79] = v2;
  v1[81] = sub_1C6016C10();
  v1[82] = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v3 = sub_1C6016BA0();
  v1[83] = v3;
  v1[84] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5E28AF0, v3, v4);
}

uint64_t sub_1C5E28AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23_2();
  v151 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v20 + 680) = Strong;
  if (!Strong)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    *(v20 + 440) = v29;
    sub_1C6016880();
    OUTLINED_FUNCTION_297();
    _s3__C4CodeOMa_2();
    v31 = v30;
    OUTLINED_FUNCTION_4_47();
    a9 = v31;
    a10 = sub_1C5E37564(v32, 255, v33);
    OUTLINED_FUNCTION_10_33();
    sub_1C6017280();

    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_3();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, v151, a18, a19, a20);
  }

  v22 = Strong;
  v23 = [Strong queueController];
  *(v20 + 688) = v23;
  if (!v23)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_65_11();
    *(v20 + 616) = 3101;
    sub_1C6016880();
    OUTLINED_FUNCTION_297();
    _s3__C4CodeOMa_1();
    v35 = v34;
    OUTLINED_FUNCTION_0_77();
    a9 = v35;
    a10 = sub_1C5E37564(v36, 255, v37);
    OUTLINED_FUNCTION_10_33();
    sub_1C6017280();

    swift_willThrow();
LABEL_10:

    goto LABEL_11;
  }

  v24 = v23;
  v25 = [v23 currentItem];
  *(v20 + 696) = v25;
  if (!v25)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_122_1();
    *(v20 + 592) = 2;
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v38, 255, v39);
    OUTLINED_FUNCTION_145_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_130_3();

    swift_willThrow();
    goto LABEL_9;
  }

  v26 = v25;
  if ([v22 isVocalAttenuationEnabled])
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v20 + 448) = 3105;
    sub_1C6016880();
    OUTLINED_FUNCTION_81_6();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v27, 255, v28);
    OUTLINED_FUNCTION_145_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_130_3();

    swift_willThrow();

LABEL_9:
    goto LABEL_10;
  }

  if (([objc_opt_self() isSystemPodcasts] & 1) == 0)
  {
    v49 = [*(v20 + 632) destinationCommandInfo];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1C6016860();
      *(v20 + 704) = v51;

      if (*(v51 + 16))
      {
        if (qword_1ED7DD2B8 != -1)
        {
          OUTLINED_FUNCTION_59();
        }

        v52 = sub_1C60162D0();
        *(v20 + 712) = OUTLINED_FUNCTION_144(v52, qword_1ED7E16A8);
        v53 = v22;
        v54 = sub_1C60162B0();
        sub_1C6016F30();

        if (OUTLINED_FUNCTION_67())
        {
          v55 = OUTLINED_FUNCTION_112();
          v150 = OUTLINED_FUNCTION_21();
          *v55 = 136446210;
          v56 = [v53 engineID];
          sub_1C6016940();
          OUTLINED_FUNCTION_75();

          v57 = OUTLINED_FUNCTION_55_2();
          v60 = sub_1C5C6AB10(v57, v58, v59);

          *(v55 + 4) = v60;
          OUTLINED_FUNCTION_23_0();
          _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v150);
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_11_8();
        }

        v66 = swift_task_alloc();
        *(v20 + 720) = v66;
        *v66 = v20;
        v66[1] = sub_1C5E29A5C;
        OUTLINED_FUNCTION_8_3();

        return MEMORY[0x1EEE41840](v67, v68);
      }
    }
  }

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  a12 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(a12, qword_1ED7E16A8);
  v70 = v22;
  v71 = sub_1C60162B0();
  v72 = sub_1C6016F30();

  a13 = v70;
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_112();
    a15 = OUTLINED_FUNCTION_21();
    *v73 = 136446210;
    v74 = [v70 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_156_2();

    v75 = OUTLINED_FUNCTION_102_0();
    v78 = sub_1C5C6AB10(v75, v76, v77);

    *(v73 + 4) = v78;
    OUTLINED_FUNCTION_219_0(&dword_1C5C61000, v79, v80, "[SNM:%{public}s] getTransportablePlaybackSessionRepresentation | legacy migration path taken [destinationCommandInfo is not available]");
    __swift_destroy_boxed_opaque_existential_0(a15);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_68_6();
  }

  v81 = [*(v20 + 632) preferredSessionType];
  if (!v81)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_156_2();
    *(v20 + 584) = 1;
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_4_47();
    sub_1C5E37564(v99, 255, v100);
    OUTLINED_FUNCTION_145_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_130_3();

    swift_willThrow();
LABEL_52:

    v135 = a13;
LABEL_53:

    goto LABEL_11;
  }

  v82 = v81;
  if ([v24 behaviorType] == 4)
  {
    if (qword_1EC1A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
    }

    __swift_project_value_buffer(a12, qword_1EC1BE3A0);
    v83 = sub_1C60162B0();
    v84 = sub_1C6016F30();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      OUTLINED_FUNCTION_38_11();
      _os_log_impl(v86, v87, v88, v89, v85, 2u);
      OUTLINED_FUNCTION_6();
    }

    v67 = [v24 behaviorImpl];
    if (v67)
    {

      type metadata accessor for QueueControllerBehaviorPodcasts();
      swift_dynamicCastClassUnconditional();
      sub_1C5D1771C();
      v90 = objc_opt_self();
      v91 = sub_1C6016AF0();

      *(v20 + 624) = 0;
      v92 = [v90 archivedDataWithRootObject:v91 requiringSecureCoding:0 error:v20 + 624];

      v93 = *(v20 + 624);
      if (v92)
      {
        v149 = sub_1C6014F60();
        v95 = v94;

        sub_1C5C64D74(0, &unk_1EC1AC038);
        v96 = [v24 sessionID];
        sub_1C6016940();

        v97 = OUTLINED_FUNCTION_149_2();
        sub_1C5E34F5C(v97, v98, v82, v149, v95);

        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      v136 = v93;
      v137 = sub_1C6014D40();

      swift_willThrow();
      v138 = v137;
      v139 = sub_1C60162B0();
      sub_1C6016F20();

      if (OUTLINED_FUNCTION_48_3())
      {
        v140 = OUTLINED_FUNCTION_112();
        v141 = OUTLINED_FUNCTION_110();
        *v140 = 138412290;
        v142 = v137;
        v143 = _swift_stdlib_bridgeErrorToNSError();
        *(v140 + 4) = v143;
        *v141 = v143;
        OUTLINED_FUNCTION_38_11();
        _os_log_impl(v144, v145, v146, v147, v140, 0xCu);
        sub_1C5CB5700(v141);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_6();
      }

      swift_willThrow();
      swift_unknownObjectRelease();

      goto LABEL_52;
    }

    __break(1u);
LABEL_56:
    __break(1u);
    return MEMORY[0x1EEE41840](v67, v68);
  }

  v101 = v82;
  v67 = sub_1C5D2966C(v26);
  if (!v68)
  {
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_205_0();

  sub_1C6016900();
  OUTLINED_FUNCTION_126();

  *(v20 + 496) = 0;
  v102 = [v24 isExportableSessionType:v101 forContentItemID:v70 reason:v20 + 496];

  v103 = *(v20 + 496);
  if (!v102)
  {
    a12 = sub_1C6016940();
    *(v20 + 488) = 3105;
    a15 = 0;
    a16 = 0xE000000000000000;
    v125 = v103;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C6057530);
    v126 = v125;
    if (!v125)
    {
      sub_1C5C64D74(0, &qword_1EC1A92B0);
      v126 = sub_1C60172F0();
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    a11 = v125;
    v127 = [v126 description];
    v128 = sub_1C6016940();
    v130 = v129;

    MEMORY[0x1C69534E0](v128, v130);

    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_1();
    v132 = v131;
    OUTLINED_FUNCTION_0_77();
    a9 = v132;
    a10 = sub_1C5E37564(v133, 255, v134);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_130_3();

    swift_willThrow();

    v135 = a11;
    goto LABEL_53;
  }

  v104 = MEMORY[0x1E69E69B8];
  sub_1C5E37820(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(v20 + 424) = sub_1C6016940();
  *(v20 + 432) = v106;
  v22 = v103;
  sub_1C60174C0();
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = 2;
  v107 = sub_1C6016880();
  *(v20 + 472) = 0;
  v108 = sub_1C5E3776C(v24, v107, v20 + 472);
  v109 = *(v20 + 472);
  if (!v108)
  {
    v148 = v109;
    OUTLINED_FUNCTION_312();
    sub_1C6014D40();

    swift_willThrow();
    goto LABEL_10;
  }

  v110 = v108;
  v111 = v109;
  v112 = sub_1C6014F60();
  v149 = v22;
  v114 = v113;

  sub_1C5C64D74(0, &unk_1EC1AC038);
  [v24 sessionID];
  sub_1C6016940();
  OUTLINED_FUNCTION_226_0();
  v115 = OUTLINED_FUNCTION_149_2();
  sub_1C5E34F5C(v115, v116, v101, v112, v114);

LABEL_43:
  OUTLINED_FUNCTION_8_3();

  return v119(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, v149, a13, a14, a15, a16, v151, a18, a19, a20);
}

uint64_t sub_1C5E29A5C()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 672);
  v7 = *(v2 + 664);
  if (v0)
  {
    v8 = sub_1C5E2C574;
  }

  else
  {
    v8 = sub_1C5E29BB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E29BB4()
{
  v231 = v1;
  v230 = *MEMORY[0x1E69E9840];
  sub_1C5D2966C(*(v1 + 696));
  if (!v2)
  {
    __break(1u);
  }

  sub_1C6016900();
  OUTLINED_FUNCTION_126();

  *(v1 + 456) = 0;
  v3 = OUTLINED_FUNCTION_96_2();
  v5 = [v3 v4];

  v6 = *(v1 + 456);
  *(v1 + 736) = v6;
  v7 = v6;
  v8 = MEMORY[0x1E69E7CA0];
  if (!v5)
  {

    sub_1C6016940();
    *(v1 + 464) = 3105;
    *&v228 = 0;
    *(&v228 + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C6057530);
    v14 = v7;
    if (!v7)
    {
      sub_1C5C64D74(0, &qword_1EC1A92B0);
      v14 = sub_1C60172F0();
    }

    v15 = *(v1 + 696);
    v219 = *(v1 + 688);
    v16 = *(v1 + 680);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v17 = v7;
    v18 = [v14 description];
    sub_1C6016940();
    OUTLINED_FUNCTION_48_12();

    v19 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1C69534E0](v19);

    sub_1C6016880();
    OUTLINED_FUNCTION_150_1();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v20, 255, v21);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    v7 = v17;

    swift_willThrow();

    v22 = v219;
    goto LABEL_8;
  }

  v9 = *(v1 + 728);
  v10 = sub_1C5E33A20(*(v1 + 704));
  *(v1 + 744) = v10;
  *(v1 + 857) = v11;
  if (v9)
  {
    v12 = *(v1 + 696);
    v13 = *(v1 + 688);

    goto LABEL_9;
  }

  v25 = v10;
  v26 = v11;
  v225 = v7;
  v27 = *(v1 + 632);
  v28 = sub_1C6016900();
  v29 = NSSelectorFromString(v28);

  if ([v27 respondsToSelector_])
  {
    v30 = (v1 + 328);
    v31 = *(v1 + 632);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_137_2();
      v32 = sub_1C6016900();
      v33 = [v31 valueForKey_];

      if (v33)
      {
        sub_1C6017390();
        swift_unknownObjectRelease();
      }

      else
      {
        v228 = 0u;
        v229 = 0u;
      }

      v34 = v229;
      *v30 = v228;
      *(v1 + 344) = v34;
      if (*(v1 + 352))
      {
        if (swift_dynamicCast() && (*(v1 + 856) & 1) != 0)
        {
          v35 = *(v1 + 680);
          v36 = *(v1 + 632);

          v37 = v35;
          OUTLINED_FUNCTION_137_2();
          swift_unknownObjectRetain();
          v38 = sub_1C60162B0();
          sub_1C6016F30();

          swift_unknownObjectRelease();
          if (OUTLINED_FUNCTION_48_3())
          {
            v39 = *(v1 + 680);
            v220 = *(v1 + 632);
            OUTLINED_FUNCTION_68_0();
            *&v228 = OUTLINED_FUNCTION_57_6();
            *v36 = 136446466;
            v40 = [v39 engineID];
            sub_1C6016940();
            OUTLINED_FUNCTION_226_0();
            v41 = OUTLINED_FUNCTION_149_2();
            sub_1C5C6AB10(v41, v42, v43);
            OUTLINED_FUNCTION_109_0();
            *(v36 + 4) = v40;
            *(v36 + 12) = 2080;
            v44 = [v220 identifier];
            if (v44)
            {
              v40 = v44;
              sub_1C6016940();
              OUTLINED_FUNCTION_226_0();
            }

            v199 = OUTLINED_FUNCTION_149_2();
            sub_1C5C6AB10(v199, v200, v201);
            OUTLINED_FUNCTION_109_0();
            *(v36 + 14) = v40;
            OUTLINED_FUNCTION_38_11();
            _os_log_impl(v202, v203, v204, v205, v36, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_40_10();
            OUTLINED_FUNCTION_28();
          }

          v206 = *(v1 + 688);
          v207 = *(v1 + 680);
          sub_1C5C64D74(0, &unk_1EC1AC038);
          v208 = [v206 sessionID];
          sub_1C6016940();
          OUTLINED_FUNCTION_75();

          OUTLINED_FUNCTION_100_2();
          sub_1C6016900();
          v209 = OUTLINED_FUNCTION_55_2();
          sub_1C5E34F5C(v209, v210, v211, 0, 0xC000000000000000);

          sub_1C5E378C8(v25, v26 & 1);
          v174 = *(v1 + 696);
          v175 = *(v1 + 688);
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    else
    {
      *v30 = 0u;
      *(v1 + 344) = 0u;
    }

    OUTLINED_FUNCTION_5_40();
    sub_1C5E37FBC(v1 + 328, v45, v8 + 8, v46, sub_1C5E37D38);
  }

LABEL_25:
  if ((v26 & 1) == 0)
  {
    v85 = *(v1 + 857);
    v86 = *(v1 + 744);
    v87 = *(v1 + 696);
    v88 = *(v1 + 680);
    v89 = [v88 player];
    [v89 currentTime];
    v91 = v90;

    v92 = [v88 player];
    [v92 currentRate];
    v94 = v93;

    [v87 durationIfAvailable];
    v96 = v95;
    type metadata accessor for _MPCSessionMigrationTimeContinuity();
    *&v228 = 0;
    *(&v228 + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0x3A4D4E535BLL, 0xE500000000000000);
    v97 = [v88 engineID];
    v98 = sub_1C6016940();
    v100 = v99;

    MEMORY[0x1C69534E0](v98, v100);

    MEMORY[0x1C69534E0](0xD00000000000002FLL, 0x80000001C60575A0);
    sub_1C5E38DBC();
    v102 = v101;

    v103 = [v87 isAlwaysLive];
    sub_1C5E37820(0, &qword_1EC1A9230);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    *(inited + 32) = sub_1C6016940();
    *(inited + 40) = v105;
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = 2;
    OUTLINED_FUNCTION_255();
    v106 = sub_1C6016880();
    if ((v85 & 1) == 0 && v86 >= 2)
    {
      v107 = sub_1C5C64D74(0, &unk_1EC1A8BB0);
      OUTLINED_FUNCTION_188_0(v107);
      swift_isUniquelyReferenced_nonNull_native();
      *&v228 = v106;
      sub_1C5E361A8(v1 + 360, 0xD00000000000001ALL, 0x80000001C6057620);
    }

    sub_1C5E10480();
    v109 = OUTLINED_FUNCTION_221_0(v108);
    v110 = *(v1 + 480);
    if (v109)
    {
      v111 = v109;
      v112 = v110;
      v113 = sub_1C6014F60();
      v226 = v114;

      v115 = [objc_allocWithZone(_MPCProtoMigrationDataTimeSync) init];
      if (v115)
      {
        v123 = v115;
        v124 = *(v1 + 696);
        [(_MPCProtoMigrationDataTimeSync *)v115 setAnchorTime:v91];
        [(_MPCProtoMigrationDataTimeSync *)v123 setAnchorTimestamp:v102];
        [(_MPCProtoMigrationDataTimeSync *)v123 setRate:v94];
        sub_1C5D2966C(v124);
        if (v125)
        {
          sub_1C6016900();
          OUTLINED_FUNCTION_145_0();
        }

        else
        {
          v124 = 0;
        }

        [(_MPCProtoMigrationDataTimeSync *)v123 setItemID:v124];

        [(_MPCProtoMigrationDataTimeSync *)v123 setDuration:v96];
        [(_MPCProtoMigrationDataTimeSync *)v123 setIsLive:v103];
        v115 = [objc_allocWithZone(_MPCProtoMigrationData) init];
        if (v115)
        {
          v139 = v115;
          [(_MPCProtoMigrationData *)v115 setTimeSync:v123];
          [(_MPCProtoMigrationData *)v139 setDelegateInfo:?];
          v115 = [objc_allocWithZone(_MPCProtoMigrationDataPayload) init];
          if (v115)
          {
            v140 = v115;
            v141 = sub_1C6016900();
            v142 = OUTLINED_FUNCTION_102_0();
            [(_MPCProtoMigrationDataPayload *)v142 setType:v143];

            sub_1C5E3764C(v113, v226, v140);
            [(_MPCProtoMigrationData *)v139 addPayloads:v140];
            v144 = v139;
            sub_1C5E376A4(v144);
            OUTLINED_FUNCTION_155_2();
            if (!(!v146 & v145))
            {
              v214 = v116;
              v215 = v115;
              v216 = v144;
              v218 = v123;
              v222 = v113;
              v147 = *(v1 + 688);
              v148 = *(v1 + 680);

              v149 = v148;
              v150 = v147;
              v151 = sub_1C60162B0();
              v152 = sub_1C6016F30();

              v217 = v140;
              if (os_log_type_enabled(v151, v152))
              {
                v153 = *(v1 + 688);
                v154 = *(v1 + 680);
                v155 = swift_slowAlloc();
                *&v228 = OUTLINED_FUNCTION_119_0();
                *v155 = 136447234;
                v156 = [v154 engineID];
                sub_1C6016940();
                OUTLINED_FUNCTION_129_2();

                v157 = OUTLINED_FUNCTION_93_3();
                v160 = sub_1C5C6AB10(v157, v158, v159);

                *(v155 + 4) = v160;
                *(v155 + 12) = 2080;
                v161 = [v153 &selRef_setDownloadedAsset_];
                sub_1C6016940();
                OUTLINED_FUNCTION_48_12();

                v162 = OUTLINED_FUNCTION_88_0();
                sub_1C5C6AB10(v162, v163, v164);
                OUTLINED_FUNCTION_164_0();
                *(v155 + 14) = v161;
                *(v155 + 22) = 2048;
                *(v155 + 24) = v91;
                *(v155 + 32) = 2048;
                *(v155 + 34) = v94;
                *(v155 + 42) = 2048;
                *(v155 + 44) = v96;
                _os_log_impl(&dword_1C5C61000, v151, v152, "[SNM:%{public}s] getTransportablePlaybackSessionRepresentation | queueController=%s, playbackPosition=%f, playbackRate=%f, currentItemDuration=%f", v155, 0x34u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_11_8();
                OUTLINED_FUNCTION_40_10();
              }

              v165 = *(v1 + 744);
              v213 = *(v1 + 736);
              v166 = *(v1 + 696);
              v167 = *(v1 + 688);
              v168 = *(v1 + 680);
              v169 = *(v1 + 857);
              sub_1C5C64D74(0, &unk_1EC1AC038);
              v170 = [v167 sessionID];
              sub_1C6016940();
              OUTLINED_FUNCTION_48_12();

              OUTLINED_FUNCTION_100_2();
              sub_1C6016900();
              v171 = OUTLINED_FUNCTION_88_0();
              sub_1C5E34F5C(v171, v172, v173, v215, v214);

              sub_1C5E378C8(v165, v169 & 1);
              sub_1C5C8F8BC(v222, v226);

              v175 = v216;
              v174 = v217;
LABEL_51:

              OUTLINED_FUNCTION_128_2();

              __asm { BRAA            X2, X16 }
            }

            goto LABEL_69;
          }

LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_68;
    }

    v130 = *(v1 + 744);
    v7 = *(v1 + 736);
    v221 = *(v1 + 696);
    v227 = *(v1 + 688);
    v131 = *(v1 + 680);
    v132 = *(v1 + 857);
    v133 = v110;
    OUTLINED_FUNCTION_152_2();

    sub_1C6014D40();

    swift_willThrow();
    sub_1C5E378C8(v130, v132 & 1);

    v22 = v227;
LABEL_8:

    goto LABEL_9;
  }

  v47 = objc_opt_self();
  v48 = v25;
  v49 = [v47 defaultIdentityStore];
  v50 = [v48 userIdentity];
  *(v1 + 504) = 0;
  v51 = [v49 DSIDForUserIdentity:v50 outError:v1 + 504];

  v52 = *(v1 + 504);
  if (!v51)
  {
    v126 = *(v1 + 696);
    v127 = *(v1 + 688);
    v128 = *(v1 + 680);
    v129 = v52;
    OUTLINED_FUNCTION_186_0();

    sub_1C6014D40();

    swift_willThrow();
LABEL_56:
    OUTLINED_FUNCTION_186_0();
    v7 = v225;
LABEL_9:

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_128_2();

    __asm { BRAA            X1, X16 }
  }

  v53 = v52;
  v54 = [v51 unsignedLongLongValue];

  if (!v54)
  {
    v134 = *(v1 + 696);
    v135 = *(v1 + 688);
    v136 = *(v1 + 680);
    OUTLINED_FUNCTION_186_0();

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_156_2();
    *(v1 + 608) = 100;
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v137, 255, v138);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

    goto LABEL_56;
  }

  v55 = [objc_opt_self() sharedManager];
  *(v1 + 512) = v54;
  sub_1C60177D0();
  v56 = sub_1C6016900();

  v57 = [v55 accountForDSID_];
  *(v1 + 752) = v57;

  if (!v57)
  {
    v178 = *(v1 + 696);
    v223 = *(v1 + 688);
    v179 = *(v1 + 680);
    OUTLINED_FUNCTION_186_0();

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_156_2();
    *(v1 + 520) = 100;
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v180, 255, v181);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

    goto LABEL_56;
  }

  v58 = *(v1 + 680);
  v59 = v57;
  v60 = sub_1C60162B0();
  v61 = sub_1C6016F30();

  if (OUTLINED_FUNCTION_171_0())
  {
    v62 = *(v1 + 680);
    OUTLINED_FUNCTION_68_0();
    *&v228 = OUTLINED_FUNCTION_102_2();
    *v57 = 136446466;
    v63 = [v62 engineID];
    v64 = sub_1C6016940();
    v66 = v65;

    sub_1C5C6AB10(v64, v66, &v228);
    OUTLINED_FUNCTION_164_0();
    *(v57 + 1) = v64;
    *(v57 + 6) = 2080;
    v67 = [v59 hashedDSID];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    v70 = OUTLINED_FUNCTION_117_1(v68, v69, &v228);

    *(v57 + 14) = v70;
    _os_log_impl(&dword_1C5C61000, v60, v61, "[SNM:%{public}s] getTransportablePlaybackSessionRepresentation | beginning delegation for accountID=%s", v57, 0x16u);
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_68_6();
  }

  v71 = [objc_opt_self() currentDeviceDelegateInfo];
  *(v1 + 760) = v71;
  [(_MPCProtoDelegateInfo *)v71 setAccountID:v54];
  *(v1 + 528) = 0;
  v72 = [v59 delegateTokenAWithError_];
  v73 = *(v1 + 528);
  if (!v72)
  {
    v224 = v59;
    v182 = *(v1 + 696);
    v183 = *(v1 + 688);
    v184 = *(v1 + 680);
    v185 = v73;
    OUTLINED_FUNCTION_186_0();

    sub_1C6014D40();

    swift_willThrow();
    goto LABEL_56;
  }

  v74 = v72;
  v75 = *(v1 + 632);
  v76 = v73;
  v77 = OUTLINED_FUNCTION_102_0();
  [(_MPCProtoDelegateInfo *)v77 setTokenA:v78];

  sub_1C60153F0();

  sub_1C60153F0();
  v80 = v79;
  sub_1C60153E0();
  v82 = v81;

  sub_1C6015400();
  sub_1C60153D0();
  OUTLINED_FUNCTION_133_3();

  *&v228 = v80;
  *(&v228 + 1) = v82;
  MEMORY[0x1C69534E0](45, 0xE100000000000000);
  v83 = [v75 identifier];
  if (v83)
  {
    v84 = v83;
    sub_1C6016940();
    OUTLINED_FUNCTION_128_1();
  }

  v186 = OUTLINED_FUNCTION_252();
  MEMORY[0x1C69534E0](v186);

  v187 = v228;
  v188 = MEMORY[0x1E69E6158];
  sub_1C5E37820(0, &qword_1EC1A9230);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1C6035CF0;
  *(v189 + 32) = sub_1C6016940();
  *(v189 + 40) = v190;
  OUTLINED_FUNCTION_89();
  *(v189 + 72) = v188;
  *(v189 + 48) = 0xD000000000000020;
  *(v189 + 56) = v191;
  *(v189 + 80) = sub_1C6016940();
  *(v189 + 88) = v192;
  sub_1C5E376A4(v71);
  OUTLINED_FUNCTION_155_2();
  if (!v146 & v145)
  {
    goto LABEL_70;
  }

  *(v189 + 120) = MEMORY[0x1E6969080];
  *(v189 + 96) = v115;
  *(v189 + 104) = v116;
  v115 = *MEMORY[0x1E69B1200];
  if (!*MEMORY[0x1E69B1200])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v189 + 128) = sub_1C6016940();
  *(v189 + 136) = v116;
  *(v189 + 168) = v188;
  strcpy((v189 + 144), "sonicMigration");
  *(v189 + 159) = -18;
  v115 = *MEMORY[0x1E69B10B0];
  if (!*MEMORY[0x1E69B10B0])
  {
LABEL_72:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v115, v116, v117, v118, v119, v120, v121, v122);
  }

  v193 = *(v1 + 632);
  *(v189 + 176) = sub_1C6016940();
  *(v189 + 184) = v194;
  *(v189 + 216) = v188;
  *(v189 + 192) = v187;
  OUTLINED_FUNCTION_252();
  v195 = sub_1C6016880();
  *(v1 + 768) = v195;
  *(v1 + 776) = sub_1C6016C00();
  v196 = swift_task_alloc();
  *(v1 + 784) = v196;
  *(v196 + 16) = v195;
  *(v196 + 24) = v193;
  v197 = swift_task_alloc();
  *(v1 + 792) = v197;
  sub_1C5C64D74(0, &qword_1EC1AC048);
  *v197 = v1;
  v197[1] = sub_1C5E2B1D8;
  OUTLINED_FUNCTION_128_2();

  return MEMORY[0x1EEE6DE38](v115, v116, v117, v118, v119, v120, v121, v122);
}

uint64_t sub_1C5E2B1D8()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 800) = v0;

  if (v0)
  {
    sub_1C5E378C8(*(v2 + 744), 1);

    v4 = *(v2 + 672);
    v5 = *(v2 + 664);
    v6 = sub_1C5E2C630;
  }

  else
  {

    v4 = *(v2 + 672);
    v5 = *(v2 + 664);
    v6 = sub_1C5E2B3B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1C5E2B3B0()
{
  v2 = *(v0 + 536);
  *(v0 + 808) = v2;
  v3 = [v2 resultStatuses];
  sub_1C5C64D74(0, &qword_1EC1AC050);
  OUTLINED_FUNCTION_120();
  v4 = sub_1C6016B10();

  if (!sub_1C5C6AA20())
  {
    v34 = *(v0 + 760);
    v1 = *(v0 + 744);
    v39 = *(v0 + 752);
    v40 = *(v0 + 736);
    v37 = *(v0 + 696);
    v38 = *(v0 + 688);
    v36 = *(v0 + 680);
    sub_1C5E378C8(v1, 1);

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v0 + 600) = 3200;
    sub_1C6016880();
    OUTLINED_FUNCTION_150_1();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v9, 255, v10);
    v6 = v34;
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
LABEL_29:

    sub_1C5E378C8(v1, 1);
    OUTLINED_FUNCTION_172();

    return v32();
  }

  sub_1C5C8CEE0(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6954040](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;
  *(v0 + 816) = v5;

  v35 = v2;
  if ([v6 statusCode])
  {
    OUTLINED_FUNCTION_234_0();

    sub_1C6016940();
    *(v0 + 544) = 3200;
    v7 = [v6 commandError];
    if (v7)
    {
      v1 = (v0 + 552);
      *(v0 + 552) = v7;
      sub_1C5CB5808();
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      OUTLINED_FUNCTION_15_1();
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 560);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_84_4();
    v12 = *(v0 + 680);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016880();
    OUTLINED_FUNCTION_81_6();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v13, 255, v14);
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
    goto LABEL_28;
  }

  *(v0 + 824) = sub_1C5E37710(v6, &selRef_customData);
  *(v0 + 832) = v11;
  if (v11 >> 60 == 15)
  {
    OUTLINED_FUNCTION_234_0();

LABEL_27:
    OUTLINED_FUNCTION_84_4();
    v29 = *(v0 + 680);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v0 + 568) = 3200;
    sub_1C6016880();
    OUTLINED_FUNCTION_150_1();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v30, 255, v31);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

LABEL_28:
    v2 = v35;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_156_2();
  v15 = sub_1C5D67920(v6, &selRef_customDataType);
  if (!v16)
  {
    goto LABEL_26;
  }

  if (v15 == 0xD000000000000020 && v16 == 0x80000001C6045550)
  {
  }

  else
  {
    v18 = sub_1C6017860();

    if ((v18 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v19 = objc_allocWithZone(_MPCProtoDelegateInfoTokenB);
  v20 = OUTLINED_FUNCTION_102_0();
  sub_1C5CFAC9C(v20, v21);
  OUTLINED_FUNCTION_102_0();
  v22 = sub_1C5E3613C();
  *(v0 + 840) = v22;
  if (!v22)
  {
LABEL_26:
    sub_1C5E378C8(*(v0 + 744), 1);

    v27 = OUTLINED_FUNCTION_102_0();
    sub_1C5CB6098(v27, v28);
    goto LABEL_27;
  }

  v23 = v22;
  v24 = *(v0 + 752);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 576;
  v25 = OUTLINED_FUNCTION_54_1();
  sub_1C5E378E8(0, &qword_1EC1AC058, &unk_1EC1AC060, off_1E822D910, MEMORY[0x1E69E86F8]);
  *(v0 + 320) = v26;
  *(v0 + 264) = MEMORY[0x1E69E9820];
  *(v0 + 272) = 1107296256;
  *(v0 + 280) = sub_1C5CA6B88;
  *(v0 + 288) = &block_descriptor_33_0;
  *(v0 + 296) = v25;
  [v24 getDelegateTokenEWithTokenB:v23 completion:v0 + 264];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C5E2BB1C()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 848) = v4;
  if (v4)
  {
    sub_1C5E378C8(*(v1 + 744), 1);

    v5 = *(v1 + 672);
    v6 = *(v1 + 664);
    v7 = sub_1C5E2C704;
  }

  else
  {
    v5 = *(v1 + 672);
    v6 = *(v1 + 664);
    v7 = sub_1C5E2BC74;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1C5E2BC74()
{
  v122 = v0;
  v121[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 760);
  v2 = *(v0 + 680);
  v3 = *(v0 + 576);
  [(_MPCProtoDelegateInfo *)v1 setTokenA:?];
  [(_MPCProtoDelegateInfo *)v1 setTokenE:v3];
  v4 = v2;
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 840);
  v116 = *(v0 + 824);
  v119 = *(v0 + 832);
  v9 = *(v0 + 816);
  v10 = *(v0 + 808);
  v11 = *(v0 + 752);
  v12 = *(v0 + 744);
  if (v7)
  {
    v111 = *(v0 + 840);
    v13 = *(v0 + 680);
    v113 = *(v0 + 744);
    v14 = OUTLINED_FUNCTION_112();
    v109 = v9;
    v15 = OUTLINED_FUNCTION_21();
    v121[0] = v15;
    *v14 = 136446210;
    v16 = [v13 engineID];
    sub_1C6016940();

    v17 = OUTLINED_FUNCTION_45_0();
    v20 = sub_1C5C6AB10(v17, v18, v19);

    *(v14 + 4) = v20;
    OUTLINED_FUNCTION_219_0(&dword_1C5C61000, v21, v22, "[SNM:%{public}s] getTransportablePlaybackSessionRepresentation | delegation requested [tokenE provided]");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_68_6();

    v23 = &selRef_currentThread;
    sub_1C5CB6098(v116, v119);

    sub_1C5E378C8(v113, 1);
  }

  else
  {

    sub_1C5CB6098(v116, v119);
    sub_1C5E378C8(v12, 1);

    v23 = &selRef_currentThread;
  }

  v24 = *(v0 + 760);
  v25 = *(v0 + 857);
  v26 = *(v0 + 744);
  v27 = *(v0 + 696);
  v28 = *(v0 + 680);
  v29 = [v28 player];
  [v29 currentTime];
  v31 = v30;

  v32 = [v28 player];
  [v32 currentRate];
  v34 = v33;

  [v27 durationIfAvailable];
  v36 = v35;
  type metadata accessor for _MPCSessionMigrationTimeContinuity();
  v121[0] = 0;
  v121[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0x3A4D4E535BLL, 0xE500000000000000);
  v37 = [v28 v23[258]];
  v38 = sub_1C6016940();
  v40 = v39;

  MEMORY[0x1C69534E0](v38, v40);

  MEMORY[0x1C69534E0](0xD00000000000002FLL, 0x80000001C60575A0);
  sub_1C5E38DBC();
  v42 = v41;

  v43 = [v27 isAlwaysLive];
  sub_1C5E37820(0, &qword_1EC1A9230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = sub_1C6016940();
  *(inited + 40) = v45;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = 2;
  OUTLINED_FUNCTION_255();
  v46 = sub_1C6016880();
  if ((v25 & 1) == 0 && v26 >= 2)
  {
    v47 = sub_1C5C64D74(0, &unk_1EC1A8BB0);
    OUTLINED_FUNCTION_188_0(v47);
    swift_isUniquelyReferenced_nonNull_native();
    v121[0] = v46;
    sub_1C5E361A8(v0 + 360, 0xD00000000000001ALL, 0x80000001C6057620);
  }

  sub_1C5E10480();
  v49 = OUTLINED_FUNCTION_221_0(v48);
  v50 = *(v0 + 480);
  v120 = v24;
  if (!v49)
  {
    v57 = *(v0 + 744);
    v58 = *(v0 + 696);
    v114 = *(v0 + 688);
    v118 = *(v0 + 736);
    v59 = *(v0 + 680);
    v60 = *(v0 + 857);
    v61 = v50;
    OUTLINED_FUNCTION_198_0();

    sub_1C6014D40();

    swift_willThrow();
    sub_1C5E378C8(v57, v60 & 1);

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_236_0();

    __asm { BRAA            X1, X16 }
  }

  v51 = v49;
  v52 = v50;
  sub_1C6014F60();
  OUTLINED_FUNCTION_48_12();

  v53 = [objc_allocWithZone(_MPCProtoMigrationDataTimeSync) init];
  if (!v53)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v54 = v53;
  v55 = *(v0 + 696);
  [(_MPCProtoMigrationDataTimeSync *)v53 setAnchorTime:v31];
  [(_MPCProtoMigrationDataTimeSync *)v54 setAnchorTimestamp:v42];
  v117 = v54;
  [(_MPCProtoMigrationDataTimeSync *)v54 setRate:v34];
  sub_1C5D2966C(v55);
  if (v56)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_145_0();
  }

  else
  {
    v55 = 0;
  }

  [(_MPCProtoMigrationDataTimeSync *)v54 setItemID:v55];

  [(_MPCProtoMigrationDataTimeSync *)v54 setDuration:v36];
  [(_MPCProtoMigrationDataTimeSync *)v54 setIsLive:v43];
  v64 = [objc_allocWithZone(_MPCProtoMigrationData) init];
  if (!v64)
  {
    goto LABEL_24;
  }

  v65 = v64;
  [(_MPCProtoMigrationData *)v64 setTimeSync:v54];
  [(_MPCProtoMigrationData *)v65 setDelegateInfo:v24];
  v66 = [objc_allocWithZone(_MPCProtoMigrationDataPayload) init];
  if (!v66)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v67 = v66;
  sub_1C6016900();
  v68 = OUTLINED_FUNCTION_126();
  [(_MPCProtoMigrationDataPayload *)v68 setType:v54];

  v69 = OUTLINED_FUNCTION_88_0();
  sub_1C5E3764C(v69, v70, v67);
  v115 = v67;
  [(_MPCProtoMigrationData *)v65 addPayloads:v67];
  v71 = v65;
  v72 = sub_1C5E376A4(v71);
  v110 = v73;
  v112 = v72;
  OUTLINED_FUNCTION_155_2();
  if (!(!v75 & v74))
  {
    v108 = v26;
    v76 = *(v0 + 688);
    v77 = *(v0 + 680);

    v78 = v77;
    v79 = v76;
    v80 = sub_1C60162B0();
    sub_1C6016F30();

    v107 = v71;
    if (OUTLINED_FUNCTION_67())
    {
      v81 = *(v0 + 688);
      v82 = *(v0 + 680);
      swift_slowAlloc();
      v121[0] = OUTLINED_FUNCTION_104_2();
      *v78 = 136447234;
      v83 = [v82 engineID];
      sub_1C6016940();
      OUTLINED_FUNCTION_226_0();
      v84 = OUTLINED_FUNCTION_149_2();
      sub_1C5C6AB10(v84, v85, v86);
      OUTLINED_FUNCTION_109_0();
      *(v78 + 1) = v83;
      *(v78 + 6) = 2080;
      v87 = [v81 &selRef_setDownloadedAsset_];
      sub_1C6016940();
      OUTLINED_FUNCTION_290();

      OUTLINED_FUNCTION_117_1(v88, v89, v121);
      OUTLINED_FUNCTION_51_12();

      *(v78 + 14) = v87;
      *(v78 + 11) = 2048;
      *(v78 + 3) = v31;
      *(v78 + 16) = 2048;
      *(v78 + 34) = v34;
      *(v78 + 21) = 2048;
      *(v78 + 11) = v36;
      OUTLINED_FUNCTION_23_0();
      _os_log_impl(v90, v91, v92, v93, v94, 0x34u);
      OUTLINED_FUNCTION_103_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_11_8();
    }

    v95 = *(v0 + 744);
    v106 = *(v0 + 736);
    v96 = *(v0 + 696);
    v97 = *(v0 + 688);
    v98 = *(v0 + 680);
    v99 = *(v0 + 857);
    sub_1C5C64D74(0, &unk_1EC1AC038);
    v100 = [v97 sessionID];
    sub_1C6016940();
    OUTLINED_FUNCTION_48_12();

    sub_1C6016900();
    v101 = OUTLINED_FUNCTION_88_0();
    sub_1C5E34F5C(v101, v102, v103, v112, v110);

    sub_1C5E378C8(v95, v99 & 1);
    sub_1C5C8F8BC(v108, v25);

    OUTLINED_FUNCTION_236_0();

    __asm { BRAA            X2, X16 }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1C5E2C574()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5E2C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v26 = *MEMORY[0x1E69E9840];
  v11 = *(v10 + 760);
  v12 = *(v10 + 752);
  v13 = *(v10 + 744);
  v14 = *(v10 + 736);
  v15 = *(v10 + 696);
  v16 = *(v10 + 688);

  sub_1C5E378C8(v13, 1);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10);
}

uint64_t sub_1C5E2C704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_112_1();
  v40 = *MEMORY[0x1E69E9840];
  v19 = v18[105];
  v20 = v18[95];
  v21 = v18[94];
  v36 = v18[102];
  v37 = v18[93];
  v38 = v18[101];
  v39 = v18[92];
  v22 = v18[87];
  v23 = v18[86];
  v24 = v18[85];

  swift_willThrow();

  v25 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v25, v26);

  sub_1C5E378C8(v37, 1);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_148_1();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, a14, v40, a16, a17, a18);
}

Swift::Void __swiftcall PlaybackEngineSessionManager.willBeginSessionMigration(with:)(Swift::String with)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong eventStream];
    OUTLINED_FUNCTION_2_50();
    sub_1C5E37504(0, v4, v5, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    *(inited + 32) = @"session-id";
    v7 = @"session-id";
    OUTLINED_FUNCTION_303();
    *(inited + 40) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    OUTLINED_FUNCTION_150_1();
    sub_1C5CC547C();
    OUTLINED_FUNCTION_1_62();
    sub_1C5E37564(v8, 255, v9);
    OUTLINED_FUNCTION_55_2();
    sub_1C6016880();
    sub_1C5E372B8();

    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v10 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v10, qword_1ED7E16A8);

    v11 = sub_1C60162B0();
    v12 = sub_1C6016F30();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_68_0();
      v34 = OUTLINED_FUNCTION_119_0();
      *v13 = 136446466;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 engineID];

        v17 = sub_1C6016940();
        v19 = v18;
      }

      else
      {
        v19 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E55;
      }

      v20 = sub_1C5C6AB10(v17, v19, &v34);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2082;
      v21 = OUTLINED_FUNCTION_303();
      *(v13 + 14) = sub_1C5C6AB10(v21, v22, v23);
      OUTLINED_FUNCTION_169();
      _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_68_6();
      OUTLINED_FUNCTION_6();
    }

    v29 = [v2 leaseManager];
    OUTLINED_FUNCTION_303();
    v30 = sub_1C6016900();
    [v29 beginIgnoringLeaseEndEventsForReason_];

    v31 = [v2 player];
    v32 = sub_1C5D3877C();
    if (v32)
    {
      v33 = v32;
      OUTLINED_FUNCTION_303();
      sub_1C5DCD85C();
    }
  }
}

uint64_t PlaybackEngineSessionManager.didEndMigration(with:setPlaybackSessionCommandStatus:error:)()
{
  OUTLINED_FUNCTION_248();
  v1[86] = v0;
  v1[85] = v2;
  v1[84] = v3;
  v1[83] = v4;
  v1[82] = v5;
  sub_1C6016C10();
  v1[87] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[88] = v6;
  v1[89] = v7;
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5E2CBDC()
{
  v148 = v1;
  v5 = OUTLINED_FUNCTION_185_0();
  *(v1 + 720) = v5;
  if (!v5)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_128_1();
    *(v1 + 640) = 60;
    v2 = "Playback engine deallocated";
    sub_1C6016880();
    OUTLINED_FUNCTION_297();
    _s3__C4CodeOMa_2();
    v29 = v28;
    OUTLINED_FUNCTION_4_47();
    v139 = v29;
    v140 = sub_1C5E37564(v30, 255, v31);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_145_0();

    v32 = v0;
    swift_willThrow();
    goto LABEL_9;
  }

  v6 = v5;
  v7 = *(v1 + 680);
  if (v7)
  {
    v8 = v7;
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v9 = *(v1 + 664);
    v10 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v10, qword_1ED7E16A8);
    v11 = v7;
    v12 = v6;

    v13 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_171_0())
    {
      v143 = *(v1 + 656);
      v145 = *(v1 + 664);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_52_9();
      v147[0] = OUTLINED_FUNCTION_102_2();
      *v6 = 136446722;
      v14 = [v12 engineID];
      sub_1C6016940();
      OUTLINED_FUNCTION_227_0();
      sub_1C5C6AB10(v4, v9, v147);
      OUTLINED_FUNCTION_229_0();
      *(v6 + 1) = v14;
      *(v6 + 6) = 2082;
      *(v6 + 14) = sub_1C5C6AB10(v143, v145, v147);
      *(v6 + 11) = 2114;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 3) = v16;
      selRef_isNonPurgeable = v16;
      OUTLINED_FUNCTION_239();
      _os_log_impl(v17, v18, v19, v20, v21, 0x20u);
      sub_1C5CB5700(&selRef_isNonPurgeable);
      OUTLINED_FUNCTION_4();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_35_1();
    }

    v22 = [v12 leaseManager];
    [v22 setCanStealLeaseIfNeeded];

    v23 = [v12 player];
    *(v1 + 728) = [v23 currentItem];

    *(v1 + 144) = v1;
    *(v1 + 152) = sub_1C5E2DAA4;
    v24 = swift_continuation_init();
    sub_1C5E37AAC(0, &qword_1EC1A8D10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E86F8]);
    *(v1 + 736) = v25;
    *(v1 + 520) = v25;
    *(v1 + 464) = MEMORY[0x1E69E9820];
    *(v1 + 472) = 1107296256;
    *(v1 + 480) = sub_1C5E22268;
    *(v1 + 488) = &block_descriptor_44_0;
    *(v1 + 496) = v24;
    v26 = OUTLINED_FUNCTION_96_2();
    [v26 v27];
    goto LABEL_23;
  }

  v39 = *(v1 + 672);
  v40 = [v5 leaseManager];
  [v40 didMigratePlaybackSession];

  if (!v39)
  {
    goto LABEL_17;
  }

  v41 = *(v1 + 672);
  *(v1 + 752) = sub_1C5E37710(v41, &selRef_customData);
  *(v1 + 760) = v42;
  if (v42 >> 60 == 15)
  {

LABEL_17:
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v43 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v43, qword_1ED7E16A8);
    v44 = v6;
    v45 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_48_3())
    {
      v46 = OUTLINED_FUNCTION_112();
      v47 = OUTLINED_FUNCTION_21();
      v147[0] = v47;
      *v46 = 136446210;
      v48 = [v44 engineID];
      sub_1C6016940();
      OUTLINED_FUNCTION_48_12();

      v49 = OUTLINED_FUNCTION_88_0();
      sub_1C5C6AB10(v49, v50, v51);
      OUTLINED_FUNCTION_164_0();
      *(v46 + 4) = v48;
      OUTLINED_FUNCTION_4_19();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();
    }

    v57 = v1 + 336;
    v58 = *(v1 + 656);
    v59 = [v44 player];
    *(v1 + 840) = v59;
    OUTLINED_FUNCTION_6_3();
    v60 = sub_1C6016900();
    *(v1 + 848) = v60;
    *(v1 + 16) = v1;
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_124();
    sub_1C5E37398();
    *(v1 + 392) = v61;
    *(v1 + 336) = MEMORY[0x1E69E9820];
    *(v1 + 344) = 1107296256;
    *(v1 + 352) = sub_1C5E223AC;
    *(v1 + 360) = &block_descriptor_36;
    *(v1 + 368) = v58;
LABEL_22:
    [v59 pauseWithIdentifier:v60 completion:v57];
LABEL_23:
    OUTLINED_FUNCTION_163_0();

    return MEMORY[0x1EEE6DEC8](v62);
  }

  OUTLINED_FUNCTION_75();
  v0 = 0xD000000000000030;
  v89 = sub_1C5D67920(v41, &selRef_customDataType);
  if (!v90)
  {
    goto LABEL_50;
  }

  if (v89 == 0xD000000000000030 && v90 == 0x80000001C6056C60)
  {
  }

  else
  {
    v0 = sub_1C6017860();

    if ((v0 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v92 = objc_allocWithZone(_MPCProtoSetPlaybackSessionResponse);
  v93 = OUTLINED_FUNCTION_55_2();
  sub_1C5CFAC9C(v93, v94);
  OUTLINED_FUNCTION_55_2();
  v95 = sub_1C5E3613C();
  *(v1 + 768) = v95;
  if (!v95)
  {
LABEL_50:

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_128_1();
    *(v1 + 648) = 9;
    sub_1C6016880();
    OUTLINED_FUNCTION_81_6();
    _s3__C4CodeOMa_1();
    v118 = v117;
    OUTLINED_FUNCTION_0_77();
    v139 = v118;
    v140 = sub_1C5E37564(v119, 255, v120);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_145_0();

    v32 = v0;
    swift_willThrow();
    v121 = OUTLINED_FUNCTION_55_2();
    sub_1C5CB6098(v121, v122);

    sub_1C5E354FC(v6);
LABEL_9:
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v33 = OUTLINED_FUNCTION_138_2();
    OUTLINED_FUNCTION_144(v33, qword_1ED7E16A8);

    v34 = v0;
    v35 = sub_1C60162B0();
    sub_1C6016F20();
    OUTLINED_FUNCTION_66();

    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_105_2();
      v147[0] = OUTLINED_FUNCTION_57_6();
      v36 = OUTLINED_FUNCTION_231_0(4.8754e-34);
      if (v36)
      {
        v37 = v36;
        v38 = [v36 engineID];

        sub_1C6016940();
        OUTLINED_FUNCTION_129_2();
      }

      else
      {
        OUTLINED_FUNCTION_16_26();
      }

      v64 = *(v1 + 664);
      v65 = *(v1 + 656);
      v66 = OUTLINED_FUNCTION_93_3();
      sub_1C5C6AB10(v66, v67, v68);
      OUTLINED_FUNCTION_161_1();
      *(v32 + 4) = v3;
      OUTLINED_FUNCTION_79_5();
      v69 = sub_1C5C6AB10(v65, v64, v147);
      OUTLINED_FUNCTION_46_7(v69);
      v70 = v0;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_189_0(v71);
      OUTLINED_FUNCTION_17_26();
      _os_log_impl(v72, v73, v74, v75, v76, 0x20u);
      sub_1C5CB5700(v2);
      OUTLINED_FUNCTION_28();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_11_8();
    }

    if (OUTLINED_FUNCTION_185_0())
    {
      OUTLINED_FUNCTION_85_6();
      v78 = [v77 eventStream];

      OUTLINED_FUNCTION_2_50();
      sub_1C5E37504(0, v79, v80, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6035C00;
      *(inited + 32) = @"session-id";
      v82 = @"session-id";
      OUTLINED_FUNCTION_15_1();
      *(inited + 40) = sub_1C6016900();
      *(inited + 48) = @"session-migration-error";
      v83 = @"session-migration-error";
      v84 = sub_1C6014D30();
      OUTLINED_FUNCTION_225_0(v84);
      OUTLINED_FUNCTION_124();
      sub_1C5CC547C();
      OUTLINED_FUNCTION_1_62();
      sub_1C5E37564(v85, 255, v86);
      OUTLINED_FUNCTION_47_6();
      OUTLINED_FUNCTION_120();
      sub_1C5E372B8();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_163_0();

    __asm { BRAA            X1, X16 }
  }

  v96 = v95;
  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v97 = sub_1C60162D0();
  *(v1 + 776) = OUTLINED_FUNCTION_144(v97, qword_1ED7E16A8);
  v98 = v6;
  v99 = v41;
  v100 = v96;
  v101 = sub_1C60162B0();
  v102 = sub_1C6016F30();

  v146 = v100;
  if (os_log_type_enabled(v101, v102))
  {
    v142 = *(v1 + 672);
    v103 = OUTLINED_FUNCTION_21();
    v104 = swift_slowAlloc();
    v144 = OUTLINED_FUNCTION_21();
    v147[0] = v144;
    *v103 = 136446722;
    v105 = [v98 engineID];
    sub_1C6016940();
    log = v101;
    OUTLINED_FUNCTION_133_3();

    v106 = OUTLINED_FUNCTION_45_0();
    v109 = sub_1C5C6AB10(v106, v107, v108);

    *(v103 + 4) = v109;
    *(v103 + 12) = 2112;
    *(v103 + 14) = v99;
    *(v103 + 22) = 2112;
    *(v103 + 24) = v146;
    *v104 = v142;
    v104[1] = v96;
    v110 = v99;
    v111 = v146;
    v101 = log;
    _os_log_impl(&dword_1C5C61000, log, v102, "[SNM:%{public}s] didEndMigration | setPlaybackSessionCommandStatus=%@ | customData: %@", v103, 0x20u);
    OUTLINED_FUNCTION_15_26(v112, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_40_10();
    __swift_destroy_boxed_opaque_existential_0(v144);
    OUTLINED_FUNCTION_40_10();
    OUTLINED_FUNCTION_6();
  }

  if (![(_MPCProtoSetPlaybackSessionResponse *)v146 hasScheduledRateChangeTimestamp])
  {
    v123 = v98;
    v124 = sub_1C60162B0();
    sub_1C6016F30();

    if (OUTLINED_FUNCTION_48_3())
    {
      v125 = OUTLINED_FUNCTION_112();
      v126 = OUTLINED_FUNCTION_21();
      v147[0] = v126;
      *v125 = 136446210;
      v127 = [v123 engineID];
      sub_1C6016940();
      OUTLINED_FUNCTION_48_12();

      v128 = OUTLINED_FUNCTION_88_0();
      sub_1C5C6AB10(v128, v129, v130);
      OUTLINED_FUNCTION_164_0();
      *(v125 + 4) = v127;
      OUTLINED_FUNCTION_4_19();
      _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();
    }

    v57 = v1 + 400;
    v136 = *(v1 + 656);
    v59 = [v123 player];
    *(v1 + 816) = v59;
    OUTLINED_FUNCTION_6_3();
    v60 = sub_1C6016900();
    *(v1 + 824) = v60;
    *(v1 + 80) = v1;
    *(v1 + 88) = sub_1C5E2E3CC;
    swift_continuation_init();
    OUTLINED_FUNCTION_124();
    sub_1C5E37398();
    *(v1 + 456) = v137;
    *(v1 + 400) = MEMORY[0x1E69E9820];
    *(v1 + 408) = 1107296256;
    *(v1 + 416) = sub_1C5E223AC;
    *(v1 + 424) = &block_descriptor_40_2;
    *(v1 + 432) = v136;
    goto LABEL_22;
  }

  v113 = [v98 player];
  [v113 currentTime];

  [(_MPCProtoSetPlaybackSessionResponse *)v146 scheduledRateChangeTimestamp];
  v114 = objc_allocWithZone(_s15_TimeContinuityCMa());
  *(v1 + 784) = sub_1C5E3A7A8();
  *(v1 + 792) = [v98 player];
  v115 = swift_task_alloc();
  *(v1 + 800) = v115;
  *v115 = v1;
  v115[1] = sub_1C5E2DF30;
  OUTLINED_FUNCTION_163_0();

  return sub_1C5D39D48();
}

uint64_t sub_1C5E2DAA4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_30();
  *v1 = v0;
  v3 = *(v2 + 712);
  v4 = *(v2 + 704);

  return MEMORY[0x1EEE6DFA0](sub_1C5E2DB9C, v4, v3);
}

uint64_t sub_1C5E2DB9C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);

  v3 = [v2 player];
  v4 = [v3 currentItem];
  *(v0 + 744) = v4;

  *(v0 + 208) = v0;
  *(v0 + 216) = sub_1C5E2DCE4;
  v5 = swift_continuation_init();
  *(v0 + 584) = v1;
  *(v0 + 560) = v5;
  *(v0 + 528) = MEMORY[0x1E69E9820];
  *(v0 + 536) = 1107296256;
  *(v0 + 544) = sub_1C5E22268;
  *(v0 + 552) = &block_descriptor_47;
  [v4 prepareForRate:v0 + 528 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C5E2DCE4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_30();
  *v1 = v0;
  v3 = *(v2 + 712);
  v4 = *(v2 + 704);

  return MEMORY[0x1EEE6DFA0](sub_1C5E2DDDC, v4, v3);
}

uint64_t sub_1C5E2DDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_35();
  v13 = *(v12 + 744);
  v14 = *(v12 + 696);

  OUTLINED_FUNCTION_35_17();
  v15 = [v14 eventStream];
  OUTLINED_FUNCTION_2_50();
  sub_1C5E37504(0, v16, v17, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"session-id";
  v19 = @"session-id";
  OUTLINED_FUNCTION_80();
  v20 = sub_1C6016900();
  OUTLINED_FUNCTION_232_0(v20);
  OUTLINED_FUNCTION_81_6();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v21, 255, v22);
  OUTLINED_FUNCTION_88_0();
  sub_1C6016880();
  OUTLINED_FUNCTION_137_3();

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_25_7();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1C5E2DF30()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 808) = v0;

  if (v0)
  {
    v7 = *(v3 + 712);
    v8 = *(v3 + 704);
    v9 = sub_1C5E2EACC;
  }

  else
  {

    v7 = *(v3 + 712);
    v8 = *(v3 + 704);
    v9 = sub_1C5E2E03C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1C5E2E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  v27 = *(v24 + 768);
  v28 = *(v24 + 720);

  v29 = v28;
  v30 = v27;
  v31 = sub_1C60162B0();
  v32 = sub_1C6016F30();

  v33 = OUTLINED_FUNCTION_171_0();
  v34 = *(v24 + 784);
  v35 = *(v24 + 768);
  v36 = *(v24 + 760);
  v37 = "rameworks/AssistantServices.framework/AssistantServices";
  v38 = *(v24 + 752);
  if (v33)
  {
    v39 = *(v24 + 720);
    a11 = *(v24 + 672);
    a12 = *(v24 + 784);
    v40 = OUTLINED_FUNCTION_68_0();
    a10 = v36;
    v41 = OUTLINED_FUNCTION_21();
    a13 = v41;
    *v40 = 136446466;
    v42 = [v39 engineID];
    v43 = sub_1C6016940();
    v37 = v44;

    v45 = sub_1C5C6AB10(v43, v37, &a13);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    *(v40 + 14) = [(_MPCProtoSetPlaybackSessionResponse *)v35 scheduledRateChangeTimestamp];
    _os_log_impl(&dword_1C5C61000, v31, v32, "[SNM:%{public}s] didEndMigration | pause scheduled at %f", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_68_6();
    OUTLINED_FUNCTION_28();

    sub_1C5CB6098(v38, a10);
  }

  else
  {

    sub_1C5CB6098(v38, v36);
  }

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v46 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_144(v46, qword_1ED7E16A8);
  v47 = v35;
  OUTLINED_FUNCTION_66();

  v48 = sub_1C60162B0();
  sub_1C6016F30();

  if (OUTLINED_FUNCTION_67())
  {
    OUTLINED_FUNCTION_89_3();
    a13 = OUTLINED_FUNCTION_104_2();
    v49 = OUTLINED_FUNCTION_183_0(4.8752e-34);
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_117_1(v50, v51, &a13);
    OUTLINED_FUNCTION_51_12();

    *(v37 + 4) = v49;
    OUTLINED_FUNCTION_79_5();
    v52 = OUTLINED_FUNCTION_15_1();
    *(v37 + 14) = sub_1C5C6AB10(v52, v53, v54);
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_35_17();
  v60 = [v48 eventStream];
  OUTLINED_FUNCTION_2_50();
  sub_1C5E37504(0, v61, v62, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"session-id";
  v64 = @"session-id";
  OUTLINED_FUNCTION_80();
  v65 = sub_1C6016900();
  OUTLINED_FUNCTION_232_0(v65);
  OUTLINED_FUNCTION_81_6();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v66, 255, v67);
  OUTLINED_FUNCTION_88_0();
  sub_1C6016880();
  OUTLINED_FUNCTION_137_3();

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_14_0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C5E2E3CC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 832) = *(v3 + 112);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 712);
  v7 = *(v6 + 704);
  if (v8)
  {
    v9 = sub_1C5E2EDBC;
  }

  else
  {
    v9 = sub_1C5E2E4EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E2E4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_8();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_35();
  a18 = v20;
  v24 = v20[103];
  v25 = v20[102];
  v26 = v20[96];
  v27 = v20[94];
  v28 = v20[84];

  v29 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v29, v30);

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v31 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_144(v31, qword_1ED7E16A8);
  v32 = v27;
  OUTLINED_FUNCTION_66();

  v33 = sub_1C60162B0();
  sub_1C6016F30();

  if (OUTLINED_FUNCTION_67())
  {
    OUTLINED_FUNCTION_89_3();
    a9 = OUTLINED_FUNCTION_104_2();
    *v24 = 136446466;
    v34 = [v21 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_117_1(v35, v36, &a9);
    OUTLINED_FUNCTION_51_12();

    *(v24 + 1) = v34;
    OUTLINED_FUNCTION_79_5();
    v37 = OUTLINED_FUNCTION_15_1();
    *(v24 + 14) = sub_1C5C6AB10(v37, v38, v39);
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_35_17();
  v45 = [v33 eventStream];
  OUTLINED_FUNCTION_2_50();
  sub_1C5E37504(0, v46, v47, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"session-id";
  v49 = @"session-id";
  OUTLINED_FUNCTION_80();
  v50 = sub_1C6016900();
  OUTLINED_FUNCTION_232_0(v50);
  OUTLINED_FUNCTION_81_6();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v51, 255, v52);
  OUTLINED_FUNCTION_88_0();
  sub_1C6016880();
  OUTLINED_FUNCTION_137_3();

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_25_7();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
}

uint64_t sub_1C5E2E75C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 856) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 712);
  v7 = *(v6 + 704);
  if (v8)
  {
    v9 = sub_1C5E2F0BC;
  }

  else
  {
    v9 = sub_1C5E2E87C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E2E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_8();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_35();
  a18 = v21;
  v26 = *(v21 + 848);
  v27 = *(v21 + 840);

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v28 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_144(v28, qword_1ED7E16A8);
  v29 = v27;
  OUTLINED_FUNCTION_66();

  v30 = sub_1C60162B0();
  sub_1C6016F30();

  if (OUTLINED_FUNCTION_67())
  {
    OUTLINED_FUNCTION_89_3();
    a9 = OUTLINED_FUNCTION_104_2();
    *v20 = 136446466;
    v31 = [v23 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_117_1(v32, v33, &a9);
    OUTLINED_FUNCTION_51_12();

    *(v20 + 4) = v31;
    OUTLINED_FUNCTION_79_5();
    v34 = OUTLINED_FUNCTION_15_1();
    *(v20 + 14) = sub_1C5C6AB10(v34, v35, v36);
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_35_17();
  v42 = [v30 eventStream];
  OUTLINED_FUNCTION_2_50();
  sub_1C5E37504(0, v43, v44, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"session-id";
  v46 = @"session-id";
  OUTLINED_FUNCTION_80();
  v47 = sub_1C6016900();
  OUTLINED_FUNCTION_232_0(v47);
  OUTLINED_FUNCTION_81_6();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_1_62();
  sub_1C5E37564(v48, 255, v49);
  OUTLINED_FUNCTION_88_0();
  sub_1C6016880();
  OUTLINED_FUNCTION_137_3();

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_25_7();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
}

uint64_t sub_1C5E2EACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  v15 = v14[99];
  v16 = v14[98];
  v17 = v14[96];
  v18 = v14[90];
  v19 = v14[84];

  v20 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v20, v21);

  sub_1C5E354FC(v18);
  v22 = v14[101];
  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v23 = OUTLINED_FUNCTION_138_2();
  OUTLINED_FUNCTION_144(v23, qword_1ED7E16A8);

  v24 = v22;
  v25 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_66();

  if (OUTLINED_FUNCTION_137_0())
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_105_2();
    a9 = OUTLINED_FUNCTION_57_6();
    a10 = a9;
    v26 = OUTLINED_FUNCTION_231_0(4.8754e-34);
    if (v26)
    {
      v27 = v26;
      v28 = [v26 engineID];

      sub_1C6016940();
      OUTLINED_FUNCTION_129_2();
    }

    else
    {
      OUTLINED_FUNCTION_16_26();
    }

    OUTLINED_FUNCTION_74_5(v29);
    v30 = OUTLINED_FUNCTION_161_1();
    v31 = OUTLINED_FUNCTION_54_9(v30);
    OUTLINED_FUNCTION_46_7(v31);
    v32 = v22;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_189_0(v33);
    OUTLINED_FUNCTION_17_26();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
    sub_1C5CB5700(v15);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  if (OUTLINED_FUNCTION_185_0())
  {
    OUTLINED_FUNCTION_85_6();
    v40 = [v39 eventStream];

    OUTLINED_FUNCTION_2_50();
    sub_1C5E37504(0, v41, v42, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"session-id";
    v44 = @"session-id";
    OUTLINED_FUNCTION_15_1();
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"session-migration-error";
    v45 = @"session-migration-error";
    v46 = sub_1C6014D30();
    OUTLINED_FUNCTION_225_0(v46);
    OUTLINED_FUNCTION_124();
    sub_1C5CC547C();
    OUTLINED_FUNCTION_1_62();
    sub_1C5E37564(v47, 255, v48);
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_120();
    sub_1C5E372B8();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_19_3();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C5E2EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  v15 = v14[104];
  v59 = v14[103];
  v16 = v14[102];
  v17 = v14[96];
  v18 = v14[90];
  v19 = v14[84];
  v20 = v14[82];

  swift_willThrow();

  v21 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v21, v22);

  sub_1C5E354FC(v18);
  v23 = v14[104];
  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v24 = OUTLINED_FUNCTION_138_2();
  OUTLINED_FUNCTION_144(v24, qword_1ED7E16A8);

  v25 = v23;
  v26 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_66();

  if (OUTLINED_FUNCTION_137_0())
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_105_2();
    v59 = OUTLINED_FUNCTION_57_6();
    a10 = v59;
    v27 = OUTLINED_FUNCTION_231_0(4.8754e-34);
    if (v27)
    {
      v28 = v27;
      v29 = [v27 engineID];

      sub_1C6016940();
      OUTLINED_FUNCTION_129_2();
    }

    else
    {
      OUTLINED_FUNCTION_16_26();
    }

    OUTLINED_FUNCTION_74_5(v30);
    v31 = OUTLINED_FUNCTION_161_1();
    v32 = OUTLINED_FUNCTION_54_9(v31);
    OUTLINED_FUNCTION_46_7(v32);
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_189_0(v34);
    OUTLINED_FUNCTION_17_26();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    sub_1C5CB5700(v20);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  if (OUTLINED_FUNCTION_185_0())
  {
    OUTLINED_FUNCTION_85_6();
    v41 = [v40 eventStream];

    OUTLINED_FUNCTION_2_50();
    sub_1C5E37504(0, v42, v43, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"session-id";
    v45 = @"session-id";
    OUTLINED_FUNCTION_15_1();
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"session-migration-error";
    v46 = @"session-migration-error";
    v47 = sub_1C6014D30();
    OUTLINED_FUNCTION_225_0(v47);
    OUTLINED_FUNCTION_124();
    sub_1C5CC547C();
    OUTLINED_FUNCTION_1_62();
    sub_1C5E37564(v48, 255, v49);
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_120();
    sub_1C5E372B8();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_19_3();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, v59, a10, a11, a12, a13, a14);
}

uint64_t sub_1C5E2F0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  v15 = v14[107];
  v16 = v14[106];
  v17 = v14[105];
  v18 = v14[90];

  swift_willThrow();

  sub_1C5E354FC(v18);
  v19 = v14[107];
  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v20 = OUTLINED_FUNCTION_138_2();
  OUTLINED_FUNCTION_144(v20, qword_1ED7E16A8);

  v21 = v19;
  v22 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_66();

  if (OUTLINED_FUNCTION_137_0())
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_105_2();
    a9 = OUTLINED_FUNCTION_57_6();
    a10 = a9;
    v23 = OUTLINED_FUNCTION_231_0(4.8754e-34);
    if (v23)
    {
      v24 = v23;
      v25 = [v23 engineID];

      sub_1C6016940();
      OUTLINED_FUNCTION_129_2();
    }

    else
    {
      OUTLINED_FUNCTION_16_26();
    }

    OUTLINED_FUNCTION_74_5(v26);
    v27 = OUTLINED_FUNCTION_161_1();
    v28 = OUTLINED_FUNCTION_54_9(v27);
    OUTLINED_FUNCTION_46_7(v28);
    v29 = v19;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_189_0(v30);
    OUTLINED_FUNCTION_17_26();
    _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
    sub_1C5CB5700(v17);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  if (OUTLINED_FUNCTION_185_0())
  {
    OUTLINED_FUNCTION_85_6();
    v37 = [v36 eventStream];

    OUTLINED_FUNCTION_2_50();
    sub_1C5E37504(0, v38, v39, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"session-id";
    v41 = @"session-id";
    OUTLINED_FUNCTION_15_1();
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"session-migration-error";
    v42 = @"session-migration-error";
    v43 = sub_1C6014D30();
    OUTLINED_FUNCTION_225_0(v43);
    OUTLINED_FUNCTION_124();
    sub_1C5CC547C();
    OUTLINED_FUNCTION_1_62();
    sub_1C5E37564(v44, 255, v45);
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_120();
    sub_1C5E372B8();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_19_3();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C5E2F394()
{
  type metadata accessor for QueueLoadingActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ED7E1660 = v0;
  return result;
}

uint64_t sub_1C5E2F3D0()
{
  if (qword_1ED7DC670 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C5E2F42C()
{
  v0 = type metadata accessor for QueueLoadingActor();

  return MEMORY[0x1EEE6DBF0](v0);
}

uint64_t PlaybackEngineSessionManager.__allocating_init(playbackEngine:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_73();
  PlaybackEngineSessionManager.init(playbackEngine:)(v1);
  return v0;
}

uint64_t sub_1C5E2F4A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (!a5)
  {
    if (a3)
    {
      v12 = sub_1C6016940();
      a3 = v13;
      if (a4)
      {
LABEL_7:
        v14 = sub_1C6016940();
LABEL_10:
        v16[0] = a2;
        v17 = v12;
        v18 = a3;
        v19 = v14;
        v20 = v15;
        return sub_1C5DF562C(v9, v16);
      }
    }

    else
    {
      v12 = 0;
      if (a4)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v10 = a5;

  return sub_1C5E0232C(v9, v10);
}

void sub_1C5E2F578(void *a1, void *a2, void *a3, char a4)
{
  if (qword_1ED7DD2B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C60162D0();
  __swift_project_value_buffer(v8, qword_1ED7E16A8);
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  v29 = v9;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 136446722;
    v17 = [v9 engineID];
    v28 = a4;
    v18 = sub_1C6016940();
    v20 = v19;

    v21 = sub_1C5C6AB10(v18, v20, &v30);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v10;
    *v15 = v10;
    *(v14 + 22) = 2082;
    v22 = v10;
    v23 = [v11 sessionID];
    v24 = sub_1C6016940();
    v26 = v25;

    v27 = sub_1C5C6AB10(v24, v26, &v30);

    *(v14 + 24) = v27;
    a4 = v28;
    _os_log_impl(&dword_1C5C61000, v12, v13, "[SNM:%{public}s] performSetQueue(event: %{public}@) | installing queue controller [loading ready] queueController=%{public}s", v14, 0x20u);
    sub_1C5CB5700(v15);
    MEMORY[0x1C6956920](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v16, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);
  }

  if (a4)
  {

    [v29 setQueueController_];
  }
}

void sub_1C5E2F818(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = qword_1ED7DD2B8;
    v8 = a2;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_1C60162D0();
    __swift_project_value_buffer(v9, qword_1ED7E16A8);
    v10 = v8;

    oslog = sub_1C60162B0();
    v11 = sub_1C6016F20();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v12 = 136446466;
      *(v12 + 4) = sub_1C5C6AB10(a3, a4, &v17);
      *(v12 + 12) = 2114;
      *(v12 + 14) = v10;
      *v13 = a2;
      v15 = v10;
      _os_log_impl(&dword_1C5C61000, oslog, v11, "[SNM:%{public}s] performSetSession | pause failed with error=%{public}@", v12, 0x16u);
      sub_1C5CB5700(v13);
      MEMORY[0x1C6956920](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1C6956920](v14, -1, -1);
      MEMORY[0x1C6956920](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C5E2FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  sub_1C6016C10();
  v5[25] = sub_1C6016C00();
  v7 = sub_1C6016BA0();
  v5[26] = v7;
  v5[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5E2FAA4, v7, v6);
}

uint64_t sub_1C5E2FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_149();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_112_1();
  a24 = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  v26[28] = Strong;
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong queueController];
    v26[29] = v32;
    if (v32)
    {
      v33 = qword_1ED7DD2B8;
      v34 = v32;
      if (v33 != -1)
      {
        OUTLINED_FUNCTION_59();
      }

      v35 = v26[21];
      v36 = sub_1C60162D0();
      __swift_project_value_buffer(v36, qword_1ED7E16A8);
      v37 = v34;
      v38 = v31;

      v39 = sub_1C60162B0();
      sub_1C6016F30();

      if (OUTLINED_FUNCTION_137_0())
      {
        v70 = v26[20];
        v71 = v26[21];
        OUTLINED_FUNCTION_21();
        a14 = OUTLINED_FUNCTION_132_2();
        *v35 = 136446722;
        v40 = [v38 engineID];
        sub_1C6016940();
        OUTLINED_FUNCTION_48_12();

        v41 = OUTLINED_FUNCTION_88_0();
        sub_1C5C6AB10(v41, v42, v43);
        OUTLINED_FUNCTION_109_0();
        *(v35 + 4) = v27;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_1C5C6AB10(v70, v71, &a14);
        *(v35 + 22) = 2082;
        v44 = [v37 sessionID];
        sub_1C6016940();
        OUTLINED_FUNCTION_290();

        v45 = OUTLINED_FUNCTION_111_2();
        sub_1C5C6AB10(v45, v40, v46);
        OUTLINED_FUNCTION_51_12();

        *(v35 + 24) = v44;
        OUTLINED_FUNCTION_169();
        _os_log_impl(v47, v48, v49, v50, v51, 0x20u);
        OUTLINED_FUNCTION_160();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_6();
      }

      v52 = OUTLINED_FUNCTION_96_2();
      [v52 v53];
    }

    if (qword_1ED7DC670 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_148_1();

    return MEMORY[0x1EEE6DFA0](v54, v55, v56);
  }

  else
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    v26[10] = v58;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_4_47();
    sub_1C5E37564(v59, 255, v60);
    OUTLINED_FUNCTION_18_26();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_148_1();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C5E2FDFC()
{
  OUTLINED_FUNCTION_13();
  *(v0 + 240) = (*(v0 + 176))();
  *(v0 + 248) = 0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1C5E2FE84, v1, v2);
}

uint64_t sub_1C5E2FE84()
{
  OUTLINED_FUNCTION_49_1();
  v42 = v0;
  v2 = qword_1ED7DD2B8;
  v3 = v0[30];
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_59();
    v4 = v0[30];
  }

  v5 = v0[28];
  v6 = sub_1C60162D0();
  v0[32] = OUTLINED_FUNCTION_144(v6, qword_1ED7E16A8);
  v7 = v5;
  OUTLINED_FUNCTION_201_0();

  v8 = sub_1C60162B0();
  sub_1C6016F30();

  if (OUTLINED_FUNCTION_67())
  {
    v40 = v0[30];
    v9 = v0[28];
    v10 = OUTLINED_FUNCTION_21();
    v41 = swift_slowAlloc();
    *v10 = 136446722;
    v11 = [v9 engineID];
    v12 = sub_1C6016940();
    v14 = v13;

    v15 = sub_1C5C6AB10(v12, v14, &v41);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = OUTLINED_FUNCTION_63_4();
    *(v10 + 14) = sub_1C5C6AB10(v16, v17, v18);
    *(v10 + 22) = 2082;
    v19 = [v40 sessionID];
    sub_1C6016940();
    OUTLINED_FUNCTION_75();

    v20 = OUTLINED_FUNCTION_55_2();
    v23 = sub_1C5C6AB10(v20, v21, v22);

    *(v10 + 24) = v23;
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  v29 = v0[30];
  v30 = v0[28];
  [v29 willConnectToPlaybackEngine_];
  OUTLINED_FUNCTION_58();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  v0[14] = sub_1C5E38174;
  v0[15] = v31;
  v32 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C5DBC798;
  v0[13] = &block_descriptor_72;
  v33 = _Block_copy(v0 + 10);
  v0[33] = v33;
  v34 = v30;
  v35 = v29;

  v0[2] = v0;
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_8_30();
  sub_1C5E37398();
  v0[17] = v36;
  v0[10] = v32;
  v0[11] = 1107296256;
  v0[12] = sub_1C5E223AC;
  v0[13] = &block_descriptor_75_0;
  v0[14] = v30;
  [v35 finalizeStateRestorationWithLoadingItemReady:v33 completion:v0 + 10];
  OUTLINED_FUNCTION_73_3();

  return MEMORY[0x1EEE6DEC8](v37);
}

uint64_t sub_1C5E301C0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 216);
  v7 = *(v6 + 208);
  if (v8)
  {
    v9 = sub_1C5E30CA0;
  }

  else
  {
    v9 = sub_1C5E302E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E302E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_149();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_112_1();
  a24 = v26;
  v30 = *(v26 + 264);
  v31 = *(v26 + 240);

  _Block_release(v30);
  v32 = [v31 targetContentItemID];
  if (v32)
  {
    v33 = *(v26 + 232);
    v34 = *(v26 + 240);
    v35 = *(v26 + 224);

    OUTLINED_FUNCTION_14_3();
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_128_1();
    *(v26 + 80) = 3103;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_1();
    v37 = v36;
    OUTLINED_FUNCTION_0_77();
    a9 = v37;
    a10 = sub_1C5E37564(v38, 255, v39);
    OUTLINED_FUNCTION_252();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_130_3();

    swift_willThrow();
    v40 = *(v26 + 240);
    v41 = *(v26 + 224);
    OUTLINED_FUNCTION_201_0();

    v42 = v40;
    v43 = sub_1C60162B0();
    sub_1C6016F20();

    v44 = "rameworks/AssistantServices.framework/AssistantServices";
    if (OUTLINED_FUNCTION_48_3())
    {
      a12 = *(v26 + 240);
      a13 = " queueController";
      v45 = *(v26 + 224);
      v46 = *(v26 + 168);
      v47 = OUTLINED_FUNCTION_21();
      a14 = swift_slowAlloc();
      *v47 = 136446722;
      v48 = [v45 engineID];
      v49 = sub_1C6016940();
      v44 = v50;

      v51 = sub_1C5C6AB10(v49, v44, &a14);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = OUTLINED_FUNCTION_111_2();
      *(v47 + 14) = sub_1C5C6AB10(v52, v46, v53);
      *(v47 + 22) = 2082;
      v54 = [a12 sessionID];
      sub_1C6016940();
      OUTLINED_FUNCTION_75();

      v55 = OUTLINED_FUNCTION_55_2();
      v58 = sub_1C5C6AB10(v55, v56, v57);

      *(v47 + 24) = v58;
      OUTLINED_FUNCTION_4_19();
      _os_log_impl(v59, v60, v61, v62, v63, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();
    }

    v64 = *(v26 + 240);
    [v64 willDisconnectFromPlaybackEngine_];
    swift_willThrow();

    v66 = *(v26 + 232);
    if (v66)
    {
      [v66 willConnectToPlaybackEngine_];
      if (qword_1ED7DD2B8 != -1)
      {
        OUTLINED_FUNCTION_59();
      }

      v68 = *(v26 + 224);
      v67 = *(v26 + 232);
      v69 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v69, qword_1ED7E16A8);
      v70 = v67;
      v71 = v68;
      OUTLINED_FUNCTION_198_0();

      v72 = sub_1C60162B0();
      sub_1C6016F20();

      v73 = OUTLINED_FUNCTION_137_0();
      v74 = *(v26 + 232);
      if (v73)
      {
        v75 = *(v26 + 224);
        a11 = *(v26 + 160);
        a12 = *(v26 + 168);
        OUTLINED_FUNCTION_21();
        a14 = OUTLINED_FUNCTION_132_2();
        *v70 = 136446722;
        v76 = [v75 engineID];
        sub_1C6016940();
        a13 = " queueController";
        OUTLINED_FUNCTION_48_12();

        v77 = OUTLINED_FUNCTION_88_0();
        sub_1C5C6AB10(v77, v78, v79);
        OUTLINED_FUNCTION_109_0();
        *(v70 + 1) = " queueController";
        *(v70 + 6) = 2082;
        *(v70 + 14) = sub_1C5C6AB10(a11, a12, &a14);
        *(v70 + 11) = 2082;
        v80 = [v74 sessionID];
        sub_1C6016940();
        OUTLINED_FUNCTION_290();

        v81 = OUTLINED_FUNCTION_111_2();
        sub_1C5C6AB10(v81, v76, v82);
        OUTLINED_FUNCTION_51_12();

        *(v70 + 3) = v80;
        OUTLINED_FUNCTION_169();
        _os_log_impl(v83, v84, v85, v86, v87, 0x20u);
        OUTLINED_FUNCTION_160();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }
    }

    v89 = *(v26 + 224);
    v88 = *(v26 + 232);
    OUTLINED_FUNCTION_228_0(v65, sel_setQueueController_);
    swift_willThrow();

    OUTLINED_FUNCTION_172();
  }

  OUTLINED_FUNCTION_148_1();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C5E307DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  v29 = *(v24 + 248);

  *(v24 + 80) = v29;
  v30 = v29;
  sub_1C5CB5808();
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  v31 = &qword_1ED7DD000;
  v32 = &selRef_currentThread;
  if (swift_dynamicCast())
  {

    v33 = *(v24 + 144);
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v34 = *(v24 + 224);
    v35 = *(v24 + 168);
    v36 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v36, qword_1ED7E16A8);
    v37 = v34;
    OUTLINED_FUNCTION_198_0();

    v38 = v33;
    v39 = sub_1C60162B0();
    sub_1C6016F20();

    if (OUTLINED_FUNCTION_137_0())
    {
      v40 = *(v24 + 224);
      a9 = *(v24 + 160);
      a10 = *(v24 + 168);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_105_2();
      a11 = OUTLINED_FUNCTION_102_2();
      a12 = a11;
      *v35 = 136446722;
      v41 = [v40 engineID];
      sub_1C6016940();
      OUTLINED_FUNCTION_227_0();
      v42 = OUTLINED_FUNCTION_107_1();
      v32 = 0x1FAD89000;
      sub_1C5C6AB10(v42, v25, v43);
      OUTLINED_FUNCTION_229_0();
      *(v35 + 4) = v41;
      OUTLINED_FUNCTION_79_5();
      v44 = sub_1C5C6AB10(a9, a10, &a12);
      OUTLINED_FUNCTION_46_7(v44);
      *(v35 + 24) = v38;
      *v26 = v38;
      v45 = v38;
      OUTLINED_FUNCTION_17_26();
      _os_log_impl(v46, v47, v48, v49, v50, 0x20u);
      sub_1C5CB5700(v26);
      OUTLINED_FUNCTION_68_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_11_8();
    }

    sub_1C6016940();
    *(v24 + 152) = 3101;
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_77();
    sub_1C5E37564(v51, 255, v52);
    sub_1C6017290();
    OUTLINED_FUNCTION_66();

    swift_willThrow();

    v31 = &qword_1ED7DD000;
  }

  else
  {
  }

  v53 = *(v24 + 232);
  if (v53)
  {
    [v53 willConnectToPlaybackEngine_];
    if (v31[87] != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v55 = *(v24 + 224);
    v54 = *(v24 + 232);
    v56 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v56, qword_1ED7E16A8);
    v57 = v54;
    v58 = v55;

    v59 = sub_1C60162B0();
    sub_1C6016F20();

    v60 = OUTLINED_FUNCTION_48_3();
    v61 = *(v24 + 232);
    if (v60)
    {
      v62 = v32;
      v63 = *(v24 + 224);
      a10 = *(v24 + 160);
      a11 = *(v24 + 168);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_132_2();
      OUTLINED_FUNCTION_197_0();
      *v57 = 136446722;
      v64 = [v63 v62 + 1981];
      sub_1C6016940();
      OUTLINED_FUNCTION_48_12();

      v65 = OUTLINED_FUNCTION_88_0();
      sub_1C5C6AB10(v65, v66, v67);
      OUTLINED_FUNCTION_109_0();
      *(v57 + 1) = v62;
      *(v57 + 6) = 2082;
      *(v57 + 14) = sub_1C5C6AB10(a10, a11, &a12);
      *(v57 + 11) = 2082;
      v68 = [v61 sessionID];
      sub_1C6016940();
      OUTLINED_FUNCTION_290();

      OUTLINED_FUNCTION_55_9(v69, v70, v71);
      OUTLINED_FUNCTION_51_12();

      *(v57 + 3) = v68;
      OUTLINED_FUNCTION_38_11();
      _os_log_impl(v72, v73, v74, v75, v57, 0x20u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }

  v76 = *(v24 + 224);
  v77 = *(v24 + 232);
  [v76 setQueueController_];
  swift_willThrow();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C5E30CA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  v28 = *(v24 + 264);
  v29 = *(v24 + 240);

  swift_willThrow();

  _Block_release(v28);
  v30 = *(v24 + 272);
  v31 = *(v24 + 240);
  v32 = *(v24 + 224);
  OUTLINED_FUNCTION_201_0();

  v33 = v31;
  v34 = sub_1C60162B0();
  sub_1C6016F20();

  v35 = "rameworks/AssistantServices.framework/AssistantServices";
  if (OUTLINED_FUNCTION_48_3())
  {
    a10 = *(v24 + 240);
    a11 = v30;
    v36 = *(v24 + 224);
    v38 = *(v24 + 160);
    v37 = *(v24 + 168);
    v39 = OUTLINED_FUNCTION_21();
    swift_slowAlloc();
    OUTLINED_FUNCTION_202_0();
    *v39 = 136446722;
    v40 = [v36 engineID];
    v41 = sub_1C6016940();
    v35 = v42;

    v43 = sub_1C5C6AB10(v41, v35, &a12);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_1C5C6AB10(v38, v37, &a12);
    *(v39 + 22) = 2082;
    v44 = [a10 sessionID];
    sub_1C6016940();
    OUTLINED_FUNCTION_75();

    v45 = OUTLINED_FUNCTION_55_2();
    v48 = sub_1C5C6AB10(v45, v46, v47);
    v30 = a11;

    *(v39 + 24) = v48;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v49, v50, v51, v52, v53, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  v54 = *(v24 + 240);
  [v54 willDisconnectFromPlaybackEngine_];
  swift_willThrow();

  v56 = *(v24 + 232);
  if (v56)
  {
    [v56 willConnectToPlaybackEngine_];
    if (qword_1ED7DD2B8 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v58 = *(v24 + 224);
    v57 = *(v24 + 232);
    v59 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v59, qword_1ED7E16A8);
    v60 = v57;
    v61 = v58;
    OUTLINED_FUNCTION_198_0();

    v62 = sub_1C60162B0();
    sub_1C6016F20();

    v63 = OUTLINED_FUNCTION_137_0();
    v64 = *(v24 + 232);
    if (v63)
    {
      v65 = *(v24 + 224);
      a9 = *(v24 + 160);
      a10 = *(v24 + 168);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_132_2();
      OUTLINED_FUNCTION_197_0();
      *v60 = 136446722;
      v66 = [v65 engineID];
      sub_1C6016940();
      a11 = v30;
      OUTLINED_FUNCTION_48_12();

      v67 = OUTLINED_FUNCTION_88_0();
      sub_1C5C6AB10(v67, v68, v69);
      OUTLINED_FUNCTION_109_0();
      *(v60 + 1) = v30;
      *(v60 + 6) = 2082;
      *(v60 + 14) = sub_1C5C6AB10(a9, a10, &a12);
      *(v60 + 11) = 2082;
      v70 = [v64 sessionID];
      sub_1C6016940();
      OUTLINED_FUNCTION_290();

      OUTLINED_FUNCTION_55_9(v71, v72, v73);
      OUTLINED_FUNCTION_51_12();

      *(v60 + 3) = v70;
      OUTLINED_FUNCTION_169();
      _os_log_impl(v74, v75, v76, v77, v78, 0x20u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }

  v80 = *(v24 + 224);
  v79 = *(v24 + 232);
  OUTLINED_FUNCTION_228_0(v55, sel_setQueueController_);
  swift_willThrow();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C5E31080(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(_MPCProtoMigrationData *)a1 payloads];
  if (v3)
  {
    v4 = v3;
    sub_1C5C64D74(0, &qword_1EC1AC0B8);
    sub_1C6016B00();
  }

  sub_1C6016940();
  v10 = 3101;
  sub_1C6017540();

  v11 = 0xD000000000000025;
  v12 = 0x80000001C6057BE0;
  v5 = [a2 type];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C6016940();
    v9 = v8;
  }

  else
  {
    v9 = 0xEC00000065707954;
    v7 = 0x206E776F6E6B6E55;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  MEMORY[0x1C69534E0](v7, v9);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
  sub_1C6017280();

  swift_willThrow();
}

void sub_1C5E31604(void *a1)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1C5E37710(a1, &selRef_playbackSessionData);
  if (v4 >> 60 == 15)
  {
    sub_1C6016940();
    v18[0] = 3101;
    sub_1C6017540();

    v18[1] = 0xD000000000000025;
    v18[2] = 0x80000001C6057BE0;
    v5 = [a1 type];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1C6016940();
      v9 = v8;
    }

    else
    {
      v9 = 0xEC00000065707954;
      v7 = 0x206E776F6E6B6E55;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    MEMORY[0x1C69534E0](v7, v9);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v12 = objc_allocWithZone(MEMORY[0x1E69B1460]);
    sub_1C5CFAC9C(v10, v11);
    v13 = sub_1C5E35F4C(v10, v11);
    if (v1)
    {
      sub_1C5CB6098(v10, v11);
    }

    else
    {
      v14 = v13;
      sub_1C5C64D74(0, &unk_1ED7DC250);
      v18[0] = 0;
      v15 = [v14 decodeRootObjectOfClass:swift_getObjCClassFromMetadata() error:v18];
      v16 = v18[0];
      if (v15)
      {
        sub_1C6017390();
        sub_1C5CB6098(v10, v11);

        swift_unknownObjectRelease();
        swift_dynamicCast();
      }

      else
      {
        v17 = v16;
        sub_1C6014D40();

        swift_willThrow();
        sub_1C5CB6098(v10, v11);
      }
    }
  }
}

uint64_t sub_1C5E3194C(void *a1)
{
  sub_1C5C64D74(0, &unk_1EC1AC0C0);
  sub_1C5E37504(0, &qword_1EC1A88A0, sub_1C5D16CB4, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6035C00;
  *(v3 + 32) = sub_1C5C64D74(0, &qword_1EC1A8A10);
  *(v3 + 40) = sub_1C5C64D74(0, &qword_1EC1A92B0);
  sub_1C6016F50();

  if (!v1)
  {
    if (v9)
    {
      sub_1C5E38184(0, qword_1EC1AC0D0, &qword_1EC1A92B0, 0x1E696AEC0, MEMORY[0x1E69E62F8]);
      v5 = swift_dynamicCast();
      v6 = v7;
      if (!v5)
      {
        v6 = 0;
      }
    }

    else
    {
      sub_1C5E37FBC(v8, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
      v6 = 0;
    }

    *a1 = v6;
  }

  return result;
}

id sub_1C5E31B28(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCommand:a1 playbackQueue:a2];

  return v4;
}

uint64_t PlaybackEngineSessionManager.lastSessionIdentifier.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_216_0();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

void sub_1C5E31C30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1C5E31C64(v1, v2);
}

void sub_1C5E31C64(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a2)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_126();
  }

  v6 = OUTLINED_FUNCTION_216_0();
  v4 = OUTLINED_FUNCTION_96_2();
  [v4 v5];

  swift_unknownObjectRelease();
}

uint64_t PlaybackEngineSessionManager.loadSession(identifier:)()
{
  OUTLINED_FUNCTION_248();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = sub_1C6014E50();
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v5 = sub_1C6014F20();
  v1[34] = v5;
  v1[35] = *(v5 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_1C6016C10();
  v1[38] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[39] = v6;
  v1[40] = v7;
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5E31E68()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  if (Strong)
  {
    v2 = v0[35];
    v55 = v0[34];
    v4 = v0[32];
    v3 = v0[33];
    v52 = v0[36];
    v54 = v0[31];
    v6 = v0[28];
    v5 = v0[29];
    v57 = Strong;
    v7 = [Strong eventStream];
    OUTLINED_FUNCTION_2_50();
    sub_1C5E37504(0, v8, v9, MEMORY[0x1E69E6F90]);
    v0[42] = v10;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    v0[43] = @"session-id";
    *(inited + 32) = @"session-id";
    v51 = @"session-id";
    *(inited + 40) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    v0[44] = v12;
    v0[45] = sub_1C5CC547C();
    OUTLINED_FUNCTION_1_62();
    v0[46] = sub_1C5E37564(v13, 255, v14);
    sub_1C6016880();
    sub_1C5E372B8();

    sub_1C5E3290C();
    OUTLINED_FUNCTION_144_1();
    sub_1C6017540();

    MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C60577E0);
    v0[24] = v6;
    v0[25] = v5;
    (*(v4 + 104))(v3, *MEMORY[0x1E6968F70], v54);
    sub_1C5C8FDB0();
    OUTLINED_FUNCTION_102_0();
    sub_1C6014F10();
    (*(v4 + 8))(v3, v54);

    v15 = *(v2 + 8);
    v0[47] = v15;
    v0[48] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v52, v55);
    v16 = [objc_opt_self() defaultManager];
    sub_1C6014EE0();
    sub_1C6016900();
    OUTLINED_FUNCTION_126();

    v17 = OUTLINED_FUNCTION_96_2();
    v19 = [v17 v18];

    if (v19)
    {
      v20 = v0[37];
      v21 = v0[29];
      v56 = v0[30];
      v22 = v0[28];
      v23 = [v57 engineID];
      v24 = sub_1C6016940();
      v26 = v25;

      v0[49] = v26;
      OUTLINED_FUNCTION_144_1();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v58 = v27;
      v28 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v28);
      v0[50] = v58;
      v29 = swift_task_alloc();
      v0[51] = v29;
      v29[2] = v20;
      v29[3] = v56;
      v29[4] = v22;
      v29[5] = v21;
      v29[6] = v24;
      v29[7] = v26;
      v30 = swift_task_alloc();
      v0[52] = v30;
      *v30 = v0;
      v30[1] = sub_1C5E325DC;

      return sub_1C5E2FA04(0xD000000000000018, v58, sub_1C5E3795C, v29);
    }

    v35 = v0[34];
    v53 = v0[37];

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v0[27] = 5;
    OUTLINED_FUNCTION_144_1();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_64_8();
    sub_1C5E37564(v36, 255, v37);
    v38 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v38);

    sub_1C6016880();
    _s3__C4CodeOMa_0();
    v40 = v39;
    OUTLINED_FUNCTION_63_6();
    v50 = sub_1C5E37564(v41, 255, v42);
    OUTLINED_FUNCTION_100();
    v43 = sub_1C6017280();

    v44 = [v57 eventStream];
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1C6035C00;
    *(v45 + 32) = v51;
    v46 = v51;
    *(v45 + 40) = sub_1C6016900();
    *(v45 + 48) = @"session-restoration-error";
    *(v45 + 56) = v43;
    v47 = @"session-restoration-error";
    v48 = v43;
    OUTLINED_FUNCTION_312();
    sub_1C6016880();
    sub_1C5E372B8();

    swift_willThrow();
    v15(v53, v35);
  }

  else
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    v0[26] = v32;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_4_47();
    sub_1C5E37564(v33, 255, v34);
    OUTLINED_FUNCTION_18_26();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_172();

  return v49();
}

uint64_t sub_1C5E325DC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[53] = v0;

  if (v0)
  {
    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_1C5E32798;
  }

  else
  {

    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_1C5E326FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E326FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 376);
  v12 = *(v10 + 296);
  v13 = *(v10 + 272);

  v11(v12, v13);

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_31();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C5E32798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23_2();
  v41 = v20[47];
  v42 = v20[48];
  v37 = v20[45];
  v38 = v20[46];
  v36 = v20[44];
  v21 = v20[43];
  v22 = v20[41];
  v39 = v20[34];
  v40 = v20[37];

  v23 = [v22 eventStream];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = v21;
  v25 = v21;
  OUTLINED_FUNCTION_15_1();
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"session-restoration-error";
  v26 = @"session-restoration-error";
  *(inited + 56) = sub_1C6014D30();
  sub_1C6016880();
  OUTLINED_FUNCTION_34_4();
  sub_1C5E372B8();

  swift_willThrow();
  v41(v40, v39);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_8_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, v42, a17, a18, a19, a20);
}

void sub_1C5E3290C()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v3 = MEMORY[0x1E6968FB0];
  sub_1C5E37504(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC17MediaPlaybackCore28PlaybackEngineSessionManager____lazy_storage___playbackSessionsURL;
  swift_beginAccess();
  sub_1C5E38014(v0 + v10, v9, &unk_1ED7E01F0, v3);
  v11 = sub_1C6014F20();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    v12 = MEMORY[0x1E6968FB0];
    v13 = MEMORY[0x1E69E6720];
    v14 = OUTLINED_FUNCTION_6_3();
    sub_1C5E37FBC(v14, v15, v12, v13, v16);
    sub_1C5E3581C();
    (*(*(v11 - 8) + 16))(v7, v2, v11);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    swift_beginAccess();
    sub_1C5E38088(v7, v0 + v10, &unk_1ED7E01F0, v12, v13, sub_1C5E37504);
    swift_endAccess();
  }

  else
  {
    (*(*(v11 - 8) + 32))(v2, v9, v11);
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5E32B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v36[0] = a3;
  v42 = *MEMORY[0x1E69E9840];
  sub_1C5E37504(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v36 - v11;
  v13 = sub_1C6014F20();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C64D74(0, &unk_1ED7DC228);
  v17 = *(v14 + 16);
  v36[1] = a1;
  v17(v16, a1, v13);
  v18 = sub_1C5DDA0A0(v16);
  if (v18)
  {
    v19 = v18;
    sub_1C5E37820(0, &qword_1EC1A9220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    v40 = 0xD000000000000010;
    v41 = 0x80000001C6057930;
    v21 = v19;
    v22 = MEMORY[0x1E69E6158];
    sub_1C60174C0();
    *(inited + 96) = v22;
    *(inited + 72) = v37;
    *(inited + 80) = a6;

    v23 = sub_1C6016880();
    v24 = objc_allocWithZone(MEMORY[0x1E69B1498]);
    v25 = v38;
    v26 = sub_1C5E3602C(v21, v23);
    if (v25)
    {
LABEL_3:

      return;
    }

    v31 = v26;
    sub_1C5C64D74(0, &unk_1ED7DC250);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = 0;
    v33 = [v31 decodeRootObjectOfClass:ObjCClassFromMetadata error:&v39];
    v34 = v39;
    if (!v33)
    {
      v35 = v34;
      sub_1C6014D40();

      swift_willThrow();
      goto LABEL_3;
    }

    sub_1C6017390();

    swift_unknownObjectRelease();
    swift_dynamicCast();
  }

  else
  {
    v27 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v36[0];
    v28[4] = a2;
    v28[5] = v29;
    v28[6] = a4;

    sub_1C5E33778(0, 0, v12, &unk_1C6044C98, v28);

    sub_1C5E37FBC(v12, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1C5E37504);
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v39 = 4;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C6017540();

    v40 = 0xD000000000000018;
    v41 = 0x80000001C6057910;
    sub_1C5E37564(&qword_1EC1A91E8, 255, MEMORY[0x1E6968FB0]);
    v30 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v30);

    sub_1C6016880();
    _s3__C4CodeOMa_0();
    sub_1C5E37564(&qword_1EC1AC070, 255, _s3__C4CodeOMa_0);
    sub_1C6017280();

    swift_willThrow();
  }
}

uint64_t sub_1C5E3312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C5E33150, 0, 0);
}

uint64_t sub_1C5E33150()
{
  OUTLINED_FUNCTION_248();
  sub_1C6016C10();
  *(v0 + 40) = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  v2 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E331D4, v2, v1);
}

uint64_t sub_1C5E331D4()
{
  OUTLINED_FUNCTION_13();

  v0._countAndFlagsBits = OUTLINED_FUNCTION_252();
  PlaybackEngineSessionManager.deleteSession(identifier:)(v0);
  OUTLINED_FUNCTION_172();

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaybackEngineSessionManager.deleteSession(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v48 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6014E50();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  v9 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  sub_1C5E3290C();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1C6017540();

  v46 = countAndFlagsBits;
  v47 = object;
  v41 = object;
  MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C60577E0);
  (*(v4 + 104))(v8, *MEMORY[0x1E6968F70], v2);
  sub_1C5C8FDB0();
  sub_1C6014F10();
  v18 = OUTLINED_FUNCTION_93_3();
  v19(v18);

  v21 = *(v11 + 8);
  v20 = v11 + 8;
  v42 = v21;
  v43 = v20;
  v21(v15, v9);
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  sub_1C6014EE0();
  v24 = sub_1C6016900();

  v25 = [v23 fileExistsAtPath_];

  if (!v25)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v45 = 5;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v46 = 0xD00000000000001FLL;
    v47 = v33;
    OUTLINED_FUNCTION_64_8();
    sub_1C5E37564(v34, 255, v35);
    v36 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v36);

    sub_1C6016880();
    OUTLINED_FUNCTION_81_6();
    _s3__C4CodeOMa_0();
    OUTLINED_FUNCTION_63_6();
    sub_1C5E37564(v37, 255, v38);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

LABEL_12:
    swift_willThrow();
    v42(v17, v9);
    return;
  }

  v26 = [v22 defaultManager];
  v27 = sub_1C6014EA0();
  v46 = 0;
  v28 = [v26 removeItemAtURL:v27 error:&v46];

  if (!v28)
  {
    v39 = v46;
    sub_1C6014D40();

    goto LABEL_12;
  }

  v29 = v46;
  v30 = PlaybackEngineSessionManager.lastSessionIdentifier.getter();
  if (v31)
  {
    if (v30 == countAndFlagsBits && v31 == v41)
    {
    }

    else
    {
      sub_1C6017860();
      OUTLINED_FUNCTION_193_0();

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1C5E31C64(0, 0);
  }

LABEL_15:
  v42(v17, v9);
}

uint64_t sub_1C5E33778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1C5E37504(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C5E38014(a3, v22 - v10, &qword_1ED7DCEC0, v8);
  v12 = sub_1C6016C30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C5E37FBC(v11, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1C5E37504);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C6016BA0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C60169C0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C5E33A20(uint64_t a1)
{
  v3 = sub_1C6015340();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = MEMORY[0x1E69E7CA0];
  if (!Strong)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v14 = sub_1C6016940();
    *&v92 = 60;
    sub_1C6016880();
    _s3__C4CodeOMa_2();
    sub_1C5E37564(&qword_1EC1AB170, 255, _s3__C4CodeOMa_2);
    sub_1C6017280();

    swift_willThrow();
    return v14;
  }

  v9 = Strong;
  if (*MEMORY[0x1E69B0CB0])
  {
    v10 = sub_1C6016940();
    sub_1C5CFF290(v10, v11, a1, &v92);

    if (v93)
    {
      sub_1C5CE5EF4();
      if (swift_dynamicCast())
      {
        v94 = v4;
        v12 = v90;
        sub_1C5CFF290(0x7265746C6966, 0xE600000000000000, v90, &v92);
        if (v93)
        {
          if (swift_dynamicCast())
          {
            v88 = v91;
            v89 = v90;
            v13 = [objc_opt_self() sharedManager];
            v14 = [v13 fallbackAccount];

            if (v14)
            {
              if ([v14 hasMigrationCapability])
              {
                v87 = v14;
                v14 = v88;
                v15 = v89;
                sub_1C5CFAC9C(v89, v88);
                sub_1C6015320();
                if (v1)
                {

                  sub_1C5C8F8BC(v15, v14);

                  return v14;
                }

                sub_1C5CFF290(0x7365727574616566, 0xE800000000000000, v12, &v92);

                if (v93)
                {
                  if (swift_dynamicCast())
                  {
                    v17 = v90;
                    if ([v9 isVocalAttenuationEnabled] && (v17 & 2) == 0)
                    {
                      v86 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
                      v85 = sub_1C6016940();
                      *&v92 = 3105;
                      sub_1C6016880();
                      _s3__C4CodeOMa_1();
                      sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
                      sub_1C6017280();

                      swift_willThrow();

                      v18 = v89;
                      v19 = v14;
LABEL_30:
                      sub_1C5C8F8BC(v18, v19);
                      (*(v94 + 8))(v6, v3);
                      return v14;
                    }

                    v20 = v14;
                    switch(sub_1C5E355D8(v87))
                    {
                      case 1u:
                        (*(v94 + 8))(v6, v3);
                        sub_1C5C8F8BC(v89, v14);

                        return 0;
                      case 2u:
                      case 3u:
                        v14 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
                        v86 = sub_1C6016940();
                        *&v92 = 3105;
                        sub_1C6016880();
                        _s3__C4CodeOMa_1();
                        sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
                        sub_1C6017280();

                        swift_willThrow();

                        v18 = v89;
                        v19 = v20;
                        goto LABEL_30;
                      case 4u:
                        (*(v94 + 8))(v6, v3);
                        sub_1C5C8F8BC(v89, v14);

                        return v87;
                      default:
                        if (v17)
                        {
                          if (qword_1ED7DD2B8 != -1)
                          {
                            goto LABEL_55;
                          }

                          goto LABEL_43;
                        }

                        v21 = [v87 storeFrontIdentifier];
                        v22 = sub_1C6016940();
                        v24 = v23;

                        *&v92 = v22;
                        *(&v92 + 1) = v24;
                        v90 = 45;
                        v91 = 0xE100000000000000;
                        sub_1C5C8FDB0();
                        v25 = sub_1C6017370();

                        if (v25[2])
                        {
                          v27 = v25[4];
                          v26 = v25[5];

                          *&v92 = 0x2D5953534F4CLL;
                          *(&v92 + 1) = 0xE600000000000000;
                          v85 = v27;
                          v86 = v26;
                          MEMORY[0x1C69534E0](v27, v26);
                          v28 = sub_1C6015330();

                          if (v28)
                          {
                            if (qword_1ED7DD2B8 != -1)
                            {
                              swift_once();
                            }

                            v29 = sub_1C60162D0();
                            __swift_project_value_buffer(v29, qword_1ED7E16A8);
                            v30 = v9;
                            v31 = v87;

                            v32 = sub_1C60162B0();
                            v33 = sub_1C6016F30();

                            v84 = v31;

                            v34 = v30;
                            LODWORD(v83) = v33;
                            v87 = v32;
                            if (os_log_type_enabled(v32, v33))
                            {
                              v35 = swift_slowAlloc();
                              v81 = swift_slowAlloc();
                              *&v92 = v81;
                              *v35 = 136446722;
                              v82 = v34;
                              v36 = [v34 engineID];
                              v37 = sub_1C6016940();
                              v39 = v38;

                              v40 = sub_1C5C6AB10(v37, v39, &v92);

                              *(v35 + 4) = v40;
                              *(v35 + 12) = 2080;
                              v41 = v84;
                              v42 = [v84 shortHashedDSID];
                              v43 = sub_1C6016940();
                              v45 = v44;

                              v46 = sub_1C5C6AB10(v43, v45, &v92);

                              *(v35 + 14) = v46;
                              *(v35 + 22) = 2080;
                              v47 = sub_1C5C6AB10(v85, v86, &v92);

                              *(v35 + 24) = v47;
                              v48 = v87;
                              _os_log_impl(&dword_1C5C61000, v87, v83, "[SNM:%{public}s] validateAccount | allowing lossy handoff [delegation not supported, same storefront] accountID=%s storeFrontID=%s", v35, 0x20u);
                              v49 = v81;
                              swift_arrayDestroy();
                              MEMORY[0x1C6956920](v49, -1, -1);
                              MEMORY[0x1C6956920](v35, -1, -1);

                              sub_1C5C8F8BC(v89, v88);
                            }

                            else
                            {
                              sub_1C5C8F8BC(v89, v88);
                            }

                            (*(v94 + 8))(v6, v3);
                            return 1;
                          }
                        }

                        if (qword_1ED7DD2B8 != -1)
                        {
                          swift_once();
                        }

                        v69 = sub_1C60162D0();
                        __swift_project_value_buffer(v69, qword_1ED7E16A8);
                        v70 = v9;
                        v71 = sub_1C60162B0();
                        v72 = sub_1C6016F20();
                        v86 = v70;

                        LODWORD(v85) = v72;
                        if (os_log_type_enabled(v71, v72))
                        {
                          v73 = swift_slowAlloc();
                          v84 = swift_slowAlloc();
                          *&v92 = v84;
                          *v73 = 136446466;
                          v74 = [v86 engineID];
                          v75 = sub_1C6016940();
                          v77 = v76;

                          v78 = sub_1C5C6AB10(v75, v77, &v92);

                          *(v73 + 4) = v78;
                          *(v73 + 12) = 2048;
                          *(v73 + 14) = v17;
                          _os_log_impl(&dword_1C5C61000, v71, v85, "[SNM:%{public}s] validateAccount | ending migration [device does not support delegation] features=%lu", v73, 0x16u);
                          v79 = v84;
                          __swift_destroy_boxed_opaque_existential_0(v84);
                          MEMORY[0x1C6956920](v79, -1, -1);
                          MEMORY[0x1C6956920](v73, -1, -1);
                        }

                        v14 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
                        sub_1C6016940();
                        *&v92 = 3201;
                        sub_1C6016880();
                        _s3__C4CodeOMa_1();
                        sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
                        sub_1C6017280();

                        swift_willThrow();

                        break;
                    }

LABEL_29:

                    v19 = v88;
                    v18 = v89;
                    goto LABEL_30;
                  }
                }

                else
                {
                  sub_1C5E37FBC(&v92, &qword_1ED7E0200, v8 + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
                }

                v14 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
                sub_1C6016940();
                *&v92 = 3108;
                sub_1C6016880();
                _s3__C4CodeOMa_1();
                sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
                sub_1C6017280();

                swift_willThrow();

                goto LABEL_29;
              }

              sub_1C5C64D74(0, &qword_1ED7DCCF0);
              sub_1C6016940();
              *&v92 = 3105;
              sub_1C6016880();
              _s3__C4CodeOMa_1();
              sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
              sub_1C6017280();

              swift_willThrow();
            }

            else
            {

              sub_1C5C64D74(0, &qword_1ED7DCCF0);
              sub_1C6016940();
              *&v92 = 3105;
              v14 = sub_1C6016880();
              _s3__C4CodeOMa_1();
              sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
              sub_1C6017280();

              swift_willThrow();
            }

            sub_1C5C8F8BC(v89, v88);
LABEL_17:

            return v14;
          }
        }

        else
        {

          sub_1C5E37FBC(&v92, &qword_1ED7E0200, v8 + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
        }
      }
    }

    else
    {
      sub_1C5E37FBC(&v92, &qword_1ED7E0200, v8 + 8, MEMORY[0x1E69E6720], sub_1C5E37D38);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v14 = sub_1C6016940();
    *&v92 = 3106;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E37564(&qword_1EC1A9320, 255, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
    goto LABEL_17;
  }

  __break(1u);
LABEL_55:
  swift_once();
LABEL_43:
  v50 = sub_1C60162D0();
  __swift_project_value_buffer(v50, qword_1ED7E16A8);
  v51 = v9;
  v14 = v87;
  v52 = v87;
  v53 = sub_1C60162B0();
  v54 = sub_1C6016F30();
  v84 = v52;

  LODWORD(v85) = v54;
  v86 = v53;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v92 = v82;
    *v55 = 136446466;
    v56 = [v51 engineID];
    v83 = v51;
    v57 = v56;
    v58 = sub_1C6016940();
    v60 = v59;

    v61 = sub_1C5C6AB10(v58, v60, &v92);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v62 = [v84 shortHashedDSID];
    v63 = sub_1C6016940();
    v65 = v64;

    v66 = sub_1C5C6AB10(v63, v65, &v92);

    *(v55 + 14) = v66;
    v67 = v86;
    _os_log_impl(&dword_1C5C61000, v86, v85, "[SNM:%{public}s] validateAccount | allowing handoff after delegation [] accountID=%s", v55, 0x16u);
    v68 = v82;
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v68, -1, -1);
    MEMORY[0x1C6956920](v55, -1, -1);

    sub_1C5C8F8BC(v89, v88);
  }

  else
  {
    sub_1C5C8F8BC(v89, v88);
  }

  (*(v94 + 8))(v6, v3);
  return v14;
}