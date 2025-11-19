uint64_t sub_1C4572C08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4572B44();
  *a2 = result;
  return result;
}

unint64_t sub_1C4572C38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4572B90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4572C68()
{
  result = qword_1EC0B8470;
  if (!qword_1EC0B8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8470);
  }

  return result;
}

void sub_1C4572D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v36;
  v30 = *(v36 + 16);
  v31 = *(v36 + 24) >> 1;
  v32 = v30 + 1;
  if (v31 <= v30)
  {
    sub_1C44CD9C0();
    v29 = v36;
    v31 = *(v36 + 24) >> 1;
  }

  *(v29 + 16) = v32;
  v33 = v29 + 16 * v30;
  *(v33 + 32) = 0xD000000000000022;
  *(v33 + 40) = 0x80000001C4F89D90;
  v34 = v30 + 2;
  if (v31 <= v32)
  {
    sub_1C44CD9C0();
    v29 = v36;
  }

  *(v29 + 16) = v34;
  v35 = v29 + 16 * v32;
  *(v35 + 32) = 0xD000000000000016;
  *(v35 + 40) = 0x80000001C4F89DC0;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4572E34()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  v2 = swift_allocObject();
  sub_1C4572ED8(v1, sub_1C455B64C, 0);
  return v2;
}

void *sub_1C4572ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_1C4F01D98();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4F01D58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v11 = sub_1C4F00D88();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v3[5] = 0x404E000000000000;
  sub_1C4461BB8(0, &qword_1EDDFA4A0, 0x1E69E9610);
  sub_1C4F00D78();
  sub_1C4573DBC(&qword_1EDDF0418, 255, MEMORY[0x1E69E8030]);
  sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
  sub_1C4573E04();
  sub_1C4F020C8();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v14);
  v3[6] = sub_1C4F01DC8();
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = a1;
  return v3;
}

uint64_t sub_1C4573130(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for ActivityInterval();
  v2[28] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45731C4, 0, 0);
}

uint64_t sub_1C45731C4()
{
  sub_1C43FBCD4();
  v1 = *(v0[27] + 32);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1C4573260;
  v3 = v0[29];
  v4 = v0[26];

  return sub_1C4A3E4A8();
}

uint64_t sub_1C4573260()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4573358, 0, 0);
}

uint64_t sub_1C4573358()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1C4F00F28();
  v5 = v2 + *(v1 + 20);
  result = sub_1C4EF9B78();
  v8 = v7 / 60.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  *(v0 + 40) = MEMORY[0x1E69E6530];
  *(v0 + 16) = v8;
  sub_1C44482AC((v0 + 16), (v0 + 48));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46601FC();
  if (*(v9 + *(v10 + 24)))
  {
    if (*(v9 + *(v10 + 24)) == 1)
    {
      v11 = "motion_state_unknown";
      v12 = 0xD000000000000017;
    }

    else
    {
      v11 = "motion_state_stationary";
      v12 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0xD000000000000014;
    v11 = "raph";
  }

  *(v0 + 104) = v3;
  *(v0 + 80) = v12;
  *(v0 + 88) = v11 | 0x8000000000000000;
  sub_1C44482AC((v0 + 80), (v0 + 112));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46601FC();
  v13 = v4;
  sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
  result = sub_1C4F02538();
  v14 = result;
  v15 = 0;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v35 = result + 64;
  v36 = v13;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_18:
      v24 = v21 | (v15 << 6);
      v25 = (*(v36 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      sub_1C442B870(*(v36 + 56) + 32 * v24, v0 + 144);
      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C442B870(v0 + 144, v0 + 176);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = sub_1C4C0BF5C((v0 + 176));
      if (!v28)
      {
        v28 = [objc_opt_self() undefinedFeatureValueWithType_];
      }

      v29 = v28;
      result = sub_1C440962C((v0 + 144));
      *(v35 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = (v14[6] + 16 * v24);
      *v30 = v26;
      v30[1] = v27;
      *(v14[7] + 8 * v24) = v29;
      v31 = v14[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v14[2] = v33;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_13:
  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v15 >= v20)
    {
      break;
    }

    v23 = *(v16 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_18;
    }
  }

  sub_1C4573D60(*(v0 + 232));

  v34 = *(v0 + 8);

  return v34(v14);
}

uint64_t sub_1C4573704@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C4573DBC(&qword_1EC0B8490, a1, type metadata accessor for ActivityIntervalSignal);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4573784()
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);

  return sub_1C4F00F28();
}

uint64_t sub_1C45737DC()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C457386C;

  return sub_1C4573130(v2);
}

uint64_t sub_1C457386C()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

id sub_1C4573964(uint64_t a1, uint64_t a2)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C4F00F28();
  v4 = sub_1C44F9274(a1);

  if (!v4)
  {
    v5 = a1 == 0xD000000000000022 && 0x80000001C4F89D90 == a2;
    if (v5 || (sub_1C4F02938() & 1) != 0)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    v8 = a1 == 0xD000000000000016 && 0x80000001C4F89DC0 == a2;
    if (!v8 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

    return sub_1C4594E18();
  }

  return v4;
}

uint64_t sub_1C4573B24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1C4573B54()
{
  sub_1C4573B24();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4573BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C45737DC();
}

uint64_t sub_1C4573CB0(uint64_t a1, uint64_t a2)
{
  result = sub_1C4573DBC(&qword_1EC0B8478, a2, type metadata accessor for ActivityIntervalSignal);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4573D08(uint64_t a1, uint64_t a2)
{
  result = sub_1C4573DBC(&qword_1EC0B8480, a2, type metadata accessor for ActivityIntervalSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4573D60(uint64_t a1)
{
  v2 = type metadata accessor for ActivityInterval();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4573DBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C4573E04()
{
  result = qword_1EDDF0608;
  if (!qword_1EDDF0608)
  {
    sub_1C4572308(&qword_1EC0B8498, &qword_1C4F0CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0608);
  }

  return result;
}

unint64_t sub_1C4573E68()
{
  result = qword_1EC0B84A0;
  if (!qword_1EC0B84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B84A0);
  }

  return result;
}

uint64_t sub_1C4573EC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1C4573F1C();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4573F1C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C45751C8(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4573F6C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1C4573FCC(v0);
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4573FCC(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_ekEventSourceAllowed) == 1)
  {
    return sub_1C457412C();
  }

  sub_1C4F00198();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "Siri Toggle: Pipeline is blocked from sourcing EKEvents for activity inference", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C457412C()
{
  v1 = v0;
  v2 = sub_1C4F00978();
  sub_1C43FCE64();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00198();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C43F8000, v10, v11, "Query for events from EKEventStore", v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  (*(v4 + 8))(v9, v2);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v14 = *(v1 + 120);
  v15 = sub_1C4EF9BF8();
  v16 = sub_1C4EF9BF8();
  v17 = [v14 predicateForEventsWithStartDate:v15 endDate:v16 calendars:0];

  v18 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C4576388;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1C4576390;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4575BB0;
  aBlock[3] = &unk_1F43E04E0;
  v20 = _Block_copy(aBlock);

  [v14 enumerateEventsMatchingPredicate:v17 usingBlock:v20];

  _Block_release(v20);
  swift_beginAccess();
  v21 = *(v13 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v21;
}

uint64_t sub_1C45743E8()
{
  *(v1 + 16) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4574410()
{
  if (*(*(v0 + 16) + 32))
  {
    sub_1C43FBCF0();
    v6 = v1;
    v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v6(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    v4[1] = sub_1C45744E4;
    v5 = *(v0 + 16);

    return sub_1C4574648();
  }
}

uint64_t sub_1C45744E4()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 24);
  v7 = *v0;
  *(*v0 + 32) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C45745D8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v3 = *(v0 + 32);
  sub_1C43FBCF0();

  return v4();
}

uint64_t sub_1C4574648()
{
  sub_1C43FBCD4();
  v1[7] = v0;
  v2 = sub_1C4F00978();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45746FC()
{
  v1 = v0[7];
  v2 = sub_1C4573EC0();
  v27 = MEMORY[0x1E69E7CC0];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C442E860(v4, (v0 + 2));
      v6 = v0[5];
      v7 = v0[6];
      sub_1C4409678(v0 + 2, v6);
      v8 = (*(v7 + 72))(v6, v7);
      v9 = sub_1C440962C(v0 + 2);
      if (v8)
      {
        MEMORY[0x1C6940330](v9);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();
        v5 = v27;
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[11] = v5;
  v10 = v0[10];
  sub_1C4F00198();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Query for transactions from payment service", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];

  (*(v15 + 8))(v14, v16);
  v18 = *(v17 + 13);
  v19 = *(v17 + 14);
  sub_1C4409678(v17 + 10, v18);
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_startDate;
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_endDate;
  v22 = *(v19 + 8);
  v26 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[12] = v24;
  *v24 = v0;
  v24[1] = sub_1C45749D8;

  return v26(v5, &v17[v20], &v17[v21], v18, v19);
}

uint64_t sub_1C45749D8(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;

  if (!a1)
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v6(a1);
}

char *sub_1C4574B20(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, char a6)
{
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_startDate;
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v13);
  v15 = *(v14 + 32);
  v15(&v6[v12], a1, v13);
  v15(&v6[OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_endDate], a2, v13);
  sub_1C441D670(a4, (v6 + 40));
  sub_1C441D670(a5, (v6 + 80));
  *(v6 + 15) = a3;
  v6[OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_ekEventSourceAllowed] = a6;
  return v6;
}

uint64_t sub_1C4574C14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = a6;
  v40 = a4;
  v11 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = *(v13 + 16);
  v38 = a1;
  v21 = a1;
  v22 = a2;
  v20(&v37 - v18, v21, v11);
  v20(v6, a2, v11);
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  sub_1C445FFF0(v40, &v43, &unk_1EC0B84C8, &qword_1C4F0CE10);
  if (v44)
  {
    sub_1C441D670(&v43, &v46);
    v24 = a3;
  }

  else
  {
    v25 = v23;
    v26 = objc_allocWithZone(MEMORY[0x1E69B8A58]);
    v27 = a3;
    v28 = [v26 init];
    v47 = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
    v48 = &off_1F43F72C0;
    *&v46 = v28;
    v23 = v25;
    if (v44)
    {
      sub_1C4420C3C(&v43, &unk_1EC0B84C8, &qword_1C4F0CE10);
    }
  }

  sub_1C445FFF0(a5, &v41, &qword_1EC0B84D8, &qword_1C4F0CE18);
  if (v42)
  {

    sub_1C4420C3C(a5, &qword_1EC0B84D8, &qword_1C4F0CE18);
    sub_1C4420C3C(v40, &unk_1EC0B84C8, &qword_1C4F0CE10);
    v29 = *(v13 + 8);
    v29(v22, v11);
    v29(v38, v11);
    sub_1C441D670(&v41, &v43);
  }

  else
  {
    v30 = v23;
    v31 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v44 = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
    v45 = &off_1F43F7318;

    *&v43 = v31;
    v23 = v30;
    sub_1C4420C3C(a5, &qword_1EC0B84D8, &qword_1C4F0CE18);
    sub_1C4420C3C(v40, &unk_1EC0B84C8, &qword_1C4F0CE10);
    v32 = *(v13 + 8);
    v32(v22, v11);
    v32(v38, v11);
    if (v42)
    {
      sub_1C4420C3C(&v41, &qword_1EC0B84D8, &qword_1C4F0CE18);
    }
  }

  v33 = *(v37 + 48);
  v34 = *(v37 + 52);
  v35 = swift_allocObject();
  sub_1C4574B20(v19, v6, v23, &v46, &v43, v39 & 1);
  return v35;
}

uint64_t sub_1C4574FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1C440962C((v0 + 40));
  sub_1C440962C((v0 + 80));

  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_startDate;
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v7(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23ActivityModelDataSource_endDate, v5);
  return v0;
}

uint64_t sub_1C4575058()
{
  sub_1C4574FA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityModelDataSource()
{
  result = qword_1EDDF3958;
  if (!qword_1EDDF3958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4575104()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C45751C8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00198();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "Query for wallet passes from PassKit", v11, 2u);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = a1[8];
  v13 = a1[9];
  sub_1C4409678(a1 + 5, v12);
  v14 = (*(v13 + 8))(v12, v13);
  v19 = v14;
  v15 = [objc_allocWithZone(MEMORY[0x1E69B88E0]) init];
  if (v15)
  {
    if (sub_1C45763CC(v15))
    {
      sub_1C48114B8();
      v17 = v16;

      sub_1C49D35C0(v17);
      v14 = v19;
    }

    *a2 = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C45753A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[0] = a3;
  v22[1] = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  sub_1C4409678(a1, v19);
  (*(v18 + 8))(v19, v18);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    result = sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    return result;
  }

  (*(v12 + 32))(v17, v9, v10);
  if (sub_1C4EF9C18())
  {
    result = (*(v12 + 8))(v17, v10);
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v21 = sub_1C4EF9C08();
  result = (*(v12 + 8))(v17, v10);
  if (v21)
  {
    goto LABEL_6;
  }

  return sub_1C442E860(a1, a4);
}

uint64_t sub_1C45755C0()
{
  sub_1C43FBCD4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C4EF9CD8();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1C45756B4;

  return sub_1C45743E8();
}

uint64_t sub_1C45756B4()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 64);
  v7 = *v0;
  *(*v0 + 72) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C45757A8()
{
  v1 = v0[9];
  v2 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1C4428DA0();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v0[9];
    v7 = v0[5];
    v30 = v6 + 32;
    v31 = (v7 + 32);
    v32 = v6 & 0xC000000000000001;
    v8 = (v7 + 8);
    do
    {
      if (v32)
      {
        v9 = MEMORY[0x1C6940F90](v5, v0[9]);
      }

      else
      {
        v9 = *(v30 + 8 * v5);
      }

      v10 = v9;
      v11 = [v9 transactionDate];
      if (v11)
      {
        v12 = v11;
        v14 = v0[6];
        v13 = v0[7];
        v15 = v0[4];
        sub_1C4EF9C78();

        (*v31)(v13, v14, v15);
        v16 = [v10 merchant];
        if (v16 && (v17 = v0[7], v18 = v0[2], v16, (sub_1C4EF9C08() & 1) != 0) && (v19 = v0[7], v20 = v0[3], (sub_1C4EF9C18() & 1) != 0))
        {
          v21 = v10;
          MEMORY[0x1C6940330]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          v22 = v0[7];
          v23 = v0[4];
          sub_1C4F01748();

          (*v8)(v22, v23);
          v2 = v33;
        }

        else
        {
          v24 = v0[7];
          v25 = v0[4];

          (*v8)(v24, v25);
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v4 != v5);
  }

  v26 = v0[9];
  v28 = v0[6];
  v27 = v0[7];

  sub_1C43FBCF0();

  return v29(v2);
}

void sub_1C4575A00(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E6999318];
  v6 = sub_1C4F01138();
  if (sub_1C479D6D8(v6, v7, v4) && (sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) != 0))
  {

    swift_beginAccess();
    MEMORY[0x1C6940330](v4);
    sub_1C4427EF0(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Could not get suggested event meta data from event object", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }
}

void sub_1C4575BB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1C4575C24(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4412BA8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v13 = sub_1C43FBCE0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = sub_1C4573F6C();
  v19 = sub_1C4EF9CD8();
  sub_1C4575ED0();
  result = sub_1C4F01088();
  if (result)
  {
    sub_1C43FCE64();
    v22 = v21;
    v33 = v18;
    v24 = *(v23 + 16);
    v32 = v12;
    v24(v11, a1, v19);
    v24(&v11[*(v5 + 48)], a2, v19);
    sub_1C445FFF0(v11, v2, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v25 = *(v5 + 48);
    v26 = *(v22 + 32);
    v26(v17, v2, v19);
    v27 = *(v22 + 8);
    v27(v2 + v25, v19);
    sub_1C4575F28(v11, v2);
    v26(&v17[*(v32 + 36)], v2 + *(v5 + 48), v19);
    v28 = (v27)(v2, v19);
    MEMORY[0x1EEE9AC00](v28);
    *(&v31 - 2) = v17;
    sub_1C4B340D4();
    v30 = v29;
    sub_1C4420C3C(v17, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4575ED0()
{
  result = qword_1EDDFCD70;
  if (!qword_1EDDFCD70)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCD70);
  }

  return result;
}

uint64_t sub_1C4575F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4575F98(void **a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v40 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v17 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v19 = &v36 - v18;
  v20 = *a1;
  result = [v20 startDate];
  if (!result)
  {
    goto LABEL_9;
  }

  v22 = result;
  sub_1C4EF9C78();

  result = [v20 endDate];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v23 = result;
  sub_1C4EF9C78();

  v24 = sub_1C4575ED0();
  result = sub_1C4F01088();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v37 = v14;
  v38 = v16;
  v25 = v10;
  v39 = v24;
  v26 = *(v10 + 16);
  v26(v8, v16, v9);
  v26(&v8[*(v3 + 48)], v14, v9);
  v27 = v41;
  sub_1C445FFF0(v8, v41, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v28 = *(v3 + 48);
  v29 = *(v25 + 32);
  v29(v19, v27, v9);
  v43 = v19;
  v30 = *(v25 + 8);
  v30(v27 + v28, v9);
  sub_1C4575F28(v8, v27);
  v31 = *(v3 + 48);
  v32 = v40;
  v29(&v43[*(v40 + 36)], v27 + v31, v9);
  v30(v27, v9);
  v30(v37, v9);
  v30(v38, v9);
  v33 = v43;
  v34 = *(v32 + 36);
  if (sub_1C4F01068())
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_1C4F01068() ^ 1;
  }

  sub_1C4420C3C(v33, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  return v35 & 1;
}

uint64_t sub_1C4576390(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1C45763CC(void *a1)
{
  v2 = [a1 expiredSectionPasses];

  if (!v2)
  {
    return 0;
  }

  sub_1C4461BB8(0, &qword_1EDDDB868, 0x1E69B8A20);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4576444(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C45764C4(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8540, &qword_1C4F0D008);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4475FAC();
  sub_1C4F02BF8();
  sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
  sub_1C4473454(&qword_1EDDFA5E0);
  sub_1C4F027E8();
  v9 = *(v4 + 8);
  v10 = sub_1C43FE99C();
  return v11(v10);
}

uint64_t sub_1C4576634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4576444(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4576660(uint64_t a1)
{
  v2 = sub_1C4475FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C457669C(uint64_t a1)
{
  v2 = sub_1C4475FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45766F4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C457672C()
{
  type metadata accessor for AddressLinkingModel.AddressLinkingModelCache();
  v0 = swift_allocObject();
  result = sub_1C4F00F28();
  *(v0 + 16) = result;
  qword_1EDE2CD30 = v0;
  return result;
}

uint64_t sub_1C457678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v36 = a4;
  v11 = *(*(sub_1C456902C(&qword_1EC0B84F8, &unk_1C4F57A40) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v38 = sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
  v15 = sub_1C43FCDF8(v38);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  if (a3)
  {
    v37 = v17;
    v26 = v7[2];
    v27 = v7[3];

    v34 = a1;
    v35 = a2;
    sub_1C4576A44(v28, a1, a2, v26, v27, v14);
    if (v6)
    {

      sub_1C440BAA8(v14, 1, 1, v38);
      v6 = 0;
    }

    else
    {

      v29 = v38;
      if (sub_1C44157D4(v14, 1, v38) != 1)
      {
        v33 = *(v37 + 32);
        sub_1C43FE9A8();
        v33();
        v32 = v36;
        (v33)(v36, v25, v29);
        return sub_1C440BAA8(v32, 0, 1, v29);
      }
    }

    v17 = v37;
    sub_1C4423A0C(v14, &qword_1EC0B84F8, &unk_1C4F57A40);
    a1 = v34;
    a2 = v35;
  }

  v30 = v7[13];
  result = sub_1C4EFE258();
  if (v6)
  {
    return result;
  }

  sub_1C4576C10(v22, a1, a2, a3);
  v32 = v36;
  v29 = v38;
  (*(v17 + 32))(v36, v22, v38);
  return sub_1C440BAA8(v32, 0, 1, v29);
}

void sub_1C4576A44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v12 = sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
  sub_1C43FCDF8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  sub_1C486E5B8(a4, a5, a2, a3, a1, v24);
  if (!v6)
  {
    v20 = v25;
    if (*(&v24[0] + 1))
    {
      v21 = sub_1C4EF96B8();
      sub_1C44099C4(v21);
      sub_1C4EF96A8();
      sub_1C4577634(&qword_1EC0B8500);
      sub_1C43FCE84();
      sub_1C4EF9698();
      sub_1C4423A0C(v24, &qword_1EC0B8508, &unk_1C4F0CF60);

      (*(v14 + 32))(v20, v19, v12);
      v22 = v20;
      v23 = 0;
    }

    else
    {
      v22 = v25;
      v23 = 1;
    }

    sub_1C440BAA8(v22, v23, 1, v12);
  }
}

void sub_1C4576C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = sub_1C4EF96F8();
    sub_1C44099C4(v8);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF96E8();
    sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
    sub_1C4577634(&qword_1EC0B8510);
    v9 = sub_1C4EF96D8();
    if (v5)
    {
    }

    else
    {
      v11 = v9;
      v12 = v10;

      sub_1C45776A0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB6C8();

      sub_1C4434000(v11, v12);
    }
  }
}

float sub_1C4576D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a5;
  v6 = sub_1C4F00978();
  v7 = sub_1C43FCDF8(v6);
  v108 = v8;
  v109 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v107 = v12 - v11;
  v13 = sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
  v14 = sub_1C43FCDF8(v13);
  v112 = v15;
  v113 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v111 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v105 - v21;
  v22 = sub_1C456902C(&qword_1EC0B84F8, &unk_1C4F57A40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  sub_1C43FBD08();
  v110 = v24 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v105 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v116 = &v105 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v105 - v32;
  v33 = sub_1C4F00FF8();
  v35 = v34;
  v36 = sub_1C4F00FF8();
  v38 = v37;
  v122 = 0;
  v123 = 0xE000000000000000;
  v39 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v39 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v118 = v33;
  v119 = v35;
  v120 = 0;
  v121 = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  while (1)
  {
    v40 = sub_1C4F01348();
    if (!v41)
    {
      break;
    }

    v42 = v40;
    v43 = v41;
    if ((sub_1C4F01008() & 1) == 0)
    {
      sub_1C43FE99C();
      if (sub_1C4F01018() & 1) != 0 || (v42 == 32 ? (v44 = v43 == 0xE100000000000000) : (v44 = 0), v44 || (sub_1C43FE99C(), (sub_1C4F02938()) || (sub_1C43FE99C(), (sub_1C4F01028())))
      {
        v45 = sub_1C43FE99C();
        MEMORY[0x1C6940000](v45);
      }
    }
  }

  v47 = v122;
  v46 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v122 = 0;
  v123 = 0xE000000000000000;
  v48 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v48 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v118 = v36;
  v119 = v38;
  v120 = 0;
  v121 = v48;
  while (1)
  {
    v49 = sub_1C4F01348();
    if (!v50)
    {
      break;
    }

    v51 = v49;
    v52 = v50;
    if ((sub_1C4F01008() & 1) == 0)
    {
      sub_1C43FCE84();
      if (sub_1C4F01018() & 1) != 0 || (v51 == 32 ? (v53 = v52 == 0xE100000000000000) : (v53 = 0), v53 || (sub_1C43FCE84(), (sub_1C4F02938()) || (sub_1C43FCE84(), (sub_1C4F01028())))
      {
        v54 = sub_1C43FCE84();
        MEMORY[0x1C6940000](v54);
      }
    }
  }

  v56 = v122;
  v55 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (v47 == v56 && v46 == v55)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return 1.0;
  }

  sub_1C43FE99C();
  v58 = sub_1C4F02938();

  if (v58)
  {

    return 1.0;
  }

  v60 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v60 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    goto LABEL_50;
  }

  v61 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v61 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
LABEL_50:

    return 0.0;
  }

  v62 = objc_autoreleasePoolPush();
  v63 = v117;
  v64 = sub_1C43FE99C();
  sub_1C457678C(v64, v65, v115, v66);
  if (v5)
  {

    v67 = v63;
    v68 = v113;
    sub_1C440BAA8(v67, 1, 1, v113);
  }

  else
  {
    v68 = v113;
  }

  objc_autoreleasePoolPop(v62);
  v106 = objc_autoreleasePoolPush();
  v69 = sub_1C43FCE84();
  sub_1C457678C(v69, v70, v115, v71);
  v72 = v114;
  objc_autoreleasePoolPop(v106);
  sub_1C45775C4(v117, v29);
  if (sub_1C44157D4(v29, 1, v68) == 1)
  {
    sub_1C440BADC();
    sub_1C4423A0C(v73, v74, v75);
    sub_1C440BADC();
    sub_1C4423A0C(v76, v77, v78);
    sub_1C440BADC();
LABEL_49:
    sub_1C4423A0C(v79, v80, v81);
    goto LABEL_50;
  }

  v82 = v112;
  v83 = *(v112 + 32);
  v83(v72, v29, v68);
  v84 = v110;
  sub_1C45775C4(v116, v110);
  if (sub_1C44157D4(v84, 1, v68) == 1)
  {
    (*(v82 + 8))(v114, v68);
    sub_1C43FE9A8();
    sub_1C4423A0C(v85, v86, v87);
    sub_1C43FE9A8();
    sub_1C4423A0C(v88, v89, v90);
    sub_1C43FE9A8();
    goto LABEL_49;
  }

  v83(v111, v84, v68);
  v92 = v114;
  v59 = sub_1C4A8EFB4();
  v93 = v107;
  sub_1C4F00158();
  v94 = sub_1C4F00968();
  v95 = sub_1C4F01CC8();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 134217984;
    *(v96 + 4) = v59;
    _os_log_impl(&dword_1C43F8000, v94, v95, "ALM - cosine similarity: %f", v96, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v108 + 8))(v93, v109);
  v97 = *(v82 + 8);
  v98 = v113;
  v97(v111, v113);
  v97(v92, v98);
  sub_1C440BADC();
  sub_1C4423A0C(v99, v100, v101);
  sub_1C440BADC();
  sub_1C4423A0C(v102, v103, v104);

  return v59;
}

void *sub_1C45774CC()
{
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[15];

  return v0;
}

uint64_t sub_1C4577514()
{
  sub_1C45774CC();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MotionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C45775C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84F8, &unk_1C4F57A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4577634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B84F0, &unk_1C4F0CF50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C45776A0()
{
  result = qword_1EC0B8518;
  if (!qword_1EC0B8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8518);
  }

  return result;
}

uint64_t sub_1C45776F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4577760()
{
  result = qword_1EC0B8548;
  if (!qword_1EC0B8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8548);
  }

  return result;
}

unint64_t sub_1C45777B8()
{
  result = qword_1EDDED1F8;
  if (!qword_1EDDED1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED1F8);
  }

  return result;
}

unint64_t sub_1C4577810()
{
  result = qword_1EDDED200;
  if (!qword_1EDDED200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED200);
  }

  return result;
}

uint64_t sub_1C4577890(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown event type found in BMClockAlarmEventType - %d", v5, 8u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    return 0;
  }

  return v1;
}

unint64_t sub_1C4577988(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1C45779BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4577988(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C45779E8(unsigned __int8 a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x7079546D72616C61;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t _s24IntelligencePlatformCore21FeatureProviderChangeV4time10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C4577B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4EF9CD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1C4577B94()
{
  v0 = [BiomeLibrary() Clock];
  swift_unknownObjectRelease();
  v1 = [v0 Alarm];
  swift_unknownObjectRelease();
  sub_1C457FE5C();
}

uint64_t type metadata accessor for AlarmEvent()
{
  result = qword_1EDDED298;
  if (!qword_1EDDED298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4577CCC()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4577D58()
{
  result = qword_1EDDDE930;
  if (!qword_1EDDDE930)
  {
    sub_1C4572308(&qword_1EC0B8550, &qword_1C4F0D1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE930);
  }

  return result;
}

unint64_t sub_1C4577DBC()
{
  result = qword_1EDDF0540;
  if (!qword_1EDDF0540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0540);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackLogDatabase.FeedbackLogDatabaseEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1C4577E88(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4577F68()
{
  result = qword_1EC0B8558;
  if (!qword_1EC0B8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8558);
  }

  return result;
}

uint64_t sub_1C4577FC4(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = objc_autoreleasePoolPush();
      v15[0] = v7;
      v15[1] = v8;
      sub_1C4415EA8();
      v10 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v9);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44869B4(v15, v13, v14);

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      ++v4;
    }

    while (v4 != v3);
    return v16;
  }

  return result;
}

void sub_1C45780EC()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4415F04();
  v9 = sub_1C4EFF1C8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C44D9DFC(v2, v0);
  if (sub_1C44157D4(v0, 1, v9) != 1)
  {
    v47 = v12;
    v48 = v9;
    (*(v12 + 32))(v17, v0, v9);
    v24 = MEMORY[0x1E69E7CC0];
    v46 = type metadata accessor for PHPersonStructs.Person(0);
    if (*(v4 + *(v46 + 36)))
    {
      v24 = *(v4 + *(v46 + 36));
    }

    v25 = *(v24 + 16);
    if (v25)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = (v24 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF168();
        v29 = sub_1C4EFF198();

        sub_1C4578590();
        if (v30)
        {
          sub_1C49D35E8(v30);
          sub_1C4EFF168();
          v31 = sub_1C4577FC4(v29);

          v32 = sub_1C4579914(v31, v29);
          sub_1C44FE820(v32);
          sub_1C43FBD30();
          sub_1C4578590();
          v34 = v33;

          if (v34)
          {
            sub_1C49D35E8(v34);
          }
        }

        else
        {
        }

        v26 += 2;
        --v25;
      }

      while (v25);
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v35 = (v4 + *(v46 + 60));
    v36 = v35[1];
    if (!v36)
    {
      goto LABEL_30;
    }

    v37 = *v35;
    v38 = 7627107;
    v39 = *v35 == 7627107 && v36 == 0xE300000000000000;
    if (!v39 && (sub_1C443307C() & 1) == 0)
    {
      v44 = v37 == 6778724 && v36 == 0xE300000000000000;
      if (v44 || (sub_1C443307C() & 1) != 0)
      {
        v38 = 6778724;
      }

      else
      {
        v38 = 7628144;
        v45 = v37 == 7628144 && v36 == 0xE300000000000000;
        if (!v45 && (sub_1C443307C() & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = v38;
    *(inited + 40) = 0xE300000000000000;
    sub_1C4578590();
    v42 = v41;
    swift_setDeallocating();
    sub_1C44DEE40();
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1C49D35E8(v43);
LABEL_30:
    (*(v47 + 8))(v17, v48);
    goto LABEL_31;
  }

  sub_1C4420C3C(v0, &qword_1EC0C2A90, &unk_1C4F16D30);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v18 = sub_1C4F00978();
  sub_1C43FCEE8(v18, qword_1EDE2DE10);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v20))
  {
    v21 = sub_1C43FCED0();
    sub_1C43FBD24(v21);
    sub_1C440BAE8(&dword_1C43F8000, v22, v23, "Tokenizer was not intialized for current system locale. Not emitting aliases.");
    sub_1C43FE9D4();
  }

LABEL_31:
  sub_1C43FE9F0();
}

void sub_1C4578590()
{
  sub_1C43FBD3C();
  v81 = v1;
  v82 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PHPersonStructs.EntityAliasRelationshipType(0);
  v8 = sub_1C43FCDF8(v7);
  v80 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44116E8(v12, v78);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C44144E4();
  v14 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v20 = sub_1C4EFD548();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = (v27 - v26);
  v29 = (v6 + *(type metadata accessor for PHPersonStructs.Person(0) + 60));
  v30 = v29[1];
  if (v30)
  {
    v84 = v6;
    v31 = *v29;
    v32 = *v29 == 7627107 && v30 == 0xE300000000000000;
    if (v32 || (sub_1C440CFD4() & 1) != 0)
    {
      sub_1C4EFD358();
LABEL_27:
      v79 = sub_1C4EFD2F8();
      v83 = v41;
      (*(v23 + 8))(v28, v20);
      v42 = *(v4 + 16);
      if (v42)
      {
        v84 = sub_1C4EFEEF8();
        v43 = (v4 + 40);
        v44 = MEMORY[0x1E69E7CC0];
        v78 = xmmword_1C4F0D2B0;
        do
        {
          v46 = *(v43 - 1);
          v45 = *v43;
          v47 = sub_1C440571C();
          sub_1C440BAA8(v47, v48, v49, v84);
          v50 = v7[5];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFD278();
          v51 = v7[6];
          if (qword_1EDDFD0A8 != -1)
          {
            sub_1C43FCE90();
            swift_once();
          }

          v52 = type metadata accessor for Source();
          sub_1C442B738(v52, qword_1EDDFD0B0);
          sub_1C4406464();
          sub_1C44908D8(v53, v0 + v51, v54);
          v55 = v0 + v7[7];
          sub_1C4EFE3A8();
          v56 = (v0 + v7[8]);
          *v56 = 0;
          v56[1] = 0;
          v57 = v0 + v7[9];
          sub_1C4EFE4A8();
          v58 = (v0 + v7[10]);
          *v58 = 0;
          v58[1] = 0;
          v59 = v0 + v7[11];
          sub_1C4EFE658();
          sub_1C441B714();
          sub_1C4408540();
          if (v61)
          {
            *v56 = v46;
            v56[1] = v45;
            v62 = v82;
            *v58 = v81;
            v58[1] = v62;
            v63 = v83;
            *v50 = v79;
            v50[1] = v63;
            *v60 = v78;
            sub_1C4416CC0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = *(v44 + 16);
              v69 = sub_1C43FCEC0();
              sub_1C458A5E4(v69, v70, v71, v44);
              v44 = v72;
            }

            v65 = *(v44 + 16);
            v64 = *(v44 + 24);
            if (v65 >= v64 >> 1)
            {
              v73 = sub_1C4404AA4(v64);
              sub_1C458A5E4(v73, v74, v75, v76);
              v44 = v77;
            }

            *(v44 + 16) = v65 + 1;
            sub_1C442FA84();
            sub_1C440DD58(v66, v67);
          }

          else
          {
          }

          sub_1C441F2FC();
          v43 += 2;
          --v42;
        }

        while (v42);
      }

      goto LABEL_40;
    }

    v33 = v31 == 6778724 && v30 == 0xE300000000000000;
    if (v33 || (sub_1C440CFD4() & 1) != 0)
    {
      sub_1C4EFD368();
      goto LABEL_27;
    }

    v34 = v31 == 7628144 && v30 == 0xE300000000000000;
    if (v34 || (sub_1C440CFD4() & 1) != 0)
    {
      sub_1C4EFD388();
      goto LABEL_27;
    }
  }

  sub_1C4EFF038();
  if (sub_1C44157D4(v19, 1, v20) != 1)
  {
    v28 = v19;
    goto LABEL_27;
  }

  sub_1C4420C3C(v19, &qword_1EC0B8568, &unk_1C4F319B0);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v35 = sub_1C4F00978();
  sub_1C43FCEE8(v35, qword_1EDE2DE10);
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v37))
  {
    v38 = sub_1C43FCED0();
    sub_1C43FBD24(v38);
    sub_1C440BAE8(&dword_1C43F8000, v39, v40, "Entity Identifier did not encode type. Not emitting entity alias.");
    sub_1C43FE9D4();
  }

LABEL_40:
  sub_1C43FE9F0();
}

void sub_1C4578A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 *a23)
{
  sub_1C43FBD3C();
  v25 = v24;
  v140 = v26;
  v141 = v27;
  v132 = v28;
  v133 = v29;
  v130 = v30;
  v131 = v31;
  v135 = v32;
  v139 = type metadata accessor for EntityTriple(0);
  v33 = sub_1C43FCDF8(v139);
  v134 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v137 = v38 - v37;
  v138 = type metadata accessor for TranslatedEntityTriple(0);
  v39 = sub_1C43FCDF8(v138);
  v136 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v46 = sub_1C456902C(&qword_1EC0B8560, &qword_1C4F0D2C8);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  v50 = sub_1C4415F04();
  v51 = type metadata accessor for PHPersonStructs.Person(v50);
  v52 = sub_1C43FBCE0(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBCC4();
  v57 = v56 - v55;
  v58 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v58);
  v60 = *(v59 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v127 - v62;
  v64 = sub_1C4EFF1C8();
  v65 = sub_1C43FCDF8(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBCC4();
  v72 = v71 - v70;
  v73 = *a23;
  sub_1C44D9DFC(v25, v63);
  if (sub_1C44157D4(v63, 1, v64) == 1)
  {
    sub_1C4420C3C(v63, &qword_1EC0C2A90, &unk_1C4F16D30);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v74 = sub_1C4F00978();
    sub_1C43FCEE8(v74, qword_1EDE2DE10);
    v75 = sub_1C4F00968();
    v76 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v76))
    {
      v77 = sub_1C43FCED0();
      sub_1C43FBD24(v77);
      sub_1C440BAE8(&dword_1C43F8000, v78, v79, "Tokenizer was not intialized for current system locale. Not emitting aliases.");
      sub_1C43FE9D4();
    }

    v141 = MEMORY[0x1E69E7CC0];
LABEL_8:
    sub_1C43FE9F0();
    return;
  }

  HIDWORD(v128) = v73;
  (*(v67 + 32))(v72, v63, v64);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4E3A42C(a21, a22, v80, v81, v82, v83, v84, v85, v127, v128, a21, v130, v131, v132, v133, v134, v135, v136, v137, v138);
  sub_1C440BAA8(v23, 0, 1, v51);
  sub_1C44DBBD8(v23, v57, type metadata accessor for PHPersonStructs.Person);
  v144 = MEMORY[0x1E69E7CC0];
  sub_1C4EFF168();
  v127 = v72;
  v86 = sub_1C4EFF198();

  v142 = 0x696D616E6F747561;
  v143 = 0xEB000000005F676ELL;
  MEMORY[0x1C6940010](v130, v131);
  v87 = sub_1C4579320(v86, v141, v142, v143, v132, v133);

  if (v87)
  {
    sub_1C49D35E8(v87);
  }

  v88 = v144;
  v89 = *(v51 + 68);
  v90 = *(v57 + v89);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *(v57 + v89) = v88;
  sub_1C4E3FC4C();
  v91 = *(v57 + v89);
  if (v91)
  {

    MEMORY[0x1EEE9AC00](v92);
    *(&v127 - 4) = v129;
    *(&v127 - 3) = a22;
    *(&v127 - 2) = v141;
    *(&v127 - 8) = BYTE4(v128);
    sub_1C4723B88(sub_1C45798F0, (&v127 - 6), v91);
    v133 = v93;
    v94 = *(v93 + 16);
    if (v94)
    {
      v130 = v57;
      v131 = v67;
      v132 = v64;
      v142 = MEMORY[0x1E69E7CC0];
      sub_1C44E57E8();
      v141 = v142;
      v95 = v133 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v135 = *(v134 + 72);
      v96 = v139;
      do
      {
        v140 = v94;
        v97 = v137;
        sub_1C44908D8(v95, v137, type metadata accessor for EntityTriple);
        v98 = sub_1C4EFF0C8();
        sub_1C43FBCE0(v98);
        (*(v99 + 16))(v45, v97);
        v100 = v96[5];
        v101 = v45;
        v102 = v138;
        v103 = v138[5];
        v104 = sub_1C4EFEEF8();
        sub_1C43FBCE0(v104);
        v106 = *(v105 + 16);
        v106(v101 + v103, v97 + v100, v104);
        v107 = v96[6];
        v108 = v102[6];
        v109 = sub_1C4EFF8A8();
        sub_1C43FBCE0(v109);
        (*(v110 + 16))(v101 + v108, v97 + v107);
        v106(v101 + v102[7], v97 + v96[7], v104);
        v111 = (v97 + v96[8]);
        v112 = *v111;
        v113 = v111[1];
        v114 = (v101 + v102[8]);
        *v114 = v112;
        v114[1] = v113;
        v115 = v96[9];
        v116 = v102[9];
        sub_1C4406464();
        sub_1C44908D8(v97 + v117, v101 + v118, v119);
        v120 = (v97 + v96[10]);
        v121 = *v120;
        v122 = v120[1];
        v123 = (v101 + v102[10]);
        *v123 = v121;
        v123[1] = v122;
        *(v101 + v102[11]) = *(v97 + v96[11]);
        LOBYTE(v106) = *(v97 + v96[12]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44DBCAC(v97, type metadata accessor for EntityTriple);
        v124 = v102[12];
        v45 = v101;
        *(v101 + v124) = v106;
        v142 = v141;
        v125 = *(v141 + 16);
        if (v125 >= *(v141 + 24) >> 1)
        {
          sub_1C44E57E8();
          v141 = v142;
        }

        v126 = v141;
        *(v141 + 16) = v125 + 1;
        sub_1C44DBBD8(v101, v126 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v125, type metadata accessor for TranslatedEntityTriple);
        v95 += v135;
        v94 = v140 - 1;
      }

      while (v140 != 1);
      (*(v131 + 8))(v127, v132);

      v57 = v130;
    }

    else
    {

      (*(v67 + 8))(v127, v64);
      v141 = MEMORY[0x1E69E7CC0];
    }

    sub_1C44DBCAC(v57, type metadata accessor for PHPersonStructs.Person);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1C457979C(void *a1@<X8>)
{
  sub_1C4E3ADE4();
  if (v1)
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
}

uint64_t sub_1C4579800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for PhaseStores() + 40));
  v5 = *(v4 + 16);

  sub_1C446B0A0();
  v7 = v6;

  if (!v3)
  {
    if (v7)
    {
      v9 = *(v4 + 24);

      v10 = sub_1C4598D48();

      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      if (v10 == 1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1C45798F0(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_1C457979C(a1);
}

void *sub_1C4579914(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v33 = a2;
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v7);
    v29 = v5;
    v30 = v28 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    v8 = sub_1C4501018(0, v5, v30);
    v31 = 0;
    v32 = v2;
    v9 = 0;
    v11 = *(v2 + 56);
    v2 += 56;
    v10 = v11;
    v12 = 1 << *(v2 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v6 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    while (v6)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = (*(v32 + 48) + 16 * v17);
      v19 = v18[1];
      v34[0] = *v18;
      v34[1] = v19;
      MEMORY[0x1EEE9AC00](v8);
      v28[-2] = v34;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C44CE068(sub_1C44CE790, &v28[-4], v33);

      if (!v20)
      {
        *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1C4A8D90C(v30, v29, v31, v32);
          v23 = v22;
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v6 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = sub_1C4579DA4(v26, v5, v2, v27);

  MEMORY[0x1C6942830](v26, -1, -1);
LABEL_17:
  swift_bridgeObjectRelease_n();
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_1C4579BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v22 = a2;
  v23 = result;
  v24 = 0;
  v25 = a3;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v26[0] = *v14;
    v26[1] = v15;
    MEMORY[0x1EEE9AC00](result);
    v21[2] = v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C44CE068(sub_1C4579E44, v21, v27);

    if (!v16)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v25;

        sub_1C4A8D90C(v23, v22, v24, v18);
        v20 = v19;

        return v20;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C4579DA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C4579BE4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t AmbientLightDistributionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AmbientLightDistributionProvider.init()();
  return v0;
}

uint64_t AmbientLightDistributionProvider.init()()
{
  v1 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v2 = [v1 AmbientLight];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  *(v0 + 24) = 0x404E000000000000;
  return v0;
}

uint64_t sub_1C4579F1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - v12;
  v57 = v2;
  v14 = *(v2 + 16);
  v15 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v17(v13, a1, v15);
  sub_1C440BAA8(v13, 0, 1, v15);
  v56 = a2;
  v17(v11, a2, v15);
  sub_1C440BAA8(v11, 0, 1, v15);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C440F1BC();
  v23 = sub_1C457A86C(v19, v20, v21, v22, 0);
  v24 = [v14 publisherWithOptions_];

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C4F00F28();
  v26 = (v25 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  v65 = nullsub_1;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C44405F8;
  v64 = &unk_1F43E0838;
  v29 = _Block_copy(&aBlock);
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v28;
  v30[4] = v25;
  v65 = sub_1C457A9A8;
  v66 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1C44405F8;
  v64 = &unk_1F43E0888;
  v31 = _Block_copy(&aBlock);

  v58 = v24;
  v32 = [v24 sinkWithCompletion:v29 receiveInput:v31];
  _Block_release(v31);
  _Block_release(v29);

  sub_1C440F1BC();
  swift_beginAccess();
  v33 = *(v27 + 16);
  if (v33 == 8 || (sub_1C440F1BC(), swift_beginAccess(), (*(v28 + 24) & 1) != 0))
  {
    v34 = 0;
LABEL_11:
    sub_1C440F1BC();
    swift_beginAccess();
    v52 = *(v25 + 16);

    v53 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v54 = sub_1C457DA58(v53);

    sub_1C44239FC(v34);
    return v54;
  }

  v35 = *(v28 + 16);
  v60 = v33;
  v36 = sub_1C4F02858();
  v38 = v37;
  sub_1C4EF9AD8();
  v40 = v39;
  swift_beginAccess();
  v41 = *v26;
  swift_isUniquelyReferenced_nonNull_native();
  v59 = *v26;
  v42 = v59;
  *v26 = 0x8000000000000000;
  sub_1C440DD80();
  v56 = v36;
  v44 = sub_1C445FAC0(v36, v38, v43);
  if (__OFADD__(*(v42 + 16), (v45 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v46 = v44;
    v47 = v45;
    sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
    if ((sub_1C4F02458() & 1) == 0)
    {
LABEL_8:
      v51 = v59;
      *v26 = v59;
      if ((v47 & 1) == 0)
      {
        sub_1C457DBD8(v46, v56, v38, v51);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      *(*(v51 + 56) + 8 * v46) = v40 - v35 + *(*(v51 + 56) + 8 * v46);
      swift_endAccess();

      v34 = sub_1C457EB40;
      goto LABEL_11;
    }

    sub_1C440DD80();
    v49 = sub_1C445FAC0(v56, v38, v48);
    if ((v47 & 1) == (v50 & 1))
    {
      v46 = v49;
      goto LABEL_8;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C457A480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C4585840(v8);
    swift_beginAccess();
    if (*(a2 + 16) == 8 || (swift_beginAccess(), (*(a3 + 24) & 1) != 0))
    {
      v11 = 0;
LABEL_20:
      swift_beginAccess();
      *(a2 + 16) = v10;
      [a1 timestamp];
      v31 = v30;

      swift_beginAccess();
      *(a3 + 16) = v31;
      *(a3 + 24) = 0;
      sub_1C44239FC(v11);
      return;
    }

    v15 = *(a3 + 16);
    v16 = sub_1C4F02858();
    v18 = v17;
    [a1 timestamp];
    v20 = v19;
    swift_beginAccess();
    v21 = *(a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v32 = v16;
    osloga = v18;
    v23 = sub_1C445FAC0(v16, v18, sub_1C445FB3C);
    if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v25 = v23;
      v26 = v24;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      if ((sub_1C4F02458() & 1) == 0)
      {
        v27 = osloga;
        goto LABEL_17;
      }

      v27 = osloga;
      v28 = sub_1C445FAC0(v32, osloga, sub_1C445FB3C);
      if ((v26 & 1) == (v29 & 1))
      {
        v25 = v28;
LABEL_17:
        *(a4 + 16) = v22;
        if ((v26 & 1) == 0)
        {
          sub_1C457DBD8(v25, v32, v27, v22);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        *(*(v22 + 56) + 8 * v25) = v20 - v15 + *(*(v22 + 56) + 8 * v25);
        swift_endAccess();

        v11 = sub_1C457EB40;
        goto LABEL_20;
      }
    }

    sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v13, "Unable to parse eventBody from read event in ambient light distribution provider", v14, 2u);
      MEMORY[0x1C6942830](v14, -1, -1);
    }
  }
}

uint64_t AmbientLightDistributionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1C457A86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1C4EF9CD8();
  v13 = 0;
  if (sub_1C44157D4(a1, 1, v12) != 1)
  {
    v13 = sub_1C4EF9BF8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_1C44157D4(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1C4EF9BF8();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

unint64_t sub_1C457A9B4()
{
  v1 = sub_1C442FAA0();
  v3 = sub_1C4811360(v1, v2);

  return sub_1C457BA94(v0 & 1, v3);
}

unint64_t sub_1C457A9F0()
{
  sub_1C442FAA0();
  v1 = sub_1C480EF6C();

  return sub_1C457B950(v0 & 1, v1);
}

unint64_t sub_1C457AA2C(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C480F47C();

  return sub_1C457BBE0(a1, v4);
}

unint64_t sub_1C457AA70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C4F02178();

  return sub_1C457BD54(a1, v5);
}

void sub_1C457AAB4()
{
  sub_1C43FFB60();
  sub_1C4EFDAF8();
  sub_1C4403D08(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457AB64()
{
  sub_1C43FFB60();
  sub_1C4EFEEF8();
  sub_1C4403D08(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

unint64_t sub_1C457AC14(unsigned __int8 a1)
{
  sub_1C443309C();
  MEMORY[0x1C69417F0](a1);
  v2 = sub_1C4F02B68();

  return sub_1C457BE18(a1, v2);
}

void sub_1C457AC78()
{
  sub_1C43FFB60();
  sub_1C4EFF8A8();
  sub_1C4403D08(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457AD28()
{
  sub_1C43FFB60();
  sub_1C4EFDAB8();
  sub_1C4403D08(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

unint64_t sub_1C457AE04(unsigned __int16 a1)
{
  sub_1C443309C();
  sub_1C4F02B28();
  v2 = sub_1C4F02B68();

  return sub_1C457C268(a1, v2);
}

unint64_t sub_1C457AE68()
{
  sub_1C440F19C();
  MEMORY[0x1C69417F0](*v0);
  v1 = *(type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0) + 20);
  sub_1C4EFDAB8();
  sub_1C4403D08(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
  sub_1C4F00FE8();
  sub_1C4F02B68();
  v2 = sub_1C4411720();

  return sub_1C457C2C8(v2, v3);
}

unint64_t sub_1C457AF20(unsigned __int16 a1)
{
  v3 = MEMORY[0x1C69417C0](*(v1 + 40), a1, 2);

  return sub_1C457C268(a1, v3);
}

unint64_t sub_1C457AF68()
{
  sub_1C440F19C();
  sub_1C45D5EBC();
  sub_1C4F02B68();
  v0 = sub_1C4411720();

  return sub_1C457C4F8(v0, v1);
}

void sub_1C457AFC0()
{
  sub_1C43FFB60();
  sub_1C4EFEFB8();
  sub_1C4403D08(&qword_1EDDEFF90, MEMORY[0x1E69A97D0]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457B070()
{
  sub_1C43FFB60();
  sub_1C4EFF428();
  sub_1C4403D08(&qword_1EDDEFF70, MEMORY[0x1E69A98A0]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457B178(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1C443309C();
  a2(v4, a1);
  sub_1C4F02B68();
  sub_1C457C5B0();
}

void sub_1C457B1F0()
{
  sub_1C43FFB60();
  sub_1C4EF9DD8();
  sub_1C4403D08(&qword_1EC0B8590, MEMORY[0x1E6969680]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457B2A0()
{
  sub_1C43FFB60();
  sub_1C4EFC308();
  sub_1C4403D08(&qword_1EDDF0010, MEMORY[0x1E69DF568]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

unint64_t sub_1C457B350(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C4F02AE8();

  return sub_1C457C654(a1, v4);
}

unint64_t sub_1C457B394()
{
  sub_1C440F19C();
  sub_1C49EFD8C(v4, v0);
  sub_1C4F02B68();
  v1 = sub_1C4411720();

  return sub_1C457C6B4(v1, v2);
}

void sub_1C457B3EC()
{
  sub_1C43FFB60();
  sub_1C4EFD548();
  sub_1C4403D08(&qword_1EDDFA230, MEMORY[0x1E69A92C8]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

void sub_1C457B49C()
{
  sub_1C443309C();
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C457C7BC();
}

unint64_t sub_1C457B530()
{
  sub_1C440F19C();
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F01298();
  v5 = v0[4];
  v6 = v0[5];
  sub_1C4F01298();
  sub_1C4F02B68();
  v7 = sub_1C4411720();

  return sub_1C457C898(v7, v8);
}

unint64_t sub_1C457B5F8()
{
  sub_1C442FAA0();
  v1 = sub_1C480FBA0();

  return sub_1C457CF00(v0 & 1, v1);
}

unint64_t sub_1C457B634(int a1)
{
  sub_1C443309C();
  sub_1C4F02B38();
  v2 = sub_1C4F02B68();
  return sub_1C457D05C(a1, v2);
}

void sub_1C457B694()
{
  v1 = *(v0 + 40);
  sub_1C4F01138();
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();

  sub_1C457D0BC();
}

unint64_t sub_1C457B750(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(v1 + 40);
  sub_1C4F02AF8();
  sub_1C4403D08(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  sub_1C4F00FE8();
  v18 = type metadata accessor for EntityEdge();
  sub_1C457E858(a1 + *(v18 + 20), v16);
  if (sub_1C44157D4(v16, 1, v3) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    (*(v6 + 32))(v10, v16, v3);
    sub_1C4F02B18();
    sub_1C4F00FE8();
    (*(v6 + 8))(v10, v3);
  }

  sub_1C4F02B68();
  v19 = sub_1C4411720();
  return sub_1C457D5B8(v19, v20);
}

unint64_t sub_1C457B950(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x7461636964657270;
    }

    if (a1)
    {
      v7 = 0x80000001C4F86600;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000015 : 0x7461636964657270;
      v9 = *(*(v2 + 48) + v4) ? 0x80000001C4F86600 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BA94(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x617247746E657665;
    }

    else
    {
      v6 = 0x7247656C62617473;
    }

    if (a1)
    {
      v7 = 0xEA00000000006870;
    }

    else
    {
      v7 = 0xEB00000000687061;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x617247746E657665 : 0x7247656C62617473;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006870 : 0xEB00000000687061;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BBE0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000014;
      v6 = 0xD000000000000017;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "motion_state_unknown";
      }

      else
      {
        v6 = 0xD000000000000013;
        v7 = "motion_state_stationary";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000014;
      v9 = *(*(v2 + 48) + v4) ? v7 : "raph";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000017 : 0xD000000000000013;
        v10 = a1 == 1 ? "motion_state_unknown" : "motion_state_stationary";
      }

      else
      {
        v10 = "raph";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457BD54(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C457E7A8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C6940E70](v8, a1);
    sub_1C457E804(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C457BE18(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C457BE78(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000079;
      v8 = 0x6144664F656D6974;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6144664F74726170;
          break;
        case 2:
          v8 = 0x6954657372616F63;
          v7 = 0xEF796144664F656DLL;
          break;
        case 3:
          v7 = 0xE90000000000006BLL;
          v8 = 0x656557664F796164;
          break;
        case 4:
          v8 = 0x6557664F74726170;
          v7 = 0xEA00000000006B65;
          break;
        case 5:
          v7 = 0xE300000000000000;
          v8 = 6909804;
          break;
        case 6:
          v8 = 0x636F4C6F7263696DLL;
          v9 = 0x6E6F697461;
          goto LABEL_16;
        case 7:
          v8 = 0x6369666963657073;
          v7 = 0xEF687361486F6547;
          break;
        case 8:
          v8 = 0x6547657372616F63;
          v9 = 0x687361486FLL;
LABEL_16:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v8 = 0x6F6547656772616CLL;
          v7 = 0xEC00000068736148;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1768319351;
          break;
        case 0xB:
          v7 = 0xE900000000000065;
          v8 = 0x646F4D7375636F66;
          break;
        case 0xC:
          v8 = 0x74536E6F69746F6DLL;
          v7 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      v10 = 0x6144664F656D6974;
      v11 = 0xE900000000000079;
      switch(a1)
      {
        case 1:
          v10 = 0x6144664F74726170;
          break;
        case 2:
          v10 = 0x6954657372616F63;
          v11 = 0xEF796144664F656DLL;
          break;
        case 3:
          v11 = 0xE90000000000006BLL;
          v10 = 0x656557664F796164;
          break;
        case 4:
          v10 = 0x6557664F74726170;
          v11 = 0xEA00000000006B65;
          break;
        case 5:
          v11 = 0xE300000000000000;
          v10 = 6909804;
          break;
        case 6:
          v10 = 0x636F4C6F7263696DLL;
          v12 = 0x6E6F697461;
          goto LABEL_30;
        case 7:
          v10 = 0x6369666963657073;
          v11 = 0xEF687361486F6547;
          break;
        case 8:
          v10 = 0x6547657372616F63;
          v12 = 0x687361486FLL;
LABEL_30:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v10 = 0x6F6547656772616CLL;
          v11 = 0xEC00000068736148;
          break;
        case 10:
          v11 = 0xE400000000000000;
          v10 = 1768319351;
          break;
        case 11:
          v11 = 0xE900000000000065;
          v10 = 0x646F4D7375636F66;
          break;
        case 12:
          v10 = 0x74536E6F69746F6DLL;
          v11 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v11)
      {
        break;
      }

      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457C268(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C457C2C8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v21 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  v6 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3 + 64;
  v11 = -1 << *(v3 + 32);
  v12 = a2 & ~v11;
  if ((*(v3 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v19 = v3;
    v20 = a1;
    v14 = *a1;
    v15 = *(v7 + 72);
    do
    {
      sub_1C457EA6C(*(v3 + 48) + v15 * v12, v9, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
      if (*v9 == v14)
      {
        v16 = *(v21 + 20);
        sub_1C4EFDAB8();
        sub_1C4403D08(&qword_1EDDEFFB8, MEMORY[0x1E69A9478]);
        sub_1C4F01578();
        v3 = v19;
        sub_1C4F01578();
        sub_1C457EAC8(v9, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
        if (v23 == v22)
        {
          return v12;
        }
      }

      else
      {
        sub_1C457EAC8(v9, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey);
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1C457C4F8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = (*(v2 + 48) + 48 * i);
    v8 = *v5;
    *v9 = v5[1];
    *&v9[9] = *(v5 + 25);
    sub_1C45D5A9C();
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_1C457C5B0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  sub_1C4408560();
  v6 = ~v5;
  for (i = v7 & ~v5; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v9 = *(*(v0 + 48) + 8 * i);
    v10 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = v2(v10, v4);

    if (v11)
    {
      break;
    }
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457C654(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C457C6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1C4F02938() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1C457C7BC()
{
  sub_1C43FBD3C();
  v4 = v0 + 64;
  sub_1C4408560();
  v8 = v6 & ~v7;
  if ((*(v0 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    sub_1C43FBD54();
    v11 = ~v10;
    v12 = *(v0 + 48);
    do
    {
      v13 = (v12 + 32 * v8);
      v14 = v13[2];
      v15 = v13[3];
      v16 = *v13 == v3 && v13[1] == v2;
      if (v16 || (sub_1C4F02938() & 1) != 0)
      {
        v17 = v14 == v1 && v15 == v9;
        if (v17 || (sub_1C4F02938() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v11;
    }

    while (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457C898(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v19 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v5);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v7 && v10[1] == v8;
      if (v15 || (sub_1C4F02938() & 1) != 0)
      {
        v16 = v11 == a1[2] && v12 == a1[3];
        if (v16 || (sub_1C4F02938() & 1) != 0)
        {
          v17 = v13 == a1[4] && v14 == a1[5];
          if (v17 || (sub_1C4F02938() & 1) != 0)
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v19;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C457C9C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6C6F6F547069;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C4F87960;
          break;
        case 2:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001C4F87980;
          break;
        case 3:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001C4F879A0;
          break;
        case 4:
          break;
        case 5:
          v7 = 0xE300000000000000;
          v8 = 7368801;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x80000001C4F87940;
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6C6F6F547069;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000018;
          v9 = 0x80000001C4F87960;
          break;
        case 2:
          v10 = 0xD00000000000001DLL;
          v9 = 0x80000001C4F87980;
          break;
        case 3:
          v10 = 0xD00000000000001BLL;
          v9 = 0x80000001C4F879A0;
          break;
        case 4:
          break;
        case 5:
          v9 = 0xE300000000000000;
          v10 = 7368801;
          break;
        default:
          v10 = 0xD000000000000014;
          v9 = 0x80000001C4F87940;
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457CBE8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1702259052;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 1701736302;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x796C696164;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001C4F86260;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v9 = 1801807223;
          goto LABEL_10;
        case 5:
          v10 = 0x347972657665;
          goto LABEL_13;
        case 6:
          v10 = 0x327972657665;
LABEL_13:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v7 = 0xEB00000000737275;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v9 = 1920298856;
LABEL_10:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v8 = 0x4D31327972657665;
          v7 = 0xEE00736574756E69;
          break;
        case 9:
          v8 = 0x694D377972657665;
          v7 = 0xED0000736574756ELL;
          break;
        case 0xA:
          v8 = 0xD000000000000013;
          v7 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v11 = 0xE400000000000000;
      v12 = 1702259052;
      switch(a1)
      {
        case 1:
          v12 = 1701736302;
          break;
        case 2:
          v11 = 0xE500000000000000;
          v12 = 0x796C696164;
          break;
        case 3:
          v12 = 0xD000000000000013;
          v11 = 0x80000001C4F86260;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v13 = 1801807223;
          goto LABEL_23;
        case 5:
          v14 = 0x347972657665;
          goto LABEL_26;
        case 6:
          v14 = 0x327972657665;
LABEL_26:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v11 = 0xEB00000000737275;
          break;
        case 7:
          v11 = 0xE600000000000000;
          v13 = 1920298856;
LABEL_23:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v12 = 0x4D31327972657665;
          v11 = 0xEE00736574756E69;
          break;
        case 9:
          v12 = 0x694D377972657665;
          v11 = 0xED0000736574756ELL;
          break;
        case 10:
          v12 = 0xD000000000000013;
          v11 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457CF00(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4F64657461647075;
    }

    else
    {
      v6 = 0x6E61684377656976;
    }

    if (a1)
    {
      v7 = 0xED00007463656A62;
    }

    else
    {
      v7 = 0xEB00000000646567;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4F64657461647075 : 0x6E61684377656976;
      v9 = *(*(v2 + 48) + v4) ? 0xED00007463656A62 : 0xEB00000000646567;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457D05C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1C457D0BC()
{
  sub_1C43FBD3C();
  sub_1C4408560();
  v2 = ~v1;
  for (i = v3 & ~v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v2)
  {
    v5 = *(*(v0 + 48) + 8 * i);
    v6 = sub_1C4F01138();
    v8 = v7;
    if (v6 == sub_1C4F01138() && v8 == v9)
    {

      break;
    }

    v11 = sub_1C4F02938();

    if (v11)
    {
      break;
    }
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C457D19C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6870617267627573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v9 = 0x7463656A626FLL;
          goto LABEL_12;
        case 2:
          v8 = 0x7463757274736E75;
          v7 = 0xEC00000064657275;
          break;
        case 3:
          v9 = 0x6D6F74737563;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
          v7 = 0xE900000000000077;
          break;
        case 4:
          v8 = 0x6C616E7265747865;
          break;
        case 5:
          v7 = 0xE700000000000000;
          v8 = 0x65727574616566;
          break;
        case 6:
          v8 = 0x656D655269726973;
          v10 = 0x737265626DLL;
          goto LABEL_17;
        case 7:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001C4F85F20;
          break;
        case 8:
          v8 = 0x63537374726F7073;
          v7 = 0xEF73656C75646568;
          break;
        case 9:
          v8 = 0x6264726F74636576;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001C4F85F60;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F85F80;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000001C4F85FA0;
          break;
        case 0xD:
          v8 = 0xD000000000000021;
          v7 = 0x80000001C4F85FC0;
          break;
        case 0xE:
          v8 = 0x6154797469746E65;
          v10 = 0x676E696767;
LABEL_17:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      v11 = 0xE800000000000000;
      v12 = 0x6870617267627573;
      switch(a1)
      {
        case 1:
          v13 = 0x7463656A626FLL;
          goto LABEL_29;
        case 2:
          v12 = 0x7463757274736E75;
          v11 = 0xEC00000064657275;
          break;
        case 3:
          v13 = 0x6D6F74737563;
LABEL_29:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
          v11 = 0xE900000000000077;
          break;
        case 4:
          v12 = 0x6C616E7265747865;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v12 = 0x65727574616566;
          break;
        case 6:
          v12 = 0x656D655269726973;
          v14 = 0x737265626DLL;
          goto LABEL_34;
        case 7:
          v12 = 0xD00000000000001BLL;
          v11 = 0x80000001C4F85F20;
          break;
        case 8:
          v12 = 0x63537374726F7073;
          v11 = 0xEF73656C75646568;
          break;
        case 9:
          v12 = 0x6264726F74636576;
          break;
        case 10:
          v12 = 0xD00000000000001ALL;
          v11 = 0x80000001C4F85F60;
          break;
        case 11:
          v12 = 0xD000000000000010;
          v11 = 0x80000001C4F85F80;
          break;
        case 12:
          v12 = 0xD000000000000016;
          v11 = 0x80000001C4F85FA0;
          break;
        case 13:
          v12 = 0xD000000000000021;
          v11 = 0x80000001C4F85FC0;
          break;
        case 14:
          v12 = 0x6154797469746E65;
          v14 = 0x676E696767;
LABEL_34:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C457D5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = sub_1C4EFF0C8();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v32 - v11;
  v40 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v32 - v13;
  v41 = type metadata accessor for EntityEdge();
  v15 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2 + 64;
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  if ((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v32 = (v6 + 32);
    v33 = a1;
    v23 = *(v16 + 72);
    v36 = (v6 + 8);
    v38 = v23;
    do
    {
      sub_1C457EA6C(*(v3 + 48) + v23 * v21, v18, type metadata accessor for EntityEdge);
      if (sub_1C4EFF088())
      {
        v24 = *(v41 + 20);
        v25 = *(v40 + 48);
        sub_1C457E858(&v18[v24], v14);
        sub_1C457E858(a1 + v24, &v14[v25]);
        v26 = v39;
        if (sub_1C44157D4(v14, 1, v39) == 1)
        {
          sub_1C457EAC8(v18, type metadata accessor for EntityEdge);
          if (sub_1C44157D4(&v14[v25], 1, v26) == 1)
          {
            sub_1C4420C3C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
            return v21;
          }
        }

        else
        {
          v27 = v37;
          sub_1C457E858(v14, v37);
          if (sub_1C44157D4(&v14[v25], 1, v26) != 1)
          {
            v28 = v34;
            (*v32)(v34, &v14[v25], v26);
            sub_1C4403D08(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
            v35 = sub_1C4F010B8();
            v29 = *v36;
            v30 = v28;
            a1 = v33;
            (*v36)(v30, v26);
            sub_1C457EAC8(v18, type metadata accessor for EntityEdge);
            v29(v37, v26);
            sub_1C4420C3C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v23 = v38;
            if (v35)
            {
              return v21;
            }

            goto LABEL_12;
          }

          sub_1C457EAC8(v18, type metadata accessor for EntityEdge);
          (*v36)(v27, v26);
        }

        sub_1C4420C3C(v14, &qword_1EC0B8580, &unk_1C4F0D340);
        v23 = v38;
      }

      else
      {
        sub_1C457EAC8(v18, type metadata accessor for EntityEdge);
      }

LABEL_12:
      v21 = (v21 + 1) & v22;
    }

    while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

uint64_t sub_1C457DA58(uint64_t a1)
{
  sub_1C456902C(&qword_1EC0B85B0, &unk_1C4F0D350);
  result = sub_1C4F02538();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = round(*(*(a1 + 56) + 8 * v13) / 60.0 * 100.0) / 100.0;
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v15;
      v17[1] = result;
      *(v3[7] + 8 * v13) = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C457DBD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v5, v12);
  }
}

void sub_1C457DC88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C440647C(a1, a2, a3, a4, a5);
  sub_1C44482AC(v8, (*(v7 + 56) + 32 * v6));
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1C457DCCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C440647C(a1, a2, a3, a4, a5);
  sub_1C447D27C(v8, *(v7 + 56) + 8 * v6);
  sub_1C4416CEC();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1C457DD40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  *(v8[6] + result) = v9;
  v10 = (v8[7] + 32 * result);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void sub_1C457DD8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v7 = sub_1C4EFDAB8();
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  v13 = (*(v4 + 56) + 48 * v6);
  *(v13 + 25) = *(v5 + 25);
  v14 = v5[1];
  *v13 = *v5;
  v13[1] = v14;
  sub_1C4416CEC();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v15;
  }
}

void sub_1C457DE2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 2 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457DE68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C440647C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 2 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(v6, v10);
  }
}

void sub_1C457DE98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (*(v5 + 48) + 48 * v4);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  *(v6 + 25) = *(v7 + 25);
  sub_1C440572C(v4, v10, v9, v5);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v11, v12);
  }
}

void sub_1C457DEE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = sub_1C4EFF0C8();
  sub_1C43FCE50(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  sub_1C4416CEC();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1C457DF64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1C4411708(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = (v9[7] + 32 * result);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1C457E010(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4411708(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  *(v4[7] + 8 * result) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v9;
  }

  return result;
}

void sub_1C457E06C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v7 = sub_1C4EFF0C8();
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  v13 = *(v4 + 56);
  v14 = type metadata accessor for EntityMatch(0);
  sub_1C43FBD18(v14);
  sub_1C449AC40(v5, v13 + *(v15 + 72) * v6, type metadata accessor for EntityMatch);
  sub_1C4416CEC();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v16;
  }
}

void sub_1C457E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C43FBD54();
  sub_1C4411708(v11, v10 + 8 * (v11 >> 6));
  v13 = *(v12 + 48);
  v15 = v14(0);
  sub_1C43FCE50(v15);
  (*(v16 + 32))(v13 + *(v16 + 72) * v7, v6);
  v17 = (*(a5 + 56) + 16 * v7);
  *v17 = v5;
  v17[1] = a4;
  sub_1C4416CEC();
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }
}

uint64_t sub_1C457E1E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C4411708(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(v8 + 25) = *(v9 + 25);
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

void sub_1C457E244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v7 = sub_1C4EFEEF8();
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  sub_1C44482AC(v5, (*(v4 + 56) + 32 * v6));
  sub_1C4416CEC();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v13;
  }
}

void sub_1C457E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1C43FBD54();
  sub_1C441F324(v11, v12, v13, v14);
  v16 = *(v15 + 48);
  v18 = v17(0);
  sub_1C43FCE50(v18);
  (*(v19 + 32))(v16 + *(v19 + 72) * v8, v7);
  v20 = *(a4 + 56);
  v21 = a6(0);
  sub_1C43FCE50(v21);
  (*(v22 + 32))(v20 + *(v22 + 72) * v8, v6);
  sub_1C4416CEC();
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v23;
  }
}

void sub_1C457E3B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  v12 = (*(v11 + 48) + 32 * v10);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v17 = *(v11 + 56);
  v18 = sub_1C4EFF8A8();
  sub_1C43FCE50(v18);
  (*(v19 + 32))(v17 + *(v19 + 72) * a1, a6);
  sub_1C4416CEC();
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v20;
  }
}

uint64_t sub_1C457E444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C4411708(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void sub_1C457E490(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  v6 = (*(v5 + 48) + 48 * v4);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  v6[2] = v7[2];
  sub_1C440572C(v4, v10, v9, v5);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v11, v12);
  }
}

void sub_1C457E4E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E51C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + v4) = v6 & 1;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 4 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v5, v10);
  }
}

void sub_1C457E594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v5 = sub_1C4EFF0C8();
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = *(v6 + 72);
  v9 = sub_1C440CFF4();
  v10(v9);
  sub_1C4412BC4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v11;
  }
}

void sub_1C457E600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 4 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C457E63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FBD18(v10);
  sub_1C457E8C8(a4, v9 + *(v11 + 72) * a1);
  sub_1C4416CEC();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

void sub_1C457E6B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v8 = type metadata accessor for EntityEdge();
  sub_1C43FBD18(v8);
  sub_1C449AC40(v5, v7 + *(v9 + 72) * v6, type metadata accessor for EntityEdge);
  sub_1C4412BC4();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v10;
  }
}

void sub_1C457E754(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  v9(v8, *(v6 + 56) + 40 * v5);
  sub_1C4416CEC();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

uint64_t sub_1C457E858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C457E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C457E938(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4418F8C(a1, a2, a3, a4);
  v7 = sub_1C4EF98F8();
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  sub_1C441D670(v5, *(v4 + 56) + 40 * v6);
  sub_1C4416CEC();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v13;
  }
}

void sub_1C457E9FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C4418F8C(a1, a2, a3, a4);
  v7 = v6(v5);
  sub_1C43FCE50(v7);
  v9 = *(v8 + 32);
  v10 = *(v8 + 72);
  v11 = sub_1C440CFF4();
  v12(v11);
  sub_1C4412BC4();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v13;
  }
}

uint64_t sub_1C457EA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C457EAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C457EBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v38;
  do
  {
    v31 = byte_1F43D1228[v29 + 32];
    if (v31 == 1)
    {
      v32 = 0xD00000000000002DLL;
    }

    else
    {
      v32 = 0xD00000000000002CLL;
    }

    if (v31 == 1)
    {
      v33 = "stribution_in_activity_interval";
    }

    else
    {
      v33 = "stribution_in_prev_30_minutes";
    }

    if (byte_1F43D1228[v29 + 32])
    {
      v34 = v32;
    }

    else
    {
      v34 = 0xD00000000000002FLL;
    }

    if (byte_1F43D1228[v29 + 32])
    {
      v35 = v33;
    }

    else
    {
      v35 = "fiveMinutesInSeconds";
    }

    v39 = v30;
    v36 = *(v30 + 16);
    if (v36 >= *(v30 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v30 = v39;
    }

    ++v29;
    *(v30 + 16) = v36 + 1;
    v37 = v30 + 16 * v36;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35 | 0x8000000000000000;
  }

  while (v29 != 3);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

double sub_1C457ECF0()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  type metadata accessor for AmbientLightDistributionProvider();
  swift_allocObject();
  v2 = AmbientLightDistributionProvider.init()();
  v3 = swift_allocObject();
  result = 1800.0;
  *(v3 + 48) = xmmword_1C4F0D360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 16) = sub_1C455B64C;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_1C457EDB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C4EF9CD8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ActivityInterval();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C457EEA4, 0, 0);
}

uint64_t sub_1C457EEA4()
{
  sub_1C43FBCD4();
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1C457EF40;
  v3 = v0[8];
  v4 = v0[2];

  return sub_1C4A3E4A8();
}

uint64_t sub_1C457EF40()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C457F038, 0, 0);
}

void sub_1C457F038()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[3] + 40);
  v6 = sub_1C4579F1C(v0[8], v0[8] + *(v0[7] + 20));
  sub_1C4EF9BE8();
  v103 = sub_1C4579F1C(v2, v4);
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  v8(v2, v3);
  sub_1C4EF9BE8();
  v102 = sub_1C4579F1C(v2, v4);
  v8(v2, v3);
  sub_1C456902C(&qword_1EC0B85C8, &unk_1C4F0D460);
  v100 = sub_1C4F00F28();
  v9 = sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
  v10 = sub_1C4F02538();
  v11 = v10;
  v12 = 0;
  v13 = 1 << *(v6 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v6 + 64);
  v16 = (v13 + 63) >> 6;
  for (i = v10 + 64; v15; v11[2] = v28)
  {
    sub_1C43FFB74();
LABEL_10:
    v22 = v18 | (v12 << 6);
    v23 = *(v6 + 56);
    sub_1C440A4A0(*(v6 + 48));
    v24 = sub_1C4F019C8();
    *(i + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v25 = (v11[6] + 16 * v22);
    *v25 = v7;
    v25[1] = v9;
    *(v11[7] + 8 * v22) = v24;
    v26 = v11[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v12 >= v16)
    {
      break;
    }

    ++v19;
    if (*(v6 + 64 + 8 * v12))
    {
      sub_1C43FCF1C();
      v15 = v21 & v20;
      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46602EC();
  v29 = sub_1C4F02538();
  v30 = 0;
  v31 = *(v103 + 64);
  v32 = 1 << *(v103 + 32);
  sub_1C440DD98();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;
  v39 = v38 + 64;
  if ((v34 & v33) == 0)
  {
LABEL_15:
    v41 = v30;
    while (1)
    {
      v30 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_47;
      }

      if (v30 >= v37)
      {

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C46602EC();
        v50 = sub_1C4F02538();
        v51 = 0;
        v52 = *(v102 + 64);
        v53 = 1 << *(v102 + 32);
        sub_1C440DD98();
        v56 = v55 & v54;
        v58 = (v57 + 63) >> 6;
        v60 = v59 + 64;
        if ((v55 & v54) == 0)
        {
LABEL_25:
          v62 = v51;
          while (1)
          {
            v51 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_48;
            }

            if (v51 >= v58)
            {

              swift_isUniquelyReferenced_nonNull_native();
              sub_1C46602EC();
              sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
              v74 = sub_1C4F02538();
              v75 = 0;
              v76 = *(v100 + 64);
              v77 = 1 << *(v100 + 32);
              sub_1C440DD98();
              v80 = v79 & v78;
              v82 = (v81 + 63) >> 6;
              v101 = v83 + 64;
              if ((v79 & v78) == 0)
              {
LABEL_35:
                v85 = v75;
                while (1)
                {
                  v75 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
                    goto LABEL_49;
                  }

                  if (v75 >= v82)
                  {
                    v97 = v99[6];
                    sub_1C4573D60(v99[8]);

                    v98 = v99[1];

                    v98(v74);
                    return;
                  }

                  ++v85;
                  if (*(v100 + 64 + 8 * v75))
                  {
                    sub_1C43FCF1C();
                    v80 = v87 & v86;
                    goto LABEL_40;
                  }
                }
              }

              while (1)
              {
                v84 = __clz(__rbit64(v80));
                v80 &= v80 - 1;
LABEL_40:
                v88 = v84 | (v75 << 6);
                v89 = (*(v100 + 48) + 16 * v88);
                v90 = v89[1];
                v104 = *v89;
                v91 = *(*(v100 + 56) + 8 * v88);
                sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v92 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C465CD38(v92);
                v93 = sub_1C457F798();

                *(v101 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
                v94 = (v74[6] + 16 * v88);
                *v94 = v104;
                v94[1] = v90;
                *(v74[7] + 8 * v88) = v93;
                v95 = v74[2];
                v27 = __OFADD__(v95, 1);
                v96 = v95 + 1;
                if (v27)
                {
                  goto LABEL_53;
                }

                v74[2] = v96;
                if (!v80)
                {
                  goto LABEL_35;
                }
              }
            }

            ++v62;
            if (*(v102 + 64 + 8 * v51))
            {
              sub_1C43FCF1C();
              v56 = v64 & v63;
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          sub_1C43FFB74();
LABEL_30:
          v65 = v61 | (v51 << 6);
          v66 = (*(v102 + 48) + 16 * v65);
          v68 = *v66;
          v67 = v66[1];
          v69 = *(*(v102 + 56) + 8 * v65);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v70 = sub_1C4F019C8();
          *(v60 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
          v71 = (v50[6] + 16 * v65);
          *v71 = v68;
          v71[1] = v67;
          *(v50[7] + 8 * v65) = v70;
          v72 = v50[2];
          v27 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v27)
          {
            goto LABEL_52;
          }

          v50[2] = v73;
          if (!v56)
          {
            goto LABEL_25;
          }
        }
      }

      ++v41;
      if (*(v103 + 64 + 8 * v30))
      {
        sub_1C43FCF1C();
        v35 = v43 & v42;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
LABEL_20:
    v44 = v40 | (v30 << 6);
    v45 = *(v103 + 56);
    sub_1C440A4A0(*(v103 + 48));
    v46 = sub_1C4F019C8();
    *(v39 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v47 = (v29[6] + 16 * v44);
    *v47 = v7;
    v47[1] = v9;
    *(v29[7] + 8 * v44) = v46;
    v48 = v29[2];
    v27 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v27)
    {
      break;
    }

    v29[2] = v49;
    if (!v35)
    {
      goto LABEL_15;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

id sub_1C457F798()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v0 = sub_1C4F00EC8();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1C457F8A0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C457FE00(&qword_1EC0B85D8);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C457F90C()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C457386C;

  return sub_1C457EDB4(v2);
}

void *sub_1C457FC04()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1C457FC34()
{
  sub_1C457FC04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C457FC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C457F90C();
}

uint64_t sub_1C457FD78(uint64_t a1)
{
  result = sub_1C457FE00(&qword_1EC0B85B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C457FDBC(uint64_t a1)
{
  result = sub_1C457FE00(&qword_1EC0B85C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C457FE00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AmbientLightDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C457FE5C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8660, &qword_1C4F0D718);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for AlarmEvent();
    sub_1C442C318(&qword_1EDDEFF28, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C45800B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v5 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = sub_1C456902C(&qword_1EC0B85E0, &qword_1C4F0D4C0);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = sub_1C4EF9CD8();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a2, v17);
  sub_1C440BAA8(v16, 0, 1, v17);
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v18(v14, a2 + *(v19 + 36), v17);
  sub_1C440BAA8(v14, 0, 1, v17);
  v20 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v21 = sub_1C457A86C(v16, v14, 0, 0, 0);
  v22 = [a1 publisherWithOptions_];

  v23 = v22;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v24 = v30;
  sub_1C4EFFC38();
  if (v24)
  {
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    type metadata accessor for AmbientLightEvent(0);
    sub_1C4401CBC(&qword_1EDDEFEC0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v25 = a1;

    sub_1C4F02848();

    (*(v26 + 32))(v29, v9, v27);
  }
}

void sub_1C4580438()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8670, &qword_1C4F0D758);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for AppIntentEvent();
    sub_1C442C318(&qword_1EC0B8678, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580690()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v30 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v30);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8620, &qword_1C4F0D540);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    v26 = sub_1C44258B8(v25);
    type metadata accessor for NowPlayingEvent(v26);
    sub_1C442C318(&qword_1EDDEFEF8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v27 = v1;

    sub_1C43FFBC4();

    v28 = sub_1C43FCF2C();
    v29(v28);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C45808E8()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8638, &qword_1C4F0D570);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for PoiCategoryEvent();
    sub_1C442C318(&qword_1EDDEFEC8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580B40()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8680, &qword_1C4F0D778);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for HomeKitEvent();
    sub_1C442C318(&qword_1EC0B8688, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580D98()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8658, &qword_1C4F0D6F8);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for EnergyModeEvent();
    sub_1C442C318(&qword_1EDDEFF18, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4580FF0()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8610, &qword_1C4F0D520);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for LocationMetadataEvent();
    sub_1C442C318(&qword_1EC0B8618, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4581248()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v29);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0B8668, &qword_1C4F0D738);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  sub_1C4405740();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20 = sub_1C43FCF40(v19);
  v17(v20);
  sub_1C442B8CC();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v22 = sub_1C4402AE4();
  v23 = sub_1C441D120(v22, sel_publisherWithOptions_);

  v24 = v23;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    sub_1C44258B8(v25);
    type metadata accessor for DeviceBacklightEvent();
    sub_1C442C318(&qword_1EDDEFF10, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v26 = v1;

    sub_1C43FFBC4();

    v27 = sub_1C43FCF2C();
    v28(v27);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

uint64_t sub_1C45814A0(unsigned __int8 a1, double a2, double a3, double a4)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  sub_1C43FBDF0();
  *(v9 + 32) = 0xD00000000000001BLL;
  *(v9 + 40) = v10;
  v11 = objc_opt_self();
  v12 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 48) = v13;
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = v14;
  v15 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 72) = v16;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = v17;
  v18 = [v11 featureValueWithDouble_];
  sub_1C43FBDF0();
  *(inited + 96) = v19;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = v20;
  *(inited + 120) = [v11 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

double sub_1C4581638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  return result;
}

void sub_1C458165C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v5 = [v4 AmbientLight];
  swift_unknownObjectRelease();
  sub_1C45800B4(v5, a1, a2);
}

void sub_1C4581708()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0B85E0, &qword_1C4F0D4C0);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1C456902C(&qword_1EC0B85E8, &qword_1C4F0D4C8);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FE94C();
  v18 = type metadata accessor for AmbientLightSmoothedSequence(0);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C458165C(v3, v1);
  if (!v0)
  {
    v36 = sub_1C456902C(&qword_1EC0B85F0, &qword_1C4F0D4D0);
    v37 = sub_1C4401CBC(&qword_1EDDDE968, &qword_1EC0B85F8, &qword_1C4F0D4D8);
    sub_1C4585408(&v35);
    (*(v8 + 16))(v13, v1, v6);
    sub_1C4401CBC(&qword_1EDDDB7C0, &qword_1EC0B85E0, &qword_1C4F0D4C0);
    sub_1C4F019A8();
    sub_1C4420C3C(v1, &qword_1EC0B85E8, &qword_1C4F0D4C8);
    v24 = *(v18 + 28);
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C440BAA8(v25, v26, v27, v28);
    v29 = *(v18 + 32);
    type metadata accessor for AmbientLightEvent(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v30, v31, v32, v33);
    sub_1C441D670(&v35, v23);
    *(v23 + 5) = &unk_1F43D1250;
    *(v23 + 6) = 0;
    sub_1C45849C8(v23, v5, type metadata accessor for AmbientLightSmoothedSequence);
  }

  sub_1C43FBC80();
}

void sub_1C45819E8(uint64_t a1)
{
  v3 = type metadata accessor for AmbientLightEvent(0);
  v4 = (a1 + *(v3 + 24));
  v5 = *v4;
  v6 = *(v1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48347D4(v6);
    v6 = v18;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v6 + 32) = v5 + *(v6 + 32);
  if (v7 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 40) = v4[1] + *(v6 + 40);
  if (v7 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 48) = v4[2] + *(v6 + 48);
  *(v1 + 40) = v6;
  v8 = *(v1 + 48);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  *(v1 + 48) = v10;
  v11 = *(type metadata accessor for AmbientLightSmoothedSequence(0) + 28);
  sub_1C4420C3C(v1 + v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(v3 + 20);
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v13);
  (*(v14 + 16))(v1 + v11, a1 + v12, v13);
  sub_1C43FBD94();

  sub_1C440BAA8(v15, v16, v17, v13);
}

uint64_t sub_1C4581B3C()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[13] = v6;
  sub_1C43FCF7C(v6);
  v1[14] = v7;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B8640, &qword_1C4F0D5D8);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = type metadata accessor for AmbientLightEvent(0);
  v1[21] = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4581CD8, 0, 0);
}

uint64_t sub_1C4581CD8()
{
  sub_1C43FCF70();
  v1 = v0[11];
  v2 = *(v1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48347D4(v2);
    v2 = v12;
  }

  v0[26] = v2;
  *(v1 + 40) = v2;
  v3 = v0[11];
  v4 = *(v3 + 32);
  sub_1C4418280(v3, *(v3 + 24));
  v0[27] = swift_getAssociatedTypeWitness();
  v5 = sub_1C4F01F48();
  v0[28] = v5;
  sub_1C43FCF7C(v5);
  v0[29] = v6;
  v8 = *(v7 + 64) + 15;
  v0[30] = swift_task_alloc();
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v11 = sub_1C4404ABC(v10);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C4581E14()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 248);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_1C458284C;
  }

  else
  {
    v7 = sub_1C4581F18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4581F18()
{
  v1 = v0[30];
  v2 = v0[27];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[20];
    v3 = v0[21];
    (*(v0[29] + 8))(v1, v0[28]);

    sub_1C441C774();
    goto LABEL_4;
  }

  v6 = v0[20];
  v5 = v0[21];
  v0[5] = v2;
  v7 = sub_1C4585408(v0 + 2);
  (*(*(v2 - 8) + 32))(v7, v1, v2);

  v8 = swift_dynamicCast();
  sub_1C440BAA8(v6, v8 ^ 1u, 1, v5);
  if (sub_1C44157D4(v6, 1, v5) == 1)
  {
LABEL_4:
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[11];
    sub_1C4420C3C(v0[20], &qword_1EC0B8640, &qword_1C4F0D5D8);
    v12 = type metadata accessor for AmbientLightSmoothedSequence(0);
    v13 = *(v12 + 32);
    sub_1C442B8EC();
    sub_1C446C964(v14, v15, v16, &qword_1C4F0D5D8);
    if (sub_1C44157D4(v10, 1, v9) == 1)
    {
      sub_1C4420C3C(v0[18], &qword_1EC0B8640, &qword_1C4F0D5D8);
      v17 = 1;
      goto LABEL_21;
    }

    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[18];
    v21 = v0[16];
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[12];
    v160 = v0[11];
    sub_1C441F344();
    sub_1C45849C8(v25, v18, v26);
    sub_1C4420C3C(v11 + v13, &qword_1EC0B8640, &qword_1C4F0D5D8);
    sub_1C43FCF64();
    sub_1C440BAA8(v27, v28, v29, v19);
    v30 = *(v23 + 16);
    v30(v21, v18, v22);
    sub_1C446C964(v160 + *(v12 + 28), v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v24, 1, v22) == 1)
    {
      v31 = v0[12];
      v32 = v0[13];
      v30(v0[15], v0[22] + *(v0[21] + 20), v32);
      if (sub_1C44157D4(v31, 1, v32) != 1)
      {
        sub_1C4420C3C(v0[12], &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

LABEL_17:
      v64 = v0[26];
      v65 = *(v64 + 16);
      if (v65)
      {
        if (v65 != 1)
        {
          if (v65 >= 3)
          {
            v66 = v0[10];
            v67 = *(v0[11] + 48);
            v68 = *(v64 + 32) / v67;
            v69 = v0[21];
            v71 = v0[15];
            v70 = v0[16];
            v72 = v0[13];
            v73 = v0[14];
            v74 = *(v64 + 40) / v67;
            v75 = *(v0[22] + *(v69 + 24) + 24);
            v76 = *(v64 + 48) / v67;
            sub_1C440DDAC();
            sub_1C45853B0(v77, v78);
            v79 = *(v73 + 32);
            v80 = sub_1C43FBC98();
            (v79)(v80);
            v81 = *(v69 + 20);
            sub_1C442B8EC();
            v79();
            v17 = 0;
            v82 = v66 + *(v69 + 24);
            *v82 = v68;
            *(v82 + 8) = v74;
            *(v82 + 16) = v76;
            *(v82 + 24) = v75;
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    goto LABEL_17;
  }

  v33 = v0[25];
  v34 = v0[20];
  v35 = v0[21];
  v36 = v0[19];
  v37 = v0[11];
  sub_1C441F344();
  sub_1C45849C8(v38, v39, v40);
  v41 = type metadata accessor for AmbientLightSmoothedSequence(0);
  v42 = *(v41 + 32);
  sub_1C446C964(v37 + v42, v36, &qword_1EC0B8640, &qword_1C4F0D5D8);
  v43 = sub_1C44157D4(v36, 1, v35);
  v44 = v0[21];
  v45 = v0[19];
  if (v43 == 1)
  {
    v46 = v0[25];
    v47 = v0[26];
    sub_1C442B8EC();
    sub_1C4420C3C(v48, v49, v50);
    sub_1C442B8EC();
    sub_1C4420C3C(v51, v52, v53);
    sub_1C4585464(v46, v37 + v42, type metadata accessor for AmbientLightEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v54, v55, v56, v44);
    v57 = *(v47 + 16);
    if (!v57)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v58 = (v46 + *(v44 + 24));
    *(v0[26] + 32) = *v58 + *(v0[26] + 32);
    if (v57 == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    *(v0[26] + 40) = v58[1] + *(v0[26] + 40);
    if (v57 < 3)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v59 = v0[26];
    v60 = v0[11];
    *(v59 + 48) = v58[2] + *(v59 + 48);
    *(v60 + 40) = v59;
    v61 = *(v60 + 48);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v94 = v0[24];
    v95 = v0[25];
    sub_1C441F344();
    sub_1C45849C8(v96, v94, v97);
    v98 = *(v44 + 24);
    v99 = v94 + v98;
    v100 = v95 + v98;
    v101 = *(v99 + 24);
    v102 = v0[26];
    if (*(v100 + 24) != v101)
    {
      v159 = v41;
      v162 = v0[25];
      v135 = v0[23];
      v136 = v0[21];
      v137 = v0[13];
      v138 = *(v0[14] + 16);
      v138(v135, v0[24], v137);
      v138(v135 + *(v136 + 20), v162, v137);
      v139 = *(v102 + 16);
      if (!v139)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v139 == 1)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v139 < 3)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v140 = v0[25];
      v141 = v0[26];
      v142 = v0[11];
      v163 = v0[10];
      *&v143 = *(v142 + 48);
      v144 = v0[23];
      v145 = v0[21];
      v156 = v0[13];
      v157 = v0[24];
      v146 = v144 + *(v145 + 24);
      v147 = *(v141 + 40);
      *v146 = *(v141 + 32) / *&v143;
      *(v146 + 8) = vdivq_f64(v147, vdupq_lane_s64(v143, 0));
      *(v146 + 24) = v101;
      sub_1C4420C3C(v37 + v42, &qword_1EC0B8640, &qword_1C4F0D5D8);
      sub_1C4585464(v140, v37 + v42, type metadata accessor for AmbientLightEvent);
      sub_1C43FBD94();
      sub_1C440BAA8(v148, v149, v150, v145);

      *(v142 + 40) = &unk_1F43D1288;
      *(v142 + 48) = 0;
      sub_1C4420C3C(v142 + *(v159 + 28), &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C43FCF64();
      sub_1C440BAA8(v151, v152, v153, v156);
      sub_1C45819E8(v140);
      sub_1C45853B0(v157, type metadata accessor for AmbientLightEvent);
      sub_1C45853B0(v140, type metadata accessor for AmbientLightEvent);
      sub_1C441F344();
      sub_1C45849C8(v144, v163, v154);
      v17 = 0;
LABEL_21:
      v84 = v0[24];
      v83 = v0[25];
      v86 = v0[22];
      v85 = v0[23];
      v87 = v0[20];
      v89 = v0[18];
      v88 = v0[19];
      v90 = v0[16];
      v91 = v0[17];
      v158 = v0[15];
      v161 = v0[12];
      sub_1C440BAA8(v0[10], v17, 1, v0[21]);

      sub_1C43FBDA0();
      sub_1C441AE0C();

      __asm { BRAA            X1, X16 }
    }

    v103 = *(v102 + 16);
    if (!v103)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    *(v102 + 32) = *v100 + *(v102 + 32);
    if (v103 == 1)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v104 = v0[26];
    v105 = v0[24];
    *(v104 + 40) = *(v100 + 8) + *(v104 + 40);
    v106 = *(v100 + 16);
    sub_1C440DDAC();
    sub_1C45853B0(v107, v108);
    if (*(v104 + 16) < 3uLL)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v109 = v0[26];
    v110 = v0[11];
    *(v109 + 48) = v106 + *(v109 + 48);
    *(v110 + 40) = v109;
    v111 = *(v110 + 48);
    v62 = __OFADD__(v111, 1);
    v63 = v111 + 1;
    if (v62)
    {
LABEL_49:
      __break(1u);
      return MEMORY[0x1EEE6D8C8]();
    }
  }

  v112 = v0[25];
  v113 = v0[21];
  v114 = v0[17];
  v115 = v0[13];
  v116 = v0[14];
  v117 = v0[11];
  *(v117 + 48) = v63;
  v118 = *(v41 + 28);
  sub_1C4420C3C(v117 + v118, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v116 + 16))(v117 + v118, v112 + *(v113 + 20), v115);
  sub_1C440DDAC();
  sub_1C45853B0(v112, v119);
  sub_1C43FBD94();
  sub_1C440BAA8(v120, v121, v122, v115);
  sub_1C442B8EC();
  sub_1C446C964(v123, v124, v125, &qword_1C4F0D5D8);
  LODWORD(v113) = sub_1C44157D4(v114, 1, v113);
  sub_1C4420C3C(v0[17], &qword_1EC0B8640, &qword_1C4F0D5D8);
  v17 = 1;
  if (v113 == 1)
  {
    goto LABEL_21;
  }

  v126 = v0[11];
  v127 = *(v126 + 32);
  sub_1C4418280(v126, *(v126 + 24));
  v0[27] = swift_getAssociatedTypeWitness();
  v128 = sub_1C4F01F48();
  v0[28] = v128;
  sub_1C43FCF7C(v128);
  v0[29] = v129;
  v131 = *(v130 + 64) + 15;
  v0[30] = swift_task_alloc();
  v132 = *(MEMORY[0x1E69E85A8] + 4);
  v133 = swift_task_alloc();
  v0[31] = v133;
  *v133 = v0;
  sub_1C4404ABC();
  sub_1C441AE0C();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1C458284C()
{
  v37 = v0;
  v1 = v0[30];

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v2 = v0[32];
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDDFECB8);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[8];
    v14 = sub_1C4F02A38();
    v16 = sub_1C441D828(v14, v15, &v36);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Error when reading the ambient light events - %s", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[24];
  v18 = v0[25];
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[20];
  v21 = v0[21];
  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[16];
  v25 = v0[17];
  v34 = v0[15];
  v35 = v0[12];
  v27 = v0[10];
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v31);

  sub_1C43FBDA0();

  return v32();
}

uint64_t sub_1C4582AF0()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C445229C;

  return sub_1C4581B3C();
}

uint64_t sub_1C4582B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982590)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4582C48()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4582D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for AlarmEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4582E24, 0, 0);
}

uint64_t sub_1C4582E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = sub_1C4577890([v19 eventType]);

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C4582FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for AmbientLightEvent(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45830E0, 0, 0);
}

uint64_t sub_1C45830E0()
{
  v7 = [*(v3 + 24) eventBody];
  if (v7)
  {
    v8 = sub_1C441C058(v7);
    [v5 timestamp];
    sub_1C4EF9AC8();
    v9 = sub_1C44330B4();
    v6(v9);
    v10 = sub_1C440D000();
    v6(v10);
    [v8 ambientLightColorComponent0];
    v12 = v11;
    [v8 ambientLightColorComponent1];
    v14 = v13;
    [v8 ambientLightColorComponent2];
    v16 = v15;
    v17 = sub_1C4585840(v8);

    v18 = sub_1C44064DC();
    v19(v18);
    v20 = v4 + *(v1 + 24);
    *v20 = v12;
    *(v20 + 8) = v14;
    *(v20 + 16) = v16;
    *(v20 + 24) = v17;
    sub_1C441F344();
    sub_1C45849C8(v4, v2, v21);
    sub_1C43FBD94();
    sub_1C440BAA8(v22, v23, v24, v1);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C442F090();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    v26 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v27 = sub_1C4403FF4();
      sub_1C441B738(v27, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v28, v29, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v30();
}

uint64_t sub_1C4583304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for AppIntentEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45833F8, 0, 0);
}

uint64_t sub_1C45833F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v15 = [*(v13 + 24) eventBody];
  if (v15)
  {
    v16 = sub_1C4440F4C(v15);
    [v14 timestamp];
    sub_1C4EF9AC8();
    v17 = sub_1C447EEFC();
    (v14)(v17);
    v18 = sub_1C443F0B4();
    (v14)(v18);
    v19 = sub_1C4632064(v16);
    v21 = v20;
    v22 = [v16 intentClass];
    v24 = *(v13 + 64);
    v23 = *(v13 + 72);
    v25 = *(v13 + 56);
    if (v22)
    {
      v26 = v22;
      v27 = sub_1C4F01138();
      v29 = v28;

      (*(v24 + 8))(v23, v25);
    }

    else
    {
      (*(v24 + 8))(*(v13 + 72), *(v13 + 56));

      v27 = 0;
      v29 = 0;
    }

    v36 = *(v13 + 40);
    v35 = *(v13 + 48);
    v37 = *(v13 + 16);
    v38 = (v35 + *(v36 + 24));
    *v38 = v19;
    v38[1] = v21;
    v38[2] = v27;
    v38[3] = v29;
    sub_1C45849C8(v35, v37, type metadata accessor for AppIntentEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v39, v40, v41, v36);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v30 = sub_1C442F090();
    sub_1C43FCEE8(v30, qword_1EDDFECB8);
    v31 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1C4583638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for NowPlayingEvent(0);
  v3[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C458372C, 0, 0);
}

uint64_t sub_1C458372C()
{
  v1 = [*(v0 + 104) eventBody];
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = v1;
    [v8 timestamp];
    sub_1C4EF9AC8();
    v10 = *(v3 + 16);
    v10(v4, v2, v5);
    v11 = sub_1C440D000();
    (v10)(v11);
    sub_1C456902C(&qword_1EC0B8628, &qword_1C4F0D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = [v9 playbackState];
    sub_1C456902C(&qword_1EC0B8630, &qword_1C4F0D568);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1C4F0D130;
    *(v13 + 32) = [v9 itemMediaSubtype];
    v14 = sub_1C4A4771C(inited, v13);
    v16 = v15;

    (*(v3 + 8))(v2, v5);
    v17 = (v4 + *(v6 + 24));
    *v17 = v14;
    v17[1] = v16;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v18, v19, v20, v6);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v21 = *(v0 + 112);
    v22 = sub_1C4F00978();
    sub_1C43FCEE8(v22, qword_1EDDFECB8);
    v23 = v21;
    v24 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      v25 = *(v0 + 112);
      swift_slowAlloc();
      v26 = sub_1C4403FF4();
      sub_1C441B738(v26, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v27, v28, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v26, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    v29 = *(v0 + 120);
    v30 = *(v0 + 96);

    sub_1C441C774();
  }

  v31 = *(v0 + 152);
  v32 = *(v0 + 128);

  sub_1C43FBDA0();

  return v33();
}

uint64_t sub_1C45839DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for PoiCategoryEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4583AD0, 0, 0);
}

uint64_t sub_1C4583AD0()
{
  v3 = [*(v1 + 24) eventBody];
  if (v3)
  {
    v4 = sub_1C4440F4C(v3);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C447EEFC();
    (v2)(v5);
    v6 = sub_1C443F0B4();
    (v2)(v6);
    v7 = [v4 rank];
    v8 = sub_1C4631F3C(v4);
    v10 = v7;
    v12 = *(v1 + 64);
    v11 = *(v1 + 72);
    v13 = *(v1 + 56);
    if (v9)
    {
      v14 = sub_1C4AD5C68(v8, v9);

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      (*(v12 + 8))(*(v1 + 72), *(v1 + 56));

      v14 = 61;
    }

    v21 = *(v1 + 40);
    v20 = *(v1 + 48);
    v22 = *(v1 + 16);
    v23 = v20 + *(v21 + 24);
    *v23 = v10;
    *(v23 + 8) = v14;
    sub_1C45849C8(v20, v22, type metadata accessor for PoiCategoryEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v21);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v15 = sub_1C442F090();
    sub_1C43FCEE8(v15, qword_1EDDFECB8);
    v16 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v17 = sub_1C4403FF4();
      sub_1C441B738(v17, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v18, v19, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C4583D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for HomeKitEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4583E00, 0, 0);
}

uint64_t sub_1C4583E00()
{
  v3 = [*(v1 + 24) eventBody];
  if (v3)
  {
    v4 = sub_1C4440F4C(v3);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C447EEFC();
    (v2)(v5);
    v6 = sub_1C443F0B4();
    (v2)(v6);
    v7 = [v4 accessoryUniqueIdentifier];
    v9 = *(v1 + 64);
    v8 = *(v1 + 72);
    v10 = *(v1 + 56);
    if (v7)
    {
      v11 = v7;
      v12 = sub_1C4F01138();
      v14 = v13;

      (*(v9 + 8))(v8, v10);
    }

    else
    {
      (*(v9 + 8))(*(v1 + 72), *(v1 + 56));

      v12 = 0;
      v14 = 0;
    }

    v21 = *(v1 + 40);
    v20 = *(v1 + 48);
    v22 = *(v1 + 16);
    v23 = (v20 + *(v21 + 24));
    *v23 = v12;
    v23[1] = v14;
    sub_1C45849C8(v20, v22, type metadata accessor for HomeKitEvent);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v21);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v15 = sub_1C442F090();
    sub_1C43FCEE8(v15, qword_1EDDFECB8);
    v16 = v0;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v17 = sub_1C4403FF4();
      sub_1C441B738(v17, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v18, v19, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C4584040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for EnergyModeEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4584134, 0, 0);
}

uint64_t sub_1C4584134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = sub_1C46D6E74([v19 mode]);

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C45842FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1C4EF9CD8() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4584390, 0, 0);
}

uint64_t sub_1C4584390()
{
  v2 = [*(v1 + 24) eventBody];
  if (v2)
  {
    v3 = *(v1 + 40);
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = v2;
    [v4 timestamp];
    sub_1C4EF9AC8();
    sub_1C49F8BE0(v6, v3, v5);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v7 = sub_1C442F090();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = v0;
    v9 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v10 = sub_1C4403FF4();
      sub_1C441B738(v10, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v11, v12, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v10, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    v13 = *(v1 + 16);

    type metadata accessor for LocationMetadataEvent();
    sub_1C43FCF64();
    sub_1C440BAA8(v14, v15, v16, v17);
  }

  v18 = *(v1 + 40);

  sub_1C43FBDA0();

  return v19();
}

uint64_t sub_1C4584518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DeviceBacklightEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C458460C, 0, 0);
}

uint64_t sub_1C458460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v18 = [*(v14 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C441C058(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44330B4();
    v17(v20);
    v21 = sub_1C440D000();
    v17(v21);
    v22 = [v19 backlightLevel];

    v23 = sub_1C44064DC();
    v24(v23);
    *(v15 + *(v13 + 24)) = v22 != 0;
    sub_1C4418980();
    sub_1C43FBD94();
    sub_1C440BAA8(v25, v26, v27, v13);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C442F090();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = v12;
    sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v30 = sub_1C4403FF4();
      sub_1C441B738(v30, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v31, v32, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    sub_1C443579C();
    sub_1C441C774();
  }

  sub_1C44182DC();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1C45847D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4582D30(a1, v6, a3);
}

uint64_t sub_1C4584888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4582FEC(a1, v6, a3);
}

uint64_t sub_1C4584938()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45849C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4584A24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442E8C4;

  return sub_1C4583304(a1, v6, a3);
}

uint64_t sub_1C4584AD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4583638(a1, v6, a3);
}

uint64_t sub_1C4584B84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C45839DC(a1, v6, a3);
}

uint64_t sub_1C4584C34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4583D0C(a1, v6, a3);
}

uint64_t sub_1C4584CE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4584040(a1, v6, a3);
}

uint64_t sub_1C4584D94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C45842FC(a1, v6, a3);
}

uint64_t sub_1C4584E44()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4584ED4()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4584F64()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C458501C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4585098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 8;
      v2 = v3 - 8;
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

uint64_t sub_1C45850D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

void sub_1C4585154()
{
  sub_1C4585248();
  if (v0 <= 0x3F)
  {
    sub_1C45852A4();
    if (v1 <= 0x3F)
    {
      sub_1C45852F4(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1C45852F4(319, qword_1EDDE64C0, type metadata accessor for AmbientLightEvent);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C4585248()
{
  result = qword_1EDDF05E0;
  if (!qword_1EDDF05E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDDF05E0);
  }

  return result;
}

void sub_1C45852A4()
{
  if (!qword_1EDDDBC00)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBC00);
    }
  }
}

void sub_1C45852F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C4585358()
{
  result = qword_1EC0B8650;
  if (!qword_1EC0B8650)
  {
    type metadata accessor for AmbientLightSmoothedSequence(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8650);
  }

  return result;
}

uint64_t sub_1C45853B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *sub_1C4585408(uint64_t *a1)
{
  v1 = a1;
  sub_1C43FCF8C(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_1C4585464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C45854C0()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585550()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45855E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return sub_1C4584518(a1, v6, a3);
}

uint64_t sub_1C4585690()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585720()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C45857B0()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4585840(void *a1)
{
  [a1 ambientLightColorComponent0];
  v3 = v2;
  [a1 ambientLightColorComponent1];
  v5 = v4;
  [a1 ambientLightColorComponent2];
  if (v5 < 4.0)
  {
    return 0;
  }

  if (v5 < 100.0 && v6 < v3 && v6 < v5)
  {
    return 1;
  }

  v10 = v3 * 0.8;
  if (v5 < 200.0 && v10 <= v6)
  {
    return 2;
  }

  if (v5 < 1000.0 && v6 < v10)
  {
    return 3;
  }

  if (v5 < 30000.0 && v6 < v10)
  {
    return 4;
  }

  if (v5 >= 10000.0)
  {
    return 6;
  }

  return 5;
}

unint64_t sub_1C4585948(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_1C4585958@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4585948(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4585984()
{
  v1 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v2 = [v1 AmbientLight];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

void sub_1C4585A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v32 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v32;
  v30 = *(v32 + 16);
  if (v30 >= *(v32 + 24) >> 1)
  {
    sub_1C44CD9C0();
    v29 = v32;
  }

  *(v29 + 16) = v30 + 1;
  v31 = v29 + 16 * v30;
  *(v31 + 32) = 0xD000000000000012;
  *(v31 + 40) = 0x80000001C4F8A360;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4585B24(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4585B7C(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4585B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  v13 = *(a1 + 16);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v12, v10, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v29 = nullsub_1;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C44405F8;
  v28 = &unk_1F43E0BA0;
  v19 = _Block_copy(&aBlock);
  v29 = sub_1C45867E8;
  v30 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C44405F8;
  v28 = &unk_1F43E0BC8;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 sinkWithCompletion:v19 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v19);

  swift_beginAccess();
  v22 = *(v18 + 16);
  *a3 = v22;
  v23 = v22;
}

void sub_1C4585E50(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in physical social stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4585F88(uint64_t a1)
{
  v1 = sub_1C4585B24(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001C4F8A360;
    v4 = sub_1C4585840(v2);
    *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
    sub_1C4577DBC();
    v5 = sub_1C4F00F28();

    return v5;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "AmbientLightEvent is nil", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C4586168()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4585F88(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

void sub_1C4586224(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4585F88(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4586890(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4586694()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C458676C(uint64_t a1)
{
  result = sub_1C4586794();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4586794()
{
  result = qword_1EC0B8690;
  if (!qword_1EC0B8690)
  {
    type metadata accessor for AmbientLightSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8690);
  }

  return result;
}

void *sub_1C45867F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1C4586AB8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1C4586890(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4586A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureProviderSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4586AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v32 = v10;
      v33 = v5;
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v29 = v16;
      v20 = *(*(a3 + 56) + 8 * v16);
      v21 = *(a4 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = v20;
      sub_1C4F01298();
      v22 = sub_1C4F02B68();
      v23 = ~(-1 << *(a4 + 32));
      do
      {
        v24 = v22 & v23;
        if (((*(v12 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {

          v5 = v33;
          v10 = v32;
          goto LABEL_5;
        }

        v25 = (*(a4 + 48) + 16 * v24);
        if (*v25 == v19 && v25[1] == v18)
        {
          break;
        }

        v27 = sub_1C4F02938();
        v22 = v24 + 1;
      }

      while ((v27 & 1) == 0);

      *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v33 + 1;
      v10 = v32;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C4586CDC();

      return;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C4586CDC()
{
  sub_1C4404B14();
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = v7;
  sub_1C4412BD8(v4, v5, v6, v7);
  if (v9)
  {

LABEL_29:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v10 != v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v2;
  }

  v13 = 0;
  v34 = v8;
  while (v12)
  {
    sub_1C43FCFAC();
LABEL_17:
    v18 = v14 | (v13 << 6);
    v19 = *(v8 + 56);
    v20 = (*(v8 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    v24 = *(v3 + 40);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = v23;
    sub_1C4404010();
    v25 = sub_1C4F02B68();
    sub_1C4418FC4(v25);
    v27 = *(v3 + 64 + 8 * v26);
    sub_1C4405760();
    if (v9)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v9)
        {
          if (v29)
          {
            goto LABEL_31;
          }
        }

        if (v28 == v30)
        {
          v28 = 0;
        }

        sub_1C441E1A8(v28);
        if (!v9)
        {
          sub_1C43FCF98();
          goto LABEL_27;
        }
      }
    }

    sub_1C43FFC04();
LABEL_27:
    sub_1C44064EC();
    sub_1C4416CF8(v31);
    *v32 = v21;
    v32[1] = v22;
    *(*(v3 + 56) + 8 * v33) = v35;
    sub_1C440A4C0();
    if (v11)
    {
      goto LABEL_32;
    }

    v8 = v34;
    if (!v0)
    {
      goto LABEL_29;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v1)
    {
      goto LABEL_29;
    }

    ++v15;
    if (v2[v13])
    {
      sub_1C43FCF1C();
      v12 = v17 & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C4586E60()
{
  sub_1C4404B14();
  if (!v7)
  {
    goto LABEL_29;
  }

  v9 = v8;
  sub_1C4412BD8(v5, v6, v7, v8);
  if (v10)
  {

LABEL_29:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v11 != v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v2;
  }

  v14 = 0;
  v32 = v9;
  while (v13)
  {
    sub_1C43FEA58();
LABEL_17:
    sub_1C441C7B4(v15);
    v21 = *(v20 + 8 * v19);
    v22 = *(v3 + 40);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v23 = sub_1C4F02B68();
    sub_1C4418FC4(v23);
    v25 = *(v3 + 64 + 8 * v24);
    sub_1C4405760();
    if (v10)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v10)
        {
          if (v27)
          {
            goto LABEL_31;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        sub_1C441E1A8(v26);
        if (!v10)
        {
          sub_1C43FCF98();
          goto LABEL_27;
        }
      }
    }

    sub_1C43FFC04();
LABEL_27:
    sub_1C44064EC();
    sub_1C4416CF8(v29);
    *v30 = v9;
    v30[1] = v4;
    *(*(v3 + 56) + 8 * v31) = v21;
    sub_1C440A4C0();
    if (v12)
    {
      goto LABEL_32;
    }

    v9 = v32;
    if (!v0)
    {
      goto LABEL_29;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v1)
    {
      goto LABEL_29;
    }

    ++v16;
    if (v2[v14])
    {
      sub_1C43FCF1C();
      v13 = v18 & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C458700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a4;
    sub_1C4412BD8(a1, a2, a3, a4);
    if (v10)
    {
    }

    else
    {
      v11 = v7;
      v35 = v6;
      sub_1C456902C(v8, v9);
      sub_1C43FCFC0();
      v12 = sub_1C4F02558();
      v13 = v12;
      if (v11 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v35;
      }

      v15 = 0;
      v16 = v12 + 64;
      v36 = v5;
      while (v14)
      {
        v17 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_17:
        v21 = v17 | (v15 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = *(*(v5 + 56) + 8 * v21);
        v24 = *(v13 + 40);
        sub_1C4F01138();
        sub_1C4F02AF8();
        v25 = v22;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v26 = sub_1C4F02B68();

        v27 = *(v16 + 8 * ((v26 & ~(-1 << *(v13 + 32))) >> 6));
        sub_1C4405760();
        if (v10)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v10)
            {
              if (v29)
              {
                goto LABEL_31;
              }
            }

            if (v28 == v30)
            {
              v28 = 0;
            }

            if (*(v16 + 8 * v28) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_27;
            }
          }
        }

        sub_1C43FFC04();
LABEL_27:
        sub_1C44064EC();
        *(v16 + v31) |= v32;
        *(*(v13 + 48) + 8 * v33) = v25;
        *(*(v13 + 56) + 8 * v33) = v23;
        ++*(v13 + 16);
        if (__OFSUB__(v4--, 1))
        {
          goto LABEL_32;
        }

        v5 = v36;
        v14 = v37;
        if (!v4)
        {
          return;
        }
      }

      v18 = v15;
      while (1)
      {
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          return;
        }

        ++v18;
        if (v35[v15])
        {
          sub_1C43FCF1C();
          v37 = v20 & v19;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_1C458721C()
{
  sub_1C4404B14();
  if (!v7)
  {
    goto LABEL_29;
  }

  v9 = v8;
  sub_1C4412BD8(v5, v6, v7, v8);
  if (v10)
  {

LABEL_29:
    sub_1C440576C();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  sub_1C43FCFC0();
  sub_1C4F02558();
  sub_1C44258C8();
  if (v11 != v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v2;
  }

  v14 = 0;
  v34 = v9;
  while (v13)
  {
    sub_1C43FEA58();
LABEL_17:
    sub_1C441C7B4(v15);
    v21 = (v20 + 16 * v19);
    v22 = v21[1];
    v35 = *v21;
    v23 = *(v3 + 40);
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v24 = sub_1C4F02B68();
    sub_1C4418FC4(v24);
    v26 = *(v3 + 64 + 8 * v25);
    sub_1C4405760();
    if (v10)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v10)
        {
          if (v28)
          {
            goto LABEL_31;
          }
        }

        if (v27 == v29)
        {
          v27 = 0;
        }

        sub_1C441E1A8(v27);
        if (!v10)
        {
          sub_1C43FCF98();
          goto LABEL_27;
        }
      }
    }

    sub_1C43FFC04();
LABEL_27:
    sub_1C44064EC();
    sub_1C4416CF8(v30);
    *v31 = v9;
    v31[1] = v4;
    v33 = (*(v3 + 56) + 16 * v32);
    *v33 = v35;
    v33[1] = v22;
    sub_1C440A4C0();
    if (v12)
    {
      goto LABEL_32;
    }

    v9 = v34;
    if (!v0)
    {
      goto LABEL_29;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v1)
    {
      goto LABEL_29;
    }

    ++v16;
    if (v2[v14])
    {
      sub_1C43FCF1C();
      v13 = v18 & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C45873AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C4412BD8(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B85B0, &unk_1C4F0D350);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v9 != v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      while (v11)
      {
        sub_1C43FCFAC();
LABEL_17:
        sub_1C440F1C8(v13);
        v20 = *(v19 + 8 * v18);
        v21 = *(v7 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4404010();
        v22 = sub_1C4F02B68();
        sub_1C4418FC4(v22);
        v24 = *(v7 + 64 + 8 * v23);
        sub_1C4405760();
        if (v8)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v8)
            {
              if (v26)
              {
                goto LABEL_31;
              }
            }

            if (v25 == v27)
            {
              v25 = 0;
            }

            sub_1C43FBDFC(v25);
            if (!v8)
            {
              sub_1C43FCF98();
              goto LABEL_27;
            }
          }
        }

        sub_1C43FFC04();
LABEL_27:
        sub_1C44064EC();
        sub_1C4431E90(v28);
        *(v30 + 8 * v29) = v20;
        sub_1C440A4C0();
        if (v10)
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v15)
        {
          sub_1C43FCF1C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_1C458752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = a4;
    sub_1C4412BD8(a1, a2, a3, a4);
    if (v9)
    {
    }

    else
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0B86B0, &unk_1C4F0D890);
      sub_1C43FCFC0();
      sub_1C4F02558();
      sub_1C44258C8();
      if (v10 != v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v6;
      }

      v13 = 0;
      v14 = v7 + 8;
      v33 = v8;
      while (v12)
      {
        sub_1C43FEA58();
LABEL_17:
        v20 = v15 | (v13 << 6);
        v21 = *(v8 + 56);
        v22 = *(*(v8 + 48) + v20);
        v34 = *(v21 + 8 * v20);
        v23 = v7[5];
        sub_1C4F02AF8();
        switch(v22)
        {
          case 5:
          case 6:
          case 8:
          case 9:
            sub_1C442B8F8();
            break;
          default:
            break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        v24 = sub_1C4F02B68();
        sub_1C4418FC4(v24);
        v26 = v14[v25];
        sub_1C4405760();
        if (v9)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v9)
            {
              if (v28)
              {
                goto LABEL_33;
              }
            }

            if (v27 == v29)
            {
              v27 = 0;
            }

            if (v14[v27] != -1)
            {
              sub_1C43FCF98();
              goto LABEL_29;
            }
          }
        }

        sub_1C43FFC04();
LABEL_29:
        sub_1C44064EC();
        *(v14 + v30) |= v31;
        *(v7[6] + v32) = v22;
        *(v7[7] + 8 * v32) = v34;
        sub_1C440A4C0();
        if (v11)
        {
          goto LABEL_34;
        }

        v8 = v33;
        if (!v4)
        {
          return;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v5)
        {
          return;
        }

        sub_1C4424F24();
        if (v17)
        {
          sub_1C43FCF1C();
          v12 = v19 & v18;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }
  }
}